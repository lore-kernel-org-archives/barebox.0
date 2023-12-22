Delivery-date: Fri, 22 Dec 2023 03:09:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rGUyQ-009O0L-0q
	for lore@lore.pengutronix.de;
	Fri, 22 Dec 2023 03:09:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rGUyP-00076p-H5
	for lore@pengutronix.de; Fri, 22 Dec 2023 03:09:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l4QYc71ZPM3GlbnyjlPMF0mv/0wQv3TaELIE+5KcvIo=; b=XrMsd/ndsiHi+Mk1LWQI9L2Y0J
	MoEEdGIH6VUj2HHW8x5h2d14ZTFl39HWTJ6GmXN/vfwQV6NzmGU1RZoZTiELuCovKAE0aGKKUMskI
	UFjpxn4tNIK6igP04vZMhqFPEnjxOttpIuC7TY8CfIevM1WcEBSH7wecKXEyiPa8e6GhtAd8pWklq
	y2YW+23j2oP712a1pUJmPNCnLuxgtrF8EfaMpfYsj2YnOeMf0S41HGgkUNJCALov8nfXe8CWtJK91
	BcdBKiXJTkpoATT3gdjwfiCO4pfl9kSHvV/Odk6VJJVgYufLnJpIOmsW6wbakSpgoCsixnIjOFFJF
	C2zQSMtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGUx2-004eYs-2p;
	Fri, 22 Dec 2023 02:07:48 +0000
Received: from out-182.mta0.migadu.com ([2001:41d0:1004:224b::b6])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGUwz-004eXD-0p
	for barebox@lists.infradead.org;
	Fri, 22 Dec 2023 02:07:47 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pqrs.dk; s=key1;
	t=1703210856;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=l4QYc71ZPM3GlbnyjlPMF0mv/0wQv3TaELIE+5KcvIo=;
	b=aSuCLpIo59heeb2+2nNh4HoihPxKVaxBmF67369Xr48kIk9vd4YaxVkuxKgxXiM1HwI/D7
	x01NKOmuKX8Z+KczcH0ZSG+1xXWxSP3Y44sVC6yVfZ6dCJ/A1gNqKzfnRuACibLr/JzCCG
	+ERMSGPVlFuqZqg+CbDRqG2FMZayxVFfOC2wzT7TUoFtP9PXao7d6zr2y5hk/0HpPIjwhA
	VpioU1PhArU7BFWhLygpc8BJOtsELF+X25KCr2jlwtHmIx7vYtQmPYLCCPpMdI/B0fPoSb
	Kk2yhUcWbV2GmocYFoHMy/fjTCergs8zdy8I3+JqueL96WhsfB0/PQalmQ8ATw==
From: =?utf-8?q?Alvin_=C5=A0ipraga?= <alvin@pqrs.dk>
Date: Fri, 22 Dec 2023 03:07:27 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20231222-realtek-mdio-fix-v1-3-6bbf80d6a756@bang-olufsen.dk>
References: <20231222-realtek-mdio-fix-v1-0-6bbf80d6a756@bang-olufsen.dk>
In-Reply-To: <20231222-realtek-mdio-fix-v1-0-6bbf80d6a756@bang-olufsen.dk>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Vladimir Oltean <olteanv@gmail.com>, 
 Luiz Angelo Daros de Luca <luizluca@gmail.com>, 
 =?utf-8?q?Alvin_=C5=A0ipraga?= <alsi@bang-olufsen.dk>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_180745_597164_1FF53F41 
X-CRM114-Status: GOOD (  11.46  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/4] net: dsa: realtek: unify ds_ops
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Alvin Šipraga <alsi@bang-olufsen.dk>

Now that neither interface driver requires .phy_read or .phy_write, the
ops are the same and some code can be deleted. No functional change.

Signed-off-by: Alvin Šipraga <alsi@bang-olufsen.dk>
---
 drivers/net/realtek-dsa/realtek-mdio.c |  2 +-
 drivers/net/realtek-dsa/realtek-smi.c  |  2 +-
 drivers/net/realtek-dsa/realtek.h      |  3 +--
 drivers/net/realtek-dsa/rtl8365mb.c    | 11 ++---------
 drivers/net/realtek-dsa/rtl8366rb.c    | 10 ++--------
 5 files changed, 7 insertions(+), 21 deletions(-)

diff --git a/drivers/net/realtek-dsa/realtek-mdio.c b/drivers/net/realtek-dsa/realtek-mdio.c
index 2b8661b95677..4fc2295b1b5f 100644
--- a/drivers/net/realtek-dsa/realtek-mdio.c
+++ b/drivers/net/realtek-dsa/realtek-mdio.c
@@ -236,7 +236,7 @@ static int realtek_mdio_probe(struct phy_device *mdiodev)
 	priv->ds->dev = dev;
 	priv->ds->num_ports = priv->num_ports;
 	priv->ds->priv = priv;
