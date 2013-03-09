Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEHi1-00022U-JX
 for barebox@lists.infradead.org; Sat, 09 Mar 2013 11:13:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat,  9 Mar 2013 12:12:59 +0100
Message-Id: <1362827579-25536-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Make: update setlocalversion from the kernel
To: barebox@lists.infradead.org

This syncs the localversion generation with the kernel.

At least one effect is that a barebox built from a tar archive no
longer marks itself as dirty. Also it moves some stuff from a scary
Makefile to a not-so-scary shell script.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile                |  61 +--------------
 scripts/setlocalversion | 192 +++++++++++++++++++++++++++++++++++++-----------
 2 files changed, 151 insertions(+), 102 deletions(-)

diff --git a/Makefile b/Makefile
index b5819fc..7c6ca39 100644
--- a/Makefile
+++ b/Makefile
@@ -744,68 +744,11 @@ PHONY += $(barebox-dirs)
 $(barebox-dirs): prepare scripts
 	$(Q)$(MAKE) $(build)=$@
 
-# Build the kernel release string
-#
-# The KERNELRELEASE value built here is stored in the file
-# include/config/kernel.release, and is used when executing several
-# make targets, such as "make install" or "make modules_install."
-#
-# The eventual kernel release string consists of the following fields,
-# shown in a hierarchical format to show how smaller parts are concatenated
-# to form the larger and final value, with values coming from places like
-# the Makefile, kernel config options, make command line options and/or
-# SCM tag information.
-#
-#	$(KERNELVERSION)
-#	  $(VERSION)			eg, 2
-#	  $(PATCHLEVEL)			eg, 6
-#	  $(SUBLEVEL)			eg, 18
-#	  $(EXTRAVERSION)		eg, -rc6
-#	$(localver-full)
-#	  $(localver)
-#	    localversion*		(all localversion* files)
-#	    $(CONFIG_LOCALVERSION)	(from kernel config setting)
-#	  $(localver-auto)		(only if CONFIG_LOCALVERSION_AUTO is set)
-#	    ./scripts/setlocalversion	(SCM tag, if one exists)
-#	    $(LOCALVERSION)		(from make command line if provided)
-#
-#  Note how the final $(localver-auto) string is included *only* if the
-# kernel config option CONFIG_LOCALVERSION_AUTO is selected.  Also, at the
-# moment, only git is supported but other SCMs can edit the script
-# scripts/setlocalversion and add the appropriate checks as needed.
-
-nullstring :=
-space      := $(nullstring) # end of line
-
-___localver = $(objtree)/localversion* $(srctree)/localversion*
-__localver  = $(sort $(wildcard $(___localver)))
-# skip backup files (containing '~')
-_localver = $(foreach f, $(__localver), $(if $(findstring ~, $(f)),,$(f)))
-
-localver = $(subst $(space),, \
-	   $(shell cat /dev/null $(_localver)) \
-	   $(patsubst "%",%,$(CONFIG_LOCALVERSION)))
-
-# If CONFIG_LOCALVERSION_AUTO is set scripts/setlocalversion is called
-# and if the SCM is know a tag from the SCM is appended.
-# The appended tag is determined by the SCM used.
-#
-# Currently, only git is supported.
-# Other SCMs can edit scripts/setlocalversion and add the appropriate
-# checks as needed.
-ifdef CONFIG_LOCALVERSION_AUTO
-	_localver-auto = $(shell $(CONFIG_SHELL) \
-	                  $(srctree)/scripts/setlocalversion $(srctree))
-	localver-auto  = $(LOCALVERSION)$(_localver-auto)
-endif
-
-localver-full = $(localver)$(localver-auto)
-
 # Store (new) KERNELRELASE string in include/config/kernel.release
-kernelrelease = $(KERNELVERSION)$(localver-full)
+localversion = $(shell $(srctree)/scripts/setlocalversion $(srctree))
 include/config/kernel.release: include/config/auto.conf FORCE
 	$(Q)rm -f $@
-	$(Q)echo $(kernelrelease) > $@
+	$(Q)echo $(KERNELVERSION)$(localversion) > $@
 
 Doxyfile.version: include/config/auto.conf FORCE
 	$(Q)rm -f $@
diff --git a/scripts/setlocalversion b/scripts/setlocalversion
index 83b7512..cce4706 100755
--- a/scripts/setlocalversion
+++ b/scripts/setlocalversion
@@ -1,65 +1,171 @@
 #!/bin/sh
-# Print additional version information for non-release trees.
+#
+# This scripts adds local version information from the version
+# control systems git, mercurial (hg) and subversion (svn).
+#
 
 usage() {
-	echo "Usage: $0 [srctree]" >&2
+	echo "Usage: $0 [--save-scmversion] [srctree]" >&2
 	exit 1
 }
 
-cd "${1:-.}" || usage
+scm_only=false
+srctree=.
+if test "$1" = "--save-scmversion"; then
+	scm_only=true
+	shift
+fi
+if test $# -gt 0; then
+	srctree=$1
+	shift
+fi
+if test $# -gt 0 -o ! -d "$srctree"; then
+	usage
+fi
 
