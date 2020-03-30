Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIvqw-0000pz-Fy
 for barebox@lists.infradead.org; Mon, 30 Mar 2020 14:57:28 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 30 Mar 2020 16:57:08 +0200
Message-Id: <20200330145717.667403-4-ahmad@a3f.at>
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
Subject: [PATCH 03/12] PWM: core: remove ineffectual pwm_{set,get}_duty_cycle
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

The setter sets a value unused anywhere, but in the getter.
As the functions are unused, just drop them.
There's pwm_config that can be used for this instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pwm/core.c | 10 ----------
 include/pwm.h      |  2 --
 2 files changed, 12 deletions(-)

diff --git a/drivers/pwm/core.c b/drivers/pwm/core.c
index cae23c98ee2d..eaf7de18295e 100644
--- a/drivers/pwm/core.c
+++ b/drivers/pwm/core.c
@@ -265,16 +265,6 @@ unsigned int pwm_get_period(struct pwm_device *pwm)
 	return pwm->period_ns;
 }
 
-void pwm_set_duty_cycle(struct pwm_device *pwm, unsigned int duty_ns)
-{
-	pwm->duty_ns = duty_ns;
-}
-
-unsigned int pwm_get_duty_cycle(struct pwm_device *pwm)
-{
-	return pwm->duty_ns;
-}
-
 /*
  * pwm_enable - start a PWM output toggling
  */
diff --git a/include/pwm.h b/include/pwm.h
index 98af1299748a..9897e86545c9 100644
--- a/include/pwm.h
+++ b/include/pwm.h
@@ -34,8 +34,6 @@ void pwm_disable(struct pwm_device *pwm);
 
 void pwm_set_period(struct pwm_device *pwm, unsigned int period);
 unsigned int pwm_get_period(struct pwm_device *pwm);
-void pwm_set_duty_cycle(struct pwm_device *pwm, unsigned int duty);
-unsigned int pwm_get_duty_cycle(struct pwm_device *pwm);
 
 struct pwm_chip;
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
