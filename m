Delivery-date: Fri, 19 Apr 2024 08:10:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rxhSQ-0074DM-1u
	for lore@lore.pengutronix.de;
	Fri, 19 Apr 2024 08:10:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rxhSP-0004ve-Sw
	for lore@pengutronix.de; Fri, 19 Apr 2024 08:10:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QJv0wK8j61ndclYP+kASbUtAQY05828GlcAachZnBVM=; b=VMaDJVkNsl0q4TXkYsXY0zoF1f
	CJ/RIIScAqZiYXUhk2KpyYj7a0dlHPb83oRUiUjVXjUuj13Wk4HxUsZsR3xA1iC139TyAI+kIu0rk
	QDC/qk3bmO0/fYMrGtIM8m499pDhVcCBBg9CjQrrG1JK9HYid6lbnmg0Uyez1JrbeUw0tTQNz6maF
	/8PJ3guR3wNHxGwmuGfAmeBNenkaJ6VC1B1STIP3M9LxjaVL58NN7oFjAtGAjzMzNL1DyTbaautD3
	lryO1TQHV2heawlr8LbU40wi8vjd5AbHjpqrEDw64F2VJW3ik6hDN/M5ox1Wp4+rqpSQY9EIPoc2S
	OCr2BpfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxhS0-00000004YM6-0ed9;
	Fri, 19 Apr 2024 06:10:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxhRm-00000004YGK-1t4a
	for barebox@lists.infradead.org;
	Fri, 19 Apr 2024 06:10:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rxhRl-0004Er-8e; Fri, 19 Apr 2024 08:10:05 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rxhRk-00D6h5-S9; Fri, 19 Apr 2024 08:10:04 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rxhRk-00As0T-2W;
	Fri, 19 Apr 2024 08:10:04 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Apr 2024 08:10:02 +0200
Message-Id: <20240419061003.2590849-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240419061003.2590849-1-a.fatoum@pengutronix.de>
References: <20240419061003.2590849-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_231006_647385_08B4C7B1 
X-CRM114-Status: GOOD (  15.05  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 2/3] clk: imx: composite-8m: fix muxing of core and bus clocks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The i.MX8M differntiates between three types of composite clocks (called
slices): Core, Bus and IP (peripheral) clocks. How muxes are configured
differs between these clocks, so the driver is populating a mux_ops
variable to point at the correct struct clk_ops.

Unfortunately, mux_ops wasn't actually used, leading to barebox hangs,
depending on the assigned-clock-parents properties in the device tree.

This oversight is likely due to the different prototypes of
clk_register_composite and clk_hw_register_composite, the latter of
which didn't exist when the driver was added.

The API is available now, so sync the function with Linux to fix
this issue.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/imx/clk-composite-8m.c | 26 +++++++++++++++-----------
 1 file changed, 15 insertions(+), 11 deletions(-)

diff --git a/drivers/clk/imx/clk-composite-8m.c b/drivers/clk/imx/clk-composite-8m.c
index 72534117f210..04d83d208b07 100644
--- a/drivers/clk/imx/clk-composite-8m.c
+++ b/drivers/clk/imx/clk-composite-8m.c
@@ -158,40 +158,43 @@ struct clk *imx8m_clk_composite_flags(const char *name,
 					u32 composite_flags,
 					unsigned long flags)
 {
-	struct clk *comp = ERR_PTR(-ENOMEM);
+	struct clk_hw *hw = ERR_PTR(-ENOMEM), *mux_hw;
+	struct clk_hw *div_hw, *gate_hw = NULL;
 	struct clk_divider *div = NULL;
 	struct clk_gate *gate = NULL;
 	struct clk_mux *mux = NULL;
+	const struct clk_ops *divider_ops;
 	const struct clk_ops *mux_ops;
 
 	mux = kzalloc(sizeof(*mux), GFP_KERNEL);
 	if (!mux)
 		goto fail;
 
+	mux_hw = &mux->hw;
 	mux->reg = reg;
 	mux->shift = PCG_PCS_SHIFT;
 	mux->width = PCG_PCS_WIDTH;
-	mux->hw.clk.ops = &clk_mux_ops;
 
 	div = kzalloc(sizeof(*div), GFP_KERNEL);
 	if (!div)
 		goto fail;
 
+	div_hw = &div->hw;
 	div->reg = reg;
 	if (composite_flags & IMX_COMPOSITE_CORE) {
 		div->shift = PCG_DIV_SHIFT;
 		div->width = PCG_CORE_DIV_WIDTH;
-		div->hw.clk.ops = &clk_divider_ops;
+		divider_ops = &clk_divider_ops;
 		mux_ops = &imx8m_clk_composite_mux_ops;
 	} else if (composite_flags & IMX_COMPOSITE_BUS) {
 		div->shift = PCG_PREDIV_SHIFT;
 		div->width = PCG_PREDIV_WIDTH;
-		div->hw.clk.ops = &imx8m_clk_composite_divider_ops;
+		divider_ops = &imx8m_clk_composite_divider_ops;
 		mux_ops = &imx8m_clk_composite_mux_ops;
 	} else {
 		div->shift = PCG_PREDIV_SHIFT;
 		div->width = PCG_PREDIV_WIDTH;
-		div->hw.clk.ops = &imx8m_clk_composite_divider_ops;
+		divider_ops = &imx8m_clk_composite_divider_ops;
 		mux_ops = &clk_mux_ops;
 	}
 
@@ -199,20 +202,21 @@ struct clk *imx8m_clk_composite_flags(const char *name,
 	if (!gate)
 		goto fail;
 
+	gate_hw = &gate->hw;
 	gate->reg = reg;
 	gate->shift = PCG_CGC_SHIFT;
-	gate->hw.clk.ops = &clk_gate_ops;
 
-	comp = clk_register_composite(name, parent_names, num_parents,
-				      &mux->hw.clk, &div->hw.clk, &gate->hw.clk, flags);
-	if (IS_ERR(comp))
+	hw = clk_hw_register_composite(NULL, name, parent_names, num_parents,
+			mux_hw, mux_ops, div_hw,
+			divider_ops, gate_hw, &clk_gate_ops, flags);
+	if (IS_ERR(hw))
 		goto fail;
 
-	return comp;
+	return clk_hw_to_clk(hw);
 
 fail:
 	kfree(gate);
 	kfree(div);
 	kfree(mux);
-	return ERR_CAST(comp);
+	return ERR_CAST(hw);
 }
-- 
2.39.2



