Delivery-date: Fri, 30 Jan 2026 06:18:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vlgtT-006s2D-0T
	for lore@lore.pengutronix.de;
	Fri, 30 Jan 2026 06:18:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vlgtP-0002RC-8O
	for lore@pengutronix.de; Fri, 30 Jan 2026 06:18:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=01v4XVFP8Q/pkBL/7bEL1aDcPpGUyUWePIzs3Zip6SQ=; b=gsiBPUHAiJkmi2NME//IMg1kEF
	cRmVa76WumYDnjYB2LaTQ9/qFdBFPpBxz8QVyLUguxvm5oZfeAGJYBEdpoU2FUHKiAtyWHyxdOTQA
	oLbSBPBnPjDRPhkcVfSlISA2FVS+bGoVUHVCR0FSELX0G5bhUe1k6Qi2fjAgSimprKk5UNzLv+SlQ
	w6+fHpXvU60jLO4pnd3I2JeGIDbsIRC22+f32tnOFSA+tHG4PKoWPBgl5Lb7QXfncKzUuVWfvYbyo
	mXB2132+ZIgwM79u1ENfiEWRdGb/urKKUpGa178ukfN4hpE2G/t0qq23WEr1RTMKoxlerzmIh2ROe
	wkpm1VVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlgso-000000012EJ-1HWw;
	Fri, 30 Jan 2026 05:17:26 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlgsh-0000000124Y-1QBZ
	for barebox@lists.infradead.org;
	Fri, 30 Jan 2026 05:17:21 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4806dffc64cso12800015e9.1
        for <barebox@lists.infradead.org>; Thu, 29 Jan 2026 21:17:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769750237; x=1770355037; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=01v4XVFP8Q/pkBL/7bEL1aDcPpGUyUWePIzs3Zip6SQ=;
        b=gMByH1qyCcXQScAW2M0cN+RlmRzouL7aoSK9yf3q4Islvnq/FUVURf4HskOmGgYzw6
         uIoiugo6wNefYBLS/nqcmK964daNJfAYKFLNnPEig47ynwa8/UuwiN2OBLOhwJB+R6uz
         s/U6lPdqdF69b5Gmg+IBqqHeaCS7Dxx0ohu5a+A4RvLUCbAachA9LirRpCTo6uIDdAwe
         udlWuBwQIFIB4r4vYHWcDivsRBASUE5Ssbu+TGWBO0u2SK55ePm1653n925SNJMcqtgF
         5vzMulrmSOT293iZbUZrj2X85q9PTt4rGTnrStVMvn8NQ/wQgu/5q37Zj2mwXQMF3Pci
         F0RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769750237; x=1770355037;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=01v4XVFP8Q/pkBL/7bEL1aDcPpGUyUWePIzs3Zip6SQ=;
        b=knJiPCAfJGj0EmCc7Z7se7YP1iUToLQY2Pzqucca2vVvo7DS3wkHB0tWy6S1oGh9e6
         VnbR78QZ9LF5c8A7z7VVhlY6Cx6i21xh1CSebtd0IxMdd24nKwHa8XgbsSC99FuBvdY2
         YFGQ4NPdGIAFUZyHk3bGkIpBxhHgQO9chMPnceugkNiWFfBvk59Y1PbW79LwifZWqgqN
         fWCw8Fx2EgcBx0QaQG0nqSKp5PfWXW4BeJr+iOQArMTsLwdJVdfIEiUJw8rAr8JYUM0Y
         raabXoBdIpqTpfJ5GdvSS1oxAOFU9TjTZgdX2c6JwpTsUOn9IjYRraIYPCx3bWnpPV9L
         Zc9Q==
X-Forwarded-Encrypted: i=1; AJvYcCXwN6YXJL1uNIQKAgt165MA6/znZLOAm4mWQkZ2b10u3NxzyIVonhQBaHEhfgEJ3HogVMnwgFl+@lists.infradead.org
X-Gm-Message-State: AOJu0Yx+nH3qyHKaFMlXCdqOcF4DQvzmLrI4vPqC+kfOVi+zOuQ+ong+
	HFiXh5qpJOpNyP0TshY8gpoIxlDc9Ej+w4p5qQRSbmy8ZMJCv3n2wPh/
