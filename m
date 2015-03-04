Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YT5cy-0008Rh-V1
 for barebox@lists.infradead.org; Wed, 04 Mar 2015 09:30:06 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Wed,  4 Mar 2015 10:29:30 +0100
Message-Id: <1425461372-31740-3-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1425461372-31740-1-git-send-email-jlu@pengutronix.de>
References: <1425461372-31740-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 2/4] scripts/dtc: import update-dtc-source.sh from kernel
 v4.0-rc1
To: barebox@lists.infradead.org

The original script was written by Grant Likely <grant.likely@linaro.org>.
The version for barebox also imports some libfdt sources, so that we are
able to compile the fdtget host tool. Also remove the unused non-kconfig
makefiles.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 scripts/dtc/Makefile.dtc           | 18 -----------
 scripts/dtc/libfdt/Makefile.libfdt | 10 -------
 scripts/dtc/update-dtc-source.sh   | 61 ++++++++++++++++++++++++++++++++++++++
 3 files changed, 61 insertions(+), 28 deletions(-)
 delete mode 100644 scripts/dtc/Makefile.dtc
 delete mode 100644 scripts/dtc/libfdt/Makefile.libfdt
 create mode 100755 scripts/dtc/update-dtc-source.sh

diff --git a/scripts/dtc/Makefile.dtc b/scripts/dtc/Makefile.dtc
deleted file mode 100644
index bece49b35535..000000000000
--- a/scripts/dtc/Makefile.dtc
+++ /dev/null
@@ -1,18 +0,0 @@
-# Makefile.dtc
-#
-# This is not a complete Makefile of itself.  Instead, it is designed to
-# be easily embeddable into other systems of Makefiles.
-#
-DTC_SRCS = \
-	checks.c \
-	data.c \
-	dtc.c \
-	flattree.c \
-	fstree.c \
-	livetree.c \
-	srcpos.c \
-	treesource.c \
-	util.c
-
-DTC_GEN_SRCS = dtc-lexer.lex.c dtc-parser.tab.c
-DTC_OBJS = $(DTC_SRCS:%.c=%.o) $(DTC_GEN_SRCS:%.c=%.o)
diff --git a/scripts/dtc/libfdt/Makefile.libfdt b/scripts/dtc/libfdt/Makefile.libfdt
deleted file mode 100644
index 91126c000a1e..000000000000
--- a/scripts/dtc/libfdt/Makefile.libfdt
+++ /dev/null
@@ -1,10 +0,0 @@
-# Makefile.libfdt
-#
-# This is not a complete Makefile of itself.  Instead, it is designed to
-# be easily embeddable into other systems of Makefiles.
-#
-LIBFDT_soname = libfdt.$(SHAREDLIB_EXT).1
-LIBFDT_INCLUDES = fdt.h libfdt.h libfdt_env.h
-LIBFDT_VERSION = version.lds
-LIBFDT_SRCS = fdt.c fdt_ro.c fdt_wip.c fdt_sw.c fdt_rw.c fdt_strerror.c fdt_empty_tree.c
-LIBFDT_OBJS = $(LIBFDT_SRCS:%.c=%.o)
diff --git a/scripts/dtc/update-dtc-source.sh b/scripts/dtc/update-dtc-source.sh
new file mode 100755
index 000000000000..075d1d7af01d
--- /dev/null
+++ b/scripts/dtc/update-dtc-source.sh
@@ -0,0 +1,61 @@
+#!/bin/sh
+# Simple script to update the version of DTC carried by the Linux kernel
+#
+# This script assumes that the dtc and the linux git trees are in the
+# same directory. After building dtc in the dtc directory, it copies the
+# source files and generated source files into the scripts/dtc directory
+# in the kernel and creates a git commit updating them to the new
+# version.
+#
+# Usage: from the top level Linux source tree, run:
+# $ ./scripts/dtc/update-dtc-source.sh
+#
+# The script will change into the dtc tree, build and test dtc, copy the
+# relevant files into the kernel tree and create a git commit. The commit
+# message will need to be modified to reflect the version of DTC being
+# imported
+#
+# TODO:
+# This script is pretty basic, but it is seldom used so a few manual tasks
+# aren't a big deal. If anyone is interested in making it more robust, the
+# the following would be nice:
+# * Actually fail to complete if any testcase fails.
+#   - The dtc "make check" target needs to return a failure
+# * Extract the version number from the dtc repo for the commit message
+# * Build dtc in the kernel tree
+# * run 'make check" on dtc built from the kernel tree
+
+set -ev
+
+DTC_UPSTREAM_PATH=`pwd`/../dtc
+DTC_LINUX_PATH=`pwd`/scripts/dtc
+
+DTC_SOURCE="checks.c data.c dtc.c dtc.h flattree.c fstree.c livetree.c srcpos.c \
+		srcpos.h treesource.c util.c util.h version_gen.h Makefile.dtc \
+		dtc-lexer.l dtc-parser.y fdtdump.c fdtput.c fdtget.c"
+DTC_LIB="fdt.c fdt.h fdt_addresses.c fdt_empty_tree.c fdt_ro.c fdt_rw.c \
+		fdt_strerror.c fdt_sw.c fdt_wip.c libfdt.h libfdt_env.h \
+		libfdt_internal.h"
+DTC_GENERATED="dtc-lexer.lex.c dtc-parser.tab.c dtc-parser.tab.h"
+
+# Build DTC
+cd $DTC_UPSTREAM_PATH
+make clean
+make check
+
+# Copy the files into the Linux tree
+cd $DTC_LINUX_PATH
+for f in $DTC_SOURCE; do
+	cp ${DTC_UPSTREAM_PATH}/${f} ${f}
+	git add ${f}
+done
+for f in $DTC_LIB; do
+	cp ${DTC_UPSTREAM_PATH}/libfdt/${f} ${f}
+	git add ${f}
+done
+for f in $DTC_GENERATED; do
+	cp ${DTC_UPSTREAM_PATH}/$f ${f}_shipped
+	git add ${f}_shipped
+done
+
+git commit -e -v -m "scripts/dtc: Update to upstream version [CHANGEME]"
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
