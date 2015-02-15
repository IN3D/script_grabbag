#! usr/bin/ruby

###############################################################################
# Author: Eric Hopkins
# Date  : 02/15/15
#
# For whatever reason npm lacks a simple command to list globally installed
# packages. This script simply executes the shell command, while tying it to
# a file name that's actually semantic.
#
# This program is free software: you can redistribute it and/or modify it
# under the terms of the GNU Gernal Public License as published by the Free
# Software Foundation, either version 3 of the License, or (at your option)
# any later version.
#
# This program is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
# FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
# more details.
#
# You should have received a copy of the GNU General Public License along
# with this program. If not, see <http://www.gnu.org/licenses/>
###############################################################################
puts `npm list -g --depth=0`