X-Gm-Gg: AZuq6aK2vvsu8tJVj+WnEAeC7N32setC2swn35qcnjMipmYdebwu6sWUVNIp9DHo9V2
	yS5obBw7Ot++qrP9b4kwwBQ25nzC9a2zBfDJuvE9GFTaePM5zsH4WnLmSSEtpj3wdQoRHbotvD5
	ktDGA8qOMhPd1sKyLgcGuq3aWP7PtIAdYJKddGQWjS2ROAPEqSyy6890YLjFg43yjFhUo/MuRoc
	E68042voXGABbv+qwxh/Gl6VNiIEg445uSCoVHR0RNtqcnoNbJ1YWUo7YSfpS0u0XxMxMBYqoAH
	i4DWA37yJ5Y7JmVWv2Dz7iwi/XL6b1GqPEuiGlIo65dQAUPcWgcRdf440jQVzajE+R5gk+TczqJ
	XAPXXY0sJ83P2sHbyYS2YOQbISPC4aBLbJd23XCzStKX2B2qhwVHXtphv1jNwdwLmhb2J/FW7PA
	V+M7CWLRZODX50JAHFZKbtqonGYRMvYiGWmwWeKTo6v0VNsVvZlteOsbPCllSr4Xuig19ZzOwuY
	ee8WdbcBMrqDRnTA5EpAtnoiHrsBvFoeVpmAMhlw8XN4hSqoMy9h9Z6TjkPJMP/9nzUWBS4I6Au
	urgjtAZb8aBj0xNcr2Dj/SA3iB/J714atQyAK27exHQ+cbZM5YZy
X-Received: by 2002:a05:6000:22c5:b0:435:b67d:c304 with SMTP id ffacd0b85a97d-435f3aaf790mr2201634f8f.38.1769750237309;
        Thu, 29 Jan 2026 21:17:17 -0800 (PST)
Received: from [127.0.1.1] (2a02-8388-08be-f800-ad12-b37c-7013-7685.cable.dynamic.v6.surfer.at. [2a02:8388:8be:f800:ad12:b37c:7013:7685])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e10e4762sm18943088f8f.6.2026.01.29.21.17.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 21:17:16 -0800 (PST)
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Date: Fri, 30 Jan 2026 06:17:01 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260130-barebox-kickpi-v2-9-d27cf94a39b6@gmail.com>
References: <20260130-barebox-kickpi-v2-0-d27cf94a39b6@gmail.com>
In-Reply-To: <20260130-barebox-kickpi-v2-0-d27cf94a39b6@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Sohaib Mohamed <sohaib.amhmd@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769750228; l=3525;
 i=sohaib.amhmd@gmail.com; s=20251127; h=from:subject:message-id;
 bh=atOKxYMM+B2U/C6Ydf6qAYRuZX0KU7ZgR8Iot/AsHGE=;
 b=djHL4nEfEqM0SRoxQ7j/SJbZwbvxkhZG/NZWqn2+C8xynqeob+hAXlm0i1ifroAHO3hYt2D1B
 teVBBYPrPlDAHzGPa1/yTveRcC3dPtfb+TyF7Yxo+E4YEamLz56lJXv
X-Developer-Key: i=sohaib.amhmd@gmail.com; a=ed25519;
 pk=Q1nrPhN99EawVQo4UT9CZVAG4nQ2Zq/e3sfCABjccgk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260129_211719_408945_67AD6523 
X-CRM114-Status: GOOD (  11.60  )
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
X-Spam-Status: No, score=-2.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 09/14] phy: rockchip-inno-usb2: Add support for RK3562
 PHY
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add support for the RK3562 PHY variant.

Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 52 ++++++++++++++++++++++++++-
 1 file changed, 51 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 9805537c34..6b57522090 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -394,7 +394,8 @@ static int rockchip_usb2phy_probe(struct device *dev)
 	rphy->dev = dev;
 
 	if (of_device_is_compatible(np, "rockchip,rv1108-usb2phy") ||
-	    of_device_is_compatible(np, "rockchip,rk3568-usb2phy"))
+	    of_device_is_compatible(np, "rockchip,rk3568-usb2phy") ||
+	    of_device_is_compatible(np, "rockchip,rk3562-usb2phy"))
 		rphy->grf_base = syscon_regmap_lookup_by_phandle(np, "rockchip,usbgrf");
 	else
 		rphy->grf_base = syscon_node_to_regmap(dev->parent->of_node);
