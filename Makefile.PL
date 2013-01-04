use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Worlogog::Incident',
    AUTHOR              => q{Lukas Mai <l.mai@web.de>},
    VERSION_FROM        => 'lib/Worlogog/Incident.pm',
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => '6.56',
    },
    LICENSE => 'perl',
    PL_FILES            => {},
    BUILD_REQUIRES => {
        'Test::More' => 0,
    },
    PREREQ_PM => {
        'warnings' => 0,
        'strict' => 0,
        'Carp' => 0,
        'Sub::Exporter' => 0,
        'Scope::OnExit::Wrap' => 0,
        'Return::MultiLevel' => 0,
        'Worlogog::Restart' => 0,
        'Dispatch::Class' => 0,
    },
    MIN_PERL_VERSION => '5.6.0',
    META_MERGE => {
        resources => {
            repository => {
                url => 'git://github.com/mauke/Worlogog-Incident.git',
                web => 'https://github.com/mauke/Worlogog-Incident',
                type => 'git',
            },
        },
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Worlogog-Incident-*' },
);
