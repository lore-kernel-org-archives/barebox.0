Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
 by bombadil.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S73SQ-0005YP-SP
 for barebox@lists.infradead.org; Mon, 12 Mar 2012 11:30:31 +0000
Received: from mail621.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 7D245DC027D
 for <barebox@lists.infradead.org>; Mon, 12 Mar 2012 12:33:13 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 12 Mar 2012 12:18:00 +0100
Message-Id: <1331551082-7730-12-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 12/14] at91sam9m10g45ek: add leds support
To: barebox@lists.infradead.org, Nicolas Ferre <nicolas.ferre@atmel.com>
Cc: Patrice VILCHEZ <patrice.vilchez@atmel.com>

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9m10g45ek/init.c     |   37 +++++++++++++++++++++++++++
 arch/arm/configs/at91sam9m10g45ek_defconfig |    5 +++
 2 files changed, 42 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
index 1525795..8371376 100644
--- a/arch/arm/boards/at91sam9m10g45ek/init.c
+++ b/arch/arm/boards/at91sam9m10g45ek/init.c
@@ -128,6 +128,42 @@ static void ek_add_device_mci(void)
 static void ek_add_device_mci(void) {}
 #endif
 
+#ifdef CONFIG_LED_GPIO
+struct gpio_led ek_leds[] = {
+	{
+		.gpio		= AT91_PIN_PD30,
+		.led = {
+			.name = "d8",
+		},
+	}, {
+		.active_low	= 1,
+		.gpio		= AT91_PIN_PD0,
+		.led = {
+			.name = "d6",
+		},
+	}, {
+		.active_low	= 1,
+		.gpio		= AT91_PIN_PD31,
+		.led = {
+			.name = "d7",
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
+	led_set_trigger(LED_TRIGGER_HEARTBEAT, &ek_leds[0].led);
+}
+#else
+static void ek_device_add_leds(void) {}
+#endif
+
 static int at91sam9m10g45ek_mem_init(void)
 {
 	at91_add_device_sdram(128 * 1024 * 1024);
@@ -141,6 +177,7 @@ static int at91sam9m10g45ek_devices_init(void)
 	ek_add_device_nand();
 	at91_add_device_eth(&macb_pdata);
 	ek_add_device_mci();
+	ek_device_add_leds();
 
 	devfs_add_partition("nand0", 0x00000, SZ_128K, PARTITION_FIXED, "at91bootstrap_raw");
 	dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
diff --git a/arch/arm/configs/at91sam9m10g45ek_defconfig b/arch/arm/configs/at91sam9m10g45ek_defconfig
index 548fe6c..03e6e4a 100644
--- a/arch/arm/configs/at91sam9m10g45ek_defconfig
+++ b/arch/arm/configs/at91sam9m10g45ek_defconfig
@@ -38,6 +38,8 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
@@ -57,5 +59,8 @@ CONFIG_UBI=y
 CONFIG_MCI=y
 CONFIG_MCI_WRITE=y
 CONFIG_MCI_ATMEL=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_TRIGGERS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
