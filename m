Delivery-date: Mon, 15 Apr 2024 07:36:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwF1B-001ZQN-1t
	for lore@lore.pengutronix.de;
	Mon, 15 Apr 2024 07:36:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwF1A-0006ai-Gs
	for lore@pengutronix.de; Mon, 15 Apr 2024 07:36:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZW3RAkWlJ5IB0f3PCu4oiJ6bPEp2npruwcS4/CbYHsc=; b=sDiVgdVTy5Ayqt+sz49G9P0B+9
	fjNOxrVnpwAJAQ4v/JYoi7CfFTUmDlh44xAxXI4zbBDHtlbRMvbA8Q54GF22RVdqWzoSHY78hL53P
	hVT8SJuDTw3rOedeW8LZIpCI9AjFdofMI2pGlV6KaC0bkxoDhTgJXyTd7R4DAL/uRzveGJlcOUgph
	YJn+hQAR/F9SWeB7SYv0JNRGUrfOQUBU2Q+wfnDb3Jfek8EWViE4Duws2Yjlo98MnQvIY5FT/b+hY
	2Kvs/3e3JR2JT1+iuhHI4DAVGA0XMQjCycPtUV/JekTJOVtJAo62Ool4+BnmzCYHsw6R1O9aQUYGe
	hQ+RHMLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwF0j-000000071On-2pO1;
	Mon, 15 Apr 2024 05:36:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwF0d-000000071LP-3sC2
	for barebox@lists.infradead.org;
	Mon, 15 Apr 2024 05:36:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwF0c-0005r0-OF; Mon, 15 Apr 2024 07:36:02 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwF0c-00CMnG-AZ; Mon, 15 Apr 2024 07:36:02 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwF0c-001YQH-0m;
	Mon, 15 Apr 2024 07:36:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Apr 2024 07:35:56 +0200
Message-Id: <20240415053600.370622-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240415053600.370622-1-a.fatoum@pengutronix.de>
References: <20240415053600.370622-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240414_223604_043598_785532E4 
X-CRM114-Status: GOOD (  13.59  )
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
Subject: [PATCH 3/7] PWM: core: adopt Linux prototype for struct pwm_ops::apply
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In Linux, a pwm_chip can have more one pwm_device, one for each channel.
Therefore, pwm_apply takes a pwm_device as argument to identify, which
channel is the one being operated on.

In barebox, there's a 1:1 relationship between the two, but let's add
pwm_device as extra, so far unused, parameter to make porting kernel
code slightly easier.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pwm/core.c      | 2 +-
 drivers/pwm/pwm-atmel.c | 4 +++-
 drivers/pwm/pwm-imx.c   | 4 +++-
 drivers/pwm/pwm-mxs.c   | 4 +++-
 drivers/pwm/pwm-stm32.c | 4 +++-
 drivers/pwm/pxa_pwm.c   | 4 +++-
 include/pwm.h           | 3 ++-
 7 files changed, 18 insertions(+), 7 deletions(-)

diff --git a/drivers/pwm/core.c b/drivers/pwm/core.c
index ab7e55b00079..706c4515e9a8 100644
--- a/drivers/pwm/core.c
+++ b/drivers/pwm/core.c
@@ -326,7 +326,7 @@ int pwm_apply_state(struct pwm_device *pwm, const struct pwm_state *state)
 	if (state->duty_ns > state->period_ns)
 		goto err;
 
-	ret = chip->ops->apply(chip, state);
+	ret = chip->ops->apply(chip, pwm, state);
 err:
 	if (ret == 0)
 		chip->state = *state;
diff --git a/drivers/pwm/pwm-atmel.c b/drivers/pwm/pwm-atmel.c
index 52b5926097b5..331a6e97124f 100644
--- a/drivers/pwm/pwm-atmel.c
+++ b/drivers/pwm/pwm-atmel.c
@@ -286,7 +286,9 @@ static void atmel_pwm_disable(struct pwm_chip *chip, bool disable_clk)
 		clk_disable(atmel_pwm->clk);
 }
 
