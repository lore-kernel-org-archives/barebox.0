Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SJPMk-0006FR-FE
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 13:19:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 15 Apr 2012 15:19:17 +0200
Message-Id: <1334495957-3499-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Makefile: fix build timestamps
To: barebox@lists.infradead.org

This patch adds the scripts/mkcompile_h from the Kernel. This gives
us additional information about the build like who built this binary
and with which compiler. Currently the only information used is the
build timestamp and the generation number.
This also fixes the build timestamp in the banner which is now correct
even with consecutive builds without making clean in between.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile            |    1 +
 common/Makefile     |   17 +++++++++
 common/version.c    |    4 ++-
 scripts/mkcompile_h |   96 +++++++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 117 insertions(+), 1 deletion(-)
 create mode 100755 scripts/mkcompile_h

diff --git a/Makefile b/Makefile
index c191540..fb85915 100644
--- a/Makefile
+++ b/Makefile
@@ -531,6 +531,7 @@ quiet_cmd_barebox_version = GEN     .version
 	  mv .version .old_version;			\
 	  expr 0$$(cat .old_version) + 1 >.version;	\
 	fi;						\
+	$(MAKE) $(build)=common
 
 # Check size of a file
 quiet_cmd_check_file_size = CHKSIZE $@
diff --git a/common/Makefile b/common/Makefile
index 76fe407..bfde73c 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -81,3 +81,20 @@ include/generated/barebox_default_env.h: barebox_default_env$(barebox_default_en
 CLEAN_FILES += include/generated/barebox_default_env.h barebox_default_env
 CLEAN_FILES += barebox_default_env.gz barebox_default_env.bz2
 CLEAN_FILES += barebox_default_env.lzo
+
+# dependencies on generated files need to be listed explicitly
+$(obj)/version.o: include/generated/compile.h
+
+# compile.h changes depending on hostname, generation number, etc,
+# so we regenerate it always.
+# mkcompile_h will make sure to only update the
+# actual file if its content has changed.
+
+       chk_compile.h = :
+ quiet_chk_compile.h = echo '  CHK     $@'
+silent_chk_compile.h = :
+include/generated/compile.h: FORCE
+	@$($(quiet)chk_compile.h)
+	$(Q)$(CONFIG_SHELL) $(srctree)/scripts/mkcompile_h $@ \
+	"$(UTS_MACHINE)" "$(CC) $(KBUILD_CFLAGS)"
+
diff --git a/common/version.c b/common/version.c
index 0af8ec1..51a8e7c 100644
--- a/common/version.c
+++ b/common/version.c
@@ -1,8 +1,10 @@
 #include <common.h>
+#include <generated/compile.h>
 #include <generated/utsrelease.h>
 
 const char version_string[] =
-	"barebox " UTS_RELEASE " (" __DATE__ " - " __TIME__ ")";
+	"barebox " UTS_RELEASE " " UTS_VERSION "\n";
+
 
 void barebox_banner (void)
 {
diff --git a/scripts/mkcompile_h b/scripts/mkcompile_h
new file mode 100755
index 0000000..1a80ef7
--- /dev/null
+++ b/scripts/mkcompile_h
@@ -0,0 +1,96 @@
+#!/bin/sh
+
+TARGET=$1
+ARCH=$2
+CC=$3
+
+vecho() { [ "${quiet}" = "silent_" ] || echo "$@" ; }
+
+# If compile.h exists already and we don't own autoconf.h
+# (i.e. we're not the same user who did make *config), don't
+# modify compile.h
+# So "sudo make install" won't change the "compiled by <user>"
+# do "compiled by root"
+
+if [ -r $TARGET -a ! -O include/generated/autoconf.h ]; then
+  vecho "  SKIPPED $TARGET"
+  exit 0
+fi
+
+# Do not expand names
+set -f
+
+# Fix the language to get consistent output
+LC_ALL=C
+export LC_ALL
+
+if [ -z "$KBUILD_BUILD_VERSION" ]; then
+	if [ -r .version ]; then
+		VERSION=`cat .version`
+	else
+		VERSION=0
+		echo 0 > .version
+	fi
+else
+	VERSION=$KBUILD_BUILD_VERSION
+fi
+
+if [ -z "$KBUILD_BUILD_TIMESTAMP" ]; then
+	TIMESTAMP=`date`
+else
+	TIMESTAMP=$KBUILD_BUILD_TIMESTAMP
+fi
+if test -z "$KBUILD_BUILD_USER"; then
+	BAREBOX_COMPILE_BY=$(whoami | sed 's/\\/\\\\/')
+else
+	BAREBOX_COMPILE_BY=$KBUILD_BUILD_USER
+fi
+if test -z "$KBUILD_BUILD_HOST"; then
+	BAREBOX_COMPILE_HOST=`hostname`
+else
+	BAREBOX_COMPILE_HOST=$KBUILD_BUILD_HOST
+fi
+
+UTS_VERSION="#$VERSION"
+CONFIG_FLAGS=""
+UTS_VERSION="$UTS_VERSION $CONFIG_FLAGS $TIMESTAMP"
+
+# Truncate to maximum length
+
+UTS_LEN=64
+UTS_TRUNCATE="cut -b -$UTS_LEN"
+
+# Generate a temporary compile.h
+
+( echo /\* This file is auto generated, version $VERSION \*/
+  if [ -n "$CONFIG_FLAGS" ] ; then echo "/* $CONFIG_FLAGS */"; fi
+
+  echo \#define UTS_MACHINE \"$ARCH\"
+
+  echo \#define UTS_VERSION \"`echo $UTS_VERSION | $UTS_TRUNCATE`\"
+
+  echo \#define BAREBOX_COMPILE_BY \"`echo $BAREBOX_COMPILE_BY | $UTS_TRUNCATE`\"
+  echo \#define BAREBOX_COMPILE_HOST \"`echo $BAREBOX_COMPILE_HOST | $UTS_TRUNCATE`\"
+
+  echo \#define BAREBOX_COMPILER \"`$CC -v 2>&1 | tail -n 1`\"
+) > .tmpcompile
+
+# Only replace the real compile.h if the new one is different,
+# in order to preserve the timestamp and avoid unnecessary
+# recompilations.
+# We don't consider the file changed if only the date/time changed.
+# A kernel config change will increase the generation number, thus
+# causing compile.h to be updated (including date/time) due to the
+# changed comment in the
+# first line.
+
+if [ -r $TARGET ] && \
+      grep -v 'UTS_VERSION' $TARGET > .tmpver.1 && \
+      grep -v 'UTS_VERSION' .tmpcompile > .tmpver.2 && \
+      cmp -s .tmpver.1 .tmpver.2; then
+   rm -f .tmpcompile
+else
+   vecho "  UPD     $TARGET"
+   mv -f .tmpcompile $TARGET
+fi
+rm -f .tmpver.1 .tmpver.2
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
