Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x241.google.com ([2607:f8b0:400e:c05::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cr2jD-0005EO-Mt
 for barebox@lists.infradead.org; Thu, 23 Mar 2017 13:24:39 +0000
Received: by mail-pg0-x241.google.com with SMTP id 81so28193502pgh.3
 for <barebox@lists.infradead.org>; Thu, 23 Mar 2017 06:24:15 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Mar 2017 06:23:45 -0700
Message-Id: <20170323132358.8539-2-andrew.smirnov@gmail.com>
In-Reply-To: <20170323132358.8539-1-andrew.smirnov@gmail.com>
References: <20170323132358.8539-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 01/14] at91sam9x5ek: Convert to mult-image build
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Convert AT91SAM9X5-EK board code to multi-image build process, similar
to how majority of i.MX board code is built.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/Kconfig                        |  1 -
 arch/arm/boards/at91sam9x5ek/Makefile   |  1 +
 arch/arm/boards/at91sam9x5ek/lowlevel.c | 16 +++++++++++++
 arch/arm/configs/at91sam9x5ek_defconfig |  4 +++-
 arch/arm/mach-at91/Kconfig              | 40 +++++++++++++++++++--------------
 images/Makefile                         |  1 +
 images/Makefile.at91                    |  7 ++++++
 7 files changed, 51 insertions(+), 19 deletions(-)
 create mode 100644 arch/arm/boards/at91sam9x5ek/lowlevel.c
 create mode 100644 images/Makefile.at91

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index e9d96b7..2b9aa60 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -52,7 +52,6 @@ config ARCH_AT91
 	select GPIOLIB
 	select CLKDEV_LOOKUP
 	select HAS_DEBUG_LL
-	select HAVE_MACH_ARM_HEAD
 	select HAVE_CLK
 	select PINCTRL_AT91
 	select COMMON_CLK_AT91 if COMMON_CLK_OF_PROVIDER
diff --git a/arch/arm/boards/at91sam9x5ek/Makefile b/arch/arm/boards/at91sam9x5ek/Makefile
index 559df8f..4939b7e 100644
--- a/arch/arm/boards/at91sam9x5ek/Makefile
+++ b/arch/arm/boards/at91sam9x5ek/Makefile
@@ -1,3 +1,4 @@
 obj-y += init.o
 obj-y += hw_version.o
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-at91sam9x5ek
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/at91sam9x5ek/lowlevel.c b/arch/arm/boards/at91sam9x5ek/lowlevel.c
new file mode 100644
index 0000000..9b5c926
--- /dev/null
+++ b/arch/arm/boards/at91sam9x5ek/lowlevel.c
@@ -0,0 +1,16 @@
+#include <common.h>
+#include <linux/sizes.h>
+#include <mach/at91sam9_ddrsdr.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <io.h>
+#include <debug_ll.h>
+
+
+ENTRY_FUNCTION(start_at91sam9x5ek, r0, r1, r2)
+{
+	arm_cpu_lowlevel_init();
+	arm_setup_stack(AT91SAM9X5_SRAM_BASE + AT91SAM9X5_SRAM_SIZE - 16);
+
+	barebox_arm_entry(AT91_CHIPSELECT_1, at91sam9x5_get_ddram_size(), NULL);
+}
diff --git a/arch/arm/configs/at91sam9x5ek_defconfig b/arch/arm/configs/at91sam9x5ek_defconfig
index 6ee0052..76ee3d9 100644
--- a/arch/arm/configs/at91sam9x5ek_defconfig
+++ b/arch/arm/configs/at91sam9x5ek_defconfig
@@ -1,12 +1,14 @@
 CONFIG_ARCH_AT91SAM9X5=y
+CONFIG_AT91_MULTI_BOARDS=y
+CONFIG_MACH_AT91SAM9X5EK=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0xa00000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
+CONFIG_RELOCATABLE=y
 CONFIG_PROMPT="9G20-EK:"
 CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 4ac69fc..67238f8 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -160,18 +160,22 @@ config ARCH_AT91SAM9261
 config ARCH_AT91SAM9263
 	bool "AT91SAM9263"
 	select SOC_AT91SAM9263
+	select HAVE_MACH_ARM_HEAD
 
 config ARCH_AT91SAM9G10
 	bool "AT91SAM9G10"
 	select SOC_AT91SAM9261
+	select HAVE_MACH_ARM_HEAD
 
 config ARCH_AT91SAM9G20
 	bool "AT91SAM9G20"
 	select SOC_AT91SAM9260
+	select HAVE_MACH_ARM_HEAD
 
 config ARCH_AT91SAM9G45
 	bool "AT91SAM9G45 or AT91SAM9M10"
 	select SOC_AT91SAM9G45
+	select HAVE_MACH_ARM_HEAD
 
 config ARCH_AT91SAM9X5
 	bool "AT91SAM9X5"
@@ -180,6 +184,7 @@ config ARCH_AT91SAM9X5
 config ARCH_AT91SAM9N12
 	bool "AT91SAM9N12"
 	select SOC_AT91SAM9N12
+	select HAVE_MACH_ARM_HEAD
 
 config ARCH_SAMA5D3
 	bool "SAMA5D3x"
@@ -187,6 +192,7 @@ config ARCH_SAMA5D3
 	select HAVE_AT91_DBGU1
 	select HAS_MACB
 	select AT91SAM9G45_RESET
+	select HAVE_MACH_ARM_HEAD
 
 config ARCH_SAMA5D4
 	bool "SAMA5D4"
@@ -194,6 +200,7 @@ config ARCH_SAMA5D4
 	select HAVE_AT91_DBGU2
 	select HAS_MACB
 	select AT91SAM9G45_RESET
+	select HAVE_MACH_ARM_HEAD
 
 endchoice
 
@@ -449,23 +456,6 @@ endif
 
 # ----------------------------------------------------------
 
-if ARCH_AT91SAM9X5
-
-choice
-	prompt "AT91SAM9x5 Series Board Type"
-
-config MACH_AT91SAM9X5EK
-	bool "Atmel AT91SAM9x5 Series Evaluation Kit"
-	help
-	  Select this if you re using Atmel's AT91SAM9x5-EK Evaluation Kit.
-	  Supported chips are sam9g15, sam9g25, sam9x25, sam9g35 and sam9x35.
-
-endchoice
-
-endif
-
-# ----------------------------------------------------------
-
 if ARCH_AT91SAM9N12
 
 choice
@@ -524,6 +514,22 @@ endif
 
 # ----------------------------------------------------------
 
+
+config AT91_MULTI_BOARDS
+	bool "Allow multiple boards to be selected"
+	select HAVE_PBL_MULTI_IMAGES
+
+if AT91_MULTI_BOARDS
+
+config MACH_AT91SAM9X5EK
+	bool "Atmel AT91SAM9x5 Series Evaluation Kit"
+	depends on ARCH_AT91SAM9X5
+	help
+	  Select this if you re using Atmel's AT91SAM9x5-EK Evaluation Kit.
+	  Supported chips are sam9g15, sam9g25, sam9x25, sam9g35 and sam9x35.
+
+endif
+
 comment "AT91 Board Options"
 
 config MTD_AT91_DATAFLASH_CARD
diff --git a/images/Makefile b/images/Makefile
index 0537af1..2e84ba7 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -110,6 +110,7 @@ include $(srctree)/images/Makefile.omap3
 include $(srctree)/images/Makefile.rockchip
 include $(srctree)/images/Makefile.socfpga
 include $(srctree)/images/Makefile.tegra
+include $(srctree)/images/Makefile.at91
 
 targets += $(image-y) pbl.lds barebox.x barebox.z
 targets += $(patsubst %,%.pblx,$(pblx-y))
diff --git a/images/Makefile.at91 b/images/Makefile.at91
new file mode 100644
index 0000000..686d501
--- /dev/null
+++ b/images/Makefile.at91
@@ -0,0 +1,7 @@
+#
+# barebox image generation Makefile for AT91 images
+#
+
+pblx-$(MACH_AT91SAM9X5EK) += start_at91sam9x5ek
+FILE_barebox-at91sam9x5ek.img = start_at91sam9x5ek.pblx
+image-$(MACH_AT91SAM9X5EK) += barebox-at91sam9x5ek.img
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
