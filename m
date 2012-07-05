Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Smrra-0002Dd-Rt
 for barebox@lists.infradead.org; Thu, 05 Jul 2012 19:37:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Jul 2012 21:36:48 +0200
Message-Id: <1341517020-5581-18-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1341517020-5581-1-git-send-email-s.hauer@pengutronix.de>
References: <1341517020-5581-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 18/30] ARM: remove mx1ads leftovers
To: barebox@lists.infradead.org

We have no mx1ads support in the tree, so remove the remaining bits from
Kconfig.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile         |    1 -
 arch/arm/mach-imx/Kconfig |    7 -------
 2 files changed, 8 deletions(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 1225df7..b2f4ce6 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -94,7 +94,6 @@ board-$(CONFIG_MACH_IMX21ADS)			:= imx21ads
 board-$(CONFIG_MACH_IMX27ADS)			:= imx27ads
 board-$(CONFIG_MACH_MIOA701)			:= mioa701
 board-$(CONFIG_MACH_MMCCPU)			:= mmccpu
-board-$(CONFIG_MACH_MX1ADS)			:= mx1ads
 board-$(CONFIG_MACH_NOMADIK_8815NHK)		:= nhk8815
 board-$(CONFIG_MACH_NXDB500)			:= netx
 board-$(CONFIG_MACH_OMAP343xSDP)		:= omap343xdsp
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 5b77245..aa4ab7b 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -6,7 +6,6 @@ config ARCH_TEXT_BASE
 	default 0xa0000000 if MACH_EUKREA_CPUIMX27
 	default 0x87f00000 if MACH_EUKREA_CPUIMX35
 	default 0x97f00000 if MACH_EUKREA_CPUIMX51SD
-	default 0x08f00000 if MACH_MX1ADS
 	default 0xc0000000 if MACH_IMX21ADS
 	default 0xa0000000 if MACH_IMX27ADS
 	default 0x83f00000 if MACH_FREESCALE_MX25_3STACK && FREESCALE_MX25_3STACK_SDRAM_64MB_DDR2
@@ -186,12 +185,6 @@ choice
 
 	prompt "i.MX1 Board Type"
 
-config MACH_MX1ADS
-	bool "mx1ads"
-	select HAS_CS8900
-	help
-	  Say Y here if you are using the Motorola MX1ADS board
-
 config MACH_SCB9328
 	bool "Synertronixx scb9328"
 	select HAS_DM9000
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
