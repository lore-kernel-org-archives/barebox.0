Delivery-date: Mon, 28 Oct 2024 15:41:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5Qvh-001tkS-1H
	for lore@lore.pengutronix.de;
	Mon, 28 Oct 2024 15:41:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5Qvg-00053t-IU
	for lore@pengutronix.de; Mon, 28 Oct 2024 15:41:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rMbJqrYAB2LM8pahhtHfROhKCEhtW87dSAuc5PKsu6Y=; b=4oF8+FmMNpOliPb7TC45QE6Rvy
	QLDU9Yhw8Lbde6WemPyCD3GI8ZW1KaajjQ89EKkcKYS0X3bMEqhqGyuHt8HvXWOZg3/c2fGeUpisD
	fPhxFw5/yf3ntDJ5PBon+e95gBXO1GpoUSDxAb59K1Cvba8pmnJrOFcwaDT/5vWmGlh20wjgOC8HJ
	CiM6S+4wi8jPT+wC8UBTaEcFoZRlTysuhWxSAyZHEJDA6xRgb9A7Ifz3HA9eplE/3WTq3fUbk6q2n
	l+scKWOMHCy5F3MKw3MCD994dBWhTmV2L/WuFGZGCk8U825lJ8OOm4noOwqveqVV4QA4DMo5BRyU3
	qOinAmAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5Quz-0000000B9kh-2MK7;
	Mon, 28 Oct 2024 14:40:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5QbE-0000000B5sN-12WZ
	for barebox@lists.infradead.org;
	Mon, 28 Oct 2024 14:20:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t5Qax-0002np-3B; Mon, 28 Oct 2024 15:19:47 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t5Qaw-000s7R-2G;
	Mon, 28 Oct 2024 15:19:46 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t5Qaw-00EMX2-1y;
	Mon, 28 Oct 2024 15:19:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Oct 2024 15:19:54 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241028-vop2-rk3588-v1-9-a54bf7c28adc@pengutronix.de>
References: <20241028-vop2-rk3588-v1-0-a54bf7c28adc@pengutronix.de>
In-Reply-To: <20241028-vop2-rk3588-v1-0-a54bf7c28adc@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1730125186; l=7705;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=q0y9cRMUojHexvAQh3753C+aINDzsMh69Qftj8UT3mU=;
 b=YXZIZ9nKC3oPNYvq97HPrPeOAiB+DJMkTSLq6xGntoPpQPSlwT1XYJOm56agVet0+Hv1Ci2LK
 UXPw40AFkPEDld+rmuam5RM+vxBflDUngynA3f9S8WMKWNDm5LUiOjI
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241028_072004_482898_2EF00D00 
X-CRM114-Status: GOOD (  22.48  )
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
Subject: [PATCH 09/12] phy: phy-rockchip-samsung-hdptx: Add clock provider
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Derived from:

| commit c4b09c562086f32588d962d30d0b7e93fe3e7cbb
| Author: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
| Date:   Thu Jun 20 03:36:25 2024 +0300
|
|     phy: phy-rockchip-samsung-hdptx: Add clock provider support
|
|     The HDMI PHY PLL can be used as an alternative dclk source to RK3588 SoC
|     CRU. It provides more accurate clock rates required by VOP2 to improve
|     existing support for display modes handling, which is known to be
|     problematic when dealing with non-integer refresh rates, among others.
|
|     It is worth noting this only works for HDMI 2.0 or below, e.g. cannot be
|     used to support HDMI 2.1 4K@120Hz mode.
|
|     Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
|     Link: https://lore.kernel.org/r/20240620-rk3588-hdmiphy-clkprov-v2-4-6a2d2164e508@collabora.com
|     Signed-off-by: Vinod Koul <vkoul@kernel.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 180 +++++++++++++++++++++-
 1 file changed, 173 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index fd8b3ca559..6a29f28dc1 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -23,6 +23,8 @@
 #include <linux/reset.h>
 #include <linux/kernel.h>
 #include <linux/rational.h>
+#include <linux/atomic.h>
+#include <linux/clk-provider.h>
 
 #define GRF_HDPTX_CON0			0x00
 #define HDPTX_I_PLL_EN			BIT(7)
@@ -195,6 +197,8 @@
 #define LN3_TX_SER_RATE_SEL_HBR2	BIT(3)
 #define LN3_TX_SER_RATE_SEL_HBR3	BIT(2)
 
