Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIvqv-0000pi-NT
 for barebox@lists.infradead.org; Mon, 30 Mar 2020 14:57:27 +0000
Received: from geraet.fritz.box (i577B69AA.versanet.de [87.123.105.170])
 (Authenticated sender: ahmad@a3f.at)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 588D940009
 for <barebox@lists.infradead.org>; Mon, 30 Mar 2020 14:57:23 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 30 Mar 2020 16:57:06 +0200
Message-Id: <20200330145717.667403-2-ahmad@a3f.at>
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
Subject: [PATCH 01/12] led: pwm: always initialize PWM LEDs as inactive
To: barebox@lists.infradead.org

While the active-low property is respected when setting brightness,
it's ignored when initializing the LED as off in the probe function
and thus LEDs are active on startup. Fix this.

Fixes: 769eb5e7bb ("led: pwm: support active-low property")
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/led/led-pwm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/led/led-pwm.c b/drivers/led/led-pwm.c
index 8a358dde88b3..4935572ec2d2 100644
--- a/drivers/led/led-pwm.c
+++ b/drivers/led/led-pwm.c
@@ -73,7 +73,7 @@ static int led_pwm_of_probe(struct device_d *dev)
 
 		pwmled->led.set = led_pwm_set;
 
-		pwm_config(pwmled->pwm, 0, pwmled->period);
+		led_pwm_set(&pwmled->led, 0);
 		pwm_enable(pwmled->pwm);
 
 		ret = led_register(&pwmled->led);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
