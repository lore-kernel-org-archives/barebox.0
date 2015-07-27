Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZJke9-0007ac-HB
 for barebox@lists.infradead.org; Mon, 27 Jul 2015 15:48:59 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1ZJimO-0002c4-Vk
 for barebox@lists.infradead.org; Mon, 27 Jul 2015 15:49:21 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 27 Jul 2015 17:48:30 +0200
Message-Id: <1438012113-27213-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 1/4] video: backlight-pwm: depend on GPIOLIB
To: barebox@lists.infradead.org

The PWM backlight driver does not only control PWMs but also GPIOs.

Fixes:
In file included from include/gpio.h:4:0,
                 from drivers/video/backlight-pwm.c:27:
arch/arm/include/asm/gpio.h:5:23: fatal error: mach/gpio.h: No such file or directory

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/video/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index 8e6ae99b9516..921b603a288d 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -100,7 +100,7 @@ config DRIVER_VIDEO_BACKLIGHT
 
 config DRIVER_VIDEO_BACKLIGHT_PWM
 	bool "PWM backlight support"
-	depends on PWM
+	depends on PWM && GPIOLIB
 	depends on DRIVER_VIDEO_BACKLIGHT
 	help
 	  Enable this to get support for backlight devices driven by a PWM.
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
