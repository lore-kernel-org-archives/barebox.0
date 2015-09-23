Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZeiWh-0008DB-3x
 for barebox@lists.infradead.org; Wed, 23 Sep 2015 11:47:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 23 Sep 2015 13:47:29 +0200
Message-Id: <1443008851-26596-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1443008851-26596-1-git-send-email-s.hauer@pengutronix.de>
References: <1443008851-26596-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/10] video: backlight-pwm: Add regulator support
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/backlight-pwm.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/video/backlight-pwm.c b/drivers/video/backlight-pwm.c
index 8f17f21..ba6f9bc 100644
--- a/drivers/video/backlight-pwm.c
+++ b/drivers/video/backlight-pwm.c
@@ -24,6 +24,7 @@
 #include <pwm.h>
 #include <linux/err.h>
 #include <of.h>
+#include <regulator.h>
 #include <gpio.h>
 #include <of_gpio.h>
 #include <asm-generic/div64.h>
@@ -31,6 +32,7 @@
 struct pwm_backlight {
 	struct backlight_device backlight;
 	struct pwm_device *pwm;
+	struct regulator *power;
 	uint32_t period;
 	unsigned int *levels;
 	int enable_gpio;
@@ -50,6 +52,8 @@ static int backlight_pwm_enable(struct pwm_backlight *pwm_backlight)
 	if (ret)
 		return ret;
 
+	regulator_enable(pwm_backlight->power);
+
 	if (gpio_is_valid(pwm_backlight->enable_gpio)) {
 		gpio_direction_output(pwm_backlight->enable_gpio,
 				pwm_backlight->enable_active_high);
@@ -68,6 +72,9 @@ static int backlight_pwm_disable(struct pwm_backlight *pwm_backlight)
 	if (gpio_is_valid(pwm_backlight->enable_gpio)) {
 		gpio_direction_output(pwm_backlight->enable_gpio,
 				!pwm_backlight->enable_active_high);
+
+		regulator_disable(pwm_backlight->power);
+
 		/*
 		 * Only disable PWM when an enable gpio is present.
 		 * The output of the PWM is undefined when the PWM
@@ -173,6 +180,12 @@ static int backlight_pwm_of_probe(struct device_d *dev)
 	if (ret)
 		return ret;
 
+	pwm_backlight->power = regulator_get(dev, "power");
+	if (IS_ERR(pwm_backlight->power)) {
+		dev_err(dev, "Cannot find regulator\n");
+		return PTR_ERR(pwm_backlight->power);
+	}
+
 	pwm_backlight->period = pwm_get_period(pwm_backlight->pwm);
 
 	pwm_backlight->backlight.brightness_set = backlight_pwm_set;
-- 
2.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
