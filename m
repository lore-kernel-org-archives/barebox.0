Delivery-date: Mon, 27 Nov 2023 07:51:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VSm-00Aerx-2g
	for lore@lore.pengutronix.de;
	Mon, 27 Nov 2023 07:51:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VSm-00018E-PX
	for lore@pengutronix.de; Mon, 27 Nov 2023 07:51:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+G11yk12k3nQJamdKh6RMPfckUeAkcApt8BnM8e5qYQ=; b=bCmMl9RkAl75DCSliSWtMN0T/s
	WpPjRIBpSmMOoYuaxTdU01TQWih8t/N6xqd97eBYqhBLuIOBfBv9ibrcnnNsLpqWsk7oWJBnwZ5VH
	OrU5OkWu62a5/X3UmWsfYTgzKnRHHWzAze2qPeGbtSuM8be01eaM1/53f6IMwqyibkxIBpiSRF5X9
	W4tIdkax4CS0ordoQG8gouQHh3cjT0IgpyTEO07SHO45pDctoqR68XZMG7BpZHnbY1FfFQH7kuzz0
	vj3BAiKrjxJW210zX4v9FNJW3aOORqmcsqirnvbXYeAT/f8JId8sqD3htTJDrrtax/akZE5dFemI5
	h6HLowYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VRV-001bal-1C;
	Mon, 27 Nov 2023 06:50:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VRL-001bWJ-1c
	for barebox@lists.infradead.org;
	Mon, 27 Nov 2023 06:49:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VRK-0000dM-CP; Mon, 27 Nov 2023 07:49:54 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VRJ-00Bsiw-Va; Mon, 27 Nov 2023 07:49:53 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VRJ-009GPh-2t;
	Mon, 27 Nov 2023 07:49:53 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 Nov 2023 07:49:39 +0100
Message-Id: <20231127064947.2207726-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231127064947.2207726-1-a.fatoum@pengutronix.de>
References: <20231127064947.2207726-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231126_224955_654027_1E3BF3B8 
X-CRM114-Status: GOOD (  12.39  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 05/13] clk: divider: implement divider_[ro_]round_rate_parent
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

These functions will be used in the incoming STM32MP13 clock driver
support.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/clk-divider.c    | 35 ++++++++++++++++++++++++++++++++++-
 include/linux/clk-provider.h | 21 +++++++++++++++++++++
 2 files changed, 55 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
index 150b1fe60fd4..ccab70aecca2 100644
--- a/drivers/clk/clk-divider.c
+++ b/drivers/clk/clk-divider.c
@@ -7,7 +7,7 @@
 #include <common.h>
 #include <io.h>
 #include <malloc.h>
-#include <linux/clk.h>
+#include <linux/clk-provider.h>
 #include <linux/err.h>
 #include <linux/log2.h>
 #include <linux/math64.h>
@@ -240,6 +240,39 @@ long divider_round_rate(struct clk *clk, unsigned long rate,
 	return DIV_ROUND_UP(*prate, div);
 }
 
+long divider_round_rate_parent(struct clk_hw *hw, struct clk_hw *parent,
+			       unsigned long rate, unsigned long *prate,
+			       const struct clk_div_table *table,
+			       u8 width, unsigned long flags)
+{
+	int div;
+
+	div = clk_divider_bestdiv(&hw->clk, rate, prate, table, width, flags);
+
+	return DIV_ROUND_UP_ULL((u64)*prate, div);
+}
+EXPORT_SYMBOL_GPL(divider_round_rate_parent);
+
+long divider_ro_round_rate_parent(struct clk_hw *hw, struct clk_hw *parent,
+				  unsigned long rate, unsigned long *prate,
+				  const struct clk_div_table *table, u8 width,
+				  unsigned long flags, unsigned int val)
+{
+	int div;
+
+	div = _get_div(table, val, flags, width);
+
+	/* Even a read-only clock can propagate a rate change */
+	if (clk_hw_get_flags(hw) & CLK_SET_RATE_PARENT) {
+		if (!*prate)
+			return -EINVAL;
+
+		*prate = clk_hw_round_rate(clk_hw_get_parent(hw), rate * div);
+	}
+
+	return DIV_ROUND_UP_ULL((u64)*prate, div);
+}
+
 static long clk_divider_round_rate(struct clk_hw *hw, unsigned long rate,
 				unsigned long *prate)
 {
diff --git a/include/linux/clk-provider.h b/include/linux/clk-provider.h
index 207f3b205dab..6d781fbfcc2e 100644
--- a/include/linux/clk-provider.h
+++ b/include/linux/clk-provider.h
@@ -8,6 +8,27 @@
 
 #include <linux/clk.h>
 
+long divider_round_rate_parent(struct clk_hw *hw, struct clk_hw *parent,
+			       unsigned long rate, unsigned long *prate,
+			       const struct clk_div_table *table,
+			       u8 width, unsigned long flags);
+
+long divider_ro_round_rate_parent(struct clk_hw *hw, struct clk_hw *parent,
+				  unsigned long rate, unsigned long *prate,
+				  const struct clk_div_table *table, u8 width,
+				  unsigned long flags, unsigned int val);
+
+static inline long divider_ro_round_rate(struct clk_hw *hw, unsigned long rate,
+					 unsigned long *prate,
+					 const struct clk_div_table *table,
+					 u8 width, unsigned long flags,
+					 unsigned int val)
+{
+	return divider_ro_round_rate_parent(hw, clk_hw_get_parent(hw),
+					    rate, prate, table, width, flags,
+					    val);
+}
+
 #define CLK_HW_INIT(_name, _parent, _ops, _flags)		\
 	(&(struct clk_init_data) {				\
 		.flags		= _flags,			\
-- 
2.39.2



