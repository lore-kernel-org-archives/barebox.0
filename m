Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vjs2v-0008G4-IA
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 14:49:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Nov 2013 15:48:56 +0100
Message-Id: <1385131741-28280-13-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1385131741-28280-1-git-send-email-s.hauer@pengutronix.de>
References: <1385131741-28280-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/17] gpio: omap: move to drivers/gpio/
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/Makefile                           | 1 -
 drivers/gpio/Kconfig                                  | 3 +++
 drivers/gpio/Makefile                                 | 1 +
 arch/arm/mach-omap/gpio.c => drivers/gpio/gpio-omap.c | 0
 4 files changed, 4 insertions(+), 1 deletion(-)
 rename arch/arm/mach-omap/gpio.c => drivers/gpio/gpio-omap.c (100%)

diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index cf2d5ee..06999b3 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -31,5 +31,4 @@ obj-$(CONFIG_SHELL_NONE) += xload.o
 obj-$(CONFIG_MFD_TWL6030) += omap4_twl6030_mmc.o
 obj-$(CONFIG_OMAP4_USBBOOT) += omap4_rom_usb.o
 obj-$(CONFIG_CMD_BOOT_ORDER) += boot_order.o
-obj-y += gpio.o
 obj-$(CONFIG_BAREBOX_UPDATE_AM33XX_SPI_NOR_MLO) += am33xx_bbu_spi_mlo.o
diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 18d3135..7c42656 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -30,6 +30,9 @@ config GPIO_GENERIC_PLATFORM
 config GPIO_IMX
 	def_bool ARCH_IMX
 
+config GPIO_OMAP
+	def_bool ARCH_OMAP
+
 config GPIO_ORION
 	bool "GPIO support for Marvell Orion/MVEBU SoCs"
 	depends on ARCH_MVEBU
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index dc9fb13..b7c536d 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -5,6 +5,7 @@ obj-$(CONFIG_GPIO_CLPS711X)	+= gpio-clps711x.o
 obj-$(CONFIG_GPIO_GENERIC)	+= gpio-generic.o
 obj-$(CONFIG_GPIO_IMX)		+= gpio-imx.o
 obj-$(CONFIG_GPIO_ORION)	+= gpio-orion.o
+obj-$(CONFIG_GPIO_OMAP)		+= gpio-omap.o
 obj-$(CONFIG_GPIO_PL061)	+= gpio-pl061.o
 obj-$(CONFIG_GPIO_STMPE)	+= gpio-stmpe.o
 obj-$(CONFIG_GPIO_TEGRA)	+= gpio-tegra.o
diff --git a/arch/arm/mach-omap/gpio.c b/drivers/gpio/gpio-omap.c
similarity index 100%
rename from arch/arm/mach-omap/gpio.c
rename to drivers/gpio/gpio-omap.c
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
