Delivery-date: Wed, 02 Jun 2021 12:08:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNnt-0000sN-EH
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 12:08:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNnl-0003OX-AN
	for lore@pengutronix.de; Wed, 02 Jun 2021 12:08:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hQAZFAs6qHh4pRB1flVggeNmpHXNjJGkKJqgc3Iyk5o=; b=a91uA+8FLAkCgv
	ElcgFg7lL5V9r7KFJQH5CypIfoYM6S9A7utEcO6/k7tfbNX6nb9ebMK+hPu1Kfb7hFnCyzmBnCDr7
	XPDMzYts59yg5tIRX9YP+RCmgLyfONx/4UZ3phMmoOHRG14HJ2Z3n/JCdFpGstmfzA532YvtuaBJq
	EEp/JoxJrZMtiJc8Y9AKjkvzYxUx6mkc6/PHrDGuVqc03mu0hxgLs5uV5dQTPdA2A6fqVzUr2ytF6
	XUwNAABZnnFIuUn9c1zReXqvBWmmflcDNYMFbV5SipiEs/GMRQBHMiAnHKB6ArpCimscdC0nzM7Dl
	IAByiu7Oz8RyOaQZc2lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loNlv-003AnO-OC; Wed, 02 Jun 2021 10:06:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loNb0-0036OI-6C
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 09:55:31 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNai-0000MD-IV; Wed, 02 Jun 2021 11:55:12 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNag-00039d-SE; Wed, 02 Jun 2021 11:55:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  2 Jun 2021 11:54:53 +0200
Message-Id: <20210602095507.24609-11-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210602095507.24609-1-s.hauer@pengutronix.de>
References: <20210602095507.24609-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_025530_360467_E0C419E8 
X-CRM114-Status: GOOD (  12.77  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 10/24] clk: move fixed_factor to include/linux/clk.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

In Linux struct clk_fixed_factor is known to clk implementors. Do the
same in barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk-fixed-factor.c | 14 +-------------
 include/linux/clk.h            | 15 +++++++++++++++
 2 files changed, 16 insertions(+), 13 deletions(-)

diff --git a/drivers/clk/clk-fixed-factor.c b/drivers/clk/clk-fixed-factor.c
index 506c4aea74..4f1a07c629 100644
--- a/drivers/clk/clk-fixed-factor.c
+++ b/drivers/clk/clk-fixed-factor.c
@@ -10,18 +10,6 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 
-struct clk_fixed_factor {
-	struct clk_hw hw;
-	int mult;
-	int div;
-	const char *parent;
-};
-
-static inline struct clk_fixed_factor *to_clk_fixed_factor(struct clk_hw *hw)
-{
-	return container_of(hw, struct clk_fixed_factor, hw);
-}
-
 static unsigned long clk_fixed_factor_recalc_rate(struct clk_hw *hw,
 		unsigned long parent_rate)
 {
@@ -59,7 +47,7 @@ static int clk_factor_set_rate(struct clk_hw *hw, unsigned long rate,
 	return 0;
 }
 
-static struct clk_ops clk_fixed_factor_ops = {
+struct clk_ops clk_fixed_factor_ops = {
 	.set_rate = clk_factor_set_rate,
 	.round_rate = clk_factor_round_rate,
 	.recalc_rate = clk_fixed_factor_recalc_rate,
diff --git a/include/linux/clk.h b/include/linux/clk.h
index edf64cd9aa..7140aa9509 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -480,6 +480,21 @@ struct clk *clk_divider_table(const char *name, const char *parent,
 			      unsigned clk_flags, void __iomem *reg, u8 shift,
 			      u8 width, const struct clk_div_table *table,
 			      unsigned div_flags);
+
+struct clk_fixed_factor {
+	struct clk_hw hw;
+	int mult;
+	int div;
+	const char *parent;
+};
+
+static inline struct clk_fixed_factor *to_clk_fixed_factor(struct clk_hw *hw)
+{
+	return container_of(hw, struct clk_fixed_factor, hw);
+}
+
+extern struct clk_ops clk_fixed_factor_ops;
+
 struct clk *clk_fixed_factor(const char *name,
 		const char *parent, unsigned int mult, unsigned int div,
 		unsigned flags);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

