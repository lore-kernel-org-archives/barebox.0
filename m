Delivery-date: Mon, 15 Apr 2024 07:36:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwF1J-001ZRJ-2W
	for lore@lore.pengutronix.de;
	Mon, 15 Apr 2024 07:36:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwF1G-0006kH-SH
	for lore@pengutronix.de; Mon, 15 Apr 2024 07:36:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+wtxEYzRrDucvWr+jKMZNnU9KLgm/WToOB/FVRc5aHQ=; b=jxFpDBZL/4W3jTlPa9u7z/nCbB
	GQXCYidIxR0LOQxIzkjy0wLI59GqvyMgtK1uwU8htqJ3ozDY/1rkZ8uTMULIilWQ3C/pYm0ckYLxQ
	eG2UwtTVrihqno30w9Lt1f6CbUdS4gI4JNtnxCxJEjuVZulnEa7tFydiylik8+So5TuTMxPtKq+EZ
	Vz/eEThKsth7YXQ89K5PL+pz6qoKBbaigjp6Kw5m+ytuXmk98mevJ3sp5iBWCdqmP3CXsXk1k4SXG
	gjJNMEYTJdCyA9Rjjct3UipehloPIp7VitAN7iET91FjMw2rs+vIWViWYQFQA9Gyv76omHwZb8Bqf
	xP8DbDAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwF0m-000000071Qt-2g0C;
	Mon, 15 Apr 2024 05:36:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwF0d-000000071LQ-45J1
	for barebox@lists.infradead.org;
	Mon, 15 Apr 2024 05:36:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwF0c-0005rQ-Ph; Mon, 15 Apr 2024 07:36:02 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwF0c-00CMnJ-Br; Mon, 15 Apr 2024 07:36:02 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwF0c-001YQH-0v;
	Mon, 15 Apr 2024 07:36:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Apr 2024 07:35:57 +0200
Message-Id: <20240415053600.370622-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240415053600.370622-1-a.fatoum@pengutronix.de>
References: <20240415053600.370622-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240414_223604_437616_1D39C826 
X-CRM114-Status: GOOD (  20.93  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/7] PWM: align struct pwm_state member names with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This introduces no functional change, but removes some churn of porting
Linux drivers by aligning the naming of the frequently used struct
pwm_state.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/pwm.c             | 32 ++++++++++++++++----------------
 drivers/led/led-pwm.c      |  8 ++++----
 drivers/pwm/core.c         | 32 ++++++++++++++++----------------
 drivers/pwm/pwm-atmel.c    | 14 +++++++-------
 drivers/pwm/pwm-imx.c      | 10 +++++-----
 drivers/pwm/pwm-mxs.c      | 12 ++++++------
 drivers/pwm/pwm-stm32.c    |  8 ++++----
 drivers/pwm/pxa_pwm.c      | 12 ++++++------
 drivers/sound/pwm-beeper.c |  6 +++---
 include/pwm.h              | 18 +++++++++---------
 10 files changed, 76 insertions(+), 76 deletions(-)

diff --git a/commands/pwm.c b/commands/pwm.c
index 5d41fa8ff42b..b86f865d55aa 100644
--- a/commands/pwm.c
+++ b/commands/pwm.c
@@ -15,10 +15,10 @@
 
 static bool is_equal_state(struct pwm_state *state1, struct pwm_state *state2)
 {
-	return (state1->period_ns == state2->period_ns)
-		&& (state1->duty_ns == state2->duty_ns)
+	return (state1->period == state2->period)
+		&& (state1->duty_cycle == state2->duty_cycle)
 		&& (state1->polarity == state2->polarity)
-		&& (state1->p_enable == state2->p_enable);
+		&& (state1->enabled == state2->enabled);
 }
 
 static int do_pwm_cmd(int argc, char *argv[])
