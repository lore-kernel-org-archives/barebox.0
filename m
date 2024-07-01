Delivery-date: Mon, 01 Jul 2024 09:32:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBWz-000QQl-18
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 09:32:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBWy-0007HG-NO
	for lore@pengutronix.de; Mon, 01 Jul 2024 09:32:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sxdltfkq1k3KhL74nTznRkc5VMH32/Tc2IDzVzJte9o=; b=sLYe7R4Rm+9sxWPo91n7BRSV/J
	zIiY+b7y8AigXG3Cdr+pMkXvf+QqCjq6UQOa7jKz7mG9GwwY69l9uKMbFPQ9PC6X1WbLDnaSxDkB7
	1aWsDr4bgbwY4i92TzidWFtYswdi1DmzCg/qxrTMg5UjMdnIaJEPssi78FVf0qfwTbk94uVTrAZAK
	hvNasQkfNGSlpRP71f+mLpHArz1pGpvkFUKBzfQNSPLUmSljvHJWCSTg5JL9noCj6dzhAq0y76W7K
	ko4f4Jt/SMFLehSVYegzjFx9E6lnLM6wdZXZo1ALwiQJzdlMDCUllHwUfsfuxzjo64jO8b9EHo2eJ
	DFH8qNGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBWY-000000022m4-0aoQ;
	Mon, 01 Jul 2024 07:32:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBWR-000000022ib-2Gle
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 07:32:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBWQ-0006ve-7J; Mon, 01 Jul 2024 09:32:22 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBWP-006JjI-QS; Mon, 01 Jul 2024 09:32:21 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBWP-000hos-2M;
	Mon, 01 Jul 2024 09:32:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Jul 2024 09:32:17 +0200
Message-Id: <20240701073220.165946-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240701073220.165946-1-a.fatoum@pengutronix.de>
References: <20240701073220.165946-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_003223_701388_5EA435FB 
X-CRM114-Status: GOOD (  12.51  )
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
Subject: [PATCH 4/7] pinctrl: rockchip: add support for configuring schmitt trigger
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We had code to calculate the register layout for setting schmitt
triggers on pins, but it was not actually used.

Fix this and start parsing the input-schmitt-enable/disable properties.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pinctrl/pinctrl-rockchip.c | 40 ++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 4276c578a6cc..4177071f26ff 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -2358,6 +2358,42 @@ static struct rockchip_pin_ctrl *rockchip_pinctrl_get_soc_data(
 	return ctrl;
 }
 
+static int rockchip_set_schmitt(struct rockchip_pin_bank *bank,
+				int pin_num, int enable)
+{
+	struct rockchip_pinctrl *info = bank->drvdata;
+	struct rockchip_pin_ctrl *ctrl = info->ctrl;
+	struct device *dev = info->dev;
+	struct regmap *regmap;
+	int reg, ret;
+	u8 bit;
+	u32 data, rmask;
+
+	if (!info->ctrl->schmitt_calc_reg)
+		return -ENOTSUPP;
+
+	dev_dbg(dev, "setting input schmitt of GPIO%d-%d to %d\n",
+		bank->bank_num, pin_num, enable);
+
+	ret = ctrl->schmitt_calc_reg(bank, pin_num, &regmap, &reg, &bit);
+	if (ret)
+		return ret;
+
+	/* enable the write to the equivalent lower bits */
+	switch (ctrl->type) {
+	case RK3568:
+		data = ((1 << RK3568_SCHMITT_BITS_PER_PIN) - 1) << (bit + 16);
+		rmask = data | (data >> 16);
+		data |= ((enable ? 0x2 : 0x1) << bit);
+		break;
+	default:
+		data = BIT(bit + 16) | (enable << bit);
+		rmask = BIT(bit + 16) | BIT(bit);
+		break;
+	}
+
+	return regmap_update_bits(regmap, reg, rmask, data);
+}
 static int rockchip_pinctrl_set_state(struct pinctrl_device *pdev,
 				      struct device_node *np)
 {
@@ -2400,6 +2436,10 @@ static int rockchip_pinctrl_set_state(struct pinctrl_device *pdev,
 		ret = of_property_read_u32(np_config, "drive-strength", &drive_strength);
 		if (!ret)
 			rockchip_set_drive_perpin(bank, pin_num, drive_strength);
+		if (of_property_read_bool(np_config, "input-schmitt-enable"))
+			rockchip_set_schmitt(bank, pin_num, true);
+		if (of_property_read_bool(np_config, "input-schmitt-disable"))
+			rockchip_set_schmitt(bank, pin_num, false);
 	}
 
 	return 0;
-- 
2.39.2



