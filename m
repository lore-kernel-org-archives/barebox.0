Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WG4kA-0003Vc-MO
 for barebox@lists.infradead.org; Wed, 19 Feb 2014 10:51:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Feb 2014 11:50:44 +0100
Message-Id: <1392807047-32080-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1392807047-32080-1-git-send-email-s.hauer@pengutronix.de>
References: <1392807047-32080-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] defaultenv: simplify env dependencies
To: barebox@lists.infradead.org

Finding out whether to rebuild the environment is a difficult task
since we have to track all files in a directory. Instead of trying
this, just rebuild the environment during every build and only if
it differs to the last one overwrite the target. This way make
only sees a change when the environment is changed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Makefile | 15 ++++-----------
 scripts/genenv  | 12 ++++++++++--
 2 files changed, 14 insertions(+), 13 deletions(-)

diff --git a/common/Makefile b/common/Makefile
index ce34d98..0429336 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -65,23 +65,16 @@ ifneq ($(CONFIG_DEFAULT_ENVIRONMENT_PATH),"")
 DEFAULT_ENVIRONMENT_PATH += $(CONFIG_DEFAULT_ENVIRONMENT_PATH)
 endif
 
-ENV_FILES := $(shell cd $(srctree); for i in $(DEFAULT_ENVIRONMENT_PATH); do find $${i} -type f ; done)
-
 endif # ifdef CONFIG_DEFAULT_ENVIRONMENT
 
 #
 # Generate a barebox envfs image.
 #
-# echo $(ENV_FILES) > /dev/null is just for letting if_changed
-# recognize that something has changed when the environment has
-# other files,
-#
-quiet_cmd_env = ENV     $@
-cmd_env = ($(srctree)/scripts/genenv $(srctree) $(objtree) $@ $(DEFAULT_ENVIRONMENT_PATH)) || \
-	(echo $(ENV_FILES) > /dev/null; rm -f $@ ; false)
+quiet_cmd_envs = ENV     $@
+cmd_envs = ($(srctree)/scripts/genenv $(srctree) $(objtree) $@ $(DEFAULT_ENVIRONMENT_PATH))
 
-$(obj)/barebox_default_env: $(ENV_FILES) FORCE
-	$(call if_changed,env)
+$(obj)/barebox_default_env: FORCE
+	$(call cmd,envs)
 
 barebox_default_env_comp =
 ifeq ($(CONFIG_DEFAULT_ENVIRONMENT_COMPRESSED_GZIP),y)
diff --git a/scripts/genenv b/scripts/genenv
index c14cd87..d0b0ffd 100755
--- a/scripts/genenv
+++ b/scripts/genenv
@@ -10,7 +10,8 @@ basedir=$1
 target=$3
 shift 3
 
-tempdir="$objtree/.barebox_default_env"
+tempdir="${target}.genenv.tmp"
+tmpfile="$(mktemp)"
 
 mkdir -p "$tempdir"
 
@@ -26,6 +27,13 @@ done
 
 find $tempdir -name '.svn' -o -name '*~' -delete
 
-$objtree/scripts/bareboxenv -s $tempdir $target
+$objtree/scripts/bareboxenv -s $tempdir ${tmpfile}
+
+diff "${tmpfile}" "${target}" >/dev/null 2>/dev/null
+if [ $? != 0 ]; then
+	mv "${tmpfile}" "${target}"
+else
+	rm ${tmpfile}
+fi
 
 rm -r $tempdir
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
