Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izfG9-0005V2-Ro
 for barebox@lists.infradead.org; Thu, 06 Feb 2020 11:23:51 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  6 Feb 2020 12:23:33 +0100
Message-Id: <20200206112334.14314-8-a.fatoum@pengutronix.de>
In-Reply-To: <20200206112334.14314-1-a.fatoum@pengutronix.de>
References: <20200206112334.14314-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 7/8] led: pwm: support active-low property
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

active-low is an optional property to describe PWMs where the LED is wired
to supply rather than ground. Add barebox support for it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/led/led-pwm.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/led/led-pwm.c b/drivers/led/led-pwm.c
index 419d96eed392..8a358dde88b3 100644
--- a/drivers/led/led-pwm.c
+++ b/drivers/led/led-pwm.c
@@ -41,6 +41,9 @@ static void led_pwm_set(struct led *led, unsigned int brightness)
         duty *= brightness;
         do_div(duty, max);
 
+	if (pwmled->active_low)
+		duty = pwmled->period - duty;
+
 	pwm_config(pwmled->pwm, duty, pwmled->period);
 }
 
@@ -66,6 +69,7 @@ static int led_pwm_of_probe(struct device_d *dev)
 			return ret;
 
 		pwmled->period = pwm_get_period(pwmled->pwm);
+		pwmled->active_low = of_property_read_bool(child, "active-low");
 
 		pwmled->led.set = led_pwm_set;
 
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
