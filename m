Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtprelay05.ispgateway.de ([80.67.31.98])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SAONE-0003tg-0t
 for barebox@lists.infradead.org; Wed, 21 Mar 2012 16:26:58 +0000
From: Asen Chavdarov Dimov <dimov@ronetix.at>
Date: Wed, 21 Mar 2012 18:27:26 +0200
Message-Id: <1332347246-8777-4-git-send-email-dimov@ronetix.at>
In-Reply-To: <1332347246-8777-1-git-send-email-dimov@ronetix.at>
References: <1330618889-11482-1-git-send-email-dimov@ronetix.at>
 <1332347246-8777-1-git-send-email-dimov@ronetix.at>
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
Subject: [PATCH v3 4/4] pm9g45: enable USB OHCI host and USB mass storage
To: barebox@lists.infradead.org

FIXME: execute the "usb" command twice to create the /dev/disk0 device.

Signed-off-by: Asen Chavdarov Dimov <dimov@ronetix.at>
---
since v1:
	- add_device_usbh renamed to pm9g45_add_device_usbh
	- skipped manual enabling of clocks

since v2:
	- used savedefconfig to minimize the config file
---
 arch/arm/boards/pm9g45/init.c     |   18 ++++++++++++++++++
 arch/arm/configs/pm9g45_defconfig |   11 ++++++++---
 2 files changed, 26 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
index 174dd75..4d3078e 100644
--- a/arch/arm/boards/pm9g45/init.c
+++ b/arch/arm/boards/pm9g45/init.c
@@ -92,6 +92,23 @@ static void pm9g45_add_device_mci(void)
 static void pm9g45_add_device_mci(void) {}
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
+static void __init pm9g45_add_device_usbh(void)
+{
+	at91_add_device_usbh_ohci(&usbh_data);
+}
+#else
+static void __init pm9g45_add_device_usbh(void) {}
+#endif
+
 static struct at91_ether_platform_data macb_pdata = {
 	.flags = AT91SAM_ETHER_RMII,
 	.phy_addr = 0,
@@ -122,6 +139,7 @@ static int pm9g45_devices_init(void)
 	pm9g45_add_device_mci();
 	pm9g45_phy_init();
 	at91_add_device_eth(&macb_pdata);
+	pm9g45_add_device_usbh();
 
 	devfs_add_partition("nand0", 0x00000, 0x80000, PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
diff --git a/arch/arm/configs/pm9g45_defconfig b/arch/arm/configs/pm9g45_defconfig
index 8106202..3c9fa69 100644
--- a/arch/arm/configs/pm9g45_defconfig
+++ b/arch/arm/configs/pm9g45_defconfig
@@ -13,26 +13,31 @@ CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
-CONFIG_CMD_FLASH=y
 CONFIG_CMD_BOOTM_VERBOSE=y
 CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_I2C=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_PING=y
+CONFIG_NET_TFTP=y
+CONFIG_NET_TFTP_PUSH=y
+CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
 CONFIG_DRIVER_SPI_ATMEL=y
-CONFIG_I2C=y
 CONFIG_MTD_M25P80=y
 CONFIG_MTD_SST25L=y
 CONFIG_MTD=y
 CONFIG_NAND=y
 CONFIG_NAND_ATMEL=y
 CONFIG_UBI=y
+CONFIG_DISK_ATA=y
+CONFIG_USB=y
+CONFIG_USB_OHCI=y
+CONFIG_USB_OHCI_AT91=y
+CONFIG_USB_STORAGE=y
 CONFIG_MCI=y
 CONFIG_MCI_ATMEL=y
 CONFIG_EEPROM_AT25=y
-- 
1.7.4.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
