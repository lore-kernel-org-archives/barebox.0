Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 70.mail-out.ovh.net ([91.121.185.63])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OwSlg-00035K-6S
	for barebox@lists.infradead.org; Fri, 17 Sep 2010 04:41:49 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 17 Sep 2010 06:40:34 +0200
Message-Id: <1284698436-1097-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1284698436-1097-1-git-send-email-plagnioj@jcrosoft.com>
References: <1284698436-1097-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/5] move utsrelease.h to include/generated/ instead of
	include/linux
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 .gitignore                  |    1 -
 Makefile                    |    6 +++---
 common/command.c            |    2 +-
 scripts/setupmbr/setupmbr.c |    2 +-
 4 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/.gitignore b/.gitignore
index 2179251..2c580c6 100644
--- a/.gitignore
+++ b/.gitignore
@@ -46,7 +46,6 @@ include/asm
 include/asm-*/asm-offsets.h
 include/config
 include/linux/compile.h
-include/linux/utsrelease.h
 include/generated
 
 # stgit generated dirs
diff --git a/Makefile b/Makefile
index 838d6ed..c990005 100644
--- a/Makefile
+++ b/Makefile
@@ -796,7 +796,7 @@ endif
 # prepare2 creates a makefile if using a separate output directory
 prepare2: prepare3 outputmakefile
 
-prepare1: prepare2 include/generated/version.h include/linux/utsrelease.h \
+prepare1: prepare2 include/generated/version.h include/generated/utsrelease.h \
                    include/asm include/config.h include/config/auto.conf
 
 ifneq ($(KBUILD_MODULES),)
@@ -882,7 +882,7 @@ endef
 include/generated/version.h: $(srctree)/Makefile FORCE
 	$(call filechk,version.h)
 
-include/linux/utsrelease.h: include/config/kernel.release FORCE
+include/generated/utsrelease.h: include/config/kernel.release FORCE
 	$(call filechk,utsrelease.h)
 
 # ---------------------------------------------------------------------------
@@ -979,7 +979,7 @@ CLEAN_FILES +=	barebox System.map include/barebox_default_env.h \
 MRPROPER_DIRS  += include/config include2 usr/include
 MRPROPER_FILES += .config .config.old include/asm .version .old_version \
                   include/generated/autoconf.h include/generated/version.h      \
-                  include/linux/utsrelease.h include/config.h           \
+                  include/generated/utsrelease.h include/config.h           \
 		  Module.symvers tags TAGS cscope*
 
 # clean - Delete most, but leave enough to build external modules
diff --git a/common/command.c b/common/command.c
index 8ed1072..f1aeeb9 100644
--- a/common/command.c
+++ b/common/command.c
@@ -33,7 +33,7 @@
 #include <linux/list.h>
 #include <init.h>
 #include <complete.h>
-#include <linux/utsrelease.h>
+#include <generated/utsrelease.h>
 #include <getopt.h>
 
 const char version_string[] =
diff --git a/scripts/setupmbr/setupmbr.c b/scripts/setupmbr/setupmbr.c
index 01e8c64..3cfec97 100644
--- a/scripts/setupmbr/setupmbr.c
+++ b/scripts/setupmbr/setupmbr.c
@@ -42,7 +42,7 @@
 #include <assert.h>
 
 /* include the info from this barebox release */
-#include "include/linux/utsrelease.h"
+#include "include/generated/utsrelease.h"
 #include "arch/x86/include/asm/barebox.lds.h"
 
 /** define to disable integrity tests and debug messages */
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
