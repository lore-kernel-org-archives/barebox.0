Delivery-date: Sun, 15 May 2022 21:40:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqK6T-00EWUX-8Z
	for lore@lore.pengutronix.de; Sun, 15 May 2022 21:40:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqK6P-0005wt-1Z
	for lore@pengutronix.de; Sun, 15 May 2022 21:40:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mbHSS3e0GgF6c6hpBpRfUR2yEOkTfYoHNq5S6HDXYEw=; b=dFDKIF+e4OeVvm
	UmEjTKGcVslYQ4SiYITCVJUlWlM0PVbewX0+0DZOFUCyEZSdZn6nKaBhJG2DdM8Sp+OEcQw1wwndj
	vjkwZJ+7El+ADkK/gaJAK+7I1phkh+8zksMSzMZwHGgDZ1gpQUGzIzeb2qjt5Rvy/xSRo2WB6ZnkH
	i1TQCpGm3W6RQhuWlklFRPmpjftWtoG9M7Md+8SQnzEtpydbZA4juPTk5V+q4V75IdhTgvJ2p/w/P
	0sV1q4HVFdhTcqm3JosHa1NM9ttgEn+omOydvnmnMcM0oVqRZUJ8C/qYSdzUxA5AZ4KXfpFrWjmAE
	dg25XpKSHxZsrK4kKFWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqK4m-004nc8-54; Sun, 15 May 2022 19:38:48 +0000
Received: from mailrelay2-1.pub.mailoutpod1-cph3.one.com ([46.30.210.183])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqK4R-004nUS-If
 for barebox@lists.infradead.org; Sun, 15 May 2022 19:38:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ravnborg.org; s=rsa1;
 h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
 subject:cc:to:from:from;
 bh=/0i0QYDbUSgqF2Aa/En2lmwrMAdrotm+9NCuHCST2+o=;
 b=LJ2dE5zz6rDLT1b8vjT8f/WpJjVRe8v7YnX0Q9cFg1kxW2gQ49z5T3QE2re6yg7DponS3eZRO5GkL
 dOJ5LaeXcviFyIErP/P9f+wz8lAko9LEHkDuhbSWbnjtIhpSqH9m5xMh5TPMi5aNZe6rCSwclXgxf7
 zrGe6T1F8ajVjRBCE4t2wYMYhKuqmWguekTB5Zv4j+2nP5oH5lD+3vMIpZyqvxgaMUgf3yq10VUQKJ
 PxCMMvtjMlb/si8P4ZNqMeOcSfdxSL2wnmHiQS8jEdykEM2zdnIqw+lzFW90Te8GQqUQ6IoRPG5Zv8
 1bXJC3ARlXSFv7EKXh/aa6Ykua4ZjXA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=ravnborg.org; s=ed1;
 h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
 subject:cc:to:from:from;
 bh=/0i0QYDbUSgqF2Aa/En2lmwrMAdrotm+9NCuHCST2+o=;
 b=TzGSyFMkUYwUD0fHSn5ftzwffUO2kUD1TDy8TT660bmpk7OxC59SG8q0NFPzaCZeqK1DXZQT5p4bH
 6l3EjUVBQ==
