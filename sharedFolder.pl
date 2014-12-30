#!/usr/bin/perl

###############################################################################
# Author : Eric Hopkins
# Date   : 12/30/14
#
# This script is to setup a shared folder for a virtualbox client.
#
# This script sets up the owner as the current user (as opposed to root).
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

my $return = system("sudo mount -t vboxsf -o rw,uid=1000,gid=1000 $ARGV[0] $ARGV[1]");

if ($return == 0) {
    print "Script executed successfully.\n\n";
    print "Shared folder name: $ARGV[0]\nLocation in file system: $ARGV[1]\n\n";

} else {

    die "ERROR: Script failed to execute correctly.\n";
}
