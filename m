Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIvqw-0000pw-80
 for barebox@lists.infradead.org; Mon, 30 Mar 2020 14:57:28 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 30 Mar 2020 16:57:07 +0200
Message-Id: <20200330145717.667403-3-ahmad@a3f.at>
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
Subject: [PATCH 02/12] PWM: core: remove FLAG_ENABLED
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

In preparation for moving to a struct pwm_state like Linux does, turn
the flag into a variable.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pwm/core.c | 12 ++++++++----
 include/pwm.h      |  2 ++
 2 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/pwm/core.c b/drivers/pwm/core.c
index c8016999f0d2..cae23c98ee2d 100644
--- a/drivers/pwm/core.c
+++ b/drivers/pwm/core.c
@@ -24,7 +24,6 @@ struct pwm_device {
 	struct			pwm_chip *chip;
 	unsigned long		flags;
 #define FLAG_REQUESTED	0
-#define FLAG_ENABLED	1
 	struct list_head	node;
 	struct device_d		*hwdev;
 	struct device_d		dev;
@@ -283,8 +282,10 @@ int pwm_enable(struct pwm_device *pwm)
 {
 	pwm->p_enable = 1;
 
-	if (!test_and_set_bit(FLAG_ENABLED, &pwm->flags))
+	if (!pwm->chip->p_enable) {
+		pwm->chip->p_enable = 1;
 		return pwm->chip->ops->enable(pwm->chip);
+	}
 
 	return 0;
 }
@@ -297,7 +298,10 @@ void pwm_disable(struct pwm_device *pwm)
 {
 	pwm->p_enable = 0;
 
-	if (test_and_clear_bit(FLAG_ENABLED, &pwm->flags))
-		pwm->chip->ops->disable(pwm->chip);
+	if (!pwm->chip->p_enable)
+		return;
+
+	pwm->chip->p_enable = 0;
+	pwm->chip->ops->disable(pwm->chip);
 }
 EXPORT_SYMBOL_GPL(pwm_disable);
diff --git a/include/pwm.h b/include/pwm.h
index ca01f5b53d1c..98af1299748a 100644
--- a/include/pwm.h
+++ b/include/pwm.h
@@ -63,6 +63,7 @@ struct pwm_ops {
  * @ops: The callbacks for this PWM
  * @duty_ns: The duty cycle of the PWM, in nano-seconds
  * @period_ns: The period of the PWM, in nano-seconds
+ * @p_enable: whether the PWM is enabled
  */
 struct pwm_chip {
 	int			id;
@@ -70,6 +71,7 @@ struct pwm_chip {
 	const struct pwm_ops	*ops;
 	int			duty_ns;
 	int			period_ns;
+	int			p_enable;
 };
 
 int pwmchip_add(struct pwm_chip *chip, struct device_d *dev);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
