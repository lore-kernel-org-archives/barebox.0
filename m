Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QoVfp-0004qm-RT
	for barebox@lists.infradead.org; Wed, 03 Aug 2011 07:15:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  3 Aug 2011 09:15:01 +0200
Message-Id: <1312355701-18867-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1312355701-18867-1-git-send-email-s.hauer@pengutronix.de>
References: <1312355701-18867-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] remove now unnecessary HAVE_MMU from Kconfig
To: barebox@lists.infradead.org

MMU now can be enabled on every ARM board, so remove
the dependency.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig  |   28 +++++++---------------------
 arch/arm/mach-mxs/Kconfig  |    2 --
 arch/arm/mach-omap/Kconfig |    2 --
 common/Kconfig             |    4 ----
 4 files changed, 7 insertions(+), 29 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index e661142..8dc6a24 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -182,7 +182,6 @@ config MACH_SCB9328
 	select HAS_DM9000
 	select HAS_CFI
 	select MACH_HAS_LOWLEVEL_INIT
-	select HAVE_MMU
 	help
 	  Say Y here if you are using the Synertronixx scb9328 board
 
@@ -222,7 +221,6 @@ choice
 config MACH_EUKREA_CPUIMX25
 	bool "Eukrea CPUIMX25"
 	select MACH_HAS_LOWLEVEL_INIT
-	select HAVE_MMU
 	help
 	  Say Y here if you are using the Eukrea Electromatique's CPUIMX25
 	  equipped with a Freescale i.MX25 Processor
@@ -240,7 +238,6 @@ config MACH_FREESCALE_MX25_3STACK
 config MACH_TX25
 	bool "Ka-Ro TX25"
 	select MACH_HAS_LOWLEVEL_INIT
-	select HAVE_MMU
 	help
 	  Say Y here if you are using the Ka-Ro tx25 board
 
@@ -259,7 +256,6 @@ choice
 config MACH_EUKREA_CPUIMX27
 	bool "EUKREA CPUIMX27"
 	select HAS_CFI
-	select HAVE_MMU
 	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say Y here if you are using Eukrea's CPUIMX27 equipped
@@ -276,7 +272,6 @@ config MACH_IMX27ADS
 config MACH_PCA100
 	bool "phyCard-i.MX27"
 	select MACH_HAS_LOWLEVEL_INIT
-	select HAVE_MMU
 	help
 	  Say Y here if you are using Phytec's phyCard-i.MX27 (pca100) equipped
 	  with a Freescale i.MX27 Processor
@@ -288,7 +283,6 @@ config MACH_PCM038
 	select SPI
 	select DRIVER_SPI_IMX
 	select DRIVER_SPI_MC13783
-	select HAVE_MMU
 	help
 	  Say Y here if you are using Phytec's phyCORE-i.MX27 (pcm038) equipped
 	  with a Freescale i.MX27 Processor
@@ -296,7 +290,6 @@ config MACH_PCM038
 config MACH_NESO
 	bool "Garz+Fricke Neso"
 	select MACH_HAS_LOWLEVEL_INIT
-	select HAVE_MMU
 	help
 	  Say Y here if you are using the Garz+Fricke Neso board equipped
 	  with a Freescale i.MX27 Processor
@@ -316,7 +309,6 @@ choice
 config MACH_PCM037
 	bool "phyCORE-i.MX31"
 	select MACH_HAS_LOWLEVEL_INIT
-	select HAVE_MMU
 	select USB_ISP1504 if USB
 	select ARCH_HAS_L2X0
 	help
@@ -337,7 +329,6 @@ choice
 
 config MACH_EUKREA_CPUIMX35
 	bool "EUKREA CPUIMX35"
-	select HAVE_MMU
 	select MACH_HAS_LOWLEVEL_INIT
 	select ARCH_HAS_L2X0
 	help
@@ -357,21 +348,19 @@ config MACH_FREESCALE_MX35_3STACK
 	  with a Freescale i.MX35 Processor
 
 config MACH_PCM043
-        bool "phyCORE-i.MX35"
-        select HAS_CFI
-	select HAVE_MMU
+	bool "phyCORE-i.MX35"
+	select HAS_CFI
 	select MACH_HAS_LOWLEVEL_INIT
 	select ARCH_HAS_L2X0
-        help
-          Say Y here if you are using Phytec's phyCORE-i.MX35 (pcm043) equipped
-          with a Freescale i.MX35 Processor
+	help
+	  Say Y here if you are using Phytec's phyCORE-i.MX35 (pcm043) equipped
+	  with a Freescale i.MX35 Processor
 
 config MACH_GUF_CUPID
-        bool "Garz+Fricke Cupid"
-	select HAVE_MMU
+	bool "Garz+Fricke Cupid"
 	select MACH_HAS_LOWLEVEL_INIT
 	select ARCH_HAS_L2X0
-        help
+	help
 	  Say Y here if you are using the Garz+Fricke Neso board equipped
 	  with a Freescale i.MX35 Processor
 
@@ -389,12 +378,10 @@ choice
 
 config MACH_FREESCALE_MX51_PDK
 	bool "Freescale i.MX51 PDK"
-	select HAVE_MMU
 	select MACH_HAS_LOWLEVEL_INIT
 
 config MACH_EUKREA_CPUIMX51SD
 	bool "EUKREA CPUIMX51"
-	select HAVE_MMU
 	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say Y here if you are using Eukrea's CPUIMX51 equipped
@@ -414,7 +401,6 @@ choice
 
 config MACH_FREESCALE_MX53_LOCO
 	bool "Freescale i.MX53 LOCO"
-	select HAVE_MMU
 	select MACH_HAS_LOWLEVEL_INIT
 
 endchoice
diff --git a/arch/arm/mach-mxs/Kconfig b/arch/arm/mach-mxs/Kconfig
index f9cefaf..caef7e0 100644
--- a/arch/arm/mach-mxs/Kconfig
+++ b/arch/arm/mach-mxs/Kconfig
@@ -39,7 +39,6 @@ config MACH_MX23EVK
 
 config MACH_CHUMBY
 	bool "Chumby Falconwing"
-	select HAVE_MMU
 	help
 	  Say Y here if you are using the "chumby one" aka falconwing from
 	  Chumby Industries
@@ -55,7 +54,6 @@ choice
 
 config MACH_TX28
 	bool "KARO tx28"
-	select HAVE_MMU
 	help
 	  Say Y here if you are using the KARO TX28 CPU module.
 
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index f256310..1174df0 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -140,7 +140,6 @@ config MACH_OMAP3EVM
 
 config MACH_PANDA
 	bool "Texas Instrument's Panda Board"
-	select HAVE_MMU
 	select HAVE_NOSHELL
 	select MACH_HAS_LOWLEVEL_INIT
 	help
@@ -148,7 +147,6 @@ config MACH_PANDA
 
 config MACH_PCM049
 	bool "Phytec phyCORE pcm049"
-	select HAVE_MMU
 	select HAVE_NOSHELL
 	depends on ARCH_OMAP4
 	select MACH_HAS_LOWLEVEL_INIT
diff --git a/common/Kconfig b/common/Kconfig
index 382b407..422d185 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -70,12 +70,8 @@ config ENVIRONMENT_VARIABLES
 
 menu "memory layout                 "
 
-config HAVE_MMU
-	bool
-
 config MMU
 	bool "Enable MMU"
-	depends on HAVE_MMU
 	help
 	  Saying yes here enables the MMU. This is useful on some architectures
 	  to enable the data cache which depends on the MMU. See Documentation/mmu.txt
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
