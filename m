Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward1l.mail.yandex.net ([2a02:6b8:0:1819::1])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YSWrP-0005xR-Tg
 for barebox@lists.infradead.org; Mon, 02 Mar 2015 20:22:45 +0000
From: Andrey Panov <rockford@yandex.ru>
Date: Mon,  2 Mar 2015 23:21:47 +0300
Message-Id: <1425327722-28232-4-git-send-email-rockford@yandex.ru>
In-Reply-To: <1425327722-28232-1-git-send-email-rockford@yandex.ru>
References: <1425327722-28232-1-git-send-email-rockford@yandex.ru>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 03/18] CLK: Add fractional divider clock support from Linux
 kernel.
To: barebox@lists.infradead.org

Arch Kconfig should select CLK_NEED_FDIV to have this support
compiled in.

Signed-off-by: Andrey Panov <rockford@yandex.ru>
---
 drivers/clk/Kconfig                  |   3 +
 drivers/clk/Makefile                 |   1 +
 drivers/clk/clk-fractional-divider.c | 156 +++++++++++++++++++++++++++++++++++
 include/linux/clk.h                  |   9 ++
 4 files changed, 169 insertions(+)
 create mode 100644 drivers/clk/clk-fractional-divider.c

diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
index 6db1f33..e82b566 100644
--- a/drivers/clk/Kconfig
+++ b/drivers/clk/Kconfig
@@ -11,6 +11,9 @@ config COMMON_CLK
 config CLK_NEED_COMPOSITE
 	bool
 
+config CLK_NEED_FDIV
+	bool
+
 config COMMON_CLK_OF_PROVIDER
 	bool
 	help
diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index bdd93f5..47c7441 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -2,6 +2,7 @@ obj-$(CONFIG_COMMON_CLK)	+= clk.o clk-fixed.o clk-divider.o clk-fixed-factor.o \
 				clk-mux.o clk-gate.o
 obj-$(CONFIG_CLKDEV_LOOKUP)	+= clkdev.o
 obj-$(CONFIG_CLK_NEED_COMPOSITE)	+= clk-composite.o
+obj-$(CONFIG_CLK_NEED_FDIV)	+= clk-fractional-divider.o
 
 obj-$(CONFIG_ARCH_MVEBU)	+= mvebu/
 obj-$(CONFIG_ARCH_MXS)		+= mxs/
