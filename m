Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo4.mail-out.ovh.net ([178.33.104.253]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U21EZ-0000Yx-Kn
 for barebox@lists.infradead.org; Sun, 03 Feb 2013 15:12:08 +0000
Received: from mail403.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id BC660104EA4C
 for <barebox@lists.infradead.org>; Sun,  3 Feb 2013 16:22:00 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  3 Feb 2013 16:10:09 +0100
Message-Id: <1359904236-11622-9-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359904236-11622-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130203150333.GE18068@game.jcrosoft.org>
 <1359904236-11622-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 09/36] ARM Samsung boards: switch to barebox_arm_entry
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

All Samsung boards automatically detect their SDRAM size. The size detection
code can't be called safely from lowlevel C code, so instead the minimum SDRAM
size is guessed from the defconfig files.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                                     |    6 ++++++
 arch/arm/boards/a9m2410/lowlevel_init.S              |    9 +++++++--
 arch/arm/boards/a9m2440/lowlevel_init.S              |    9 +++++++--
 arch/arm/boards/friendlyarm-mini2440/lowlevel_init.S |    9 +++++++--
 arch/arm/boards/friendlyarm-mini6410/Makefile        |    2 ++
 arch/arm/boards/friendlyarm-mini6410/lowlevel.c      |   11 +++++++++++
 arch/arm/boards/friendlyarm-tiny210/lowlevel.c       |    4 +++-
 arch/arm/boards/friendlyarm-tiny6410/Makefile        |    3 ++-
 arch/arm/boards/friendlyarm-tiny6410/lowlevel.c      |   11 +++++++++++
 arch/arm/mach-samsung/Kconfig                        |    6 ------
 10 files changed, 56 insertions(+), 14 deletions(-)
 create mode 100644 arch/arm/boards/friendlyarm-mini6410/lowlevel.c
 create mode 100644 arch/arm/boards/friendlyarm-tiny6410/lowlevel.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 96ee516..1e509a4 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -94,18 +94,24 @@ config ARCH_S3C24xx
 	select ARCH_SAMSUNG
 	select CPU_ARM920T
 	select GENERIC_GPIO
+	select MACH_HAS_LOWLEVEL_INIT
+	select MACH_DO_LOWLEVEL_INIT
 
 config ARCH_S5PCxx
 	bool "Samsung S5PC110, S5PV210"
 	select ARCH_SAMSUNG
 	select CPU_V7
 	select GENERIC_GPIO
+	select MACH_HAS_LOWLEVEL_INIT
+	select MACH_DO_LOWLEVEL_INIT
 
 config ARCH_S3C64xx
 	bool "Samsung S3C64xx"
 	select ARCH_SAMSUNG
 	select CPU_V6
 	select GENERIC_GPIO
+	select MACH_HAS_LOWLEVEL_INIT
+	select MACH_DO_LOWLEVEL_INIT
 
 config ARCH_VERSATILE
 	bool "ARM Versatile boards (ARM926EJ-S)"
diff --git a/arch/arm/boards/a9m2410/lowlevel_init.S b/arch/arm/boards/a9m2410/lowlevel_init.S
index 502ecdd..178e73a 100644
--- a/arch/arm/boards/a9m2410/lowlevel_init.S
+++ b/arch/arm/boards/a9m2410/lowlevel_init.S
@@ -3,6 +3,7 @@
  */
 
 #include <config.h>
+#include <sizes.h>
 #include <mach/s3c-iomap.h>
 #include <asm/barebox-arm-head.h>
 
@@ -21,7 +22,7 @@ reset:
 	cmp pc, #S3C_SDRAM_END
 	bhs 1f
 
-	b board_init_lowlevel_return
+	b out
 
 /* we are running from NOR or NAND/SRAM memory. Do further initialisation */
 1:
@@ -33,4 +34,8 @@ reset:
 /* up to here we are running from the internal SRAM area */
 	bl s3c24x0_nand_boot
 #endif
-	b board_init_lowlevel_return
+out:
+	mov r0, #S3C_SDRAM_BASE
+	mov r1, #SZ_32M
+	mov r2, #0
+	b barebox_arm_entry
diff --git a/arch/arm/boards/a9m2440/lowlevel_init.S b/arch/arm/boards/a9m2440/lowlevel_init.S
index 8f6cfcb..bd51717 100644
--- a/arch/arm/boards/a9m2440/lowlevel_init.S
+++ b/arch/arm/boards/a9m2440/lowlevel_init.S
@@ -3,6 +3,7 @@
  */
 
 #include <config.h>
+#include <sizes.h>
 #include <mach/s3c-iomap.h>
 #include <mach/s3c24xx-gpio.h>
 #include <asm/barebox-arm-head.h>
@@ -225,7 +226,7 @@ reset:
 	cmp pc, #S3C_SDRAM_END
 	bhs 1f
 
-	b board_init_lowlevel_return
+	b out
 
 /* we are running from NOR or NAND/SRAM memory. Do further initialisation */
 1:
@@ -237,4 +238,8 @@ reset:
 /* up to here we are running from the internal SRAM area */
 	bl s3c24x0_nand_boot
 #endif
-	b board_init_lowlevel_return
+out:
+	mov r0, #S3C_SDRAM_BASE
+	mov r1, #SZ_32M
+	mov r2, #0
+	b barebox_arm_entry
diff --git a/arch/arm/boards/friendlyarm-mini2440/lowlevel_init.S b/arch/arm/boards/friendlyarm-mini2440/lowlevel_init.S
index 5c06b1c..a6e06ed 100644
--- a/arch/arm/boards/friendlyarm-mini2440/lowlevel_init.S
+++ b/arch/arm/boards/friendlyarm-mini2440/lowlevel_init.S
@@ -3,6 +3,7 @@
  */
 
 #include <config.h>
