Delivery-date: Mon, 27 Oct 2025 07:31:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDGlH-00CFLM-2n
	for lore@lore.pengutronix.de;
	Mon, 27 Oct 2025 07:31:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDGlH-00085T-9b
	for lore@pengutronix.de; Mon, 27 Oct 2025 07:31:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Z4U93NcvMVGfomO6J/6KkY/zTKjklpOYWB+pkosaG3A=; b=X7RClN/uw3pU6Lb81abBwOkIXS
	xv8EMvw/LdkvMY24lyPBo0sRTETQF6ze0o7LfW4XRa5DBUBaq4FZIyv6g0tXbqh4Ky94BwYyHGhEk
	TxiqBLCczDe+MeqEvJaZUkH9hZFMetR73h8LGl0RuVJG5mNWyLiL8RxHlzbUC2Zf0rjtTCVc8g4yd
	csr70CngB1ECrPxrRV7YMuty2K3LpTnStzVdg2E7pXrmZpoa35VvN2zJQrA8Ab+NQV3ejHzyDPxtW
	IVX2yZTEyMxRs8OfMvcq/KtRvUEWc6KIuVMYCwtoRI1dt7LBvQGJoB+Rvp4CRr746xGpYAq+TJhUs
	xn6scMpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDGkk-0000000DCJu-18fA;
	Mon, 27 Oct 2025 06:30:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDGkh-0000000DCIl-3ZQB
	for barebox@lists.infradead.org;
	Mon, 27 Oct 2025 06:30:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vDGkg-0007sa-2m; Mon, 27 Oct 2025 07:30:46 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 27 Oct 2025 07:30:36 +0100
Message-ID: <20251027063045.2396578-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251026_233047_890910_4CEC2745 
X-CRM114-Status: GOOD (  10.46  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] sound: pwm-beeper: make duty cycle configurable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A lower duty cycle may be less jarring to hear, so give users the
possibility to control it via device parameter attached to the PWM
beeper device.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/sound/pwm-beeper.c | 23 ++++++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

diff --git a/drivers/sound/pwm-beeper.c b/drivers/sound/pwm-beeper.c
index 94b27359c1c3..5e29e953ddc8 100644
--- a/drivers/sound/pwm-beeper.c
+++ b/drivers/sound/pwm-beeper.c
@@ -14,6 +14,7 @@ struct pwm_beeper {
 	struct pwm_device *pwm;
 	struct regulator *amplifier;
 	struct sound_card card;
+	u32 duty_cycle;
 };
 
 #define HZ_TO_NANOSECONDS(x) (1000000000UL/(x))
@@ -33,7 +34,7 @@ static int pwm_beeper_beep(struct sound_card *card, unsigned freq, unsigned dura
 
 	state.enabled = true;
 	state.period = HZ_TO_NANOSECONDS(freq);
-	pwm_set_relative_duty_cycle(&state, 50, 100);
+	pwm_set_relative_duty_cycle(&state, beeper->duty_cycle, 100);
 
 	error = pwm_apply_state(beeper->pwm, &state);
 	if (error)
@@ -49,6 +50,22 @@ static int pwm_beeper_beep(struct sound_card *card, unsigned freq, unsigned dura
 	return error;
 }
 
+static int pwm_beeper_apply_params(struct param_d *p, void *priv)
+{
+	struct pwm_beeper *beeper = priv;
+	struct pwm_state state;
+
+	if (beeper->duty_cycle > 100)
+	    return -EINVAL;
+
+	pwm_get_state(beeper->pwm, &state);
+	if (!state.enabled)
+		return 0;
+
+	pwm_set_relative_duty_cycle(&state, beeper->duty_cycle, 100);
+	return pwm_apply_state(beeper->pwm, &state);
+}
+
 static int pwm_beeper_probe(struct device *dev)
 {
 	struct pwm_beeper *beeper;
@@ -74,6 +91,7 @@ static int pwm_beeper_probe(struct device *dev)
 		return error;
 	}
 
+	beeper->duty_cycle = 50;
 	beeper->amplifier = regulator_get(dev, "amp");
 	if (IS_ERR(beeper->amplifier))
 		return dev_errp_probe(dev, beeper->amplifier, "getting 'amp' regulator\n");
@@ -91,6 +109,9 @@ static int pwm_beeper_probe(struct device *dev)
 	card->bell_frequency = bell_frequency;
 	card->beep = pwm_beeper_beep;
 
+	dev_add_param_uint32(dev, "duty_cycle", pwm_beeper_apply_params,
+			NULL, &beeper->duty_cycle, "%u%", beeper);
+
 	return sound_card_register(card);
 }
 
-- 
2.47.3



