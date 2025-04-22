Delivery-date: Tue, 22 Apr 2025 10:39:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u79AC-003ycC-37
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 10:39:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u79A6-0002Y8-8V
	for lore@pengutronix.de; Tue, 22 Apr 2025 10:39:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aK1rIuHkY4lpkiThug3bSDEzRQZ/+eWR7BPy9LttUzw=; b=M1PyzZwksW+cuhoooGvhWslALL
	/fnMlLPmE3P0AKNL9pj9Xk+vazCKYsi+ZgvpcUhOIUuq4n5q5+GQ+Qkw0zBdAJW5Q5Bl4Rnc6gp+S
	AT/oQj5C1qIpQG2MV6q2fd4SjZY1uNO8dPHmeiZm+/kP13HgKVbUHhNNH0U1MXbp02ap7xelOFQn4
	gy8YySwXHV66dTv780KaKfaQmC5xwUqWoJYgoLw3Km/Y2Z0EmzQ/kFyIs8aFsk+sJIyWaKJhtax5R
	HaknHDtxAgT/lm6+jwyUD1nVyh5l+KBdBJpcmrDgNfArfM84Icemp7QtT+Rqm4rcsEK8ksXBmpEsl
	icxrX1wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u799C-00000006Mm4-0Xt9;
	Tue, 22 Apr 2025 08:38:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u78Uh-00000006CRL-22Pk
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 07:56:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78Ug-0000iA-CA
	for barebox@lists.infradead.org; Tue, 22 Apr 2025 09:56:38 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78Ug-001VwH-0c
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:56:38 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78Ug-000vQy-0K
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:56:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 22 Apr 2025 09:56:36 +0200
Message-Id: <20250422075637.220688-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250422075637.220688-1-a.fatoum@pengutronix.de>
References: <20250422075637.220688-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_005639_723142_6914B509 
X-CRM114-Status: GOOD (  17.37  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/7] clk: composite: change mux/rate/gate members to clk_hw
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

In preparation for struct clk_composite being public API, change the
members to struct clk_hw type for compatibility with Linux.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/clk/clk-composite.c | 86 +++++++++++++++++--------------------
 1 file changed, 39 insertions(+), 47 deletions(-)

diff --git a/drivers/clk/clk-composite.c b/drivers/clk/clk-composite.c
index fdf53ce75e62..f69d90e72b4f 100644
--- a/drivers/clk/clk-composite.c
+++ b/drivers/clk/clk-composite.c
@@ -14,9 +14,9 @@
 struct clk_composite {
 	struct clk_hw	hw;
 
-	struct clk	*mux_clk;
-	struct clk	*rate_clk;
-	struct clk	*gate_clk;
+	struct clk_hw	*mux_hw;
+	struct clk_hw	*rate_hw;
+	struct clk_hw	*gate_hw;
 };
 
 #define to_clk_composite(_hw) container_of(_hw, struct clk_composite, hw)
@@ -24,30 +24,27 @@ struct clk_composite {
 static int clk_composite_get_parent(struct clk_hw *hw)
 {
 	struct clk_composite *composite = to_clk_composite(hw);
-	struct clk *mux_clk = composite->mux_clk;
-	struct clk_hw *mux_hw = clk_to_clk_hw(mux_clk);
+	struct clk_hw *mux_hw = composite->mux_hw;
 
-	return mux_clk ? mux_clk->ops->get_parent(mux_hw) : 0;
+	return mux_hw ? mux_hw->clk.ops->get_parent(mux_hw) : 0;
 }
 
 static int clk_composite_set_parent(struct clk_hw *hw, u8 index)
 {
 	struct clk_composite *composite = to_clk_composite(hw);
-	struct clk *mux_clk = composite->mux_clk;
-	struct clk_hw *mux_hw = clk_to_clk_hw(mux_clk);
+	struct clk_hw *mux_hw = composite->mux_hw;
 
-	return mux_clk ? mux_clk->ops->set_parent(mux_hw, index) : 0;
+	return mux_hw ? mux_hw->clk.ops->set_parent(mux_hw, index) : 0;
 }
 
 static unsigned long clk_composite_recalc_rate(struct clk_hw *hw,
 					    unsigned long parent_rate)
 {
 	struct clk_composite *composite = to_clk_composite(hw);
-	struct clk *rate_clk = composite->rate_clk;
-	struct clk_hw *rate_hw = clk_to_clk_hw(rate_clk);
+	struct clk_hw *rate_hw = composite->rate_hw;
 
-	if (rate_clk)
-		return rate_clk->ops->recalc_rate(rate_hw, parent_rate);
+	if (rate_hw)
+		return rate_hw->clk.ops->recalc_rate(rate_hw, parent_rate);
 
 	return parent_rate;
 }
@@ -56,17 +53,16 @@ static long clk_composite_round_rate(struct clk_hw *hw, unsigned long rate,
 				  unsigned long *prate)
 {
 	struct clk_composite *composite = to_clk_composite(hw);
-	struct clk *rate_clk = composite->rate_clk;
-	struct clk *mux_clk = composite->mux_clk;
-	struct clk_hw *rate_hw = clk_to_clk_hw(rate_clk);
+	struct clk_hw *rate_hw = composite->rate_hw;
+	struct clk_hw *mux_hw = composite->mux_hw;
 
-	if (rate_clk)
-		return rate_clk->ops->round_rate(rate_hw, rate, prate);
+	if (rate_hw)
+		return rate_hw->clk.ops->round_rate(rate_hw, rate, prate);
 
 	if (!(hw->clk.flags & CLK_SET_RATE_NO_REPARENT) &&
-	    mux_clk &&
-	    mux_clk->ops->round_rate)
-		return mux_clk->ops->round_rate(clk_to_clk_hw(mux_clk), rate, prate);
+	    mux_hw &&
+	    mux_hw->clk.ops->round_rate)
+		return mux_hw->clk.ops->round_rate(mux_hw, rate, prate);
 
 	return *prate;
 }
