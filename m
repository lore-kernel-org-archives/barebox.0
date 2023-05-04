Delivery-date: Thu, 04 May 2023 10:19:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puUBd-004LPG-8e
	for lore@lore.pengutronix.de; Thu, 04 May 2023 10:19:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puUBY-00027z-JC
	for lore@pengutronix.de; Thu, 04 May 2023 10:19:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jBdomjPbvNPImbxxpDKE60n2D4lEuWb7P/ELCZCnML4=; b=GF89BAymEMcx9sVaYUl4lwM7S2
	zq67DoWpfVA5okCKhQuyuw9UgHiO2mdQnKSd1k8hrs1Yf/i3hVrsiVG0AwFjgtjLGLImSMX2jZRlr
	D8NgrTdS8qYE6ROaSrF4lHaSwbT7ajAF6h4njzNnsOnXKwCV/oH3Iak5I/X1V2jYwLgjmnEMpVz9i
	IVkmp2Xn94qHmMYXGuWU4U8/yEwpp609mpMcvo8aReN97I169yPZLLHvw3+A9M2VUsJpUPUVJxQFG
	VaOV3D5xaYpHrpUtvKnggtSMg3Y03shjJuHmCwqXT7LiZSDxQT2ZOW3xnmjK8tAlGTYi2Xr4X4hU7
	c3lPeAyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puUAK-0074mL-1b;
	Thu, 04 May 2023 08:18:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puUAI-0074jm-1S
	for barebox@bombadil.infradead.org;
	Thu, 04 May 2023 08:18:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=jBdomjPbvNPImbxxpDKE60n2D4lEuWb7P/ELCZCnML4=; b=aO8nckFmL15yq/JNxaMrACb6up
	NON5Q4a9Qxpbl9mjj3+sTVzHvZaCO/YESbB6UyQ3yPTTc8P1HDDlI8RA4cYQCUSMpncw35568q+7Z
	ynqmwCGVp3QsLSqYW3r7jUuz4dgr4TqRPDIUZVZIW8kaOBwk4Wpk/JJPYuVdXGrYssWthzY1BteQB
	MqHERkcyD3v5mMcNgz8Ld+bXPkpvm8p+7cAVP/TmakDzWDCMX2GL/OGoNR/WAy38+b4tCq6nLT1zX
	4txF+G6gMwx6SSc97X0l6fkjnudIDwBhtomnpycbIlKfQrzd9a/HI6j2XKaOTQL4NwsMMAcb3AoyD
	udOEksAg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puUAB-001gZI-1j
	for barebox@lists.infradead.org;
	Thu, 04 May 2023 08:18:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9u-0001I2-Kn; Thu, 04 May 2023 10:17:50 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9t-0011FH-Ut; Thu, 04 May 2023 10:17:49 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9r-001HbW-5X; Thu, 04 May 2023 10:17:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  4 May 2023 10:17:37 +0200
Message-Id: <20230504081745.305841-11-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230504081745.305841-1-s.hauer@pengutronix.de>
References: <20230504081745.305841-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_091807_752691_91A8FEB9 
X-CRM114-Status: GOOD (  16.72  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 10/18] phy: rockchip: naneng-combphy: add rk3588 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../rockchip/phy-rockchip-naneng-combphy.c    | 278 ++++++++++++++++++
 1 file changed, 278 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
