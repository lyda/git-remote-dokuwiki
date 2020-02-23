package lib::App::Git::Remote::Dokuwiki;

# Copyright (C) 2020
#     Kevin Lyda <kevin@lyda.ie>
# License: GPL v2 or later

=head1 NAME

App::Git::Remote::Dokuwiki - A git remote for dokuwiki

=head1 VERSION

Version 0.1

=cut

our $VERSION = '0.1';

=head1 SYNOPSIS

This script allows git to clone C<dokuwiki::> urls.

=head1 DESCRIPTION

This script is intended to be executed by git.  To use it put it in your
PATH and clone a dokuwiki like so:

    git clone dokuwiki::http://dokuwiki.example.com/

You can pass certain configuration parameters at clone time.

=over

=item C<-c remote.REMOTE_NAME.dwUser=USER> - the Dokuwiki user name

=item C<-c remote.REMOTE_NAME.dwPassword=PASSWORD> - the Dokuwiki password

=back

All commits are pulled onto the master branch.  Dokuwiki has no concept
of branches so no other branches will be managed.  You can, of course,
push those branches to other git remotes.

Push is not yet supported.

Attachments have the executable bit set.  Pages do not.  This will matter
for pushes.

=head1 LINKS

The following links were very useful in writing this:

=over

=item L<Git::Mediawiki|https://github.com/Git-Mediawiki/Git-Mediawiki> project

=item The Dokuwiki L<xmlrpc docs|https://www.dokuwiki.org/devel:xmlrpc:clients>

=item Docs for L<git-remote-helpers|https://git-scm.com/docs/git-remote-helpers>

=item Docs for L<dokuwiki|https://www.dokuwiki.org/dokuwiki>

=item Example CPAN app1: L<cpanminus|https://github.com/miyagawa/cpanminus>

=item Example CPAN app2: L<opan|https://github.com/shadowcat-mst/App-opan>

=item Docker L<on Travis|https://docs.travis-ci.com/user/docker/>

=back

=head1 AUTHOR

Kevin Lyda <kevin@lyda.ie>

=head1 COPYRIGHT

Copyright (c) 2020 Kevin Lyda.

=head1 LICENSE

This script is free software and is distributed under the GPLv2; see the
LICENSE file for more information.

=cut
