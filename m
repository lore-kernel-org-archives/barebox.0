Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIvqz-0000s9-7i
 for barebox@lists.infradead.org; Mon, 30 Mar 2020 14:57:30 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 30 Mar 2020 16:57:13 +0200
Message-Id: <20200330145717.667403-9-ahmad@a3f.at>
In-Reply-To: <20200330145717.667403-1-ahmad@a3f.at>
References: <20200330145717.667403-1-ahmad@a3f.at>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 08/12] video: backlight-pwm: use new pwm_apply_state API
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

Use pwm_apply_state we can avoid having to store PWM state in the
instance structure and in future we have an easy way to support new
parameters like inverted duty cycle.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/video/backlight-pwm.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/video/backlight-pwm.c b/drivers/video/backlight-pwm.c
index 9111a42d7544..8b6494dac929 100644
--- a/drivers/video/backlight-pwm.c
+++ b/drivers/video/backlight-pwm.c
@@ -33,7 +33,6 @@ struct pwm_backlight {
 	struct backlight_device backlight;
 	struct pwm_device *pwm;
 	struct regulator *power;
-	uint32_t period;
 	unsigned int *levels;
 	int enable_gpio;
 	int enable_active_high;
@@ -91,13 +90,16 @@ static int backlight_pwm_disable(struct pwm_backlight *pwm_backlight)
 static int compute_duty_cycle(struct pwm_backlight *pwm_backlight, int brightness)
 {
 	int duty_cycle;
+	struct pwm_state state;
+
+	pwm_get_state(pwm_backlight->pwm, &state);
 
 	if (pwm_backlight->levels)
 		duty_cycle = pwm_backlight->levels[brightness];
 	else
 		duty_cycle = brightness;
 
-	return duty_cycle * pwm_backlight->period / pwm_backlight->scale;
+	return duty_cycle * state.period_ns / pwm_backlight->scale;
 }
 
 static int backlight_pwm_set(struct backlight_device *backlight,
@@ -105,9 +107,11 @@ static int backlight_pwm_set(struct backlight_device *backlight,
 {
 	struct pwm_backlight *pwm_backlight = container_of(backlight,
 			struct pwm_backlight, backlight);
+	struct pwm_state state;
 
-	pwm_config(pwm_backlight->pwm, compute_duty_cycle(pwm_backlight, brightness),
-		   pwm_backlight->period);
+	pwm_get_state(pwm_backlight->pwm, &state);
+	state.duty_ns = compute_duty_cycle(pwm_backlight, brightness);
+	pwm_apply_state(pwm_backlight->pwm, &state);
 
 	if (brightness)
 		return backlight_pwm_enable(pwm_backlight);
@@ -192,7 +196,6 @@ static int backlight_pwm_of_probe(struct device_d *dev)
 
 	pwm_backlight = xzalloc(sizeof(*pwm_backlight));
 	pwm_backlight->pwm = pwm;
-	pwm_backlight->period = pwm_get_period(pwm);
 
 	ret = pwm_backlight_parse_dt(dev, pwm_backlight);
 	if (ret)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
