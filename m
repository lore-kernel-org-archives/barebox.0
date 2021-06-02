Delivery-date: Wed, 02 Jun 2021 12:07:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNmm-0000pO-Gu
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 12:07:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNmg-0003Dx-AA
	for lore@pengutronix.de; Wed, 02 Jun 2021 12:07:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GA+EFwKX0sv+1N4y5BZAdyOQR44x4yhmuiYZf4wSJEE=; b=MBpnafvt9exGc4
	NFPSKAnXQs8dRXojQup3AoX3McDg8T2DSAWMs4DYv5PjccgFEUTnUjsTW353lEt3V5jhKhtZB8wW7
	kiJePRuxTrZ001b0lCYLcHMWQUK/vrh3wzM4CByWbUDxPzVt208htdoqnx7uDQUV4WQ+kVLWgraa3
	7qd3PrVzt4hkF9QwFxnMcjbacwQu58P/JnvEk/bDTyYup8+lXZCg2whDiCRJ4GDHd8mb0uw21KUpt
	k91QVIk+DT1WK5NFQN/t+zX2tiz1xCk+gd2WTZoQpXXzZGCXV1cbeh33iSVapRVVK2HYGZ0l0ujl/
	SBGJ7rF2PfMTW/qa5VeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loNko-003ADe-6U; Wed, 02 Jun 2021 10:05:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loNas-0036KS-5I
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 09:55:29 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNai-0000MF-Gt; Wed, 02 Jun 2021 11:55:12 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNag-00039j-Sy; Wed, 02 Jun 2021 11:55:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  2 Jun 2021 11:54:55 +0200
Message-Id: <20210602095507.24609-13-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210602095507.24609-1-s.hauer@pengutronix.de>
References: <20210602095507.24609-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_025522_459571_89F714F4 
X-CRM114-Status: GOOD (  19.57  )
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
Subject: [PATCH 12/24] clk: Update fractional divider from Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This updates the fractional divider implementation from Linux-5.12.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk-fractional-divider.c | 111 +++++++++++++++++++--------
 include/linux/clk.h                  |  44 +++++++++++
 2 files changed, 122 insertions(+), 33 deletions(-)

diff --git a/drivers/clk/clk-fractional-divider.c b/drivers/clk/clk-fractional-divider.c
index 65abf84b40..3d96360025 100644
--- a/drivers/clk/clk-fractional-divider.c
+++ b/drivers/clk/clk-fractional-divider.c
@@ -1,86 +1,129 @@
-// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2014 Intel Corporation
  *
  * Adjustable fractional divider clock implementation.
  * Output rate = (m / n) * parent_rate.
+ * Uses rational best approximation algorithm.
  */
 
 #include <common.h>
 #include <io.h>
 #include <malloc.h>
 #include <linux/clk.h>
+#include <linux/spinlock.h>
 #include <linux/err.h>
 #include <linux/gcd.h>
 #include <linux/math64.h>
+#include <linux/rational.h>
 #include <linux/barebox-wrapper.h>
 
-#define to_clk_fd(_hw) container_of(_hw, struct clk_fractional_divider, hw)
+static inline u32 clk_fd_readl(struct clk_fractional_divider *fd)
+{
+	if (fd->flags & CLK_FRAC_DIVIDER_BIG_ENDIAN)
+		return ioread32be(fd->reg);
 
-struct clk_fractional_divider {
-	struct clk_hw	hw;
-	void __iomem	*reg;
-	u8		mshift;
-	u32		mmask;
-	u8		nshift;
-	u32		nmask;
-	u8		flags;
-};
+	return readl(fd->reg);
+}
+
+static inline void clk_fd_writel(struct clk_fractional_divider *fd, u32 val)
+{
+	if (fd->flags & CLK_FRAC_DIVIDER_BIG_ENDIAN)
+		iowrite32be(val, fd->reg);
+	else
+		writel(val, fd->reg);
+}
 
 static unsigned long clk_fd_recalc_rate(struct clk_hw *hw,
 					unsigned long parent_rate)
 {
 	struct clk_fractional_divider *fd = to_clk_fd(hw);
-	u32 val, m, n;
+	unsigned long m, n;
+	u32 val;
 	u64 ret;
 
-	val = readl(fd->reg);
+	val = clk_fd_readl(fd);
 
 	m = (val & fd->mmask) >> fd->mshift;
 	n = (val & fd->nmask) >> fd->nshift;
 
+	if (fd->flags & CLK_FRAC_DIVIDER_ZERO_BASED) {
+		m++;
+		n++;
+	}
+
+	if (!n || !m)
+		return parent_rate;
+
 	ret = (u64)parent_rate * m;
 	do_div(ret, n);
 
 	return ret;
 }
 
