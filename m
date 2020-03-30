Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIvqx-0000ql-K4
 for barebox@lists.infradead.org; Mon, 30 Mar 2020 14:57:30 +0000
Received: from geraet.fritz.box (i577B69AA.versanet.de [87.123.105.170])
 (Authenticated sender: ahmad@a3f.at)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 02E8B4000D
 for <barebox@lists.infradead.org>; Mon, 30 Mar 2020 14:57:25 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 30 Mar 2020 16:57:10 +0200
Message-Id: <20200330145717.667403-6-ahmad@a3f.at>
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
Subject: [PATCH 05/12] PWM: core: remove old PWM API in favor of Linux ->apply
To: barebox@lists.infradead.org

Linux has the new atomic PWM API in addition to the old one for backward
compatibility. We only have three PWM drivers in here, so port them over
to the new ->apply API.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pwm/core.c    | 66 +++++++++++++++++++++---------
 drivers/pwm/pwm-imx.c | 32 ++++++---------
 drivers/pwm/pwm-mxs.c | 37 +++++++----------
 drivers/pwm/pxa_pwm.c | 93 +++++++++++++++++++++++--------------------
 include/pwm.h         | 48 ++++++++++++++--------
 5 files changed, 156 insertions(+), 120 deletions(-)

diff --git a/drivers/pwm/core.c b/drivers/pwm/core.c
index 8d3bfa3bb259..89b9756d0a2d 100644
--- a/drivers/pwm/core.c
+++ b/drivers/pwm/core.c
@@ -49,9 +49,7 @@ static int set_duty_period_ns(struct param_d *p, void *priv)
 {
 	struct pwm_device *pwm = priv;
 
-	pwm_config(pwm, pwm->params.duty_ns, pwm->params.period_ns);
-
-	return 0;
+	return pwm_apply_state(pwm, &pwm->params);
 }
 
 static int set_enable(struct param_d *p, void *priv)
@@ -235,21 +233,50 @@ void pwm_free(struct pwm_device *pwm)
 }
 EXPORT_SYMBOL_GPL(pwm_free);
 
+void pwm_get_state(const struct pwm_device *pwm,
+		   struct pwm_state *state)
+{
+	*state = pwm->chip->state;
+}
+EXPORT_SYMBOL_GPL(pwm_get_state);
+
+int pwm_apply_state(struct pwm_device *pwm, const struct pwm_state *state)
+{
+	struct pwm_chip *chip = pwm->chip;
+	int ret = -EINVAL;
+
+	if (state->period_ns == 0)
+		goto err;
+
+	if (state->duty_ns > state->period_ns)
+		goto err;
+
+	ret = chip->ops->apply(chip, state);
+err:
+	if (ret == 0)
+		chip->state = *state;
+
+	pwm->params = chip->state;
+	return ret;
+}
+
 /*
  * pwm_config - change a PWM device configuration
  */
 int pwm_config(struct pwm_device *pwm, int duty_ns, int period_ns)
 {
-	pwm->chip->state.duty_ns = duty_ns;
-	pwm->chip->state.period_ns = period_ns;
+	struct pwm_state state;
 
-	if (period_ns == 0)
+	if (duty_ns < 0 || period_ns < 0)
 		return -EINVAL;
 
-	if (duty_ns > period_ns)
-		return -EINVAL;
+	pwm_get_state(pwm, &state);
+	if (state.duty_ns == duty_ns && state.period_ns == period_ns)
+		return 0;
 
-	return pwm->chip->ops->config(pwm->chip, duty_ns, period_ns);
+	state.duty_ns = duty_ns;
+	state.period_ns = period_ns;
+	return pwm_apply_state(pwm, &state);
 }
 EXPORT_SYMBOL_GPL(pwm_config);
 
@@ -268,14 +295,14 @@ unsigned int pwm_get_period(struct pwm_device *pwm)
  */
 int pwm_enable(struct pwm_device *pwm)
 {
-	pwm->params.p_enable = 1;
+	struct pwm_state state;
 
-	if (!pwm->chip->state.p_enable) {
-		pwm->chip->state.p_enable = 1;
-		return pwm->chip->ops->enable(pwm->chip);
-	}
+	pwm_get_state(pwm, &state);
+	if (state.p_enable)
+		return 0;
 
-	return 0;
+	state.p_enable = true;
+	return pwm_apply_state(pwm, &state);
 }
 EXPORT_SYMBOL_GPL(pwm_enable);
 
