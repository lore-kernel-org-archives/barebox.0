Delivery-date: Mon, 01 Jul 2024 09:35:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBZt-000QUV-2p
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 09:35:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBZt-0007rp-9M
	for lore@pengutronix.de; Mon, 01 Jul 2024 09:35:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5o6HaAL5Yovk0d6vWKOAssg6JKw25bhboXoFzF57l/Q=; b=CRA7y/0D3yYY8xIRQck8uOnhcQ
	RBP2/q7xUyLeGNZGm22xeYosakARFjwAhGCDt+p2EeIcrdyBhNAeaTiQtCkNfXS1RVaWxvZQRp9G4
	wo0JdosF5i1J90Swet4J+/PWer4MHt1y9psNxmm1irNMMC0IbviPVzDTcq3xGSqd4vuwhIqIChsEN
	QWHfQiSTyamw5KcdJ8hGtrnEl8i9ZOkHiu2j+y72IbqO2DzqRfHK7va82H8kkwJASyFpdAe5gv9lc
	oBJ14l5rqgd06NdkoLPb4uoLeosD/ObLFjCvhGmu7chvQ2P6XjF2BlWbFddSFvpn9Ya+fDdlx78Sz
	YE45Nqpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBZU-000000023fw-46Ey;
	Mon, 01 Jul 2024 07:35:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBZR-000000023dS-1kK8
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 07:35:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBZQ-0007e7-3S; Mon, 01 Jul 2024 09:35:28 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBZP-006Jmb-MM; Mon, 01 Jul 2024 09:35:27 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBZP-000jsj-1x;
	Mon, 01 Jul 2024 09:35:27 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Jul 2024 09:35:25 +0200
Message-Id: <20240701073526.176353-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240701073526.176353-1-a.fatoum@pengutronix.de>
References: <20240701073526.176353-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_003529_522825_77AB1D00 
X-CRM114-Status: GOOD (  10.07  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] PWM: core: remove needless error checking for device parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The PWM device is specifically created for purposes of the PWM
framework. There should thus be no naming clashes and -ENOMEM
is not a fatal error there either, because the PWM C API is
still usable without the device parameters.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pwm/core.c | 25 +++++++++----------------
 1 file changed, 9 insertions(+), 16 deletions(-)

diff --git a/drivers/pwm/core.c b/drivers/pwm/core.c
index 69724e1a5c26..4dd18d9446aa 100644
--- a/drivers/pwm/core.c
+++ b/drivers/pwm/core.c
@@ -94,7 +94,6 @@ static int set_enable(struct param_d *p, void *priv)
 int pwmchip_add(struct pwm_chip *chip)
 {
 	struct pwm_device *pwm;
-	struct param_d *p;
 	int ret;
 
 	if (!chip->devname)
@@ -117,24 +116,18 @@ int pwmchip_add(struct pwm_chip *chip)
 
 	list_add_tail(&pwm->node, &pwm_list);
 
-	p = dev_add_param_uint32(&pwm->dev, "duty_ns", apply_params,
-			NULL, &pwm->params.duty_cycle, "%u", pwm);
-	if (IS_ERR(p))
-		return PTR_ERR(p);
+	dev_add_param_uint32(&pwm->dev, "duty_ns", apply_params,
+			     NULL, &pwm->params.duty_cycle, "%u", pwm);
 
-	p = dev_add_param_uint32(&pwm->dev, "period_ns", apply_params,
-			NULL, &pwm->params.period, "%u", pwm);
-	if (IS_ERR(p))
-		return PTR_ERR(p);
+	dev_add_param_uint32(&pwm->dev, "period_ns", apply_params,
+			     NULL, &pwm->params.period, "%u", pwm);
 
-	p = dev_add_param_bool(&pwm->dev, "enable", set_enable,
-			NULL, &pwm->params.enabled, pwm);
-	if (IS_ERR(p))
-		return PTR_ERR(p);
+	dev_add_param_bool(&pwm->dev, "enable", set_enable,
+			   NULL, &pwm->params.enabled, pwm);
 
-	p = dev_add_param_bool(&pwm->dev, "inverted", apply_params,
-			       NULL, &pwm->params.polarity, pwm);
-	return PTR_ERR_OR_ZERO(p);
+	dev_add_param_bool(&pwm->dev, "inverted", apply_params,
+			   NULL, &pwm->params.polarity, pwm);
+	return 0;
 }
 EXPORT_SYMBOL_GPL(pwmchip_add);
 
-- 
2.39.2



