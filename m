Delivery-date: Wed, 09 Jun 2021 11:28:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lquVZ-0006UJ-Q0
	for lore@lore.pengutronix.de; Wed, 09 Jun 2021 11:28:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lquVY-00020Z-49
	for lore@pengutronix.de; Wed, 09 Jun 2021 11:28:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4n4BP98GG6rPlMuMnVAvzYGxjU8LemG7QIkcnBneDF4=; b=u+E/5rtlCDDLta
	KnJjcHEdnoTEB4O8ITkzoydIMHOZwM3L7VVcBbirvQ6RX0N1T5nzqAdzUO96BpvdKdWXyfuFrMgbj
	l4F1szqoaYI1EhHGdkdV03pvZjPmvCIbSXJHGu3cq14HrBTtCH8MXavHCPj+L7u9U0/CMCyjeB3qn
	DZHKGtL+yMjKeTqo76tpQc4M4Yvs2JA5TVF23TkOZVnqeTlhQUMp9YnXCOaCtMPJmcBqj/nPp3AWH
	IXjhbfoa5scleikCOIyljXupJCuGJDUJ6VdQK7ilYdvsoLICoTnM4/Ges4kokEknBitavIxp7XOpD
	3cAS7xiyERjqD9xivEDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lquU5-00CfBU-2e; Wed, 09 Jun 2021 09:26:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqtzf-00CVat-Cw
 for barebox@lists.infradead.org; Wed, 09 Jun 2021 08:55:25 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lqtzW-0005bG-0s; Wed, 09 Jun 2021 10:55:14 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lqtzV-0006FB-GA; Wed, 09 Jun 2021 10:55:13 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Jun 2021 10:55:09 +0200
Message-Id: <20210609085512.3865-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210609085512.3865-1-a.fatoum@pengutronix.de>
References: <20210609085512.3865-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210609_015523_509688_AF1B6849 
X-CRM114-Status: GOOD (  14.54  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/5] fixup! net: eqos: Rockchip support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The rk3568 requests some extra clocks, which aren't needed/available for
other SoCs, like the rk3399. To make the driver easier to extend, split
up the clk array into common clocks, needed by all variants and extra
clocks, which are per-variant. This will come in handy for extending
the driver later.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/designware_rockchip.c | 80 +++++++++++++++++++++----------
 1 file changed, 56 insertions(+), 24 deletions(-)

