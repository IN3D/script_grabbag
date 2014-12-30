#!/usr/bin/perl

#######################################
# Author : Eric Hopkins
# Date   : 12/30/14
#
# This script is to setup a shared 
# folder for a virtualbox client.
#
# This script sets up the owner as the
# current user (as opposed to root).
#######################################

use strict;
use warnings;

my $return = system("sudo mount -t vboxsf -o rw,uid=1000,gid=1000 $ARGV[0] $ARGV[1]");

if ($return == 0) {
    print "Script executed successfully.\n\n";
    print "Shared folder name: $ARGV[0]\nLocation in file system: $ARGV[1]\n\n";

} else {

    die "ERROR: Script failed to execute correctly.\n";
}
