Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG6TB-0000eZ-6X
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 11:05:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Sep 2012 13:04:34 +0200
Message-Id: <1348484692-24993-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1348484692-24993-1-git-send-email-s.hauer@pengutronix.de>
References: <1348484692-24993-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 05/23] ARM i.MX: initial clk support
To: barebox@lists.infradead.org

This adds the basic i.MX common clk support and some pll and pfd
drivers.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Makefile              |    1 +
 arch/arm/mach-imx/clk-pfd.c             |  148 ++++++++++++
 arch/arm/mach-imx/clk-pllv1.c           |   94 ++++++++
 arch/arm/mach-imx/clk-pllv2.c           |  164 +++++++++++++
 arch/arm/mach-imx/clk-pllv3.c           |  386 +++++++++++++++++++++++++++++++
 arch/arm/mach-imx/clk.h                 |   66 ++++++
 arch/arm/mach-imx/include/mach/clkdev.h |    7 +
 7 files changed, 866 insertions(+)
 create mode 100644 arch/arm/mach-imx/clk-pfd.c
 create mode 100644 arch/arm/mach-imx/clk-pllv1.c
 create mode 100644 arch/arm/mach-imx/clk-pllv2.c
 create mode 100644 arch/arm/mach-imx/clk-pllv3.c
 create mode 100644 arch/arm/mach-imx/clk.h
 create mode 100644 arch/arm/mach-imx/include/mach/clkdev.h

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 2b595bc..f6d487f 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -14,6 +14,7 @@ obj-$(CONFIG_IMX_IIM)	+= iim.o
 obj-$(CONFIG_NAND_IMX) += nand.o
 obj-$(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND) += external-nand-boot.o
 pbl-$(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND) += external-nand-boot.o
+obj-$(CONFIG_COMMON_CLK) += clk-pllv1.o clk-pllv2.o clk-pllv3.o clk-pfd.o
 obj-y += speed.o
 obj-y += devices.o
 obj-y += boot.o
