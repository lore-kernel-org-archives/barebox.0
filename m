Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PHuy4-0001ok-8v
	for barebox@lists.infradead.org; Mon, 15 Nov 2010 09:03:23 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Mon, 15 Nov 2010 10:02:27 +0100
Message-Id: <1289811747-28742-4-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1289811747-28742-1-git-send-email-r.schwebel@pengutronix.de>
References: <1289811747-28742-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 3/3] doc: put barebox version into documentation
To: barebox@lists.infradead.org

Currently the documentation does always claim to be version 1. We add
the revision plus the git version to the manual.

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 .gitignore |    3 +++
 Doxyfile   |    2 +-
 Makefile   |    7 +++++--
 3 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/.gitignore b/.gitignore
index 2c580c6..4a45113 100644
--- a/.gitignore
+++ b/.gitignore
@@ -48,6 +48,9 @@ include/config
 include/linux/compile.h
 include/generated
 
+# Generated files
+Doxyfile.version
+
 # stgit generated dirs
 patches-*
 
diff --git a/Doxyfile b/Doxyfile
index d9ce22c..89151e3 100644
--- a/Doxyfile
+++ b/Doxyfile
@@ -31,7 +31,7 @@ PROJECT_NAME           = barebox
 # This could be handy for archiving the generated documentation or
 # if some version control system is used.
 
-PROJECT_NUMBER         = 1
+@INCLUDE               = Doxyfile.version
 
 # The OUTPUT_DIRECTORY tag is used to specify the (relative or absolute)
 # base path where the generated documentation will be put.
diff --git a/Makefile b/Makefile
index ae32b50..4e1c011 100644
--- a/Makefile
+++ b/Makefile
@@ -762,6 +762,9 @@ include/config/kernel.release: include/config/auto.conf FORCE
 	$(Q)rm -f $@
 	$(Q)echo $(kernelrelease) > $@
 
+Doxyfile.version: include/config/auto.conf FORCE
+	$(Q)rm -f $@
+	$(Q)echo "PROJECT_NUMBER = $(KERNELRELEASE)" > $@
 
 # Things we need to do before we recursively start building the kernel
 # or the modules are listed in "prepare".
@@ -973,7 +976,7 @@ endif # CONFIG_MODULES
 CLEAN_DIRS  += $(MODVERDIR)
 CLEAN_FILES +=	barebox System.map include/generated/barebox_default_env.h \
                 .tmp_version .tmp_barebox* barebox.bin barebox.S \
-		.tmp_kallsyms* barebox_default_env barebox.ldr
+		.tmp_kallsyms* barebox_default_env barebox.ldr Doxyfile.version
 
 # Directories & files removed with 'make mrproper'
 MRPROPER_DIRS  += include/config include2 usr/include
@@ -1098,7 +1101,7 @@ help:
 
 docs : htmldocs
 
-htmldocs:
+htmldocs: Doxyfile.version
 	@echo  'Running doxygen with local Doxyfile'
 	$(Q)doxygen Doxyfile
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