-	priv->ds->ops = var->ds_ops_mdio;
+	priv->ds->ops = var->ds_ops;
 
 	ret = realtek_dsa_init_tagger(priv);
 	if (ret)
diff --git a/drivers/net/realtek-dsa/realtek-smi.c b/drivers/net/realtek-dsa/realtek-smi.c
index f93024ace516..da150dbc5d8b 100644
--- a/drivers/net/realtek-dsa/realtek-smi.c
+++ b/drivers/net/realtek-dsa/realtek-smi.c
@@ -450,7 +450,7 @@ static int realtek_smi_probe(struct device *dev)
 	priv->ds->dev = dev;
 	priv->ds->num_ports = priv->num_ports;
 	priv->ds->priv = priv;
-	priv->ds->ops = var->ds_ops_smi;
+	priv->ds->ops = var->ds_ops;
 
 	ret = realtek_dsa_init_tagger(priv);
 	if (ret)
diff --git a/drivers/net/realtek-dsa/realtek.h b/drivers/net/realtek-dsa/realtek.h
index ac84b18cdd14..dbca9494627a 100644
--- a/drivers/net/realtek-dsa/realtek.h
+++ b/drivers/net/realtek-dsa/realtek.h
@@ -69,8 +69,7 @@ struct realtek_ops {
 };
 
 struct realtek_variant {
-	const struct dsa_switch_ops *ds_ops_smi;
-	const struct dsa_switch_ops *ds_ops_mdio;
+	const struct dsa_switch_ops *ds_ops;
 	const struct realtek_ops *ops;
 	unsigned int clk_delay;
 	u8 cmd_read;
diff --git a/drivers/net/realtek-dsa/rtl8365mb.c b/drivers/net/realtek-dsa/rtl8365mb.c
index 0f4c471715d1..588998235827 100644
--- a/drivers/net/realtek-dsa/rtl8365mb.c
+++ b/drivers/net/realtek-dsa/rtl8365mb.c
@@ -1225,13 +1225,7 @@ static int rtl8365mb_detect(struct realtek_priv *priv)
 	return 0;
 }
 
-static const struct dsa_switch_ops rtl8365mb_switch_ops_smi = {
-	.port_pre_enable = rtl8365mb_phylink_mac_config,
-	.port_disable = rtl8365mb_phylink_mac_link_down,
-	.port_enable = rtl8365mb_phylink_mac_link_up,
-};
-
-static const struct dsa_switch_ops rtl8365mb_switch_ops_mdio = {
+static const struct dsa_switch_ops rtl8365mb_switch_ops = {
 	.port_pre_enable = rtl8365mb_phylink_mac_config,
 	.port_disable = rtl8365mb_phylink_mac_link_down,
 	.port_enable = rtl8365mb_phylink_mac_link_up,
@@ -1247,8 +1241,7 @@ static const struct realtek_ops rtl8365mb_ops = {
 };
 
 const struct realtek_variant rtl8365mb_variant = {
-	.ds_ops_smi = &rtl8365mb_switch_ops_smi,
-	.ds_ops_mdio = &rtl8365mb_switch_ops_mdio,
+	.ds_ops = &rtl8365mb_switch_ops,
 	.ops = &rtl8365mb_ops,
 	.clk_delay = 10,
 	.cmd_read = 0xb9,
diff --git a/drivers/net/realtek-dsa/rtl8366rb.c b/drivers/net/realtek-dsa/rtl8366rb.c
index 6fd2b1852159..35028d319ecd 100644
--- a/drivers/net/realtek-dsa/rtl8366rb.c
+++ b/drivers/net/realtek-dsa/rtl8366rb.c
@@ -1079,12 +1079,7 @@ static int rtl8366rb_detect(struct realtek_priv *priv)
 	return rtl8366rb_reset_chip(priv);
 }
 
-static const struct dsa_switch_ops rtl8366rb_switch_ops_smi = {
-	.port_enable = rtl8366rb_port_enable,
-	.port_disable = rtl8366rb_port_disable,
-};
-
-static const struct dsa_switch_ops rtl8366rb_switch_ops_mdio = {
+static const struct dsa_switch_ops rtl8366rb_switch_ops = {
 	.port_enable = rtl8366rb_port_enable,
 	.port_disable = rtl8366rb_port_disable,
 };
@@ -1098,8 +1093,7 @@ static const struct realtek_ops rtl8366rb_ops = {
 };
 
 const struct realtek_variant rtl8366rb_variant = {
-	.ds_ops_smi = &rtl8366rb_switch_ops_smi,
-	.ds_ops_mdio = &rtl8366rb_switch_ops_mdio,
+	.ds_ops = &rtl8366rb_switch_ops,
 	.ops = &rtl8366rb_ops,
 	.clk_delay = 10,
 	.cmd_read = 0xa9,

-- 
2.43.0



