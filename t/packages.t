# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl test.pl'

######################### We start with some black magic to print on failure.

# Change 1..1 below to 1..last_test_to_print .
# (It may become useful if the test is moved to ./t subdirectory.)

BEGIN { $| = 1; print "1..3\n"; }


######################### End of black magic.

# Insert your test code below (better if it prints "ok 13"
# (correspondingly "not ok 13") depending on the success of chunk 13
# of the test code):

package x;

use Symbol::Approx::Sub (xform => 'Text::Soundex'); 
eval {bar()};
print "not ok 1\n" if $@;
sub baar {print "ok 1\n"}
sub qux  {12}

package y;
use Symbol::Approx::Sub (canon => undef,
			 match => sub {shift; return 0 .. $#_});
print &x::quux()==12 ? '' : 'not ', "ok 2\n";
print &y::quux()==23 ? '' : 'not ', "ok 3\n";
sub flurble {23}
