Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIvqz-0000sZ-RA
 for barebox@lists.infradead.org; Mon, 30 Mar 2020 14:57:31 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 30 Mar 2020 16:57:14 +0200
Message-Id: <20200330145717.667403-10-ahmad@a3f.at>
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
Subject: [PATCH 09/12] led: pwm: use new pwm_apply_state API
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

To support PWM_POLARITY_INVERTED for PWM LEDs, we need to to use the
apply API.  Do so.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/led/led-pwm.c | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/led/led-pwm.c b/drivers/led/led-pwm.c
index 4935572ec2d2..19d9d4d48a3d 100644
--- a/drivers/led/led-pwm.c
+++ b/drivers/led/led-pwm.c
@@ -29,22 +29,27 @@ struct pwmled {
 	bool active_low;
 	struct led led;
 	struct pwm_device *pwm;
-	uint32_t period;
 };
 
 static void led_pwm_set(struct led *led, unsigned int brightness)
 {
 	struct pwmled *pwmled = container_of(led, struct pwmled, led);
-	unsigned long long duty =  pwmled->period;
+	unsigned long long duty;
+	struct pwm_state state;
 	unsigned int max = pwmled->led.max_value;
 
-        duty *= brightness;
+	pwm_get_state(pwmled->pwm, &state);
+
+	duty = state.period_ns * brightness;
         do_div(duty, max);
 
 	if (pwmled->active_low)
-		duty = pwmled->period - duty;
+		duty = state.period_ns - duty;
+
+	state.p_enable = true;
+	state.duty_ns = duty;
 
-	pwm_config(pwmled->pwm, duty, pwmled->period);
+	pwm_apply_state(pwmled->pwm, &state);
 }
 
 static int led_pwm_of_probe(struct device_d *dev)
@@ -68,13 +73,11 @@ static int led_pwm_of_probe(struct device_d *dev)
 		if (ret)
 			return ret;
 
-		pwmled->period = pwm_get_period(pwmled->pwm);
 		pwmled->active_low = of_property_read_bool(child, "active-low");
 
 		pwmled->led.set = led_pwm_set;
 
 		led_pwm_set(&pwmled->led, 0);
-		pwm_enable(pwmled->pwm);
 
 		ret = led_register(&pwmled->led);
 		if (ret)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
