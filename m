Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIvr1-0000uG-Io
 for barebox@lists.infradead.org; Mon, 30 Mar 2020 14:57:33 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 30 Mar 2020 16:57:15 +0200
Message-Id: <20200330145717.667403-11-ahmad@a3f.at>
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
Subject: [PATCH 10/12] PWM: core: add apply API support for polarity
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

Some PWM chips support outputting an inverted PWM signal.
Add API support for this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pwm/core.c | 21 +++++++++++++++++----
 include/pwm.h      |  6 ++++++
 2 files changed, 23 insertions(+), 4 deletions(-)

diff --git a/drivers/pwm/core.c b/drivers/pwm/core.c
index 9206fc0b9eda..05dad93e5ce3 100644
--- a/drivers/pwm/core.c
+++ b/drivers/pwm/core.c
@@ -23,6 +23,7 @@
 /**
  * struct pwm_args - board-dependent PWM arguments
  * @period_ns: reference period
+ * @polarity: reference polarity
  *
  * This structure describes board-dependent arguments attached to a PWM
  * device. These arguments are usually retrieved from the PWM lookup table or
@@ -35,6 +36,7 @@
 
 struct pwm_args {
 	unsigned int period_ns;
+	unsigned int polarity;
 };
 
 struct pwm_device {
@@ -63,7 +65,7 @@ static struct pwm_device *_find_pwm(const char *devname)
 	return NULL;
 }
 
-static int set_duty_period_ns(struct param_d *p, void *priv)
+static int apply_params(struct param_d *p, void *priv)
 {
 	struct pwm_device *pwm = priv;
 
@@ -112,12 +114,12 @@ int pwmchip_add(struct pwm_chip *chip, struct device_d *dev)
 
 	list_add_tail(&pwm->node, &pwm_list);
 
-	p = dev_add_param_uint32(&pwm->dev, "duty_ns", set_duty_period_ns,
+	p = dev_add_param_uint32(&pwm->dev, "duty_ns", apply_params,
 			NULL, &pwm->params.duty_ns, "%u", pwm);
 	if (IS_ERR(p))
 		return PTR_ERR(p);
 
-	p = dev_add_param_uint32(&pwm->dev, "period_ns", set_duty_period_ns,
+	p = dev_add_param_uint32(&pwm->dev, "period_ns", apply_params,
 			NULL, &pwm->params.period_ns, "%u", pwm);
 	if (IS_ERR(p))
 		return PTR_ERR(p);
@@ -127,6 +129,11 @@ int pwmchip_add(struct pwm_chip *chip, struct device_d *dev)
 	if (IS_ERR(p))
 		return PTR_ERR(p);
 
+	p = dev_add_param_bool(&pwm->dev, "inverted", apply_params,
+			       NULL, &pwm->params.polarity, pwm);
+	if (IS_ERR(p))
+		return PTR_ERR(p);
+
 	return 0;
 }
 EXPORT_SYMBOL_GPL(pwmchip_add);
@@ -234,6 +241,11 @@ struct pwm_device *of_pwm_request(struct device_node *np, const char *con_id)
 	if (args.args_count > 1)
 		pwm->args.period_ns = args.args[1];
 
+	pwm->args.polarity = PWM_POLARITY_NORMAL;
+
+	if (args.args_count > 2 && args.args[2] & PWM_POLARITY_INVERTED)
+		pwm->args.polarity = PWM_POLARITY_INVERTED;
+
 	ret = __pwm_request(pwm);
 	if (ret)
 		return ERR_PTR(ret);
@@ -277,7 +289,7 @@ static void pwm_get_args(const struct pwm_device *pwm, struct pwm_args *args)
  * This functions prepares a state that can later be tweaked and applied
  * to the PWM device with pwm_apply_state(). This is a convenient function
  * that first retrieves the current PWM state and the replaces the period
- * with the reference values defined in pwm->args.
+ * and polarity fields with the reference values defined in pwm->args.
  * Once the function returns, you can adjust the ->enabled and ->duty_cycle
  * fields according to your needs before calling pwm_apply_state().
  *
@@ -298,6 +310,7 @@ void pwm_init_state(const struct pwm_device *pwm,
 	pwm_get_args(pwm, &args);
 
 	state->period_ns = args.period_ns;
+	state->polarity = args.polarity;
 	state->duty_ns = 0;
 }
 EXPORT_SYMBOL_GPL(pwm_init_state);
diff --git a/include/pwm.h b/include/pwm.h
index 67ea0f9bcb05..b67ab13d2e2d 100644
--- a/include/pwm.h
+++ b/include/pwm.h
@@ -2,18 +2,24 @@
 #ifndef __PWM_H
 #define __PWM_H
 
+#include <dt-bindings/pwm/pwm.h>
+
 struct pwm_device;
 struct device_d;
 
+#define	PWM_POLARITY_NORMAL	0
+
 /*
  * struct pwm_state - state of a PWM channel
  * @period_ns: PWM period (in nanoseconds)
  * @duty_ns: PWM duty cycle (in nanoseconds)
+ * @polarity: PWM polarity
  * @p_enable: PWM enabled status
  */
 struct pwm_state {
 	unsigned int period_ns;
 	unsigned int duty_ns;
+	unsigned int polarity;
 	unsigned int p_enable;
 };
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
