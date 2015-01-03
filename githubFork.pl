#!/usr/bin/perl

################################################################################
# Author : Eric Hopkins
# Date   : 01/02/15
#
# This is designed to work with GitHub forks. The commands for working with
# forks for whatever reason always escape me. Provide an argument for the name
# of the branch you want updated.
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
################################################################################
use strict;
use warnings;

die "Usage: 1 Argument required. Provide the name of the branch that you would like update.\n" unless (@ARGV >= 1);

# First, check to see that an upstream has been set.
print "Checking to see if upstream is set...\n";
my $output = `git remote -v`;
my $fetch  = 1;

# if there is a match, no need to set upstream.
$fetch = 0 if $output =~ '/upstream/';

# if there is no apparent upstream, one needs to be set.
if ($fetch) {
    print "No upstream set. Trying to set...\n";
    die "Failure: no upstream is set, and an origin was not provided. Could not set upstream. Please provide a second argument.\n" unless (@ARGV == 2);

    system("git remote add upstream $ARGV[1]");
}

print "Upstream is set!\n";

# fetch, checkout, and merge.
print "Beginning fetch, checkout, and merge.\n";
system("git fetch upstream");
system("git checkout $ARGV[0]");
system("git merge upstream/$ARGV[0]");

print "Success! Script finished, upstream is set, and fork merged.\n";
