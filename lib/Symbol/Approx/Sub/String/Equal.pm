#
# Symbol::Approx::Sub::String::Equal
#
# $Id: Equal.pm,v 1.1 2001/07/15 20:43:10 dave Exp $
#
# Matcher plugin for Symbol::Approx::Sub;
#
# Copyright (c) 2000, Magnum Solutions Ltd. All rights reserved.
#
# This module is free software; you can redistribute it and/or
# modify it under the same terms as Perl itself.
#
# $Log: Equal.pm,v $
# Revision 1.1  2001/07/15 20:43:10  dave
# Initial revision
#
#
package Symbol::Approx::Sub::String::Equal;

use strict;
use vars qw($VERSION @ISA $AUTOLOAD);

$VERSION = sprintf "%d.%02d", '$Revision: 1.1 $ ' =~ /(\d+)\.(\d+)/;

use Carp;

sub match {
  my ($sub, @subs) = @_;
  my (@ret);

  foreach (0 .. $#subs) {
    push @ret, $_ if $sub eq $subs[$_];
  }

  @ret;
}

1;