@@ -284,12 +311,13 @@ EXPORT_SYMBOL_GPL(pwm_enable);
  */
 void pwm_disable(struct pwm_device *pwm)
 {
-	pwm->params.p_enable = 0;
+	struct pwm_state state;
 
-	if (!pwm->chip->state.p_enable)
+	pwm_get_state(pwm, &state);
+	if (!state.p_enable)
 		return;
 
-	pwm->chip->state.p_enable = 0;
-	pwm->chip->ops->disable(pwm->chip);
+	state.p_enable = false;
+	pwm_apply_state(pwm, &state);
 }
 EXPORT_SYMBOL_GPL(pwm_disable);
diff --git a/drivers/pwm/pwm-imx.c b/drivers/pwm/pwm-imx.c
index b620e502f262..8407b2f5e1bd 100644
--- a/drivers/pwm/pwm-imx.c
+++ b/drivers/pwm/pwm-imx.c
@@ -155,37 +155,31 @@ static void imx_pwm_set_enable_v2(struct pwm_chip *chip, bool enable)
 	writel(val, imx->mmio_base + MX3_PWMCR);
 }
 
-static int imx_pwm_config(struct pwm_chip *chip,
-		int duty_ns, int period_ns)
+static int imx_pwm_apply(struct pwm_chip *chip, const struct pwm_state *state)
 {
 	struct imx_chip *imx = to_imx_chip(chip);
+	bool enabled;
 	int ret;
 
-	ret = imx->config(chip, duty_ns, period_ns);
+	enabled = chip->state.p_enable;
 
-	return ret;
-}
+	if (enabled && !state->p_enable) {
+		imx->set_enable(chip, false);
+		return 0;
+	}
 
-static int imx_pwm_enable(struct pwm_chip *chip)
-{
-	struct imx_chip *imx = to_imx_chip(chip);
+	ret = imx->config(chip, state->duty_ns, state->period_ns);
+	if (ret)
+		return ret;
 
-	imx->set_enable(chip, true);
+	if (!enabled && state->p_enable)
+		imx->set_enable(chip, true);
 
 	return 0;
 }
 
