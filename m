Delivery-date: Tue, 18 May 2021 13:51:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liyFt-0004CE-NV
	for lore@lore.pengutronix.de; Tue, 18 May 2021 13:51:21 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liyFr-00020g-Qi
	for lore@pengutronix.de; Tue, 18 May 2021 13:51:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kjSV4lIcnamfh0QhnPN1NCV5mmapVJ9U9cgwvFDxodI=; b=pC34cCz0kuCgqgX8r2xNVkjDB
	M5BxVz2z9soc9asuVCenz3E5Wy74WzYuUvymB84ku3WSR40JVsBZNqk9zOJE0gux4XQFTfaZWkrxX
	Li6Gn7+Z4cdwiUSevtvWQBG0TuZzxEpjCGlRIptdYfNJ4hJOCaVSRh2FmC9gt/2hVmpyr3rFCJBu9
	gb/fT1n4fB7Wf+z5Qel0484bLRhWJkXSm059Z7lei6EMdp2J5ddhwUDCMNN6fIl9OMK7tQM4l30dB
	MwhYqdVKmiFTm4oKMApDPOT5et+6tMqqPZB+qwqUUT/pFU9W4iVneRwpzGuDXS7RNtwyJ3tA2l3iT
	4BID2no+w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liyEs-000dq2-8B; Tue, 18 May 2021 11:50:18 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liyEC-000dcW-Bb
 for barebox@desiato.infradead.org; Tue, 18 May 2021 11:49:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=3kEeUw31POYHuwGaZHX1OyhlhAgAqvKtSKcHCqTQB5c=; b=F5fYb+ff9cSk1at34iAWcR9QGB
 WDnEyoiQ/GpuB330//Xw6WFCMqu29OpskcsfhNgAhwBHYC7+5sgTZ0O5Kjr0Or7+N1gIwMGW0/gTz
 PIHISys1Ph754AKHbdz+cR4Gl3MYpnsbDU4R4ZRKbq16Ld4V1J3mgKBZ48bufOaKDyfG9PdBgcpZf
 mI7mfpyX1+4ifWVbtdFa6mdzlY6uTCNqZ6dP4KxwwIZZPL0hnNYlGLu7VLHE9R+6Fk2LNar06VMMh
 TxEsaW6rFuMqnK7mbRF4Z4sVJR4MhTjfZIYhQkX2TX5KLoE1MTZj3FqPG9DmlvrCnoSpWjc+F6G5E
 t23R3YEg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liyE8-00EcHd-GS
 for barebox@lists.infradead.org; Tue, 18 May 2021 11:49:35 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liyE7-0001Gr-6R; Tue, 18 May 2021 13:49:31 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liyE6-00015A-CD; Tue, 18 May 2021 13:49:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 18 May 2021 13:49:22 +0200
Message-Id: <20210518114929.12964-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210518114929.12964-1-s.hauer@pengutronix.de>
References: <20210518114929.12964-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_044932_609565_38B893E5 
X-CRM114-Status: GOOD (  12.45  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 07/14] clk: move fixed_factor to include/linux/clk.h
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
index e68aadb923..1c0fa1f50f 100644
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

