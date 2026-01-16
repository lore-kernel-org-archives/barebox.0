Delivery-date: Fri, 16 Jan 2026 20:43:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgpjY-0024Sb-1w
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 20:43:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgpjT-0001dB-QJ
	for lore@pengutronix.de; Fri, 16 Jan 2026 20:43:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=01v4XVFP8Q/pkBL/7bEL1aDcPpGUyUWePIzs3Zip6SQ=; b=Y0/eoKZC1wPVfAQgb9cyBPm7aO
	gmLimkIdthsO6qoLe0ptTfKKlHG6pYIGN75YpFqcGxcQTdWTqxtM/tT8IQmM2Sfv4Qo3Oeh4/KWEA
	9FhN4LDN0v/uDhXFCYhGcZzd2N3cxFChpHJMu5JRSBc70CoNJlnCFmVx/9hLtGK2uBxFp5CfM9By8
	C/4hO+xoubBNZ7j4yKZM8edNQFR+n41rfURV/dhe1J/O+PB/8CclFxVTtbo3b2ASPGWr+MLoXM6ev
	/yt5ma8b5VdRs18d46Xh2VNyRq/LEQCzRQCBEHPvl2WSQTx1OO4ziLwrrYWpZy7HXri5RHpS/Hddt
	ZMPQBxiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgpik-0000000Ehre-0DwJ;
	Fri, 16 Jan 2026 19:42:58 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgpif-0000000Ehkh-3RD3
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 19:42:55 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-64b58553449so4180551a12.1
        for <barebox@lists.infradead.org>; Fri, 16 Jan 2026 11:42:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768592572; x=1769197372; darn=lists.infradead.org;
        h=to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=01v4XVFP8Q/pkBL/7bEL1aDcPpGUyUWePIzs3Zip6SQ=;
        b=MokjaEcP7tlQWSoRsBJ4Nw3h62yIKa3S+Lcz5xHOmVfgPbxhY0YsvzAMVApzC4y5zw
         VJTH/XSI+OxzMS3vjAe+ETAu7jiMrTCDw0q5csITcceGLLTy6KWSHCulpV+PSm8pXl+g
         DhsMmwKHVJ2QHE3alcNecbeSJJARkl11ql81Ow6FG1LGixREfy+5C2TaYLR8xLiIXEN+
         5w+vGHsZBSlmhGtdeqMF9LaIFy3vLfPHyrOpqApjnJJ/YWJP1nGaE5GySfB2+tA5Fo4i
         0bWkBO7Ci/By5zhR5UtwkYQdfZLS4GY8xuQygzivGrzkNforxwnDRVMzsmLyqxLY56/p
         uY/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768592572; x=1769197372;
        h=to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=01v4XVFP8Q/pkBL/7bEL1aDcPpGUyUWePIzs3Zip6SQ=;
        b=TZN8FOKqFmxVZGVMGz47PEMYh35T64rWxgdCcpboMA/9yiPmDQqado7136cTOlrbxB
         vDC8sfBx9Yv6k4Eh5/K/6pjzAKheG1wrvY77R1kPQ9y2plreiG0I3QYxHKeuZ0t5+8Iq
         6r3UwV+hikEVMzW5/RZacQ+n8zTypfcYxAZ0HtJhWPbsmLN53hfndRH5jVWB0MEJ2sM6
         Sof7OG07ca/CFssBAQsC80WbTIiNISvveMiErwNMQEJcwWhn1FKQZc8NjdCtI7Ltt7TV
         gK8NvzBlRuYNZiD+cquZ5fnfyfPJvnhJcA/UB3LRgNwwGEOdrocOMG/Y0v/3IuB2SCmO
         BcHw==
