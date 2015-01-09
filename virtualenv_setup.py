#! /usr/bin/python

###############################################################################
# Author : Eric Hopkins
# Date   : 01/08/15
#
# This script is designed to automate the setup of a python virtual
# environment. The script takes in an argument for the version of python that
# you would like to virtualize in your environment. If no argument is provided,
# python3 will be assumed.
#
# This program is free software: you can redistribute it and/or modify it
# under the terms of the GNU General Public License as published by the Free
# Software Foundation, either version 3 of the License, or (at your option)
# any later version.
#
# This program is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
# FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
# more details.
#
# You should have received a copy of the GNU General Public License along
# with this program. If not, see <http://www.gnu.org/licenses/>.
###############################################################################
from sys        import argv, exit
from subprocess import call, check_output


version = 'python' + ('3' if (len(argv) < 2) or (argv[1] != '2') else '')

print 'You are going to create a ', version, ' virtual environment.'

confirm = raw_input('Confirm (y/n): ')


if confirm == 'y' or confirm == 'Y':

    dir_name = raw_input('Name of the directory to create: ').strip()
    sys_loc  = check_output(['which', version]).strip()

    call(["virtualenv", "-p", sys_loc, dir_name])

    print " Virtual environment successfully created in %s." % dir_name

else:
    exit()
