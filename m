Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X47pa-0008Q2-Um
 for barebox@lists.infradead.org; Mon, 07 Jul 2014 12:15:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  7 Jul 2014 14:15:13 +0200
Message-Id: <1404735313-21245-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: OMAP: Do not show MLO/SPI image options with
 OMAP_MULTI_BOARDS
To: barebox@lists.infradead.org

The MLO/SPI image options have no effect with OMAP_MULTI_BOARDS
enabled, so do not show them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/am335x_mlo_defconfig | 1 -
 arch/arm/mach-omap/Kconfig            | 2 ++
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/configs/am335x_mlo_defconfig b/arch/arm/configs/am335x_mlo_defconfig
index 19f78d0..b8dc4e0 100644
--- a/arch/arm/configs/am335x_mlo_defconfig
+++ b/arch/arm/configs/am335x_mlo_defconfig
@@ -1,5 +1,4 @@
 CONFIG_ARCH_OMAP=y
-CONFIG_OMAP_BUILD_IFT=y
 CONFIG_OMAP_MULTI_BOARDS=y
 CONFIG_MACH_BEAGLEBONE=y
 CONFIG_MACH_PCM051=y
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 732de15..4458572 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -72,6 +72,7 @@ config OMAP_GPMC
 
 config OMAP_BUILD_IFT
 	prompt "build ift binary (MLO)"
+	depends on !OMAP_MULTI_BOARDS
 	bool
 	help
 	  Say Y here if you want to build an MLO binary. On TI SoCs, this
@@ -80,6 +81,7 @@ config OMAP_BUILD_IFT
 
 config OMAP_BUILD_SPI
 	prompt "build SPI binary"
+	depends on !OMAP_MULTI_BOARDS
 	bool
 	help
 	  Say Y here if you want to build an barebox.spi image as used
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
