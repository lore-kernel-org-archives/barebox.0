Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x232.google.com ([2a00:1450:400c:c05::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X05Nd-0004iI-87
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 08:50:06 +0000
Received: by mail-wi0-f178.google.com with SMTP id n15so582917wiw.11
 for <barebox@lists.infradead.org>; Thu, 26 Jun 2014 01:49:42 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Thu, 26 Jun 2014 10:49:17 +0200
Message-Id: <1403772557-28482-5-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 4/4] sandbox: allow "make ARCH=sandbox allyesconfig"
To: barebox@lists.infradead.org

Compiling the tree with allyesconfig is helpful because different
compilers (gcc, clang) or static checkers (e.g. clang's scan-build)
can then process and check more code.

This patch introduces two new configuration symbols that Kconfig files
can depend on. That way, code that is only working where a cache or DMA
implementation exists can be opted out.

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 common/Kconfig                   |   21 +++++++++++++++++++++
 drivers/ata/Kconfig              |    1 +
 drivers/input/Kconfig            |    2 +-
 drivers/net/Kconfig              |    4 ++++
 drivers/regulator/Kconfig        |    1 +
 drivers/usb/host/Kconfig         |    1 +
 drivers/video/imx-ipu-v3/Kconfig |    1 +
 7 files changed, 30 insertions(+), 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index 1afee93..0bf5d2c 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -25,6 +25,26 @@ config ENV_HANDLING
 	select CRC32
 	bool
 
+config HAS_CACHE
+	bool
+	default n if SANDBOX
+	default y
+	help
+	  This allows you do run "make ARCH=sandbox allyesconfig".
+
+	  Drivers that depend on a cache implementation can depend on this
+	  config, so that you don't get a compilation error.
+
+config HAS_DMA
+	bool
+	default n if SANDBOX
+	default y
+	help
+	  This allows you do run "make ARCH=sandbox allyesconfig".
+
+	  Drivers that depend on a DMA implementation can depend on this
+	  config, so that you don't get a compilation error.
+
 config GENERIC_GPIO
 	bool
 
@@ -637,6 +657,7 @@ config BAREBOXENV_TARGET
 
 config BAREBOXCRC32_TARGET
 	bool
+	depends on ARCH != sandbox
 	prompt "build bareboxcrc32 tool for target"
 	help
 	  'bareboxcrc32' is a userspacetool to generate the crc32 checksums the same way
diff --git a/drivers/ata/Kconfig b/drivers/ata/Kconfig
index 9830cc0..7850e4a 100644
--- a/drivers/ata/Kconfig
+++ b/drivers/ata/Kconfig
@@ -34,6 +34,7 @@ config DISK_ATA
 
 config DISK_AHCI
 	bool "AHCI support"
+	depends on HAS_DMA
 	select DISK_ATA
 
 config DISK_AHCI_IMX
diff --git a/drivers/input/Kconfig b/drivers/input/Kconfig
index 3d9016b..07545ed 100644
--- a/drivers/input/Kconfig
+++ b/drivers/input/Kconfig
@@ -32,7 +32,7 @@ config KEYBOARD_IMX_KEYPAD
 
 config KEYBOARD_QT1070
 	tristate "Atmel AT42QT1070 Touch Sensor Chip"
-	depends on I2C
+	depends on I2C && GENERIC_GPIO
 	select POLLER
 	help
 	  Say Y here if you want to use Atmel AT42QT1070 QTouch
diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 7a0d5e1..80c3414 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -34,6 +34,7 @@ config DRIVER_NET_AR231X
 
 config DRIVER_NET_ARC_EMAC
 	bool "ARC Ethernet MAC driver"
+	depends on HAS_DMA
 	select PHYLIB
 	help
 	  This option enables support for the ARC EMAC ethernet
@@ -46,6 +47,7 @@ config DRIVER_NET_AT91_ETHER
 
 config DRIVER_NET_CALXEDA_XGMAC
 	bool "Calxeda xgmac"
+	depends on HAS_DMA
 
 config DRIVER_NET_CS8900
 	bool "cs8900 ethernet driver"
@@ -63,6 +65,7 @@ config DRIVER_NET_DAVINCI_EMAC
 
 config DRIVER_NET_DESIGNWARE
 	bool "Designware Universal MAC ethernet driver"
+	depends on HAS_DMA
 	select PHYLIB
 	help
 	  This option enables support for the Synopsys
@@ -80,6 +83,7 @@ config DRIVER_NET_EP93XX
 
 config DRIVER_NET_ETHOC
 	bool "OpenCores ethernet MAC driver"
+	depends on HAS_CACHE
 	select PHYLIB
 	help
 	  This option enables support for the OpenCores 10/100 Mbps
diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
index 55f87a4..493b18a 100644
--- a/drivers/regulator/Kconfig
+++ b/drivers/regulator/Kconfig
@@ -6,6 +6,7 @@ if REGULATOR
 
 config REGULATOR_FIXED
 	bool "fixed/gpio regulator"
+	depends on GENERIC_GPIO
 	help
 	  This enables a simple fixed regulator. It is used for regulators
 	  which are not software controllable or controllable via gpio.
diff --git a/drivers/usb/host/Kconfig b/drivers/usb/host/Kconfig
index 5a3ce40..a69e758 100644
--- a/drivers/usb/host/Kconfig
+++ b/drivers/usb/host/Kconfig
@@ -1,5 +1,6 @@
 config USB_EHCI
 	bool "EHCI driver"
+	depends on HAS_DMA
 
 config USB_EHCI_OMAP
 	depends on ARCH_OMAP3
diff --git a/drivers/video/imx-ipu-v3/Kconfig b/drivers/video/imx-ipu-v3/Kconfig
index 3d656e5..368167b 100644
--- a/drivers/video/imx-ipu-v3/Kconfig
+++ b/drivers/video/imx-ipu-v3/Kconfig
@@ -1,5 +1,6 @@
 config DRIVER_VIDEO_IMX_IPUV3
 	bool "i.MX IPUv3 driver"
+	depends on ARCH_IMX
 	help
 	  Support the IPUv3 found on Freescale i.MX51/53/6 SoCs
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