X-HalOne-Cookie: e919a5f92339430a85fb990bd2bc543e9ae3fcfc
X-HalOne-ID: 952cd892-d486-11ec-a908-d0431ea8a290
Received: from mailproxy4.cst.dirpod4-cph3.one.com
 (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
 by mailrelay2.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
 id 952cd892-d486-11ec-a908-d0431ea8a290;
 Sun, 15 May 2022 19:38:23 +0000 (UTC)
From: Sam Ravnborg <sam@ravnborg.org>
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>
Date: Sun, 15 May 2022 21:38:00 +0200
Message-Id: <20220515193807.354903-2-sam@ravnborg.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220515193807.354903-1-sam@ravnborg.org>
References: <20220515193807.354903-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220515_123828_108795_87184C37 
X-CRM114-Status: GOOD (  28.45  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1 1/8] pwm: atmel: Fix build and update
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The pwm-atmel driver was not updated to use the atomic api and did not
build.

Update the driver from linux kernel 5.16-rc7 and adapt to barebox
to get the latest fixes including the conversion to atomic api.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 drivers/pwm/pwm-atmel.c | 383 ++++++++++++++++++++++++++++++----------
 1 file changed, 285 insertions(+), 98 deletions(-)

diff --git a/drivers/pwm/pwm-atmel.c b/drivers/pwm/pwm-atmel.c
index 648f75fb7..9ec81e18b 100644
--- a/drivers/pwm/pwm-atmel.c
+++ b/drivers/pwm/pwm-atmel.c
@@ -55,15 +55,7 @@
 #define PWMV2_CPRD		0x0C
 #define PWMV2_CPRDUPD		0x10
 
-/*
- * Max value for duty and period
- *
- * Although the duty and period register is 32 bit,
- * however only the LSB 16 bits are significant.
- */
-#define PWM_MAX_DTY		0xFFFF
-#define PWM_MAX_PRD		0xFFFF
-#define PRD_MAX_PRES		10
+#define PWM_MAX_PRES		10
 
 struct atmel_pwm_registers {
 	u8 period;
@@ -72,30 +64,53 @@ struct atmel_pwm_registers {
 	u8 duty_upd;
 };
 
-struct atmel_pwm;
+struct atmel_pwm_config {
+	u32 period_bits;
+};
 
-struct atmel_pwm_chip {
-	struct pwm_chip chip;
-	struct atmel_pwm *atmel;
+struct atmel_pwm_data {
+	struct atmel_pwm_registers regs;
+	struct atmel_pwm_config cfg;
 };
 
-struct atmel_pwm {
-	struct atmel_pwm_chip atmel_pwm_chip[PWM_CHANNELS];
-	const struct atmel_pwm_registers *regs;
+struct atmel_pwm_chip {
+	struct pwm_chip chips[PWM_CHANNELS];
 	struct clk *clk;
 	void __iomem *base;
 	struct device_d *dev;
+	const struct atmel_pwm_data *data;
+
+	/*
+	 * The hardware supports a mechanism to update a channel's duty cycle at
+	 * the end of the currently running period. When such an update is
+	 * pending we delay disabling the PWM until the new configuration is
+	 * active because otherwise pmw_config(duty_cycle=0); pwm_disable();
+	 * might not result in an inactive output.
+	 * This bitmask tracks for which channels an update is pending in
+	 * hardware.
+	 */
+	u32 update_pending;
+
+	/* Protects .update_pending */
+	spinlock_t lock;
 };
 
 static inline struct atmel_pwm_chip *to_atmel_pwm_chip(struct pwm_chip *chip)
 {
-	return container_of(chip, struct atmel_pwm_chip, chip);
+	struct pwm_chip (*chips)[4] = (void *)&chip[-chip->id];
+	return container_of(chips, struct atmel_pwm_chip, chips);
+}
+
+static inline u32 atmel_pwm_readl(struct atmel_pwm_chip *chip,
+				  unsigned long offset)
+{
+	return readl_relaxed(chip->base + offset);
 }
 
 static inline void atmel_pwm_writel(struct atmel_pwm_chip *chip,
 				    unsigned long offset, unsigned long val)
 {
-	writel(val, chip->atmel->base + offset);
+	writel_relaxed(val, chip->base + offset);
 }
 
 static inline u32 atmel_pwm_ch_readl(struct atmel_pwm_chip *chip,
@@ -103,7 +118,7 @@ static inline u32 atmel_pwm_ch_readl(struct atmel_pwm_chip *chip,
 {
 	unsigned long base = PWM_CH_REG_OFFSET + ch * PWM_CH_REG_SIZE;
 
-	return readl(chip->atmel->base + base + offset);
+	return atmel_pwm_readl(chip, base + offset);
 }
 
 static inline void atmel_pwm_ch_writel(struct atmel_pwm_chip *chip,
@@ -112,24 +127,95 @@ static inline void atmel_pwm_ch_writel(struct atmel_pwm_chip *chip,
 {
 	unsigned long base = PWM_CH_REG_OFFSET + ch * PWM_CH_REG_SIZE;
 
-	writel(val, chip->atmel->base + base + offset);
+	atmel_pwm_writel(chip, base + offset, val);
+}
+
+static void atmel_pwm_update_pending(struct atmel_pwm_chip *chip)
+{
+	/*
+	 * Each channel that has its bit in ISR set started a new period since
+	 * ISR was cleared and so there is no more update pending.  Note that
+	 * reading ISR clears it, so this needs to handle all channels to not
+	 * loose information.
+	 */
+	u32 isr = atmel_pwm_readl(chip, PWM_ISR);
+
+	chip->update_pending &= ~isr;
+}
+
+static void atmel_pwm_set_pending(struct atmel_pwm_chip *chip, unsigned int ch)
+{
+	spin_lock(&chip->lock);
+
+	/*
+	 * Clear pending flags in hardware because otherwise there might still
+	 * be a stale flag in ISR.
+	 */
+	atmel_pwm_update_pending(chip);
+
+	chip->update_pending |= (1 << ch);
+
+	spin_unlock(&chip->lock);
+}
+
+static int atmel_pwm_test_pending(struct atmel_pwm_chip *chip, unsigned int ch)
+{
+	int ret = 0;
+
+	spin_lock(&chip->lock);
+
+	if (chip->update_pending & (1 << ch)) {
+		atmel_pwm_update_pending(chip);
+
+		if (chip->update_pending & (1 << ch))
+			ret = 1;
+	}
+
+	spin_unlock(&chip->lock);
+
+	return ret;
+}
+
+static int atmel_pwm_wait_nonpending(struct atmel_pwm_chip *chip, unsigned int ch)
+{
+	unsigned long timeout = get_time_ns() + 2 * HZ;
+	int ret;
+
+	while ((ret = atmel_pwm_test_pending(chip, ch)) &&
+	       !is_timeout(get_time_ns(), timeout))
+		udelay(100);
+
+	return ret ? -ETIMEDOUT : 0;
 }
 
-static int atmel_pwm_calculate_cprd_and_pres(struct atmel_pwm_chip *atmel_pwm,
-					     int period,
+static int atmel_pwm_calculate_cprd_and_pres(struct pwm_chip *chip,
+					     unsigned long clkrate,
+					     const struct pwm_state *state,
 					     unsigned long *cprd, u32 *pres)
 {
-	unsigned long long cycles = period;
+	struct atmel_pwm_chip *atmel_pwm = to_atmel_pwm_chip(chip);
+	unsigned long long cycles = state->period_ns;
+	int shift;
+
 	/* Calculate the period cycles and prescale value */
-	cycles *= clk_get_rate(atmel_pwm->atmel->clk);
+	cycles *= clkrate;
 	do_div(cycles, NSEC_PER_SEC);
 
-	for (*pres = 0; cycles > PWM_MAX_PRD; cycles >>= 1)
-		(*pres)++;
+	/*
+	 * The register for the period length is cfg.period_bits bits wide.
+	 * So for each bit the number of clock cycles is wider divide the input
+	 * clock frequency by two using pres and shift cprd accordingly.
+	 */
+	shift = fls(cycles) - atmel_pwm->data->cfg.period_bits;
 
-	if (*pres > PRD_MAX_PRES) {
-		dev_err(atmel_pwm->atmel->dev, "pres exceeds the maximum value\n");
+	if (shift > PWM_MAX_PRES) {
+		dev_err(atmel_pwm->dev, "pres exceeds the maximum value\n");
 		return -EINVAL;
+	} else if (shift > 0) {
+		*pres = shift;
+		cycles >>= *pres;
+	} else {
+		*pres = 0;
 	}
 
 	*cprd = cycles;
@@ -137,137 +223,238 @@ static int atmel_pwm_calculate_cprd_and_pres(struct atmel_pwm_chip *atmel_pwm,
 	return 0;
 }
 
-static void atmel_pwm_calculate_cdty(int duty, int period,
-				     unsigned long cprd, unsigned long *cdty)
+static void atmel_pwm_calculate_cdty(const struct pwm_state *state,
+				     unsigned long clkrate, unsigned long cprd,
+				     u32 pres, unsigned long *cdty)
 {
-	unsigned long long cycles = duty;
+	unsigned long long cycles = state->duty_ns;
 
-	cycles *= cprd;
-	do_div(cycles, period);
+	cycles *= clkrate;
+	do_div(cycles, NSEC_PER_SEC);
+	cycles >>= pres;
 	*cdty = cprd - cycles;
 }
 
-static void atmel_pwm_set_cprd_cdty(struct atmel_pwm_chip *atmel_pwm, int ch,
+static void atmel_pwm_update_cdty(struct pwm_chip *chip, unsigned long cdty)
+{
+	struct atmel_pwm_chip *atmel_pwm = to_atmel_pwm_chip(chip);
+	u32 val;
+
+	if (atmel_pwm->data->regs.duty_upd ==
+	    atmel_pwm->data->regs.period_upd) {
+		val = atmel_pwm_ch_readl(atmel_pwm, chip->id, PWM_CMR);
+		val &= ~PWM_CMR_UPD_CDTY;
+		atmel_pwm_ch_writel(atmel_pwm, chip->id, PWM_CMR, val);
+	}
+
+	atmel_pwm_ch_writel(atmel_pwm, chip->id,
+			    atmel_pwm->data->regs.duty_upd, cdty);
+	atmel_pwm_set_pending(atmel_pwm, chip->id);
+}
+
+static void atmel_pwm_set_cprd_cdty(struct pwm_chip *chip,
 				    unsigned long cprd, unsigned long cdty)
 {
-	const struct atmel_pwm_registers *regs = atmel_pwm->atmel->regs;
+	struct atmel_pwm_chip *atmel_pwm = to_atmel_pwm_chip(chip);
 
-	atmel_pwm_ch_writel(atmel_pwm, ch, regs->duty, cdty);
-	atmel_pwm_ch_writel(atmel_pwm, ch, regs->period, cprd);
+	atmel_pwm_ch_writel(atmel_pwm, chip->id,
+			    atmel_pwm->data->regs.duty, cdty);
+	atmel_pwm_ch_writel(atmel_pwm, chip->id,
+			    atmel_pwm->data->regs.period, cprd);
 }
 
-static int atmel_pwm_config(struct pwm_chip *chip, int duty_ns, int period_ns)
+static void atmel_pwm_disable(struct pwm_chip *chip, bool disable_clk)
 {
 	struct atmel_pwm_chip *atmel_pwm = to_atmel_pwm_chip(chip);
-	unsigned long cprd, cdty;
-	u32 pres, val;
-	int ret;
-	int ch;
+	unsigned long timeout;
 
-	ch = atmel_pwm->chip.id;
-	ret = atmel_pwm_calculate_cprd_and_pres(atmel_pwm, period_ns, &cprd, &pres);
-	if (ret)
-		return ret;
+	atmel_pwm_wait_nonpending(atmel_pwm, chip->id);
 
-	atmel_pwm_calculate_cdty(duty_ns, period_ns, cprd, &cdty);
+	atmel_pwm_writel(atmel_pwm, PWM_DIS, 1 << chip->id);
 
-	/* It is necessary to preserve CPOL, inside CMR */
-	val = atmel_pwm_ch_readl(atmel_pwm, ch, PWM_CMR);
-	val = (val & ~PWM_CMR_CPRE_MSK) | (pres & PWM_CMR_CPRE_MSK);
-	/* Assuming normal polarity */
-	val &= ~PWM_CMR_CPOL;
+	/*
+	 * Wait for the PWM channel disable operation to be effective before
+	 * stopping the clock.
+	 */
+	timeout = get_time_ns() + 2 * HZ;
 
-	atmel_pwm_ch_writel(atmel_pwm, ch, PWM_CMR, val);
-	atmel_pwm_set_cprd_cdty(atmel_pwm, ch, cprd, cdty);
+	while ((atmel_pwm_readl(atmel_pwm, PWM_SR) & (1 << chip->id)) &&
+	       !is_timeout(get_time_ns(), timeout))
+		udelay(100);
 
-	return 0;
+	if (disable_clk)
+		clk_disable(atmel_pwm->clk);
 }
 
-static int atmel_pwm_enable(struct pwm_chip *chip)
+static int atmel_pwm_apply(struct pwm_chip *chip, const struct pwm_state *state)
 {
 	struct atmel_pwm_chip *atmel_pwm = to_atmel_pwm_chip(chip);
+	struct pwm_state cstate;
+	unsigned long cprd, cdty;
+	u32 pres, val;
+	int ret;
 
-	atmel_pwm_writel(atmel_pwm, PWM_ENA, 1 << atmel_pwm->chip.id);
-	return 0;
-}
+	cstate = chip->state;
 
-static void atmel_pwm_disable(struct pwm_chip *chip)
-{
-	struct atmel_pwm_chip *atmel_pwm = to_atmel_pwm_chip(chip);
+	if (state->p_enable) {
+		unsigned long clkrate = clk_get_rate(atmel_pwm->clk);
+
+		if (cstate.p_enable &&
+		    cstate.polarity == state->polarity &&
+		    cstate.period_ns == state->period_ns) {
+			u32 cmr = atmel_pwm_ch_readl(atmel_pwm, chip->id, PWM_CMR);
+
+			cprd = atmel_pwm_ch_readl(atmel_pwm, chip->id,
+						  atmel_pwm->data->regs.period);
+			pres = cmr & PWM_CMR_CPRE_MSK;
+
+			atmel_pwm_calculate_cdty(state, clkrate, cprd, pres, &cdty);
+			atmel_pwm_update_cdty(chip, cdty);
+			return 0;
+		}
+
+		ret = atmel_pwm_calculate_cprd_and_pres(chip, clkrate, state, &cprd,
+							&pres);
+		if (ret) {
+			dev_err(atmel_pwm->dev,
+				"failed to calculate cprd and prescaler\n");
+			return ret;
+		}
+
+		atmel_pwm_calculate_cdty(state, clkrate, cprd, pres, &cdty);
 
-	atmel_pwm_writel(atmel_pwm, PWM_DIS, 1 << atmel_pwm->chip.id);
+		if (cstate.p_enable) {
+			atmel_pwm_disable(chip, false);
+		} else {
+			ret = clk_enable(atmel_pwm->clk);
+			if (ret) {
+				dev_err(atmel_pwm->dev, "failed to enable clock\n");
+				return ret;
+			}
+		}
+
+		/* It is necessary to preserve CPOL, inside CMR */
+		val = atmel_pwm_ch_readl(atmel_pwm, chip->id, PWM_CMR);
+		val = (val & ~PWM_CMR_CPRE_MSK) | (pres & PWM_CMR_CPRE_MSK);
+		if (state->polarity == PWM_POLARITY_NORMAL)
+			val &= ~PWM_CMR_CPOL;
+		else
+			val |= PWM_CMR_CPOL;
+		atmel_pwm_ch_writel(atmel_pwm, chip->id, PWM_CMR, val);
+		atmel_pwm_set_cprd_cdty(chip, cprd, cdty);
+		atmel_pwm_writel(atmel_pwm, PWM_ENA, 1 << chip->id);
+	} else if (cstate.p_enable) {
+		atmel_pwm_disable(chip, true);
+	}
+
+	return 0;
 }
 
-static struct pwm_ops atmel_pwm_ops = {
-	.config = atmel_pwm_config,
-	.enable = atmel_pwm_enable,
-	.disable = atmel_pwm_disable,
+static const struct pwm_ops atmel_pwm_ops = {
+	.apply = atmel_pwm_apply,
 };
 
-static const struct atmel_pwm_registers atmel_pwm_regs_v1 = {
-	.period		= PWMV1_CPRD,
-	.period_upd	= PWMV1_CUPD,
-	.duty		= PWMV1_CDTY,
-	.duty_upd	= PWMV1_CUPD,
+static const struct atmel_pwm_data atmel_sam9rl_pwm_data = {
+	.regs = {
+		.period		= PWMV1_CPRD,
+		.period_upd	= PWMV1_CUPD,
+		.duty		= PWMV1_CDTY,
+		.duty_upd	= PWMV1_CUPD,
+	},
+	.cfg = {
+		/* 16 bits to keep period and duty. */
+		.period_bits	= 16,
+	},
+};
+
+static const struct atmel_pwm_data atmel_sama5_pwm_data = {
+	.regs = {
+		.period		= PWMV2_CPRD,
+		.period_upd	= PWMV2_CPRDUPD,
+		.duty		= PWMV2_CDTY,
+		.duty_upd	= PWMV2_CDTYUPD,
+	},
+	.cfg = {
+		/* 16 bits to keep period and duty. */
+		.period_bits	= 16,
+	},
 };
 
-static const struct atmel_pwm_registers atmel_pwm_regs_v2 = {
-	.period		= PWMV2_CPRD,
-	.period_upd	= PWMV2_CPRDUPD,
-	.duty		= PWMV2_CDTY,
-	.duty_upd	= PWMV2_CDTYUPD,
+static const struct atmel_pwm_data mchp_sam9x60_pwm_data = {
+	.regs = {
+		.period		= PWMV1_CPRD,
+		.period_upd	= PWMV1_CUPD,
+		.duty		= PWMV1_CDTY,
+		.duty_upd	= PWMV1_CUPD,
+	},
+	.cfg = {
+		/* 32 bits to keep period and duty. */
+		.period_bits	= 32,
+	},
 };
 
 static const struct of_device_id atmel_pwm_dt_ids[] = {
 	{
 		.compatible = "atmel,at91sam9rl-pwm",
-		.data = &atmel_pwm_regs_v1,
+		.data = &atmel_sam9rl_pwm_data,
 	}, {
 		.compatible = "atmel,sama5d3-pwm",
-		.data = &atmel_pwm_regs_v2,
+		.data = &atmel_sama5_pwm_data,
 	}, {
 		.compatible = "atmel,sama5d2-pwm",
-		.data = &atmel_pwm_regs_v2,
+		.data = &atmel_sama5_pwm_data,
+	}, {
+		.compatible = "microchip,sam9x60-pwm",
+		.data = &mchp_sam9x60_pwm_data,
 	}, {
 		/* sentinel */
 	},
 };
 
+static int id = -1;
+
 static int atmel_pwm_probe(struct device_d *dev)
 {
-	const struct atmel_pwm_registers *regs;
-	struct atmel_pwm *atmel_pwm;
-	struct resource *res;
+	const struct atmel_pwm_data *data;
+	struct atmel_pwm_chip *atmel_pwm;
+	struct resource *iores;
+	const char *alias;
 	int ret;
 	int i;
 
-	ret = dev_get_drvdata(dev, (const void **)&regs);
+	ret = dev_get_drvdata(dev, (const void **)&data);
 	if (ret)
 		return ret;
 
 	atmel_pwm = xzalloc(sizeof(*atmel_pwm));
-	atmel_pwm->regs = regs;
+	atmel_pwm->data = data;
 	atmel_pwm->dev = dev;
 	atmel_pwm->clk = clk_get(dev, "pwm_clk");
 	if (IS_ERR(atmel_pwm->clk))
 		return PTR_ERR(atmel_pwm->clk);
 
-	res = dev_request_mem_resource(dev, 0);
-	if (IS_ERR(res))
-		return PTR_ERR(res);
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
 
-	atmel_pwm->base = IOMEM(res->start);
+	atmel_pwm->base = IOMEM(iores->start);
+	alias = of_alias_get(dev->device_node);
+	if (!alias)
+		id++;
 
 	for (i = 0; i < PWM_CHANNELS; i++) {
-		struct atmel_pwm_chip *chip = &atmel_pwm->atmel_pwm_chip[i];
-		chip->chip.ops = &atmel_pwm_ops;
-		chip->chip.devname = basprintf("pwm%d", i);
-		chip->chip.id = i;
-		chip->atmel = atmel_pwm;
-
-		ret = pwmchip_add(&chip->chip, dev);
-		if (ret < 0) {
-			dev_err(dev, "failed to add pwm chip[%d] %d\n", i, ret);
+		struct pwm_chip *chip = &atmel_pwm->chips[i];
+
+		if (alias)
+			chip->devname = basprintf("%sch%u", alias, i + 1);
+		else
+			chip->devname = basprintf("pwm%uch%u", id, i + 1);
+
+		chip->ops = &atmel_pwm_ops;
+		chip->id = i;
+		ret = pwmchip_add(chip, dev);
+		if (ret) {
+			dev_err(dev, "failed to add pwm chip %d\n", ret);
 			return ret;
 		}
 	}
-- 
2.34.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