@@ -109,12 +109,12 @@ static int do_pwm_cmd(int argc, char *argv[])
 	/* argc will be at least 3 with a valid devname */
 	if (verbose || (argc <= 3)) {
 		printf("pwm params for '%s':\n", devname);
-		printf("  period   : %u (ns)\n", state.period_ns);
-		printf("  duty     : %u (ns)\n", state.duty_ns);
-		printf("  enabled  : %d\n", state.p_enable);
+		printf("  period   : %u (ns)\n", state.period);
+		printf("  duty     : %u (ns)\n", state.duty_cycle);
+		printf("  enabled  : %d\n", state.enabled);
 		printf("  polarity : %s\n", state.polarity == 0 ? "Normal" : "Inverted");
-		if (state.period_ns)
-			printf("  freq     : %lu (Hz)\n", HZ_FROM_NANOSECONDS(state.period_ns));
+		if (state.period)
+			printf("  freq     : %lu (Hz)\n", HZ_FROM_NANOSECONDS(state.period));
 		else
 			printf("  freq     : -\n");
 
@@ -122,7 +122,7 @@ static int do_pwm_cmd(int argc, char *argv[])
 		return 0;
 	}
 
-	if ((state.period_ns == 0) && (freq < 0) && (period < 0)) {
+	if ((state.period == 0) && (freq < 0) && (period < 0)) {
 		printf(" need to know some timing info: freq or period\n");
 		pwm_free(pwm);
 		return COMMAND_ERROR;
@@ -135,24 +135,24 @@ static int do_pwm_cmd(int argc, char *argv[])
 
 	/* period */
 	if (freq > 0) {
-		state.p_enable = true;
-		state.period_ns = HZ_TO_NANOSECONDS(freq);
+		state.enabled = true;
+		state.period = HZ_TO_NANOSECONDS(freq);
 		if (use_default_width && (width < 0)) {
 			width = 50;
 		}
 	} else if (period > 0) {
-		state.p_enable = true;
-		state.period_ns = period;
+		state.enabled = true;
+		state.period = period;
 	}
 
 	/* duty */
 	if (width >= 0) {
 		pwm_set_relative_duty_cycle(&state, width, 100);
 	} else if (duty >= 0) {
-		state.duty_ns = duty;
+		state.duty_cycle = duty;
 	}
 
-	if (state.duty_ns > state.period_ns) {
+	if (state.duty_cycle > state.period) {
 		printf(" duty_ns must not be greater than period_ns\n");
 	}
 
@@ -167,7 +167,7 @@ static int do_pwm_cmd(int argc, char *argv[])
 	 * output (eg if duty => 0) and stopping in one command
 	 */
 	if (stop > 0) {
-		state.p_enable = false;
+		state.enabled = false;
 		error = pwm_apply_state(pwm, &state);
 		if (error < 0)
 			printf(" error while stopping: %d\n", error);
diff --git a/drivers/led/led-pwm.c b/drivers/led/led-pwm.c
index 2ffb72e692cd..6f4abf97c8b7 100644
--- a/drivers/led/led-pwm.c
+++ b/drivers/led/led-pwm.c
@@ -27,14 +27,14 @@ static void led_pwm_set(struct led *led, unsigned int brightness)
 
 	pwm_get_state(pwmled->pwm, &state);
 
-	duty = state.period_ns * brightness;
+	duty = state.period * brightness;
         do_div(duty, max);
 
 	if (pwmled->active_low)
-		duty = state.period_ns - duty;
+		duty = state.period - duty;
 
-	state.p_enable = true;
-	state.duty_ns = duty;
+	state.enabled = true;
+	state.duty_cycle = duty;
 
 	pwm_apply_state(pwmled->pwm, &state);
 }
diff --git a/drivers/pwm/core.c b/drivers/pwm/core.c
index 706c4515e9a8..7e090cc144af 100644
--- a/drivers/pwm/core.c
+++ b/drivers/pwm/core.c
@@ -76,7 +76,7 @@ static int set_enable(struct param_d *p, void *priv)
 {
 	struct pwm_device *pwm = priv;
 
-	if (pwm->params.p_enable)
+	if (pwm->params.enabled)
 		pwm_enable(pwm);
 	else
 		pwm_disable(pwm);
@@ -118,17 +118,17 @@ int pwmchip_add(struct pwm_chip *chip)
 	list_add_tail(&pwm->node, &pwm_list);
 
 	p = dev_add_param_uint32(&pwm->dev, "duty_ns", apply_params,
-			NULL, &pwm->params.duty_ns, "%u", pwm);
+			NULL, &pwm->params.duty_cycle, "%u", pwm);
 	if (IS_ERR(p))
 		return PTR_ERR(p);
 
 	p = dev_add_param_uint32(&pwm->dev, "period_ns", apply_params,
-			NULL, &pwm->params.period_ns, "%u", pwm);
+			NULL, &pwm->params.period, "%u", pwm);
 	if (IS_ERR(p))
 		return PTR_ERR(p);
 
 	p = dev_add_param_bool(&pwm->dev, "enable", set_enable,
-			NULL, &pwm->params.p_enable, pwm);
+			NULL, &pwm->params.enabled, pwm);
 	if (IS_ERR(p))
 		return PTR_ERR(p);
 
@@ -309,9 +309,9 @@ void pwm_init_state(const struct pwm_device *pwm,
 	/* Then fill it with the reference config */
 	pwm_get_args(pwm, &args);
 
-	state->period_ns = args.period_ns;
+	state->period = args.period_ns;
 	state->polarity = args.polarity;
-	state->duty_ns = 0;
+	state->duty_cycle = 0;
 }
 EXPORT_SYMBOL_GPL(pwm_init_state);
 
@@ -320,10 +320,10 @@ int pwm_apply_state(struct pwm_device *pwm, const struct pwm_state *state)
 	struct pwm_chip *chip = pwm->chip;
 	int ret = -EINVAL;
 
-	if (state->period_ns == 0)
+	if (state->period == 0)
 		goto err;
 
-	if (state->duty_ns > state->period_ns)
+	if (state->duty_cycle > state->period)
 		goto err;
 
 	ret = chip->ops->apply(chip, pwm, state);
@@ -346,18 +346,18 @@ int pwm_config(struct pwm_device *pwm, int duty_ns, int period_ns)
 		return -EINVAL;
 
 	pwm_get_state(pwm, &state);
-	if (state.duty_ns == duty_ns && state.period_ns == period_ns)
+	if (state.duty_cycle == duty_ns && state.period == period_ns)
 		return 0;
 
-	state.duty_ns = duty_ns;
-	state.period_ns = period_ns;
+	state.duty_cycle = duty_ns;
+	state.period = period_ns;
 	return pwm_apply_state(pwm, &state);
 }
 EXPORT_SYMBOL_GPL(pwm_config);
 
 unsigned int pwm_get_period(struct pwm_device *pwm)
 {
-	return pwm->chip->state.period_ns;
+	return pwm->chip->state.period;
 }
 
 /*
@@ -368,10 +368,10 @@ int pwm_enable(struct pwm_device *pwm)
 	struct pwm_state state;
 
 	pwm_get_state(pwm, &state);
-	if (state.p_enable)
+	if (state.enabled)
 		return 0;
 
-	state.p_enable = true;
+	state.enabled = true;
 	return pwm_apply_state(pwm, &state);
 }
 EXPORT_SYMBOL_GPL(pwm_enable);
@@ -384,10 +384,10 @@ void pwm_disable(struct pwm_device *pwm)
 	struct pwm_state state;
 
 	pwm_get_state(pwm, &state);
-	if (!state.p_enable)
+	if (!state.enabled)
 		return;
 
-	state.p_enable = false;
+	state.enabled = false;
 	pwm_apply_state(pwm, &state);
 }
 EXPORT_SYMBOL_GPL(pwm_disable);
diff --git a/drivers/pwm/pwm-atmel.c b/drivers/pwm/pwm-atmel.c
index 331a6e97124f..851676c0dd87 100644
--- a/drivers/pwm/pwm-atmel.c
+++ b/drivers/pwm/pwm-atmel.c
@@ -194,7 +194,7 @@ static int atmel_pwm_calculate_cprd_and_pres(struct pwm_chip *chip,
 					     unsigned long *cprd, u32 *pres)
 {
 	struct atmel_pwm_chip *atmel_pwm = to_atmel_pwm_chip(chip);
-	unsigned long long cycles = state->period_ns;
+	unsigned long long cycles = state->period;
 	int shift;
 
 	/* Calculate the period cycles and prescale value */