+#include <sizes.h>
 #include <mach/s3c-iomap.h>
 #include <asm/barebox-arm-head.h>
 
@@ -22,7 +23,7 @@ reset:
 	cmp pc, #S3C_SDRAM_END
 	bhs 1f
 
-	b board_init_lowlevel_return
+	b out
 
 /* we are running from NOR or NAND/SRAM memory. Do further initialisation */
 1:
@@ -34,4 +35,8 @@ reset:
 /* up to here we are running from the internal SRAM area */
 	bl s3c24x0_nand_boot
 #endif
-	b board_init_lowlevel_return
+out:
+	mov r0, #S3C_SDRAM_BASE
+	mov r1, #SZ_32M
+	mov r2, #0
+	b barebox_arm_entry
diff --git a/arch/arm/boards/friendlyarm-mini6410/Makefile b/arch/arm/boards/friendlyarm-mini6410/Makefile
index cd7a427..d5fa853 100644
--- a/arch/arm/boards/friendlyarm-mini6410/Makefile
+++ b/arch/arm/boards/friendlyarm-mini6410/Makefile
@@ -1 +1,3 @@
 obj-y += mini6410.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/friendlyarm-mini6410/lowlevel.c b/arch/arm/boards/friendlyarm-mini6410/lowlevel.c
new file mode 100644
index 0000000..61ed757
--- /dev/null
+++ b/arch/arm/boards/friendlyarm-mini6410/lowlevel.c
@@ -0,0 +1,11 @@
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+#include <mach/s3c-iomap.h>
+
+void __naked reset(void)
+{
+	common_reset();
+	barebox_arm_entry(S3C_SDRAM_BASE, SZ_128M, 0);
+}
diff --git a/arch/arm/boards/friendlyarm-tiny210/lowlevel.c b/arch/arm/boards/friendlyarm-tiny210/lowlevel.c
index 695f97d..5d9582e 100644
--- a/arch/arm/boards/friendlyarm-tiny210/lowlevel.c
+++ b/arch/arm/boards/friendlyarm-tiny210/lowlevel.c
@@ -23,6 +23,7 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
+#include <sizes.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/sections.h>
@@ -61,7 +62,8 @@ void __bare_init reset(void)
 #endif
 
 	if (get_pc() < 0xD0000000) /* Are we running from iRAM? */
-		board_init_lowlevel_return(); /* No, we don't. */
+		/* No, we don't. */
+		barebox_arm_entry(S3C_SDRAM_BASE, SZ_64M, 0);
 
 	s5p_init_dram_bank_ddr2(S5P_DMC0_BASE, 0x20E00323, 0, 0);
 
diff --git a/arch/arm/boards/friendlyarm-tiny6410/Makefile b/arch/arm/boards/friendlyarm-tiny6410/Makefile
index b3ab12e..eb0e0ed 100644
--- a/arch/arm/boards/friendlyarm-tiny6410/Makefile
+++ b/arch/arm/boards/friendlyarm-tiny6410/Makefile
@@ -1,3 +1,4 @@
 obj-y += tiny6410.o
-
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
 obj-$(CONFIG_MACH_TINY6410_FA) += development-board.o
diff --git a/arch/arm/boards/friendlyarm-tiny6410/lowlevel.c b/arch/arm/boards/friendlyarm-tiny6410/lowlevel.c
new file mode 100644
index 0000000..61ed757
--- /dev/null
+++ b/arch/arm/boards/friendlyarm-tiny6410/lowlevel.c
@@ -0,0 +1,11 @@
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+#include <mach/s3c-iomap.h>
+
+void __naked reset(void)
+{
+	common_reset();
+	barebox_arm_entry(S3C_SDRAM_BASE, SZ_128M, 0);
+}
diff --git a/arch/arm/mach-samsung/Kconfig b/arch/arm/mach-samsung/Kconfig
index 80575cb..a4dc301 100644
--- a/arch/arm/mach-samsung/Kconfig
+++ b/arch/arm/mach-samsung/Kconfig
@@ -40,7 +40,6 @@ choice
 config MACH_A9M2410
 	bool "Digi A9M2410"
 	select CPU_S3C2410
-	select MACH_HAS_LOWLEVEL_INIT
 	select S3C_PLL_INIT
 	select S3C_SDRAM_INIT
 	help
@@ -50,7 +49,6 @@ config MACH_A9M2410
 config MACH_A9M2440
 	bool "Digi A9M2440"
 	select CPU_S3C2440
-	select MACH_HAS_LOWLEVEL_INIT
 	select S3C_PLL_INIT
 	help
 	  Say Y here if you are using Digi's Connect Core 9M equipped
@@ -59,8 +57,6 @@ config MACH_A9M2440
 config MACH_MINI2440
 	bool "Mini 2440"
 	select CPU_S3C2440
-	select MACH_HAS_LOWLEVEL_INIT
-	select MACH_DO_LOWLEVEL_INIT
 	select S3C_PLL_INIT
 	select S3C_SDRAM_INIT
 	select HAS_DM9000
@@ -138,8 +134,6 @@ choice
 config MACH_TINY210
 	bool "Tiny 210"
 	select CPU_S5PV210
-	select MACH_HAS_LOWLEVEL_INIT
-	select MACH_DO_LOWLEVEL_INIT
 	select S3C_SDRAM_INIT
 
 endchoice
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
