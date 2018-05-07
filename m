Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fFhPY-0006P9-TC
 for barebox@lists.infradead.org; Mon, 07 May 2018 14:46:46 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1fFhPL-0005e1-F8
 for barebox@lists.infradead.org; Mon, 07 May 2018 16:46:31 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon,  7 May 2018 16:46:31 +0200
Message-Id: <20180507144631.11130-1-l.stach@pengutronix.de>
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
Subject: [PATCH] video: backlight: add slew time parameter
To: barebox@lists.infradead.org

Currently the backlight implementation stretches a brightness change over
a period of 100ms. While this is a fine default for PWM backlights, a user
might wish to change this slew time to meet other constraints or even
completely disable it for some backlight devices.

Add a parameter and provide the default value from the backlight device.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/video/backlight-pwm.c |  1 +
 drivers/video/backlight.c     | 14 ++++++++++++--
 include/video/backlight.h     |  1 +
 3 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/video/backlight-pwm.c b/drivers/video/backlight-pwm.c
index ec35bd1bc039..43dc2a36dfd2 100644
--- a/drivers/video/backlight-pwm.c
+++ b/drivers/video/backlight-pwm.c
@@ -206,6 +206,7 @@ static int backlight_pwm_of_probe(struct device_d *dev)
 
 	pwm_backlight->period = pwm_get_period(pwm_backlight->pwm);
 
+	pwm_backlight->backlight.slew_time = 100;
 	pwm_backlight->backlight.brightness_set = backlight_pwm_set;
 	pwm_backlight->backlight.node = dev->device_node;
 
diff --git a/drivers/video/backlight.c b/drivers/video/backlight.c
index 09c0e47af6fb..cbb83087a00b 100644
--- a/drivers/video/backlight.c
+++ b/drivers/video/backlight.c
@@ -15,6 +15,15 @@ int backlight_set_brightness(struct backlight_device *bl, int brightness)
 	if (brightness == bl->brightness_cur)
 		return 0;
 
+	if (!bl->slew_time) {
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
+		udelay(bl->slew_time * 1000 / num_steps);
 	}
 
-
 	bl->brightness_cur = bl->brightness = brightness;
 
 	return ret;
@@ -72,6 +80,8 @@ int backlight_register(struct backlight_device *bl)
 
 	dev_add_param_uint32(&bl->dev, "brightness", backlight_brightness_set,
 			NULL, &bl->brightness, "%d", bl);
+	dev_add_param_uint32(&bl->dev, "slew_time", NULL, NULL, &bl->slew_time,
+			"%d", NULL);
 
 	list_add_tail(&bl->list, &backlights);
 
diff --git a/include/video/backlight.h b/include/video/backlight.h
index 8dc49dc113e3..52f90a761db5 100644
--- a/include/video/backlight.h
+++ b/include/video/backlight.h
@@ -7,6 +7,7 @@ struct backlight_device {
 	int brightness_cur;
 	int brightness_max;
 	int brightness_default;
+	int slew_time; /* time to stretch brightness changes, in ms */
 	int (*brightness_set)(struct backlight_device *, int brightness);
 	struct list_head list;
 	struct device_d dev;
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
