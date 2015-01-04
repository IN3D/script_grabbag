###############################################################################
# Author: Eric Hopkins
# Date: 01/04/15
#
# This script is designed to get pkgin setup on NetBSD. This targets version
# 6.1.5 for amd64 systems. Changes as necessary.
#
# This program is free software: you can redistribute iit and/or modify it
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

echo `export PKG_PATH="http://ftp.netbsd.org/pub/pkgsrc/packages/NetBSD/amd64/6.1.5/All/"`
echo `pkg_add -v pkgin`
