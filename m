Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 29.mail-out.ovh.net ([87.98.216.213])
	by canuck.infradead.org with smtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QSAau-0000da-4M
	for barebox@lists.infradead.org; Thu, 02 Jun 2011 16:18:00 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  2 Jun 2011 18:05:17 +0200
Message-Id: <1307030717-8642-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1306928926-11086-1-git-send-email-h.feurstein@gmail.com>
References: <1306928926-11086-1-git-send-email-h.feurstein@gmail.com>
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
Subject: [PATCH] at91sam9263ek: add mci1 support
To: barebox@lists.infradead.org

enable fat support

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9263ek/init.c     |   16 ++++++++++++++++
 arch/arm/configs/at91sam9263ek_defconfig |    5 +++++
 2 files changed, 21 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index 8448866..9a763b3 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -99,6 +99,21 @@ static struct at91_ether_platform_data macb_pdata = {
 	.phy_addr = 0,
 };
 
+#if defined(CONFIG_MCI_ATMEL)
+static struct atmel_mci_platform_data __initdata ek_mci_data = {
+	.bus_width	= 4,
+	.detect_pin	= AT91_PIN_PE18,
+	.wp_pin		= AT91_PIN_PE19,
+};
+
+static void ek_add_device_mci(void)
+{
+	at91_add_device_mci(1, &ek_mci_data);
+}
+#else
+static void ek_add_device_mci(void) {}
+#endif
+
 static int at91sam9263ek_devices_init(void)
 {
 	/*
@@ -113,6 +128,7 @@ static int at91sam9263ek_devices_init(void)
 	ek_add_device_nand();
 	at91_add_device_eth(&macb_pdata);
 	register_device(&cfi_dev);
+	ek_add_device_mci();
 
 #if defined(CONFIG_DRIVER_CFI) || defined(CONFIG_DRIVER_CFI_OLD)
 	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self");
diff --git a/arch/arm/configs/at91sam9263ek_defconfig b/arch/arm/configs/at91sam9263ek_defconfig
index 271f7b2..308f0cd 100644
--- a/arch/arm/configs/at91sam9263ek_defconfig
+++ b/arch/arm/configs/at91sam9263ek_defconfig
@@ -40,3 +40,8 @@ CONFIG_MTD=y
 CONFIG_NAND=y
 CONFIG_NAND_ATMEL=y
 CONFIG_UBI=y
+CONFIG_MCI=y
+CONFIG_MCI_ATMEL=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
