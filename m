Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XXQnZ-0004hI-P9
 for barebox@lists.infradead.org; Fri, 26 Sep 2014 08:22:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Sep 2014 10:22:15 +0200
Message-Id: <1411719735-30949-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1411719735-30949-1-git-send-email-s.hauer@pengutronix.de>
References: <1411719735-30949-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 9/9] ARM: am335x_defconfig: Enable USB support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/am335x_defconfig | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm/configs/am335x_defconfig b/arch/arm/configs/am335x_defconfig
index 4dc6cbf..cca1ae1 100644
--- a/arch/arm/configs/am335x_defconfig
+++ b/arch/arm/configs/am335x_defconfig
@@ -74,6 +74,7 @@ CONFIG_CMD_I2C=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_SPI=y
 CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_USBGADGET=y
 CONFIG_CMD_BAREBOX_UPDATE=y
 CONFIG_CMD_OF_NODE=y
 CONFIG_CMD_OF_PROPERTY=y
@@ -88,6 +89,9 @@ CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 CONFIG_DRIVER_NET_CPSW=y
+CONFIG_NET_USB=y
+CONFIG_NET_USB_ASIX=y
+CONFIG_NET_USB_SMSC95XX=y
 CONFIG_DRIVER_SPI_OMAP3=y
 CONFIG_I2C=y
 CONFIG_I2C_OMAP=y
@@ -97,6 +101,15 @@ CONFIG_NAND=y
 CONFIG_NAND_OMAP_GPMC=y
 CONFIG_MTD_UBI=y
 CONFIG_USB_HOST=y
+CONFIG_USB_STORAGE=y
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_DFU=y
+CONFIG_USB_GADGET_SERIAL=y
+CONFIG_USB_GADGET_FASTBOOT=y
+CONFIG_USB_MUSB=y
+CONFIG_USB_MUSB_AM335X=y
+CONFIG_USB_MUSB_HOST=y
+CONFIG_USB_MUSB_GADGET=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_OMAP_HSMMC=y
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
