Delivery-date: Mon, 01 Jul 2024 09:33:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBX2-000QS6-2m
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 09:33:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBX2-0007JO-4J
	for lore@pengutronix.de; Mon, 01 Jul 2024 09:33:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GYyVzvPvC3PZeWis+L0jAqlkNZWwV1RqC1NE3CfqUno=; b=h1mYg9Qa/V77gzzpPZLKpJ9HsP
	/Rs1Kkcp8ssfjA4ZGb6UDwINvD8ZTzoRv43JyjM2FgSXBj1gzuevqYZqVDjOULMONTSnZ4MBNQGlw
	xvzoZgWeb9g7oQpczEVcLqqRTBPRj5AaLhL15+aVOcjQqTQav8zdWNmKoE7QNl1dPPvlbTT6Je8ni
	IxWMYNHRn5eQBLbVqV7gfKgUVcg8Wj5myXG574QgZhnRk4n/HCmz/WNm3wP07p1tNEDSW+cRIlyzv
	MpNl8SPwDLYhQHBRx1B3HKBgOBI7Sw2u8grJ3e02O04jQKJONQwb/qLkyNr/kDyiiz5Y9s5pXHq2v
	1j1HYdAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBWW-000000022lb-4AdY;
	Mon, 01 Jul 2024 07:32:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBWR-000000022ia-1npa
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 07:32:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBWQ-0006vc-5V; Mon, 01 Jul 2024 09:32:22 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBWP-006JjF-P4; Mon, 01 Jul 2024 09:32:21 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBWP-000hos-2D;
	Mon, 01 Jul 2024 09:32:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Jul 2024 09:32:16 +0200
Message-Id: <20240701073220.165946-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240701073220.165946-1-a.fatoum@pengutronix.de>
References: <20240701073220.165946-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_003223_504430_A755FC1A 
X-CRM114-Status: GOOD (  10.17  )
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
Subject: [PATCH 3/7] pinctrl: rockchip: use of_property_read_bool()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

No Rockchip device tree actually sets a value for these properties and
neither kernel or barebox driver cares about the property value.

Thus replace of_property_read_u32 with of_property_read_bool for
simplification.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pinctrl/pinctrl-rockchip.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index d80ac7d5dc04..4276c578a6cc 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -230,13 +230,11 @@ static struct rockchip_pinctrl *to_rockchip_pinctrl(struct pinctrl_device *pdev)
 
 static enum pin_config_param parse_bias_config(struct device_node *np)
 {
-	u32 val;
- 
-	if (of_property_read_u32(np, "bias-pull-up", &val) != -EINVAL)
+	if (of_property_read_bool(np, "bias-pull-up"))
 		return PIN_CONFIG_BIAS_PULL_UP;
-	else if (of_property_read_u32(np, "bias-pull-down", &val) != -EINVAL)
+	else if (of_property_read_bool(np, "bias-pull-down"))
 		return PIN_CONFIG_BIAS_PULL_DOWN;
-	else if (of_property_read_u32(np, "bias-bus-hold", &val) != -EINVAL)
+	else if (of_property_read_bool(np, "bias-bus-hold"))
 		return PIN_CONFIG_BIAS_BUS_HOLD;
 	else
 		return PIN_CONFIG_BIAS_DISABLE;
-- 
2.39.2



