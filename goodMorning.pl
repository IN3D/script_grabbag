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
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
###############################################################################
use strict;
use warnings;

die "Usage: 1 Argument required. Provide the root directory holding the Git repositories you wish to have updated." unless (@ARGV == 1);

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
