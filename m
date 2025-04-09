Delivery-date: Wed, 09 Apr 2025 12:13:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2SQk-00AN8j-0L
	for lore@lore.pengutronix.de;
	Wed, 09 Apr 2025 12:13:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2SQi-0002SU-RS
	for lore@pengutronix.de; Wed, 09 Apr 2025 12:13:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZuPRPvEhQGC1z2PMWVkvBOITCyfPcIAW3iYnlYnizdI=; b=yGaQ4juJ4g54K2y0o4QeJtBdo3
	D4/u1Z5bj2XPa9nClURt5pBTGAdKhMTzooZAKPE4MG2lRWguc2BHqTilhIN9N1oPUt9enwhU/3crR
	NbKi9rerGoI4ukbWY5Tf2nZlCjL9D+xzUIUS13geS681hM8LZ8U92AyGMcQqWdXncstHVFEoxyG5Q
	PGFdmxcqU/TI2puRIhiKoSbsrihJA15G0tPTAFAdOHp4GH7V78rPf3f4DnWwqvxo9VZHtJ0OLDFrn
	f5ZiE5uRSiQt7BRzc9X06Fgf+voyEwsHV/ENaH8KLHR9DYi7Uv90QMzebuPCf1s8sgM4E9+gIrKk/
	W/WiZtXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2SQT-00000006nnq-2NRl;
	Wed, 09 Apr 2025 10:12:57 +0000
Received: from mail-lf1-f49.google.com ([209.85.167.49])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2RJN-00000006ehe-1GHx
	for barebox@lists.infradead.org;
	Wed, 09 Apr 2025 09:01:36 +0000
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-54b0d638e86so7848110e87.1
        for <barebox@lists.infradead.org>; Wed, 09 Apr 2025 02:01:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744189290; x=1744794090; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZuPRPvEhQGC1z2PMWVkvBOITCyfPcIAW3iYnlYnizdI=;
        b=h2wJvAeB8zGykFKYEac5hKA245ShsrNttlOpwTyRl9UQuGTTAnU6i6UcN9VjDeYNSU
         pQNnb5u/tySN3ZAyVBNv0/xQpNSzSszr9prMiMo+NjbQw1Is1ywOVOG86Nm8ojemOKBN
         06/UCbG5YDpJiDzUVDF3e1BE8fwtf/oBhNrGRcm1fPsawP+7KXsJj7PZyQtqtzMA/6cz
         /eb6Yfm5LGlDOkodXh+EparvQNUcFdHiIzFeMvYdp9pE9FP1Y8ljQ0uTncJrSrUPRBvz
         QyqJYKeHRjhOcKkNBD4eLQ3VSP2AP8FF3lploU+jvL/xhppxeQ/DlS9o+D+uDzBxEjNt
         qS5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744189290; x=1744794090;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZuPRPvEhQGC1z2PMWVkvBOITCyfPcIAW3iYnlYnizdI=;
        b=MB6TUUqQ8yOdvlUY6RQ7q8I5zoeaLEzStREPGzk1jg1H5P2VY34Z/I7Ew4v8HhA05h
         PLo0HNrQXUe2ESRBcm5nr9L1xXVaY0Z9HNcYSZdQ7TYJeqWmTcwW4hyHw/UdI0k4GGeA
         YYK4mcziNVjA+lCazLmz+wGcf4XfmCEAJvpQ7+nwBkM1bmkns7TivQsZl22BNHnzPZh0
         eBq2Ac1kn+ett4CX7EC83ArFRdY/CWQFs6mdG1nRSpjr70I5jBd/ql3/f5qKkvU0Codu
         PojqZGng6zQmG20XXjhr5+WxJHdx/tYq6I0x8gMa7suU0R1bHtrltpj15WfujRuHrbDE
         Mo3w==
