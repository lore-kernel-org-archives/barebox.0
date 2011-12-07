Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RYGzt-00068g-Ou
 for barebox@lists.infradead.org; Wed, 07 Dec 2011 12:53:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  7 Dec 2011 13:52:59 +0100
Message-Id: <1323262387-8012-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1323262387-8012-1-git-send-email-s.hauer@pengutronix.de>
References: <1323262387-8012-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/11] remove unused Kconfig variable HAS_CFI
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig |    8 --------
 drivers/nor/Kconfig       |    3 ---
 2 files changed, 0 insertions(+), 11 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 726920f..27bf386 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -182,7 +182,6 @@ config MACH_MX1ADS
 config MACH_SCB9328
 	bool "Synertronixx scb9328"
 	select HAS_DM9000
-	select HAS_CFI
 	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say Y here if you are using the Synertronixx scb9328 board
@@ -201,7 +200,6 @@ choice
 
 config MACH_IMX21ADS
 	bool "Freescale i.MX21ADS"
-	select HAS_CFI
 	select MACH_HAS_LOWLEVEL_INIT
 	select HAS_CS8900
 	help
@@ -229,7 +227,6 @@ config MACH_EUKREA_CPUIMX25
 
 config MACH_FREESCALE_MX25_3STACK
 	bool "Freescale MX25 3stack"
-	select HAS_CFI
 	select MACH_HAS_LOWLEVEL_INIT
 	select I2C
 	select I2C_MC34704
@@ -257,7 +254,6 @@ choice
 
 config MACH_EUKREA_CPUIMX27
 	bool "EUKREA CPUIMX27"
-	select HAS_CFI
 	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say Y here if you are using Eukrea's CPUIMX27 equipped
@@ -265,7 +261,6 @@ config MACH_EUKREA_CPUIMX27
 
 config MACH_IMX27ADS
 	bool "Freescale i.MX27ADS"
-	select HAS_CFI
 	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say Y here if you are using the Freescale i.MX27ads board equipped
@@ -280,7 +275,6 @@ config MACH_PCA100
 
 config MACH_PCM038
 	bool "phyCORE-i.MX27"
-	select HAS_CFI
 	select MACH_HAS_LOWLEVEL_INIT
 	select SPI
 	select DRIVER_SPI_IMX
@@ -339,7 +333,6 @@ config MACH_EUKREA_CPUIMX35
 
 config MACH_FREESCALE_MX35_3STACK
 	bool "Freescale MX35 3stack"
-	select HAS_CFI
 	select MACH_HAS_LOWLEVEL_INIT
 	select I2C
 	select I2C_IMX
@@ -351,7 +344,6 @@ config MACH_FREESCALE_MX35_3STACK
 
 config MACH_PCM043
 	bool "phyCORE-i.MX35"
-	select HAS_CFI
 	select MACH_HAS_LOWLEVEL_INIT
 	select ARCH_HAS_L2X0
 	help
diff --git a/drivers/nor/Kconfig b/drivers/nor/Kconfig
index 84ce0d0..8652d27 100644
--- a/drivers/nor/Kconfig
+++ b/drivers/nor/Kconfig
@@ -8,9 +8,6 @@ menuconfig DRIVER_CFI
 
 if DRIVER_CFI
 
-config HAS_CFI
-	bool
-
 config DRIVER_CFI_INTEL
 	default y
 	depends on DRIVER_CFI
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
