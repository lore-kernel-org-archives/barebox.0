Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a00:ee2:100:3a01::1] (helo=chandra.tablix.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gvlIM-00011f-HI
 for barebox@lists.infradead.org; Mon, 18 Feb 2019 15:57:28 +0000
From: Tomaz Solc <tomaz.solc@tablix.org>
Date: Mon, 18 Feb 2019 16:57:12 +0100
Message-Id: <20190218155712.21254-1-tomaz.solc@tablix.org>
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
Subject: [PATCH] genenv: create a gcc-like .d file for depenencies.
To: barebox@lists.infradead.org
Cc: Tomaz Solc <tomaz.solc@tablix.org>

Commit 658af1ca mentions that environment build dependencies are not tracked
and the complete environment is rebuilt on every build.

However commit 105201e0 added if_changed to the make rule, so this is currently
not the case. Environment is only rebuilt if barebox_default_env is missing or
if CONFIG_DEFAULT_ENVIRONMENT_PATH has changed. genenv is not re-run if any
individual source files are modified. So if environment source files are
edited, Barebox is rebuilt with a stale barebox_default_env unless it is
manually deleted first.

With this commit genenv creates a .d file, similar to those created by gcc to
track C header dependencies. This is then passed to Kbuild with if_changed_dep
in the Makefile. This makes make re-run genenv if any source environment files are
changed. However, new environment files are still not detected automatically.
---
 defaultenv/Makefile |  2 +-
 scripts/genenv      | 18 +++++++++---------
 2 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/defaultenv/Makefile b/defaultenv/Makefile
index f313b04e8..383b48e29 100644
--- a/defaultenv/Makefile
+++ b/defaultenv/Makefile
@@ -14,7 +14,7 @@ quiet_cmd_env_default = ENV     $@
 cmd_env_default = ($(srctree)/scripts/genenv $(srctree) $(objtree) $@ $(CONFIG_DEFAULT_ENVIRONMENT_PATH))
 
 $(obj)/barebox_default_env: FORCE
-	$(call if_changed,env_default)
+	$(call if_changed_dep,env_default)
 
 quiet_cmd_env_h = ENVH    $@
 cmd_env_h = cat $< | (cd $(obj) && $(objtree)/scripts/bin2c "__aligned(4) default_environment") > $@; \
diff --git a/scripts/genenv b/scripts/genenv
index 5ebe69963..756a2522b 100755
--- a/scripts/genenv
+++ b/scripts/genenv
@@ -30,29 +30,29 @@ abspath() {
 export -f abspath
 
 tempdir=$(abspath "${target}.genenv.tmp")
-tmpfile="$(mktemp)"
+depfile=$(dirname "${target}")/.$(basename "${target}").d
 
 mkdir -p "$tempdir"
 
 (cd $basedir
+# First listed dependency is ignored by fixdep, but must be a readable file.
+deps=scripts/genenv
 for i in $*; do
 	if [ -d $i ]; then
 		cp -r $i/* $tempdir
+		deps="$deps $(find $i -type f)"
 	else
 		cp -a $i $tempdir
+		deps="$deps $i"
 	fi
 done
+# This doesn't work with spaces in filenames, but Kbuild's fixdep doesn't seem
+# to support such filenames in any case.
+echo "${target}: $(echo ${deps})" > ${depfile}
 )
 
 find $tempdir -name '.svn' -o -name '*~' -delete
 
-$objtree/scripts/bareboxenv -s $tempdir ${tmpfile}
-
-diff "${tmpfile}" "${target}" >/dev/null 2>/dev/null
-if [ $? != 0 ]; then
-	mv "${tmpfile}" "${target}"
-else
-	rm ${tmpfile}
-fi
+$objtree/scripts/bareboxenv -s $tempdir ${target}
 
 rm -r $tempdir
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