@@ -75,29 +71,28 @@ static int clk_composite_set_rate(struct clk_hw *hw, unsigned long rate,
 			       unsigned long parent_rate)
 {
 	struct clk_composite *composite = to_clk_composite(hw);
-	struct clk *rate_clk = composite->rate_clk;
-	struct clk *mux_clk = composite->mux_clk;
-	struct clk_hw *rate_hw = clk_to_clk_hw(rate_clk);
+	struct clk_hw *rate_hw = composite->rate_hw;
+	struct clk_hw *mux_hw = composite->mux_hw;
 
 	/*
 	 * When the rate clock is present use that to set the rate,
 	 * otherwise try the mux clock. We currently do not support
 	 * to find the best rate using a combination of both.
 	 */
-	if (rate_clk)
-		return rate_clk->ops->set_rate(rate_hw, rate, parent_rate);
+	if (rate_hw)
+		return rate_hw->clk.ops->set_rate(rate_hw, rate, parent_rate);
 
 	if (!(hw->clk.flags & CLK_SET_RATE_NO_REPARENT) &&
-	    mux_clk &&
-	    mux_clk->ops->set_rate) {
+	    mux_hw &&
+	    mux_hw->clk.ops->set_rate) {
 		/*
 		 * We'll call set_rate on the mux clk which in turn results
 		 * in reparenting the mux clk. Make sure the enable count
 		 * (which is stored in the composite clk, not the mux clk)
 		 * is transferred correctly.
 		 */
-		mux_clk->enable_count = hw->clk.enable_count;
-		return mux_clk->ops->set_rate(clk_to_clk_hw(mux_clk), rate, parent_rate);
+		mux_hw->clk.enable_count = hw->clk.enable_count;
+		return mux_hw->clk.ops->set_rate(mux_hw, rate, parent_rate);
 	}
 
 	return 0;
@@ -106,29 +101,26 @@ static int clk_composite_set_rate(struct clk_hw *hw, unsigned long rate,
 static int clk_composite_is_enabled(struct clk_hw *hw)
 {
 	struct clk_composite *composite = to_clk_composite(hw);
-	struct clk *gate_clk = composite->gate_clk;
-	struct clk_hw *gate_hw = clk_to_clk_hw(gate_clk);
+	struct clk_hw *gate_hw = composite->gate_hw;
 
-	return gate_clk ? gate_clk->ops->is_enabled(gate_hw) : 0;
+	return gate_hw ? gate_hw->clk.ops->is_enabled(gate_hw) : 0;
 }
 
 static int clk_composite_enable(struct clk_hw *hw)
 {
 	struct clk_composite *composite = to_clk_composite(hw);
-	struct clk *gate_clk = composite->gate_clk;
-	struct clk_hw *gate_hw = clk_to_clk_hw(gate_clk);
+	struct clk_hw *gate_hw = composite->gate_hw;
 
-	return gate_clk ? gate_clk->ops->enable(gate_hw) : 0;
+	return gate_hw ? gate_hw->clk.ops->enable(gate_hw) : 0;
 }
 
 static void clk_composite_disable(struct clk_hw *hw)
 {
 	struct clk_composite *composite = to_clk_composite(hw);
-	struct clk *gate_clk = composite->gate_clk;
-	struct clk_hw *gate_hw = clk_to_clk_hw(gate_clk);
+	struct clk_hw *gate_hw = composite->gate_hw;
 
-	if (gate_clk)
-		gate_clk->ops->disable(gate_hw);
+	if (gate_hw)
+		gate_hw->clk.ops->disable(gate_hw);
 }
 
 static struct clk_ops clk_composite_ops = {
@@ -159,18 +151,18 @@ struct clk *clk_register_composite(const char *name,
 	composite->hw.clk.flags = flags;
 	composite->hw.clk.parent_names = parent_names;
 	composite->hw.clk.num_parents = num_parents;
-	composite->mux_clk = mux_clk;
-	composite->rate_clk = rate_clk;
-	composite->gate_clk = gate_clk;
+	composite->mux_hw = clk_to_clk_hw(mux_clk);
+	composite->rate_hw = clk_to_clk_hw(rate_clk);
+	composite->gate_hw = clk_to_clk_hw(gate_clk);
 
 	ret = bclk_register(&composite->hw.clk);
 	if (ret)
 		goto err;
 
-	if (composite->mux_clk) {
-		composite->mux_clk->parents = composite->hw.clk.parents;
-		composite->mux_clk->parent_names = composite->hw.clk.parent_names;
-		composite->mux_clk->num_parents = composite->hw.clk.num_parents;
+	if (composite->mux_hw) {
+		composite->mux_hw->clk.parents = composite->hw.clk.parents;
+		composite->mux_hw->clk.parent_names = composite->hw.clk.parent_names;
+		composite->mux_hw->clk.num_parents = composite->hw.clk.num_parents;
 	}
 
 	return &composite->hw.clk;
-- 
2.39.5



