Delivery-date: Fri, 10 Nov 2023 14:03:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1RAZ-005ror-1B
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 14:03:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1RAY-0006Jm-V1
	for lore@pengutronix.de; Fri, 10 Nov 2023 14:03:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=idvh4dwp3yDRbB5K2FggrYsusU89SYuAmfo9LBLs4Vw=; b=HrZvZggyXT9tjqVDpAi6AErbgZ
	HAlik8DhMZJgYi52j18uuEKCNgEM3ZwOWfZSAcqlnJZIw8qxfyx58cxSXnvq8cYGw9gv4P8DwNzh6
	JV4IpCCifytcfNpV1DMDTUmtNF1/bxvkvjl/dlZwo1CfbVuVY7/4tITDuIdwf9Kh+J9KpFMhZUVka
	s2biO2x06NXsxrEXiDz6D+F0GhYaoPXLvepGaELWZacHErZqB0NuN3ma4K85gf3ZdsUt8FXcIzdnz
	+0vMjhH+ThHoe3UOXuhNIjoLD2PeLRY+rbqCKP38fIUeYgBLDCp4nOHa5K4xoGj7ZlNndnTHmO3aU
	GnLhokGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R9Y-008nJW-0d;
	Fri, 10 Nov 2023 13:02:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R9O-008nAn-1N
	for barebox@bombadil.infradead.org;
	Fri, 10 Nov 2023 13:02:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=idvh4dwp3yDRbB5K2FggrYsusU89SYuAmfo9LBLs4Vw=; b=kkZW3N4AWtR+weHzBQlIhud3lt
	o+wEbVxF1XtJu6WqTPl+bzXNqHGV/kJBpEXvTT0AwsUOAMgSD2f8O3QwrD8sUemXk+N1Ays6Xb0Zu
	v1L1IER84w8WKQ38EMSumlwdlZvm0SuIJ7Mh+kRGfBReOWhZqiEuTR5GXroo2uK/gvJB0n0Y/iKoQ
	xSklNr50OfM+tqLJMebrPkjdJFyTqcHilk4cktKuQ8RAx69epzfwK0j5c4chs8wXahXVEc8inLmLt
	Fjioq70GkhDuTh+pLjtl28gQ6DbzmKTVqCOmJEQH/SWmNjjodwb1uj5Pqxu99OUgl++CVC0J+RSBq
	k608wpXw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R9H-00Fc8u-0d
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 13:02:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R9G-0005JB-BC; Fri, 10 Nov 2023 14:02:10 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R9F-0081yg-MW; Fri, 10 Nov 2023 14:02:09 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R9F-009GZM-22;
	Fri, 10 Nov 2023 14:02:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Nov 2023 14:02:06 +0100
Message-Id: <20231110130206.2172907-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110130206.2172907-1-s.hauer@pengutronix.de>
References: <20231110130206.2172907-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_130214_059832_5548D524 
X-CRM114-Status: GOOD (  19.07  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/3] net: eqos: Add i.MX93 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add the compatible entries and i.MX93 specific init code to make the
driver usable on i.MX93.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/Kconfig          |   2 +-
 drivers/net/designware_imx.c | 124 +++++++++++++++++++++++++++--------
 2 files changed, 97 insertions(+), 29 deletions(-)

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 9be03cf20c..86d1c21856 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -109,7 +109,7 @@ config DRIVER_NET_DESIGNWARE_EQOS
 
 config DRIVER_NET_DESIGNWARE_IMX
 	bool "Designware EQOS i.MX Ethernet driver"
-	depends on HAS_DMA && COMMON_CLK && OFTREE && (ARCH_IMX8M || COMPILE_TEST)
+	depends on HAS_DMA && COMMON_CLK && OFTREE && (ARCH_IMX8M || ARCH_IMX93 || COMPILE_TEST)
 	select DRIVER_NET_DESIGNWARE_EQOS
 	select MFD_SYSCON
 	help
diff --git a/drivers/net/designware_imx.c b/drivers/net/designware_imx.c
index 13bca42c25..c281d3b64b 100644
--- a/drivers/net/designware_imx.c
+++ b/drivers/net/designware_imx.c
@@ -17,6 +17,17 @@
 #define GPR_ENET_QOS_CLK_TX_CLK_SEL	BIT(20)
 #define GPR_ENET_QOS_RGMII_EN		BIT(21)
 
