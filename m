Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtprelay06.ispgateway.de ([80.67.31.95])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S38kQ-00060l-5x
 for barebox@lists.infradead.org; Thu, 01 Mar 2012 16:20:57 +0000
From: Asen Chavdarov Dimov <dimov@ronetix.at>
Date: Thu,  1 Mar 2012 18:21:28 +0200
Message-Id: <1330618889-11482-2-git-send-email-dimov@ronetix.at>
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
Subject: [PATCH 2/3] pm9g45: enable MCI0
To: barebox@lists.infradead.org

FIXME: part of or no data is written. File copy ends
with message: "atmel_mci@atmel_mci0: command/data timeout"

Signed-off-by: Asen Chavdarov Dimov <dimov@ronetix.at>
---
 arch/arm/boards/pm9g45/init.c     |   17 ++++++++++++++++-
 arch/arm/configs/pm9g45_defconfig |   34 +++++++++++++++++++++++++++++++---
 2 files changed, 47 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
index 9eba12a..257e5e2 100644
--- a/arch/arm/boards/pm9g45/init.c
+++ b/arch/arm/boards/pm9g45/init.c
@@ -77,6 +77,21 @@ static void pm_add_device_nand(void)
 	at91_add_device_nand(&nand_pdata);
 }
 
+#if defined(CONFIG_MCI_ATMEL)
+static struct atmel_mci_platform_data __initdata mci_data = {
+	.bus_width	= 4,
+	.wp_pin		= 0,
+	.detect_pin	= AT91_PIN_PD6,
+};
+
+static void add_device_mci(void)
+{
+	at91_add_device_mci(0, &mci_data);
+}
+#else
+static void add_device_mci(void) {}
+#endif
+
 static struct at91_ether_platform_data macb_pdata = {
 	.flags = AT91SAM_ETHER_RMII,
 	.phy_addr = 0,
@@ -122,8 +137,8 @@ static int pm9g45_devices_init(void)
 	}
 	phy_init();
 
+	add_device_mci();
 	pm_add_device_nand();
-
 	at91_add_device_eth(&macb_pdata);
 
 	devfs_add_partition("nand0", 0x00000, 0x80000, PARTITION_FIXED, "self_raw");
diff --git a/arch/arm/configs/pm9g45_defconfig b/arch/arm/configs/pm9g45_defconfig
index f05d4de..5132ea4 100644
--- a/arch/arm/configs/pm9g45_defconfig
+++ b/arch/arm/configs/pm9g45_defconfig
@@ -69,6 +69,8 @@ CONFIG_HAS_MODULES=y
 CONFIG_CMD_MEMORY=y
 CONFIG_ENV_HANDLING=y
 CONFIG_GENERIC_GPIO=y
+CONFIG_BLOCK=y
+CONFIG_BLOCK_WRITE=y
 CONFIG_FILETYPE=y
 
 #
@@ -290,11 +292,35 @@ CONFIG_NAND_ATMEL=y
 # CONFIG_MTD_NAND_ECC_SMC is not set
 CONFIG_MTD_NAND_IDS=y
 CONFIG_UBI=y
-# CONFIG_DISK is not set
+CONFIG_DISK=y
+CONFIG_DISK_WRITE=y
+
+#
+# drive types
+#
+# CONFIG_DISK_ATA is not set
+
+#
+# interface types
+#
+# CONFIG_DISK_INTF_PLATFORM_IDE is not set
 # CONFIG_USB is not set
 # CONFIG_USB_GADGET is not set
 # CONFIG_VIDEO is not set
-# CONFIG_MCI is not set
+CONFIG_MCI=y
+
+#
+# --- Feature list ---
+#
+# CONFIG_MCI_STARTUP is not set
+CONFIG_MCI_INFO=y
+CONFIG_MCI_WRITE=y
+
+#
+# --- MCI host drivers ---
+#
+CONFIG_MCI_ATMEL=y
+# CONFIG_MCI_SPI is not set
 CONFIG_CLKDEV_LOOKUP=y
 
 #
@@ -319,7 +345,9 @@ CONFIG_EEPROM_AT25=y
 # CONFIG_FS_CRAMFS is not set
 CONFIG_FS_RAMFS=y
 CONFIG_FS_DEVFS=y
-# CONFIG_FS_FAT is not set
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
 CONFIG_PARTITION_NEED_MTD=y
 
 #
-- 
1.7.4.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
