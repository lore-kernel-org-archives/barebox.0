Delivery-date: Wed, 02 Jun 2021 12:02:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNhj-0000iN-94
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 12:02:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNhe-0001vX-Ap
	for lore@pengutronix.de; Wed, 02 Jun 2021 12:02:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ox9zcUd1CRARs3DlVm6kRC0O/NSSZiVDKTS30Qzn3CQ=; b=vZ/SLQsAkQLuZ1
	3q74xZMdAjz7PACBoukq+/c0kftvU/nR4Kq+1zNo8HWJLcE3S4KKmKoA+F8ikua7qPGXcuMZGi272
	zSIyeFly5jvq3cBPq0uY7glvorZufhv9sL6v17TJp50X/n5Sg0cDwOYeWy5jmTdGLPCG+b1TzMRvy
	N1cqu4PTfPgQJMtlxc+TC9Bo8QHlE22SnOAPmcSNpKzOA0U1HHPl8jJYM38BGRiE2Q79iqR/j7czf
	/Qk6Rgd1U1my2ljooDhZqPS+71cdW27fB3liW9nh0H/PxT5+KOOBSOfk5dozbXwuA8EW1TlGKUhSn
	EyVcx0r8mL9g8RoSNriA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loNfs-0037y0-6E; Wed, 02 Jun 2021 10:00:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loNal-0036FQ-BT
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 09:55:20 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNai-0000MG-CO; Wed, 02 Jun 2021 11:55:12 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNag-00039m-TL; Wed, 02 Jun 2021 11:55:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  2 Jun 2021 11:54:56 +0200
Message-Id: <20210602095507.24609-14-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210602095507.24609-1-s.hauer@pengutronix.de>
References: <20210602095507.24609-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_025515_683169_ACAEF044 
X-CRM114-Status: GOOD (  11.20  )
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
Subject: [PATCH 13/24] clk: Add lock to different clock types
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The different clock types in Linux have a spinlock_t *lock field. Add
the same in barebox to ease code porting from Linux.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/clk.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/linux/clk.h b/include/linux/clk.h
index 39288f5025..9d09738dda 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -11,6 +11,7 @@
 #define __LINUX_CLK_H
 
 #include <linux/err.h>
+#include <linux/spinlock.h>
 #include <linux/stringify.h>
 
 struct device_d;
@@ -437,6 +438,7 @@ struct clk_divider {
 	const struct clk_div_table *table;
 	int max_div_index;
 	int table_size;
+	spinlock_t *lock;
 };
 
 #define to_clk_divider(_hw) container_of(_hw, struct clk_divider, hw)
@@ -533,6 +535,7 @@ struct clk_fractional_divider {
 	void		(*approximation)(struct clk_hw *hw,
 				unsigned long rate, unsigned long *parent_rate,
 				unsigned long *m, unsigned long *n);
+	spinlock_t *lock;
 };
 
 #define CLK_FRAC_DIVIDER_ZERO_BASED		BIT(0)
@@ -558,6 +561,7 @@ struct clk_mux {
 	int shift;
 	int width;
 	unsigned flags;
+	spinlock_t *lock;
 };
 
 #define to_clk_mux(_hw) container_of(_hw, struct clk_mux, hw)
@@ -580,6 +584,7 @@ struct clk_gate {
 	int shift;
 	const char *parent;
 	unsigned flags;
+	spinlock_t *lock;
 };
 
 int clk_gate_is_enabled(struct clk_hw *hw);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