+#define MX93_GPR_ENET_QOS_INTF_MODE_MASK	GENMASK(3, 0)
+#define MX93_GPR_ENET_QOS_INTF_MASK		GENMASK(3, 1)
+#define MX93_GPR_ENET_QOS_INTF_SEL_MII		(0x0 << 1)
+#define MX93_GPR_ENET_QOS_INTF_SEL_RMII		(0x4 << 1)
+#define MX93_GPR_ENET_QOS_INTF_SEL_RGMII	(0x1 << 1)
+#define MX93_GPR_ENET_QOS_CLK_GEN_EN		(0x1 << 0)
+
+struct eqos_imx_soc_data {
+	int (*set_interface_mode)(struct eqos *eqos);
+	bool mac_rgmii_txclk_auto_adj;
+};
 
 struct eqos_imx_priv {
 	struct device *dev;
@@ -25,6 +36,7 @@ struct eqos_imx_priv {
 	struct regmap *intf_regmap;
 	u32 intf_reg_off;
 	bool rmii_refclk_ext;
+	struct eqos_imx_soc_data *soc_data;
 };
 
 enum { CLK_STMMACETH, CLK_PCLK, CLK_PTP_REF, CLK_TX};
@@ -42,15 +54,13 @@ static unsigned long eqos_get_csr_clk_rate_imx(struct eqos *eqos)
 	return clk_get_rate(priv->clks[CLK_PCLK].clk);
 }
 
