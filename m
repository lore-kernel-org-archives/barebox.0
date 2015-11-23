Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a0mqR-0004CR-1P
 for barebox@lists.infradead.org; Mon, 23 Nov 2015 08:51:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 23 Nov 2015 09:51:11 +0100
Message-Id: <1448268672-26204-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] video: pwm-backlight: Honour discrete brightness levels from
 dt
To: Barebox List <barebox@lists.infradead.org>

If probed from device tree we have an array of pwm duty cycle levels
in the brightness-levels property. Although the driver parsed the property,
the values have been ignored. Make use of these flags so that the driver
can work for example with inverted PWMs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/backlight-pwm.c | 27 ++++++++++++++++++++-------
 1 file changed, 20 insertions(+), 7 deletions(-)

diff --git a/drivers/video/backlight-pwm.c b/drivers/video/backlight-pwm.c
index ba6f9bc..91435f8 100644
--- a/drivers/video/backlight-pwm.c
+++ b/drivers/video/backlight-pwm.c
@@ -39,6 +39,7 @@ struct pwm_backlight {
 	int enable_active_high;
 	int max_value;
 	int enabled;
+	unsigned int scale;
 };
 
 static int backlight_pwm_enable(struct pwm_backlight *pwm_backlight)
@@ -87,18 +88,26 @@ static int backlight_pwm_disable(struct pwm_backlight *pwm_backlight)
 	return 0;
 }
 
+static int compute_duty_cycle(struct pwm_backlight *pwm_backlight, int brightness)
+{
+	int duty_cycle;
+
+	if (pwm_backlight->levels)
+		duty_cycle = pwm_backlight->levels[brightness];
+	else
+		duty_cycle = brightness;
+
+	return duty_cycle * pwm_backlight->period / pwm_backlight->scale;
+}
+
 static int backlight_pwm_set(struct backlight_device *backlight,
 		int brightness)
 {
 	struct pwm_backlight *pwm_backlight = container_of(backlight,
 			struct pwm_backlight, backlight);
-	unsigned long long duty =  pwm_backlight->period;
-	unsigned int max = pwm_backlight->backlight.brightness_max;
-
-	duty *= brightness;
-	do_div(duty, max);
 
-	pwm_config(pwm_backlight->pwm, duty, pwm_backlight->period);
+	pwm_config(pwm_backlight->pwm, compute_duty_cycle(pwm_backlight, brightness),
+		   pwm_backlight->period);
 
 	if (brightness)
 		return backlight_pwm_enable(pwm_backlight);
@@ -113,7 +122,7 @@ static int pwm_backlight_parse_dt(struct device_d *dev,
 	struct property *prop;
 	int length;
 	u32 value;
-	int ret;
+	int ret, i;
 	enum of_gpio_flags flags;
 
 	if (!node)
@@ -141,6 +150,10 @@ static int pwm_backlight_parse_dt(struct device_d *dev,
 		if (ret < 0)
 			return ret;
 
+		for (i = 0; i <=  pwm_backlight->backlight.brightness_max; i++)
+			if (pwm_backlight->levels[i] > pwm_backlight->scale)
+				pwm_backlight->scale = pwm_backlight->levels[i];
+
 		ret = of_property_read_u32(node, "default-brightness-level",
 					   &value);
 		if (ret < 0)
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
