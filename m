Delivery-date: Thu, 07 May 2026 09:04:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKsml-001sdD-0W
	for lore@lore.pengutronix.de;
	Thu, 07 May 2026 09:04:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKsme-0007NF-KU
	for lore@pengutronix.de; Thu, 07 May 2026 09:04:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VKZG+ty+XMLU/lc+gqxEvwE61MF9GlLfwwQi+77AcWA=; b=pkTY40J8qq/294nfZ8MWFjEDAZ
	qP2xnrQq3bPq/igm3mBwnEJT38UFQGv51816NjOzQdrFdvSDq0z0IGjxzQ7hYydg0qVV4XBjXWzAS
	+awrSgElzHDyv8sgkNRQHEP2JzcRN0N9pw6soaeeUdQ9N8Jd11FEZCJvpR6akkHr4JGLADT+S5hcl
	10/I2Ft/BIVbKk85QVM5kwjNqePjR5UwYBnzUQXuvVQ1LP1nE26QNKZysTDc/pAJUEWTV5MfCKoc9
	wUMXeNkAtpWx05lZkHYKX8j4t25xUVfQF9OO0G17si0cW08FXoQYXmgw5PkMd0F6JloqQj0ci/TxL
	A2sdsyLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKsl9-00000002z2H-2GWX;
	Thu, 07 May 2026 07:02:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKsl8-00000002z0R-1ndM
	for barebox@lists.infradead.org;
	Thu, 07 May 2026 07:02:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKskz-0006NQ-1a; Thu, 07 May 2026 09:02:49 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKsky-000sMe-0Y;
	Thu, 07 May 2026 09:02:48 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKsky-0000000BYFq-2874;
	Thu, 07 May 2026 09:02:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 07 May 2026 09:02:51 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260507-rockchip-emmc-v1-5-5e8109e8059d@pengutronix.de>
References: <20260507-rockchip-emmc-v1-0-5e8109e8059d@pengutronix.de>
In-Reply-To: <20260507-rockchip-emmc-v1-0-5e8109e8059d@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778137368; l=5612;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=FJDwpi3SIHB9gFkBI9aXsDLAEW7nrBY79cv5fWzqvwA=;
 b=ruhCDIQ3ULi5uZ4+Hl0XDfJ5jhIYRlL7Fwk9JiOd5uZXfKwbzj0mhcxevegz+pA2aEtzYEH0l
 5u5OCzGaobyD3bq6fuvugiN5zbxfbSx+ATzJHhxCm0BTmo/PqJRlY35
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_000258_483532_57D6E835 
X-CRM114-Status: GOOD (  22.61  )
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
Cc: Sascha Hauer <sascha@saschahauer.de>, "Claude Opus 4.7" <noreply@anthropic.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/6] clk: composite: pick best parent for round_rate /
 set_rate
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <sascha@saschahauer.de>

Currently our clk composite driver uses the set_rate hook to set the rate
when available, otherwise it uses the mux to set the rate, but it never
tries to find the best combination of both. This patch fills the gap.
Doing this is necessary for example on Rockchip RK3588 where the clock
is adjustable only external to the SDHC controller. The knobs are a
6bit divider and a mux. The divider alone is not sufficient to scale a
high frequency down to the necessary 400kHz init clock while the 24MHz
clock is not high enough for faster speeds.

Walk all parents and pick the one whose rate-clock gets closest to
the requested rate, then reparent if needed before applying the
divider.

For mux-only, rate-only and clocks with CLK_SET_RATE_NO_REPARENT the
previous behaviour is preserved.

Assisted-by: Claude Opus 4.7 <noreply@anthropic.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk-composite.c | 110 ++++++++++++++++++++++++++++++++++++++------
 1 file changed, 95 insertions(+), 15 deletions(-)

diff --git a/drivers/clk/clk-composite.c b/drivers/clk/clk-composite.c
index e8f1fa7a72..a23e828f58 100644
--- a/drivers/clk/clk-composite.c
+++ b/drivers/clk/clk-composite.c
@@ -39,16 +39,91 @@ static unsigned long clk_composite_recalc_rate(struct clk_hw *hw,
 	return parent_rate;
 }
 
