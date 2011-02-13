Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PocfC-0001Je-NV
	for barebox@lists.infradead.org; Sun, 13 Feb 2011 14:11:00 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sun, 13 Feb 2011 15:10:50 +0100
Message-Id: <1297606252-802-14-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1297606252-802-1-git-send-email-jbe@pengutronix.de>
References: <1297606252-802-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 13/15] mini2440: Add booting from NAND support
To: barebox@lists.infradead.org
Cc: Juergen Beisert <juergen@kreuzholzen.de>

From: Juergen Beisert <juergen@kreuzholzen.de>

With this patch barebox can now be booted from RAM, NOR and NAND on the
mini2440 platform. 'CONFIG_S3C24XX_NAND_BOOT' must still be 'y' to be able to
boot from NAND.

Signed-off-by: Juergen Beisert <juergen@kreuzholzen.de>
---
 arch/arm/boards/mini2440/Makefile        |    2 +-
 arch/arm/boards/mini2440/lowlevel_init.S |   39 ++++++++++++++++++++++++++++++
 arch/arm/mach-s3c24xx/Kconfig            |    4 +++
 3 files changed, 44 insertions(+), 1 deletions(-)
 create mode 100644 arch/arm/boards/mini2440/lowlevel_init.S

diff --git a/arch/arm/boards/mini2440/Makefile b/arch/arm/boards/mini2440/Makefile
index 09f7e7d..856fed0 100644
--- a/arch/arm/boards/mini2440/Makefile
+++ b/arch/arm/boards/mini2440/Makefile
@@ -1,2 +1,2 @@
 
-obj-y += mini2440.o
+obj-y += mini2440.o lowlevel_init.o
diff --git a/arch/arm/boards/mini2440/lowlevel_init.S b/arch/arm/boards/mini2440/lowlevel_init.S
new file mode 100644
index 0000000..41f50cb
--- /dev/null
+++ b/arch/arm/boards/mini2440/lowlevel_init.S
@@ -0,0 +1,39 @@
+/*
+ * Low level initialization for the FriendlyARM mini2440 board
+ */
+
+#include <config.h>
+#include <mach/s3c24x0-iomap.h>
+
+	.section ".text_bare_init.board_init_lowlevel","ax"
+
+/* ------------------------------------------------------------------------ */
+
+.globl board_init_lowlevel
+board_init_lowlevel:
+
+	mov r10, lr		/* save the link register */
+
+	bl s3c24x0_disable_wd
+
+	/* skip everything here if we are already running from SDRAM */
+	cmp pc, #S3C24X0_SDRAM_BASE
+	blo 1f
+	cmp pc, #S3C24X0_SDRAM_END
+	bhs 1f
+
+	mov pc, r10
+
+/* we are running from NOR or NAND/SRAM memory. Do further initialisation */
+1:
+	bl s3c24x0_pll_init
+
+	bl s3c24x0_sdram_init
+
+#ifdef CONFIG_S3C24XX_NAND_BOOT
+	mov lr, r10		/* restore the link register */
+/* up to here we are running from the internal SRAM area */
+	b s3c24x0_nand_boot	/* does return directly to our caller into SDRAM */
+#else
+	mov pc, r10
+#endif
diff --git a/arch/arm/mach-s3c24xx/Kconfig b/arch/arm/mach-s3c24xx/Kconfig
index 8b86d2d..33d230c 100644
--- a/arch/arm/mach-s3c24xx/Kconfig
+++ b/arch/arm/mach-s3c24xx/Kconfig
@@ -41,6 +41,10 @@ config MACH_A9M2440
 config MACH_MINI2440
 	bool "Mini 2440"
 	select CPU_S3C2440
+	select MACH_HAS_LOWLEVEL_INIT
+	select MACH_DO_LOWLEVEL_INIT
+	select S3C24XX_PLL_INIT
+	select S3C24XX_SDRAM_INIT
 	select HAS_DM9000
 	help
 	  Say Y here if you are using Mini 2440 dev board equipped
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