diff --git a/drivers/clk/clk-fractional-divider.c b/drivers/clk/clk-fractional-divider.c
new file mode 100644
index 0000000..2f5d759
--- /dev/null
+++ b/drivers/clk/clk-fractional-divider.c
@@ -0,0 +1,156 @@
+/*
+ * Copyright (C) 2014 Intel Corporation
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * Adjustable fractional divider clock implementation.
+ * Output rate = (m / n) * parent_rate.
+ */
+
+#include <common.h>
+#include <io.h>
+#include <malloc.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <linux/gcd.h>
+#include <linux/math64.h>
+#include <linux/barebox-wrapper.h>
+
+#define to_clk_fd(_hw) container_of(_hw, struct clk_fractional_divider, clk)
+
+struct clk_fractional_divider {
+	struct clk	clk;
+	void __iomem	*reg;
+	u8		mshift;
+	u32		mmask;
+	u8		nshift;
+	u32		nmask;
+	u8		flags;
+};
+
+static unsigned long clk_fd_recalc_rate(struct clk *hw,
+					unsigned long parent_rate)
+{
+	struct clk_fractional_divider *fd = to_clk_fd(hw);
+	u32 val, m, n;
+	u64 ret;
+
+	val = readl(fd->reg);
+
+	m = (val & fd->mmask) >> fd->mshift;
+	n = (val & fd->nmask) >> fd->nshift;
+
+	ret = (u64)parent_rate * m;
+	do_div(ret, n);
+
+	return ret;
+}
+
+static long clk_fd_round_rate(struct clk *hw, unsigned long rate,
+			      unsigned long *prate)
+{
+	struct clk_fractional_divider *fd = to_clk_fd(hw);
+	unsigned maxn = (fd->nmask >> fd->nshift) + 1;
+	unsigned div;
+
+	if (!rate || rate >= *prate)
+		return *prate;
+
+	div = gcd(*prate, rate);
+
+	while ((*prate / div) > maxn) {
+		div <<= 1;
+		rate <<= 1;
+	}
+
+	return rate;
+}
+
+static int clk_fd_set_rate(struct clk *hw, unsigned long rate,
+			   unsigned long parent_rate)
+{
+	struct clk_fractional_divider *fd = to_clk_fd(hw);
+	unsigned long div;
+	unsigned n, m;
+	u32 val;
+
+	div = gcd(parent_rate, rate);
+	m = rate / div;
+	n = parent_rate / div;
+
+	val = readl(fd->reg);
+	val &= ~(fd->mmask | fd->nmask);
+	val |= (m << fd->mshift) | (n << fd->nshift);
+	writel(val, fd->reg);
+
+	return 0;
+}
+
+const struct clk_ops clk_fractional_divider_ops = {
+	.recalc_rate = clk_fd_recalc_rate,
+	.round_rate = clk_fd_round_rate,
+	.set_rate = clk_fd_set_rate,
+};
+EXPORT_SYMBOL_GPL(clk_fractional_divider_ops);
+
+struct clk *clk_fractional_divider_alloc(
+		const char *name, const char *parent_name, unsigned long flags,
+		void __iomem *reg, u8 mshift, u8 mwidth, u8 nshift, u8 nwidth,
+		u8 clk_divider_flags)
+{
+	struct clk_fractional_divider *fd;
+
+	fd = kzalloc(sizeof(*fd), GFP_KERNEL);
+	if (!fd) {
+		pr_err("could not allocate fractional divider clk %s\n", name);
+		return ERR_PTR(-ENOMEM);
+	}
+
+	fd->reg = reg;
+	fd->mshift = mshift;
+	fd->mmask = (BIT(mwidth) - 1) << mshift;
+	fd->nshift = nshift;
+	fd->nmask = (BIT(nwidth) - 1) << nshift;
+	fd->flags = clk_divider_flags;
+	fd->clk.name = name;
+	fd->clk.ops = &clk_fractional_divider_ops;
+	fd->clk.flags = flags;
+	fd->clk.parent_names = parent_name ? &parent_name : NULL;
+	fd->clk.num_parents = parent_name ? 1 : 0;
+
+	return &fd->clk;
+}
+
+void clk_fractional_divider_free(struct clk *clk_fd)
+{
+	struct clk_fractional_divider *fd = to_clk_fd(clk_fd);
+
+	free(fd);
+}
+
+struct clk *clk_fractional_divider(
+		const char *name, const char *parent_name, unsigned long flags,
+		void __iomem *reg, u8 mshift, u8 mwidth, u8 nshift, u8 nwidth,
+		u8 clk_divider_flags)
+{
+	struct clk *fd;
+	int ret;
+
+	fd = clk_fractional_divider_alloc(name, parent_name,flags,
+		reg, mshift, mwidth, nshift, nwidth,
+		clk_divider_flags);
+
+	if (IS_ERR(fd))
+		return fd;
+
+	ret = clk_register(fd);
+	if (ret){
+		clk_fractional_divider_free(fd);
+		return ERR_PTR(ret);
+	}
+
+	return fd;
+}
+EXPORT_SYMBOL_GPL(clk_register_fractional_divider);
diff --git a/include/linux/clk.h b/include/linux/clk.h
index fe8ae5c..de2d4a5 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -260,6 +260,15 @@ struct clk *clk_divider_table(const char *name,
 struct clk *clk_fixed_factor(const char *name,
 		const char *parent, unsigned int mult, unsigned int div,
 		unsigned flags);
+struct clk *clk_fractional_divider_alloc(
+		const char *name, const char *parent_name, unsigned long flags,
+		void __iomem *reg, u8 mshift, u8 mwidth, u8 nshift, u8 nwidth,
+		u8 clk_divider_flags);
+struct clk *clk_fractional_divider(
+		const char *name, const char *parent_name, unsigned long flags,
+		void __iomem *reg, u8 mshift, u8 mwidth, u8 nshift, u8 nwidth,
+		u8 clk_divider_flags);
+void clk_fractional_divider_free(struct clk *clk_fd);
 
 struct clk *clk_mux_alloc(const char *name, void __iomem *reg,
 		u8 shift, u8 width, const char **parents, u8 num_parents,
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
