Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtprelay05.ispgateway.de ([80.67.31.98])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SAONE-0003tf-3L
 for barebox@lists.infradead.org; Wed, 21 Mar 2012 16:26:57 +0000
From: Asen Chavdarov Dimov <dimov@ronetix.at>
Date: Wed, 21 Mar 2012 18:27:25 +0200
Message-Id: <1332347246-8777-3-git-send-email-dimov@ronetix.at>
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
Subject: [PATCH v3 3/4] pm9g45: enable MCI0
To: barebox@lists.infradead.org

FIXME: part of or no data is written. File copy ends
with message: "atmel_mci@atmel_mci0: command/data timeout"

Signed-off-by: Asen Chavdarov Dimov <dimov@ronetix.at>
---
since v1:
	add_device_mci renamed to pm9g45_add_device_mci

since v2:
	- used savedefconfig to minimize the config file
---
 arch/arm/boards/pm9g45/init.c     |   16 ++++++++++++++++
 arch/arm/configs/pm9g45_defconfig |    7 +++++--
 2 files changed, 21 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
index 567bad4..174dd75 100644
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
+static void pm9g45_add_device_mci(void)
+{
+	at91_add_device_mci(0, &mci_data);
+}
+#else
+static void pm9g45_add_device_mci(void) {}
+#endif
+
 static struct at91_ether_platform_data macb_pdata = {
 	.flags = AT91SAM_ETHER_RMII,
 	.phy_addr = 0,
@@ -104,6 +119,7 @@ mem_initcall(pm9g45_mem_init);
 static int pm9g45_devices_init(void)
 {
 	pm_add_device_nand();
+	pm9g45_add_device_mci();
 	pm9g45_phy_init();
 	at91_add_device_eth(&macb_pdata);
 
diff --git a/arch/arm/configs/pm9g45_defconfig b/arch/arm/configs/pm9g45_defconfig
index d199abd..8106202 100644
--- a/arch/arm/configs/pm9g45_defconfig
+++ b/arch/arm/configs/pm9g45_defconfig
@@ -4,8 +4,6 @@ CONFIG_AEABI=y
 CONFIG_LONGHELP=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_PARTITION=y
-CONFIG_PARTITION_DISK=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/pm9g45/env"
 CONFIG_POLLER=y
@@ -35,4 +33,9 @@ CONFIG_MTD=y
 CONFIG_NAND=y
 CONFIG_NAND_ATMEL=y
 CONFIG_UBI=y
+CONFIG_MCI=y
+CONFIG_MCI_ATMEL=y
 CONFIG_EEPROM_AT25=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
-- 
1.7.4.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
