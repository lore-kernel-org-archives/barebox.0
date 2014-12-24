Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y3dS7-0000uL-BA
 for barebox@lists.infradead.org; Wed, 24 Dec 2014 04:21:40 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile14) with ESMTP id
 sBO4L9xm022731
 for <barebox@lists.infradead.org>; Wed, 24 Dec 2014 13:21:09 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili13) with ESMTP id sBO4L9J07370
 for <barebox@lists.infradead.org>; Wed, 24 Dec 2014 13:21:09 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Wed, 24 Dec 2014 13:21:02 +0900
Message-Id: <1419394862-31457-4-git-send-email-yamada.m@jp.panasonic.com>
In-Reply-To: <1419394862-31457-1-git-send-email-yamada.m@jp.panasonic.com>
References: <1419394862-31457-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH 3/3] kbuild: do not create include2 directory
To: barebox@lists.infradead.org

include/asm-$(SRCARCH) does not exist.  Creating include2
directory is meaningless.

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 Makefile | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/Makefile b/Makefile
index 2978439..5676b29 100644
--- a/Makefile
+++ b/Makefile
@@ -291,7 +291,7 @@ export MODVERDIR := $(if $(KBUILD_EXTMOD),$(firstword $(KBUILD_EXTMOD))/).tmp_ve
 # Use LINUXINCLUDE when you must reference the include/ directory.
 # Needed to be compatible with the O= option
 LINUXINCLUDE    := -Iinclude -I$(srctree)/dts/include \
-                   $(if $(KBUILD_SRC),-Iinclude2 -I$(srctree)/include) \
+                   $(if $(KBUILD_SRC), -I$(srctree)/include) \
 		   -I$(srctree)/arch/$(ARCH)/include \
 		   -I$(objtree)/arch/$(ARCH)/include \
                    -include $(srctree)/include/linux/kconfig.h
@@ -789,7 +789,6 @@ PHONY += prepare-all
 # prepare3 is used to check if we are building in a separate output directory,
 # and if so do:
 # 1) Check that make has not been executed in the kernel src $(srctree)
-# 2) Create the include2 directory, used for the second asm symlink
 prepare3: include/config/kernel.release
 ifneq ($(KBUILD_SRC),)
 	@echo '  Using $(srctree) as source for kernel'
@@ -798,10 +797,6 @@ ifneq ($(KBUILD_SRC),)
 		echo "  in the '$(srctree)' directory.";\
 		false; \
 	fi;
-	$(Q)if [ ! -d include2 ]; then mkdir -p include2; fi;
-	$(Q)if [ -e $(srctree)/include/asm-$(SRCARCH)/barebox.h ]; then  \
-	    ln -fsn $(srctree)/include/asm-$(SRCARCH) include2/asm;     \
-	    fi
 endif
 
 # prepare2 creates a makefile if using a separate output directory
@@ -964,7 +959,7 @@ CLEAN_FILES +=	barebox System.map include/generated/barebox_default_env.h \
 		barebox.efi barebox.canon-a1100.bin
 
 # Directories & files removed with 'make mrproper'
-MRPROPER_DIRS  += include/config include2 usr/include
+MRPROPER_DIRS  += include/config usr/include
 MRPROPER_FILES += .config .config.old include/asm .version .old_version \
                   include/generated/autoconf.h include/generated/version.h      \
                   include/generated/utsrelease.h include/config.h           \
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
