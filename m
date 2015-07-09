Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZD6CH-0000dO-ML
 for barebox@lists.infradead.org; Thu, 09 Jul 2015 07:24:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  9 Jul 2015 09:24:08 +0200
Message-Id: <1436426657-5266-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1436426657-5266-1-git-send-email-s.hauer@pengutronix.de>
References: <1436426657-5266-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/13] ARM: i.MX51 Efikasb: Disable backlight earlier
To: Barebox List <barebox@lists.infradead.org>

Set the backlight enable gpio to disabled earlier during startup
to avoid flicker when the pinmux is configured but not yet the
enable gpio.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/efika-mx-smartbook/board.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/boards/efika-mx-smartbook/board.c b/arch/arm/boards/efika-mx-smartbook/board.c
index 4a38afd..f023d70 100644
--- a/arch/arm/boards/efika-mx-smartbook/board.c
+++ b/arch/arm/boards/efika-mx-smartbook/board.c
@@ -187,6 +187,7 @@ static int efikamx_usb_init(void)
 	gpio_direction_output(GPIO_WIFI_RESET, 0);
 	gpio_direction_output(GPIO_SMSC3317_RESET, 0);
 	gpio_direction_output(GPIO_HUB_RESET, 0);
+	gpio_direction_output(GPIO_BACKLIGHT_POWER, 1);
 
 	mdelay(10);
 
@@ -241,8 +242,6 @@ static int efikamx_late_init(void)
 
 	defaultenv_append_directory(defaultenv_efikasb);
 
-	gpio_direction_output(GPIO_BACKLIGHT_POWER, 1);
-
 	for (i = 0; i < ARRAY_SIZE(leds); i++)
 		led_gpio_register(&leds[i]);
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
