Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fVZic-0006RU-JT
 for barebox@lists.infradead.org; Wed, 20 Jun 2018 09:48:12 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1fVZiP-00050W-PT
 for barebox@lists.infradead.org; Wed, 20 Jun 2018 11:47:49 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 20 Jun 2018 11:47:49 +0200
Message-Id: <20180620094749.1804-1-l.stach@pengutronix.de>
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
Subject: [PATCH v2] video: backlight: add slew time parameter
To: barebox@lists.infradead.org

Currently the backlight implementation stretches a brightness change over
a period of 100ms. While this is a fine default for PWM backlights, a user
might wish to change this slew time to meet other constraints or even
completely disable it for some backlight devices.

Add a parameter and provide the default value from the backlight device.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
v2: rename variable and dev param to include unit
---
 drivers/video/backlight-pwm.c |  1 +
 drivers/video/backlight.c     | 14 ++++++++++++--
 include/video/backlight.h     |  1 +
 3 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/video/backlight-pwm.c b/drivers/video/backlight-pwm.c
index ec35bd1bc039..997235a74a30 100644
--- a/drivers/video/backlight-pwm.c
+++ b/drivers/video/backlight-pwm.c
@@ -206,6 +206,7 @@ static int backlight_pwm_of_probe(struct device_d *dev)
 
 	pwm_backlight->period = pwm_get_period(pwm_backlight->pwm);
 
+	pwm_backlight->backlight.slew_time_ms = 100;
 	pwm_backlight->backlight.brightness_set = backlight_pwm_set;
 	pwm_backlight->backlight.node = dev->device_node;
 
diff --git a/drivers/video/backlight.c b/drivers/video/backlight.c
index 09c0e47af6fb..30d52fcb685b 100644
--- a/drivers/video/backlight.c
+++ b/drivers/video/backlight.c
@@ -15,6 +15,15 @@ int backlight_set_brightness(struct backlight_device *bl, int brightness)
 	if (brightness == bl->brightness_cur)
 		return 0;
 
+	if (!bl->slew_time_ms) {
+		ret = bl->brightness_set(bl, brightness);
+		if (ret)
+			return ret;
+
+		bl->brightness_cur = bl->brightness = brightness;
+		return 0;
+	}
+
 	if (brightness > bl->brightness_cur)
 		step = 1;
 	else
@@ -34,10 +43,9 @@ int backlight_set_brightness(struct backlight_device *bl, int brightness)
 		if (i == brightness)
 			break;
 
-		udelay(100000 / num_steps);
+		udelay(bl->slew_time_ms * 1000 / num_steps);
 	}
 
-
 	bl->brightness_cur = bl->brightness = brightness;
 
 	return ret;
@@ -72,6 +80,8 @@ int backlight_register(struct backlight_device *bl)
 
 	dev_add_param_uint32(&bl->dev, "brightness", backlight_brightness_set,
 			NULL, &bl->brightness, "%d", bl);
+	dev_add_param_uint32(&bl->dev, "slew_time_ms", NULL, NULL,
+			     &bl->slew_time_ms, "%d", NULL);
 
 	list_add_tail(&bl->list, &backlights);
 
diff --git a/include/video/backlight.h b/include/video/backlight.h
index 8dc49dc113e3..afa384cc9adf 100644
--- a/include/video/backlight.h
+++ b/include/video/backlight.h
@@ -7,6 +7,7 @@ struct backlight_device {
 	int brightness_cur;
 	int brightness_max;
 	int brightness_default;
+	int slew_time_ms; /* time to stretch brightness changes */
 	int (*brightness_set)(struct backlight_device *, int brightness);
 	struct list_head list;
 	struct device_d dev;
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