X-Gm-Message-State: AOJu0YypqlU1+sLkhx1vIWSJB0rBaLYlqxgsD0VCu0iyev23O8R/8g+3
	GqJBJAh/WMiqo+rcprRO1v7guDJqct4aasj7tWJlzhUAtay1Em8GU9YCCg==
X-Gm-Gg: ASbGnctVmrq+lZLHlgY/kLd2rJO1pwl29dF4ePUyfRO0AafYmTXN9eULumi7bo9VVUB
	jG1McP9lU3RXD0ma5SeToLZoB3+YclOTaA6S6b7r0VQMP0as36dNVAibISwW0ufm5Dt3X6CAVeh
	wg+0YOKkImkdRO2nPVm4DB2zNNO+kb360yO84vRxAPVnk6hbH3PTTFMlfjDgxzldoUU49n5RlHr
	uNk5AJmEy2a8i1AlKgvixfKBdDaUXkF1pVgD76klyZyuUi4nq+Ljh6Yo+Z9n4zy9huhUMT9Hd3r
	aJMKq+iZUlxfcWSPnZq5YStswTck+n41BDX+agGGGRX4eS6YNchGQkBLO+m15k21kATDGtRGag=
	=
X-Google-Smtp-Source: AGHT+IGGrI9A2cJoRWe/LvWUWc6PmVLzBsxSiP94mSdMvKsylL4wmiISBMOOetzXC3z1scMZH+IwaA==
X-Received: by 2002:a2e:bc1a:0:b0:30c:d32:aba8 with SMTP id 38308e7fff4ca-30f45040c6dmr4777811fa.30.1744189289212;
        Wed, 09 Apr 2025 02:01:29 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30f465f779asm1015411fa.91.2025.04.09.02.01.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 02:01:28 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed,  9 Apr 2025 12:01:15 +0300
Message-Id: <20250409090117.32359-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250409_020133_347726_4709D430 
X-CRM114-Status: GOOD (  28.50  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] clk: Update clk_fractional_divider driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This patch updates the clk_fractional_divider driver code from
the Linux kernel repository and updates affected drivers that
use this code.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/clk/clk-fractional-divider.c | 186 ++++++++++++++-------------
 drivers/clk/clk-fractional-divider.h |  15 +++
 drivers/clk/rockchip/clk.c           |  22 +---
 include/linux/clk.h                  |  41 +++---
 4 files changed, 132 insertions(+), 132 deletions(-)
 create mode 100644 drivers/clk/clk-fractional-divider.h

diff --git a/drivers/clk/clk-fractional-divider.c b/drivers/clk/clk-fractional-divider.c
index d175921f64..2e6c391614 100644
--- a/drivers/clk/clk-fractional-divider.c
+++ b/drivers/clk/clk-fractional-divider.c
@@ -1,22 +1,47 @@
-// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2014 Intel Corporation
  *
  * Adjustable fractional divider clock implementation.
- * Output rate = (m / n) * parent_rate.
  * Uses rational best approximation algorithm.
+ *
+ * Output is calculated as
+ *
+ *	rate = (m / n) * parent_rate				(1)
+ *
+ * This is useful when we have a prescaler block which asks for
+ * m (numerator) and n (denominator) values to be provided to satisfy
+ * the (1) as much as possible.
+ *
+ * Since m and n have the limitation by a range, e.g.
+ *
+ *	n >= 1, n < N_width, where N_width = 2^nwidth		(2)
+ *
+ * for some cases the output may be saturated. Hence, from (1) and (2),
+ * assuming the worst case when m = 1, the inequality
+ *
+ *	floor(log2(parent_rate / rate)) <= nwidth		(3)
+ *
+ * may be derived. Thus, in cases when
+ *
+ *	(parent_rate / rate) >> N_width				(4)
+ *
+ * we might scale up the rate by 2^scale (see the description of
+ * CLK_FRAC_DIVIDER_POWER_OF_TWO_PS for additional information), where
+ *
+ *	scale = floor(log2(parent_rate / rate)) - nwidth	(5)
+ *
+ * and assume that the IP, that needs m and n, has also its own
+ * prescaler, which is capable to divide by 2^scale. In this way
+ * we get the denominator to satisfy the desired range (2) and
+ * at the same time a much better result of m and n than simple
+ * saturated values.
  */
 
 #include <common.h>
