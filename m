Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6jbc-0002C9-67
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 13:14:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Apr 2011 15:14:01 +0200
Message-Id: <1301922843-12118-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1301922843-12118-1-git-send-email-s.hauer@pengutronix.de>
References: <1301922843-12118-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/9] omap: rename GPMC Kconfig entry to OMAP_GPMC
To: barebox@lists.infradead.org

Give this omap specific entry an omap namespace. Also, remove
unnecessary dependency to omap2/3 in nand Kconfig.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/Kconfig  |    2 +-
 arch/arm/mach-omap/Makefile |    2 +-
 drivers/mtd/nand/Kconfig    |    2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index ec576a1..3fb85b5 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -72,7 +72,7 @@ config OMAP3_COPY_CLOCK_SRAM
 	help
 	  Say Y here if you like to have initial OMAP3 Clock configuration done from SRAM.
 
-config GPMC
+config OMAP_GPMC
 	prompt "Support for GPMC configuration"
 	bool
 	depends on  (ARCH_OMAP2 || ARCH_OMAP3)
diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index 5df8411..5527f48 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -23,6 +23,6 @@ obj-$(CONFIG_ARCH_OMAP) += syslib.o
 obj-$(CONFIG_OMAP_CLOCK_SOURCE_S32K) += s32k_clksource.o
 obj-$(CONFIG_ARCH_OMAP3) += omap3_core.o omap3_generic.o
 obj-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock_core.o omap3_clock.o
-obj-$(CONFIG_GPMC) += gpmc.o devices-gpmc-nand.o
+obj-$(CONFIG_OMAP_GPMC) += gpmc.o devices-gpmc-nand.o
 obj-$(CONFIG_GPIO) += gpio.o
 obj-y += omap-uart.o
diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index 12e1237..f335804 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -15,7 +15,7 @@ config NAND_IMX
 
 config NAND_OMAP_GPMC
 	tristate "NAND Flash Support for GPMC based OMAP platforms"
-	depends on ((ARCH_OMAP2 || ARCH_OMAP3) && GPMC)
+	depends on OMAP_GPMC
 	help
 	 Support for NAND flash using GPMC. GPMC is a common memory
 	 interface found on Texas Instrument's OMAP platforms
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
