requires 'Dist::Zilla::Util', 0;
requires 'Dist::Zilla::Role::PluginBundle::Easy', 0;
requires 'Dist::Zilla::Role::PluginBundle::PluginRemover', 0;
requires 'Dist::Zilla::Role::PluginBundle::Config::Slicer', 0;
requires 'Dist::Zilla::Plugin::Test::MinimumVersion', 0;
requires 'Dist::Zilla::Plugin::Git::GatherDir', 0;
requires 'Dist::Zilla::Plugin::PruneCruft', 0;
requires 'Dist::Zilla::Plugin::PruneFiles', 0;
requires 'Dist::Zilla::Plugin::CopyFilesFromBuild', 0;
requires 'Dist::Zilla::Plugin::ExecDir', 0;
requires 'Dist::Zilla::Plugin::ShareDir', 0;
requires 'Dist::Zilla::Plugin::AutoPrereqs', 0;
requires 'Dist::Zilla::Plugin::Prereqs::FromCPANfile', 0;
requires 'Dist::Zilla::Plugin::Prereqs::AuthorDeps', 0;
requires 'Dist::Zilla::Plugin::CheckPrereqsIndexed', 0;
requires 'Dist::Zilla::Plugin::CheckExtraTests', 0;
requires 'Dist::Zilla::Plugin::InsertExample', 0;
requires 'Dist::Zilla::Plugin::PodInherit', '>= 0.008';
requires 'Dist::Zilla::Plugin::PodSyntaxTests', 0;
requires 'Dist::Zilla::Plugin::MojibakeTests', 0;
requires 'Dist::Zilla::Plugin::Test::CheckDeps', 0;
requires 'Dist::Zilla::Plugin::Test::Compile', 0;
requires 'Dist::Zilla::Plugin::Test::Version', 0;
requires 'Dist::Zilla::Plugin::SpellingCommonMistakesTests', 0;
requires 'Dist::Zilla::Plugin::Test::ReportPrereqs', 0;
requires 'Dist::Zilla::Plugin::ManifestSkip', 0;
requires 'Dist::Zilla::Plugin::MetaTests', 0;
requires 'Dist::Zilla::Plugin::Test::CPAN::Changes', 0;
requires 'Dist::Zilla::Plugin::PodCoverageTests', 0;
requires 'Dist::Zilla::Plugin::Test::Pod::No404s', 0;
requires 'Dist::Zilla::Plugin::Test::MinimumVersion', 0;
requires 'Dist::Zilla::Plugin::Test::EOL', 0;
requires 'Dist::Zilla::Plugin::Test::NoTabs', 0;
requires 'Dist::Zilla::Plugin::Test::Portability', 0;
requires 'Dist::Zilla::Plugin::Test::ReportPrereqs', 0;
requires 'Dist::Zilla::Plugin::Authority', 0;
requires 'Dist::Zilla::Plugin::MetaJSON', 0;
requires 'Dist::Zilla::Plugin::MetaYAML', 0;
requires 'Dist::Zilla::Plugin::MetaNoIndex', 0;
requires 'Dist::Zilla::Plugin::MetaProvides::Package', 0;
requires 'Dist::Zilla::Plugin::Keywords', 0;
requires 'Dist::Zilla::Plugin::VersionFromModule', 0;
requires 'Dist::Zilla::Plugin::ReversionOnRelease', 0;
requires 'Dist::Zilla::Plugin::OurPkgVersion', 0;
requires 'Dist::Zilla::Plugin::Git::Contributors', 0;
requires 'Dist::Zilla::Plugin::GithubMeta', 0;
requires 'Dist::Zilla::Plugin::OverridePkgVersion', 0;
requires 'Dist::Zilla::Plugin::License', 0;
requires 'Dist::Zilla::Plugin::ReadmeAnyFromPod', 0;
requires 'Dist::Zilla::Plugin::ReadmeAnyFromPod', 0;
requires 'Dist::Zilla::Plugin::Manifest', 0;
requires 'Dist::Zilla::Plugin::ManifestSkip', 0;
requires 'Dist::Zilla::Plugin::NextRelease', 0;
requires 'Dist::Zilla::Plugin::CheckChangesHasContent', 0;
requires 'Dist::Zilla::Plugin::Git::Check', 0;
requires 'Dist::Zilla::Plugin::RunExtraTests', 0;
requires 'Dist::Zilla::Plugin::TestRelease', 0;
requires 'Dist::Zilla::Plugin::UploadToCPAN', 0;
requires 'Dist::Zilla::Plugin::ConfirmRelease', 0;
requires 'Dist::Zilla::Plugin::Git::Commit', 0;
requires 'Dist::Zilla::Plugin::Git::CommitBuild', 0;
requires 'Dist::Zilla::Plugin::Git::Tag', 0;
requires 'Dist::Zilla::Plugin::ArchiveRelease', 0;
requires 'Dist::Zilla::Plugin::Git::Push', 0;
requires 'Test::CPAN::Meta', 0;
requires 'Perl::Version', 0;
requires 'Test::CPANfile', 0;
requires 'Test::CheckDeps', 0;
requires 'Moose', 0;
 
requires 'perl', '>= 5.014';
on 'configure' => sub {
    requires 'perl', '>= 5.014';
};
