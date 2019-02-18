Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a00:ee2:100:3a01::1] (helo=chandra.tablix.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gvh9y-0002VI-Kb
 for barebox@lists.infradead.org; Mon, 18 Feb 2019 11:32:39 +0000
Received: from 77-111-10-47.ipv4.tusmobil.si ([77.111.10.47]
 helo=muffin.lju.klevio.com)
 by chandra.tablix.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <tomaz.solc@tablix.org>)
 id 1gvh9p-00081l-Ef
 for barebox@lists.infradead.org; Mon, 18 Feb 2019 12:32:21 +0100
From: Tomaz Solc <tomaz.solc@tablix.org>
Date: Mon, 18 Feb 2019 12:32:15 +0100
Message-Id: <20190218113220.18649-4-tomaz.solc@tablix.org>
In-Reply-To: <20190218113220.18649-1-tomaz.solc@tablix.org>
References: <20190218113220.18649-1-tomaz.solc@tablix.org>
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
Subject: [PATCH v2 3/8] pinctrl: bcm2835: move existing code from gpio.
To: barebox@lists.infradead.org

---
 arch/arm/configs/rpi_defconfig                             | 2 +-
 drivers/gpio/Kconfig                                       | 4 ----
 drivers/gpio/Makefile                                      | 1 -
 drivers/pinctrl/Kconfig                                    | 6 ++++++
 drivers/pinctrl/Makefile                                   | 1 +
 drivers/{gpio/gpio-bcm2835.c => pinctrl/pinctrl-bcm2835.c} | 0
 6 files changed, 8 insertions(+), 6 deletions(-)
 rename drivers/{gpio/gpio-bcm2835.c => pinctrl/pinctrl-bcm2835.c} (100%)

diff --git a/arch/arm/configs/rpi_defconfig b/arch/arm/configs/rpi_defconfig
index dc5ab1fe1..35943e025 100644
--- a/arch/arm/configs/rpi_defconfig
+++ b/arch/arm/configs/rpi_defconfig
@@ -71,7 +71,7 @@ CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
 CONFIG_WATCHDOG=y
 CONFIG_WATCHDOG_BCM2835=y
-CONFIG_GPIO_BCM283X=y
+CONFIG_PINCTRL_BCM283X=y
 # CONFIG_PINCTRL is not set
 CONFIG_REGULATOR=y
 CONFIG_FS_EXT4=y
diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index ed93e868a..c535904ed 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -21,10 +21,6 @@ config GPIO_74164
 	  shift registers. This driver can be used to provide access
 	  to more gpio outputs.
 
-config GPIO_BCM283X
-	bool "GPIO support for BCM283X"
-	depends on ARCH_BCM283X
-
 config GPIO_CLPS711X
 	bool "GPIO support for CLPS711X"
 	depends on ARCH_CLPS711X
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index f5ed876d5..52280f0bb 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -2,7 +2,6 @@ obj-$(CONFIG_GPIOLIB)		+= gpiolib.o
 
 obj-$(CONFIG_GPIO_74164)	+= gpio-74164.o
 obj-$(CONFIG_MACH_MIPS_ATH79)	+= gpio-ath79.o
-obj-$(CONFIG_GPIO_BCM283X)	+= gpio-bcm2835.o
 obj-$(CONFIG_GPIO_DAVINCI)	+= gpio-davinci.o
 obj-$(CONFIG_GPIO_CLPS711X)	+= gpio-clps711x.o
 obj-$(CONFIG_GPIO_DIGIC)	+= gpio-digic.o
diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
index de83c124a..45c3b351d 100644
--- a/drivers/pinctrl/Kconfig
+++ b/drivers/pinctrl/Kconfig
@@ -17,6 +17,12 @@ config PINCTRL_AT91
 	help
 	    The pinmux controller found on AT91 SoCs.
 
+config PINCTRL_BCM283X
+	bool "GPIO and pinmux support for BCM283X"
+	depends on ARCH_BCM283X
+	help
+	    The pinmux controller on BCM2835
+
 config PINCTRL_IMX_IOMUX_V1
 	bool
 	help
diff --git a/drivers/pinctrl/Makefile b/drivers/pinctrl/Makefile
index 9450dbbdf..35b2d4707 100644
--- a/drivers/pinctrl/Makefile
+++ b/drivers/pinctrl/Makefile
@@ -1,5 +1,6 @@
 obj-$(CONFIG_PINCTRL)	+= pinctrl.o
 obj-$(CONFIG_PINCTRL_AT91) += pinctrl-at91.o
+obj-$(CONFIG_PINCTRL_BCM283X)	+= pinctrl-bcm2835.o
 obj-$(CONFIG_PINCTRL_IMX_IOMUX_V1) += imx-iomux-v1.o
 obj-$(CONFIG_PINCTRL_IMX_IOMUX_V2) += imx-iomux-v2.o
 obj-$(CONFIG_PINCTRL_IMX_IOMUX_V3) += imx-iomux-v3.o
diff --git a/drivers/gpio/gpio-bcm2835.c b/drivers/pinctrl/pinctrl-bcm2835.c
similarity index 100%
rename from drivers/gpio/gpio-bcm2835.c
rename to drivers/pinctrl/pinctrl-bcm2835.c
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
