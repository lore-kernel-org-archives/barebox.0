Delivery-date: Mon, 07 Jun 2021 14:21:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqEFZ-0007kr-7S
	for lore@lore.pengutronix.de; Mon, 07 Jun 2021 14:21:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqEFV-00062s-5N
	for lore@pengutronix.de; Mon, 07 Jun 2021 14:21:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2oO16JRj1SdHNy6zdZeBiZQXQCaLGWnfmvtXc0NbSsc=; b=QiyWmGAclWzdoP
	025M6ZyccSLcUvwpBS9MdGXKNhQfxSpgbbIYsI/NOLoEmVxIur9IfiBEfsmjyP05CLBj++NuwnHwW
	VDqMR8k4GUYLmozbufUmP4Pc5i6z2USf1yXLcTxclqgR91XraDKW5sX8H42ub0aEfstTUZx8zyAu+
	H7ZjMmjF04vS4X9H23YXZ25CJ3Mla02H/HeZOa6XFFpykDhqNJ8sBV6EwMPHtjdWnoc+5QduQznfS
	TtX+9bNjs9kGgQxOTcEr15CcAAectScaDrziEl56WymPWDkJrBVBpL6i/BmotYg96BJu9ygD3dO0v
	9u75gfh44GhzG5Zw8aBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqEDy-003VIx-Gk; Mon, 07 Jun 2021 12:19:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqEDj-003VFr-4D
 for barebox@lists.infradead.org; Mon, 07 Jun 2021 12:19:11 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqEDh-0005j8-IO; Mon, 07 Jun 2021 14:19:05 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqEDh-0004Zl-9W; Mon, 07 Jun 2021 14:19:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Jun 2021 14:19:03 +0200
Message-Id: <20210607121904.17546-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_051907_189545_19137FE9 
X-CRM114-Status: GOOD (  15.29  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] clk: clk-mux: implement setting rate by reparenting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This implements rate setting for the generic clk mux by reparenting to
the best parent clock. Like in Linux we only do this when the
CLK_SET_RATE_NO_REPARENT flag is not set.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk-mux.c | 82 +++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 80 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/clk-mux.c b/drivers/clk/clk-mux.c
index e7e4369ce0..d8c09e4a75 100644
--- a/drivers/clk/clk-mux.c
+++ b/drivers/clk/clk-mux.c
@@ -41,9 +41,87 @@ static int clk_mux_set_parent(struct clk_hw *hw, u8 idx)
 	return 0;
 }
 
+static struct clk *clk_get_parent_index(struct clk *clk, int num)
+{
+	if (num >= clk->num_parents)
+		return NULL;
+
+	if (clk->parents[num])
+		return clk->parents[num];
+
+	clk->parents[num] = clk_lookup(clk->parent_names[num]);
+
+	return clk->parents[num];
+}
+
+static struct clk *clk_mux_best_parent(struct clk *mux, unsigned long rate,
+	unsigned long *rrate)
+{
+	struct clk *bestparent = NULL;
+	long bestrate = LONG_MAX;
+	int i;
+
+	for (i = 0; i < mux->num_parents; i++) {
+		struct clk *parent = clk_get_parent_index(mux, i);
+		unsigned long r;
+
+		if (IS_ERR_OR_NULL(parent))
+			continue;
+
+		if (mux->flags & CLK_SET_RATE_PARENT)
+			r = clk_round_rate(parent, rate);
+		else
+			r = clk_get_rate(parent);
+
+		if (abs((long)rate - r) < abs((long)rate - bestrate)) {
+			bestrate = r;
+			bestparent = parent;
+		}
+	}
+
+	*rrate = bestrate;
+
+	return bestparent;
+}
+
+static long clk_mux_round_rate(struct clk_hw *hw, unsigned long rate,
+			       unsigned long *prate)
+{
+	struct clk *clk = clk_hw_to_clk(hw);
+	unsigned long rrate;
+	struct clk *bestparent;
+
+	if (clk->flags & CLK_SET_RATE_NO_REPARENT)
+		return *prate;
+
+	bestparent = clk_mux_best_parent(clk, rate, &rrate);
+
+	return rrate;
+}
+
+static int clk_mux_set_rate(struct clk_hw *hw, unsigned long rate,
+			unsigned long parent_rate)
+{
+	struct clk *clk = clk_hw_to_clk(hw);
+	struct clk *parent;
+	unsigned long rrate;
+	int ret;
+
+	if (clk->flags & CLK_SET_RATE_NO_REPARENT)
+		return 0;
+
+	parent = clk_mux_best_parent(clk, rate, &rrate);
+
+	ret = clk_set_parent(clk, parent);
+	if (ret)
+		return ret;
+
+	return clk_set_rate(parent, rate);
+}
+
 const struct clk_ops clk_mux_ops = {
-	.set_rate = clk_parent_set_rate,
-	.round_rate = clk_parent_round_rate,
+	.set_rate = clk_mux_set_rate,
+	.round_rate = clk_mux_round_rate,
 	.get_parent = clk_mux_get_parent,
 	.set_parent = clk_mux_set_parent,
 };
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