+static void clk_fd_general_approximation(struct clk_hw *hw, unsigned long rate,
+					 unsigned long *parent_rate,
+					 unsigned long *m, unsigned long *n)
+{
+	struct clk_fractional_divider *fd = to_clk_fd(hw);
+	unsigned long scale;
+
+	/*
+	 * Get rate closer to *parent_rate to guarantee there is no overflow
+	 * for m and n. In the result it will be the nearest rate left shifted
+	 * by (scale - fd->nwidth) bits.
+	 */
+	scale = fls_long(*parent_rate / rate - 1);
+	if (scale > fd->nwidth)
+		rate <<= scale - fd->nwidth;
+
+	rational_best_approximation(rate, *parent_rate,
+			GENMASK(fd->mwidth - 1, 0), GENMASK(fd->nwidth - 1, 0),
+			m, n);
+}
+
 static long clk_fd_round_rate(struct clk_hw *hw, unsigned long rate,
-			      unsigned long *prate)
+			      unsigned long *parent_rate)
 {
+	struct clk *clk = clk_hw_to_clk(hw);
 	struct clk_fractional_divider *fd = to_clk_fd(hw);
-	unsigned maxn = (fd->nmask >> fd->nshift) + 1;
-	unsigned div;
+	unsigned long m, n;
+	u64 ret;
 
-	if (!rate || rate >= *prate)
-		return *prate;
+	if (!rate || (!(clk->flags & CLK_SET_RATE_PARENT) && rate >= *parent_rate))
+		return *parent_rate;
 
-	div = gcd(*prate, rate);
+	if (fd->approximation)
+		fd->approximation(hw, rate, parent_rate, &m, &n);
+	else
+		clk_fd_general_approximation(hw, rate, parent_rate, &m, &n);
 
-	while ((*prate / div) > maxn) {
-		div <<= 1;
-		rate <<= 1;
-	}
+	ret = (u64)*parent_rate * m;
+	do_div(ret, n);
 
-	return rate;
+	return ret;
 }
 
 static int clk_fd_set_rate(struct clk_hw *hw, unsigned long rate,
 			   unsigned long parent_rate)
 {
 	struct clk_fractional_divider *fd = to_clk_fd(hw);
-	unsigned long div;
-	unsigned n, m;
+	unsigned long m, n;
 	u32 val;
 
-	div = gcd(parent_rate, rate);
-	m = rate / div;
-	n = parent_rate / div;
+	rational_best_approximation(rate, parent_rate,
+			GENMASK(fd->mwidth - 1, 0), GENMASK(fd->nwidth - 1, 0),
+			&m, &n);
+
+	if (fd->flags & CLK_FRAC_DIVIDER_ZERO_BASED) {
+		m--;
+		n--;
+	}
 
-	val = readl(fd->reg);
+	val = clk_fd_readl(fd);
 	val &= ~(fd->mmask | fd->nmask);
 	val |= (m << fd->mshift) | (n << fd->nshift);
-	writel(val, fd->reg);
+	clk_fd_writel(fd, val);
 
 	return 0;
 }
@@ -103,9 +146,11 @@ struct clk *clk_fractional_divider_alloc(
 
 	fd->reg = reg;
 	fd->mshift = mshift;
-	fd->mmask = (BIT(mwidth) - 1) << mshift;
+	fd->mwidth = mwidth;
+	fd->mmask = GENMASK(mwidth - 1, 0) << mshift;
 	fd->nshift = nshift;
-	fd->nmask = (BIT(nwidth) - 1) << nshift;
+	fd->nwidth = nwidth;
+	fd->nmask = GENMASK(nwidth - 1, 0) << nshift;
 	fd->flags = clk_divider_flags;
 	fd->hw.clk.name = name;
 	fd->hw.clk.ops = &clk_fractional_divider_ops;
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 7140aa9509..39288f5025 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -498,6 +498,46 @@ extern struct clk_ops clk_fixed_factor_ops;
 struct clk *clk_fixed_factor(const char *name,
 		const char *parent, unsigned int mult, unsigned int div,
 		unsigned flags);
+
+/**
+ * struct clk_fractional_divider - adjustable fractional divider clock
+ *
+ * @hw:		handle between common and hardware-specific interfaces
+ * @reg:	register containing the divider
+ * @mshift:	shift to the numerator bit field
+ * @mwidth:	width of the numerator bit field
+ * @nshift:	shift to the denominator bit field
+ * @nwidth:	width of the denominator bit field
+ *
+ * Clock with adjustable fractional divider affecting its output frequency.
+ *
+ * Flags:
+ * CLK_FRAC_DIVIDER_ZERO_BASED - by default the numerator and denominator
+ *      is the value read from the register. If CLK_FRAC_DIVIDER_ZERO_BASED
+ *      is set then the numerator and denominator are both the value read
+ *      plus one.
+ * CLK_FRAC_DIVIDER_BIG_ENDIAN - By default little endian register accesses are
+ *      used for the divider register.  Setting this flag makes the register
+ *      accesses big endian.
+ */
+struct clk_fractional_divider {
+	struct clk_hw	hw;
+	void __iomem	*reg;
+	u8		mshift;
+	u8		mwidth;
+	u32		mmask;
+	u8		nshift;
+	u8		nwidth;
+	u32		nmask;
+	u8		flags;
+	void		(*approximation)(struct clk_hw *hw,
+				unsigned long rate, unsigned long *parent_rate,
+				unsigned long *m, unsigned long *n);
+};
+
+#define CLK_FRAC_DIVIDER_ZERO_BASED		BIT(0)
+#define CLK_FRAC_DIVIDER_BIG_ENDIAN		BIT(1)
+
 struct clk *clk_fractional_divider_alloc(
 		const char *name, const char *parent_name, unsigned long flags,
 		void __iomem *reg, u8 mshift, u8 mwidth, u8 nshift, u8 nwidth,
@@ -508,6 +548,10 @@ struct clk *clk_fractional_divider(
 		u8 clk_divider_flags);
 void clk_fractional_divider_free(struct clk *clk_fd);
 
+#define to_clk_fd(_hw) container_of(_hw, struct clk_fractional_divider, hw)
+
+extern const struct clk_ops clk_fractional_divider_ops;
+
 struct clk_mux {
 	struct clk_hw hw;
 	void __iomem *reg;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

