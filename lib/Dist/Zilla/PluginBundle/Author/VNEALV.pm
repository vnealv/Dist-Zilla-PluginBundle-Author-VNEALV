package Dist::Zilla::PluginBundle::Author::VNEALV;
#ABSTRACT: A plugin bundle for distributions config as common dist.ini by VNEALV

use strict;
use warnings;

# VERSION
# AUTHORITY
 
=head1 NAME
 
Dist::Zilla::PluginBundle::Author::VNEALV - yet another plugin bundle for Dist::Zilla
 
=head1 DESCRIPTION
 
See L<https://metacpan.org/author/VNEALV> for modules which may possibly use this.
 
=cut
 
use Dist::Zilla::Util;
use Moose;
use Perl::Version;
 
has max_target_perl => (
    is      => 'ro',
    isa     => 'Str',
    lazy    => 1,
    default => sub {
        my $self = shift;
        $self->payload->{'Test::MinimumVersion.max_target_perl'} // $self->payload->{max_target_perl} // '5.14.0';
    },
);
 
has authority => (
    is      => 'ro',
    isa     => 'Str',
    lazy    => 1,
    default => sub {
        my $self = shift;
        $self->payload->{'Authority.authority'} // $self->payload->{authority} // 'cpan:VNEALV';
    },
);

has installer => (
    is      => 'ro',
    isa     => 'Str',
    lazy    => 1,
    default => sub { shift->payload->{installer} // 'MakeMaker' },
);
 
sub configure {
    my $self = shift;
 
    my @copy_from_build     = qw(LICENSE Makefile.PL);
    my @gather_exclude      = (@copy_from_build, qw(README.md));
    my @no_index            = qw(eg share shares t xt);
    my @allow_dirty         = (@copy_from_build, qw(Changes LICENSE README.md));
    my @git_remotes         = qw(github origin);
    my @check_files         = qw(:InstallModules :ExecFiles :TestFiles :ExtraTestFiles);
    my $perl_version_target = $self->max_target_perl;

my @plugins = (
        ['Git::GatherDir' => {
            exclude_filename => [ @gather_exclude ]
        } ],
        ['PruneCruft'],
        ['CopyFilesFromBuild' => {copy => [@copy_from_build]}],
        ['ExecDir'],
        ['ShareDir'],
        -f 'cpanfile' ? ['Prereqs::FromCPANfile'] : (),
        ['Prereqs::AuthorDeps'],
        ['CheckPrereqsIndexed'],
        ['CheckExtraTests'],
        ['InsertExample'],
        ['PodInherit'],
        ['PodSyntaxTests'],
        ['MojibakeTests'],
        ['Test::CheckDeps'],
        ['Test::Compile'],
        ['Test::Version'],
        ['SpellingCommonMistakesTests'],
        ['MetaTests'],
        ['Test::CPAN::Changes'],
        ['Test::MinimumVersion' => {max_target_perl => $perl_version_target}],
        ['Test::EOL' => {finder => [@check_files]}],
        ['Test::NoTabs' => {finder => [@check_files]}],
        ['Test::Portability'],
        ['Test::ReportPrereqs'],
        ['Authority' => {authority => $self->authority, do_munging => 1, locate_comment => 1}],
        ['MetaJSON'],
        ['MetaYAML'],
        ['MetaNoIndex' => {directory => [@no_index]}],
        ['MetaProvides::Package'],
        ['Keywords'],
        ['VersionFromModule'],
        ['ReversionOnRelease'],
        ['OurPkgVersion'],
        ['Git::Contributors' => {order_by => 'commits'}],
        ['GithubMeta' => {remote => [@git_remotes], issues => 1}],
        ['OverridePkgVersion'],
        ['License'],
        ['ReadmeAnyFromPod' => 'RepoReadme' => {filename => 'README.md', location => 'root', type => 'markdown', phase => 'release'}],
        ['ReadmeAnyFromPod' => 'DistReadme' => {filename => 'README', location => 'build', type => 'text'}],
        ['Manifest'],
        ['ManifestSkip'],
 
        $self->installer,     # e.g. MakeMaker
        ['NextRelease'],
        ['CheckChangesHasContent'],
        ['Git::Check' => {allow_dirty => [@allow_dirty], untracked_files => 'ignore'}],
        ['TestRelease'],
        ['UploadToCPAN'],
        ['ConfirmRelease'],
        ['Git::Commit' => {allow_dirty => [@allow_dirty], commit_msg => 'Release %N %v%t%n%n%c'}],
        ['Git::CommitBuild' => {branch => '', release_branch => 'dist', release_message => 'Version %v%t'}],
        ['Git::Tag' => {tag_message => 'Tag v%v for CPAN release'}],
        ['ArchiveRelease' => { directory => '/home/nael/repos/CPAN-Archive' } ],
        ['Git::Push' => {push_to => 'github master +master:refs/heads/release +dist', remotes_must_exist => 0}],
    );
 
    $self->add_plugins(@plugins);
}
 
with 'Dist::Zilla::Role::PluginBundle::Easy';
with 'Dist::Zilla::Role::PluginBundle::PluginRemover';
with 'Dist::Zilla::Role::PluginBundle::Config::Slicer';
 
__PACKAGE__->meta->make_immutable;
 
1;
 
=head1 AUTHOR
 
Nael Alolwani C<< <VNEALV@cpan.org> >>, but structure mostly taken from other plugin bundles such as:
 
=over 4
 
=item * L<Dist::Zilla::PluginBundle::Author::TEAM>

=item * L<Dist::Zilla::PluginBundle::Author::OALDERS>

=item * L<Dist::Zilla::PluginBundle::Author::ETHER>
 
=item * L<Dist::Zilla::Plugin::Author::Plicease>
 
=back
 
=head1 LICENSE
 
Copyright Tom Molesworth 2019. Licensed under the same terms as Perl itself.
 
