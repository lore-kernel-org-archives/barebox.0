Delivery-date: Mon, 28 Oct 2024 15:41:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5Qvf-001tjP-2s
	for lore@lore.pengutronix.de;
	Mon, 28 Oct 2024 15:41:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5Qve-000521-Em
	for lore@pengutronix.de; Mon, 28 Oct 2024 15:41:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ybGa9229PUARWRA1bYdE6gdM9UG+/Qvnarp5fK4bqlw=; b=VPZYoMXn/nksSVd6w3ho8lMZZT
	RlhAEDlITZ67ZQ0AsdDj3pEr+QP3DONqMCJmu3SZ6u2SlKpCg3aMlF6MOsPbRBRNZSOmQgF/c/nG0
	MxZVKJGUAaLgZ0EL36vKMXxbo/dqPl+PvaqEAXtKj1iucRY9eCqKvX2BHXF5DImyoGgh8sgn5L+ok
	fr7CZunBRb6yW7LwWRSeKg4t8QoXwZd8kptzTvu4R0774HOLXUVXB/bb8cNhYPKLHMrn4eP5Dn05z
	BdyrK3BWfZ+f0lLYcsY/0YxSR5nRBMQW6kMkIZwgi8w3+VlnaVpFTeOKlJ5VXByON19gKZCdlXVk2
	oT4z7R5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5Qux-0000000B9jN-1sj9;
	Mon, 28 Oct 2024 14:40:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5Qb6-0000000B5qV-10XT
	for barebox@lists.infradead.org;
	Mon, 28 Oct 2024 14:19:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t5Qax-0002no-2L; Mon, 28 Oct 2024 15:19:47 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t5Qaw-000s7Q-2G;
	Mon, 28 Oct 2024 15:19:46 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t5Qaw-00EMX2-1x;
	Mon, 28 Oct 2024 15:19:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Oct 2024 15:19:53 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241028-vop2-rk3588-v1-8-a54bf7c28adc@pengutronix.de>
References: <20241028-vop2-rk3588-v1-0-a54bf7c28adc@pengutronix.de>
In-Reply-To: <20241028-vop2-rk3588-v1-0-a54bf7c28adc@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1730125186; l=2491;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=wPohZSfSF/B60rwTSiLirlovWQ66aSogepu9iFi4ZfA=;
 b=qEXDCxwctFlbdnfj3oEwVb9UIuB6lPr3/fAisswV8fQu7JfYz0yeIPaCIna6n1aTaaW15iQVN
 U6GusANtX+GCgs0TaOgbd44H/EBk59JvN/nCLbW1zov1q8wRojrrO0g
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241028_071956_364059_B8496FC6 
X-CRM114-Status: GOOD (  13.70  )
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
Subject: [PATCH 08/12] phy: rockchip-inno-usb2: add support for rk3588
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 46 +++++++++++++++++++++++++--
 1 file changed, 44 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index e46624111d..2dac64f04b 100644
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
@@ -971,6 +971,47 @@ static const struct rockchip_usb2phy_cfg rk3568_phy_cfgs[] = {
 	},
 	{ /* sentinel */ }
 };
+
+static const struct rockchip_usb2phy_cfg rk3588_phy_cfgs[] = {
+	{
+		.reg		= 0x0000,
+		.clkout_ctl	= { 0x0000, 0, 0, 1, 0 },
+		.port_cfgs	= {
+			[USB2PHY_PORT_OTG] = {
+				.phy_sus	= { 0x000c, 11, 11, 0, 1 },
+			}
+		},
+	},
+	{
+		.reg		= 0x4000,
+		.clkout_ctl	= { 0x0000, 0, 0, 1, 0 },
+		.port_cfgs	= {
+			[USB2PHY_PORT_OTG] = {
+				.phy_sus	= { 0x000c, 11, 11, 0, 1 },
+			}
+		},
+	},
+	{
+		.reg		= 0x8000,
+		.clkout_ctl	= { 0x0000, 0, 0, 1, 0 },
+		.port_cfgs	= {
+			[USB2PHY_PORT_HOST] = {
+				.phy_sus	= { 0x0008, 2, 2, 0, 1 },
+			}
+		},
+	},
+	{
+		.reg		= 0xc000,
+		.clkout_ctl	= { 0x0000, 0, 0, 1, 0 },
+		.port_cfgs	= {
+			[USB2PHY_PORT_HOST] = {
+				.phy_sus	= { 0x0008, 2, 2, 0, 1 },
+			}
+		},
+	},
+	{ /* sentinel */ }
+};
+
 static const struct of_device_id rockchip_usb2phy_dt_match[] = {
 	{ .compatible = "rockchip,rk1808-usb2phy", .data = &rk1808_phy_cfgs },
 	{ .compatible = "rockchip,rk3128-usb2phy", .data = &rk312x_phy_cfgs },
@@ -980,6 +1021,7 @@ static const struct of_device_id rockchip_usb2phy_dt_match[] = {
 	{ .compatible = "rockchip,rk3368-usb2phy", .data = &rk3368_phy_cfgs },
 	{ .compatible = "rockchip,rk3399-usb2phy", .data = &rk3399_phy_cfgs },
 	{ .compatible = "rockchip,rk3568-usb2phy", .data = &rk3568_phy_cfgs },
+	{ .compatible = "rockchip,rk3588-usb2phy", .data = &rk3588_phy_cfgs },
 	{ .compatible = "rockchip,rv1108-usb2phy", .data = &rv1108_phy_cfgs },
 	{ }
 };

-- 
2.39.5



