#!/usr/bin/perl

###############################################################################
# Author : Eric Hopkins
# Date   : 12/30/14
#
# One of my common morning tasks is to check all the repositiories I work on,
# and do pulls on them.
#
# This script is designed to run through a root directory of projects and do
# pulls on each of them.
###############################################################################
use strict;
use warnings;
my $root;

# check to see if a trailing / was given or not
if ((substr $ARGV[0], -1) eq '/') {
    $root = $ARGV[0] . '*';

} else {
    $root = $ARGV[0] . '/*';

}

my @projects = grep { -d } glob $root;

foreach my $p (@projects) {

    print "\n\ncurrently in: $p\n";
    chdir($p);
    system("git pull");
}
