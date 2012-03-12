Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo2.mail-out.ovh.net ([188.165.53.149]
 helo=mo2.mail-out.ovh.net)
 by bombadil.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S73SB-0005Wg-BW
 for barebox@lists.infradead.org; Mon, 12 Mar 2012 11:30:16 +0000
Received: from mail621.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 2FC35DC6A9B
 for <barebox@lists.infradead.org>; Mon, 12 Mar 2012 12:33:06 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 12 Mar 2012 12:17:55 +0100
Message-Id: <1331551082-7730-7-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 07/14] at91sam9261ek/9g10ek: add leds support
To: barebox@lists.infradead.org, Nicolas Ferre <nicolas.ferre@atmel.com>
Cc: Patrice VILCHEZ <patrice.vilchez@atmel.com>

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9261ek/init.c     |   38 ++++++++++++++++++++++++++++++
 arch/arm/configs/at91sam9261ek_defconfig |    5 ++++
 arch/arm/configs/at91sam9g10ek_defconfig |    5 ++++
 3 files changed, 48 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
index 2272fd6..6327b59 100644
--- a/arch/arm/boards/at91sam9261ek/init.c
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -39,6 +39,7 @@
 #include <mach/at91sam9_smc.h>
 #include <mach/sam9_smc.h>
 #include <dm9000.h>
+#include <led.h>
 
 static struct atmel_nand_data nand_pdata = {
 	.ale		= 22,
@@ -134,6 +135,42 @@ static void __init ek_add_device_dm9000(void)
 static void __init ek_add_device_dm9000(void) {}
 #endif /* CONFIG_DRIVER_NET_DM9K */
 
+#ifdef CONFIG_LED_GPIO
+struct gpio_led ek_leds[] = {
+	{
+		.gpio		= AT91_PIN_PA23,
+		.led = {
+			.name = "ds1",
+		},
+	}, {
+		.gpio		= AT91_PIN_PA14,
+		.active_low	= 1,
+		.led = {
+			.name = "ds7",
+		},
+	}, {
+		.gpio		= AT91_PIN_PA13,
+		.active_low	= 1,
+		.led = {
+			.name = "ds8",
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
 static int at91sam9261ek_mem_init(void)
 {
 	at91_add_device_sdram(64 * 1024 * 1024);
@@ -147,6 +184,7 @@ static int at91sam9261ek_devices_init(void)
 
 	ek_add_device_nand();
 	ek_add_device_dm9000();
+	ek_device_add_leds();
 
 	devfs_add_partition("nand0", 0x00000, SZ_128K, PARTITION_FIXED, "at91bootstrap_raw");
 	devfs_add_partition("nand0", SZ_128K, SZ_256K, PARTITION_FIXED, "self_raw");
diff --git a/arch/arm/configs/at91sam9261ek_defconfig b/arch/arm/configs/at91sam9261ek_defconfig
index b60407f..f9f0ddd 100644
--- a/arch/arm/configs/at91sam9261ek_defconfig
+++ b/arch/arm/configs/at91sam9261ek_defconfig
@@ -34,6 +34,8 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
@@ -47,3 +49,6 @@ CONFIG_MTD=y
 CONFIG_NAND=y
 CONFIG_NAND_ATMEL=y
 CONFIG_UBI=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_TRIGGERS=y
diff --git a/arch/arm/configs/at91sam9g10ek_defconfig b/arch/arm/configs/at91sam9g10ek_defconfig
index d54e42c..d074bdc 100644
--- a/arch/arm/configs/at91sam9g10ek_defconfig
+++ b/arch/arm/configs/at91sam9g10ek_defconfig
@@ -28,6 +28,8 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
@@ -39,3 +41,6 @@ CONFIG_MTD=y
 CONFIG_NAND=y
 CONFIG_NAND_ATMEL=y
 CONFIG_UBI=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_TRIGGERS=y
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
