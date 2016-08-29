Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1beOcg-0001xv-WE
 for barebox@lists.infradead.org; Mon, 29 Aug 2016 15:37:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 29 Aug 2016 17:36:55 +0200
Message-Id: <1472485015-16010-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] video: backlight: fix the value of 'brightness_max'
To: Barebox List <barebox@lists.infradead.org>

Fixes: 87c6a88 video/backlight-pwm: fix the value of 'brightness_max'.

brightness_max should really contain the number of brightness steps, so
the number of elements in the brightness array.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/backlight-pwm.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/video/backlight-pwm.c b/drivers/video/backlight-pwm.c
index 7f1715d..2915dba 100644
--- a/drivers/video/backlight-pwm.c
+++ b/drivers/video/backlight-pwm.c
@@ -156,6 +156,8 @@ static int pwm_backlight_parse_dt(struct device_d *dev,
 		if (ret < 0)
 			return ret;
 
+		pwm_backlight->backlight.brightness_max = length - 1;
+
 		for (i = 0; i < length; i++)
 			if (pwm_backlight->levels[i] > pwm_backlight->scale)
 				pwm_backlight->scale = pwm_backlight->levels[i];
@@ -165,8 +167,8 @@ static int pwm_backlight_parse_dt(struct device_d *dev,
 	} else {
 		/* We implicitly assume here a linear levels array { 0, 1, 2, ... 100 } */
 		pwm_backlight->scale = 100;
+		pwm_backlight->backlight.brightness_max = pwm_backlight->scale;
 	}
-	pwm_backlight->backlight.brightness_max = pwm_backlight->scale;
 
 	pwm_backlight->enable_gpio = of_get_named_gpio_flags(node, "enable-gpios", 0, &flags);
 
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