diff --git a/drivers/net/designware_rockchip.c b/drivers/net/designware_rockchip.c
index 79c514e73054..a4c7bfe925db 100644
--- a/drivers/net/designware_rockchip.c
+++ b/drivers/net/designware_rockchip.c
@@ -20,11 +20,14 @@ struct rk_gmac_ops {
 	void (*set_to_rmii)(struct eqos *eqos);
 	void (*set_speed)(struct eqos *eqos, int speed);
 	void (*integrated_phy_powerup)(struct eqos *eqos);
+
+	const struct clk_bulk_data *extra_clks;
+	unsigned num_extra_clks;
 };
 
 struct eqos_rk_gmac {
-	struct clk_bulk_data *clks;
-	int num_clks;
+	struct clk_bulk_data *common_clks;
+	struct clk_bulk_data *extra_clks;
 	bool clock_input;
 	const struct rk_gmac_ops *ops;
 	struct regmap *grf;
@@ -41,9 +44,6 @@ enum {
 	CLK_MAC_REFOUT,
 	CLK_MAC_ACLK,
 	CLK_MAC_PCLK,
-	CLK_MAC_SPEED,
-	CLK_PTP_REF,
-	CLK_XPCS_PCLK,
 };
 
 static const struct clk_bulk_data rk_gmac_clks[] = {
@@ -53,9 +53,6 @@ static const struct clk_bulk_data rk_gmac_clks[] = {
 	[CLK_MAC_REFOUT]  = { .id = "clk_mac_refout" },
 	[CLK_MAC_ACLK]    = { .id = "aclk_mac" },
 	[CLK_MAC_PCLK]    = { .id = "pclk_mac" },
-	[CLK_MAC_SPEED]   = { .id = "clk_mac_speed" },
-	[CLK_PTP_REF]     = { .id = "ptp_ref" },
-	[CLK_XPCS_PCLK]   = { .id = "pclk_xpcs" },
 };
 
 static inline struct eqos_rk_gmac *to_rk_gmac(struct eqos *eqos)
@@ -94,7 +91,7 @@ static unsigned long eqos_get_csr_clk_rate_rk_gmac(struct eqos *eqos)
 {
 	struct eqos_rk_gmac *priv = to_rk_gmac(eqos);
 
-	return clk_get_rate(priv->clks[CLK_STMMACETH].clk);
+	return clk_get_rate(priv->common_clks[CLK_STMMACETH].clk);
 }
 
 static void rk3568_set_to_rgmii(struct eqos *eqos,
@@ -142,6 +139,18 @@ static void rk3568_set_to_rmii(struct eqos *eqos)
 		     RK3568_GMAC_PHY_INTF_SEL_RMII);
 }
 
+enum {
+	CLK_MAC_SPEED,
+	CLK_PTP_REF,
+	CLK_XPCS_PCLK,
+};
+
+static const struct clk_bulk_data rk3568_gmac_clks[] = {
+	[CLK_MAC_SPEED]   = { .id = "clk_mac_speed" },
+	[CLK_PTP_REF]     = { .id = "ptp_ref" },
+	[CLK_XPCS_PCLK]   = { .id = "pclk_xpcs" },
+};
+
 static void rk3568_set_gmac_speed(struct eqos *eqos, int speed)
 {
 	struct eqos_rk_gmac *priv = to_rk_gmac(eqos);
@@ -164,7 +173,7 @@ static void rk3568_set_gmac_speed(struct eqos *eqos, int speed)
 		return;
 	}
 
-	ret = clk_set_rate(priv->clks[CLK_MAC_SPEED].clk, rate);
+	ret = clk_set_rate(priv->extra_clks[CLK_MAC_SPEED].clk, rate);
 	if (ret)
 		dev_err(dev, "%s: set clk_mac_speed rate %ld failed %d\n",
 			__func__, rate, ret);
@@ -174,6 +183,9 @@ static const struct rk_gmac_ops rk3568_ops = {
 	.set_to_rgmii = rk3568_set_to_rgmii,
 	.set_to_rmii = rk3568_set_to_rmii,
 	.set_speed = rk3568_set_gmac_speed,
+
+	.extra_clks = rk3568_gmac_clks,
+	.num_extra_clks = ARRAY_SIZE(rk3568_gmac_clks),
 };
 
 static int rk_gmac_powerup(struct eqos *eqos)
@@ -221,6 +233,33 @@ static void eqos_rk_adjust_link(struct eth_device *edev)
 	eqos_adjust_link(edev);
 }
 
+static struct clk_bulk_data *eqos_rk_enable_clocks(struct device_d *dev,
+						   const struct clk_bulk_data *_clks,
+						   unsigned num_clks)
+{
+	struct clk_bulk_data *clks;
+	int ret;
+
+	if (!num_clks)
+		return NULL;
+
+	clks = xmemdup(_clks, num_clks * sizeof(*clks));
+
+	ret = clk_bulk_get(dev, num_clks, clks);
+	if (ret) {
+		dev_err(dev, "Failed to get common clks: %s\n", strerror(-ret));
+		return ERR_PTR(ret);
+	}
+
+	ret = clk_bulk_enable(num_clks, clks);
+	if (ret) {
+		dev_err(dev, "Failed to enable common clks: %s\n", strerror(-ret));
+		return ERR_PTR(ret);
+	}
+
+	return clks;
+}
+
 static int eqos_init_rk_gmac(struct device_d *dev, struct eqos *eqos)
 {
 	struct device_node *np = dev->device_node;
@@ -257,21 +296,14 @@ static int eqos_init_rk_gmac(struct device_d *dev, struct eqos *eqos)
 	priv->rx_delay = 0x10;
 	of_property_read_u32(np, "rx_delay", &priv->rx_delay);
 
-	priv->num_clks = ARRAY_SIZE(rk_gmac_clks);
-	priv->clks = xmalloc(priv->num_clks * sizeof(*priv->clks));
-	memcpy(priv->clks, rk_gmac_clks, sizeof rk_gmac_clks);
+	priv->common_clks = eqos_rk_enable_clocks(dev, rk_gmac_clks, ARRAY_SIZE(rk_gmac_clks));
+	if (IS_ERR(priv->common_clks))
+		return PTR_ERR(priv->common_clks);
 
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
+	priv->extra_clks = eqos_rk_enable_clocks(dev, priv->ops->extra_clks,
+						 priv->ops->num_extra_clks);
+	if (IS_ERR(priv->extra_clks))
+		return PTR_ERR(priv->extra_clks);
 
 	rk_gmac_powerup(eqos);
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

