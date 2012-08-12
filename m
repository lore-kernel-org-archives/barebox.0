Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T0Z4N-0003Sm-Bb
 for barebox@lists.infradead.org; Sun, 12 Aug 2012 14:23:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 12 Aug 2012 16:22:40 +0200
Message-Id: <1344781367-13547-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1344781367-13547-1-git-send-email-s.hauer@pengutronix.de>
References: <1344781367-13547-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/8] Makefile: generate a barebox-flash-image link
To: barebox@lists.infradead.org

Depending on the SoC a barebox.bin, barebox.netx, barebox.s5p, MLO image
is generated. With pbl support there now is an additional
arch/arm/pbl/zbarebox.bin image.

To help the user to determine which image should be flashed to his device,
generate a barebox-flash-image link.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile               |   15 +++++++--------
 arch/arm/Makefile      |    2 --
 arch/blackfin/Makefile |    2 +-
 arch/mips/Makefile     |    2 --
 arch/x86/Makefile      |    5 -----
 5 files changed, 8 insertions(+), 18 deletions(-)

diff --git a/Makefile b/Makefile
index 06a94c3..a084db3 100644
--- a/Makefile
+++ b/Makefile
@@ -437,12 +437,6 @@ else
 include/config/auto.conf: ;
 endif # $(dot-config)
 
-# The all: target is the default when no target is given on the
-# command line.
-# This allow a user to issue only 'make' to build a kernel
-# Defaults barebox but it is usually overridden in the arch makefile
-all: barebox.bin
-
 include $(srctree)/arch/$(ARCH)/Makefile
 
 ifdef CONFIG_DEBUG_INFO
@@ -473,7 +467,12 @@ CFLAGS += $(call cc-option,-Wno-pointer-sign,)
 # set in the environment
 # Also any assignments in arch/$(ARCH)/Makefile take precedence over
 # this default value
-export KBUILD_IMAGE ?= barebox
+export KBUILD_IMAGE ?= barebox.bin
+
+barebox-flash-image: $(KBUILD_IMAGE)
+	$(call if_changed,ln)
+
+all: barebox-flash-image
 
 common-$(CONFIG_PBL_IMAGE)	+= pbl/
 
@@ -1009,7 +1008,7 @@ CLEAN_DIRS  += $(MODVERDIR)
 CLEAN_FILES +=	barebox System.map include/generated/barebox_default_env.h \
                 .tmp_version .tmp_barebox* barebox.bin barebox.map barebox.S \
 		.tmp_kallsyms* barebox_default_env* barebox.ldr \
-		scripts/bareboxenv-target \
+		scripts/bareboxenv-target barebox-flash-image \
 		Doxyfile.version barebox.srec barebox.s5p
 
 # Directories & files removed with 'make mrproper'
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index be4ef30..1362b31 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -208,8 +208,6 @@ zbarebox.S zbarebox.bin zbarebox: barebox.bin
 archclean:
 	$(MAKE) $(clean)=$(pbl)
 
-all: $(KBUILD_IMAGE)
-
 archprepare: maketools
 maketools:
 	$(Q)$(MAKE) $(build)=arch/arm/tools include/generated/mach-types.h
diff --git a/arch/blackfin/Makefile b/arch/blackfin/Makefile
index a0b87f7..381c6a9 100644
--- a/arch/blackfin/Makefile
+++ b/arch/blackfin/Makefile
@@ -13,7 +13,7 @@ CFLAGS += -D__blackfin__
 KALLSYMS         += --symbol-prefix=_
 
 ifndef CONFIG_BFIN_BOOT_BYPASS
-all: barebox.ldr
+KBUILD_IMAGE := barebox.ldr
 endif
 
 archprepare: maketools
diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 6b7dae9..5e40de7 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -82,8 +82,6 @@ incdir-y := $(machine-y)
 endif
 INCDIR   := arch-$(incdir-y)
 
-all: $(KBUILD_IMAGE)
-
 ifneq ($(board-y),)
 BOARD := arch/mips/boards/$(board-y)/
 else
diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index db4180b..518b37f 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -14,11 +14,6 @@ CPPFLAGS += -fdata-sections -ffunction-sections
 LDFLAGS_uboot += -static --gc-sections
 endif
 
-all: $(KBUILD_IMAGE)
-
-
-
-
 machdirs := $(patsubst %,arch/x86/mach-%/,$(machine-y))
 
 ifeq ($(KBUILD_SRC),)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