-
-static void eqos_adjust_link_imx(struct eth_device *edev)
+static int eqos_set_txclk(struct eqos *eqos, int speed)
 {
-	struct eqos *eqos = edev->priv;
 	struct eqos_imx_priv *priv = eqos->priv;
 	unsigned long rate;
 	int ret;
 
-	switch (edev->phydev->speed) {
+	switch (speed) {
 	case SPEED_10:
 		rate = 2500000;
 		break;
@@ -61,28 +71,33 @@ static void eqos_adjust_link_imx(struct eth_device *edev)
 		rate = 125000000;
 		break;
 	default:
-		dev_err(priv->dev, "unknown speed value for GMAC speed=%d",
-			edev->phydev->speed);
-		return;
+		dev_err(priv->dev, "unknown speed value for GMAC speed=%d", speed);
+		return -EINVAL;
 	}
 
 	ret = clk_set_rate(priv->clks[CLK_TX].clk, rate);
 	if (ret)
-		dev_err(priv->dev, "set TX clk rate %ld failed %d\n",
-			rate, ret);
+		dev_err(priv->dev, "set TX clk rate %ld failed %d\n", rate, ret);
+
+	return ret;
+}
+
+static void eqos_adjust_link_imx(struct eth_device *edev)
+{
+	struct eqos *eqos = edev->priv;
+	struct eqos_imx_priv *priv = eqos->priv;
+
+	if (!priv->soc_data->mac_rgmii_txclk_auto_adj)
+		eqos_set_txclk(eqos, edev->phydev->speed);
 
 	eqos_adjust_link(edev);
 }
 
-static void eqos_imx_set_interface_mode(struct eqos *eqos)
+static int eqos_imx8mp_set_interface_mode(struct eqos *eqos)
 {
 	struct eqos_imx_priv *priv = eqos->priv;
-	struct device_node *np = priv->dev->device_node;
 	int val;
 
-	if (!of_device_is_compatible(np, "nxp,imx8mp-dwmac-eqos"))
-		return;
-
 	switch (eqos->interface) {
 	case PHY_INTERFACE_MODE_MII:
 		val = GPR_ENET_QOS_INTF_SEL_MII;
@@ -100,34 +115,65 @@ static void eqos_imx_set_interface_mode(struct eqos *eqos)
 		break;
 	default:
 		dev_err(priv->dev, "no valid interface mode found!\n");
-		return;
+		return -EINVAL;
 	}
 
 	val |= GPR_ENET_QOS_CLK_GEN_EN;
 
-	regmap_update_bits(priv->intf_regmap, priv->intf_reg_off,
-			   GPR_ENET_QOS_INTF_MODE_MASK, val);
+	return regmap_update_bits(priv->intf_regmap, priv->intf_reg_off,
+				  GPR_ENET_QOS_INTF_MODE_MASK, val);
 }
 
+static int eqos_imx93_set_interface_mode(struct eqos *eqos)
+{
+	struct eqos_imx_priv *priv = eqos->priv;
+
+	int val;
+
+	switch (eqos->interface) {
+	case PHY_INTERFACE_MODE_MII:
+		val = MX93_GPR_ENET_QOS_INTF_SEL_MII;
+		break;
+	case PHY_INTERFACE_MODE_RMII:
+		val = MX93_GPR_ENET_QOS_INTF_SEL_RMII;
+		break;
+	case PHY_INTERFACE_MODE_RGMII:
+	case PHY_INTERFACE_MODE_RGMII_ID:
+	case PHY_INTERFACE_MODE_RGMII_RXID:
+	case PHY_INTERFACE_MODE_RGMII_TXID:
+		val = MX93_GPR_ENET_QOS_INTF_SEL_RGMII;
+		break;
+	default:
+		dev_dbg(priv->dev, "imx dwmac doesn't support %d interface\n",
+			 eqos->interface);
+		return -EINVAL;
+	}
+
+	val |= MX93_GPR_ENET_QOS_CLK_GEN_EN;
+
+	return regmap_update_bits(priv->intf_regmap, priv->intf_reg_off,
+				  MX93_GPR_ENET_QOS_INTF_MODE_MASK, val);
+};
+
 static int eqos_init_imx(struct device *dev, struct eqos *eqos)
 {
 	struct device_node *np = dev->device_node;
 	struct eqos_imx_priv *priv = eqos->priv;
 	int ret;
 
-	if (of_device_is_compatible(np, "nxp,imx8mp-dwmac-eqos")) {
-		priv->intf_regmap = syscon_regmap_lookup_by_phandle(np, "intf_mode");
-		if (IS_ERR(priv->intf_regmap))
-			return PTR_ERR(priv->intf_regmap);
+	priv->intf_regmap = syscon_regmap_lookup_by_phandle(np, "intf_mode");
+	if (IS_ERR(priv->intf_regmap))
+		return PTR_ERR(priv->intf_regmap);
 
-		ret = of_property_read_u32_index(np, "intf_mode", 1, &priv->intf_reg_off);
-		if (ret) {
-			dev_err(dev, "Can't get intf mode reg offset (%d)\n", ret);
-			return ret;
-		}
+	ret = of_property_read_u32_index(np, "intf_mode", 1, &priv->intf_reg_off);
+	if (ret) {
+		dev_err(dev, "Can't get intf mode reg offset (%d)\n", ret);
+		return ret;
 	}
 
-	eqos_imx_set_interface_mode(eqos);
+	ret = priv->soc_data->set_interface_mode(eqos);
+	if (ret)
+		return ret;
 
 	return 0;
 }
@@ -146,11 +192,17 @@ static struct eqos_ops imx_ops = {
 static int eqos_probe_imx(struct device *dev)
 {
 	struct device_node *np = dev->device_node;
+	struct eqos_imx_soc_data *soc_data;
 	struct eqos_imx_priv *priv;
 	int ret;
 
+	ret = dev_get_drvdata(dev, (const void **)&soc_data);
+	if (ret)
+		return ret;
+
 	priv = xzalloc(sizeof(*priv));
 
+	priv->soc_data = soc_data;
 	priv->dev = dev;
 
 	if (of_get_property(np, "snps,rmii_refclk_ext", NULL))
@@ -186,8 +238,24 @@ static void eqos_remove_imx(struct device *dev)
 	clk_bulk_put(priv->num_clks, priv->clks);
 }
 
+static struct eqos_imx_soc_data imx93_soc_data = {
+	.set_interface_mode = eqos_imx93_set_interface_mode,
+	.mac_rgmii_txclk_auto_adj = true,
+};
+
+static struct eqos_imx_soc_data imx8mp_soc_data = {
+	.set_interface_mode = eqos_imx8mp_set_interface_mode,
+	.mac_rgmii_txclk_auto_adj = false,
+};
+
 static __maybe_unused struct of_device_id eqos_imx_ids[] = {
-	{ .compatible = "nxp,imx8mp-dwmac-eqos"},
+	{
+		.compatible = "nxp,imx93-dwmac-eqos",
+		.data = &imx93_soc_data,
+	}, {
+		.compatible = "nxp,imx8mp-dwmac-eqos",
+		.data = &imx8mp_soc_data,
+	},
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, eqos_imx_ids);
-- 
2.39.2