-static void imx_pwm_disable(struct pwm_chip *chip)
-{
-	struct imx_chip *imx = to_imx_chip(chip);
-
-	imx->set_enable(chip, false);
-}
-
 static struct pwm_ops imx_pwm_ops = {
-	.enable = imx_pwm_enable,
-	.disable = imx_pwm_disable,
-	.config = imx_pwm_config,
+	.apply = imx_pwm_apply,
 };
 
 struct imx_pwm_data {
diff --git a/drivers/pwm/pwm-mxs.c b/drivers/pwm/pwm-mxs.c
index e72f1dbcb0df..a06040ac3268 100644
--- a/drivers/pwm/pwm-mxs.c
+++ b/drivers/pwm/pwm-mxs.c
@@ -52,18 +52,26 @@ struct mxs_pwm {
 
 #define to_mxs_pwm_chip(_chip) container_of(_chip, struct mxs_pwm_chip, chip)
 
-static int mxs_pwm_config(struct pwm_chip *chip, int duty_ns, int period_ns)
+static int mxs_pwm_apply(struct pwm_chip *chip, const struct pwm_state *state)
 {
 	struct mxs_pwm_chip *mxs = to_mxs_pwm_chip(chip);
 	int div = 0;
 	unsigned int period_cycles, duty_cycles;
 	unsigned long rate;
 	unsigned long long c;
+	bool enabled;
+
+	enabled = chip->state.p_enable;
+
+	if (enabled && !state->p_enable) {
+		writel(1 << mxs->chip.id, mxs->mxs->base + PWM_CTRL + CLR);
+		return 0;
+	}
 
 	rate = clk_get_rate(mxs->mxs->clk);
 	while (1) {
 		c = rate / cdiv[div];
-		c = c * period_ns;
+		c = c * state->period_ns;
 		do_div(c, 1000000000);
 		if (c < PERIOD_PERIOD_MAX)
 			break;
@@ -73,8 +81,8 @@ static int mxs_pwm_config(struct pwm_chip *chip, int duty_ns, int period_ns)
 	}
 
 	period_cycles = c;
-	c *= duty_ns;
-	do_div(c, period_ns);
+	c *= state->duty_ns;
+	do_div(c, state->period_ns);
 	duty_cycles = c;
 
 	writel(duty_cycles << 16,
@@ -83,29 +91,14 @@ static int mxs_pwm_config(struct pwm_chip *chip, int duty_ns, int period_ns)
 	       PERIOD_INACTIVE_LOW | PERIOD_CDIV(div),
 			mxs->mxs->base + PWM_PERIOD0 + mxs->chip.id * 0x20);
 
-	return 0;
-}
-
-static int mxs_pwm_enable(struct pwm_chip *chip)
-{
-	struct mxs_pwm_chip *mxs = to_mxs_pwm_chip(chip);
-
-	writel(1 << mxs->chip.id, mxs->mxs->base + PWM_CTRL + SET);
+	if (!enabled && state->p_enable)
+		writel(1 << mxs->chip.id, mxs->mxs->base + PWM_CTRL + SET);
 
 	return 0;
 }
 
-static void mxs_pwm_disable(struct pwm_chip *chip)
-{
-	struct mxs_pwm_chip *mxs = to_mxs_pwm_chip(chip);
-
-	writel(1 << mxs->chip.id, mxs->mxs->base + PWM_CTRL + CLR);
-}
-
 static struct pwm_ops mxs_pwm_ops = {
-	.config = mxs_pwm_config,
-	.enable = mxs_pwm_enable,
-	.disable = mxs_pwm_disable,
+	.apply = mxs_pwm_apply,
 };
 
 static int mxs_pwm_probe(struct device_d *dev)
diff --git a/drivers/pwm/pxa_pwm.c b/drivers/pwm/pxa_pwm.c
index 4575817e946c..78d1489d570f 100644
--- a/drivers/pwm/pxa_pwm.c
+++ b/drivers/pwm/pxa_pwm.c
@@ -41,19 +41,60 @@ static struct pxa_pwm_chip *to_pxa_pwm_chip(struct pwm_chip *chip)
 	return container_of(chip, struct pxa_pwm_chip, chip);
 }
 
+static int pxa_pwm_enable(struct pxa_pwm_chip *pxa_pwm)
+{
+	switch (pxa_pwm->id) {
+	case 0:
+	case 2:
+		CKEN |= CKEN_PWM0;
+		break;
+	case 1:
+	case 3:
+		CKEN |= CKEN_PWM1;
+		break;
+	default:
+		return -EINVAL;
+	}
+	return 0;
+}
+
+static void pxa_pwm_disable(struct pxa_pwm_chip *pxa_pwm)
+{
+	switch (pxa_pwm->id) {
+	case 0:
+	case 2:
+		CKEN &= ~CKEN_PWM0;
+		break;
+	case 1:
+	case 3:
+		CKEN &= ~CKEN_PWM1;
+		break;
+	default:
+		break;
+	}
+}
+
 /*
  * period_ns    = 10^9 * (PRESCALE + 1) * (PV + 1) / PWM_CLK_RATE
  * duty_ns      = 10^9 * (PRESCALE + 1) * DC / PWM_CLK_RATE
  * PWM_CLK_RATE = 13 MHz
  */
-static int pxa_pwm_config(struct pwm_chip *chip, int duty_ns, int period_ns)
+static int pxa_pwm_apply(struct pwm_chip *chip, const struct pwm_state *state)
 {
 	unsigned long long c;
 	unsigned long period_cycles, prescale, pv, dc;
 	struct pxa_pwm_chip *pxa_pwm = to_pxa_pwm_chip(chip);
+	bool enabled;
+
+	enabled = chip->state.p_enable;
+
+	if (enabled && !state->p_enable) {
+		pxa_pwm_disable(pxa_pwm);
+		return 0;
+	}
 
 	c = pxa_get_pwmclk();
-	c = c * period_ns;
+	c = c * state->period_ns;
 	do_div(c, 1000000000);
 	period_cycles = c;
 
@@ -65,10 +106,10 @@ static int pxa_pwm_config(struct pwm_chip *chip, int duty_ns, int period_ns)
 	if (prescale > 63)
 		return -EINVAL;
 
-	if (duty_ns == period_ns)
+	if (state->duty_ns == state->period_ns)
 		dc = PWMDCR_FD;
 	else
-		dc = (pv + 1) * duty_ns / period_ns;
+		dc = (pv + 1) * state->duty_ns / state->period_ns;
 
 	/* NOTE: the clock to PWM has to be enabled first
 	 * before writing to the registers
@@ -77,50 +118,16 @@ static int pxa_pwm_config(struct pwm_chip *chip, int duty_ns, int period_ns)
 	writel(dc, pxa_pwm->iobase + PWMDCR);
 	writel(pv, pxa_pwm->iobase + PWMPCR);
 
-	return 0;
-}
-
-static int pxa_pwm_enable(struct pwm_chip *chip)
-{
-	struct pxa_pwm_chip *pxa_pwm = to_pxa_pwm_chip(chip);
-
-	switch (pxa_pwm->id) {
-	case 0:
-	case 2:
-		CKEN |= CKEN_PWM0;
-		break;
-	case 1:
-	case 3:
-		CKEN |= CKEN_PWM1;
-		break;
-	default:
-		return -EINVAL;
+	if (!enabled && state->p_enable) {
+		pxa_pwm_enable(pxa_pwm);
+		return 0;
 	}
-	return 0;
-}
 
-static void pxa_pwm_disable(struct pwm_chip *chip)
-{
-	struct pxa_pwm_chip *pxa_pwm = to_pxa_pwm_chip(chip);
-
-	switch (pxa_pwm->id) {
-	case 0:
-	case 2:
-		CKEN &= ~CKEN_PWM0;
-		break;
-	case 1:
-	case 3:
-		CKEN &= ~CKEN_PWM1;
-		break;
-	default:
-		break;
-	}
+	return 0;
 }
 
 static struct pwm_ops pxa_pwm_ops = {
-	.config = pxa_pwm_config,
-	.enable = pxa_pwm_enable,
-	.disable = pxa_pwm_disable,
+	.apply = pxa_pwm_apply,
 };
 
 static int pxa_pwm_probe(struct device_d *dev)
diff --git a/include/pwm.h b/include/pwm.h
index c0ce414cb536..7431ecfb42bf 100644
--- a/include/pwm.h
+++ b/include/pwm.h
@@ -5,6 +5,18 @@
 struct pwm_device;
 struct device_d;
 
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
 /*
  * pwm_request - request a PWM device
  */
@@ -17,6 +29,11 @@ struct pwm_device *of_pwm_request(struct device_node *np, const char *con_id);
  */
 void pwm_free(struct pwm_device *pwm);
 
+/*
+ * pwm_config - change a PWM device configuration
+ */
+int pwm_apply_state(struct pwm_device *pwm, const struct pwm_state *state);
+
 /*
  * pwm_config - change a PWM device configuration
  */
@@ -37,33 +54,30 @@ unsigned int pwm_get_period(struct pwm_device *pwm);
 
 struct pwm_chip;
 
-/*
- * struct pwm_state - state of a PWM channel
- * @period_ns: PWM period (in nanoseconds)
- * @duty_ns: PWM duty cycle (in nanoseconds)
- * @p_enable: PWM enabled status
+/**
+ * pwm_get_state() - retrieve the current PWM state
+ * @pwm: PWM device
+ * @state: state to fill with the current PWM state
  */
-struct pwm_state {
-	unsigned int period_ns;
-	unsigned int duty_ns;
-	unsigned int p_enable;
-};
+void pwm_get_state(const struct pwm_device *pwm, struct pwm_state *state);
+
+/**
+ * pwm_apply_state() - apply the passed PWM state
+ * @pwm: PWM device
+ * @state: state to apply to pwm device
+ */
+int pwm_apply_state(struct pwm_device *pwm, const struct pwm_state *state);
 
 /**
  * struct pwm_ops - PWM operations
  * @request: optional hook for requesting a PWM
  * @free: optional hook for freeing a PWM
- * @config: configure duty cycles and period length for this PWM
- * @enable: enable PWM output toggling
- * @disable: disable PWM output toggling
+ * @apply: apply specified pwm state
  */
 struct pwm_ops {
 	int (*request)(struct pwm_chip *chip);
 	void (*free)(struct pwm_chip *chip);
-	int (*config)(struct pwm_chip *chip, int duty_ns,
-						int period_ns);
-	int (*enable)(struct pwm_chip *chip);
-	void (*disable)(struct pwm_chip *chip);
+	int (*apply)(struct pwm_chip *chip, const struct pwm_state *state);
 };
 
 /**
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
