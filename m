Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 70.mail-out.ovh.net ([91.121.185.63])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OwSlf-00035G-Py
	for barebox@lists.infradead.org; Fri, 17 Sep 2010 04:41:49 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 17 Sep 2010 06:40:33 +0200
Message-Id: <1284698436-1097-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/5] move version.h to include/generated/ instead of
	include/linux
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 .gitignore |    1 -
 Makefile   |    8 ++++----
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/.gitignore b/.gitignore
index 7c60cc2..2179251 100644
--- a/.gitignore
+++ b/.gitignore
@@ -46,7 +46,6 @@ include/asm
 include/asm-*/asm-offsets.h
 include/config
 include/linux/compile.h
-include/linux/version.h
 include/linux/utsrelease.h
 include/generated
 
diff --git a/Makefile b/Makefile
index 62053c8..838d6ed 100644
--- a/Makefile
+++ b/Makefile
@@ -349,7 +349,7 @@ endif
 
 no-dot-config-targets := clean mrproper distclean \
 			 cscope TAGS tags help %docs check% \
-			 include/linux/version.h headers_% \
+			 include/generated/version.h headers_% \
 			 kernelrelease kernelversion
 
 config-targets := 0
@@ -796,7 +796,7 @@ endif
 # prepare2 creates a makefile if using a separate output directory
 prepare2: prepare3 outputmakefile
 
-prepare1: prepare2 include/linux/version.h include/linux/utsrelease.h \
+prepare1: prepare2 include/generated/version.h include/linux/utsrelease.h \
                    include/asm include/config.h include/config/auto.conf
 
 ifneq ($(KBUILD_MODULES),)
@@ -879,7 +879,7 @@ define filechk_version.h
 	echo '#define KERNEL_VERSION(a,b,c) (((a) << 16) + ((b) << 8) + (c))';)
 endef
 
-include/linux/version.h: $(srctree)/Makefile FORCE
+include/generated/version.h: $(srctree)/Makefile FORCE
 	$(call filechk,version.h)
 
 include/linux/utsrelease.h: include/config/kernel.release FORCE
@@ -978,7 +978,7 @@ CLEAN_FILES +=	barebox System.map include/barebox_default_env.h \
 # Directories & files removed with 'make mrproper'
 MRPROPER_DIRS  += include/config include2 usr/include
 MRPROPER_FILES += .config .config.old include/asm .version .old_version \
-                  include/generated/autoconf.h include/linux/version.h      \
+                  include/generated/autoconf.h include/generated/version.h      \
                   include/linux/utsrelease.h include/config.h           \
 		  Module.symvers tags TAGS cscope*
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
