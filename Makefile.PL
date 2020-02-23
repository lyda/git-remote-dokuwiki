use 5.006;
use strict;
use warnings FATAL => 'all';;
use ExtUtils::MakeMaker;

my $meta_merge = {
    META_MERGE => {
        resources => {
          repository  => 'https://github.com/lyda/git-remote-dokuwiki',
        },
    }
};

WriteMakefile(
  NAME             => 'App::Git::Remote::Dokuwiki',
  AUTHOR           => q{<Kevin Lyda> <<kevin@lyda.ie>>},
  VERSION_FROM     => 'lib/App/Git/Remote/Dokuwiki.pm',
  ABSTRACT_FROM    => 'lib/App/Git/Remote/Dokuwiki.pm',
  LICENSE          => 'gpl_2',
  EXE_FILES        => [
    'script/git-remote-dokuwiki'
  ],
  MAN1PODS         => {
    'lib/App/Git/Remote/Dokuwiki.pm' => 'blib/man1/git-remote-dokuwiki.1',
  },
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
    'JSON'                 => '0',
    'RPC::XML::Client'     => '1.42',
    'Try::Tiny'            => '0.30',
  },
  dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
  clean => { FILES => 'App-Git-Remote-Dokuwiki-*' },
);
