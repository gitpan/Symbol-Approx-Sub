#
# Symbol::Approx::Sub::String::Equal
#
# $Id: Random.pm,v 1.2 2005/10/22 17:56:22 dave Exp $
#
# Chooser plugin for Symbol::Approx::Sub;
#
# Copyright (c) 2000, Magnum Solutions Ltd. All rights reserved.
#
# This module is free software; you can redistribute it and/or
# modify it under the same terms as Perl itself.
#
# $Log: Random.pm,v $
# Revision 1.2  2005/10/22 17:56:22  dave
# Added docs.
#
# Revision 1.1  2002/03/29 17:55:25  dave
# Support modules
#
# Revision 1.1  2001/07/15 20:41:01  dave
# Initial revision
#
#
package Symbol::Approx::Sub::Random;

use strict;
use vars qw($VERSION @ISA $AUTOLOAD);

$VERSION = sprintf "%d.%02d", '$Revision: 1.2 $ ' =~ /(\d+)\.(\d+)/;

use Carp;

=head1 NAME

Symbol::Approx::Sub::Random

=head1 SYNOPSIS

See L<Symbol::Approx::Sub>

=head1 METHODS

=head2 choose

Returns a random index into the array which it is passed.

=cut

sub choose {
  rand @_;
}

1;