-static int atmel_pwm_apply(struct pwm_chip *chip, const struct pwm_state *state)
+static int atmel_pwm_apply(struct pwm_chip *chip,
+			   struct pwm_device *pwm,
+			   const struct pwm_state *state)
 {
 	struct atmel_pwm_chip *atmel_pwm = to_atmel_pwm_chip(chip);
 	struct pwm_state cstate;
diff --git a/drivers/pwm/pwm-imx.c b/drivers/pwm/pwm-imx.c
index 0b79b0831a5c..f5e3cbcd7c80 100644
--- a/drivers/pwm/pwm-imx.c
+++ b/drivers/pwm/pwm-imx.c
@@ -191,7 +191,9 @@ static void imx_pwm_set_enable_v2(struct pwm_chip *chip, bool enable)
 		imx_pwm_clk_disable_v2(imx);
 }
 
-static int imx_pwm_apply(struct pwm_chip *chip, const struct pwm_state *state)
+static int imx_pwm_apply(struct pwm_chip *chip,
+			 struct pwm_device *pwm,
+			 const struct pwm_state *state)
 {
 	struct imx_chip *imx = to_imx_chip(chip);
 	bool enabled;
diff --git a/drivers/pwm/pwm-mxs.c b/drivers/pwm/pwm-mxs.c
index e94fcf538488..18279bf287b4 100644
--- a/drivers/pwm/pwm-mxs.c
+++ b/drivers/pwm/pwm-mxs.c
@@ -44,7 +44,9 @@ struct mxs_pwm {
 
 #define to_mxs_pwm_chip(_chip) container_of(_chip, struct mxs_pwm_chip, chip)
 
-static int mxs_pwm_apply(struct pwm_chip *chip, const struct pwm_state *state)
+static int mxs_pwm_apply(struct pwm_chip *chip,
+			 struct pwm_device *pwm,
+			 const struct pwm_state *state)
 {
 	struct mxs_pwm_chip *mxs = to_mxs_pwm_chip(chip);
 	int div = 0;
diff --git a/drivers/pwm/pwm-stm32.c b/drivers/pwm/pwm-stm32.c
index 7c7a8e2ce68e..218a270c022d 100644
--- a/drivers/pwm/pwm-stm32.c
+++ b/drivers/pwm/pwm-stm32.c
@@ -198,7 +198,9 @@ static void stm32_pwm_disable(struct stm32_pwm *priv, unsigned ch)
 	clk_disable(priv->clk);
 }
 
-static int stm32_pwm_apply(struct pwm_chip *chip, const struct pwm_state *state)
+static int stm32_pwm_apply(struct pwm_chip *chip,
+			   struct pwm_device *pwm,
+			   const struct pwm_state *state)
 {
 	bool enabled;
 	struct stm32_pwm *priv = to_stm32_pwm_dev(chip);
diff --git a/drivers/pwm/pxa_pwm.c b/drivers/pwm/pxa_pwm.c
index 69ff7dfb7736..09f36c92dda2 100644
--- a/drivers/pwm/pxa_pwm.c
+++ b/drivers/pwm/pxa_pwm.c
@@ -77,7 +77,9 @@ static void pxa_pwm_disable(struct pxa_pwm_chip *pxa_pwm)
  * duty_ns      = 10^9 * (PRESCALE + 1) * DC / PWM_CLK_RATE
  * PWM_CLK_RATE = 13 MHz
  */
-static int pxa_pwm_apply(struct pwm_chip *chip, const struct pwm_state *state)
+static int pxa_pwm_apply(struct pwm_chip *chip,
+			 struct pwm_device *pwm,
+			 const struct pwm_state *state)
 {
 	unsigned long long c;
 	unsigned long period_cycles, prescale, pv, dc;
diff --git a/include/pwm.h b/include/pwm.h
index 5157fee7d43d..876a242289d7 100644
--- a/include/pwm.h
+++ b/include/pwm.h
@@ -123,7 +123,8 @@ int pwm_apply_state(struct pwm_device *pwm, const struct pwm_state *state);
 struct pwm_ops {
 	int (*request)(struct pwm_chip *chip);
 	void (*free)(struct pwm_chip *chip);
-	int (*apply)(struct pwm_chip *chip, const struct pwm_state *state);
+	int (*apply)(struct pwm_chip *chip, struct pwm_device *pwm,
+		     const struct pwm_state *state);
 };
 
 /**
-- 
2.39.2



