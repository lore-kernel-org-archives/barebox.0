Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S73Rr-0006mK-GX
 for barebox@lists.infradead.org; Mon, 12 Mar 2012 11:29:56 +0000
Received: from mail621.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 59456DC6946
 for <barebox@lists.infradead.org>; Mon, 12 Mar 2012 12:33:03 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 12 Mar 2012 12:17:51 +0100
Message-Id: <1331551082-7730-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1331551082-7730-1-git-send-email-plagnioj@jcrosoft.com>
References: <1331551082-7730-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 03/14] at91sam9263ek: add leds support
To: barebox@lists.infradead.org, Nicolas Ferre <nicolas.ferre@atmel.com>
Cc: Patrice VILCHEZ <patrice.vilchez@atmel.com>

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9263ek/init.c     |   31 ++++++++++++++++++++++++++++++
 arch/arm/configs/at91sam9263ek_defconfig |    5 ++++
 2 files changed, 36 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index 1c52acc..42b38ba 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -107,6 +107,36 @@ static void ek_add_device_mci(void)
 static void ek_add_device_mci(void) {}
 #endif
 
+#ifdef CONFIG_LED_GPIO
+struct gpio_led ek_leds[] = {
+	{
+		.gpio		= AT91_PIN_PC29,
+		.active_low	= 1,
+		.led = {
+			.name = "ds2",
+		},
+	}, {
+		.gpio		= AT91_PIN_PB7,
+		.led = {
+			.name = "ds3",
+		},
+	},
+};
+
+static void ek_device_add_leds(void)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(ek_leds); i++) {
+		at91_set_gpio_output(ek_leds[i].gpio, ek_leds[i].active_low);
+		led_gpio_register(&ek_leds[i]);
+	}
+	led_set_trigger(LED_TRIGGER_HEARTBEAT, &ek_leds[1].led);
+}
+#else
+static void ek_device_add_leds(void) {}
+#endif
+
 static int at91sam9263ek_mem_init(void)
 {
 	at91_add_device_sdram(64 * 1024 * 1024);
@@ -129,6 +159,7 @@ static int at91sam9263ek_devices_init(void)
 	at91_add_device_eth(&macb_pdata);
 	add_cfi_flash_device(0, AT91_CHIPSELECT_0, 8 * 1024 * 1024, 0);
 	ek_add_device_mci();
+	ek_device_add_leds();
 
 	if (IS_ENABLED(CONFIG_DRIVER_CFI) && cdev_by_name("nor0")) {
 		devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self");
diff --git a/arch/arm/configs/at91sam9263ek_defconfig b/arch/arm/configs/at91sam9263ek_defconfig
index 308f0cd..1b4b2e3 100644
--- a/arch/arm/configs/at91sam9263ek_defconfig
+++ b/arch/arm/configs/at91sam9263ek_defconfig
@@ -27,6 +27,8 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
@@ -42,6 +44,9 @@ CONFIG_NAND_ATMEL=y
 CONFIG_UBI=y
 CONFIG_MCI=y
 CONFIG_MCI_ATMEL=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_TRIGGERS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
