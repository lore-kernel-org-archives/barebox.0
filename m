Delivery-date: Fri, 10 Nov 2023 14:03:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1RAW-005ro2-0C
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 14:03:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1RAW-0006H8-1C
	for lore@pengutronix.de; Fri, 10 Nov 2023 14:03:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a5UxFbz0MH+pKD2WsOrjpOdEo19NefY82JUboWre7P4=; b=0GvmDbNKSAotnZumv9+GORjq5a
	NfyA8qKKHFlLYJkYB9+N6Ee0KfTrsxhsqtAonTJ1skzCM/EAX/MZoCk4dWAJRr/Nm+2M+l40z8ZO+
	jJhEPOk97ebiHMcotMej6oQXnc8AaKuksfeD3R/gan5AL4E7HP15PZp6rolCa1aD7jhYpf85v/qwj
	/3dBv0AzIz45RxwaJt8jLwZC2QTAGFEbWXJcBQBjdHZoUIm3Eo8Yr4p/TbYZVmOkSBCWk9p5N1s4l
	oU9Tt8fB3EgDCu6bf/Ts5KNrtL8fwxozpG5vIaYiRFpQ0nCAYNhW02akY6QpusLtVKKevZbJr6H/Z
	3jvMsNdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R9W-008nI5-2x;
	Fri, 10 Nov 2023 13:02:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R9O-008nAE-0A
	for barebox@bombadil.infradead.org;
	Fri, 10 Nov 2023 13:02:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=a5UxFbz0MH+pKD2WsOrjpOdEo19NefY82JUboWre7P4=; b=d7W1+aE/f13qNpH0jjT/fHuGA7
	ZYWTLlKdJQs/OWUlBXGPFQRIxOW+agmPDqoWNXbfA8zRIYND1QsKx+uBS0t9+jTCLs4uW+MU6e2LX
	6habkAuEVdi585DGqo/ubs9rBX2QGNpcwvVJfkjhhu/Z/pnalIyiGhp8T9Q8EFg50HCjEq1k+FLnH
	l1mrURN7a9LNLqp3Ai6yaXj3j42F51PwzGee9Tfjl7a0+Hjbvil6FFXojs2wHCmCjFXWXFb4UyyuM
	uL7q15o5mi8ST1MgdyCH7gPNY58q09F6Hw3j2plaAEJnRVm+RKOg4Ob3IUBvaiNkv7vKOWN/Yv5un
	+kWjcJMw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R9H-00Fc8r-0d
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 13:02:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R9G-0005J6-6R; Fri, 10 Nov 2023 14:02:10 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R9F-0081yf-Lp; Fri, 10 Nov 2023 14:02:09 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R9F-009GZI-1z;
	Fri, 10 Nov 2023 14:02:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Nov 2023 14:02:05 +0100
Message-Id: <20231110130206.2172907-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110130206.2172907-1-s.hauer@pengutronix.de>
References: <20231110130206.2172907-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_130213_344974_E501CFD1 
X-CRM114-Status: GOOD (  12.81  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/3] net: eqos: imx: move common stuff to probe()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

eqos_init_imx() currently is i.MX8 specific, but some stuff can be used
by i.MX9 as well. Move that to probe().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/designware_imx.c | 50 ++++++++++++++++++++----------------
 1 file changed, 28 insertions(+), 22 deletions(-)

diff --git a/drivers/net/designware_imx.c b/drivers/net/designware_imx.c
index 00164fa7c7..13bca42c25 100644
--- a/drivers/net/designware_imx.c
+++ b/drivers/net/designware_imx.c
@@ -115,11 +115,6 @@ static int eqos_init_imx(struct device *dev, struct eqos *eqos)
 	struct eqos_imx_priv *priv = eqos->priv;
 	int ret;
 
-	priv->dev = dev;
-
-	if (of_get_property(np, "snps,rmii_refclk_ext", NULL))
-		priv->rmii_refclk_ext = true;
-
 	if (of_device_is_compatible(np, "nxp,imx8mp-dwmac-eqos")) {
 		priv->intf_regmap = syscon_regmap_lookup_by_phandle(np, "intf_mode");
 		if (IS_ERR(priv->intf_regmap))
@@ -132,22 +127,6 @@ static int eqos_init_imx(struct device *dev, struct eqos *eqos)
 		}
 	}
 
-	priv->num_clks = ARRAY_SIZE(imx_clks);
-	priv->clks = xmalloc(priv->num_clks * sizeof(*priv->clks));
-	memcpy(priv->clks, imx_clks, sizeof imx_clks);
-
-	ret = clk_bulk_get(dev, priv->num_clks, priv->clks);
-	if (ret) {
-		dev_err(dev, "Failed to get clks: %s\n", strerror(-ret));
-		return ret;
-	}
-
-	ret = clk_bulk_enable(priv->num_clks, priv->clks);
-	if (ret) {
-		dev_err(dev, "Failed to enable clks: %s\n", strerror(-ret));
-		return ret;
-	}
-
 	eqos_imx_set_interface_mode(eqos);
 
 	return 0;
@@ -166,7 +145,34 @@ static struct eqos_ops imx_ops = {
 
 static int eqos_probe_imx(struct device *dev)
 {
-	return eqos_probe(dev, &imx_ops, xzalloc(sizeof(struct eqos_imx_priv)));
+	struct device_node *np = dev->device_node;
+	struct eqos_imx_priv *priv;
+	int ret;
+
+	priv = xzalloc(sizeof(*priv));
+
+	priv->dev = dev;
+
+	if (of_get_property(np, "snps,rmii_refclk_ext", NULL))
+		priv->rmii_refclk_ext = true;
+
+	priv->num_clks = ARRAY_SIZE(imx_clks);
+	priv->clks = xmalloc(priv->num_clks * sizeof(*priv->clks));
+	memcpy(priv->clks, imx_clks, sizeof imx_clks);
+
+	ret = clk_bulk_get(dev, priv->num_clks, priv->clks);
+	if (ret) {
+		dev_err(dev, "Failed to get clks: %s\n", strerror(-ret));
+		return ret;
+	}
+
+	ret = clk_bulk_enable(priv->num_clks, priv->clks);
+	if (ret) {
+		dev_err(dev, "Failed to enable clks: %s\n", strerror(-ret));
+		return ret;
+	}
+
+	return eqos_probe(dev, &imx_ops, priv);
 }
 
 static void eqos_remove_imx(struct device *dev)
-- 
2.39.2



