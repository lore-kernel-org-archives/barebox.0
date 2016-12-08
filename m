Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cF286-0002mX-QO
 for barebox@lists.infradead.org; Thu, 08 Dec 2016 17:05:12 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Thu,  8 Dec 2016 18:04:41 +0100
Message-Id: <1481216681-24393-3-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1481216681-24393-1-git-send-email-jlu@pengutronix.de>
References: <1481216681-24393-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 3/3] PWM: update enable status when using the internal API
To: barebox@lists.infradead.org

Without these, 'devinfo pwmX' will show enabled=0 even though the PWM
was enabled (for example by a pwm-backlight).

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 drivers/pwm/core.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/pwm/core.c b/drivers/pwm/core.c
index 360520195a05..ee65619c4ea5 100644
--- a/drivers/pwm/core.c
+++ b/drivers/pwm/core.c
@@ -281,6 +281,8 @@ unsigned int pwm_get_duty_cycle(struct pwm_device *pwm)
  */
 int pwm_enable(struct pwm_device *pwm)
 {
+	pwm->p_enable = 1;
+
 	if (!test_and_set_bit(FLAG_ENABLED, &pwm->flags))
 		return pwm->chip->ops->enable(pwm->chip);
 
@@ -293,6 +295,8 @@ EXPORT_SYMBOL_GPL(pwm_enable);
  */
 void pwm_disable(struct pwm_device *pwm)
 {
+	pwm->p_enable = 0;
+
 	if (test_and_clear_bit(FLAG_ENABLED, &pwm->flags))
 		pwm->chip->ops->disable(pwm->chip);
 }
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
