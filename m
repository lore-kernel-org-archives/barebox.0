Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
 (helo=metis.ext.pengutronix.de)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y4Bux-0006Ty-Mt
 for barebox@lists.infradead.org; Thu, 25 Dec 2014 17:09:44 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Thu, 25 Dec 2014 18:09:03 +0100
Message-Id: <1419527345-9301-6-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1419527345-9301-1-git-send-email-jlu@pengutronix.de>
References: <1419527345-9301-1-git-send-email-jlu@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 6/8] ARM: imx233-olinuxino: use LED1 as heartbeat
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c b/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
index 901e713..b87a676 100644
--- a/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
+++ b/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
@@ -20,6 +20,7 @@
 #include <common.h>
 #include <init.h>
 #include <gpio.h>
+#include <led.h>
 #include <environment.h>
 #include <envfs.h>
 #include <errno.h>
@@ -54,9 +55,20 @@ static void olinuxino_init_usb(void)
 	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, IMX_USB_BASE, NULL);
 }
 
+static struct gpio_led led1 = {
+	.gpio = 65,
+	.led = {
+		.name = "led1",
+	}
+};
+
 static int imx23_olinuxino_devices_init(void)
 {
 	armlinux_set_architecture(MACH_TYPE_IMX233_OLINUXINO);
+	defaultenv_append_directory(defaultenv_imx233_olinuxino);
+
+	led_gpio_register(&led1);
+	led_set_trigger(LED_TRIGGER_HEARTBEAT, &led1.led);
 
 	add_generic_device("mxs_mci", DEVICE_ID_DYNAMIC, NULL, IMX_SSP1_BASE,
 					0x8000, IORESOURCE_MEM, &mci_pdata);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
