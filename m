Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo4.mail-out.ovh.net ([46.105.33.73]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rinav-0004ZH-3f
 for barebox@lists.infradead.org; Thu, 05 Jan 2012 13:43:02 +0000
Received: from mail643.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 9421D1058585
 for <barebox@lists.infradead.org>; Thu,  5 Jan 2012 14:44:06 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  5 Jan 2012 14:36:38 +0100
Message-Id: <1325770598-10931-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1325770598-10931-1-git-send-email-plagnioj@jcrosoft.com>
References: <1325770598-10931-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] at91sam9260/9g20ek: add led support
To: barebox@lists.infradead.org

use ds3 for heartbeat and ds5 for dfu

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9260ek/env/bin/init_board |    1 +
 arch/arm/boards/at91sam9260ek/init.c             |   32 ++++++++++++++++++++++
 arch/arm/configs/at91sam9260ek_defconfig         |    5 +++
 arch/arm/configs/at91sam9g20ek_defconfig         |    5 +++
 4 files changed, 43 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/at91sam9260ek/env/bin/init_board b/arch/arm/boards/at91sam9260ek/env/bin/init_board
index 0a6baf7..977430d 100644
--- a/arch/arm/boards/at91sam9260ek/env/bin/init_board
+++ b/arch/arm/boards/at91sam9260ek/env/bin/init_board
@@ -46,4 +46,5 @@ echo ""
 echo "Start DFU Mode"
 echo ""
 
+led ds5 1
 dfu ${dfu_config} -P ${product_id} -V ${vendor_id}
diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
index a11998a..4bff35e 100644
--- a/arch/arm/boards/at91sam9260ek/init.c
+++ b/arch/arm/boards/at91sam9260ek/init.c
@@ -200,6 +200,37 @@ static struct at91_udc_data __initdata ek_udc_data = {
 	.pullup_pin	= -EINVAL,		/* pull-up driven by UDC */
 };
 
+struct gpio_led leds[] = {
+	{
+		.gpio	= AT91_PIN_PA6,
+		.active_low	= 1,
+		.led	= {
+			.name = "ds5",
+		},
+	}, {
+		.gpio	= AT91_PIN_PA9,
+		.led	= {
+			.name = "ds3",
+		},
+	},
+};
+
+static void __init ek_add_led(void)
+{
+	int i;
+
+#ifdef CONFIG_AT91_HAVE_2MMC
+	leds[0].gpio = AT91_PIN_PB8;
+	leds[1].gpio = AT91_PIN_PB9;
+#endif
+
+	for (i = 0; i < ARRAY_SIZE(leds); i++) {
+		at91_set_gpio_output(leds[i].gpio, leds[i].active_low);
+		led_gpio_register(&leds[i]);
+	}
+	led_set_trigger(LED_TRIGGER_HEARTBEAT, &leds[1].led);
+}
+
 static int at91sam9260ek_mem_init(void)
 {
 	at91_add_device_sdram(64 * 1024 * 1024);
@@ -227,6 +258,7 @@ static int at91sam9260ek_devices_init(void)
 	at91_add_device_udc(&ek_udc_data);
 	ek_usb_add_device_mci();
 	ek_add_device_buttons();
+	ek_add_led();
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
 	ek_set_board_type();
diff --git a/arch/arm/configs/at91sam9260ek_defconfig b/arch/arm/configs/at91sam9260ek_defconfig
index f6d0f25..613dd9f 100644
--- a/arch/arm/configs/at91sam9260ek_defconfig
+++ b/arch/arm/configs/at91sam9260ek_defconfig
@@ -39,6 +39,8 @@ CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
@@ -60,6 +62,9 @@ CONFIG_USB_GADGET_SERIAL=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_ATMEL=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_TRIGGERS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/configs/at91sam9g20ek_defconfig b/arch/arm/configs/at91sam9g20ek_defconfig
index 16b6252..18bd2ae 100644
--- a/arch/arm/configs/at91sam9g20ek_defconfig
+++ b/arch/arm/configs/at91sam9g20ek_defconfig
@@ -40,6 +40,8 @@ CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
@@ -61,6 +63,9 @@ CONFIG_USB_GADGET_SERIAL=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
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
