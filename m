Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PTyVF-0000MI-67
	for barebox@lists.infradead.org; Sat, 18 Dec 2010 15:15:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 18 Dec 2010 16:15:09 +0100
Message-Id: <1292685309-32326-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1292685309-32326-1-git-send-email-s.hauer@pengutronix.de>
References: <1292685309-32326-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/7] pcm038: led testing. Not to be committed
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pcm038/pcm038.c |   24 +++++++++++++++++++++++-
 1 files changed, 23 insertions(+), 1 deletions(-)

diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 1dbc6b6..cfca7d3 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -44,6 +44,7 @@
 #include <mach/spi.h>
 #include <mach/iomux-mx27.h>
 #include <mach/devices-imx27.h>
+#include <led.h>
 
 #include "pll.h"
 
@@ -192,11 +193,26 @@ static void pcm038_mmu_init(void)
 }
 #endif
 
+struct gpio_led led1 = {
+	.gpio = 10,
+};
+
+struct gpio_led led2 = {
+	.gpio = 11,
+	.active_low = 1,
+};
+
+struct gpio_rgb_led led3 = {
+	.gpio_r = 12,
+	.gpio_g = 13,
+	.gpio_b = 14,
+	.active_low = 1,
+};
+
 static int pcm038_devices_init(void)
 {
 	int i;
 	char *envdev;
-
 	unsigned int mode[] = {
 		PD0_AIN_FEC_TXD0,
 		PD1_AIN_FEC_TXD1,
@@ -270,6 +286,12 @@ static int pcm038_devices_init(void)
 
 	pcm038_mmu_init();
 
+	led_gpio_register(&led1);
+	led_gpio_register(&led2);
+	led_gpio_rgb_register(&led3);
+	led_set_trigger(led_trigger_net_tx, &led1.led);
+	led_set_trigger(led_trigger_net_rx, &led2.led);
+
 	/* configure 16 bit nor flash on cs0 */
 	CS0U = 0x0000CC03;
 	CS0L = 0xa0330D01;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
