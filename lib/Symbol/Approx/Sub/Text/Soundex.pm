#
# Symbol::Approx::Sub::Text::Soundex
#
# $Id: Soundex.pm,v 1.2 2005/10/22 17:56:22 dave Exp $
#
# Transformer plugin for Symbol::Approx::Sub;
#
# Copyright (c) 2001, Magnum Solutions Ltd. All rights reserved.
#
# This module is free software; you can redistribute it and/or
# modify it under the same terms as Perl itself.
#
# $Log: Soundex.pm,v $
# Revision 1.2  2005/10/22 17:56:22  dave
# Added docs.
#
# Revision 1.1  2002/03/29 17:55:40  dave
# Support modules
#
# Revision 1.1  2001/07/15 20:44:24  dave
# Initial revision
#
#
package Symbol::Approx::Sub::Text::Soundex;

use strict;
use vars qw($VERSION @ISA $AUTOLOAD);

$VERSION = sprintf "%d.%02d", '$Revision: 1.2 $ ' =~ /(\d+)\.(\d+)/;

use Carp;
use Text::Soundex;

=head1 NAME

Symbol::Approx::Sub::Text::Soundex

=head1 SYNOPSIS

See L<Symbol::Approx::Sub>

=head1 METHODS

=head2 transform

Returns the array it is passed with all values converted to their soundex
equivalent.

=cut

sub transform {
  map { soundex($_) } @_;
}

1;