+/*
+ * Walk all parents of a (rate_hw + mux_hw) composite and pick the one
+ * whose rate-clock can get closest to the requested rate. Returns the
+ * chosen parent's index in *out_idx (or -1 to mean "stay on current parent"),
+ * the parent's rate in *parent_rate, and the achievable output rate as the
+ * function value.
+ * Falls back to round_rate on the current parent when reparenting
+ * isn't possible (no mux, or CLK_SET_RATE_NO_REPARENT).
+ */
+static long clk_composite_pick_parent(struct clk_hw *hw, unsigned long rate,
+				      int *out_idx, unsigned long *parent_rate)
+{
+	struct clk_composite *composite = to_clk_composite(hw);
+	struct clk_hw *rate_hw = composite->rate_hw;
+	struct clk_hw *mux_hw = composite->mux_hw;
+	unsigned long best_rate = 0, best_prate = 0, best_diff = ULONG_MAX;
+	int best_idx = -1;
+	int i;
+
+	if (!rate_hw || !rate_hw->clk.ops->round_rate)
+		return -ENOSYS;
+
+	if (!mux_hw || (hw->clk.flags & CLK_SET_RATE_NO_REPARENT)) {
+		unsigned long prate = *parent_rate;
+		long achievable;
+
+		achievable = rate_hw->clk.ops->round_rate(rate_hw, rate, &prate);
+		if (achievable < 0)
+			return achievable;
+
+		*out_idx = -1;
+		*parent_rate = prate;
+		return achievable;
+	}
+
+	for (i = 0; i < hw->clk.num_parents; i++) {
+		struct clk_hw *p_hw = clk_hw_get_parent_by_index(hw, i);
+		unsigned long prate, diff;
+		long achievable;
+
+		if (!p_hw)
+			continue;
+
+		prate = clk_hw_get_rate(p_hw);
+		achievable = rate_hw->clk.ops->round_rate(rate_hw, rate, &prate);
+		if (achievable < 0)
+			continue;
+
+		diff = (achievable >= rate) ? achievable - rate
+					    : rate - achievable;
+
+		if (diff < best_diff) {
+			best_idx = i;
+			best_prate = prate;
+			best_rate = achievable;
+			best_diff = diff;
+			if (!diff)
+				break;
+		}
+	}
+
+	if (best_idx < 0)
+		return -EINVAL;
+
+	*out_idx = best_idx;
+	*parent_rate = best_prate;
+	return best_rate;
+}
+
 static long clk_composite_round_rate(struct clk_hw *hw, unsigned long rate,
 				  unsigned long *prate)
 {
 	struct clk_composite *composite = to_clk_composite(hw);
-	struct clk_hw *rate_hw = composite->rate_hw;
 	struct clk_hw *mux_hw = composite->mux_hw;
+	int idx;
+	long achievable;
 
-	if (rate_hw)
-		return rate_hw->clk.ops->round_rate(rate_hw, rate, prate);
+	achievable = clk_composite_pick_parent(hw, rate, &idx, prate);
+	if (achievable >= 0)
+		return achievable;
+
+	if (achievable != -ENOSYS)
+		return achievable;
 
+	/* No rate_hw — fall back to mux's round_rate if available. */
 	if (!(hw->clk.flags & CLK_SET_RATE_NO_REPARENT) &&
 	    mux_hw &&
 	    mux_hw->clk.ops->round_rate)
@@ -63,24 +138,29 @@ static int clk_composite_set_rate(struct clk_hw *hw, unsigned long rate,
 	struct clk_composite *composite = to_clk_composite(hw);
 	struct clk_hw *rate_hw = composite->rate_hw;
 	struct clk_hw *mux_hw = composite->mux_hw;
+	int idx = -1;
+	long achievable;
+
+	achievable = clk_composite_pick_parent(hw, rate, &idx, &parent_rate);
+	if (achievable >= 0) {
+		if (idx >= 0 && mux_hw && mux_hw->clk.ops->set_parent) {
+			int ret = mux_hw->clk.ops->set_parent(mux_hw, idx);
+			if (ret)
+				return ret;
+		}
+		return rate_hw->clk.ops->set_rate(rate_hw, rate, parent_rate);
+	}
+
+	if (achievable != -ENOSYS)
+		return achievable;
 
 	/*
-	 * When the rate clock is present use that to set the rate,
-	 * otherwise try the mux clock. We currently do not support
-	 * to find the best rate using a combination of both.
+	 * No rate_hw. Fall back to letting the mux clk reparent itself,
+	 * preserving the existing enable-count handoff.
 	 */
-	if (rate_hw)
-		return rate_hw->clk.ops->set_rate(rate_hw, rate, parent_rate);
-
 	if (!(hw->clk.flags & CLK_SET_RATE_NO_REPARENT) &&
 	    mux_hw &&
 	    mux_hw->clk.ops->set_rate) {
-		/*
-		 * We'll call set_rate on the mux clk which in turn results
-		 * in reparenting the mux clk. Make sure the enable count
-		 * (which is stored in the composite clk, not the mux clk)
-		 * is transferred correctly.
-		 */
 		mux_hw->clk.enable_count = hw->clk.enable_count;
 		return mux_hw->clk.ops->set_rate(mux_hw, rate, parent_rate);
 	}

-- 
2.47.3



