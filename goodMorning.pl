#!/usr/bin/perl

###############################################################################
# Author: Eric Hopkins
# Date  : 12/30/14
#
# One of my common morning tasks is to check all the repositiories I work on,
# and do pulls on them.
#
# This script is designed to run through a root directory of projects and do
# pulls on each of them.
#
# If you would like to make sure the pull is done to a specific branch,
# provide a second argument with the name of that branch (i.e. staging)
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

die "Usage: 1 Argument required. Provide the root directory holding the Git " .
"repositories you wish to have updated." .
"\nFor help, please type -h.\n" unless (@ARGV >= 1);

die "Usage:\nARG 1: root directory of git repositories.\nARG 2 (optional): " .
"Name of the branch you would like the repositories set to.\n"
if ($ARGV[0] eq '-h');

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
	system("git checkout $ARGV[1]") if @ARGV == 2;
    system("git pull");
}