X-Forwarded-Encrypted: i=1; AJvYcCUyxtkX40mVvG1x6JWoPZXMjEuszCQ3yfrgVJAVepls4C+yhXYIozC+p4nzkcSTylMZuS0++Q/m@lists.infradead.org
X-Gm-Message-State: AOJu0YwEu4nHEbLPTRL5bl2ygZGrTalZo90ueXq431snc0MgQp05Hxib
	72Mm9evh/X0VUv5+PnuIO10FV87kLiSM04hB+k2cy7iRjxrUOhvuzNpr
X-Gm-Gg: AY/fxX7kXGUh5aKLImwpUIqKH2ezZGSvfFetD+3FlLDd4UdYNPVyAgWtFeXjwqxSOaF
	MlV3SgEoc9bZrz0Bsk70f8eZRUW5FmeJfkcDc3ff8mwonvu+KTKbWeSW6IHUxF7K9dHXaJYWN1Z
	m9GrbTL5xRh1wx4dHHeAvi9Crl/wW5PxpLi4x9pzM/pD8kYA/3DCR172xmkfWdM/Ws7PFDpkSVp
	076zY2+YZgcAFO8JyNSNDb2DhzQl0Q25F7dW7bW5drgw04zE+3y7SkIStdaovv3iSBZ69DBlQd3
	6n6Mk89JBA+KbF6Lsi6qCWUHZF9ZJwxsr7Tdk/2c7GJF6HNXjGog8miDcvVwE692m+fqkHc6voA
	ibgWR46xmaRWFtzuyvbTaJWQg9ypx2ct+c70dYG49c2+N3kMby7gZ1Xhw1qJgjRtuR5OQdq2lZs
	u+Usvd155vxAmYFz90aRHGfuiz4KhrCUp9sLoODjdmuZ1FVFTLmlUih4oFAq4BhgYq/hRit26rh
	SAaYWbOOLrNUE2ORBF2RzNjwp5kP/FynpycOeb9Z4Z0WiNlDtRR5zFkdO4gRRxX0DZkSrEZZqtR
	SMvvLEd8NwjAPzvdxDsUEVKcUYZd6ErEKXUu0Y9FNA==
X-Received: by 2002:a17:907:2d09:b0:b86:e938:1b3a with SMTP id a640c23a62f3a-b8792e37fc8mr309517266b.17.1768592571663;
        Fri, 16 Jan 2026 11:42:51 -0800 (PST)
Received: from [127.0.1.1] (2a02-8388-08be-f800-f96f-90ee-b1eb-797e.cable.dynamic.v6.surfer.at. [2a02:8388:8be:f800:f96f:90ee:b1eb:797e])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b87959c9fb0sm328166266b.43.2026.01.16.11.42.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 11:42:51 -0800 (PST)
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Date: Fri, 16 Jan 2026 20:40:43 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260116-barebox-kickpi-v1-9-d11fbccd527a@gmail.com>
References: <20260116-barebox-kickpi-v1-0-d11fbccd527a@gmail.com>
In-Reply-To: <20260116-barebox-kickpi-v1-0-d11fbccd527a@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Sohaib Mohamed <sohaib.amhmd@gmail.com>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768592564; l=3525;
 i=sohaib.amhmd@gmail.com; s=20251127; h=from:subject:message-id;
 bh=atOKxYMM+B2U/C6Ydf6qAYRuZX0KU7ZgR8Iot/AsHGE=;
 b=dBDXWcMBls8hdgBYO2q9T3AfSqm0jX6nXiMIa53sFfZVq4TaIid7vosZ/m2DKDGjErZDsGEgk
 QW+9tff+G3DAZhKa/d4Y6IVlkElIqdtLrBpT6az6r5EJSjPrJckaulO
X-Developer-Key: i=sohaib.amhmd@gmail.com; a=ed25519;
 pk=Q1nrPhN99EawVQo4UT9CZVAG4nQ2Zq/e3sfCABjccgk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_114253_900225_6280D7CE 
X-CRM114-Status: GOOD (  11.21  )
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
X-Spam-Status: No, score=-2.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 09/14] phy: rockchip-inno-usb2: Add support for RK3562 PHY
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



