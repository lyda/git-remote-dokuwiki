use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

my $meta_merge = {
    META_MERGE => {
        resources => {
          repository  => 'https://github.com/lyda/git-remote-dokuwiki',
        },
    }
};

WriteMakefile(
  NAME             => 'Git::Dokuwiki',
  AUTHOR           => q{<Kevin Lyda> <<kevin@lyda.ie>>},
  VERSION_FROM     => 'lib/Git/Dokuwiki.pm',
  ABSTRACT_FROM    => 'lib/Git/Dokuwiki.pm',
  LICENSE          => 'gpl2',
  PL_FILES         => {},
  MIN_PERL_VERSION => '5.006',
  CONFIGURE_REQUIRES => {
    'ExtUtils::MakeMaker' => '0',
  },
  BUILD_REQUIRES => {
    'Test::More' => '0',
  },
  PREREQ_PM => {
    'Git'                  => '0.01',
    'HTTP::CookieJar::LWP' => '0.0080',
    'JSON'                 => '4.024.02',
    'RPC::XML::Client'     => '1.42',
    'Try::Tiny'            => '0.30',
  },
  dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
  clean => { FILES => 'Git-Dokuwiki-*' },
);
