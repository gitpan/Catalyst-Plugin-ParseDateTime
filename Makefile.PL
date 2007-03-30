use ExtUtils::MakeMaker;
WriteMakefile(
    NAME              => 'Catalyst::Plugin::ParseDateTime',
    VERSION_FROM      => 'lib/Catalyst/Plugin/ParseDateTime.pm',
    PREREQ_PM         => {
        'Test::More'  => '0',
        'Catalyst'    => '2.99',
        'DateTime::Format::HTTP'  => '0.35',
    },
);
