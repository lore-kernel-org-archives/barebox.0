Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtprelay06.ispgateway.de ([80.67.31.95])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S38kR-000617-OU
 for barebox@lists.infradead.org; Thu, 01 Mar 2012 16:20:57 +0000
From: Asen Chavdarov Dimov <dimov@ronetix.at>
Date: Thu,  1 Mar 2012 18:21:29 +0200
Message-Id: <1330618889-11482-3-git-send-email-dimov@ronetix.at>
In-Reply-To: <1330618889-11482-1-git-send-email-dimov@ronetix.at>
References: <1330618889-11482-1-git-send-email-dimov@ronetix.at>
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
Subject: [PATCH 3/3] pm9g45: enable USB OHCI host and USB mass storage
To: barebox@lists.infradead.org

FIXME: execute the "usb" command twice to create the /dev/disk0 device.

Signed-off-by: Asen Chavdarov Dimov <dimov@ronetix.at>
---
 arch/arm/boards/pm9g45/init.c     |   21 ++++++++++++++++++++-
 arch/arm/configs/pm9g45_defconfig |   31 +++++++++++++++----------------
 2 files changed, 35 insertions(+), 17 deletions(-)

diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
index 257e5e2..b26038e 100644
--- a/arch/arm/boards/pm9g45/init.c
+++ b/arch/arm/boards/pm9g45/init.c
@@ -92,6 +92,23 @@ static void add_device_mci(void)
 static void add_device_mci(void) {}
 #endif
 
+/*
+ * USB OHCI Host port
+ */
+#ifdef CONFIG_USB_OHCI_AT91
+static struct at91_usbh_data  __initdata usbh_data = {
+	.ports		= 2,
+	.vbus_pin	= { AT91_PIN_PD0,  0x0 },
+};
+
+static void __init add_device_usbh(void)
+{
+	at91_add_device_usbh_ohci(&usbh_data);
+}
+#else
+static void __init add_device_usbh(void) {}
+#endif
+
 static struct at91_ether_platform_data macb_pdata = {
 	.flags = AT91SAM_ETHER_RMII,
 	.phy_addr = 0,
@@ -123,7 +140,8 @@ static const char *periph_clocks[] __initdata = {
 	"pioB_clk",
 	"pioC_clk",
 	"pioDE_clk",
-	"macb_clk"
+	"macb_clk",
+	"uhphs_clk"
 };
 
 static int pm9g45_devices_init(void)
@@ -140,6 +158,7 @@ static int pm9g45_devices_init(void)
 	add_device_mci();
 	pm_add_device_nand();
 	at91_add_device_eth(&macb_pdata);
+	add_device_usbh();
 
 	devfs_add_partition("nand0", 0x00000, 0x80000, PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
diff --git a/arch/arm/configs/pm9g45_defconfig b/arch/arm/configs/pm9g45_defconfig
index 5132ea4..1f3c780 100644
--- a/arch/arm/configs/pm9g45_defconfig
+++ b/arch/arm/configs/pm9g45_defconfig
@@ -197,7 +197,7 @@ CONFIG_CMD_CRC_CMP=y
 #
 # flash                         
 #
-CONFIG_CMD_FLASH=y
+# CONFIG_CMD_FLASH is not set
 CONFIG_CMD_UBI=y
 
 #
@@ -223,15 +223,15 @@ CONFIG_CMD_HELP=y
 CONFIG_CMD_DEVINFO=y
 # CONFIG_CMD_GPIO is not set
 # CONFIG_CMD_UNCOMPRESS is not set
-CONFIG_CMD_I2C=y
+CONFIG_CMD_USB=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 # CONFIG_NET_NFS is not set
 CONFIG_NET_PING=y
-# CONFIG_NET_TFTP is not set
-# CONFIG_NET_TFTP_PUSH is not set
+CONFIG_NET_TFTP=y
+CONFIG_NET_TFTP_PUSH=y
 # CONFIG_NET_NETCONSOLE is not set
-# CONFIG_NET_RESOLV is not set
+CONFIG_NET_RESOLV=y
 
 #
 # Drivers                       
@@ -252,17 +252,14 @@ CONFIG_MIIDEV=y
 # CONFIG_DRIVER_NET_SMC911X is not set
 # CONFIG_DRIVER_NET_SMC91111 is not set
 CONFIG_DRIVER_NET_MACB=y
+# CONFIG_NET_USB is not set
 
 #
 # SPI drivers                   
 #
 CONFIG_SPI=y
 CONFIG_DRIVER_SPI_ATMEL=y
-CONFIG_I2C=y
-
-#
-# I2C Hardware Bus support
-#
+# CONFIG_I2C is not set
 
 #
 # flash drivers                 
@@ -298,13 +295,19 @@ CONFIG_DISK_WRITE=y
 #
 # drive types
 #
-# CONFIG_DISK_ATA is not set
+CONFIG_DISK_ATA=y
 
 #
 # interface types
 #
 # CONFIG_DISK_INTF_PLATFORM_IDE is not set
-# CONFIG_USB is not set
+CONFIG_USB=y
+# CONFIG_USB_EHCI is not set
+CONFIG_USB_OHCI=y
+CONFIG_USB_OHCI_AT91=y
+# CONFIG_USB_ISP1504 is not set
+# CONFIG_USB_TWL4030 is not set
+CONFIG_USB_STORAGE=y
 # CONFIG_USB_GADGET is not set
 # CONFIG_VIDEO is not set
 CONFIG_MCI=y
@@ -327,10 +330,6 @@ CONFIG_CLKDEV_LOOKUP=y
 # MFD
 #
 # CONFIG_I2C_MC13892 is not set
-# CONFIG_I2C_MC34704 is not set
-# CONFIG_I2C_MC9SDZ60 is not set
-# CONFIG_I2C_LP3972 is not set
-# CONFIG_I2C_TWL6030 is not set
 # CONFIG_DRIVER_SPI_MC13783 is not set
 # CONFIG_LED is not set
 
-- 
1.7.4.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