-#include <io.h>
-#include <malloc.h>
-#include <linux/clk.h>
-#include <linux/spinlock.h>
-#include <linux/err.h>
-#include <linux/gcd.h>
-#include <linux/math64.h>
 #include <linux/rational.h>
-#include <linux/barebox-wrapper.h>
+
+#include "clk-fractional-divider.h"
 
 static inline u32 clk_fd_readl(struct clk_fractional_divider *fd)
 {
@@ -34,53 +59,79 @@ static inline void clk_fd_writel(struct clk_fractional_divider *fd, u32 val)
 		writel(val, fd->reg);
 }
 
-static unsigned long clk_fd_recalc_rate(struct clk_hw *hw,
-					unsigned long parent_rate)
+static void clk_fd_get_div(struct clk_hw *hw, struct u32_fract *fract)
 {
 	struct clk_fractional_divider *fd = to_clk_fd(hw);
 	unsigned long m, n;
+	u32 mmask, nmask;
 	u32 val;
-	u64 ret;
 
 	val = clk_fd_readl(fd);
 
-	m = (val & fd->mmask) >> fd->mshift;
-	n = (val & fd->nmask) >> fd->nshift;
+	mmask = GENMASK(fd->mwidth - 1, 0) << fd->mshift;
+	nmask = GENMASK(fd->nwidth - 1, 0) << fd->nshift;
+
+	m = (val & mmask) >> fd->mshift;
+	n = (val & nmask) >> fd->nshift;
 
 	if (fd->flags & CLK_FRAC_DIVIDER_ZERO_BASED) {
 		m++;
 		n++;
 	}
 
-	if (!n || !m)
+	fract->numerator = m;
+	fract->denominator = n;
+}
+
+static unsigned long clk_fd_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
+{
+	struct u32_fract fract;
+	u64 ret;
+
+	clk_fd_get_div(hw, &fract);
+
+	if (!fract.numerator || !fract.denominator)
 		return parent_rate;
 
-	ret = (u64)parent_rate * m;
-	do_div(ret, n);
+	ret = (u64)parent_rate * fract.numerator;
+	do_div(ret, fract.denominator);
 
 	return ret;
 }
 
-static void clk_fd_general_approximation(struct clk_hw *hw, unsigned long rate,
-					 unsigned long *parent_rate,
-					 unsigned long *m, unsigned long *n)
+void clk_fractional_divider_general_approximation(struct clk_hw *hw,
+						  unsigned long rate,
+						  unsigned long *parent_rate,
+						  unsigned long *m, unsigned long *n)
 {
 	struct clk_fractional_divider *fd = to_clk_fd(hw);
-	unsigned long scale;
+	unsigned long max_m, max_n;
 
 	/*
 	 * Get rate closer to *parent_rate to guarantee there is no overflow
 	 * for m and n. In the result it will be the nearest rate left shifted
 	 * by (scale - fd->nwidth) bits.
+	 *
+	 * For the detailed explanation see the top comment in this file.
 	 */
-	scale = fls_long(*parent_rate / rate - 1);
-	if (scale > fd->nwidth)
-		rate <<= scale - fd->nwidth;
+	if (fd->flags & CLK_FRAC_DIVIDER_POWER_OF_TWO_PS) {
+		unsigned long scale = fls_long(*parent_rate / rate - 1);
+
+		if (scale > fd->nwidth)
+			rate <<= scale - fd->nwidth;
+	}
+
+	if (fd->flags & CLK_FRAC_DIVIDER_ZERO_BASED) {
+		max_m = BIT(fd->mwidth);
+		max_n = BIT(fd->nwidth);
+	} else {
+		max_m = GENMASK(fd->mwidth - 1, 0);
+		max_n = GENMASK(fd->nwidth - 1, 0);
+	}
 
-	rational_best_approximation(rate, *parent_rate,
-			GENMASK(fd->mwidth - 1, 0), GENMASK(fd->nwidth - 1, 0),
-			m, n);
+	rational_best_approximation(rate, *parent_rate, max_m, max_n, m, n);
 }