diff --git a/arch/arm/mach-imx/clk-pfd.c b/arch/arm/mach-imx/clk-pfd.c
new file mode 100644
index 0000000..8f6d5ad
--- /dev/null
+++ b/arch/arm/mach-imx/clk-pfd.c
@@ -0,0 +1,148 @@
+/*
+ * Copyright 2012 Freescale Semiconductor, Inc.
+ * Copyright 2012 Linaro Ltd.
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <linux/clk.h>
+#include <io.h>
+#include <linux/clkdev.h>
+#include <linux/err.h>
+#include <malloc.h>
+#include <asm-generic/div64.h>
+
+#include "clk.h"
+
+/**
+ * struct clk_pfd - IMX PFD clock
+ * @clk_hw:	clock source
+ * @reg:	PFD register address
+ * @idx:	the index of PFD encoded in the register
+ *
+ * PFD clock found on i.MX6 series.  Each register for PFD has 4 clk_pfd
+ * data encoded, and member idx is used to specify the one.  And each
+ * register has SET, CLR and TOG registers at offset 0x4 0x8 and 0xc.
+ */
+struct clk_pfd {
+	struct clk	clk;
+	void __iomem	*reg;
+	u8		idx;
+	const char	*parent;
+};
+
+#define to_clk_pfd(_clk) container_of(_clk, struct clk_pfd, clk)
+
+#define SET	0x4
+#define CLR	0x8
+#define OTG	0xc
+
+static int clk_pfd_enable(struct clk *clk)
+{
+	struct clk_pfd *pfd = to_clk_pfd(clk);
+	writel(1 << ((pfd->idx + 1) * 8 - 1), pfd->reg + CLR);
+
+	return 0;
+}
+
+static void clk_pfd_disable(struct clk *clk)
+{
+	struct clk_pfd *pfd = to_clk_pfd(clk);
+
+	writel(1 << ((pfd->idx + 1) * 8 - 1), pfd->reg + SET);
+}
+
+static unsigned long clk_pfd_recalc_rate(struct clk *clk,
+					 unsigned long parent_rate)
+{
+	struct clk_pfd *pfd = to_clk_pfd(clk);
+	u64 tmp = parent_rate;
+	u8 frac = (readl(pfd->reg) >> (pfd->idx * 8)) & 0x3f;
+
+	tmp *= 18;
+	do_div(tmp, frac);
+
+	return tmp;
+}
+
+static long clk_pfd_round_rate(struct clk *clk, unsigned long rate,
+			       unsigned long *prate)
+{
+	u64 tmp = *prate;
+	u8 frac;
+
+	tmp = tmp * 18 + rate / 2;
+	do_div(tmp, rate);
+	frac = tmp;
+	if (frac < 12)
+		frac = 12;
+	else if (frac > 35)
+		frac = 35;
+	tmp = *prate;
+	tmp *= 18;
+	do_div(tmp, frac);
+
+	return tmp;
+}
+
+static int clk_pfd_set_rate(struct clk *clk, unsigned long rate,
+		unsigned long parent_rate)
+{
+	struct clk_pfd *pfd = to_clk_pfd(clk);
+	u64 tmp = parent_rate;
+	u8 frac;
+
+	tmp = tmp * 18 + rate / 2;
+	do_div(tmp, rate);
+	frac = tmp;
+	if (frac < 12)
+		frac = 12;
+	else if (frac > 35)
+		frac = 35;
+
+	writel(0x3f << (pfd->idx * 8), pfd->reg + CLR);
+	writel(frac << (pfd->idx * 8), pfd->reg + SET);
+
+	return 0;
+}
+
+static const struct clk_ops clk_pfd_ops = {
+	.enable		= clk_pfd_enable,
+	.disable	= clk_pfd_disable,
+	.recalc_rate	= clk_pfd_recalc_rate,
+	.round_rate	= clk_pfd_round_rate,
+	.set_rate	= clk_pfd_set_rate,
+};
+
+struct clk *imx_clk_pfd(const char *name, const char *parent,
+			void __iomem *reg, u8 idx)
+{
+	struct clk_pfd *pfd;
+	int ret;
+
+	pfd = xzalloc(sizeof(*pfd));
+
+	pfd->reg = reg;
+	pfd->idx = idx;
+	pfd->parent = parent;
+	pfd->clk.name = name;
+	pfd->clk.ops = &clk_pfd_ops;
+	pfd->clk.parent_names = &pfd->parent;
+	pfd->clk.num_parents = 1;
+
+	ret = clk_register(&pfd->clk);
+	if (ret) {
+		free(pfd);
+		return ERR_PTR(ret);
+	}
+
+	return &pfd->clk;
+}
diff --git a/arch/arm/mach-imx/clk-pllv1.c b/arch/arm/mach-imx/clk-pllv1.c
new file mode 100644
index 0000000..6785da0
--- /dev/null
+++ b/arch/arm/mach-imx/clk-pllv1.c
@@ -0,0 +1,94 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <linux/clk.h>
+#include <io.h>
+#include <linux/clkdev.h>
+#include <linux/err.h>
+#include <malloc.h>
+#include <asm-generic/div64.h>
+
+#include "clk.h"
+
+struct clk_pllv1 {
+	struct clk clk;
+	void __iomem *reg;
+	const char *parent;
+};
+
+static unsigned long clk_pllv1_recalc_rate(struct clk *clk,
+		unsigned long parent_rate)
+{
+	struct clk_pllv1 *pll = container_of(clk, struct clk_pllv1, clk);
+	unsigned long long ll;
+	int mfn_abs;
+	unsigned int mfi, mfn, mfd, pd;
+	u32 reg_val = readl(pll->reg);
+	unsigned long freq = parent_rate;
+
+	mfi = (reg_val >> 10) & 0xf;
+	mfn = reg_val & 0x3ff;
+	mfd = (reg_val >> 16) & 0x3ff;
+	pd =  (reg_val >> 26) & 0xf;
+
+	mfi = mfi <= 5 ? 5 : mfi;
+
+	mfn_abs = mfn;
+
+#if !defined CONFIG_ARCH_MX1 && !defined CONFIG_ARCH_MX21
+	if (mfn >= 0x200) {
+		mfn |= 0xFFFFFE00;
+		mfn_abs = -mfn;
+	}
+#endif
+
+	freq *= 2;
+	freq /= pd + 1;
+
+	ll = (unsigned long long)freq * mfn_abs;
+
+	do_div(ll, mfd + 1);
+	if (mfn < 0)
+		ll = -ll;
+	ll = (freq * mfi) + ll;
+
+	return ll;
+}
+
+struct clk_ops clk_pllv1_ops = {
+	.recalc_rate = clk_pllv1_recalc_rate,
+};
+
+struct clk *imx_clk_pllv1(const char *name, const char *parent,
+		void __iomem *base)
+{
+	struct clk_pllv1 *pll = xzalloc(sizeof(*pll));
+	int ret;
+
+	pll->parent = parent;
+	pll->reg = base;
+	pll->clk.ops = &clk_pllv1_ops;
+	pll->clk.name = name;
+	pll->clk.parent_names = &pll->parent;
+	pll->clk.num_parents = 1;
+
+	ret = clk_register(&pll->clk);
+	if (ret) {
+		free(pll);
+		return ERR_PTR(ret);
+	}
+
+	return &pll->clk;
+}
diff --git a/arch/arm/mach-imx/clk-pllv2.c b/arch/arm/mach-imx/clk-pllv2.c
new file mode 100644
index 0000000..6907269
--- /dev/null
+++ b/arch/arm/mach-imx/clk-pllv2.c
@@ -0,0 +1,164 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <linux/clk.h>
+#include <io.h>
+#include <linux/clkdev.h>
+#include <linux/err.h>
+#include <mach/imx-regs.h>
+#include <malloc.h>
+#include <asm-generic/div64.h>
+
+#include "clk.h"
+
+/* PLL Register Offsets */
+#define MXC_PLL_DP_CTL			0x00
+#define MXC_PLL_DP_CONFIG		0x04
+#define MXC_PLL_DP_OP			0x08
+#define MXC_PLL_DP_MFD			0x0C
+#define MXC_PLL_DP_MFN			0x10
+#define MXC_PLL_DP_MFNMINUS		0x14
+#define MXC_PLL_DP_MFNPLUS		0x18
+#define MXC_PLL_DP_HFS_OP		0x1C
+#define MXC_PLL_DP_HFS_MFD		0x20
+#define MXC_PLL_DP_HFS_MFN		0x24
+#define MXC_PLL_DP_MFN_TOGC		0x28
+#define MXC_PLL_DP_DESTAT		0x2c
+
+/* PLL Register Bit definitions */
+#define MXC_PLL_DP_CTL_MUL_CTRL		0x2000
+#define MXC_PLL_DP_CTL_DPDCK0_2_EN	0x1000
+#define MXC_PLL_DP_CTL_DPDCK0_2_OFFSET	12
+#define MXC_PLL_DP_CTL_ADE		0x800
+#define MXC_PLL_DP_CTL_REF_CLK_DIV	0x400
+#define MXC_PLL_DP_CTL_REF_CLK_SEL_MASK	(3 << 8)
+#define MXC_PLL_DP_CTL_REF_CLK_SEL_OFFSET	8
+#define MXC_PLL_DP_CTL_HFSM		0x80
+#define MXC_PLL_DP_CTL_PRE		0x40
+#define MXC_PLL_DP_CTL_UPEN		0x20
+#define MXC_PLL_DP_CTL_RST		0x10
+#define MXC_PLL_DP_CTL_RCP		0x8
+#define MXC_PLL_DP_CTL_PLM		0x4
+#define MXC_PLL_DP_CTL_BRM0		0x2
+#define MXC_PLL_DP_CTL_LRF		0x1
+
+#define MXC_PLL_DP_CONFIG_BIST		0x8
+#define MXC_PLL_DP_CONFIG_SJC_CE	0x4
+#define MXC_PLL_DP_CONFIG_AREN		0x2
+#define MXC_PLL_DP_CONFIG_LDREQ		0x1
+
+#define MXC_PLL_DP_OP_MFI_OFFSET	4
+#define MXC_PLL_DP_OP_MFI_MASK		(0xF << 4)
+#define MXC_PLL_DP_OP_PDF_OFFSET	0
+#define MXC_PLL_DP_OP_PDF_MASK		0xF
+
+#define MXC_PLL_DP_MFD_OFFSET		0
+#define MXC_PLL_DP_MFD_MASK		0x07FFFFFF
+
+#define MXC_PLL_DP_MFN_OFFSET		0x0
+#define MXC_PLL_DP_MFN_MASK		0x07FFFFFF
+
+#define MXC_PLL_DP_MFN_TOGC_TOG_DIS	(1 << 17)
+#define MXC_PLL_DP_MFN_TOGC_TOG_EN	(1 << 16)
+#define MXC_PLL_DP_MFN_TOGC_CNT_OFFSET	0x0
+#define MXC_PLL_DP_MFN_TOGC_CNT_MASK	0xFFFF
+
+#define MXC_PLL_DP_DESTAT_TOG_SEL	(1 << 31)
+#define MXC_PLL_DP_DESTAT_MFN		0x07FFFFFF
+
+#define MAX_DPLL_WAIT_TRIES	1000 /* 1000 * udelay(1) = 1ms */
+
+struct clk_pllv2 {
+	struct clk clk;
+	void __iomem *reg;
+	const char *parent;
+};
+
+static unsigned long __clk_pllv2_recalc_rate(unsigned long parent_rate,
+		u32 dp_ctl, u32 dp_op, u32 dp_mfd, u32 dp_mfn)
+{
+	long mfi, mfn, mfd, pdf, ref_clk, mfn_abs;
+	unsigned long dbl;
+	uint64_t temp;
+
+	dbl = dp_ctl & MXC_PLL_DP_CTL_DPDCK0_2_EN;
+
+	pdf = dp_op & MXC_PLL_DP_OP_PDF_MASK;
+	mfi = (dp_op & MXC_PLL_DP_OP_MFI_MASK) >> MXC_PLL_DP_OP_MFI_OFFSET;
+	mfi = (mfi <= 5) ? 5 : mfi;
+	mfd = dp_mfd & MXC_PLL_DP_MFD_MASK;
+	mfn = mfn_abs = dp_mfn & MXC_PLL_DP_MFN_MASK;
+	/* Sign extend to 32-bits */
+	if (mfn >= 0x04000000) {
+		mfn |= 0xFC000000;
+		mfn_abs = -mfn;
+	}
+
+	ref_clk = 2 * parent_rate;
+	if (dbl != 0)
+		ref_clk *= 2;
+
+	ref_clk /= (pdf + 1);
+	temp = (u64) ref_clk * mfn_abs;
+	do_div(temp, mfd + 1);
+	if (mfn < 0)
+		temp = -temp;
+	temp = (ref_clk * mfi) + temp;
+
+	return temp;
+}
+
+static unsigned long clk_pllv2_recalc_rate(struct clk *clk,
+		unsigned long parent_rate)
+{
+	u32 dp_op, dp_mfd, dp_mfn, dp_ctl;
+	void __iomem *pllbase;
+	struct clk_pllv2 *pll = container_of(clk, struct clk_pllv2, clk);
+
+	pllbase = pll->reg;
+
+	dp_ctl = __raw_readl(pllbase + MXC_PLL_DP_CTL);
+	dp_op = __raw_readl(pllbase + MXC_PLL_DP_OP);
+	dp_mfd = __raw_readl(pllbase + MXC_PLL_DP_MFD);
+	dp_mfn = __raw_readl(pllbase + MXC_PLL_DP_MFN);
+
+	return __clk_pllv2_recalc_rate(parent_rate, dp_ctl, dp_op, dp_mfd, dp_mfn);
+}
+
+struct clk_ops clk_pllv2_ops = {
+	.recalc_rate = clk_pllv2_recalc_rate,
+};
+
+struct clk *imx_clk_pllv2(const char *name, const char *parent,
+		void __iomem *base)
+{
+	struct clk_pllv2 *pll = xzalloc(sizeof(*pll));
+	int ret;
+
+	pll->parent = parent;
+	pll->reg = base;
+	pll->clk.ops = &clk_pllv2_ops;
+	pll->clk.name = name;
+	pll->clk.parent_names = &pll->parent;
+	pll->clk.num_parents = 1;
+
+	ret = clk_register(&pll->clk);
+	if (ret) {
+		free(pll);
+		return ERR_PTR(ret);
+	}
+
+	return &pll->clk;
+}
diff --git a/arch/arm/mach-imx/clk-pllv3.c b/arch/arm/mach-imx/clk-pllv3.c
new file mode 100644
index 0000000..a99eec5
--- /dev/null
+++ b/arch/arm/mach-imx/clk-pllv3.c
@@ -0,0 +1,386 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <linux/clk.h>
+#include <io.h>
+#include <linux/clkdev.h>
+#include <linux/err.h>
+#include <mach/imx-regs.h>
+#include <malloc.h>
+#include <clock.h>
+#include <asm-generic/div64.h>
+
+#include "clk.h"
+
+#define PLL_NUM_OFFSET		0x10
+#define PLL_DENOM_OFFSET	0x20
+
+#define BM_PLL_POWER		(0x1 << 12)
+#define BM_PLL_ENABLE		(0x1 << 13)
+#define BM_PLL_BYPASS		(0x1 << 16)
+#define BM_PLL_LOCK		(0x1 << 31)
+
+struct clk_pllv3 {
+	struct clk	clk;
+	void __iomem	*base;
+	bool		powerup_set;
+	u32		gate_mask;
+	u32		div_mask;
+	const char	*parent;
+};
+
+#define to_clk_pllv3(_clk) container_of(_clk, struct clk_pllv3, clk)
+
+static int clk_pllv3_enable(struct clk *clk)
+{
+	struct clk_pllv3 *pll = to_clk_pllv3(clk);
+	u32 val;
+	int ret;
+
+	val = readl(pll->base);
+	val &= ~BM_PLL_BYPASS;
+	if (pll->powerup_set)
+		val |= BM_PLL_POWER;
+	else
+		val &= ~BM_PLL_POWER;
+	writel(val, pll->base);
+
+	/* Wait for PLL to lock */
+	ret = wait_on_timeout(10 * MSECOND, !(readl(pll->base) & BM_PLL_LOCK));
+	if (ret)
+		return ret;
+
+	val = readl(pll->base);
+	val |= pll->gate_mask;
+	writel(val, pll->base);
+
+	return 0;
+}
+
+static void clk_pllv3_disable(struct clk *clk)
+{
+	struct clk_pllv3 *pll = to_clk_pllv3(clk);
+	u32 val;
+
+	val = readl(pll->base);
+	val &= ~pll->gate_mask;
+	writel(val, pll->base);
+
+	val |= BM_PLL_BYPASS;
+	if (pll->powerup_set)
+		val &= ~BM_PLL_POWER;
+	else
+		val |= BM_PLL_POWER;
+	writel(val, pll->base);
+}
+
+static unsigned long clk_pllv3_recalc_rate(struct clk *clk,
+					   unsigned long parent_rate)
+{
+	struct clk_pllv3 *pll = to_clk_pllv3(clk);
+	u32 div = readl(pll->base)  & pll->div_mask;
+
+	return (div == 1) ? parent_rate * 22 : parent_rate * 20;
+}
+
+static long clk_pllv3_round_rate(struct clk *clk, unsigned long rate,
+				 unsigned long *prate)
+{
+	unsigned long parent_rate = *prate;
+
+	return (rate >= parent_rate * 22) ? parent_rate * 22 :
+					    parent_rate * 20;
+}
+
+static int clk_pllv3_set_rate(struct clk *clk, unsigned long rate,
+		unsigned long parent_rate)
+{
+	struct clk_pllv3 *pll = to_clk_pllv3(clk);
+	u32 val, div;
+
+	if (rate == parent_rate * 22)
+		div = 1;
+	else if (rate == parent_rate * 20)
+		div = 0;
+	else
+		return -EINVAL;
+
+	val = readl(pll->base);
+	val &= ~pll->div_mask;
+	val |= div;
+	writel(val, pll->base);
+
+	return 0;
+}
+
+static const struct clk_ops clk_pllv3_ops = {
+	.enable		= clk_pllv3_enable,
+	.disable	= clk_pllv3_disable,
+	.recalc_rate	= clk_pllv3_recalc_rate,
+	.round_rate	= clk_pllv3_round_rate,
+	.set_rate	= clk_pllv3_set_rate,
+};
+
+static unsigned long clk_pllv3_sys_recalc_rate(struct clk *clk,
+					       unsigned long parent_rate)
+{
+	struct clk_pllv3 *pll = to_clk_pllv3(clk);
+	u32 div = readl(pll->base) & pll->div_mask;
+
+	return parent_rate * div / 2;
+}
+
+static long clk_pllv3_sys_round_rate(struct clk *clk, unsigned long rate,
+				     unsigned long *prate)
+{
+	unsigned long parent_rate = *prate;
+	unsigned long min_rate = parent_rate * 54 / 2;
+	unsigned long max_rate = parent_rate * 108 / 2;
+	u32 div;
+
+	if (rate > max_rate)
+		rate = max_rate;
+	else if (rate < min_rate)
+		rate = min_rate;
+	div = rate * 2 / parent_rate;
+
+	return parent_rate * div / 2;
+}
+
+static int clk_pllv3_sys_set_rate(struct clk *clk, unsigned long rate,
+		unsigned long parent_rate)
+{
+	struct clk_pllv3 *pll = to_clk_pllv3(clk);
+	unsigned long min_rate = parent_rate * 54 / 2;
+	unsigned long max_rate = parent_rate * 108 / 2;
+	u32 val, div;
+
+	if (rate < min_rate || rate > max_rate)
+		return -EINVAL;
+
+	div = rate * 2 / parent_rate;
+	val = readl(pll->base);
+	val &= ~pll->div_mask;
+	val |= div;
+	writel(val, pll->base);
+
+	return 0;
+}
+
+static const struct clk_ops clk_pllv3_sys_ops = {
+	.enable		= clk_pllv3_enable,
+	.disable	= clk_pllv3_disable,
+	.recalc_rate	= clk_pllv3_sys_recalc_rate,
+	.round_rate	= clk_pllv3_sys_round_rate,
+	.set_rate	= clk_pllv3_sys_set_rate,
+};
+
+static unsigned long clk_pllv3_av_recalc_rate(struct clk *clk,
+					      unsigned long parent_rate)
+{
+	struct clk_pllv3 *pll = to_clk_pllv3(clk);
+	u32 mfn = readl(pll->base + PLL_NUM_OFFSET);
+	u32 mfd = readl(pll->base + PLL_DENOM_OFFSET);
+	u32 div = readl(pll->base) & pll->div_mask;
+
+	return (parent_rate * div) + ((parent_rate / mfd) * mfn);
+}
+
+static long clk_pllv3_av_round_rate(struct clk *clk, unsigned long rate,
+				    unsigned long *prate)
+{
+	unsigned long parent_rate = *prate;
+	unsigned long min_rate = parent_rate * 27;
+	unsigned long max_rate = parent_rate * 54;
+	u32 div;
+	u32 mfn, mfd = 1000000;
+	u64 temp64;
+
+	if (rate > max_rate)
+		rate = max_rate;
+	else if (rate < min_rate)
+		rate = min_rate;
+
+	div = rate / parent_rate;
+	temp64 = (u64) (rate - div * parent_rate);
+	temp64 *= mfd;
+	do_div(temp64, parent_rate);
+	mfn = temp64;
+
+	return parent_rate * div + parent_rate / mfd * mfn;
+}
+
+static int clk_pllv3_av_set_rate(struct clk *clk, unsigned long rate,
+		unsigned long parent_rate)
+{
+	struct clk_pllv3 *pll = to_clk_pllv3(clk);
+	unsigned long min_rate = parent_rate * 27;
+	unsigned long max_rate = parent_rate * 54;
+	u32 val, div;
+	u32 mfn, mfd = 1000000;
+	u64 temp64;
+
+	if (rate < min_rate || rate > max_rate)
+		return -EINVAL;
+
+	div = rate / parent_rate;
+	temp64 = (u64) (rate - div * parent_rate);
+	temp64 *= mfd;
+	do_div(temp64, parent_rate);
+	mfn = temp64;
+
+	val = readl(pll->base);
+	val &= ~pll->div_mask;
+	val |= div;
+	writel(val, pll->base);
+	writel(mfn, pll->base + PLL_NUM_OFFSET);
+	writel(mfd, pll->base + PLL_DENOM_OFFSET);
+
+	return 0;
+}
+
+static const struct clk_ops clk_pllv3_av_ops = {
+	.enable		= clk_pllv3_enable,
+	.disable	= clk_pllv3_disable,
+	.recalc_rate	= clk_pllv3_av_recalc_rate,
+	.round_rate	= clk_pllv3_av_round_rate,
+	.set_rate	= clk_pllv3_av_set_rate,
+};
+
+static unsigned long clk_pllv3_enet_recalc_rate(struct clk *clk,
+						unsigned long parent_rate)
+{
+	struct clk_pllv3 *pll = to_clk_pllv3(clk);
+	u32 div = readl(pll->base) & pll->div_mask;
+
+	switch (div) {
+	case 0:
+		return 25000000;
+	case 1:
+		return 50000000;
+	case 2:
+		return 100000000;
+	case 3:
+		return 125000000;
+	}
+
+	return 0;
+}
+
+static long clk_pllv3_enet_round_rate(struct clk *clk, unsigned long rate,
+				      unsigned long *prate)
+{
+	if (rate >= 125000000)
+		rate = 125000000;
+	else if (rate >= 100000000)
+		rate = 100000000;
+	else if (rate >= 50000000)
+		rate = 50000000;
+	else
+		rate = 25000000;
+	return rate;
+}
+
+static int clk_pllv3_enet_set_rate(struct clk *clk, unsigned long rate,
+		unsigned long parent_rate)
+{
+	struct clk_pllv3 *pll = to_clk_pllv3(clk);
+	u32 val, div;
+
+	switch (rate) {
+	case 25000000:
+		div = 0;
+		break;
+	case 50000000:
+		div = 1;
+		break;
+	case 100000000:
+		div = 2;
+		break;
+	case 125000000:
+		div = 3;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	val = readl(pll->base);
+	val &= ~pll->div_mask;
+	val |= div;
+	writel(val, pll->base);
+
+	return 0;
+}
+
+static const struct clk_ops clk_pllv3_enet_ops = {
+	.enable		= clk_pllv3_enable,
+	.disable	= clk_pllv3_disable,
+	.recalc_rate	= clk_pllv3_enet_recalc_rate,
+	.round_rate	= clk_pllv3_enet_round_rate,
+	.set_rate	= clk_pllv3_enet_set_rate,
+};
+
+static const struct clk_ops clk_pllv3_mlb_ops = {
+	.enable		= clk_pllv3_enable,
+	.disable	= clk_pllv3_disable,
+};
+
+struct clk *imx_clk_pllv3(enum imx_pllv3_type type, const char *name,
+			  const char *parent, void __iomem *base,
+			  u32 gate_mask, u32 div_mask)
+{
+	struct clk_pllv3 *pll;
+	const struct clk_ops *ops;
+	int ret;
+
+	pll = xzalloc(sizeof(*pll));
+
+	switch (type) {
+	case IMX_PLLV3_SYS:
+		ops = &clk_pllv3_sys_ops;
+		break;
+	case IMX_PLLV3_USB:
+		ops = &clk_pllv3_ops;
+		pll->powerup_set = true;
+		break;
+	case IMX_PLLV3_AV:
+		ops = &clk_pllv3_av_ops;
+		break;
+	case IMX_PLLV3_ENET:
+		ops = &clk_pllv3_enet_ops;
+		break;
+	case IMX_PLLV3_MLB:
+		ops = &clk_pllv3_mlb_ops;
+		break;
+	default:
+		ops = &clk_pllv3_ops;
+	}
+	pll->base = base;
+	pll->gate_mask = gate_mask;
+	pll->div_mask = div_mask;
+	pll->parent = parent;
+	pll->clk.ops = ops;
+	pll->clk.name = name;
+	pll->clk.parent_names = &pll->parent;
+	pll->clk.num_parents = 1;
+
+	ret = clk_register(&pll->clk);
+	if (ret) {
+		free(pll);
+		return ERR_PTR(ret);
+	}
+
+	return &pll->clk;
+}
diff --git a/arch/arm/mach-imx/clk.h b/arch/arm/mach-imx/clk.h
new file mode 100644
index 0000000..5024a25
--- /dev/null
+++ b/arch/arm/mach-imx/clk.h
@@ -0,0 +1,66 @@
+#ifndef __IMX_CLK_H
+#define __IMX_CLK_H
+
+static inline struct clk *imx_clk_divider(const char *name, const char *parent,
+		void __iomem *reg, u8 shift, u8 width)
+{
+	return clk_divider(name, parent, reg, shift, width);
+}
+
+static inline struct clk *imx_clk_fixed_factor(const char *name,
+		const char *parent, unsigned int mult, unsigned int div)
+{
+	return clk_fixed_factor(name, parent, mult, div);
+}
+
+static inline struct clk *imx_clk_mux(const char *name, void __iomem *reg,
+		u8 shift, u8 width, const char **parents, int num_parents)
+{
+	return clk_mux(name, reg, shift, width, parents, num_parents);
+}
+
+struct clk *imx_clk_pllv1(const char *name, const char *parent,
+		void __iomem *base);
+
+struct clk *imx_clk_pllv2(const char *name, const char *parent,
+		void __iomem *base);
+
+enum imx_pllv3_type {
+	IMX_PLLV3_GENERIC,
+	IMX_PLLV3_SYS,
+	IMX_PLLV3_USB,
+	IMX_PLLV3_AV,
+	IMX_PLLV3_ENET,
+	IMX_PLLV3_MLB,
+};
+
+struct clk *imx_clk_pllv3(enum imx_pllv3_type type, const char *name,
+			  const char *parent, void __iomem *base,
+			  u32 gate_mask, u32 div_mask);
+
+struct clk *imx_clk_pfd(const char *name, const char *parent,
+			void __iomem *reg, u8 idx);
+
+static inline struct clk *imx_clk_busy_divider(const char *name, const char *parent,
+				 void __iomem *reg, u8 shift, u8 width,
+				 void __iomem *busy_reg, u8 busy_shift)
+{
+	/*
+	 * For now we do not support rate setting, so just fall back to
+	 * regular divider.
+	 */
+	return imx_clk_divider(name, parent, reg, shift, width);
+}
+
+static inline struct clk *imx_clk_busy_mux(const char *name, void __iomem *reg, u8 shift,
+			     u8 width, void __iomem *busy_reg, u8 busy_shift,
+			     const char **parents, int num_parents)
+{
+	/*
+	 * For now we do not support mux switching, so just fall back to
+	 * regular mux.
+	 */
+	return imx_clk_mux(name, reg, shift, width, parents, num_parents);
+}
+
+#endif /* __IMX_CLK_H */
diff --git a/arch/arm/mach-imx/include/mach/clkdev.h b/arch/arm/mach-imx/include/mach/clkdev.h
new file mode 100644
index 0000000..04b37a8
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/clkdev.h
@@ -0,0 +1,7 @@
+#ifndef __ASM_MACH_CLKDEV_H
+#define __ASM_MACH_CLKDEV_H
+
+#define __clk_get(clk) ({ 1; })
+#define __clk_put(clk) do { } while (0)
+
+#endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
