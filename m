Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PwvGW-0001Yc-UZ
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 11:39:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Mar 2011 12:39:41 +0100
Message-Id: <1299584385-6016-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1299584385-6016-1-git-send-email-s.hauer@pengutronix.de>
References: <1299584385-6016-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] ARM scb9328: Add gpio led support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/scb9328/scb9328.c |   24 +++++++++++++++++++++++-
 1 files changed, 23 insertions(+), 1 deletions(-)

diff --git a/arch/arm/boards/scb9328/scb9328.c b/arch/arm/boards/scb9328/scb9328.c
index 35c7fdf..a98d9fe 100644
--- a/arch/arm/boards/scb9328/scb9328.c
+++ b/arch/arm/boards/scb9328/scb9328.c
@@ -31,6 +31,7 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <dm9000.h>
+#include <led.h>
 
 static struct device_d cfi_dev = {
 	.id	  = -1,
@@ -68,9 +69,30 @@ static struct device_d dm9000_dev = {
 	.platform_data = &dm9000_data,
 };
 
-static int scb9328_devices_init(void) {
+struct gpio_led leds[] = {
+	{
+		.gpio = 32 + 21,
+	}, {
+		.gpio = 32 + 22,
+	}, {
+		.gpio = 32 + 23,
+	}, {
+		.gpio = 32 + 24,
+	},
+};
+
+static int scb9328_devices_init(void)
+{
+	int i;
 
 	imx_gpio_mode(PA23_PF_CS5);
+	imx_gpio_mode(GPIO_PORTB | GPIO_GPIO | GPIO_OUT | 21);
+	imx_gpio_mode(GPIO_PORTB | GPIO_GPIO | GPIO_OUT | 22);
+	imx_gpio_mode(GPIO_PORTB | GPIO_GPIO | GPIO_OUT | 23);
+	imx_gpio_mode(GPIO_PORTB | GPIO_GPIO | GPIO_OUT | 24);
+
+	for (i = 0; i < ARRAY_SIZE(leds); i++)
+		led_gpio_register(&leds[i]);
 
 /* CS3 becomes CS3 by clearing reset default bit 1 in FMCR */
 	FMCR = 0x1;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
