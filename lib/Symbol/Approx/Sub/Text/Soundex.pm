#
# Symbol::Approx::Sub::Text::Soundex
#
# $Id: Soundex.pm,v 1.1 2001/07/15 20:44:24 dave Exp $
#
# Transformer plugin for Symbol::Approx::Sub;
#
# Copyright (c) 2001, Magnum Solutions Ltd. All rights reserved.
#
# This module is free software; you can redistribute it and/or
# modify it under the same terms as Perl itself.
#
# $Log: Soundex.pm,v $
# Revision 1.1  2001/07/15 20:44:24  dave
# Initial revision
#
#
package Symbol::Approx::Sub::Text::Soundex;

use strict;
use vars qw($VERSION @ISA $AUTOLOAD);

$VERSION = sprintf "%d.%02d", '$Revision: 1.1 $ ' =~ /(\d+)\.(\d+)/;

use Carp;
use Text::Soundex;

sub transform {
  map { soundex($_) } @_;
}

1;
