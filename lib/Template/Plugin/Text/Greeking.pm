package Template::Plugin::Text::Greeking;

use warnings;
use strict;
use v5.8.0;

use base "Template::Plugin";
use Text::Greeking;

our $VERSION = '0.0.1';

sub new {
    my ($class, $context, $options) = @_;
    my $plugin = sub {
        Text::Greeking->new->generate()
    };
    return $plugin;
}

1; # Magic true value required at end of module
__END__

=head1 NAME

Template::Plugin::Text::Greeking - Text::Greeking interface in Template

=head1 VERSION

This document describes Template::Plugin::Text::Greeking version 0.0.1

=head1 SYNOPSIS

In your template code.

    [% USE Text::Greeking %]

    <div id="info">
      [% Text.Greeking() %]
    </div>

=head1 DESCRIPTION

This module provides L<Text::Greeking> in your template code. Why is
it useful at all ? When you're still in design phrase of a template,
this is very useful to fill out your page so you can grok a overall
feeling. And you will be able to generate lipsums in different length
so that it can even be used for testing purpsose. (Visual testing,
which requires human testers to tell if it's successful.)

=head1 INTERFACE

=over

=item new()

This is the constructor. Which allows users to write

    [% Text.Greeking() %]

in template code.

=back

=head1 CONFIGURATION AND ENVIRONMENT

Template::Plugin::Text::Greeking requires no configuration files or environment variables.

=head1 DEPENDENCIES

L<Text::Greeking>

=head1 INCOMPATIBILITIES

None reported.

=head1 BUGS AND LIMITATIONS

No bugs have been reported.

Please report any bugs or feature requests to
C<bug-template-plugin-text-greeking@rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org>.


=head1 AUTHOR

Kang-min Liu  C<< <gugod@gugod.org> >>


=head1 LICENCE AND COPYRIGHT

Copyright (c) 2007, Kang-min Liu C<< <gugod@gugod.org> >>.

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself. See L<perlartistic>.

=head1 DISCLAIMER OF WARRANTY

BECAUSE THIS SOFTWARE IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY
FOR THE SOFTWARE, TO THE EXTENT PERMITTED BY APPLICABLE LAW. EXCEPT WHEN
OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES
PROVIDE THE SOFTWARE "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER
EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE
ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE SOFTWARE IS WITH
YOU. SHOULD THE SOFTWARE PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL
NECESSARY SERVICING, REPAIR, OR CORRECTION.

IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR
REDISTRIBUTE THE SOFTWARE AS PERMITTED BY THE ABOVE LICENCE, BE
LIABLE TO YOU FOR DAMAGES, INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL,
OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE USE OR INABILITY TO USE
THE SOFTWARE (INCLUDING BUT NOT LIMITED TO LOSS OF DATA OR DATA BEING
RENDERED INACCURATE OR LOSSES SUSTAINED BY YOU OR THIRD PARTIES OR A
FAILURE OF THE SOFTWARE TO OPERATE WITH ANY OTHER SOFTWARE), EVEN IF
SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF
SUCH DAMAGES.
