Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIvqy-0000rD-53
 for barebox@lists.infradead.org; Mon, 30 Mar 2020 14:57:30 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 30 Mar 2020 16:57:11 +0200
Message-Id: <20200330145717.667403-7-ahmad@a3f.at>
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
Subject: [PATCH 06/12] PWM: core: retire pwm_set_period
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

Client code can use pwm_apply_state or pwm_config to set period as well
as duty cycle. Having a pwm_set_period thus doesn't add any value.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pwm/core.c | 7 +------
 include/pwm.h      | 1 -
 2 files changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/pwm/core.c b/drivers/pwm/core.c
index 89b9756d0a2d..b42b3092a3f8 100644
--- a/drivers/pwm/core.c
+++ b/drivers/pwm/core.c
@@ -213,7 +213,7 @@ struct pwm_device *of_pwm_request(struct device_node *np, const char *con_id)
 	}
 
 	if (args.args_count > 1)
-		pwm_set_period(pwm, args.args[1]);
+		pwm->chip->state.period_ns = args.args[1];
 
 	ret = __pwm_request(pwm);
 	if (ret)
@@ -280,11 +280,6 @@ int pwm_config(struct pwm_device *pwm, int duty_ns, int period_ns)
 }
 EXPORT_SYMBOL_GPL(pwm_config);
 
-void pwm_set_period(struct pwm_device *pwm, unsigned int period_ns)
-{
-	pwm->chip->state.period_ns = period_ns;
-}
-
 unsigned int pwm_get_period(struct pwm_device *pwm)
 {
 	return pwm->chip->state.period_ns;
diff --git a/include/pwm.h b/include/pwm.h
index 7431ecfb42bf..36b1eb8131fb 100644
--- a/include/pwm.h
+++ b/include/pwm.h
@@ -49,7 +49,6 @@ int pwm_enable(struct pwm_device *pwm);
  */
 void pwm_disable(struct pwm_device *pwm);
 
-void pwm_set_period(struct pwm_device *pwm, unsigned int period);
 unsigned int pwm_get_period(struct pwm_device *pwm);
 
 struct pwm_chip;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