@@ -857,6 +858,54 @@ static const struct rockchip_usb2phy_cfg rk3399_phy_cfgs[] = {
 	{ /* sentinel */ }
 };
 
+static const struct rockchip_usb2phy_cfg rk3562_phy_cfgs[] = {
+	{
+		.reg = 0xff740000,
+		.num_ports	= 2,
+		.clkout_ctl	= { 0x0108, 4, 4, 1, 0 },
+		.port_cfgs	= {
+			[USB2PHY_PORT_OTG] = {
+				.phy_sus	= { 0x0100, 8, 0, 0, 0x1d1 },
+				.bvalid_det_en	= { 0x0110, 2, 2, 0, 1 },
+				.bvalid_det_st	= { 0x0114, 2, 2, 0, 1 },
+				.bvalid_det_clr = { 0x0118, 2, 2, 0, 1 },
+				.idfall_det_en	= { 0x0110, 5, 5, 0, 1 },
+				.idfall_det_st	= { 0x0114, 5, 5, 0, 1 },
+				.idfall_det_clr = { 0x0118, 5, 5, 0, 1 },
+				.idrise_det_en	= { 0x0110, 4, 4, 0, 1 },
+				.idrise_det_st	= { 0x0114, 4, 4, 0, 1 },
+				.idrise_det_clr = { 0x0118, 4, 4, 0, 1 },
+				.ls_det_en	= { 0x0110, 0, 0, 0, 1 },
+				.ls_det_st	= { 0x0114, 0, 0, 0, 1 },
+				.ls_det_clr	= { 0x0118, 0, 0, 0, 1 },
+				.utmi_avalid	= { 0x0120, 10, 10, 0, 1 },
+				.utmi_bvalid	= { 0x0120, 9, 9, 0, 1 },
+				.utmi_ls	= { 0x0120, 5, 4, 0, 1 },
+			},
+			[USB2PHY_PORT_HOST] = {
+				.phy_sus	= { 0x0104, 8, 0, 0x1d2, 0x1d1 },
+				.ls_det_en	= { 0x0110, 1, 1, 0, 1 },
+				.ls_det_st	= { 0x0114, 1, 1, 0, 1 },
+				.ls_det_clr	= { 0x0118, 1, 1, 0, 1 },
+				.utmi_ls	= { 0x0120, 17, 16, 0, 1 },
+				.utmi_hstdet	= { 0x0120, 19, 19, 0, 1 }
+			}
+		},
+		.chg_det = {
+			.cp_det		= { 0x0120, 24, 24, 0, 1 },
+			.dcp_det	= { 0x0120, 23, 23, 0, 1 },
+			.dp_det		= { 0x0120, 25, 25, 0, 1 },
+			.idm_sink_en	= { 0x0108, 8, 8, 0, 1 },
+			.idp_sink_en	= { 0x0108, 7, 7, 0, 1 },
+			.idp_src_en	= { 0x0108, 9, 9, 0, 1 },
+			.rdm_pdwn_en	= { 0x0108, 10, 10, 0, 1 },
+			.vdm_src_en	= { 0x0108, 12, 12, 0, 1 },
+			.vdp_src_en	= { 0x0108, 11, 11, 0, 1 },
+		},
+	},
+	{ /* sentinel */ }
+};
+
 static const struct rockchip_usb2phy_cfg rv1108_phy_cfgs[] = {
 	{
 		.reg = 0x100,
@@ -1040,6 +1089,7 @@ static const struct of_device_id rockchip_usb2phy_dt_match[] = {
 	{ .compatible = "rockchip,rk322x-usb2phy", .data = &rk322x_phy_cfgs },
 	{ .compatible = "rockchip,rk3308-usb2phy", .data = &rk3328_phy_cfgs },
 	{ .compatible = "rockchip,rk3328-usb2phy", .data = &rk3328_phy_cfgs },
+	{ .compatible = "rockchip,rk3562-usb2phy", .data = &rk3562_phy_cfgs },
 	{ .compatible = "rockchip,rk3368-usb2phy", .data = &rk3368_phy_cfgs },
 	{ .compatible = "rockchip,rk3399-usb2phy", .data = &rk3399_phy_cfgs },
 	{ .compatible = "rockchip,rk3568-usb2phy", .data = &rk3568_phy_cfgs },

-- 
2.43.0



