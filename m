Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo4.mail-out.ovh.net ([188.165.44.50]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U21Ea-0000Z3-DN
 for barebox@lists.infradead.org; Sun, 03 Feb 2013 15:12:16 +0000
Received: from mail403.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id E8D5A104EA80
 for <barebox@lists.infradead.org>; Sun,  3 Feb 2013 16:22:00 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  3 Feb 2013 16:10:11 +0100
Message-Id: <1359904236-11622-11-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 11/36] ARM ep93xx boards: switch to barebox_arm_entry
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

This architecture is a bit strange. It has up to four SDRAM banks, but
all have a quite limited size. The SDRAM size for the different boards
currently is unknown as it's configurable with Kconfig. We use a SDRAM
size based on the value of the only board we have in the defconfigs:
edb9301. This likely breaks other ep93xx boards.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                     |    2 ++
 arch/arm/boards/edb93xx/sdram_cfg.c  |    4 ++++
 arch/arm/mach-ep93xx/Kconfig         |    8 --------
 arch/arm/mach-ep93xx/Makefile        |    4 ++--
 arch/arm/mach-ep93xx/lowlevel_init.S |   11 ++++++++++-
 5 files changed, 18 insertions(+), 11 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index dd8f01e..7b0e59a 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -49,6 +49,8 @@ config ARCH_EP93XX
 	bool "Cirrus Logic EP93xx"
 	select CPU_ARM920T
 	select GENERIC_GPIO
+	select MACH_HAS_LOWLEVEL_INIT
+	select MACH_DO_LOWLEVEL_INIT
 
 config ARCH_IMX
 	bool "Freescale iMX-based"
diff --git a/arch/arm/boards/edb93xx/sdram_cfg.c b/arch/arm/boards/edb93xx/sdram_cfg.c
index 9442129..5c2a537 100644
--- a/arch/arm/boards/edb93xx/sdram_cfg.c
+++ b/arch/arm/boards/edb93xx/sdram_cfg.c
@@ -36,6 +36,10 @@ static void program_mode_registers(void);
 void sdram_cfg(void)
 {
 	struct sdram_regs *sdram = (struct sdram_regs *)SDRAM_BASE;
+	unsigned long pc = get_pc();
+
+	if (pc < CONFIG_EP93XX_SDRAM_BANK3_BASE + CONFIG_EP93XX_SDRAM_BANK3_SIZE)
+		return;
 
 	writel(SDRAM_DEVCFG_VAL, &sdram->SDRAM_DEVCFG_REG);
 
diff --git a/arch/arm/mach-ep93xx/Kconfig b/arch/arm/mach-ep93xx/Kconfig
index ed6e986..90859d5 100644
--- a/arch/arm/mach-ep93xx/Kconfig
+++ b/arch/arm/mach-ep93xx/Kconfig
@@ -38,7 +38,6 @@ choice
 config MACH_EDB9301
 	bool "Cirrus Logic EDB9301"
 	select EP93XX_SDCE3_SYNC_PHYS_OFFSET
-	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say y here if you are using Cirrus Logic's EDB9301 Evaluation board
 
@@ -103,14 +102,12 @@ choice
 config MACH_EDB9302
 	bool "Cirrus Logic EDB9302"
 	select EP93XX_SDCE3_SYNC_PHYS_OFFSET
-	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say y here if you are using Cirrus Logic's EDB9302 Evaluation board
 
 config MACH_EDB9302A
 	bool "Cirrus Logic EDB9302A"
 	select EP93XX_SDCE0_PHYS_OFFSET
-	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say y here if you are using Cirrus Logic's EDB9302A Evaluation board
 
@@ -222,14 +219,12 @@ choice
 config MACH_EDB9307
 	bool "Cirrus Logic EDB9307"
 	select EP93XX_SDCE3_SYNC_PHYS_OFFSET
-	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say y here if you are using Cirrus Logic's EDB9307 Evaluation board
 
 config MACH_EDB9307A
 	bool "Cirrus Logic EDB9307A"
 	select EP93XX_SDCE0_PHYS_OFFSET
-	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say y here if you are using Cirrus Logic's EDB9307A Evaluation board
 
@@ -309,7 +304,6 @@ choice
 config MACH_EDB9312
 	bool "Cirrus Logic EDB9312"
 	select EP93XX_SDCE3_SYNC_PHYS_OFFSET
-	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say y here if you are using Cirrus Logic's EDB9312 Evaluation board
 
@@ -358,14 +352,12 @@ choice
 config MACH_EDB9315
 	bool "Cirrus Logic EDB9315"
 	select EP93XX_SDCE3_SYNC_PHYS_OFFSET
-	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say y here if you are using Cirrus Logic's EDB9315 Evaluation board
 
 config MACH_EDB9315A
 	bool "Cirrus Logic EDB9315A"
 	select EP93XX_SDCE0_PHYS_OFFSET
-	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say y here if you are using Cirrus Logic's EDB9315A Evaluation board
 
diff --git a/arch/arm/mach-ep93xx/Makefile b/arch/arm/mach-ep93xx/Makefile
index 5615394..0ff0b66 100644
--- a/arch/arm/mach-ep93xx/Makefile
+++ b/arch/arm/mach-ep93xx/Makefile
@@ -1,4 +1,4 @@
 obj-y += clocksource.o gpio.o led.o header.o
 
-obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel_init.o
-pbl-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel_init.o led.o
+obj-y += lowlevel_init.o
+pbl-y += lowlevel_init.o led.o
diff --git a/arch/arm/mach-ep93xx/lowlevel_init.S b/arch/arm/mach-ep93xx/lowlevel_init.S
index 6de53dd..154d38d 100644
--- a/arch/arm/mach-ep93xx/lowlevel_init.S
+++ b/arch/arm/mach-ep93xx/lowlevel_init.S
@@ -20,6 +20,7 @@
  *
  */
 
+#include <sizes.h>
 #include <mach/ep93xx-regs.h>
 #include <asm/barebox-arm-head.h>
 
@@ -52,4 +53,12 @@ reset:
 	orr r0, r0, #0xc0000000
 	mcr p15, 0, r0, c1, c0, 0
 
-	b board_init_lowlevel_return
+	/*
+	 * FIXME: This is suitable for the edb9301, the
+	 * only ep93xx board we have in our defconfigs.
+	 * Other boards need different values here.
+	 */
+	mov	r0, #0x05000000
+	mov	r1, #SZ_8M
+	mov	r2, #0
+	b	barebox_arm_entry
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
