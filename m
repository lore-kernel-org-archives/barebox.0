Delivery-date: Thu, 16 Jan 2025 14:31:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYPxw-000c11-2Z
	for lore@lore.pengutronix.de;
	Thu, 16 Jan 2025 14:31:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYPxw-000832-SX
	for lore@pengutronix.de; Thu, 16 Jan 2025 14:31:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HGIQn/J5E5QBhYHy0KqQmPMjFwE4Q3VjbCuLe5Q7g9s=; b=RyIWpeRec0NMiiU2Q0DBUO9ih4
	cwfezQvbO5TFuV48X1owuAojwOJ/gxiEbrDhasvZX5SJgmDw+UN/6ZqbCc/BzB7yGh/19LARUj0Oe
	8rPoFR8I2x4p/0rq6g5qpbCdEduaj177vjaYB9re1m2NXLLHs1XqhvMUxEc/5FrNtZSEiYU5pMO0x
	Ua0t++1lIIfndQBCJfenyDdCL0DwMRG2OJOSMGOsNZRL0g+qeJONfcV6HB10fiaWp8qpOZOGEUNTr
	rMA9GipQGh1KH2YfT3TOWS6SNzJcIJix1uY+ZMpURbQvcVrLFs//8kZtZEkzp+X3L7gi1dQeMycVz
	N0/iNUtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYPxJ-0000000F1O3-1j2O;
	Thu, 16 Jan 2025 13:30:41 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYPxG-0000000F1Ne-1Wob
	for barebox@lists.infradead.org;
	Thu, 16 Jan 2025 13:30:39 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-53e399e3310so1039342e87.1
        for <barebox@lists.infradead.org>; Thu, 16 Jan 2025 05:30:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737034235; x=1737639035; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HGIQn/J5E5QBhYHy0KqQmPMjFwE4Q3VjbCuLe5Q7g9s=;
        b=bAzVsTL94LbWl1/toJfuPtDtxw3Pw2P8GtVFVzE3E2teWv5hfvxl/gU1sLft+w1wdR
         tFgZLmSBbYRrp1qnYjgHXzX9x3lLjvdqlCavV+XGk12J3T69tM0nkjI+IDdOL10S4VQ9
         6p4vAXm2708qNwDnilFKnCwM+W4TdZwBTcF79m5giJzEEYeK+Vj4JT0Hk1HcthorOgjB
         +8nVildsZrN+0pRrfQXo/RfzXj7OpEPdRDXV4VZAK9fHLh9ETt8zAMDsW9JrdsDhQ2Rx
         LE3WeB5xiAN1y6H/yTV6/KrecNuoqtCP4y/veuG2LHEYIuaRGiTtWnTo4JxQ33IepFbT
         ly7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737034235; x=1737639035;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HGIQn/J5E5QBhYHy0KqQmPMjFwE4Q3VjbCuLe5Q7g9s=;
        b=xJ0OsgQktq6MAVJnt70APHOtuYb4e2EeVyAnzq7BKif6MmR2a6h2qFohKvkg/ETNC8
         V3ByMKEIIRyLlF9lZT+2zVKalfOQ+GOMelu3MXgL0A4q3/XQiI52KuUIYvUx/mprWNpX
         omjnblhq8XpHOSaCAZ4WlLH4ED7S4cLNGl9LJI/jtx0X2JM/n6MLCK5CQLSz5mL1jyCT
         oGnUhhog3Ukz8BhTbcFAezotwE2wYZGB5t3XegWCErnQbiTOxEkiOE6pzJkx0V9QokDu
         zuF1FCsepksUZqqfrnEyIjMtJ9IGN69ZcUURPLwG3ChEh+Jxc//xoBzVM/8ywBv5jLS9
         /vaw==
X-Gm-Message-State: AOJu0YxKlgrA8Vy6vh3RCMrubmg5PsROhTYmMYHPTFKFPJsNBnczIhVn
	g+tQ1fE5hHrdHCHmA8UJOCB4mqum8J6Du+/z1cRFM/6rggUcZVoOyM64aA==
X-Gm-Gg: ASbGncvuLhVStnlqSTr3hMWxNOP7sSROFCjXTQwxh8bF7gdsx8VTLJBR7gcwcf9rHAe
	JOwMy/e83eAvIIOQiZyoum5QKX9M1/hZW7Z6bK5nflTiGwA16BWeu9JGokAjGz3Stz6sFf3C0rU
	t8C4uvJDxFBF8moDSOP7oFnJ+AwDCQKbqkGjc4s75sm/iK6hSo3sZlz44tMe0IOhtQECGrfrZtD
	ctpweXmyr9hmyjjWpdHll1V775oIm8gKAgZ9ZleSZfIKOaQBM1smt5lWVus0H+sAdE/r+RV7HjN
	isEP1w==
X-Google-Smtp-Source: AGHT+IGctaM1f765aDalwpA6Qmg9OrN9M31xGVba6+6EmhPnafLQuaYY9AFBjISbxKN+/kDkMMVPpQ==
X-Received: by 2002:a05:6512:3190:b0:541:21d7:7056 with SMTP id 2adb3069b0e04-542845b67afmr11261676e87.17.1737034235189;
        Thu, 16 Jan 2025 05:30:35 -0800 (PST)