-# Check for git and a git repo.
-if head=`git rev-parse --verify HEAD 2>/dev/null`; then
-	# Do we have an untagged version?
-	if git name-rev --tags HEAD | grep -E '^HEAD[[:space:]]+(.*~[0-9]*|undefined)$' > /dev/null; then
-		if tag=`git describe 2>/dev/null`; then
-			echo $tag | awk -F- '{printf("-%05d-%s", $(NF-1),$(NF))}'
-		fi
-	fi
+scm_version()
+{
+	local short
+	short=false
 
-	# Are there uncommitted changes?
-	git update-index --refresh --unmerged > /dev/null
-	if git diff-index --name-only HEAD | grep -v "^scripts/package" \
-	    | read dummy; then
-		printf '%s' -dirty
+	cd "$srctree"
+	if test -e .scmversion; then
+		cat .scmversion
+		return
+	fi
+	if test "$1" = "--short"; then
+		short=true
 	fi
 
-	# All done with git
-	exit
-fi
+	# Check for git and a git repo.
+	if test -d .git && head=`git rev-parse --verify --short HEAD 2>/dev/null`; then
 
-# Check for mercurial and a mercurial repo.
-if hgid=`hg id 2>/dev/null`; then
-	tag=`printf '%s' "$hgid" | cut -d' ' -f2`
+		# If we are at a tagged commit (like "v2.6.30-rc6"), we ignore
+		# it, because this version is defined in the top level Makefile.
+		if [ -z "`git describe --exact-match 2>/dev/null`" ]; then
 
-	# Do we have an untagged version?
-	if [ -z "$tag" -o "$tag" = tip ]; then
-		id=`printf '%s' "$hgid" | sed 's/[+ ].*//'`
-		printf '%s%s' -hg "$id"
+			# If only the short version is requested, don't bother
+			# running further git commands
+			if $short; then
+				echo "+"
+				return
+			fi
+			# If we are past a tagged commit (like
+			# "v2.6.30-rc5-302-g72357d5"), we pretty print it.
+			if atag="`git describe 2>/dev/null`"; then
+				echo "$atag" | awk -F- '{printf("-%05d-%s", $(NF-1),$(NF))}'
+
+			# If we don't have a tag at all we print -g{commitish}.
+			else
+				printf '%s%s' -g $head
+			fi
+		fi
+
+		# Is this git on svn?
+		if git config --get svn-remote.svn.url >/dev/null; then
+			printf -- '-svn%s' "`git svn find-rev $head`"
+		fi
+
+		# Update index only on r/w media
+		[ -w . ] && git update-index --refresh --unmerged > /dev/null
+
+		# Check for uncommitted changes
+		if git diff-index --name-only HEAD | grep -qv "^scripts/package"; then
+			printf '%s' -dirty
+		fi
+
+		# All done with git
+		return
 	fi
 
-	# Are there uncommitted changes?
-	# These are represented by + after the changeset id.
-	case "$hgid" in
-		*+|*+\ *) printf '%s' -dirty ;;
-	esac
+	# Check for mercurial and a mercurial repo.
+	if test -d .hg && hgid=`hg id 2>/dev/null`; then
+		# Do we have an tagged version?  If so, latesttagdistance == 1
+		if [ "`hg log -r . --template '{latesttagdistance}'`" == "1" ]; then
+			id=`hg log -r . --template '{latesttag}'`
+			printf '%s%s' -hg "$id"
+		else
+			tag=`printf '%s' "$hgid" | cut -d' ' -f2`
+			if [ -z "$tag" -o "$tag" = tip ]; then
+				id=`printf '%s' "$hgid" | sed 's/[+ ].*//'`
+				printf '%s%s' -hg "$id"
+			fi
+		fi
 
-	# All done with mercurial
-	exit
-fi
+		# Are there uncommitted changes?
+		# These are represented by + after the changeset id.
+		case "$hgid" in
+			*+|*+\ *) printf '%s' -dirty ;;
+		esac
 
-# Check for svn and a svn repo.
-if rev=`svn info 2>/dev/null | grep '^Revision'`; then
-	rev=`echo $rev | awk '{print $NF}'`
-	changes=`svn status 2>/dev/null | grep '^[AMD]' | wc -l`
+		# All done with mercurial
+		return
+	fi
 
-	# Are there uncommitted changes?
-	if [ $changes != 0 ]; then
-		printf -- '-svn%s%s%s' "$rev" -dirty "$changes"
-	else
+	# Check for svn and a svn repo.
+	if rev=`svn info 2>/dev/null | grep '^Last Changed Rev'`; then
+		rev=`echo $rev | awk '{print $NF}'`
 		printf -- '-svn%s' "$rev"
+
+		# All done with svn
+		return
 	fi
+}
 
-	# All done with svn
+collect_files()
+{
+	local file res
+
+	for file; do
+		case "$file" in
+		*\~*)
+			continue
+			;;
+		esac
+		if test -e "$file"; then
+			res="$res$(cat "$file")"
+		fi
+	done
+	echo "$res"
+}
+
+if $scm_only; then
+	if test ! -e .scmversion; then
+		res=$(scm_version)
+		echo "$res" >.scmversion
+	fi
 	exit
 fi
+
+if test -e include/config/auto.conf; then
+	. include/config/auto.conf
+else
+	echo "Error: kernelrelease not valid - run 'make prepare' to update it"
+	exit 1
+fi
+
+# localversion* files in the build and source directory
+res="$(collect_files localversion*)"
+if test ! "$srctree" -ef .; then
+	res="$res$(collect_files "$srctree"/localversion*)"
+fi
+
+# CONFIG_LOCALVERSION and LOCALVERSION (if set)
+res="${res}${CONFIG_LOCALVERSION}${LOCALVERSION}"
+
+# scm version string if not at a tagged commit
+if test "$CONFIG_LOCALVERSION_AUTO" = "y"; then
+	# full scm version string
+	res="$res$(scm_version)"
+else
+	# append a plus sign if the repository is not in a clean
+	# annotated or signed tagged state (as git describe only
+	# looks at signed or annotated tags - git tag -a/-s) and
+	# LOCALVERSION= is not specified
+	if test "${LOCALVERSION+set}" != "set"; then
+		scm=$(scm_version --short)
+		res="$res${scm:++}"
+	fi
+fi
+
+echo "$res"
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