+#define HDMI20_MAX_RATE			600000000
+
 struct lcpll_config {
 	u32 bit_rate;
 	u8 lcvco_mode_en;
@@ -277,6 +281,11 @@ struct rk_hdptx_phy {
 	struct clk_bulk_data *clks;
 	int nr_clks;
 	struct reset_control_bulk_data rsts[RST_MAX];
+
+	/* clk provider */
+	struct clk_hw hw;
+	unsigned long rate;
+	atomic_t usage_count;
 };
 
 static const struct ropll_config ropll_tmds_cfg[] = {
@@ -842,6 +851,62 @@ static int rk_hdptx_ropll_tmds_mode_config(struct rk_hdptx_phy *hdptx,
 	return rk_hdptx_post_enable_lane(hdptx);
 }
 
+static int rk_hdptx_phy_consumer_get(struct rk_hdptx_phy *hdptx,
+				     unsigned int rate)
+{
+	u32 status;
+	int ret;
+
+	if (atomic_inc_return(&hdptx->usage_count) > 1)
+		return 0;
+
+	ret = regmap_read(hdptx->grf, GRF_HDPTX_STATUS, &status);
+	if (ret)
+		goto dec_usage;
+
+	if (status & HDPTX_O_PLL_LOCK_DONE)
+		dev_warn(hdptx->dev, "PLL locked by unknown consumer!\n");
+
+	if (rate) {
+		ret = rk_hdptx_ropll_tmds_cmn_config(hdptx, rate);
+		if (ret)
+			goto dec_usage;
+	}
+
+	return 0;
+
+dec_usage:
+	atomic_dec(&hdptx->usage_count);
+	return ret;
+}
+
+static int rk_hdptx_phy_consumer_put(struct rk_hdptx_phy *hdptx, bool force)
+{
+	u32 status;
+	int ret;
+
+	ret = atomic_dec_return(&hdptx->usage_count);
+	if (ret > 0)
+		return 0;
+
+	if (ret < 0) {
+		dev_warn(hdptx->dev, "Usage count underflow!\n");
+		ret = -EINVAL;
+	} else {
+		ret = regmap_read(hdptx->grf, GRF_HDPTX_STATUS, &status);
+		if (!ret) {
+			if (status & HDPTX_O_PLL_LOCK_DONE)
+				rk_hdptx_phy_disable(hdptx);
+			return 0;
+		} else if (force) {
+			return 0;
+		}
+	}
+
+	atomic_inc(&hdptx->usage_count);
+	return ret;
+}
+
 static int rk_hdptx_phy_power_on(struct phy *phy)
 {
 	struct rk_hdptx_phy *hdptx = phy_get_drvdata(phy);
@@ -856,7 +921,13 @@ static int rk_hdptx_phy_power_on(struct phy *phy)
 	dev_dbg(hdptx->dev, "%s bus_width=%x rate=%u\n",
 		__func__, bus_width, rate);
 
+	ret = rk_hdptx_phy_consumer_get(hdptx, rate);
+	if (ret)
+		return ret;
+
 	ret = rk_hdptx_ropll_tmds_mode_config(hdptx, rate);
+	if (ret)
+		rk_hdptx_phy_consumer_put(hdptx, true);
 
 	return ret;
 }
@@ -864,14 +935,8 @@ static int rk_hdptx_phy_power_on(struct phy *phy)
 static int rk_hdptx_phy_power_off(struct phy *phy)
 {
 	struct rk_hdptx_phy *hdptx = phy_get_drvdata(phy);
-	u32 val;
-	int ret;
-
-	ret = regmap_read(hdptx->grf, GRF_HDPTX_STATUS, &val);
-	if (ret == 0 && (val & HDPTX_O_PLL_LOCK_DONE))
-		rk_hdptx_phy_disable(hdptx);
 
-	return ret;
+	return rk_hdptx_phy_consumer_put(hdptx, false);
 }
 
 static const struct phy_ops rk_hdptx_phy_ops = {
@@ -879,6 +944,105 @@ static const struct phy_ops rk_hdptx_phy_ops = {
 	.power_off = rk_hdptx_phy_power_off,
 };
 
+static struct rk_hdptx_phy *to_rk_hdptx_phy(struct clk_hw *hw)
+{
+	return container_of(hw, struct rk_hdptx_phy, hw);
+}
+
+static int rk_hdptx_phy_clk_prepare(struct clk_hw *hw)
+{
+	struct rk_hdptx_phy *hdptx = to_rk_hdptx_phy(hw);
+
+	dev_dbg(hdptx->dev, "clk_prepare\n");
+
+	return rk_hdptx_phy_consumer_get(hdptx, hdptx->rate / 100);
+}
+
+static void rk_hdptx_phy_clk_unprepare(struct clk_hw *hw)
+{
+	struct rk_hdptx_phy *hdptx = to_rk_hdptx_phy(hw);
+
+	dev_dbg(hdptx->dev, "clk_unprepare\n");
+
+	rk_hdptx_phy_consumer_put(hdptx, true);
+}
+
+static unsigned long rk_hdptx_phy_clk_recalc_rate(struct clk_hw *hw,
+						  unsigned long parent_rate)
+{
+	struct rk_hdptx_phy *hdptx = to_rk_hdptx_phy(hw);
+
+	return hdptx->rate;
+}
+
+static long rk_hdptx_phy_clk_round_rate(struct clk_hw *hw, unsigned long rate,
+					unsigned long *parent_rate)
+{
+	u32 bit_rate = rate / 100;
+	int i;
+
+	if (rate > HDMI20_MAX_RATE)
+		return rate;
+
+	for (i = 0; i < ARRAY_SIZE(ropll_tmds_cfg); i++)
+		if (bit_rate == ropll_tmds_cfg[i].bit_rate)
+			break;
+
+	if (i == ARRAY_SIZE(ropll_tmds_cfg) &&
+	    !rk_hdptx_phy_clk_pll_calc(bit_rate, NULL))
+		return -EINVAL;
+
+	return rate;
+}
+
+static int rk_hdptx_phy_clk_set_rate(struct clk_hw *hw, unsigned long rate,
+				     unsigned long parent_rate)
+{
+	struct rk_hdptx_phy *hdptx = to_rk_hdptx_phy(hw);
+
+	dev_dbg(hdptx->dev, "clk_set_rate rate=%lu\n", rate);
+
+	return rk_hdptx_ropll_tmds_cmn_config(hdptx, rate / 100);
+}
+
+static const struct clk_ops hdptx_phy_clk_ops = {
+	.enable = rk_hdptx_phy_clk_prepare,
+	.disable = rk_hdptx_phy_clk_unprepare,
+	.recalc_rate = rk_hdptx_phy_clk_recalc_rate,
+	.round_rate = rk_hdptx_phy_clk_round_rate,
+	.set_rate = rk_hdptx_phy_clk_set_rate,
+};
+
+static int rk_hdptx_phy_clk_register(struct rk_hdptx_phy *hdptx)
+{
+	struct device *dev = hdptx->dev;
+	const char *name, *pname;
+	struct clk *refclk;
+	int ret, id;
+
+	refclk = clk_get(dev, "ref");
+	if (IS_ERR(refclk))
+		return dev_err_probe(dev, PTR_ERR(refclk),
+				     "Failed to get ref clock\n");
+
+	id = of_alias_get_id(dev->of_node, "hdptxphy");
+	name = id > 0 ? "clk_hdmiphy_pixel1" : "clk_hdmiphy_pixel0";
+	pname = __clk_get_name(refclk);
+
+	hdptx->hw.init = CLK_HW_INIT(name, pname, &hdptx_phy_clk_ops,
+				     CLK_GET_RATE_NOCACHE);
+
+	ret = clk_hw_register(dev, &hdptx->hw);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to register clock\n");
+
+	ret = of_clk_add_hw_provider(dev->of_node, of_clk_hw_simple_get, &hdptx->hw);
+	if (ret)
+		return dev_err_probe(dev, ret,
+				     "Failed to register clk provider\n");
+	return 0;
+}
+
 static int rk_hdptx_phy_probe(struct device *dev)
 {
 	struct phy_provider *phy_provider;
@@ -939,6 +1103,8 @@ static int rk_hdptx_phy_probe(struct device *dev)
 	phy_set_drvdata(hdptx->phy, hdptx);
 	phy_set_bus_width(hdptx->phy, 8);
 
+	rk_hdptx_phy_clk_register(hdptx);
+
 	phy_provider = of_phy_provider_register(dev, of_phy_simple_xlate);
 	if (IS_ERR(phy_provider))
 		return dev_err_probe(dev, PTR_ERR(phy_provider),

-- 
2.39.5