+EXPORT_SYMBOL_GPL(clk_fractional_divider_general_approximation);
 
 static long clk_fd_round_rate(struct clk_hw *hw, unsigned long rate,
 			      unsigned long *parent_rate)
@@ -96,7 +147,7 @@ static long clk_fd_round_rate(struct clk_hw *hw, unsigned long rate,
 	if (fd->approximation)
 		fd->approximation(hw, rate, parent_rate, &m, &n);
 	else
-		clk_fd_general_approximation(hw, rate, parent_rate, &m, &n);
+		clk_fractional_divider_general_approximation(hw, rate, parent_rate, &m, &n);
 
 	ret = (u64)*parent_rate * m;
 	do_div(ret, n);
@@ -108,20 +159,29 @@ static int clk_fd_set_rate(struct clk_hw *hw, unsigned long rate,
 			   unsigned long parent_rate)
 {
 	struct clk_fractional_divider *fd = to_clk_fd(hw);
-	unsigned long m, n;
+	unsigned long m, n, max_m, max_n;
+	u32 mmask, nmask;
 	u32 val;
 
-	rational_best_approximation(rate, parent_rate,
-			GENMASK(fd->mwidth - 1, 0), GENMASK(fd->nwidth - 1, 0),
-			&m, &n);
+	if (fd->flags & CLK_FRAC_DIVIDER_ZERO_BASED) {
+		max_m = BIT(fd->mwidth);
+		max_n = BIT(fd->nwidth);
+	} else {
+		max_m = GENMASK(fd->mwidth - 1, 0);
+		max_n = GENMASK(fd->nwidth - 1, 0);
+	}
+	rational_best_approximation(rate, parent_rate, max_m, max_n, &m, &n);
 
 	if (fd->flags & CLK_FRAC_DIVIDER_ZERO_BASED) {
 		m--;
 		n--;
 	}
 
+	mmask = GENMASK(fd->mwidth - 1, 0) << fd->mshift;
+	nmask = GENMASK(fd->nwidth - 1, 0) << fd->nshift;
+
 	val = clk_fd_readl(fd);
-	val &= ~(fd->mmask | fd->nmask);
+	val &= ~(mmask | nmask);
 	val |= (m << fd->mshift) | (n << fd->nshift);
 	clk_fd_writel(fd, val);
 
@@ -134,61 +194,3 @@ const struct clk_ops clk_fractional_divider_ops = {
 	.set_rate = clk_fd_set_rate,
 };
 EXPORT_SYMBOL_GPL(clk_fractional_divider_ops);
-
-struct clk *clk_fractional_divider_alloc(
-		const char *name, const char *parent_name, unsigned long flags,
-		void __iomem *reg, u8 mshift, u8 mwidth, u8 nshift, u8 nwidth,
-		u8 clk_divider_flags)
-{
-	struct clk_fractional_divider *fd;
-
-	fd = xzalloc(sizeof(*fd));
-
-	fd->reg = reg;
-	fd->mshift = mshift;
-	fd->mwidth = mwidth;
-	fd->mmask = GENMASK(mwidth - 1, 0) << mshift;
-	fd->nshift = nshift;
-	fd->nwidth = nwidth;
-	fd->nmask = GENMASK(nwidth - 1, 0) << nshift;
-	fd->flags = clk_divider_flags;
-	fd->hw.clk.name = name;
-	fd->hw.clk.ops = &clk_fractional_divider_ops;
-	fd->hw.clk.flags = flags;
-	fd->hw.clk.parent_names = parent_name ? &parent_name : NULL;
-	fd->hw.clk.num_parents = parent_name ? 1 : 0;
-
-	return &fd->hw.clk;
-}
-
-void clk_fractional_divider_free(struct clk *clk_fd)
-{
-	struct clk_fractional_divider *fd = to_clk_fd(clk_to_clk_hw(clk_fd));
-
-	free(fd);
-}
-
-struct clk *clk_fractional_divider(
-		const char *name, const char *parent_name, unsigned long flags,
-		void __iomem *reg, u8 mshift, u8 mwidth, u8 nshift, u8 nwidth,
-		u8 clk_divider_flags)
-{
-	struct clk *fd;
-	int ret;
-
-	fd = clk_fractional_divider_alloc(name, parent_name, flags,
-		reg, mshift, mwidth, nshift, nwidth,
-		clk_divider_flags);
-
-	if (IS_ERR(fd))
-		return fd;
-
-	ret = bclk_register(fd);
-	if (ret) {
-		clk_fractional_divider_free(fd);
-		return ERR_PTR(ret);
-	}
-
-	return fd;
-}
-EXPORT_SYMBOL_GPL(clk_fractional_divider);
diff --git a/drivers/clk/clk-fractional-divider.h b/drivers/clk/clk-fractional-divider.h
new file mode 100644
index 0000000000..f0f71d2379
--- /dev/null
+++ b/drivers/clk/clk-fractional-divider.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _CLK_FRACTIONAL_DIV_H
+#define _CLK_FRACTIONAL_DIV_H
+
+struct clk_hw;
+
+extern const struct clk_ops clk_fractional_divider_ops;
+
+void clk_fractional_divider_general_approximation(struct clk_hw *hw,
+						  unsigned long rate,
+						  unsigned long *parent_rate,
+						  unsigned long *m,
+						  unsigned long *n);
+
+#endif
diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index aedb02a8d3..d5ecf3fc13 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -15,15 +15,15 @@
  */
 
 #include <common.h>
-#include <malloc.h>
 #include <linux/clk.h>
 #include <linux/regmap.h>
 #include <mfd/syscon.h>
-#include <linux/spinlock.h>
 #include <linux/rational.h>
 #include <restart.h>
 #include "clk.h"
 
+#include "../clk-fractional-divider.h"
+
 /*
  * Register a clock branch.
  * Most clock branches have a form like
@@ -143,7 +143,6 @@ static void rockchip_fractional_approximation(struct clk_hw *hw,
 	struct clk_fractional_divider *fd = to_clk_fd(hw);
 	unsigned long p_rate, p_parent_rate;
 	struct clk_hw *p_parent;
-	unsigned long scale;
 
 	p_rate = clk_hw_get_rate(clk_hw_get_parent(hw));
 	if ((rate * 20 > p_rate) && (p_rate % rate != 0)) {
@@ -152,18 +151,9 @@ static void rockchip_fractional_approximation(struct clk_hw *hw,
 		*parent_rate = p_parent_rate;
 	}
 
-	/*
-	 * Get rate closer to *parent_rate to guarantee there is no overflow
-	 * for m and n. In the result it will be the nearest rate left shifted
-	 * by (scale - fd->nwidth) bits.
-	 */
-	scale = fls_long(*parent_rate / rate - 1);
-	if (scale > fd->nwidth)
-		rate <<= scale - fd->nwidth;
-
-	rational_best_approximation(rate, *parent_rate,
-			GENMASK(fd->mwidth - 1, 0), GENMASK(fd->nwidth - 1, 0),
-			m, n);
+	fd->flags |= CLK_FRAC_DIVIDER_POWER_OF_TWO_PS;
+
+	clk_fractional_divider_general_approximation(hw, rate, parent_rate, m, n);
 }
 
 static struct clk *rockchip_clk_register_frac_branch(
@@ -206,10 +196,8 @@ static struct clk *rockchip_clk_register_frac_branch(
 	div->reg = base + muxdiv_offset;
 	div->mshift = 16;
 	div->mwidth = 16;
-	div->mmask = GENMASK(div->mwidth - 1, 0) << div->mshift;
 	div->nshift = 0;
 	div->nwidth = 16;
-	div->nmask = GENMASK(div->nwidth - 1, 0) << div->nshift;
 	div->lock = lock;
 	div->approximation = rockchip_fractional_approximation;
 	div->hw.clk.ops = &clk_fractional_divider_ops;
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 733ba356dd..b10af93af4 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -547,50 +547,45 @@ struct clk_hw *clk_hw_register_fixed_factor(struct device *dev,
  * @mwidth:	width of the numerator bit field
  * @nshift:	shift to the denominator bit field
  * @nwidth:	width of the denominator bit field
+ * @approximation: clk driver's callback for calculating the divider clock
+ * @lock:	register lock
  *
  * Clock with adjustable fractional divider affecting its output frequency.
  *
- * Flags:
+ * @flags:
  * CLK_FRAC_DIVIDER_ZERO_BASED - by default the numerator and denominator
- *      is the value read from the register. If CLK_FRAC_DIVIDER_ZERO_BASED
- *      is set then the numerator and denominator are both the value read
- *      plus one.
+ *	is the value read from the register. If CLK_FRAC_DIVIDER_ZERO_BASED
+ *	is set then the numerator and denominator are both the value read
+ *	plus one.
  * CLK_FRAC_DIVIDER_BIG_ENDIAN - By default little endian register accesses are
- *      used for the divider register.  Setting this flag makes the register
- *      accesses big endian.
+ *	used for the divider register.  Setting this flag makes the register
+ *	accesses big endian.
+ * CLK_FRAC_DIVIDER_POWER_OF_TWO_PS - By default the resulting fraction might
+ *	be saturated and the caller will get quite far from the good enough
+ *	approximation. Instead the caller may require, by setting this flag,
+ *	to shift left by a few bits in case, when the asked one is quite small
+ *	to satisfy the desired range of denominator. It assumes that on the
+ *	caller's side the power-of-two capable prescaler exists.
  */
 struct clk_fractional_divider {
 	struct clk_hw	hw;
 	void __iomem	*reg;
 	u8		mshift;
 	u8		mwidth;
-	u32		mmask;
 	u8		nshift;
 	u8		nwidth;
-	u32		nmask;
 	u8		flags;
 	void		(*approximation)(struct clk_hw *hw,
 				unsigned long rate, unsigned long *parent_rate,
 				unsigned long *m, unsigned long *n);
-	spinlock_t *lock;
+	spinlock_t	*lock;
 };
 
-#define CLK_FRAC_DIVIDER_ZERO_BASED		BIT(0)
-#define CLK_FRAC_DIVIDER_BIG_ENDIAN		BIT(1)
-
-struct clk *clk_fractional_divider_alloc(
-		const char *name, const char *parent_name, unsigned long flags,
-		void __iomem *reg, u8 mshift, u8 mwidth, u8 nshift, u8 nwidth,
-		u8 clk_divider_flags);
-struct clk *clk_fractional_divider(
-		const char *name, const char *parent_name, unsigned long flags,
-		void __iomem *reg, u8 mshift, u8 mwidth, u8 nshift, u8 nwidth,
-		u8 clk_divider_flags);
-void clk_fractional_divider_free(struct clk *clk_fd);
-
 #define to_clk_fd(_hw) container_of(_hw, struct clk_fractional_divider, hw)
 
-extern const struct clk_ops clk_fractional_divider_ops;
+#define CLK_FRAC_DIVIDER_ZERO_BASED		BIT(0)
+#define CLK_FRAC_DIVIDER_BIG_ENDIAN		BIT(1)
+#define CLK_FRAC_DIVIDER_POWER_OF_TWO_PS	BIT(2)
 
 struct clk_mux {
 	struct clk_hw hw;
-- 
2.39.1



