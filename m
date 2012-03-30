Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo3.mail-out.ovh.net ([178.32.98.231]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SDU9m-00074C-0c
 for barebox@lists.infradead.org; Fri, 30 Mar 2012 05:13:51 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 23D5CFF8BD0
 for <barebox@lists.infradead.org>; Fri, 30 Mar 2012 07:14:17 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 30 Mar 2012 06:58:41 +0200
Message-Id: <1333083528-24289-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120330045639.GZ444@game.jcrosoft.org>
References: <20120330045639.GZ444@game.jcrosoft.org>
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
Subject: [PATCH 2/9] at91rm9200ek: add leds support
To: barebox@lists.infradead.org, Nicolas Ferre <nicolas.ferre@atmel.com>
Cc: Patrice VILCHEZ <patrice.vilchez@atmel.com>

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91rm9200ek/init.c     |   38 +++++++++++++++++++++++++++++++
 arch/arm/configs/at91rm9200ek_defconfig |    5 ++++
 2 files changed, 43 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/at91rm9200ek/init.c b/arch/arm/boards/at91rm9200ek/init.c
index 308c066..3a5da53 100644
--- a/arch/arm/boards/at91rm9200ek/init.c
+++ b/arch/arm/boards/at91rm9200ek/init.c
@@ -51,6 +51,43 @@ static struct at91_usbh_data ek_usbh_data = {
 	.ports		= 2,
 };
 
+#ifdef CONFIG_LED_GPIO
+struct gpio_led ek_leds[] = {
+	{
+		.gpio		= AT91_PIN_PB0,
+		.active_low	= 1,
+		.led = {
+			.name = "green",
+		},
+	}, {
+		.gpio		= AT91_PIN_PB1,
+		.active_low	= 1,
+		.led = {
+			.name = "yellow",
+		},
+	}, {
+		.gpio		= AT91_PIN_PB2,
+		.active_low	= 1,
+		.led = {
+			.name = "red",
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
 static int at91rm9200ek_devices_init(void)
 {
 	/*
@@ -64,6 +101,7 @@ static int at91rm9200ek_devices_init(void)
 	add_cfi_flash_device(0, AT91_CHIPSELECT_0, 0, 0);
 	/* USB Host */
 	at91_add_device_usbh_ohci(&ek_usbh_data);
+	ek_device_add_leds();
 
 #if defined(CONFIG_DRIVER_CFI) || defined(CONFIG_DRIVER_CFI_OLD)
 	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self");
diff --git a/arch/arm/configs/at91rm9200ek_defconfig b/arch/arm/configs/at91rm9200ek_defconfig
index b514f3d..8802d5a 100644
--- a/arch/arm/configs/at91rm9200ek_defconfig
+++ b/arch/arm/configs/at91rm9200ek_defconfig
@@ -34,6 +34,8 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
@@ -51,6 +53,9 @@ CONFIG_DRIVER_CFI=y
 CONFIG_CFI_BUFFER_WRITE=y
 CONFIG_MTD=y
 CONFIG_UBI=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_TRIGGERS=y
 CONFIG_FS_CRAMFS=y
 CONFIG_SHA1=y
 CONFIG_SHA256=y
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
