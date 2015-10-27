#!/bin/bash
###############################################################################
# Author: Eric Hopkins
# Date: 01/02/15
#
# When setting up on a new computer, I have several git aliases I use very
# frequently; I don't like being without them. This simple script is meant to
# keep my aliases consistent across computers I use.
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

git config --global alias.aliases 'config --get-regex alias'
git config --global alias.ci 'commit -m'
git config --global alias.co checkout
git config --global alias.cob 'checkout -b'
git config --global alias.s 'status -s'
git config --global alias.b branch
git config --global alias.whoami 'config user.email'
git config --global alias.beyonce 'config user.name'
git config --global alias.hist 'log --oneline'
git config --global alias.untrack 'rm --cache'
git config --global alias.all 'add .'
git config --global alias.uncommit 'reset --soft HEAD~1'
git config --global alias.unci 'reset --soft HEAD~1'
git config --global alias.unstash 'stash apply'
git config --global alias.aci 'commit -am'
git config --global alias.p push
git config --global alias.toremote 'push -u origin'
git config --global alias.deleteremote 'push origin --delete'
git config --global alias.tracking 'branch -vv'
git config --global alias.m merge
git config --global alias.mnff 'merge --no-ff'
git config --global alias.u 'add -u'
git config --global alias.poh 'push origin HEAD'
git config --global alias.graph 'log --pretty --graph'
git config --global alias.bvv 'branch -vv'