@@ -227,7 +227,7 @@ static void atmel_pwm_calculate_cdty(const struct pwm_state *state,
 				     unsigned long clkrate, unsigned long cprd,
 				     u32 pres, unsigned long *cdty)
 {
-	unsigned long long cycles = state->duty_ns;
+	unsigned long long cycles = state->duty_cycle;
 
 	cycles *= clkrate;
 	do_div(cycles, NSEC_PER_SEC);
@@ -298,12 +298,12 @@ static int atmel_pwm_apply(struct pwm_chip *chip,
 
 	cstate = chip->state;
 
-	if (state->p_enable) {
+	if (state->enabled) {
 		unsigned long clkrate = clk_get_rate(atmel_pwm->clk);
 
-		if (cstate.p_enable &&
+		if (cstate.enabled &&
 		    cstate.polarity == state->polarity &&
-		    cstate.period_ns == state->period_ns) {
+		    cstate.period == state->period) {
 			u32 cmr = atmel_pwm_ch_readl(atmel_pwm, chip->id, PWM_CMR);
 
 			cprd = atmel_pwm_ch_readl(atmel_pwm, chip->id,
@@ -325,7 +325,7 @@ static int atmel_pwm_apply(struct pwm_chip *chip,
 
 		atmel_pwm_calculate_cdty(state, clkrate, cprd, pres, &cdty);
 
-		if (cstate.p_enable) {
+		if (cstate.enabled) {
 			atmel_pwm_disable(chip, false);
 		} else {
 			ret = clk_enable(atmel_pwm->clk);
@@ -345,7 +345,7 @@ static int atmel_pwm_apply(struct pwm_chip *chip,
 		atmel_pwm_ch_writel(atmel_pwm, chip->id, PWM_CMR, val);
 		atmel_pwm_set_cprd_cdty(chip, cprd, cdty);
 		atmel_pwm_writel(atmel_pwm, PWM_ENA, 1 << chip->id);
-	} else if (cstate.p_enable) {
+	} else if (cstate.enabled) {
 		atmel_pwm_disable(chip, true);
 	}
 
diff --git a/drivers/pwm/pwm-imx.c b/drivers/pwm/pwm-imx.c
index f5e3cbcd7c80..2a754005939c 100644
--- a/drivers/pwm/pwm-imx.c
+++ b/drivers/pwm/pwm-imx.c
@@ -162,7 +162,7 @@ static int imx_pwm_config_v2(struct pwm_chip *chip,
 
 	writel(cr, imx->mmio_base + MX3_PWMCR);
 
-	if (!chip->state.p_enable)
+	if (!chip->state.enabled)
 		imx_pwm_clk_disable_v2(imx);
 
 	return 0;
@@ -199,18 +199,18 @@ static int imx_pwm_apply(struct pwm_chip *chip,
 	bool enabled;
 	int ret;
 
-	enabled = chip->state.p_enable;
+	enabled = chip->state.enabled;
 
-	if (enabled && !state->p_enable) {
+	if (enabled && !state->enabled) {
 		imx->set_enable(chip, false);
 		return 0;
 	}
 
-	ret = imx->config(chip, state->duty_ns, state->period_ns);
+	ret = imx->config(chip, state->duty_cycle, state->period);
 	if (ret)
 		return ret;
 
-	if (!enabled && state->p_enable)
+	if (!enabled && state->enabled)
 		imx->set_enable(chip, true);
 
 	return 0;
diff --git a/drivers/pwm/pwm-mxs.c b/drivers/pwm/pwm-mxs.c
index 18279bf287b4..3e3efade685d 100644
--- a/drivers/pwm/pwm-mxs.c
+++ b/drivers/pwm/pwm-mxs.c
@@ -55,9 +55,9 @@ static int mxs_pwm_apply(struct pwm_chip *chip,
 	unsigned long long c;
 	bool enabled;
 
-	enabled = chip->state.p_enable;
+	enabled = chip->state.enabled;
 
-	if (enabled && !state->p_enable) {
+	if (enabled && !state->enabled) {
 		writel(1 << mxs->chip.id, mxs->mxs->base + PWM_CTRL + CLR);
 		return 0;
 	}
@@ -65,7 +65,7 @@ static int mxs_pwm_apply(struct pwm_chip *chip,
 	rate = clk_get_rate(mxs->mxs->clk);
 	while (1) {
 		c = rate / cdiv[div];
-		c = c * state->period_ns;
+		c = c * state->period;
 		do_div(c, 1000000000);
 		if (c < PERIOD_PERIOD_MAX)
 			break;
@@ -75,8 +75,8 @@ static int mxs_pwm_apply(struct pwm_chip *chip,
 	}
 
 	period_cycles = c;
-	c *= state->duty_ns;
-	do_div(c, state->period_ns);
+	c *= state->duty_cycle;
+	do_div(c, state->period);
 	duty_cycles = c;
 
 	writel(duty_cycles << 16,
@@ -85,7 +85,7 @@ static int mxs_pwm_apply(struct pwm_chip *chip,
 	       PERIOD_INACTIVE_LOW | PERIOD_CDIV(div),
 			mxs->mxs->base + PWM_PERIOD0 + mxs->chip.id * 0x20);
 
-	if (!enabled && state->p_enable)
+	if (!enabled && state->enabled)
 		writel(1 << mxs->chip.id, mxs->mxs->base + PWM_CTRL + SET);
 
 	return 0;
diff --git a/drivers/pwm/pwm-stm32.c b/drivers/pwm/pwm-stm32.c
index 218a270c022d..16f80381c2f1 100644
--- a/drivers/pwm/pwm-stm32.c
+++ b/drivers/pwm/pwm-stm32.c
@@ -206,9 +206,9 @@ static int stm32_pwm_apply(struct pwm_chip *chip,
 	struct stm32_pwm *priv = to_stm32_pwm_dev(chip);
 	int ret;
 
-	enabled = chip->state.p_enable;
+	enabled = chip->state.enabled;
 
-	if (enabled && !state->p_enable) {
+	if (enabled && !state->enabled) {
 		stm32_pwm_disable(priv, chip->id);
 		return 0;
 	}
@@ -217,11 +217,11 @@ static int stm32_pwm_apply(struct pwm_chip *chip,
 		stm32_pwm_set_polarity(priv, chip->id, state->polarity);
 
 	ret = stm32_pwm_config(priv, chip->id,
-			       state->duty_ns, state->period_ns);
+			       state->duty_cycle, state->period);
 	if (ret)
 		return ret;
 
-	if (!enabled && state->p_enable)
+	if (!enabled && state->enabled)
 		ret = stm32_pwm_enable(priv, chip->id);
 
 	return ret;
diff --git a/drivers/pwm/pxa_pwm.c b/drivers/pwm/pxa_pwm.c
index 09f36c92dda2..42ccb37b9af2 100644
--- a/drivers/pwm/pxa_pwm.c
+++ b/drivers/pwm/pxa_pwm.c
@@ -86,15 +86,15 @@ static int pxa_pwm_apply(struct pwm_chip *chip,
 	struct pxa_pwm_chip *pxa_pwm = to_pxa_pwm_chip(chip);
 	bool enabled;
 
-	enabled = chip->state.p_enable;
+	enabled = chip->state.enabled;
 
-	if (enabled && !state->p_enable) {
+	if (enabled && !state->enabled) {
 		pxa_pwm_disable(pxa_pwm);
 		return 0;
 	}
 
 	c = pxa_get_pwmclk();
-	c = c * state->period_ns;
+	c = c * state->period;
 	do_div(c, 1000000000);
 	period_cycles = c;
 
@@ -106,10 +106,10 @@ static int pxa_pwm_apply(struct pwm_chip *chip,
 	if (prescale > 63)
 		return -EINVAL;
 
-	if (state->duty_ns == state->period_ns)
+	if (state->duty_cycle == state->period)
 		dc = PWMDCR_FD;
 	else
-		dc = (pv + 1) * state->duty_ns / state->period_ns;
+		dc = (pv + 1) * state->duty_cycle / state->period;
 
 	/* NOTE: the clock to PWM has to be enabled first
 	 * before writing to the registers
@@ -118,7 +118,7 @@ static int pxa_pwm_apply(struct pwm_chip *chip,
 	writel(dc, pxa_pwm->iobase + PWMDCR);
 	writel(pv, pxa_pwm->iobase + PWMPCR);
 
-	if (!enabled && state->p_enable) {
+	if (!enabled && state->enabled) {
 		pxa_pwm_enable(pxa_pwm);
 		return 0;
 	}
diff --git a/drivers/sound/pwm-beeper.c b/drivers/sound/pwm-beeper.c
index 21e57d4b070b..94b27359c1c3 100644
--- a/drivers/sound/pwm-beeper.c
+++ b/drivers/sound/pwm-beeper.c
@@ -31,8 +31,8 @@ static int pwm_beeper_beep(struct sound_card *card, unsigned freq, unsigned dura
 
 	pwm_get_state(beeper->pwm, &state);
 
-	state.p_enable = true;
-	state.period_ns = HZ_TO_NANOSECONDS(freq);
+	state.enabled = true;
+	state.period = HZ_TO_NANOSECONDS(freq);
 	pwm_set_relative_duty_cycle(&state, 50, 100);
 
 	error = pwm_apply_state(beeper->pwm, &state);
@@ -66,7 +66,7 @@ static int pwm_beeper_probe(struct device *dev)
 
 	/* Sync up PWM state and ensure it is off. */
 	pwm_init_state(beeper->pwm, &state);
-	state.p_enable = false;
+	state.enabled = false;
 	error = pwm_apply_state(beeper->pwm, &state);
 	if (error) {
 		dev_err(dev, "failed to apply initial PWM state: %d\n",
diff --git a/include/pwm.h b/include/pwm.h
index 876a242289d7..e8b0f2c96263 100644
--- a/include/pwm.h
+++ b/include/pwm.h
@@ -12,16 +12,16 @@ struct device;
 
 /*
  * struct pwm_state - state of a PWM channel
- * @period_ns: PWM period (in nanoseconds)
- * @duty_ns: PWM duty cycle (in nanoseconds)
+ * @period: PWM period (in nanoseconds)
+ * @duty_cycle: PWM duty cycle (in nanoseconds)
  * @polarity: PWM polarity
- * @p_enable: PWM enabled status
+ * @enabled: PWM enabled status
  */
 struct pwm_state {
-	unsigned int period_ns;
-	unsigned int duty_ns;
+	unsigned int period;
+	unsigned int duty_cycle;
 	unsigned int polarity;
-	unsigned int p_enable;
+	unsigned int enabled;
 };
 
 void pwm_print(void);
@@ -91,9 +91,9 @@ pwm_set_relative_duty_cycle(struct pwm_state *state, unsigned int duty_cycle,
 	if (!scale || duty_cycle > scale)
 		return -EINVAL;
 
-	state->duty_ns = DIV_ROUND_CLOSEST_ULL((u64)duty_cycle *
-					       state->period_ns,
-					       scale);
+	state->duty_cycle = DIV_ROUND_CLOSEST_ULL((u64)duty_cycle *
+						  state->period,
+						  scale);
 
 	return 0;
 }
-- 
2.39.2



