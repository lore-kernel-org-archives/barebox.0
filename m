Delivery-date: Mon, 01 Jul 2024 09:35:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBZv-000QVE-0u
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 09:35:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBZu-0007st-Nt
	for lore@pengutronix.de; Mon, 01 Jul 2024 09:35:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dVRmNcsn/6OIHMu5UoEgYYghC16WJil2M/Y/1bJiz2I=; b=FPiHNXaVtbNnEDEwwIlVXZXAMb
	bjCVGRwmYhwt4gMyooSTYjhTJk8rwdeLIQZ+viZXaVAuT39YFiJYvlbKh6aIDEGtsaxxvskh7OENg
	32ofYx6YnaE8D0aCK3vGGQUGS1PEXkHz24qkYQkYgGauBNxnidwTAMVRQACFOiMi5eSx071m26bTe
	t2gluvFkp0QiopOxO3WNWdF+W5xjug6EBUcf21rXWvldTcYnzAEvn+iZ+KsecCqA3FlqfWVapjO6/
	aFAZuorwpDGJ+hDrg/F+lD8wU4LZFhmXLtlct93+1L3rp2iQPD6xgnAUPpGaUi3I6ASciBKx5BssA
	gb8bJmpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBZW-000000023gX-0fH2;
	Mon, 01 Jul 2024 07:35:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBZR-000000023dU-1mcD
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 07:35:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBZQ-0007e8-5P; Mon, 01 Jul 2024 09:35:28 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBZP-006Jme-Nl; Mon, 01 Jul 2024 09:35:27 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBZP-000jsj-26;
	Mon, 01 Jul 2024 09:35:27 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Jul 2024 09:35:26 +0200
Message-Id: <20240701073526.176353-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240701073526.176353-1-a.fatoum@pengutronix.de>
References: <20240701073526.176353-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_003529_566229_AC2602E6 
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] fpga: bridge: remove needless error checking for device parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The bridge device is specifically created for purposes of the FPGA
bridge framework. There should thus be no naming clashes and
-ENOMEM is not a fatal error there either, because the PWM C API
is still usable without the device parameters.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/fpga/fpga-bridge.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/fpga/fpga-bridge.c b/drivers/fpga/fpga-bridge.c
index 5db24cb5bd74..0ca8a2b513e9 100644
--- a/drivers/fpga/fpga-bridge.c
+++ b/drivers/fpga/fpga-bridge.c
@@ -183,7 +183,6 @@ int fpga_bridge_register(struct device *dev, const char *name,
 			 const struct fpga_bridge_ops *br_ops, void *priv)
 {
 	struct fpga_bridge *bridge;
-	struct param_d *p;
 	int ret = 0;
 
 	if (!name || !strlen(name)) {
@@ -213,10 +212,8 @@ int fpga_bridge_register(struct device *dev, const char *name,
 	dev->priv = bridge;
 
 	bridge->enable = 0;
-	p = dev_add_param_bool(&bridge->dev, "enable", set_enable,
-			       NULL, &bridge->enable, bridge);
-	if (IS_ERR(p))
-		return PTR_ERR(p);
+	dev_add_param_bool(&bridge->dev, "enable", set_enable,
+			   NULL, &bridge->enable, bridge);
 
 	of_platform_populate(dev->of_node, NULL, dev);
 
-- 
2.39.2



