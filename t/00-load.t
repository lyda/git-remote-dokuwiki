#!perl -T
use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'Git::Dokuwiki' ) || print "Bail out!\n";
}

diag( "Testing Git::Dokuwiki $Git::Dokuwiki::VERSION, Perl $], $^X" );
