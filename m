Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIvqy-0000rh-HW
 for barebox@lists.infradead.org; Mon, 30 Mar 2020 14:57:30 +0000
Received: from geraet.fritz.box (i577B69AA.versanet.de [87.123.105.170])
 (Authenticated sender: ahmad@a3f.at)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 046C740011
 for <barebox@lists.infradead.org>; Mon, 30 Mar 2020 14:57:26 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 30 Mar 2020 16:57:12 +0200
Message-Id: <20200330145717.667403-8-ahmad@a3f.at>
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
Subject: [PATCH 07/12] PWM: core: apply initial state in of_pwm_request
To: barebox@lists.infradead.org

This functions prepares a state that can later be tweaked and applied
to the PWM device with pwm_apply_state(). This is a convenient function
that first retrieves the current PWM state and the replaces the period
with the reference values defined in pwm->args.
Once the function returns, you can adjust the ->enabled and ->duty_cycle
fields according to your needs before calling pwm_apply_state().

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/pwm/core.c | 70 +++++++++++++++++++++++++++++++++++++++++++---
 include/pwm.h      |  6 ++++
 2 files changed, 72 insertions(+), 4 deletions(-)

diff --git a/drivers/pwm/core.c b/drivers/pwm/core.c
index b42b3092a3f8..9206fc0b9eda 100644
--- a/drivers/pwm/core.c
+++ b/drivers/pwm/core.c
@@ -20,6 +20,23 @@
 #include <linux/list.h>
 #include <linux/err.h>
 
+/**
+ * struct pwm_args - board-dependent PWM arguments
+ * @period_ns: reference period
+ *
+ * This structure describes board-dependent arguments attached to a PWM
+ * device. These arguments are usually retrieved from the PWM lookup table or
+ * device tree.
+ *
+ * Do not confuse this with the PWM state: PWM arguments represent the initial
+ * configuration that users want to use on this PWM device rather than the
+ * current PWM hardware state.
+ */
+
+struct pwm_args {
+	unsigned int period_ns;
+};
+
 struct pwm_device {
 	struct			pwm_chip *chip;
 	unsigned long		flags;
@@ -29,6 +46,7 @@ struct pwm_device {
 	struct device_d		dev;
 
 	struct pwm_state	params;
+	struct pwm_args		args;
 };
 
 static LIST_HEAD(pwm_list);
@@ -194,6 +212,7 @@ struct pwm_device *of_pwm_request(struct device_node *np, const char *con_id)
 	struct of_phandle_args args;
 	int index = 0;
 	struct pwm_device *pwm;
+	struct pwm_state state;
 	int ret;
 
 	if (con_id)
@@ -213,11 +232,17 @@ struct pwm_device *of_pwm_request(struct device_node *np, const char *con_id)
 	}
 
 	if (args.args_count > 1)
-		pwm->chip->state.period_ns = args.args[1];
+		pwm->args.period_ns = args.args[1];
 
 	ret = __pwm_request(pwm);
 	if (ret)
-		return ERR_PTR(-ret);
+		return ERR_PTR(ret);
+
+	pwm_init_state(pwm, &state);
+
+	ret = pwm_apply_state(pwm, &state);
+	if (ret)
+		return ERR_PTR(ret);
 
 	return pwm;
 }
@@ -233,13 +258,50 @@ void pwm_free(struct pwm_device *pwm)
 }
 EXPORT_SYMBOL_GPL(pwm_free);
 
-void pwm_get_state(const struct pwm_device *pwm,
-		   struct pwm_state *state)
+void pwm_get_state(const struct pwm_device *pwm, struct pwm_state *state)
 {
 	*state = pwm->chip->state;
 }
 EXPORT_SYMBOL_GPL(pwm_get_state);
 
+static void pwm_get_args(const struct pwm_device *pwm, struct pwm_args *args)
+{
+	*args = pwm->args;
+}
+
+/**
+ * pwm_init_state() - prepare a new state to be applied with pwm_apply_state()
+ * @pwm: PWM device
+ * @state: state to fill with the prepared PWM state
+ *
+ * This functions prepares a state that can later be tweaked and applied
+ * to the PWM device with pwm_apply_state(). This is a convenient function
+ * that first retrieves the current PWM state and the replaces the period
+ * with the reference values defined in pwm->args.
+ * Once the function returns, you can adjust the ->enabled and ->duty_cycle
+ * fields according to your needs before calling pwm_apply_state().
+ *
+ * ->duty_cycle is initially set to zero to avoid cases where the current
+ * ->duty_cycle value exceed the pwm_args->period one, which would trigger
+ * an error if the user calls pwm_apply_state() without adjusting ->duty_cycle
+ * first.
+ */
+void pwm_init_state(const struct pwm_device *pwm,
+		    struct pwm_state *state)
+{
+	struct pwm_args args;
+
+	/* First get the current state. */
+	pwm_get_state(pwm, state);
+
+	/* Then fill it with the reference config */
+	pwm_get_args(pwm, &args);
+
+	state->period_ns = args.period_ns;
+	state->duty_ns = 0;
+}
+EXPORT_SYMBOL_GPL(pwm_init_state);
+
 int pwm_apply_state(struct pwm_device *pwm, const struct pwm_state *state)
 {
 	struct pwm_chip *chip = pwm->chip;
diff --git a/include/pwm.h b/include/pwm.h
index 36b1eb8131fb..67ea0f9bcb05 100644
--- a/include/pwm.h
+++ b/include/pwm.h
@@ -29,6 +29,12 @@ struct pwm_device *of_pwm_request(struct device_node *np, const char *con_id);
  */
 void pwm_free(struct pwm_device *pwm);
 
+/*
+ * pwm_init_state - prepare a new state from device tree args
+ */
+void pwm_init_state(const struct pwm_device *pwm,
+		    struct pwm_state *state);
+
 /*
  * pwm_config - change a PWM device configuration
  */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
