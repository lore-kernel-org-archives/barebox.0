Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIvqx-0000qU-4c
 for barebox@lists.infradead.org; Mon, 30 Mar 2020 14:57:29 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 30 Mar 2020 16:57:09 +0200
Message-Id: <20200330145717.667403-5-ahmad@a3f.at>
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
Subject: [PATCH 04/12] PWM: core: group PWM state into new struct pwm_state
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

As a prerequisite for moving to the new apply API, we need to group all
state into one struct that we can apply at once. Prepare for this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pwm/core.c | 34 ++++++++++++++++------------------
 include/pwm.h      | 21 +++++++++++++++------
 2 files changed, 31 insertions(+), 24 deletions(-)

diff --git a/drivers/pwm/core.c b/drivers/pwm/core.c
index eaf7de18295e..8d3bfa3bb259 100644
--- a/drivers/pwm/core.c
+++ b/drivers/pwm/core.c
@@ -28,9 +28,7 @@ struct pwm_device {
 	struct device_d		*hwdev;
 	struct device_d		dev;
 
-	unsigned int		duty_ns;
-	unsigned int		period_ns;
-	unsigned int		p_enable;
+	struct pwm_state	params;
 };
 
 static LIST_HEAD(pwm_list);
@@ -51,7 +49,7 @@ static int set_duty_period_ns(struct param_d *p, void *priv)
 {
 	struct pwm_device *pwm = priv;
 
-	pwm_config(pwm, pwm->chip->duty_ns, pwm->chip->period_ns);
+	pwm_config(pwm, pwm->params.duty_ns, pwm->params.period_ns);
 
 	return 0;
 }
@@ -60,7 +58,7 @@ static int set_enable(struct param_d *p, void *priv)
 {
 	struct pwm_device *pwm = priv;
 
-	if (pwm->p_enable)
+	if (pwm->params.p_enable)
 		pwm_enable(pwm);
 	else
 		pwm_disable(pwm);
@@ -99,17 +97,17 @@ int pwmchip_add(struct pwm_chip *chip, struct device_d *dev)
 	list_add_tail(&pwm->node, &pwm_list);
 
 	p = dev_add_param_uint32(&pwm->dev, "duty_ns", set_duty_period_ns,
-			NULL, &pwm->chip->duty_ns, "%u", pwm);
+			NULL, &pwm->params.duty_ns, "%u", pwm);
 	if (IS_ERR(p))
 		return PTR_ERR(p);
 
 	p = dev_add_param_uint32(&pwm->dev, "period_ns", set_duty_period_ns,
-			NULL, &pwm->chip->period_ns, "%u", pwm);
+			NULL, &pwm->params.period_ns, "%u", pwm);
 	if (IS_ERR(p))
 		return PTR_ERR(p);
 
 	p = dev_add_param_bool(&pwm->dev, "enable", set_enable,
-			NULL, &pwm->p_enable, pwm);
+			NULL, &pwm->params.p_enable, pwm);
 	if (IS_ERR(p))
 		return PTR_ERR(p);
 
@@ -242,8 +240,8 @@ EXPORT_SYMBOL_GPL(pwm_free);
  */
 int pwm_config(struct pwm_device *pwm, int duty_ns, int period_ns)
 {
-	pwm->chip->duty_ns = duty_ns;
-	pwm->chip->period_ns = period_ns;
+	pwm->chip->state.duty_ns = duty_ns;
+	pwm->chip->state.period_ns = period_ns;
 
 	if (period_ns == 0)
 		return -EINVAL;
@@ -257,12 +255,12 @@ EXPORT_SYMBOL_GPL(pwm_config);
 
 void pwm_set_period(struct pwm_device *pwm, unsigned int period_ns)
 {
-	pwm->period_ns = period_ns;
+	pwm->chip->state.period_ns = period_ns;
 }
 
 unsigned int pwm_get_period(struct pwm_device *pwm)
 {
-	return pwm->period_ns;
+	return pwm->chip->state.period_ns;
 }
 
 /*
@@ -270,10 +268,10 @@ unsigned int pwm_get_period(struct pwm_device *pwm)
  */
 int pwm_enable(struct pwm_device *pwm)
 {
-	pwm->p_enable = 1;
+	pwm->params.p_enable = 1;
 
-	if (!pwm->chip->p_enable) {
-		pwm->chip->p_enable = 1;
+	if (!pwm->chip->state.p_enable) {
+		pwm->chip->state.p_enable = 1;
 		return pwm->chip->ops->enable(pwm->chip);
 	}
 
@@ -286,12 +284,12 @@ EXPORT_SYMBOL_GPL(pwm_enable);
  */
 void pwm_disable(struct pwm_device *pwm)
 {
-	pwm->p_enable = 0;
+	pwm->params.p_enable = 0;
 
-	if (!pwm->chip->p_enable)
+	if (!pwm->chip->state.p_enable)
 		return;
 
-	pwm->chip->p_enable = 0;
+	pwm->chip->state.p_enable = 0;
 	pwm->chip->ops->disable(pwm->chip);
 }
 EXPORT_SYMBOL_GPL(pwm_disable);
diff --git a/include/pwm.h b/include/pwm.h
index 9897e86545c9..c0ce414cb536 100644
--- a/include/pwm.h
+++ b/include/pwm.h
@@ -37,6 +37,18 @@ unsigned int pwm_get_period(struct pwm_device *pwm);
 
 struct pwm_chip;
 
+/*
+ * struct pwm_state - state of a PWM channel
+ * @period_ns: PWM period (in nanoseconds)
+ * @duty_ns: PWM duty cycle (in nanoseconds)
+ * @p_enable: PWM enabled status
+ */
+struct pwm_state {
+	unsigned int period_ns;
+	unsigned int duty_ns;
+	unsigned int p_enable;
+};
+
 /**
  * struct pwm_ops - PWM operations
  * @request: optional hook for requesting a PWM
@@ -59,17 +71,14 @@ struct pwm_ops {
  * @id: The id of this pwm
  * @devname: unique identifier for this pwm
  * @ops: The callbacks for this PWM
- * @duty_ns: The duty cycle of the PWM, in nano-seconds
- * @period_ns: The period of the PWM, in nano-seconds
- * @p_enable: whether the PWM is enabled
+ * @state: current state of the PWM
  */
 struct pwm_chip {
 	int			id;
 	const char		*devname;
 	const struct pwm_ops	*ops;
-	int			duty_ns;
-	int			period_ns;
-	int			p_enable;
+
+	struct pwm_state	state;
 };
 
 int pwmchip_add(struct pwm_chip *chip, struct device_d *dev);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