index bd5dff954e..2c0e629bab 100644
--- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
@@ -41,6 +41,7 @@ struct rockchip_combphy_grfcfg {
 	struct combphy_reg pipe_rxterm_set;
 	struct combphy_reg pipe_txelec_set;
 	struct combphy_reg pipe_txcomp_set;
+	struct combphy_reg pipe_clk_24m;
 	struct combphy_reg pipe_clk_25m;
 	struct combphy_reg pipe_clk_100m;
 	struct combphy_reg pipe_phymode_sel;
@@ -61,6 +62,7 @@ struct rockchip_combphy_grfcfg {
 	struct combphy_reg con2_for_sata;
 	struct combphy_reg con3_for_sata;
 	struct combphy_reg pipe_con0_for_sata;
+	struct combphy_reg pipe_con1_for_sata;
 	struct combphy_reg pipe_sgmii_mac_sel;
 	struct combphy_reg pipe_xpcs_phy_ready;
 	struct combphy_reg u3otg0_port_en;
@@ -71,6 +73,7 @@ struct rockchip_combphy_cfg {
 	const int num_clks;
 	const struct clk_bulk_data *clks;
 	const struct rockchip_combphy_grfcfg *grfcfg;
+	bool force_det_out; /* Tx detect Rx errata */
 	int (*combphy_cfg)(struct rockchip_combphy_priv *priv);
 };
 
@@ -580,10 +583,285 @@ static const struct rockchip_combphy_cfg rk3568_combphy_cfgs = {
 	.combphy_cfg	= rk3568_combphy_cfg,
 };
 
+static int rk3588_combphy_cfg(struct rockchip_combphy_priv *priv)
+{
+	const struct rockchip_combphy_grfcfg *cfg = priv->cfg->grfcfg;
+	struct clk *refclk = NULL;
+	unsigned long rate;
+	int i;
+	u32 val;
+
+	/* Configure PHY reference clock frequency */
+	for (i = 0; i < priv->num_clks; i++) {
+		if (!strncmp(priv->clks[i].id, "refclk", 6)) {
+			refclk = priv->clks[i].clk;
+			break;
+		}
+	}
+
+	if (!refclk) {
+		dev_err(priv->dev, "No refclk found\n");
+		return -EINVAL;
+	}
+
+	switch (priv->mode) {
+	case PHY_TYPE_PCIE:
+		/* Set SSC downward spread spectrum */
+		val = readl(priv->mmio + (0x1f << 2));
+		val &= ~GENMASK(5, 4);
+		val |= 0x01 << 4;
+		writel(val, priv->mmio + 0x7c);
+
+		param_write(priv->phy_grf, &cfg->con0_for_pcie, true);
+		param_write(priv->phy_grf, &cfg->con1_for_pcie, true);
+		param_write(priv->phy_grf, &cfg->con2_for_pcie, true);
+		param_write(priv->phy_grf, &cfg->con3_for_pcie, true);
+		break;
+	case PHY_TYPE_USB3:
+		/* Set SSC downward spread spectrum */
+		val = readl(priv->mmio + (0x1f << 2));
+		val &= ~GENMASK(5, 4);
+		val |= 0x01 << 4;
+		writel(val, priv->mmio + 0x7c);
+
+		/* Enable adaptive CTLE for USB3.0 Rx */
+		val = readl(priv->mmio + (0x0e << 2));
+		val &= ~GENMASK(0, 0);
+		val |= 0x01;
+		writel(val, priv->mmio + (0x0e << 2));
+
+		/* Set PLL KVCO fine tuning signals */
+		val = readl(priv->mmio + (0x20 << 2));
+		val &= ~(0x7 << 2);
+		val |= 0x2 << 2;
+		writel(val, priv->mmio + (0x20 << 2));
+
+		/* Set PLL LPF R1 to su_trim[10:7]=1001 */
+		writel(0x4, priv->mmio + (0xb << 2));
+
+		/* Set PLL input clock divider 1/2 */
+		val = readl(priv->mmio + (0x5 << 2));
+		val &= ~(0x3 << 6);
+		val |= 0x1 << 6;
+		writel(val, priv->mmio + (0x5 << 2));
+
+		/* Set PLL loop divider */
+		writel(0x32, priv->mmio + (0x11 << 2));
+
+		/* Set PLL KVCO to min and set PLL charge pump current to max */
+		writel(0xf0, priv->mmio + (0xa << 2));
+
+		/* Set Rx squelch input filler bandwidth */
+		writel(0x0d, priv->mmio + (0x14 << 2));
+
+		param_write(priv->phy_grf, &cfg->pipe_txcomp_sel, false);
+		param_write(priv->phy_grf, &cfg->pipe_txelec_sel, false);
+		param_write(priv->phy_grf, &cfg->usb_mode_set, true);
+		break;
+	case PHY_TYPE_SATA:
+		/* Enable adaptive CTLE for SATA Rx */
+		val = readl(priv->mmio + (0x0e << 2));
+		val &= ~GENMASK(0, 0);
+		val |= 0x01;
+		writel(val, priv->mmio + (0x0e << 2));
+		/* Set tx_rterm = 50 ohm and rx_rterm = 43.5 ohm */
+		writel(0x8F, priv->mmio + (0x06 << 2));
+
+		param_write(priv->phy_grf, &cfg->con0_for_sata, true);
+		param_write(priv->phy_grf, &cfg->con1_for_sata, true);
+		param_write(priv->phy_grf, &cfg->con2_for_sata, true);
+		param_write(priv->phy_grf, &cfg->con3_for_sata, true);
+		param_write(priv->pipe_grf, &cfg->pipe_con0_for_sata, true);
+		param_write(priv->pipe_grf, &cfg->pipe_con1_for_sata, true);
+		break;
+	case PHY_TYPE_SGMII:
+	case PHY_TYPE_QSGMII:
+	default:
+		dev_err(priv->dev, "incompatible PHY type\n");
+		return -EINVAL;
+	}
+
+	rate = clk_get_rate(refclk);
+
+	switch (rate) {
+	case 24000000:
+		param_write(priv->phy_grf, &cfg->pipe_clk_24m, true);
+		if (priv->mode == PHY_TYPE_USB3 || priv->mode == PHY_TYPE_SATA) {
+			/* Set ssc_cnt[9:0]=0101111101 & 31.5KHz */
+			val = readl(priv->mmio + (0x0e << 2));
+			val &= ~GENMASK(7, 6);
+			val |= 0x01 << 6;
+			writel(val, priv->mmio + (0x0e << 2));
+
+			val = readl(priv->mmio + (0x0f << 2));
+			val &= ~GENMASK(7, 0);
+			val |= 0x5f;
+			writel(val, priv->mmio + (0x0f << 2));
+		} else if (priv->mode == PHY_TYPE_PCIE) {
+			/* PLL KVCO tuning fine */
+			val = readl(priv->mmio + (0x20 << 2));
+			val &= ~GENMASK(4, 2);
+			val |= 0x4 << 2;
+			writel(val, priv->mmio + (0x20 << 2));
+
+			/* Set up rx_trim */
+			val = 0x0;
+			writel(val, priv->mmio + (0x1b << 2));
+
+			/* Set up su_trim: T0_1 */
+			val = 0x90;
+			writel(val, priv->mmio + (0xa << 2));
+			val = 0x02;
+			writel(val, priv->mmio + (0xb << 2));
+			val = 0x57;
+			writel(val, priv->mmio + (0xd << 2));
+
+			val = 0x5f;
+			writel(val, priv->mmio + (0xf << 2));
+		}
+		break;
+	case 25000000:
+		param_write(priv->phy_grf, &cfg->pipe_clk_25m, true);
+		break;
+	case 100000000:
+		param_write(priv->phy_grf, &cfg->pipe_clk_100m, true);
+		if (priv->mode == PHY_TYPE_PCIE) {
+			/* gate_tx_pck_sel length select work for L1SS */
+			val = 0xc0;
+			writel(val, priv->mmio + 0x74);
+
+			/* PLL KVCO tuning fine */
+			val = readl(priv->mmio + (0x20 << 2));
+			val &= ~GENMASK(4, 2);
+			val |= 0x4 << 2;
+			writel(val, priv->mmio + (0x20 << 2));
+
+			/* Set up rx_trim: PLL LPF C1 85pf R1 1.25kohm */
+			val = 0x4c;
+			writel(val, priv->mmio + (0x1b << 2));
+
+			/* Set up su_trim: T3_P1 650mv */
+			val = 0x90;
+			writel(val, priv->mmio + (0xa << 2));
+			val = 0x43;
+			writel(val, priv->mmio + (0xb << 2));
+			val = 0x88;
+			writel(val, priv->mmio + (0xc << 2));
+			val = 0x56;
+			writel(val, priv->mmio + (0xd << 2));
+		} else if (priv->mode == PHY_TYPE_SATA) {
+			/* downward spread spectrum +500ppm */
+			val = readl(priv->mmio + (0x1f << 2));
+			val &= ~GENMASK(7, 4);
+			val |= 0x50;
+			writel(val, priv->mmio + (0x1f << 2));
+
+			/* ssc ppm adjust to 3500ppm */
+			val = readl(priv->mmio + (0x9 << 2));
+			val &= ~GENMASK(3, 0);
+			val |= 0x7;
+			writel(val, priv->mmio + (0x9 << 2));
+		}
+		break;
+	default:
+		dev_err(priv->dev, "Unsupported rate: %lu\n", rate);
+		return -EINVAL;
+	}
+
+	if (of_property_read_bool(priv->dev->of_node, "rockchip,ext-refclk")) {
+		param_write(priv->phy_grf, &cfg->pipe_clk_ext, true);
+		if (priv->mode == PHY_TYPE_PCIE && rate == 100000000) {
+			val = 0x10;
+			writel(val, priv->mmio + (0x20 << 2));
+
+			val = 0x0c;
+			writel(val, priv->mmio + (0x1b << 2));
+
+			/* Set up su_trim: T3_P1 650mv */
+			val = 0x90;
+			writel(val, priv->mmio + (0xa << 2));
+			val = 0x43;
+			writel(val, priv->mmio + (0xb << 2));
+			val = 0x88;
+			writel(val, priv->mmio + (0xc << 2));
+			val = 0x56;
+			writel(val, priv->mmio + (0xd << 2));
+		}
+	}
+
+	if (of_property_read_bool(priv->dev->of_node, "rockchip,enable-ssc")) {
+		val = readl(priv->mmio + (0x7 << 2));
+		val |= BIT(4);
+		writel(val, priv->mmio + (0x7 << 2));
+
+		if (priv->mode == PHY_TYPE_PCIE && rate == 24000000) {
+			/* Xin24M T0_1 650mV */
+			writel(0x00, priv->mmio + (0x10 << 2));
+			writel(0x32, priv->mmio + (0x11 << 2));
+			writel(0x00, priv->mmio + (0x1b << 2));
+			writel(0x90, priv->mmio + (0x0a << 2));
+			writel(0x02, priv->mmio + (0x0b << 2));
+			writel(0x08, priv->mmio + (0x0c << 2));
+			writel(0x57, priv->mmio + (0x0d << 2));
+			writel(0x40, priv->mmio + (0x0e << 2));
+			writel(0x5f, priv->mmio + (0x0f << 2));
+			writel(0x10, priv->mmio + (0x20 << 2));
+		}
+	}
+
+	return 0;
+}
+
+static const struct rockchip_combphy_grfcfg rk3588_combphy_grfcfgs = {
+	/* pipe-phy-grf */
+	.pcie_mode_set		= { 0x0000, 5, 0, 0x00, 0x11 },
+	.usb_mode_set		= { 0x0000, 5, 0, 0x00, 0x04 },
+	.pipe_rxterm_set	= { 0x0000, 12, 12, 0x00, 0x01 },
+	.pipe_txelec_set	= { 0x0004, 1, 1, 0x00, 0x01 },
+	.pipe_txcomp_set	= { 0x0004, 4, 4, 0x00, 0x01 },
+	.pipe_clk_24m		= { 0x0004, 14, 13, 0x00, 0x00 },
+	.pipe_clk_25m		= { 0x0004, 14, 13, 0x00, 0x01 },
+	.pipe_clk_100m		= { 0x0004, 14, 13, 0x00, 0x02 },
+	.pipe_rxterm_sel	= { 0x0008, 8, 8, 0x00, 0x01 },
+	.pipe_txelec_sel	= { 0x0008, 12, 12, 0x00, 0x01 },
+	.pipe_txcomp_sel	= { 0x0008, 15, 15, 0x00, 0x01 },
+	.pipe_clk_ext		= { 0x000c, 9, 8, 0x02, 0x01 },
+	.pipe_phy_status	= { 0x0034, 6, 6, 0x01, 0x00 },
+	.con0_for_pcie		= { 0x0000, 15, 0, 0x00, 0x1000 },
+	.con1_for_pcie		= { 0x0004, 15, 0, 0x00, 0x0000 },
+	.con2_for_pcie		= { 0x0008, 15, 0, 0x00, 0x0101 },
+	.con3_for_pcie		= { 0x000c, 15, 0, 0x00, 0x0200 },
+	.con0_for_sata		= { 0x0000, 15, 0, 0x00, 0x0129 },
+	.con1_for_sata		= { 0x0004, 15, 0, 0x00, 0x0000 },
+	.con2_for_sata		= { 0x0008, 15, 0, 0x00, 0x80c1 },
+	.con3_for_sata		= { 0x000c, 15, 0, 0x00, 0x0407 },
+	/* pipe-grf */
+	.pipe_con0_for_sata	= { 0x0000, 11, 5, 0x00, 0x22 },
+	.pipe_con1_for_sata	= { 0x0004, 2, 0, 0x00, 0x2 },
+};
+
+
+static const struct clk_bulk_data rk3588_clks[] = {
+	{ .id = "refclk" },
+	{ .id = "apbclk" },
+	{ .id = "phpclk" },
+};
+
+static const struct rockchip_combphy_cfg rk3588_combphy_cfgs = {
+	.num_clks	= ARRAY_SIZE(rk3588_clks),
+	.clks		= rk3588_clks,
+	.grfcfg		= &rk3588_combphy_grfcfgs,
+	.combphy_cfg	= rk3588_combphy_cfg,
+	.force_det_out	= true,
+};
+
 static const struct of_device_id rockchip_combphy_of_match[] = {
 	{
 		.compatible = "rockchip,rk3568-naneng-combphy",
 		.data = &rk3568_combphy_cfgs,
+	}, {
+		.compatible = "rockchip,rk3588-naneng-combphy",
+		.data = &rk3588_combphy_cfgs,
 	},
 	{ },
 };
-- 
2.39.2