Received: from localhost.localdomain ([95.161.223.172])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428be49d7esm2332308e87.19.2025.01.16.05.30.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2025 05:30:33 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 16 Jan 2025 16:30:21 +0300
Message-Id: <20250116133021.2518756-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250116_053038_404025_112AB322 
X-CRM114-Status: GOOD (  13.23  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] phy: rockchip-inno-usb2: Add  support for RK3588 PHY
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add support for the RK3588 PHY variant.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 66 ++++++++++++++++++-
 1 file changed, 64 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 34abbd85db..1b9ffe7507 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -416,13 +416,13 @@ static int rockchip_usb2phy_probe(struct device *dev)
 
 	/* find out a proper config which can be matched with dt. */
 	index = 0;
-	while (phy_cfgs[index].reg) {
+	do {
 		if (phy_cfgs[index].reg == reg) {
 			rphy->phy_cfg = &phy_cfgs[index];
 			break;
 		}
 		++index;
-	}
+	} while (phy_cfgs[index].reg);
 
 	if (!rphy->phy_cfg) {
 		dev_err(dev, "no phy-config can be matched\n");
@@ -971,6 +971,67 @@ static const struct rockchip_usb2phy_cfg rk3568_phy_cfgs[] = {
 	},
 	{ /* sentinel */ }
 };
+
+static const struct rockchip_usb2phy_cfg rk3588_phy_cfgs[] = {
+	{
+		.reg		= 0x0000,
+		.num_ports	= 1,
+		.clkout_ctl	= { 0x0000, 0, 0, 1, 0 },
+		.port_cfgs	= {
+			[USB2PHY_PORT_OTG] = {
+				.phy_sus	= { 0x000c, 11, 11, 0, 1 },
+				.ls_det_en	= { 0x0080, 0, 0, 0, 1 },
+				.ls_det_st	= { 0x0084, 0, 0, 0, 1 },
+				.ls_det_clr	= { 0x0088, 0, 0, 0, 1 },
+				.utmi_ls	= { 0x00c0, 10, 9, 0, 1 },
+			}
+		},
+	},
+	{
+		.reg		= 0x4000,
+		.num_ports	= 1,
+		.clkout_ctl	= { 0x0000, 0, 0, 1, 0 },
+		.port_cfgs	= {
+			[USB2PHY_PORT_OTG] = {
+				.phy_sus	= { 0x000c, 11, 11, 0, 0 },
+				.ls_det_en	= { 0x0080, 0, 0, 0, 1 },
+				.ls_det_st	= { 0x0084, 0, 0, 0, 1 },
+				.ls_det_clr	= { 0x0088, 0, 0, 0, 1 },
+				.utmi_ls	= { 0x00c0, 10, 9, 0, 1 },
+			}
+		},
+	},
+	{
+		.reg		= 0x8000,
+		.num_ports	= 1,
+		.clkout_ctl	= { 0x0000, 0, 0, 1, 0 },
+		.port_cfgs	= {
+			[USB2PHY_PORT_HOST] = {
+				.phy_sus	= { 0x0008, 2, 2, 0, 1 },
+				.ls_det_en	= { 0x0080, 0, 0, 0, 1 },
+				.ls_det_st	= { 0x0084, 0, 0, 0, 1 },
+				.ls_det_clr	= { 0x0088, 0, 0, 0, 1 },
+				.utmi_ls	= { 0x00c0, 10, 9, 0, 1 },
+			}
+		},
+	},
+	{
+		.reg		= 0xc000,
+		.num_ports	= 1,
+		.clkout_ctl	= { 0x0000, 0, 0, 1, 0 },
+		.port_cfgs	= {
+			[USB2PHY_PORT_HOST] = {
+				.phy_sus	= { 0x0008, 2, 2, 0, 1 },
+				.ls_det_en	= { 0x0080, 0, 0, 0, 1 },
+				.ls_det_st	= { 0x0084, 0, 0, 0, 1 },
+				.ls_det_clr	= { 0x0088, 0, 0, 0, 1 },
+				.utmi_ls	= { 0x00c0, 10, 9, 0, 1 },
+			}
+		},
+	},
+	{ /* sentinel */ }
+};
+
 static const struct of_device_id rockchip_usb2phy_dt_match[] = {
 	{ .compatible = "rockchip,rk1808-usb2phy", .data = &rk1808_phy_cfgs },
 	{ .compatible = "rockchip,rk3128-usb2phy", .data = &rk312x_phy_cfgs },
@@ -980,6 +1041,7 @@ static const struct of_device_id rockchip_usb2phy_dt_match[] = {
 	{ .compatible = "rockchip,rk3368-usb2phy", .data = &rk3368_phy_cfgs },
 	{ .compatible = "rockchip,rk3399-usb2phy", .data = &rk3399_phy_cfgs },
 	{ .compatible = "rockchip,rk3568-usb2phy", .data = &rk3568_phy_cfgs },
+	{ .compatible = "rockchip,rk3588-usb2phy", .data = &rk3588_phy_cfgs },
 	{ .compatible = "rockchip,rv1108-usb2phy", .data = &rv1108_phy_cfgs },
 	{ }
 };
-- 
2.38.2



