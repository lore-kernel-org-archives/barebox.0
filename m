Delivery-date: Mon, 07 Jun 2021 14:20:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqEFW-0007kS-8k
	for lore@lore.pengutronix.de; Mon, 07 Jun 2021 14:20:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqEFQ-00061z-U7
	for lore@pengutronix.de; Mon, 07 Jun 2021 14:20:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kuStq5TQ5BRGtxgZjMQByfNTq4nuTOWIYYfb2amAHY8=; b=wIb1owKXJ4GUsE
	nr9TU/VEu6e+cSImxtbpH9E9RO7KGB9aWpj0W4tlY0+JkRW4krkIKRaRd9TT6nal1WZfWkCK3pWl+
	s+JvD/oZhclt+1A9yXJFVfhMcfJWuZZXA+nNgkLDAuEuuY6HuctDO+q94JzlLG8C/6vwUnrShdxKD
	uUOWCL2/M85KSai5NpicpkHRAHieqhAUEB7cHm6rR7P4KM4JkHP8hQRv1aGu8TGIPYLZpxJvJ3qdt
	jH5JEpbWAF6iUxZZWW8bbkwXAmzuNCNiHBXUAWsgIvSU44maPR16CFb+I1TWRx7RUuM8Z9U9ANm9O
	WqwJ/nUhUmH3LzA7XI9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqEE1-003VJH-BL; Mon, 07 Jun 2021 12:19:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqEDq-003VIG-P5
 for barebox@lists.infradead.org; Mon, 07 Jun 2021 12:19:19 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqEDh-0005j9-Iv; Mon, 07 Jun 2021 14:19:05 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqEDh-0004Zn-A7; Mon, 07 Jun 2021 14:19:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Jun 2021 14:19:04 +0200
Message-Id: <20210607121904.17546-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210607121904.17546-1-s.hauer@pengutronix.de>
References: <20210607121904.17546-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_051914_835047_00FF6AAB 
X-CRM114-Status: GOOD (  17.25  )
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
Subject: [PATCH 2/2] clk: clk-composite: implement setting rate by reparenting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Support setting the clock rate by reparenting the mux clock. For now
only use the mux clock for setting the rate when the rate clock is not
present. Using both clocks for finding the best rate is left as a future
exercise.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk-composite.c | 34 +++++++++++++++++++++++++++++++---
 1 file changed, 31 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/clk-composite.c b/drivers/clk/clk-composite.c
index 3ed628c919..479ac5e8ef 100644
--- a/drivers/clk/clk-composite.c
+++ b/drivers/clk/clk-composite.c
@@ -57,9 +57,18 @@ static long clk_composite_round_rate(struct clk_hw *hw, unsigned long rate,
 {
 	struct clk_composite *composite = to_clk_composite(hw);
 	struct clk *rate_clk = composite->rate_clk;
+	struct clk *mux_clk = composite->mux_clk;
 	struct clk_hw *rate_hw = clk_to_clk_hw(rate_clk);
 
-	return rate_clk ? rate_clk->ops->round_rate(rate_hw, rate, prate) : 0;
+	if (rate_clk)
+		return rate_clk->ops->round_rate(rate_hw, rate, prate);
+
+	if (!(hw->clk.flags & CLK_SET_RATE_NO_REPARENT) &&
+	    mux_clk &&
+	    mux_clk->ops->set_rate)
+		return mux_clk->ops->round_rate(clk_to_clk_hw(mux_clk), rate, prate);
+
+	return *prate;
 }
 
 static int clk_composite_set_rate(struct clk_hw *hw, unsigned long rate,
@@ -67,10 +76,23 @@ static int clk_composite_set_rate(struct clk_hw *hw, unsigned long rate,
 {
 	struct clk_composite *composite = to_clk_composite(hw);
 	struct clk *rate_clk = composite->rate_clk;
+	struct clk *mux_clk = composite->mux_clk;
 	struct clk_hw *rate_hw = clk_to_clk_hw(rate_clk);
 
-	return rate_clk ?
-		rate_clk->ops->set_rate(rate_hw, rate, parent_rate) : 0;
+	/*
+	 * When the rate clock is present use that to set the rate,
+	 * otherwise try the mux clock. We currently do not support
+	 * to find the best rate using a combination of both.
+	 */
+	if (rate_clk)
+		return rate_clk->ops->set_rate(rate_hw, rate, parent_rate);
+
+	if (!(hw->clk.flags & CLK_SET_RATE_NO_REPARENT) &&
+	    mux_clk &&
+	    mux_clk->ops->set_rate)
+		return mux_clk->ops->set_rate(clk_to_clk_hw(mux_clk), rate, parent_rate);
+
+	return 0;
 }
 
 static int clk_composite_is_enabled(struct clk_hw *hw)
@@ -137,6 +159,12 @@ struct clk *clk_register_composite(const char *name,
 	if (ret)
 		goto err;
 
+	if (composite->mux_clk) {
+		composite->mux_clk->parents = composite->hw.clk.parents;
+		composite->mux_clk->parent_names = composite->hw.clk.parent_names;
+		composite->mux_clk->num_parents = composite->hw.clk.num_parents;
+	}
+
 	return &composite->hw.clk;
 
 err:
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

