Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c4VWo-0005Fb-5W
 for barebox@lists.infradead.org; Wed, 09 Nov 2016 16:17:10 +0000
Received: by mail-pf0-x244.google.com with SMTP id i88so781360pfk.2
 for <barebox@lists.infradead.org>; Wed, 09 Nov 2016 08:14:52 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  9 Nov 2016 08:13:58 -0800
Message-Id: <1478708056-7875-11-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1478708056-7875-1-git-send-email-andrew.smirnov@gmail.com>
References: <1478708056-7875-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 10/28] i.MX: Move clk code from 'mach-imx' to 'drivers'
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Move clk code from 'mach-imx' to 'drivers' to keep the code tree
structure closer to that of analogous one from Linux kernel and,
arguably although subjective, to keep 'mach-imx' less cluttered.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/Makefile             |  23 +-
 arch/arm/mach-imx/clk-gate-exclusive.c | 103 -------
 arch/arm/mach-imx/clk-gate2.c          | 145 ---------
 arch/arm/mach-imx/clk-imx1.c           | 121 --------
 arch/arm/mach-imx/clk-imx21.c          | 196 ------------
 arch/arm/mach-imx/clk-imx25.c          | 200 ------------
 arch/arm/mach-imx/clk-imx27.c          | 270 ----------------
 arch/arm/mach-imx/clk-imx31.c          | 146 ---------
 arch/arm/mach-imx/clk-imx35.c          | 219 -------------
 arch/arm/mach-imx/clk-imx5.c           | 533 --------------------------------
 arch/arm/mach-imx/clk-imx6.c           | 541 ---------------------------------
 arch/arm/mach-imx/clk-imx6sx.c         | 483 -----------------------------
 arch/arm/mach-imx/clk-pfd.c            | 148 ---------
 arch/arm/mach-imx/clk-pllv1.c          |  95 ------
 arch/arm/mach-imx/clk-pllv2.c          | 230 --------------
 arch/arm/mach-imx/clk-pllv3.c          | 326 --------------------
 arch/arm/mach-imx/clk.h                | 104 -------
 drivers/clk/Makefile                   |   1 +
 drivers/clk/imx/Makefile               |  21 ++
 drivers/clk/imx/clk-gate-exclusive.c   | 103 +++++++
 drivers/clk/imx/clk-gate2.c            | 145 +++++++++
 drivers/clk/imx/clk-imx1.c             | 121 ++++++++
 drivers/clk/imx/clk-imx21.c            | 196 ++++++++++++
 drivers/clk/imx/clk-imx25.c            | 200 ++++++++++++
 drivers/clk/imx/clk-imx27.c            | 270 ++++++++++++++++
 drivers/clk/imx/clk-imx31.c            | 146 +++++++++
 drivers/clk/imx/clk-imx35.c            | 219 +++++++++++++
 drivers/clk/imx/clk-imx5.c             | 533 ++++++++++++++++++++++++++++++++
 drivers/clk/imx/clk-imx6.c             | 541 +++++++++++++++++++++++++++++++++
 drivers/clk/imx/clk-imx6sx.c           | 483 +++++++++++++++++++++++++++++
 drivers/clk/imx/clk-pfd.c              | 148 +++++++++
 drivers/clk/imx/clk-pllv1.c            |  95 ++++++
 drivers/clk/imx/clk-pllv2.c            | 230 ++++++++++++++
 drivers/clk/imx/clk-pllv3.c            | 326 ++++++++++++++++++++
 drivers/clk/imx/clk.h                  | 104 +++++++
 35 files changed, 3893 insertions(+), 3872 deletions(-)
 delete mode 100644 arch/arm/mach-imx/clk-gate-exclusive.c
 delete mode 100644 arch/arm/mach-imx/clk-gate2.c
 delete mode 100644 arch/arm/mach-imx/clk-imx1.c
 delete mode 100644 arch/arm/mach-imx/clk-imx21.c
 delete mode 100644 arch/arm/mach-imx/clk-imx25.c
 delete mode 100644 arch/arm/mach-imx/clk-imx27.c
 delete mode 100644 arch/arm/mach-imx/clk-imx31.c
 delete mode 100644 arch/arm/mach-imx/clk-imx35.c
 delete mode 100644 arch/arm/mach-imx/clk-imx5.c
 delete mode 100644 arch/arm/mach-imx/clk-imx6.c
 delete mode 100644 arch/arm/mach-imx/clk-imx6sx.c
 delete mode 100644 arch/arm/mach-imx/clk-pfd.c
 delete mode 100644 arch/arm/mach-imx/clk-pllv1.c
 delete mode 100644 arch/arm/mach-imx/clk-pllv2.c
 delete mode 100644 arch/arm/mach-imx/clk-pllv3.c
 delete mode 100644 arch/arm/mach-imx/clk.h
 create mode 100644 drivers/clk/imx/Makefile
 create mode 100644 drivers/clk/imx/clk-gate-exclusive.c
 create mode 100644 drivers/clk/imx/clk-gate2.c
 create mode 100644 drivers/clk/imx/clk-imx1.c
 create mode 100644 drivers/clk/imx/clk-imx21.c
 create mode 100644 drivers/clk/imx/clk-imx25.c
 create mode 100644 drivers/clk/imx/clk-imx27.c
 create mode 100644 drivers/clk/imx/clk-imx31.c
 create mode 100644 drivers/clk/imx/clk-imx35.c
 create mode 100644 drivers/clk/imx/clk-imx5.c
 create mode 100644 drivers/clk/imx/clk-imx6.c
 create mode 100644 drivers/clk/imx/clk-imx6sx.c
 create mode 100644 drivers/clk/imx/clk-pfd.c
 create mode 100644 drivers/clk/imx/clk-pllv1.c
 create mode 100644 drivers/clk/imx/clk-pllv2.c
 create mode 100644 drivers/clk/imx/clk-pllv3.c
 create mode 100644 drivers/clk/imx/clk.h

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index a216c9b..e426f2c 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -1,25 +1,24 @@
 obj-y += clocksource.o
-obj-$(CONFIG_ARCH_IMX1)  += imx1.o clk-imx1.o
-obj-$(CONFIG_ARCH_IMX25) += imx25.o clk-imx25.o
-obj-$(CONFIG_ARCH_IMX21) += imx21.o clk-imx21.o
-obj-$(CONFIG_ARCH_IMX27) += imx27.o clk-imx27.o
-obj-$(CONFIG_ARCH_IMX31) += imx31.o clk-imx31.o
-obj-$(CONFIG_ARCH_IMX35) += imx35.o clk-imx35.o
-obj-$(CONFIG_ARCH_IMX50) += imx50.o imx5.o clk-imx5.o
+obj-$(CONFIG_ARCH_IMX1)  += imx1.o
+obj-$(CONFIG_ARCH_IMX25) += imx25.o
+obj-$(CONFIG_ARCH_IMX21) += imx21.o
+obj-$(CONFIG_ARCH_IMX27) += imx27.o
+obj-$(CONFIG_ARCH_IMX31) += imx31.o
+obj-$(CONFIG_ARCH_IMX35) += imx35.o
+obj-$(CONFIG_ARCH_IMX50) += imx50.o imx5.o
 pbl-$(CONFIG_ARCH_IMX50) += imx50.o imx5.o
-obj-$(CONFIG_ARCH_IMX51) += imx51.o imx5.o clk-imx5.o
+obj-$(CONFIG_ARCH_IMX51) += imx51.o imx5.o
 pbl-$(CONFIG_ARCH_IMX51) += imx51.o imx5.o
-obj-$(CONFIG_ARCH_IMX53) += imx53.o imx5.o clk-imx5.o esdctl-v4.o
+obj-$(CONFIG_ARCH_IMX53) += imx53.o imx5.o esdctl-v4.o
 pbl-$(CONFIG_ARCH_IMX53) += imx53.o imx5.o esdctl-v4.o
-obj-$(CONFIG_ARCH_IMX6) += imx6.o usb-imx6.o clk-imx6.o
+obj-$(CONFIG_ARCH_IMX6) += imx6.o usb-imx6.o
 lwl-$(CONFIG_ARCH_IMX6) += imx6-mmdc.o
-obj-$(CONFIG_ARCH_IMX6SX) += clk-imx6sx.o
 obj-$(CONFIG_ARCH_IMX_XLOAD) += xload.o
 obj-$(CONFIG_IMX_IIM)	+= iim.o
 obj-$(CONFIG_IMX_OCOTP)	+= ocotp.o
 obj-$(CONFIG_NAND_IMX) += nand.o
 lwl-$(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND) += external-nand-boot.o
-obj-$(CONFIG_COMMON_CLK) += clk-pllv1.o clk-pllv2.o clk-pllv3.o clk-pfd.o clk-gate2.o clk-gate-exclusive.o
+
 obj-y += devices.o imx.o
 obj-pbl-y += esdctl.o boot.o
 obj-$(CONFIG_BAREBOX_UPDATE) += imx-bbu-internal.o
diff --git a/arch/arm/mach-imx/clk-gate-exclusive.c b/arch/arm/mach-imx/clk-gate-exclusive.c
deleted file mode 100644
index db88db0..0000000
--- a/arch/arm/mach-imx/clk-gate-exclusive.c
+++ /dev/null
@@ -1,103 +0,0 @@
-/*
- * Copyright 2014 Freescale Semiconductor, Inc.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- */
-
-#include <common.h>
-#include <io.h>
-#include <malloc.h>
-#include <linux/clk.h>
-#include <linux/err.h>
-
-#include "clk.h"
-
-/**
- * struct clk_gate_exclusive - i.MX specific gate clock which is mutually
- * exclusive with other gate clocks
- *
- * @gate: the parent class
- * @exclusive_mask: mask of gate bits which are mutually exclusive to this
- *	gate clock
- *
- * The imx exclusive gate clock is a subclass of basic clk_gate
- * with an addtional mask to indicate which other gate bits in the same
- * register is mutually exclusive to this gate clock.
- */
-struct clk_gate_exclusive {
-	struct clk clk;
-	void __iomem *reg;
-	int shift;
-	const char *parent;
-	u32 exclusive_mask;
-};
-
-static int clk_gate_exclusive_enable(struct clk *clk)
-{
-	struct clk_gate_exclusive *exgate = container_of(clk,
-					struct clk_gate_exclusive, clk);
-	u32 val = readl(exgate->reg);
-
-	if (val & exgate->exclusive_mask)
-		return -EBUSY;
-
-	val |= 1 << exgate->shift;
-
-	writel(val, exgate->reg);
-
-	return 0;
-}
-
-static void clk_gate_exclusive_disable(struct clk *clk)
-{
-	struct clk_gate_exclusive *exgate = container_of(clk,
-					struct clk_gate_exclusive, clk);
-	u32 val = readl(exgate->reg);
-
-	val &= ~(1 << exgate->shift);
-
-	writel(val, exgate->reg);
-}
-
-static int clk_gate_exclusive_is_enabled(struct clk *clk)
-{
-	struct clk_gate_exclusive *exgate = container_of(clk,
-					struct clk_gate_exclusive, clk);
-
-	return readl(exgate->reg) & (1 << exgate->shift);
-}
-
-static const struct clk_ops clk_gate_exclusive_ops = {
-	.enable = clk_gate_exclusive_enable,
-	.disable = clk_gate_exclusive_disable,
-	.is_enabled = clk_gate_exclusive_is_enabled,
-};
-
-struct clk *imx_clk_gate_exclusive(const char *name, const char *parent,
-	 void __iomem *reg, u8 shift, u32 exclusive_mask)
-{
-	struct clk_gate_exclusive *exgate;
-	int ret;
-
-	exgate = xzalloc(sizeof(*exgate));
-	exgate->parent = parent;
-	exgate->clk.name = name;
-	exgate->clk.ops = &clk_gate_exclusive_ops;
-	exgate->clk.flags = CLK_SET_RATE_PARENT;
-	exgate->clk.parent_names = &exgate->parent;
-	exgate->clk.num_parents = 1;
-
-	exgate->reg = reg;
-	exgate->shift = shift;
-	exgate->exclusive_mask = exclusive_mask;
-
-	ret = clk_register(&exgate->clk);
-	if (ret) {
-		free(exgate);
-		return ERR_PTR(ret);
-	}
-
-	return &exgate->clk;
-}
diff --git a/arch/arm/mach-imx/clk-gate2.c b/arch/arm/mach-imx/clk-gate2.c
deleted file mode 100644
index faed631..0000000
--- a/arch/arm/mach-imx/clk-gate2.c
+++ /dev/null
@@ -1,145 +0,0 @@
-/*
- * clk-gate2.c - barebox 2-bit clock support. Based on Linux clk support
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#include <common.h>
-#include <io.h>
-#include <malloc.h>
-#include <linux/clk.h>
-#include <linux/err.h>
-
-#include "clk.h"
-
-
-struct clk_gate2 {
-	struct clk clk;
-	void __iomem *reg;
-	int shift;
-	const char *parent;
-#define CLK_GATE_INVERTED	(1 << 0)
-	unsigned flags;
-};
-
-#define to_clk_gate2(_clk) container_of(_clk, struct clk_gate2, clk)
-
-static int clk_gate2_enable(struct clk *clk)
-{
-	struct clk_gate2 *g = to_clk_gate2(clk);
-	u32 val;
-
-	val = readl(g->reg);
-
-	if (g->flags & CLK_GATE_INVERTED)
-		val &= ~(3 << g->shift);
-	else
-		val |= 3 << g->shift;
-
-	writel(val, g->reg);
-
-	return 0;
-}
-
-static void clk_gate2_disable(struct clk *clk)
-{
-	struct clk_gate2 *g = to_clk_gate2(clk);
-	u32 val;
-
-	val = readl(g->reg);
-
-	if (g->flags & CLK_GATE_INVERTED)
-		val |= 3 << g->shift;
-	else
-		val &= ~(3 << g->shift);
-
-	writel(val, g->reg);
-}
-
-static int clk_gate2_is_enabled(struct clk *clk)
-{
-	struct clk_gate2 *g = to_clk_gate2(clk);
-	u32 val;
-
-	val = readl(g->reg);
-
-	if (val & (1 << g->shift))
-		return g->flags & CLK_GATE_INVERTED ? 0 : 1;
-	else
-		return g->flags & CLK_GATE_INVERTED ? 1 : 0;
-}
-
-static struct clk_ops clk_gate2_ops = {
-	.set_rate = clk_parent_set_rate,
-	.round_rate = clk_parent_round_rate,
-	.enable = clk_gate2_enable,
-	.disable = clk_gate2_disable,
-	.is_enabled = clk_gate2_is_enabled,
-};
-
-struct clk *clk_gate2_alloc(const char *name, const char *parent,
-		void __iomem *reg, u8 shift)
-{
-	struct clk_gate2 *g = xzalloc(sizeof(*g));
-
-	g->parent = parent;
-	g->reg = reg;
-	g->shift = shift;
-	g->clk.ops = &clk_gate2_ops;
-	g->clk.name = name;
-	g->clk.parent_names = &g->parent;
-	g->clk.num_parents = 1;
-	g->clk.flags = CLK_SET_RATE_PARENT;
-
-	return &g->clk;
-}
-
-void clk_gate2_free(struct clk *clk)
-{
-	struct clk_gate2 *g = to_clk_gate2(clk);
-
-	free(g);
-}
-
-struct clk *clk_gate2(const char *name, const char *parent, void __iomem *reg,
-		u8 shift)
-{
-	struct clk *g;
-	int ret;
-
-	g = clk_gate2_alloc(name , parent, reg, shift);
-
-	ret = clk_register(g);
-	if (ret) {
-		free(to_clk_gate2(g));
-		return ERR_PTR(ret);
-	}
-
-	return g;
-}
-
-struct clk *clk_gate2_inverted(const char *name, const char *parent,
-		void __iomem *reg, u8 shift)
-{
-	struct clk *clk;
-	struct clk_gate2 *g;
-
-	clk = clk_gate2(name, parent, reg, shift);
-	if (IS_ERR(clk))
-		return clk;
-
-	g = to_clk_gate2(clk);
-
-	g->flags = CLK_GATE_INVERTED;
-
-	return clk;
-}
diff --git a/arch/arm/mach-imx/clk-imx1.c b/arch/arm/mach-imx/clk-imx1.c
deleted file mode 100644
index 5f600a9..0000000
--- a/arch/arm/mach-imx/clk-imx1.c
+++ /dev/null
@@ -1,121 +0,0 @@
-/*
- *  Copyright (C) 2008 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA.
- */
-
-#include <common.h>
-#include <init.h>
-#include <driver.h>
-#include <linux/clk.h>
-#include <io.h>
-#include <linux/clkdev.h>
-#include <linux/err.h>
-#include <mach/imx1-regs.h>
-
-#include "clk.h"
-
-#define CCM_CSCR	0x0
-#define CCM_MPCTL0	0x4
-#define CCM_SPCTL0	0xc
-#define CCM_PCDR	0x20
-
-enum imx1_clks {
-	dummy, clk32, clk16m, clk32_premult, prem, mpll, spll, mcu,
-	fclk, hclk, clk48m, per1, per2, per3, clko, dma_gate, csi_gate,
-	mma_gate, usbd_gate, clk_max
-};
-
-static struct clk *clks[clk_max];
-
-static const char *prem_sel_clks[] = {
-	"clk32_premult",
-	"clk16m",
-};
-
-static const char *clko_sel_clks[] = {
-	"per1",
-	"hclk",
-	"clk48m",
-	"clk16m",
-	"prem",
-	"fclk",
-};
-
-int __init mx1_clocks_init(void __iomem *regs, unsigned long fref)
-{
-	clks[dummy] = clk_fixed("dummy", 0);
-	clks[clk32] = clk_fixed("clk32", fref);
-	clks[clk16m] = clk_fixed("clk16m", 16000000);
-	clks[clk32_premult] = imx_clk_fixed_factor("clk32_premult", "clk32", 512, 1);
-	clks[prem] = imx_clk_mux("prem", regs + CCM_CSCR, 16, 1, prem_sel_clks,
-			ARRAY_SIZE(prem_sel_clks));
-	clks[mpll] = imx_clk_pllv1("mpll", "clk32_premult", regs + CCM_MPCTL0);
-	clks[spll] = imx_clk_pllv1("spll", "prem", regs + CCM_SPCTL0);
-	clks[mcu] = imx_clk_divider("mcu", "clk32_premult", regs + CCM_CSCR, 15, 1);
-	clks[fclk] = imx_clk_divider("fclk", "mpll", regs + CCM_CSCR, 15, 1);
-	clks[hclk] = imx_clk_divider("hclk", "spll", regs + CCM_CSCR, 10, 4);
-	clks[clk48m] = imx_clk_divider("clk48m", "spll", regs + CCM_CSCR, 26, 3);
-	clks[per1] = imx_clk_divider("per1", "spll", regs + CCM_PCDR, 0, 4);
-	clks[per2] = imx_clk_divider("per2", "spll", regs + CCM_PCDR, 4, 4);
-	clks[per3] = imx_clk_divider("per3", "spll", regs + CCM_PCDR, 16, 7);
-	clks[clko] = imx_clk_mux("clko", regs + CCM_CSCR, 29, 3, clko_sel_clks,
-			ARRAY_SIZE(clko_sel_clks));
-
-	clkdev_add_physbase(clks[per1], MX1_TIM1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per1], MX1_TIM2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per2], MX1_LCDC_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per1], MX1_UART1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per1], MX1_UART2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per2], MX1_CSPI1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per2], MX1_CSPI2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[hclk], MX1_I2C_BASE_ADDR, NULL);
-
-	return 0;
-}
-
-static int imx1_ccm_probe(struct device_d *dev)
-{
-	struct resource *iores;
-	void __iomem *regs;
-
-	iores = dev_request_mem_resource(dev, 0);
-	if (IS_ERR(iores))
-		return PTR_ERR(iores);
-	regs = IOMEM(iores->start);
-
-	mx1_clocks_init(regs, 32000);
-
-	return 0;
-}
-
-static __maybe_unused struct of_device_id imx1_ccm_dt_ids[] = {
-	{
-		.compatible = "fsl,imx1-ccm",
-	}, {
-		/* sentinel */
-	}
-};
-
-static struct driver_d imx1_ccm_driver = {
-	.probe	= imx1_ccm_probe,
-	.name	= "imx1-ccm",
-	.of_compatible = DRV_OF_COMPAT(imx1_ccm_dt_ids),
-};
-
-static int imx1_ccm_init(void)
-{
-	return platform_driver_register(&imx1_ccm_driver);
-}
-core_initcall(imx1_ccm_init);
diff --git a/arch/arm/mach-imx/clk-imx21.c b/arch/arm/mach-imx/clk-imx21.c
deleted file mode 100644
index 546461b..0000000
--- a/arch/arm/mach-imx/clk-imx21.c
+++ /dev/null
@@ -1,196 +0,0 @@
-/*
- * Copyright 2004-2007 Freescale Semiconductor, Inc. All Rights Reserved.
- * Copyright 2008 Juergen Beisert, kernel@pengutronix.de
- * Copyright 2008 Martin Fuzzey, mfuzzey@gmail.com
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License
- * as published by the Free Software Foundation; either version 2
- * of the License, or (at your option) any later version.
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
- * MA 02110-1301, USA.
- */
-
-#include <common.h>
-#include <init.h>
-#include <driver.h>
-#include <linux/clk.h>
-#include <io.h>
-#include <linux/clkdev.h>
-#include <linux/err.h>
-#include <mach/imx21-regs.h>
-
-#include "clk.h"
-
-/* Register offsets */
-#define CCM_CSCR		0x0
-#define CCM_MPCTL0		0x4
-#define CCM_MPCTL1		0x8
-#define CCM_SPCTL0		0xc
-#define CCM_SPCTL1		0x10
-#define CCM_OSC26MCTL		0x14
-#define CCM_PCDR0		0x18
-#define CCM_PCDR1		0x1c
-#define CCM_PCCR0		0x20
-#define CCM_PCCR1		0x24
-#define CCM_CCSR		0x28
-#define CCM_PMCTL		0x2c
-#define CCM_PMCOUNT		0x30
-#define CCM_WKGDCTL		0x34
-
-#define PCCR0_UART1_EN		(1 << 0)
-#define PCCR0_UART2_EN		(1 << 1)
-#define PCCR0_UART3_EN		(1 << 2)
-#define PCCR0_UART4_EN		(1 << 3)
-#define PCCR0_CSPI1_EN		(1 << 4)
-#define PCCR0_CSPI2_EN		(1 << 5)
-#define PCCR0_SSI1_EN		(1 << 6)
-#define PCCR0_SSI2_EN		(1 << 7)
-#define PCCR0_FIRI_EN		(1 << 8)
-#define PCCR0_SDHC1_EN		(1 << 9)
-#define PCCR0_SDHC2_EN		(1 << 10)
-#define PCCR0_GPIO_EN		(1 << 11)
-#define PCCR0_I2C_EN		(1 << 12)
-#define PCCR0_DMA_EN		(1 << 13)
-#define PCCR0_USBOTG_EN		(1 << 14)
-#define PCCR0_EMMA_EN		(1 << 15)
-#define PCCR0_SSI2_BAUD_EN	(1 << 16)
-#define PCCR0_SSI1_BAUD_EN	(1 << 17)
-#define PCCR0_PERCLK3_EN	(1 << 18)
-#define PCCR0_NFC_EN		(1 << 19)
-#define PCCR0_FRI_BAUD_EN	(1 << 20)
-#define PCCR0_SLDC_EN		(1 << 21)
-#define PCCR0_PERCLK4_EN	(1 << 22)
-#define PCCR0_HCLK_BMI_EN	(1 << 23)
-#define PCCR0_HCLK_USBOTG_EN	(1 << 24)
-#define PCCR0_HCLK_SLCDC_EN	(1 << 25)
-#define PCCR0_HCLK_LCDC_EN	(1 << 26)
-#define PCCR0_HCLK_EMMA_EN	(1 << 27)
-#define PCCR0_HCLK_BROM_EN	(1 << 28)
-#define PCCR0_HCLK_DMA_EN	(1 << 30)
-#define PCCR0_HCLK_CSI_EN	(1 << 31)
-
-#define PCCR1_CSPI3_EN	(1 << 23)
-#define PCCR1_WDT_EN	(1 << 24)
-#define PCCR1_GPT1_EN	(1 << 25)
-#define PCCR1_GPT2_EN	(1 << 26)
-#define PCCR1_GPT3_EN	(1 << 27)
-#define PCCR1_PWM_EN	(1 << 28)
-#define PCCR1_RTC_EN	(1 << 29)
-#define PCCR1_KPP_EN	(1 << 30)
-#define PCCR1_OWIRE_EN	(1 << 31)
-
-enum imx21_clks {
-	ckil, ckih, fpm, mpll_sel, spll_sel, mpll, spll, fclk, hclk, ipg, per1,
-	per2, per3, per4, usb_div, nfc_div, lcdc_per_gate, lcdc_ahb_gate,
-	lcdc_ipg_gate, clk_max
-};
-
-static struct clk *clks[clk_max];
-
-static const char *mpll_sel_clks[] = {
-	"fpm",
-	"ckih",
-};
-
-static const char *spll_sel_clks[] = {
-	"fpm",
-	"ckih",
-};
-
-static int imx21_ccm_probe(struct device_d *dev)
-{
-	struct resource *iores;
-	void __iomem *base;
-	unsigned long lref = 32768;
-	unsigned long href = 26000000;
-
-	iores = dev_request_mem_resource(dev, 0);
-	if (IS_ERR(iores))
-		return PTR_ERR(iores);
-	base = IOMEM(iores->start);
-
-	writel(PCCR0_UART1_EN | PCCR0_UART2_EN | PCCR0_UART3_EN | PCCR0_UART4_EN |
-			PCCR0_CSPI1_EN | PCCR0_CSPI2_EN | PCCR0_SDHC1_EN |
-			PCCR0_SDHC2_EN | PCCR0_GPIO_EN | PCCR0_I2C_EN | PCCR0_DMA_EN |
-			PCCR0_USBOTG_EN | PCCR0_NFC_EN | PCCR0_PERCLK4_EN |
-			PCCR0_HCLK_USBOTG_EN | PCCR0_HCLK_DMA_EN,
-			base + CCM_PCCR0);
-
-	writel(PCCR1_CSPI3_EN | PCCR1_WDT_EN | PCCR1_GPT1_EN | PCCR1_GPT2_EN |
-			PCCR1_GPT3_EN | PCCR1_PWM_EN | PCCR1_RTC_EN | PCCR1_KPP_EN |
-			PCCR1_OWIRE_EN,
-			base + CCM_PCCR1);
-
-	clks[ckil] = clk_fixed("ckil", lref);
-	clks[ckih] = clk_fixed("ckih", href);
-	clks[fpm] = imx_clk_fixed_factor("fpm", "ckil", 512, 1);
-	clks[mpll_sel] = imx_clk_mux("mpll_sel", base + CCM_CSCR, 16, 1, mpll_sel_clks,
-			ARRAY_SIZE(mpll_sel_clks));
-	clks[spll_sel] = imx_clk_mux("spll_sel", base + CCM_CSCR, 17, 1, spll_sel_clks,
-			ARRAY_SIZE(spll_sel_clks));
-	clks[mpll] = imx_clk_pllv1("mpll", "mpll_sel", base + CCM_MPCTL0);
-	clks[spll] = imx_clk_pllv1("spll", "spll_sel", base + CCM_SPCTL0);
-	clks[fclk] = imx_clk_divider("fclk", "mpll", base + CCM_CSCR, 29, 3);
-	clks[hclk] = imx_clk_divider("hclk", "fclk", base + CCM_CSCR, 10, 4);
-	clks[ipg] = imx_clk_divider("ipg", "hclk", base + CCM_CSCR, 9, 1);
-	clks[per1] = imx_clk_divider("per1", "mpll", base + CCM_PCDR1, 0, 6);
-	clks[per2] = imx_clk_divider("per2", "mpll", base + CCM_PCDR1, 8, 6);
-	clks[per3] = imx_clk_divider("per3", "mpll", base + CCM_PCDR1, 16, 6);
-	clks[per4] = imx_clk_divider("per4", "mpll", base + CCM_PCDR1, 24, 6);
-	clks[usb_div] = imx_clk_divider("usb_div", "spll", base + CCM_CSCR, 26, 3);
-	clks[nfc_div] = imx_clk_divider("nfc_div", "ipg", base + CCM_PCDR0, 12, 4);
-	clks[lcdc_per_gate] = imx_clk_gate("lcdc_per_gate", "per3", base + CCM_PCCR0, 18);
-	clks[lcdc_ahb_gate] = imx_clk_gate("lcdc_ahb_gate", "ahb", base + CCM_PCCR0, 26);
-	/*
-	 * i.MX21 doesn't have an IPG clock for the LCD. To avoid even more conditionals
-	 * in the framebuffer code, provide a dummy clock.
-	 */
-	clks[lcdc_ipg_gate] = clk_fixed("dummy", 0);
-
-	clkdev_add_physbase(clks[per1], MX21_GPT1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per1], MX21_GPT2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per1], MX21_GPT3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per1], MX21_UART1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per1], MX21_UART2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per1], MX21_UART3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per1], MX21_UART4_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per2], MX21_CSPI1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per2], MX21_CSPI2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per2], MX21_CSPI3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg], MX21_I2C_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg], MX21_SDHC1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg], MX21_SDHC2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[lcdc_per_gate], MX21_LCDC_BASE_ADDR, "per");
-	clkdev_add_physbase(clks[lcdc_ahb_gate], MX21_LCDC_BASE_ADDR, "ahb");
-	clkdev_add_physbase(clks[lcdc_ipg_gate], MX21_LCDC_BASE_ADDR, "ipg");
-
-	return 0;
-}
-
-static __maybe_unused struct of_device_id imx21_ccm_dt_ids[] = {
-	{
-		.compatible = "fsl,imx21-ccm",
-	}, {
-		/* sentinel */
-	}
-};
-
-static struct driver_d imx21_ccm_driver = {
-	.probe	= imx21_ccm_probe,
-	.name	= "imx21-ccm",
-	.of_compatible = DRV_OF_COMPAT(imx21_ccm_dt_ids),
-};
-
-static int imx21_ccm_init(void)
-{
-	return platform_driver_register(&imx21_ccm_driver);
-}
-core_initcall(imx21_ccm_init);
diff --git a/arch/arm/mach-imx/clk-imx25.c b/arch/arm/mach-imx/clk-imx25.c
deleted file mode 100644
index 864d06e..0000000
--- a/arch/arm/mach-imx/clk-imx25.c
+++ /dev/null
@@ -1,200 +0,0 @@
-/*
- * Copyright (C) 2009 by Sascha Hauer, Pengutronix
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License
- * as published by the Free Software Foundation; either version 2
- * of the License, or (at your option) any later version.
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
- * MA 02110-1301, USA.
- */
-
-#include <common.h>
-#include <init.h>
-#include <driver.h>
-#include <linux/clk.h>
-#include <io.h>
-#include <linux/clkdev.h>
-#include <linux/err.h>
-#include <mach/imx25-regs.h>
-
-#include "clk.h"
-
-#define CCM_MPCTL	0x00
-#define CCM_UPCTL	0x04
-#define CCM_CCTL	0x08
-#define CCM_CGCR0	0x0C
-#define CCM_CGCR1	0x10
-#define CCM_CGCR2	0x14
-#define CCM_PCDR0	0x18
-#define CCM_PCDR1	0x1C
-#define CCM_PCDR2	0x20
-#define CCM_PCDR3	0x24
-#define CCM_RCSR	0x28
-#define CCM_CRDR	0x2C
-#define CCM_DCVR0	0x30
-#define CCM_DCVR1	0x34
-#define CCM_DCVR2	0x38
-#define CCM_DCVR3	0x3c
-#define CCM_LTR0	0x40
-#define CCM_LTR1	0x44
-#define CCM_LTR2	0x48
-#define CCM_LTR3	0x4c
-#define CCM_MCR		0x64
-
-enum mx25_clks {
-	dummy, osc, mpll, upll, mpll_cpu_3_4, cpu_sel, cpu, ahb, usb_div, ipg,
-	per0_sel, per1_sel, per2_sel, per3_sel, per4_sel, per5_sel, per6_sel,
-	per7_sel, per8_sel, per9_sel, per10_sel, per11_sel, per12_sel,
-	per13_sel, per14_sel, per15_sel, per0, per1, per2, per3, per4, per5,
-	per6, per7, per8, per9, per10, per11, per12, per13, per14, per15,
-	csi_ipg_per, epit_ipg_per, esai_ipg_per, esdhc1_ipg_per, esdhc2_ipg_per,
-	gpt_ipg_per, i2c_ipg_per, lcdc_ipg_per, nfc_ipg_per, owire_ipg_per,
-	pwm_ipg_per, sim1_ipg_per, sim2_ipg_per, ssi1_ipg_per, ssi2_ipg_per,
-	uart_ipg_per, ata_ahb, reserved1, csi_ahb, emi_ahb, esai_ahb, esdhc1_ahb,
-	esdhc2_ahb, fec_ahb, lcdc_ahb, rtic_ahb, sdma_ahb, slcdc_ahb, usbotg_ahb,
-	reserved2, reserved3, reserved4, reserved5, can1_ipg, can2_ipg, csi_ipg,
-	cspi1_ipg, cspi2_ipg, cspi3_ipg, dryice_ipg, ect_ipg, epit1_ipg, epit2_ipg,
-	reserved6, esdhc1_ipg, esdhc2_ipg, fec_ipg, reserved7, reserved8, reserved9,
-	gpt1_ipg, gpt2_ipg, gpt3_ipg, gpt4_ipg, reserved10, reserved11, reserved12,
-	iim_ipg, reserved13, reserved14, kpp_ipg, lcdc_ipg, reserved15, pwm1_ipg,
-	pwm2_ipg, pwm3_ipg, pwm4_ipg, rngb_ipg, reserved16, scc_ipg, sdma_ipg,
-	sim1_ipg, sim2_ipg, slcdc_ipg, spba_ipg, ssi1_ipg, ssi2_ipg, tsc_ipg,
-	uart1_ipg, uart2_ipg, uart3_ipg, uart4_ipg, uart5_ipg, reserved17,
-	wdt_ipg, clk_max
-};
-
-static struct clk *clks[clk_max];
-
-static const char *cpu_sel_clks[] = {
-	"mpll",
-	"mpll_cpu_3_4",
-};
-
-static const char *per_sel_clks[] = {
-	"ahb",
-	"upll",
-};
-
-static int imx25_ccm_probe(struct device_d *dev)
-{
-	struct resource *iores;
-	void __iomem *base;
-
-	iores = dev_request_mem_resource(dev, 0);
-	if (IS_ERR(iores))
-		return PTR_ERR(iores);
-	base = IOMEM(iores->start);
-
-	writel((1 << 3) | (1 << 4) | (1 << 5) | (1 << 6) | (1 << 8) | (1 << 9) |
-			(1 << 10) | (1 << 15) |	(1 << 19) | (1 << 21) | (1 << 22) |
-			(1 << 23) | (1 << 24) | (1 << 28),
-			base + CCM_CGCR0);
-
-	writel((1 << 5) | (1 << 6) | (1 << 7) | (1 << 8) | (1 << 13) | (1 << 14) |
-			(1 << 15) | (1 << 19) | (1 << 20) | (1 << 21) | (1 << 22) |
-			(1 << 26) | (1 << 31),
-			base + CCM_CGCR1);
-
-	writel((1 << 0) | (1 << 1) | (1 << 2) | (1 << 10) | (1 << 13) | (1 << 14) |
-			(1 << 15) | (1 << 16) | (1 << 17) | (1 << 18),
-			base + CCM_CGCR2);
-
-	clks[dummy] = clk_fixed("dummy", 0);
-	clks[osc] = clk_fixed("osc", 24000000);
-	clks[mpll] = imx_clk_pllv1("mpll", "osc", base + CCM_MPCTL);
-	clks[upll] = imx_clk_pllv1("upll", "osc", base + CCM_UPCTL);
-	clks[mpll_cpu_3_4] = imx_clk_fixed_factor("mpll_cpu_3_4", "mpll", 3, 4);
-	clks[cpu_sel] = imx_clk_mux("cpu_sel", base + CCM_CCTL, 14, 1, cpu_sel_clks, ARRAY_SIZE(cpu_sel_clks));
-	clks[cpu] = imx_clk_divider("cpu", "cpu_sel", base + CCM_CCTL, 30, 2);
-	clks[ahb] = imx_clk_divider("ahb", "cpu", base + CCM_CCTL, 28, 2);
-	clks[usb_div] = imx_clk_divider("usb_div", "upll", base + CCM_CCTL, 16, 6);
-	clks[ipg] = imx_clk_fixed_factor("ipg", "ahb", 1, 2);
-	clks[per0_sel] = imx_clk_mux("per0_sel", base + CCM_MCR, 0, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
-	clks[per1_sel] = imx_clk_mux("per1_sel", base + CCM_MCR, 1, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
-	clks[per2_sel] = imx_clk_mux("per2_sel", base + CCM_MCR, 2, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
-	clks[per3_sel] = imx_clk_mux("per3_sel", base + CCM_MCR, 3, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
-	clks[per4_sel] = imx_clk_mux("per4_sel", base + CCM_MCR, 4, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
-	clks[per5_sel] = imx_clk_mux("per5_sel", base + CCM_MCR, 5, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
-	clks[per6_sel] = imx_clk_mux("per6_sel", base + CCM_MCR, 6, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
-	clks[per7_sel] = imx_clk_mux("per7_sel", base + CCM_MCR, 7, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
-	clks[per8_sel] = imx_clk_mux("per8_sel", base + CCM_MCR, 8, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
-	clks[per9_sel] = imx_clk_mux("per9_sel", base + CCM_MCR, 9, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
-	clks[per10_sel] = imx_clk_mux("per10_sel", base + CCM_MCR, 10, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
-	clks[per11_sel] = imx_clk_mux("per11_sel", base + CCM_MCR, 11, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
-	clks[per12_sel] = imx_clk_mux("per12_sel", base + CCM_MCR, 12, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
-	clks[per13_sel] = imx_clk_mux("per13_sel", base + CCM_MCR, 13, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
-	clks[per14_sel] = imx_clk_mux("per14_sel", base + CCM_MCR, 14, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
-	clks[per15_sel] = imx_clk_mux("per15_sel", base + CCM_MCR, 15, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
-	clks[per0] = imx_clk_divider("per0", "per0_sel", base + CCM_PCDR0, 0, 6);
-	clks[per1] = imx_clk_divider("per1", "per1_sel", base + CCM_PCDR0, 8, 6);
-	clks[per2] = imx_clk_divider("per2", "per2_sel", base + CCM_PCDR0, 16, 6);
-	clks[per3] = imx_clk_divider("per3", "per3_sel", base + CCM_PCDR0, 24, 6);
-	clks[per4] = imx_clk_divider("per4", "per4_sel", base + CCM_PCDR1, 0, 6);
-	clks[per5] = imx_clk_divider("per5", "per5_sel", base + CCM_PCDR1, 8, 6);
-	clks[per6] = imx_clk_divider("per6", "per6_sel", base + CCM_PCDR1, 16, 6);
-	clks[per7] = imx_clk_divider("per7", "per7_sel", base + CCM_PCDR1, 24, 6);
-	clks[per8] = imx_clk_divider("per8", "per8_sel", base + CCM_PCDR2, 0, 6);
-	clks[per9] = imx_clk_divider("per9", "per9_sel", base + CCM_PCDR2, 8, 6);
-	clks[per10] = imx_clk_divider("per10", "per10_sel", base + CCM_PCDR2, 16, 6);
-	clks[per11] = imx_clk_divider("per11", "per11_sel", base + CCM_PCDR2, 24, 6);
-	clks[per12] = imx_clk_divider("per12", "per12_sel", base + CCM_PCDR3, 0, 6);
-	clks[per13] = imx_clk_divider("per13", "per13_sel", base + CCM_PCDR3, 8, 6);
-	clks[per14] = imx_clk_divider("per14", "per14_sel", base + CCM_PCDR3, 16, 6);
-	clks[per15] = imx_clk_divider("per15", "per15_sel", base + CCM_PCDR3, 24, 6);
-	clks[lcdc_ahb] = imx_clk_gate("lcdc_ahb", "ahb", base + CCM_CGCR0, 24);
-	clks[lcdc_ipg] = imx_clk_gate("lcdc_ipg", "ipg", base + CCM_CGCR1, 29);
-	clks[lcdc_ipg_per] = imx_clk_gate("lcdc_ipg_per", "per7", base + CCM_CGCR0, 7);
-
-	clkdev_add_physbase(clks[per15], MX25_UART1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per15], MX25_UART2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per15], MX25_UART3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per15], MX25_UART4_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per15], MX25_UART5_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per5], MX25_GPT1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per5], MX25_GPT2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per5], MX25_GPT3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per5], MX25_GPT4_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg], MX25_FEC_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg], MX25_I2C1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg], MX25_I2C2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg], MX25_I2C3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg], MX25_CSPI1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg], MX25_CSPI2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg], MX25_CSPI3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per3], MX25_ESDHC1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per4], MX25_ESDHC2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per8], MX25_NFC_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[lcdc_ipg_per], MX25_LCDC_BASE_ADDR, "per");
-	clkdev_add_physbase(clks[lcdc_ipg], MX25_LCDC_BASE_ADDR, "ipg");
-	clkdev_add_physbase(clks[lcdc_ahb], MX25_LCDC_BASE_ADDR, "ahb");
-
-	return 0;
-}
-
-static __maybe_unused struct of_device_id imx25_ccm_dt_ids[] = {
-	{
-		.compatible = "fsl,imx25-ccm",
-	}, {
-		/* sentinel */
-	}
-};
-
-static struct driver_d imx25_ccm_driver = {
-	.probe	= imx25_ccm_probe,
-	.name	= "imx25-ccm",
-	.of_compatible = DRV_OF_COMPAT(imx25_ccm_dt_ids),
-};
-
-static int imx25_ccm_init(void)
-{
-	return platform_driver_register(&imx25_ccm_driver);
-}
-core_initcall(imx25_ccm_init);
diff --git a/arch/arm/mach-imx/clk-imx27.c b/arch/arm/mach-imx/clk-imx27.c
deleted file mode 100644
index 4b63244..0000000
--- a/arch/arm/mach-imx/clk-imx27.c
+++ /dev/null
@@ -1,270 +0,0 @@
-#include <common.h>
-#include <init.h>
-#include <driver.h>
-#include <linux/clk.h>
-#include <io.h>
-#include <linux/clkdev.h>
-#include <linux/err.h>
-#include <mach/imx27-regs.h>
-#include <mach/generic.h>
-#include <mach/revision.h>
-
-#include "clk.h"
-
-/* Register offsets */
-#define CCM_CSCR		0x0
-#define CCM_MPCTL0		0x4
-#define CCM_MPCTL1		0x8
-#define CCM_SPCTL0		0xc
-#define CCM_SPCTL1		0x10
-#define CCM_OSC26MCTL		0x14
-#define CCM_PCDR0		0x18
-#define CCM_PCDR1		0x1c
-#define CCM_PCCR0		0x20
-#define CCM_PCCR1		0x24
-#define CCM_CCSR		0x28
-#define CCM_PMCTL		0x2c
-#define CCM_PMCOUNT		0x30
-#define CCM_WKGDCTL		0x34
-
-#define PCCR0_SSI2_EN	(1 << 0)
-#define PCCR0_SSI1_EN	(1 << 1)
-#define PCCR0_SLCDC_EN	(1 << 2)
-#define PCCR0_SDHC3_EN	(1 << 3)
-#define PCCR0_SDHC2_EN	(1 << 4)
-#define PCCR0_SDHC1_EN	(1 << 5)
-#define PCCR0_SDC_EN	(1 << 6)
-#define PCCR0_SAHARA_EN	(1 << 7)
-#define PCCR0_RTIC_EN	(1 << 8)
-#define PCCR0_RTC_EN	(1 << 9)
-#define PCCR0_PWM_EN	(1 << 11)
-#define PCCR0_OWIRE_EN	(1 << 12)
-#define PCCR0_MSHC_EN	(1 << 13)
-#define PCCR0_LCDC_EN	(1 << 14)
-#define PCCR0_KPP_EN	(1 << 15)
-#define PCCR0_IIM_EN	(1 << 16)
-#define PCCR0_I2C2_EN	(1 << 17)
-#define PCCR0_I2C1_EN	(1 << 18)
-#define PCCR0_GPT6_EN	(1 << 19)
-#define PCCR0_GPT5_EN	(1 << 20)
-#define PCCR0_GPT4_EN	(1 << 21)
-#define PCCR0_GPT3_EN	(1 << 22)
-#define PCCR0_GPT2_EN	(1 << 23)
-#define PCCR0_GPT1_EN	(1 << 24)
-#define PCCR0_GPIO_EN	(1 << 25)
-#define PCCR0_FEC_EN	(1 << 26)
-#define PCCR0_EMMA_EN	(1 << 27)
-#define PCCR0_DMA_EN	(1 << 28)
-#define PCCR0_CSPI3_EN	(1 << 29)
-#define PCCR0_CSPI2_EN	(1 << 30)
-#define PCCR0_CSPI1_EN	(1 << 31)
-
-#define PCCR1_MSHC_BAUDEN	(1 << 2)
-#define PCCR1_NFC_BAUDEN	(1 << 3)
-#define PCCR1_SSI2_BAUDEN	(1 << 4)
-#define PCCR1_SSI1_BAUDEN	(1 << 5)
-#define PCCR1_H264_BAUDEN	(1 << 6)
-#define PCCR1_PERCLK4_EN	(1 << 7)
-#define PCCR1_PERCLK3_EN	(1 << 8)
-#define PCCR1_PERCLK2_EN	(1 << 9)
-#define PCCR1_PERCLK1_EN	(1 << 10)
-#define PCCR1_HCLK_USB		(1 << 11)
-#define PCCR1_HCLK_SLCDC	(1 << 12)
-#define PCCR1_HCLK_SAHARA	(1 << 13)
-#define PCCR1_HCLK_RTIC		(1 << 14)
-#define PCCR1_HCLK_LCDC		(1 << 15)
-#define PCCR1_HCLK_H264		(1 << 16)
-#define PCCR1_HCLK_FEC		(1 << 17)
-#define PCCR1_HCLK_EMMA		(1 << 18)
-#define PCCR1_HCLK_EMI		(1 << 19)
-#define PCCR1_HCLK_DMA		(1 << 20)
-#define PCCR1_HCLK_CSI		(1 << 21)
-#define PCCR1_HCLK_BROM		(1 << 22)
-#define PCCR1_HCLK_ATA		(1 << 23)
-#define PCCR1_WDT_EN		(1 << 24)
-#define PCCR1_USB_EN		(1 << 25)
-#define PCCR1_UART6_EN		(1 << 26)
-#define PCCR1_UART5_EN		(1 << 27)
-#define PCCR1_UART4_EN		(1 << 28)
-#define PCCR1_UART3_EN		(1 << 29)
-#define PCCR1_UART2_EN		(1 << 30)
-#define PCCR1_UART1_EN		(1 << 31)
-
-enum mx27_clks {
-	dummy, ckih, ckil, mpll, spll, mpll_main2, ahb, ipg, nfc_div, per1_div,
-	per2_div, per3_div, per4_div, vpu_sel, vpu_div, usb_div, cpu_sel,
-	clko_sel, cpu_div, clko_div, ssi1_sel, ssi2_sel, ssi1_div, ssi2_div,
-	clko_en, ssi2_ipg_gate, ssi1_ipg_gate, slcdc_ipg_gate, sdhc3_ipg_gate,
-	sdhc2_ipg_gate, sdhc1_ipg_gate, scc_ipg_gate, sahara_ipg_gate,
-	rtc_ipg_gate, pwm_ipg_gate, owire_ipg_gate, lcdc_ipg_gate,
-	kpp_ipg_gate, iim_ipg_gate, i2c2_ipg_gate, i2c1_ipg_gate,
-	gpt6_ipg_gate, gpt5_ipg_gate, gpt4_ipg_gate, gpt3_ipg_gate,
-	gpt2_ipg_gate, gpt1_ipg_gate, gpio_ipg_gate, fec_ipg_gate,
-	emma_ipg_gate, dma_ipg_gate, cspi3_ipg_gate, cspi2_ipg_gate,
-	cspi1_ipg_gate, nfc_baud_gate, ssi2_baud_gate, ssi1_baud_gate,
-	vpu_baud_gate, per4_gate, per3_gate, per2_gate, per1_gate,
-	usb_ahb_gate, slcdc_ahb_gate, sahara_ahb_gate, lcdc_ahb_gate,
-	vpu_ahb_gate, fec_ahb_gate, emma_ahb_gate, emi_ahb_gate, dma_ahb_gate,
-	csi_ahb_gate, brom_ahb_gate, ata_ahb_gate, wdog_ipg_gate, usb_ipg_gate,
-	uart6_ipg_gate, uart5_ipg_gate, uart4_ipg_gate, uart3_ipg_gate,
-	uart2_ipg_gate, uart1_ipg_gate, ckih_div1p5, fpm, mpll_osc_sel,
-	mpll_sel, spll_gate, clk_max
-};
-
-static struct clk *clks[clk_max];
-
-static const char *cpu_sel_clks[] = {
-	"mpll_main2",
-	"mpll",
-};
-
-static const char *mpll_sel_clks[] = {
-	"fpm",
-	"mpll_osc_sel",
-};
-
-static const char *mpll_osc_sel_clks[] = {
-	"ckih",
-	"ckih_div1p5",
-};
-
-static const char *clko_sel_clks[] = {
-	"ckil",
-	NULL,
-	"ckih",
-	"ckih",
-	"ckih",
-	"mpll",
-	"spll",
-	"cpu_div",
-	"ahb",
-	"ipg",
-	"per1_div",
-	"per2_div",
-	"per3_div",
-	"per4_div",
-	NULL,
-	NULL,
-	"nfc_div",
-	NULL,
-	NULL,
-	NULL,
-	"ckil",
-	"usb_div",
-	NULL,
-};
-
-static int imx27_ccm_probe(struct device_d *dev)
-{
-	struct resource *iores;
-	void __iomem *base;
-
-	iores = dev_request_mem_resource(dev, 0);
-	if (IS_ERR(iores))
-		return PTR_ERR(iores);
-	base = IOMEM(iores->start);
-
-	writel(PCCR0_SDHC3_EN | PCCR0_SDHC2_EN | PCCR0_SDHC1_EN |
-			PCCR0_PWM_EN | PCCR0_KPP_EN | PCCR0_IIM_EN |
-			PCCR0_I2C2_EN | PCCR0_I2C1_EN | PCCR0_GPT6_EN | PCCR0_GPT5_EN |
-			PCCR0_GPT4_EN | PCCR0_GPT3_EN | PCCR0_GPT2_EN | PCCR0_GPT1_EN |
-			PCCR0_GPIO_EN | PCCR0_FEC_EN | PCCR0_CSPI3_EN | PCCR0_CSPI2_EN |
-			PCCR0_CSPI1_EN,
-			base + CCM_PCCR0);
-
-	writel(PCCR1_NFC_BAUDEN | PCCR1_PERCLK4_EN | PCCR1_PERCLK2_EN | PCCR1_PERCLK1_EN |
-			PCCR1_HCLK_USB | PCCR1_HCLK_FEC | PCCR1_HCLK_EMI | PCCR1_WDT_EN |
-			PCCR1_USB_EN | PCCR1_UART6_EN | PCCR1_UART5_EN | PCCR1_UART4_EN |
-			PCCR1_UART3_EN | PCCR1_UART2_EN | PCCR1_UART1_EN,
-			base + CCM_PCCR1);
-
-	clks[dummy] = clk_fixed("dummy", 0);
-	clks[ckih] = clk_fixed("ckih", 26000000);
-	clks[ckil] = clk_fixed("ckil", 32768);
-	clks[fpm] = imx_clk_fixed_factor("fpm", "ckil", 1024, 1);
-	clks[ckih_div1p5] = imx_clk_fixed_factor("ckih_div1p5", "ckih", 2, 3);
-
-	clks[mpll_osc_sel] = imx_clk_mux("mpll_osc_sel", base + CCM_CSCR, 4, 1,
-			mpll_osc_sel_clks,
-			ARRAY_SIZE(mpll_osc_sel_clks));
-	clks[mpll_sel] = imx_clk_mux("mpll_sel", base + CCM_CSCR, 16, 1, mpll_sel_clks,
-			ARRAY_SIZE(mpll_sel_clks));
-
-	clks[mpll] = imx_clk_pllv1("mpll", "mpll_sel", base + CCM_MPCTL0);
-	clks[spll] = imx_clk_pllv1("spll", "ckih", base + CCM_SPCTL0);
-	clks[mpll_main2] = imx_clk_fixed_factor("mpll_main2", "mpll", 2, 3);
-
-	if (imx_silicon_revision() >= IMX_CHIP_REV_2_0) {
-		clks[ahb] = imx_clk_divider("ahb", "mpll_main2", base + CCM_CSCR, 8, 2);
-		clks[ipg] = imx_clk_fixed_factor("ipg", "ahb", 1, 2);
-	} else {
-		clks[ahb] = imx_clk_divider("ahb", "mpll_main2", base + CCM_CSCR, 9, 4);
-		clks[ipg] = imx_clk_divider("ipg", "ahb", base + CCM_CSCR, 8, 1);
-	}
-
-	clks[nfc_div] = imx_clk_divider("nfc_div", "ahb", base + CCM_PCDR0, 6, 4);
-	clks[per1_div] = imx_clk_divider("per1_div", "mpll_main2", base + CCM_PCDR1, 0, 6);
-	clks[per2_div] = imx_clk_divider("per2_div", "mpll_main2", base + CCM_PCDR1, 8, 6);
-	clks[per3_div] = imx_clk_divider("per3_div", "mpll_main2", base + CCM_PCDR1, 16, 6);
-	clks[per4_div] = imx_clk_divider("per4_div", "mpll_main2", base + CCM_PCDR1, 24, 6);
-	clks[usb_div] = imx_clk_divider("usb_div", "spll", base + CCM_CSCR, 28, 3);
-	clks[cpu_sel] = imx_clk_mux("cpu_sel", base + CCM_CSCR, 15, 1, cpu_sel_clks,
-			ARRAY_SIZE(cpu_sel_clks));
-	clks[clko_sel] = imx_clk_mux("clko_sel", base + CCM_CCSR, 0, 5, clko_sel_clks,
-			ARRAY_SIZE(clko_sel_clks));
-	if (imx_silicon_revision() >= IMX_CHIP_REV_2_0)
-		clks[cpu_div] = imx_clk_divider("cpu_div", "cpu_sel", base + CCM_CSCR, 12, 2);
-	else
-		clks[cpu_div] = imx_clk_divider("cpu_div", "cpu_sel", base + CCM_CSCR, 13, 3);
-	clks[clko_div] = imx_clk_divider("clko_div", "clko_sel", base + CCM_PCDR0, 22, 3);
-	clks[per3_gate] = imx_clk_gate("per3_gate", "per3_div", base + CCM_PCCR1, 8);
-	clks[lcdc_ahb_gate] = imx_clk_gate("lcdc_ahb_gate", "ahb", base + CCM_PCCR1, 15);
-	clks[lcdc_ipg_gate] = imx_clk_gate("lcdc_ipg_gate", "ipg", base + CCM_PCCR0, 14);
-
-	clkdev_add_physbase(clks[per1_div], MX27_GPT1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per1_div], MX27_GPT2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per1_div], MX27_GPT3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per1_div], MX27_GPT4_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per1_div], MX27_GPT5_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per1_div], MX27_GPT6_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per1_div], MX27_UART1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per1_div], MX27_UART2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per1_div], MX27_UART3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per1_div], MX27_UART4_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per1_div], MX27_UART5_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per1_div], MX27_UART6_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg], MX27_CSPI1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg], MX27_CSPI2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg], MX27_CSPI3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg], MX27_I2C1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg], MX27_I2C2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per2_div], MX27_SDHC1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per2_div], MX27_SDHC2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per2_div], MX27_SDHC3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per3_gate], MX27_LCDC_BASE_ADDR, "per");
-	clkdev_add_physbase(clks[lcdc_ahb_gate], MX27_LCDC_BASE_ADDR, "ahb");
-	clkdev_add_physbase(clks[lcdc_ipg_gate], MX27_LCDC_BASE_ADDR, "ipg");
-	clkdev_add_physbase(clks[ipg], MX27_FEC_BASE_ADDR, NULL);
-
-	return 0;
-}
-
-static __maybe_unused struct of_device_id imx27_ccm_dt_ids[] = {
-	{
-		.compatible = "fsl,imx27-ccm",
-	}, {
-		/* sentinel */
-	}
-};
-
-static struct driver_d imx27_ccm_driver = {
-	.probe	= imx27_ccm_probe,
-	.name	= "imx27-ccm",
-	.of_compatible = DRV_OF_COMPAT(imx27_ccm_dt_ids),
-};
-
-static int imx27_ccm_init(void)
-{
-	return platform_driver_register(&imx27_ccm_driver);
-}
-core_initcall(imx27_ccm_init);
diff --git a/arch/arm/mach-imx/clk-imx31.c b/arch/arm/mach-imx/clk-imx31.c
deleted file mode 100644
index 8d135c9..0000000
--- a/arch/arm/mach-imx/clk-imx31.c
+++ /dev/null
@@ -1,146 +0,0 @@
-/*
- * Copyright (C) 2012 Sascha Hauer <kernel@pengutronix.de>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License
- * as published by the Free Software Foundation; either version 2
- * of the License, or (at your option) any later version.
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation.
- */
-
-#include <common.h>
-#include <init.h>
-#include <driver.h>
-#include <linux/clk.h>
-#include <io.h>
-#include <linux/clkdev.h>
-#include <linux/err.h>
-#include <mach/imx31-regs.h>
-
-#include "clk.h"
-
-/* Register addresses */
-#define CCM_CCMR		0x00
-#define CCM_PDR0		0x04
-#define CCM_PDR1		0x08
-//#define CCM_RCSR		0x0C
-#define CCM_MPCTL		0x10
-#define CCM_UPCTL		0x14
-#define CCM_SRPCTL		0x18
-#define CCM_COSR		0x1C
-#define CCM_CGR0		0x20
-#define CCM_CGR1		0x24
-#define CCM_CGR2		0x28
-#define CCM_WIMR		0x2C
-#define CCM_LDC		0x30
-#define CCM_DCVR0		0x34
-#define CCM_DCVR1		0x38
-#define CCM_DCVR2		0x3C
-#define CCM_DCVR3		0x40
-#define CCM_LTR0		0x44
-#define CCM_LTR1		0x48
-#define CCM_LTR2		0x4C
-#define CCM_LTR3		0x50
-#define CCM_LTBR0		0x54
-#define CCM_LTBR1		0x58
-#define CCM_PMCR0		0x5C
-#define CCM_PMCR1		0x60
-#define CCM_PDR2		0x64
-
-enum mx31_clks {
-	ckih, ckil, mpll, spll, upll, mcu_main, hsp, ahb, nfc, ipg, per_div,
-	per, csi, fir, csi_div, usb_div_pre, usb_div_post, fir_div_pre,
-	fir_div_post, sdhc1_gate, sdhc2_gate, gpt_gate, epit1_gate, epit2_gate,
-	iim_gate, ata_gate, sdma_gate, cspi3_gate, rng_gate, uart1_gate,
-	uart2_gate, ssi1_gate, i2c1_gate, i2c2_gate, i2c3_gate, hantro_gate,
-	mstick1_gate, mstick2_gate, csi_gate, rtc_gate, wdog_gate, pwm_gate,
-	sim_gate, ect_gate, usb_gate, kpp_gate, ipu_gate, uart3_gate,
-	uart4_gate, uart5_gate, owire_gate, ssi2_gate, cspi1_gate, cspi2_gate,
-	gacc_gate, emi_gate, rtic_gate, firi_gate, clk_max
-};
-
-static struct clk *clks[clk_max];
-
-static const char *mcu_main_sel[] = {
-	"spll",
-	"mpll",
-};
-
-static const char *per_sel[] = {
-	"per_div",
-	"ipg",
-};
-
-static int imx31_ccm_probe(struct device_d *dev)
-{
-	struct resource *iores;
-	void __iomem *base;
-
-	iores = dev_request_mem_resource(dev, 0);
-	if (IS_ERR(iores))
-		return PTR_ERR(iores);
-	base = IOMEM(iores->start);
-
-	writel(0xffffffff, base + CCM_CGR0);
-	writel(0xffffffff, base + CCM_CGR1);
-	writel(0xffffffff, base + CCM_CGR2);
-
-	clks[ckih] = clk_fixed("ckih", 26000000);
-	clks[ckil] = clk_fixed("ckil", 32768);
-	clks[mpll] = imx_clk_pllv1("mpll", "ckih", base + CCM_MPCTL);
-	clks[spll] = imx_clk_pllv1("spll", "ckih", base + CCM_SRPCTL);
-	clks[upll] = imx_clk_pllv1("upll", "ckih", base + CCM_UPCTL);
-	clks[mcu_main] = imx_clk_mux("mcu_main", base + CCM_PMCR0, 31, 1,
-			mcu_main_sel, ARRAY_SIZE(mcu_main_sel));
-	clks[hsp] = imx_clk_divider("hsp", "mcu_main", base + CCM_PDR0, 11, 3);
-	clks[ahb] = imx_clk_divider("ahb", "mcu_main", base + CCM_PDR0, 3, 3);
-	clks[nfc] = imx_clk_divider("nfc", "ahb", base + CCM_PDR0, 8, 3);
-	clks[ipg] = imx_clk_divider("ipg", "ahb", base + CCM_PDR0, 6, 2);
-	clks[per_div] = imx_clk_divider("per_div", "upll", base + CCM_PDR0, 16, 5);
-	clks[per] = imx_clk_mux("per", base + CCM_CCMR, 24, 1, per_sel, ARRAY_SIZE(per_sel));
-
-	clkdev_add_physbase(clks[per], MX31_UART1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per], MX31_UART2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per], MX31_UART3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per], MX31_UART4_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per], MX31_UART5_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per], MX31_I2C1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per], MX31_I2C2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per], MX31_I2C3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg], MX31_CSPI1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg], MX31_CSPI2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg], MX31_CSPI3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per], MX31_SDHC1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per], MX31_SDHC2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per], MX31_GPT1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[hsp], MX31_IPU_CTRL_BASE_ADDR, NULL);
-
-	return 0;
-}
-
-static __maybe_unused struct of_device_id imx31_ccm_dt_ids[] = {
-	{
-		.compatible = "fsl,imx31-ccm",
-	}, {
-		/* sentinel */
-	}
-};
-
-static struct driver_d imx31_ccm_driver = {
-	.probe	= imx31_ccm_probe,
-	.name	= "imx31-ccm",
-	.of_compatible = DRV_OF_COMPAT(imx31_ccm_dt_ids),
-};
-
-static int imx31_ccm_init(void)
-{
-	return platform_driver_register(&imx31_ccm_driver);
-}
-core_initcall(imx31_ccm_init);
diff --git a/arch/arm/mach-imx/clk-imx35.c b/arch/arm/mach-imx/clk-imx35.c
deleted file mode 100644
index af6c405..0000000
--- a/arch/arm/mach-imx/clk-imx35.c
+++ /dev/null
@@ -1,219 +0,0 @@
-/*
- * Copyright (C) 2012 Sascha Hauer, Pengutronix <s.hauer@pengutronix.de>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- */
-#include <common.h>
-#include <init.h>
-#include <driver.h>
-#include <linux/clk.h>
-#include <io.h>
-#include <linux/clkdev.h>
-#include <linux/err.h>
-#include <mach/imx35-regs.h>
-#include <reset_source.h>
-
-#include "clk.h"
-
-#define CCM_CCMR	0x00
-#define CCM_PDR0	0x04
-#define CCM_PDR1	0x08
-#define CCM_PDR2	0x0C
-#define CCM_PDR3	0x10
-#define CCM_PDR4	0x14
-#define CCM_RCSR	0x18
-#define CCM_MPCTL	0x1C
-#define CCM_PPCTL	0x20
-#define CCM_ACMR	0x24
-#define CCM_COSR	0x28
-#define CCM_CGR0	0x2C
-#define CCM_CGR1	0x30
-#define CCM_CGR2	0x34
-#define CCM_CGR3	0x38
-
-struct arm_ahb_div {
-	unsigned char arm, ahb, sel;
-};
-
-static struct arm_ahb_div clk_consumer[] = {
-	{ .arm = 1, .ahb = 4, .sel = 0},
-	{ .arm = 1, .ahb = 3, .sel = 1},
-	{ .arm = 2, .ahb = 2, .sel = 0},
-	{ .arm = 0, .ahb = 0, .sel = 0},
-	{ .arm = 0, .ahb = 0, .sel = 0},
-	{ .arm = 0, .ahb = 0, .sel = 0},
-	{ .arm = 4, .ahb = 1, .sel = 0},
-	{ .arm = 1, .ahb = 5, .sel = 0},
-	{ .arm = 1, .ahb = 8, .sel = 0},
-	{ .arm = 1, .ahb = 6, .sel = 1},
-	{ .arm = 2, .ahb = 4, .sel = 0},
-	{ .arm = 0, .ahb = 0, .sel = 0},
-	{ .arm = 0, .ahb = 0, .sel = 0},
-	{ .arm = 0, .ahb = 0, .sel = 0},
-	{ .arm = 4, .ahb = 2, .sel = 0},
-	{ .arm = 0, .ahb = 0, .sel = 0},
-};
-
-static char hsp_div_532[] = { 4, 8, 3, 0 };
-static char hsp_div_400[] = { 3, 6, 3, 0 };
-
-enum mx35_clks {
-	ckih, mpll, ppll, mpll_075, arm, hsp, hsp_div, hsp_sel, ahb, ipg,
-	arm_per_div, ahb_per_div, ipg_per, uart_sel, uart_div, esdhc_sel,
-	esdhc1_div, esdhc2_div, esdhc3_div, spdif_sel, spdif_div_pre,
-	spdif_div_post, ssi_sel, ssi1_div_pre, ssi1_div_post, ssi2_div_pre,
-	ssi2_div_post, usb_sel, usb_div, nfc_div, asrc_gate, pata_gate,
-	audmux_gate, can1_gate, can2_gate, cspi1_gate, cspi2_gate, ect_gate,
-	edio_gate, emi_gate, epit1_gate, epit2_gate, esai_gate, esdhc1_gate,
-	esdhc2_gate, esdhc3_gate, fec_gate, gpio1_gate, gpio2_gate, gpio3_gate,
-	gpt_gate, i2c1_gate, i2c2_gate, i2c3_gate, iomuxc_gate, ipu_gate,
-	kpp_gate, mlb_gate, mshc_gate, owire_gate, pwm_gate, rngc_gate,
-	rtc_gate, rtic_gate, scc_gate, sdma_gate, spba_gate, spdif_gate,
-	ssi1_gate, ssi2_gate, uart1_gate, uart2_gate, uart3_gate, usbotg_gate,
-	wdog_gate, max_gate, admux_gate, csi_gate, iim_gate, gpu2d_gate,
-	clk_max
-};
-
-static struct clk *clks[clk_max];
-
-static const char *std_sel[] = {
-	"ppll",
-	"arm",
-};
-
-static const char *ipg_per_sel[] = {
-	"ahb_per_div",
-	"arm_per_div",
-};
-
-static int imx35_ccm_probe(struct device_d *dev)
-{
-	struct resource *iores;
-	u32 pdr0, consumer_sel, hsp_sel;
-	struct arm_ahb_div *aad;
-	unsigned char *hsp_div;
-	void __iomem *base;
-	u32 reg;
-
-	iores = dev_request_mem_resource(dev, 0);
-	if (IS_ERR(iores))
-		return PTR_ERR(iores);
-	base = IOMEM(iores->start);
-
-	/* Check reset source */
-	reg = readl(base + CCM_RCSR);
-
-	switch (reg & 0x0F) {
-	case 0x00:
-		reset_source_set_priority(RESET_POR, 200);
-		break;
-	case 0x02:
-		reset_source_set_priority(RESET_JTAG, 200);
-		break;
-	case 0x04:
-		reset_source_set_priority(RESET_RST, 200);
-		break;
-	case 0x08:
-		reset_source_set_priority(RESET_WDG, 200);
-		break;
-	}
-
-	writel(0xffffffff, base + CCM_CGR0);
-	writel(0xffffffff, base + CCM_CGR1);
-	writel(0xfbffffff, base + CCM_CGR2);
-	writel(0xffffffff, base + CCM_CGR3);
-
-	pdr0 = __raw_readl(base + CCM_PDR0);
-	consumer_sel = (pdr0 >> 16) & 0xf;
-	aad = &clk_consumer[consumer_sel];
-	if (!aad->arm) {
-		pr_err("i.MX35 clk: illegal consumer mux selection 0x%x\n", consumer_sel);
-		/*
-		 * We are basically stuck. Continue with a default entry and hope we
-		 * get far enough to actually show the above message
-		 */
-		aad = &clk_consumer[0];
-	}
-
-	clks[ckih] = clk_fixed("ckih", 24000000);
-	clks[mpll] = imx_clk_pllv1("mpll", "ckih", base + CCM_MPCTL);
-	clks[ppll] = imx_clk_pllv1("ppll", "ckih", base + CCM_PPCTL);
-
-	clks[mpll_075] = imx_clk_fixed_factor("mpll_075", "mpll", 3, 4);
-
-	if (aad->sel)
-		clks[arm] = imx_clk_fixed_factor("arm", "mpll_075", 1, aad->arm);
-	else
-		clks[arm] = imx_clk_fixed_factor("arm", "mpll", 1, aad->arm);
-
-	if (clk_get_rate(clks[arm]) > 400000000)
-		hsp_div = hsp_div_532;
-	else
-		hsp_div = hsp_div_400;
-
-	hsp_sel = (pdr0 >> 20) & 0x3;
-	if (!hsp_div[hsp_sel]) {
-		pr_err("i.MX35 clk: illegal hsp clk selection 0x%x\n", hsp_sel);
-		hsp_sel = 0;
-	}
-
-	clks[hsp] = imx_clk_fixed_factor("hsp", "arm", 1, hsp_div[hsp_sel]);
-
-	clks[ahb] = imx_clk_fixed_factor("ahb", "arm", 1, aad->ahb);
-	clks[ipg] = imx_clk_fixed_factor("ipg", "ahb", 1, 2);
-
-	clks[arm_per_div] = imx_clk_divider("arm_per_div", "arm", base + CCM_PDR4, 16, 6);
-	clks[ahb_per_div] = imx_clk_divider("ahb_per_div", "ahb", base + CCM_PDR0, 12, 3);
-	clks[ipg_per] = imx_clk_mux("ipg_per", base + CCM_PDR0, 26, 1, ipg_per_sel, ARRAY_SIZE(ipg_per_sel));
-
-	clks[uart_sel] = imx_clk_mux("uart_sel", base + CCM_PDR3, 14, 1, std_sel, ARRAY_SIZE(std_sel));
-	clks[uart_div] = imx_clk_divider("uart_div", "uart_sel", base + CCM_PDR4, 10, 6);
-
-	clks[esdhc_sel] = imx_clk_mux("esdhc_sel", base + CCM_PDR4, 9, 1, std_sel, ARRAY_SIZE(std_sel));
-	clks[esdhc1_div] = imx_clk_divider("esdhc1_div", "esdhc_sel", base + CCM_PDR3, 0, 6);
-	clks[esdhc2_div] = imx_clk_divider("esdhc2_div", "esdhc_sel", base + CCM_PDR3, 8, 6);
-	clks[esdhc3_div] = imx_clk_divider("esdhc3_div", "esdhc_sel", base + CCM_PDR3, 16, 6);
-
-	clks[usb_sel] = imx_clk_mux("usb_sel", base + CCM_PDR4, 9, 1, std_sel, ARRAY_SIZE(std_sel));
-	clks[usb_div] = imx_clk_divider("usb_div", "usb_sel", base + CCM_PDR4, 22, 6);
-
-	clkdev_add_physbase(clks[uart_div], MX35_UART1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[uart_div], MX35_UART2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[uart_div], MX35_UART3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg_per], MX35_I2C1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg_per], MX35_I2C2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg_per], MX35_I2C3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg], MX35_CSPI1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg], MX35_CSPI2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg], MX35_FEC_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg], MX35_GPT1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[esdhc1_div], MX35_ESDHC1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[esdhc2_div], MX35_ESDHC2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[esdhc3_div], MX35_ESDHC3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[hsp], MX35_IPU_CTRL_BASE_ADDR, NULL);
-
-	return 0;
-}
-
-static __maybe_unused struct of_device_id imx35_ccm_dt_ids[] = {
-	{
-		.compatible = "fsl,imx35-ccm",
-	}, {
-		/* sentinel */
-	}
-};
-
-static struct driver_d imx35_ccm_driver = {
-	.probe	= imx35_ccm_probe,
-	.name	= "imx35-ccm",
-	.of_compatible = DRV_OF_COMPAT(imx35_ccm_dt_ids),
-};
-
-static int imx35_ccm_init(void)
-{
-	return platform_driver_register(&imx35_ccm_driver);
-}
-core_initcall(imx35_ccm_init);
diff --git a/arch/arm/mach-imx/clk-imx5.c b/arch/arm/mach-imx/clk-imx5.c
deleted file mode 100644
index c4c47a6..0000000
--- a/arch/arm/mach-imx/clk-imx5.c
+++ /dev/null
@@ -1,533 +0,0 @@
-/*
- * Copyright (C) 2011 Sascha Hauer, Pengutronix <s.hauer@pengutronix.de>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- */
-#include <common.h>
-#include <init.h>
-#include <driver.h>
-#include <linux/clk.h>
-#include <io.h>
-#include <of.h>
-#include <linux/clkdev.h>
-#include <linux/err.h>
-#include <mach/imx50-regs.h>
-#include <mach/imx51-regs.h>
-#include <mach/imx53-regs.h>
-#include <dt-bindings/clock/imx5-clock.h>
-
-#include "clk.h"
-
-/* Register addresses of CCM*/
-#define CCM_CCR		0x00
-#define CCM_CCDR	0x04
-#define CCM_CSR		0x08
-#define CCM_CCSR	0x0C
-#define CCM_CACRR	0x10
-#define CCM_CBCDR	0x14
-#define CCM_CBCMR	0x18
-#define CCM_CSCMR1	0x1C
-#define CCM_CSCMR2	0x20
-#define CCM_CSCDR1	0x24
-#define CCM_CS1CDR	0x28
-#define CCM_CS2CDR	0x2C
-#define CCM_CDCDR	0x30
-#define CCM_CHSCDR	0x34
-#define CCM_CSCDR2	0x38
-#define CCM_CSCDR3	0x3C
-#define CCM_CSCDR4	0x40
-#define CCM_CWDR	0x44
-#define CCM_CDHIPR	0x48
-#define CCM_CDCR	0x4C
-#define CCM_CTOR	0x50
-#define CCM_CLPCR	0x54
-#define CCM_CISR	0x58
-#define CCM_CIMR	0x5C
-#define CCM_CCOSR	0x60
-#define CCM_CGPR	0x64
-#define CCM_CCGR0	0x68
-#define CCM_CCGR1	0x6C
-#define CCM_CCGR2	0x70
-#define CCM_CCGR3	0x74
-#define CCM_CCGR4	0x78
-#define CCM_CCGR5	0x7C
-#define CCM_CCGR6	0x80
-#define CCM_CCGR7	0x84
-
-#define CCM_CMEOR	0x84
-
-static struct clk *clks[IMX5_CLK_END];
-
-/* This is used multiple times */
-static const char *standard_pll_sel[] = {
-	"pll1_sw",
-	"pll2_sw",
-	"pll3_sw",
-	"lp_apm",
-};
-
-static const char *mx50_3bit_clk_sel[] = {
-	"pll1_sw",
-	"pll2_sw",
-	"pll3_sw",
-	"lp_apm",
-	"pfd0",
-	"pfd1",
-	"pfd4",
-	"osc",
-};
-
-static const char *lp_apm_sel[] = {
-	"osc",
-};
-
-static const char *periph_apm_sel[] = {
-	"pll1_sw",
-	"pll3_sw",
-	"lp_apm",
-};
-
-static const char *main_bus_sel[] = {
-	"pll2_sw",
-	"periph_apm",
-};
-
-static const char *mx50_periph_clk_sel[] = {
-	"pll1_sw",
-	"pll2_sw",
-	"pll3_sw",
-	"lp_apm",
-};
-
-static const char *per_lp_apm_sel[] = {
-	"main_bus",
-	"lp_apm",
-};
-
-static const char *per_root_sel[] = {
-	"per_podf",
-	"ipg",
-};
-
-static const char *esdhc_c_sel[] = {
-	"esdhc_a_podf",
-	"esdhc_b_podf",
-};
-
-static const char *esdhc_d_sel[] = {
-	"esdhc_a_podf",
-	"esdhc_b_podf",
-};
-
-static const char *emi_slow_sel[] = {
-	"main_bus",
-	"ahb",
-};
-
-static const char *usb_phy_sel_str[] = {
-	"osc",
-	"usb_phy_podf",
-};
-
-static const char *mx51_ipu_di0_sel[] = {
-	"di_pred",
-	"osc",
-	"ckih1",
-	"tve_di",
-};
-
-static const char *mx53_ipu_di0_sel[] = {
-	"di_pred",
-	"osc",
-	"ckih1",
-	"di_pll4_podf",
-	"dummy",
-	"ldb_di0_div",
-};
-
-static const char *mx53_ldb_di0_sel[] = {
-	"pll3_sw",
-	"pll4_sw",
-};
-
-static const char *mx51_ipu_di1_sel[] = {
-	"di_pred",
-	"osc",
-	"ckih1",
-	"tve_di",
-	"ipp_di1",
-};
-
-static const char *mx53_ipu_di1_sel[] = {
-	"di_pred",
-	"osc",
-	"ckih1",
-	"tve_di",
-	"ipp_di1",
-	"ldb_di1_div",
-};
-
-static const char *mx53_ldb_di1_sel[] = {
-	"pll3_sw",
-	"pll4_sw",
-};
-
-static const char *mx51_tve_ext_sel[] = {
-	"osc",
-	"ckih1",
-};
-
-static const char *mx53_tve_ext_sel[] = {
-	"pll4_sw",
-	"ckih1",
-};
-
-static const char *mx51_tve_sel[] = {
-	"tve_pred",
-	"tve_ext_sel",
-};
-
-static const char *ipu_sel[] = {
-	"axi_a",
-	"axi_b",
-	"emi_slow_gate",
-	"ahb",
-};
-
-static void __init mx5_clocks_common_init(struct device_d *dev, void __iomem *base)
-{
-	writel(0xffffffff, base + CCM_CCGR0);
-	writel(0xffffffff, base + CCM_CCGR1);
-	writel(0xffffffff, base + CCM_CCGR2);
-	writel(0xffffffff, base + CCM_CCGR3);
-	writel(0xffffffff, base + CCM_CCGR4);
-	writel(0xffffffff, base + CCM_CCGR5);
-	writel(0xffffffff, base + CCM_CCGR6);
-	writel(0xffffffff, base + CCM_CCGR7);
-
-	if (!IS_ENABLED(CONFIG_COMMON_CLK_OF_PROVIDER) || !dev->device_node) {
-		clks[IMX5_CLK_CKIL] = clk_fixed("ckil", 32768);
-		clks[IMX5_CLK_OSC] = clk_fixed("osc", 24000000);
-	}
-
-	clks[IMX5_CLK_PER_LP_APM] = imx_clk_mux("per_lp_apm", base + CCM_CBCMR, 1, 1,
-				per_lp_apm_sel, ARRAY_SIZE(per_lp_apm_sel));
-	clks[IMX5_CLK_PER_PRED1] = imx_clk_divider("per_pred1", "per_lp_apm", base + CCM_CBCDR, 6, 2);
-	clks[IMX5_CLK_PER_PRED2] = imx_clk_divider("per_pred2", "per_pred1", base + CCM_CBCDR, 3, 3);
-	clks[IMX5_CLK_PER_PODF] = imx_clk_divider("per_podf", "per_pred2", base + CCM_CBCDR, 0, 3);
-	clks[IMX5_CLK_PER_ROOT] = imx_clk_mux("per_root", base + CCM_CBCMR, 0, 1,
-				per_root_sel, ARRAY_SIZE(per_root_sel));
-	clks[IMX5_CLK_AHB] = imx_clk_divider("ahb", "main_bus", base + CCM_CBCDR, 10, 3);
-	clks[IMX5_CLK_IPG] = imx_clk_divider("ipg", "ahb", base + CCM_CBCDR, 8, 2);
-	clks[IMX5_CLK_AXI_A] = imx_clk_divider("axi_a", "main_bus", base + CCM_CBCDR, 16, 3);
-	clks[IMX5_CLK_AXI_B] = imx_clk_divider("axi_b", "main_bus", base + CCM_CBCDR, 19, 3);
-	clks[IMX5_CLK_UART_SEL] = imx_clk_mux("uart_sel", base + CCM_CSCMR1, 24, 2,
-				standard_pll_sel, ARRAY_SIZE(standard_pll_sel));
-	clks[IMX5_CLK_UART_PRED] = imx_clk_divider("uart_pred", "uart_sel", base + CCM_CSCDR1, 3, 3);
-	clks[IMX5_CLK_UART_ROOT] = imx_clk_divider("uart_root", "uart_pred", base + CCM_CSCDR1, 0, 3);
-	clks[IMX5_CLK_ESDHC_A_PRED] = imx_clk_divider("esdhc_a_pred",
-		"esdhc_a_sel", base + CCM_CSCDR1, 16, 3);
-	clks[IMX5_CLK_ESDHC_A_PODF] = imx_clk_divider("esdhc_a_podf",
-		"esdhc_a_pred", base + CCM_CSCDR1, 11, 3);
-	clks[IMX5_CLK_ESDHC_B_PRED] = imx_clk_divider("esdhc_b_pred",
-		"esdhc_b_sel", base + CCM_CSCDR1, 22, 3);
-	clks[IMX5_CLK_ESDHC_B_PODF] = imx_clk_divider("esdhc_b_podf",
-		"esdhc_b_pred", base + CCM_CSCDR1, 19, 3);
-	clks[IMX5_CLK_ECSPI_SEL] = imx_clk_mux("ecspi_sel", base + CCM_CSCMR1,
-		4, 2, standard_pll_sel, ARRAY_SIZE(standard_pll_sel));
-	clks[IMX5_CLK_ECSPI_PRED] = imx_clk_divider("ecspi_pred",
-		"ecspi_sel", base + CCM_CSCDR2, 25, 3);
-	clks[IMX5_CLK_ECSPI_PODF] = imx_clk_divider("ecspi_podf",
-		"ecspi_pred", base + CCM_CSCDR2, 19, 6);
-	clks[IMX5_CLK_CPU_PODF] = imx_clk_divider("cpu_podf",
-		"pll1_sw", base + CCM_CACRR, 0, 3);
-}
-
-static void mx5_clocks_mx51_mx53_init(void __iomem *base)
-{
-	clks[IMX5_CLK_LP_APM] = imx_clk_mux("lp_apm", base + CCM_CCSR, 9, 1,
-				lp_apm_sel, ARRAY_SIZE(lp_apm_sel));
-	clks[IMX5_CLK_PERIPH_APM] = imx_clk_mux("periph_apm", base + CCM_CBCMR, 12, 2,
-				periph_apm_sel, ARRAY_SIZE(periph_apm_sel));
-	clks[IMX5_CLK_MAIN_BUS] = imx_clk_mux("main_bus", base + CCM_CBCDR, 25, 1,
-				main_bus_sel, ARRAY_SIZE(main_bus_sel));
-	clks[IMX5_CLK_ESDHC_A_SEL] = imx_clk_mux("esdhc_a_sel", base + CCM_CSCMR1, 20, 2,
-				standard_pll_sel, ARRAY_SIZE(standard_pll_sel));
-	clks[IMX5_CLK_ESDHC_B_SEL] = imx_clk_mux("esdhc_b_sel", base + CCM_CSCMR1, 16, 2,
-				standard_pll_sel, ARRAY_SIZE(standard_pll_sel));
-	clks[IMX5_CLK_ESDHC_C_SEL] = imx_clk_mux("esdhc_c_sel", base + CCM_CSCMR1, 19, 1, esdhc_c_sel, ARRAY_SIZE(esdhc_c_sel));
-	clks[IMX5_CLK_ESDHC_D_SEL] = imx_clk_mux("esdhc_d_sel", base + CCM_CSCMR1, 18, 1, esdhc_d_sel, ARRAY_SIZE(esdhc_d_sel));
-	clks[IMX5_CLK_EMI_SEL] = imx_clk_mux("emi_sel", base + CCM_CBCDR, 26, 1,
-				emi_slow_sel, ARRAY_SIZE(emi_slow_sel));
-	clks[IMX5_CLK_EMI_SLOW_PODF] = imx_clk_divider("emi_slow_podf", "emi_sel", base + CCM_CBCDR, 22, 3);
-	clks[IMX5_CLK_NFC_PODF] = imx_clk_divider("nfc_podf", "emi_slow_podf", base + CCM_CBCDR, 13, 3);
-	clks[IMX5_CLK_USBOH3_SEL] = imx_clk_mux("usboh3_sel", base + CCM_CSCMR1, 22, 2,
-				standard_pll_sel, ARRAY_SIZE(standard_pll_sel));
-	clks[IMX5_CLK_USBOH3_PRED] = imx_clk_divider("usboh3_pred", "usboh3_sel", base + CCM_CSCDR1, 8, 3);
-	clks[IMX5_CLK_USBOH3_PODF] = imx_clk_divider("usboh3_podf", "usboh3_pred", base + CCM_CSCDR1, 6, 2);
-	clks[IMX5_CLK_USB_PHY_PRED] = imx_clk_divider("usb_phy_pred", "pll3_sw", base + CCM_CDCDR, 3, 3);
-	clks[IMX5_CLK_USB_PHY_PODF] = imx_clk_divider("usb_phy_podf", "usb_phy_pred", base + CCM_CDCDR, 0, 3);
-	clks[IMX5_CLK_USB_PHY_SEL] = imx_clk_mux("usb_phy_sel", base + CCM_CSCMR1, 26, 1,
-				usb_phy_sel_str, ARRAY_SIZE(usb_phy_sel_str));
-}
-
-static void mx5_clocks_ipu_init(void __iomem *regs)
-{
-	clks[IMX5_CLK_IPU_SEL]		= imx_clk_mux("ipu_sel", regs + CCM_CBCMR, 6, 2, ipu_sel, ARRAY_SIZE(ipu_sel));
-}
-
-int __init mx50_clocks_init(struct device_d *dev, void __iomem *regs)
-{
-	clks[IMX5_CLK_PLL1_SW] = imx_clk_pllv2("pll1_sw", "osc",
-					       (void *)MX50_PLL1_BASE_ADDR);
-	clks[IMX5_CLK_PLL2_SW] = imx_clk_pllv2("pll2_sw", "osc",
-					       (void *)MX50_PLL2_BASE_ADDR);
-	clks[IMX5_CLK_PLL3_SW] = imx_clk_pllv2("pll3_sw", "osc",
-					       (void *)MX50_PLL3_BASE_ADDR);
-
-	mx5_clocks_common_init(dev, regs);
-
-	clks[IMX5_CLK_LP_APM] = imx_clk_mux("lp_apm", regs + CCM_CCSR, 10, 1, lp_apm_sel, ARRAY_SIZE(lp_apm_sel));
-	clks[IMX5_CLK_MAIN_BUS] = imx_clk_mux("main_bus", regs + CCM_CBCDR, 25, 2, mx50_periph_clk_sel, ARRAY_SIZE(mx50_periph_clk_sel));
-	clks[IMX5_CLK_ESDHC_A_SEL] = imx_clk_mux("esdhc_a_sel", regs + CCM_CSCMR1, 21, 2, standard_pll_sel, ARRAY_SIZE(standard_pll_sel));
-	clks[IMX5_CLK_ESDHC_B_SEL] = imx_clk_mux("esdhc_b_sel", regs + CCM_CSCMR1, 16, 3, mx50_3bit_clk_sel, ARRAY_SIZE(mx50_3bit_clk_sel));
-	clks[IMX5_CLK_ESDHC_C_SEL] = imx_clk_mux("esdhc_c_sel", regs + CCM_CSCMR1, 20, 1, esdhc_c_sel, ARRAY_SIZE(esdhc_c_sel));
-	clks[IMX5_CLK_ESDHC_D_SEL] = imx_clk_mux("esdhc_d_sel", regs + CCM_CSCMR1, 19, 1, esdhc_d_sel, ARRAY_SIZE(esdhc_d_sel));
-	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX50_UART1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX50_UART2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX50_UART3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX50_I2C1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX50_I2C2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX50_I2C3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX50_GPT1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_IPG], MX50_CSPI_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_ECSPI_PODF], MX50_ECSPI1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_ECSPI_PODF], MX50_ECSPI2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_IPG], MX50_FEC_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_A_PODF], MX50_ESDHC1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_C_SEL], MX50_ESDHC2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_B_PODF], MX50_ESDHC3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_D_SEL], MX50_ESDHC4_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX50_PWM1_BASE_ADDR, "per");
-	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX50_PWM2_BASE_ADDR, "per");
-
-	return 0;
-}
-
-static int imx50_ccm_probe(struct device_d *dev)
-{
-	struct resource *iores;
-	void __iomem *regs;
-
-	iores = dev_request_mem_resource(dev, 0);
-	if (IS_ERR(iores))
-		return PTR_ERR(iores);
-	regs = IOMEM(iores->start);
-
-	mx50_clocks_init(dev, regs);
-
-	return 0;
-}
-
-static __maybe_unused struct of_device_id imx50_ccm_dt_ids[] = {
-	{
-		.compatible = "fsl,imx50-ccm",
-	}, {
-		/* sentinel */
-	}
-};
-
-static struct driver_d imx50_ccm_driver = {
-	.probe	= imx50_ccm_probe,
-	.name	= "imx50-ccm",
-	.of_compatible = DRV_OF_COMPAT(imx50_ccm_dt_ids),
-};
-
-static void mx51_clocks_ipu_init(void __iomem *regs)
-{
-	clks[IMX5_CLK_IPU_DI0_SEL]	= imx_clk_mux_p("ipu_di0_sel", regs + CCM_CSCMR2, 26, 3,
-						mx51_ipu_di0_sel, ARRAY_SIZE(mx51_ipu_di0_sel));
-	clks[IMX5_CLK_IPU_DI1_SEL]	= imx_clk_mux_p("ipu_di1_sel", regs + CCM_CSCMR2, 29, 3,
-						mx51_ipu_di1_sel, ARRAY_SIZE(mx51_ipu_di1_sel));
-	clks[IMX5_CLK_TVE_EXT_SEL]	= imx_clk_mux_p("tve_ext_sel", regs + CCM_CSCMR1, 6, 1,
-						mx51_tve_ext_sel, ARRAY_SIZE(mx51_tve_ext_sel));
-	clks[IMX5_CLK_TVE_SEL]		= imx_clk_mux("tve_sel", regs + CCM_CSCMR1, 7, 1,
-						mx51_tve_sel, ARRAY_SIZE(mx51_tve_sel));
-	clks[IMX5_CLK_TVE_PRED]		= imx_clk_divider("tve_pred", "pll3_sw", regs + CCM_CDCDR, 28, 3);
-
-	mx5_clocks_ipu_init(regs);
-
-	clkdev_add_physbase(clks[IMX5_CLK_IPU_SEL], MX51_IPU_BASE_ADDR, "bus");
-	clkdev_add_physbase(clks[IMX5_CLK_IPU_DI0_SEL], MX51_IPU_BASE_ADDR, "di0");
-	clkdev_add_physbase(clks[IMX5_CLK_IPU_DI1_SEL], MX51_IPU_BASE_ADDR, "di1");
-}
-
-int __init mx51_clocks_init(struct device_d *dev, void __iomem *regs)
-{
-	clks[IMX5_CLK_PLL1_SW] = imx_clk_pllv2("pll1_sw", "osc", (void *)MX51_PLL1_BASE_ADDR);
-	clks[IMX5_CLK_PLL2_SW] = imx_clk_pllv2("pll2_sw", "osc", (void *)MX51_PLL2_BASE_ADDR);
-	clks[IMX5_CLK_PLL3_SW] = imx_clk_pllv2("pll3_sw", "osc", (void *)MX51_PLL3_BASE_ADDR);
-
-	mx5_clocks_common_init(dev, regs);
-	mx5_clocks_mx51_mx53_init(regs);
-
-	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX51_UART1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX51_UART2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX51_UART3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX51_I2C1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX51_I2C2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX51_GPT1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_IPG], MX51_CSPI_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_ECSPI_PODF], MX51_ECSPI1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_ECSPI_PODF], MX51_ECSPI2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_IPG], MX51_MXC_FEC_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_A_PODF], MX51_MMC_SDHC1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_B_PODF], MX51_MMC_SDHC2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_C_SEL], MX51_MMC_SDHC3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_D_SEL], MX51_MMC_SDHC4_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_IPG], MX51_ATA_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX51_PWM1_BASE_ADDR, "per");
-	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX51_PWM2_BASE_ADDR, "per");
-
-	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_IMX_IPUV3))
-		mx51_clocks_ipu_init(regs);
-
-	return 0;
-}
-
-static int imx51_ccm_probe(struct device_d *dev)
-{
-	struct resource *iores;
-	void __iomem *regs;
-
-	iores = dev_request_mem_resource(dev, 0);
-	if (IS_ERR(iores))
-		return PTR_ERR(iores);
-	regs = IOMEM(iores->start);
-
-	mx51_clocks_init(dev, regs);
-
-	return 0;
-}
-
-static __maybe_unused struct of_device_id imx51_ccm_dt_ids[] = {
-	{
-		.compatible = "fsl,imx51-ccm",
-	}, {
-		/* sentinel */
-	}
-};
-
-static struct driver_d imx51_ccm_driver = {
-	.probe	= imx51_ccm_probe,
-	.name	= "imx51-ccm",
-	.of_compatible = DRV_OF_COMPAT(imx51_ccm_dt_ids),
-};
-
-static void mx53_clocks_ipu_init(void __iomem *regs)
-{
-	clks[IMX5_CLK_LDB_DI1_DIV_3_5]	= imx_clk_fixed_factor("ldb_di1_div_3_5", "ldb_di1_sel", 2, 7);
-	clks[IMX5_CLK_LDB_DI1_DIV]	= imx_clk_divider_np("ldb_di1_div", "ldb_di1_div_3_5", regs + CCM_CSCMR2, 11, 1);
-	clks[IMX5_CLK_LDB_DI1_SEL]	= imx_clk_mux_p("ldb_di1_sel", regs + CCM_CSCMR2, 9, 1,
-						mx53_ldb_di1_sel, ARRAY_SIZE(mx53_ldb_di1_sel));
-	clks[IMX5_CLK_DI_PLL4_PODF]	= imx_clk_divider("di_pll4_podf", "pll4_sw", regs + CCM_CDCDR, 16, 3);
-	clks[IMX5_CLK_LDB_DI0_DIV_3_5]	= imx_clk_fixed_factor("ldb_di0_div_3_5", "ldb_di0_sel", 2, 7);
-	clks[IMX5_CLK_LDB_DI0_DIV]	= imx_clk_divider("ldb_di0_div", "ldb_di0_div_3_5", regs + CCM_CSCMR2, 10, 1);
-	clks[IMX5_CLK_LDB_DI0_SEL]	= imx_clk_mux_p("ldb_di0_sel", regs + CCM_CSCMR2, 8, 1,
-						mx53_ldb_di0_sel, ARRAY_SIZE(mx53_ldb_di0_sel));
-	clks[IMX5_CLK_IPU_DI0_SEL]	= imx_clk_mux_p("ipu_di0_sel", regs + CCM_CSCMR2, 26, 3,
-						mx53_ipu_di0_sel, ARRAY_SIZE(mx53_ipu_di0_sel));
-	clks[IMX5_CLK_IPU_DI1_SEL]	= imx_clk_mux_p("ipu_di1_sel", regs + CCM_CSCMR2, 29, 3,
-						mx53_ipu_di1_sel, ARRAY_SIZE(mx53_ipu_di1_sel));
-	clks[IMX5_CLK_TVE_EXT_SEL]	= imx_clk_mux_p("tve_ext_sel", regs + CCM_CSCMR1, 6, 1,
-						mx53_tve_ext_sel, ARRAY_SIZE(mx53_tve_ext_sel));
-	clks[IMX5_CLK_TVE_PRED]		= imx_clk_divider("tve_pred", "tve_ext_sel", regs + CCM_CDCDR, 28, 3);
-
-	mx5_clocks_ipu_init(regs);
-
-	clkdev_add_physbase(clks[IMX5_CLK_IPU_SEL], MX53_IPU_BASE_ADDR, "bus");
-	clkdev_add_physbase(clks[IMX5_CLK_IPU_DI0_SEL], MX53_IPU_BASE_ADDR, "di0");
-	clkdev_add_physbase(clks[IMX5_CLK_IPU_DI1_SEL], MX53_IPU_BASE_ADDR, "di1");
-}
-
-int __init mx53_clocks_init(struct device_d *dev, void __iomem *regs)
-{
-	clks[IMX5_CLK_PLL1_SW] = imx_clk_pllv2("pll1_sw", "osc", (void *)MX53_PLL1_BASE_ADDR);
-	clks[IMX5_CLK_PLL2_SW] = imx_clk_pllv2("pll2_sw", "osc", (void *)MX53_PLL2_BASE_ADDR);
-	clks[IMX5_CLK_PLL3_SW] = imx_clk_pllv2("pll3_sw", "osc", (void *)MX53_PLL3_BASE_ADDR);
-	clks[IMX5_CLK_PLL4_SW] = imx_clk_pllv2("pll4_sw", "osc", (void *)MX53_PLL4_BASE_ADDR);
-
-	mx5_clocks_common_init(dev, regs);
-	mx5_clocks_mx51_mx53_init(regs);
-
-	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX53_UART1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX53_UART2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX53_UART3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX53_UART4_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX53_UART5_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX53_I2C1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX53_I2C2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX53_I2C3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX53_GPT1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_IPG], MX53_CSPI_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_ECSPI_PODF], MX53_ECSPI1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_ECSPI_PODF], MX53_ECSPI2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_IPG], MX53_FEC_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_A_PODF], MX53_ESDHC1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_C_SEL], MX53_ESDHC2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_B_PODF], MX53_ESDHC3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_D_SEL], MX53_ESDHC4_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_AHB], MX53_SATA_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX53_PWM1_BASE_ADDR, "per");
-	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX53_PWM2_BASE_ADDR, "per");
-
-	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_IMX_IPUV3))
-		mx53_clocks_ipu_init(regs);
-
-	return 0;
-}
-
-static int imx53_ccm_probe(struct device_d *dev)
-{
-	struct resource *iores;
-	void __iomem *regs;
-
-	iores = dev_request_mem_resource(dev, 0);
-	if (IS_ERR(iores))
-		return PTR_ERR(iores);
-	regs = IOMEM(iores->start);
-
-	mx53_clocks_init(dev, regs);
-
-	return 0;
-}
-
-static __maybe_unused struct of_device_id imx53_ccm_dt_ids[] = {
-	{
-		.compatible = "fsl,imx53-ccm",
-	}, {
-		/* sentinel */
-	}
-};
-
-static struct driver_d imx53_ccm_driver = {
-	.probe	= imx53_ccm_probe,
-	.name	= "imx53-ccm",
-	.of_compatible = DRV_OF_COMPAT(imx53_ccm_dt_ids),
-};
-
-static int imx5_ccm_init(void)
-{
-	if (IS_ENABLED(CONFIG_ARCH_IMX50))
-		platform_driver_register(&imx50_ccm_driver);
-	if (IS_ENABLED(CONFIG_ARCH_IMX51))
-		platform_driver_register(&imx51_ccm_driver);
-	if (IS_ENABLED(CONFIG_ARCH_IMX53))
-		platform_driver_register(&imx53_ccm_driver);
-
-	return 0;
-}
-core_initcall(imx5_ccm_init);
diff --git a/arch/arm/mach-imx/clk-imx6.c b/arch/arm/mach-imx/clk-imx6.c
deleted file mode 100644
index 8ac43be..0000000
--- a/arch/arm/mach-imx/clk-imx6.c
+++ /dev/null
@@ -1,541 +0,0 @@
-/*
- * Copyright 2011 Freescale Semiconductor, Inc.
- * Copyright 2011 Linaro Ltd.
- *
- * The code contained herein is licensed under the GNU General Public
- * License. You may obtain a copy of the GNU General Public License
- * Version 2 or later at the following locations:
- *
- * http://www.opensource.org/licenses/gpl-license.html
- * http://www.gnu.org/copyleft/gpl.html
- */
-
-#include <common.h>
-#include <init.h>
-#include <driver.h>
-#include <linux/clk.h>
-#include <io.h>
-#include <of.h>
-#include <linux/clkdev.h>
-#include <linux/err.h>
-#include <mach/imx6-regs.h>
-#include <mach/revision.h>
-#include <mach/imx6.h>
-#include <dt-bindings/clock/imx6qdl-clock.h>
-
-#include "clk.h"
-
-#define CCGR0				0x68
-#define CCGR1				0x6c
-#define CCGR2				0x70
-#define CCGR3				0x74
-#define CCGR4				0x78
-#define CCGR5				0x7c
-#define CCGR6				0x80
-#define CCGR7				0x84
-
-#define CLPCR				0x54
-#define BP_CLPCR_LPM			0
-#define BM_CLPCR_LPM			(0x3 << 0)
-#define BM_CLPCR_BYPASS_PMIC_READY	(0x1 << 2)
-#define BM_CLPCR_ARM_CLK_DIS_ON_LPM	(0x1 << 5)
-#define BM_CLPCR_SBYOS			(0x1 << 6)
-#define BM_CLPCR_DIS_REF_OSC		(0x1 << 7)
-#define BM_CLPCR_VSTBY			(0x1 << 8)
-#define BP_CLPCR_STBY_COUNT		9
-#define BM_CLPCR_STBY_COUNT		(0x3 << 9)
-#define BM_CLPCR_COSC_PWRDOWN		(0x1 << 11)
-#define BM_CLPCR_WB_PER_AT_LPM		(0x1 << 16)
-#define BM_CLPCR_WB_CORE_AT_LPM		(0x1 << 17)
-#define BM_CLPCR_BYP_MMDC_CH0_LPM_HS	(0x1 << 19)
-#define BM_CLPCR_BYP_MMDC_CH1_LPM_HS	(0x1 << 21)
-#define BM_CLPCR_MASK_CORE0_WFI		(0x1 << 22)
-#define BM_CLPCR_MASK_CORE1_WFI		(0x1 << 23)
-#define BM_CLPCR_MASK_CORE2_WFI		(0x1 << 24)
-#define BM_CLPCR_MASK_CORE3_WFI		(0x1 << 25)
-#define BM_CLPCR_MASK_SCU_IDLE		(0x1 << 26)
-#define BM_CLPCR_MASK_L2CC_IDLE		(0x1 << 27)
-
-static struct clk *clks[IMX6QDL_CLK_END];
-static struct clk_onecell_data clk_data;
-
-static const char *step_sels[] = {
-	"osc",
-	"pll2_pfd2_396m",
-};
-
-static const char *pll1_sw_sels[] = {
-	"pll1_sys",
-	"step",
-};
-
-static const char *periph_pre_sels[] = {
-	"pll2_bus",
-	"pll2_pfd2_396m",
-	"pll2_pfd0_352m",
-	"pll2_198m",
-};
-
-static const char *periph_clk2_sels[] = {
-	"pll3_usb_otg",
-	"osc",
-};
-
-static const char *periph_sels[] = {
-	"periph_pre",
-	"periph_clk2",
-};
-
-static const char *periph2_sels[] = {
-	"periph2_pre",
-	"periph2_clk2",
-};
-
-static const char *axi_sels[] = {
-	"periph",
-	"pll2_pfd2_396m",
-	"pll3_pfd1_540m",
-};
-
-static const char *usdhc_sels[] = {
-	"pll2_pfd2_396m",
-	"pll2_pfd0_352m",
-};
-
-static const char *enfc_sels[]	= {
-	"pll2_pfd0_352m",
-	"pll2_bus",
-	"pll3_usb_otg",
-	"pll2_pfd2_396m",
-};
-
-static const char *eim_sels[] = {
-	"axi",
-	"pll3_usb_otg",
-	"pll2_pfd2_396m",
-	"pll2_pfd0_352m",
-};
-
-static const char *vdo_axi_sels[] = {
-	"axi",
-	"ahb",
-};
-
-static const char *cko_sels[] = {
-	"cko1",
-	"cko2",
-};
-
-static const char *cko1_sels[] = {
-	"pll3_usb_otg",
-	"pll2_bus",
-	"pll1_sys",
-	"pll5_video",
-	"dummy",
-	"axi",
-	"enfc",
-	"ipu1_di0",
-	"ipu1_di1",
-	"ipu2_di0",
-	"ipu2_di1",
-	"ahb",
-	"ipg",
-	"ipg_per",
-	"ckil",
-	"pll4_audio",
-};
-
-static const char *cko2_sels[] = {
-	"mmdc_ch0_axi",
-	"mmdc_ch1_axi",
-	"usdhc4",
-	"usdhc1",
-	"gpu2d_axi",
-	"dummy",
-	"ecspi_root",
-	"gpu3d_axi",
-	"usdhc3",
-	"dummy",
-	"arm",
-	"ipu1",
-	"ipu2",
-	"vdo_axi",
-	"osc",
-	"gpu2d_core",
-	"gpu3d_core",
-	"usdhc2",
-	"ssi1",
-	"ssi2",
-	"ssi3",
-	"gpu3d_shader",
-	"vpu_axi",
-	"can_root",
-	"ldb_di0",
-	"ldb_di1",
-	"esai",
-	"eim_slow",
-	"uart_serial",
-	"spdif",
-	"asrc",
-	"hsi_tx",
-};
-
-static const char *ipu_sels[] = {
-	"mmdc_ch0_axi_podf",
-	"pll2_pfd2_396m",
-	"pll3_120m",
-	"pll3_pfd1_540m",
-};
-
-static const char *ldb_di_sels[] = {
-	"pll5_video_div",
-	"pll2_pfd0_352m",
-	"pll2_pfd2_396m",
-	"mmdc_ch1_axi_podf",
-	"pll3_usb_otg",
-};
-
-static const char *ipu_di_pre_sels[] = {
-	"mmdc_ch0_axi",
-	"pll3_usb_otg",
-	"pll5_video_div",
-	"pll2_pfd0_352m",
-	"pll2_pfd2_396m",
-	"pll3_pfd1_540m",
-};
-
-static const char *ipu1_di0_sels[] = {
-	"ipu1_di0_pre",
-	"dummy",
-	"dummy",
-	"ldb_di0_podf",
-	"ldb_di1_podf",
-};
-
-static const char *ipu1_di1_sels[] = {
-	"ipu1_di1_pre",
-	"dummy",
-	"dummy",
-	"ldb_di0_podf",
-	"ldb_di1_podf",
-};
-
-static const char *ipu2_di0_sels[] = {
-	"ipu2_di0_pre",
-	"dummy",
-	"dummy",
-	"ldb_di0_podf",
-	"ldb_di1_podf",
-};
-
-static const char *ipu2_di1_sels[] = {
-	"ipu2_di1_pre",
-	"dummy",
-	"dummy",
-	"ldb_di0_podf",
-	"ldb_di1_podf",
-};
-
-static const char *lvds_sels[] = {
-	"dummy",
-	"dummy",
-	"dummy",
-	"dummy",
-	"dummy",
-	"dummy",
-	"pll4_audio",
-	"pll5_video",
-	"pll8_mlb",
-	"enet_ref",
-	"pcie_ref_125m",
-	"sata_ref_100m",
-};
-
-static const char *pcie_axi_sels[] = {
-	"axi",
-	"ahb",
-};
-
-static struct clk_div_table clk_enet_ref_table[] = {
-	{ .val = 0, .div = 20, },
-	{ .val = 1, .div = 10, },
-	{ .val = 2, .div = 5, },
-	{ .val = 3, .div = 4, },
-	{ },
-};
-
-static struct clk_div_table post_div_table[] = {
-	{ .val = 2, .div = 1, },
-	{ .val = 1, .div = 2, },
-	{ .val = 0, .div = 4, },
-	{ /* sentinel */ }
-};
-
-static struct clk_div_table video_div_table[] = {
-	{ .val = 0, .div = 1, },
-	{ .val = 1, .div = 2, },
-	{ .val = 2, .div = 1, },
-	{ .val = 3, .div = 4, },
-	{ /* sentinel */ }
-};
-
-static void imx6_add_video_clks(void __iomem *anab, void __iomem *cb)
-{
-	clks[IMX6QDL_CLK_PLL5_POST_DIV] = imx_clk_divider_table("pll5_post_div", "pll5_video", anab + 0xa0, 19, 2, post_div_table);
-	clks[IMX6QDL_CLK_PLL5_VIDEO_DIV] = imx_clk_divider_table("pll5_video_div", "pll5_post_div", anab + 0x170, 30, 2, video_div_table);
-
-	clks[IMX6QDL_CLK_IPU1_SEL]         = imx_clk_mux("ipu1_sel",         cb + 0x3c, 9,  2, ipu_sels,          ARRAY_SIZE(ipu_sels));
-	clks[IMX6QDL_CLK_IPU2_SEL]         = imx_clk_mux("ipu2_sel",         cb + 0x3c, 14, 2, ipu_sels,          ARRAY_SIZE(ipu_sels));
-	clks[IMX6QDL_CLK_LDB_DI0_SEL]      = imx_clk_mux_p("ldb_di0_sel",      cb + 0x2c, 9,  3, ldb_di_sels,       ARRAY_SIZE(ldb_di_sels));
-	clks[IMX6QDL_CLK_LDB_DI1_SEL]      = imx_clk_mux_p("ldb_di1_sel",      cb + 0x2c, 12, 3, ldb_di_sels,       ARRAY_SIZE(ldb_di_sels));
-	clks[IMX6QDL_CLK_IPU1_DI0_PRE_SEL] = imx_clk_mux_p("ipu1_di0_pre_sel", cb + 0x34, 6,  3, ipu_di_pre_sels,   ARRAY_SIZE(ipu_di_pre_sels));
-	clks[IMX6QDL_CLK_IPU1_DI1_PRE_SEL] = imx_clk_mux_p("ipu1_di1_pre_sel", cb + 0x34, 15, 3, ipu_di_pre_sels,   ARRAY_SIZE(ipu_di_pre_sels));
-	clks[IMX6QDL_CLK_IPU2_DI0_PRE_SEL] = imx_clk_mux_p("ipu2_di0_pre_sel", cb + 0x38, 6,  3, ipu_di_pre_sels,   ARRAY_SIZE(ipu_di_pre_sels));
-	clks[IMX6QDL_CLK_IPU2_DI1_PRE_SEL] = imx_clk_mux_p("ipu2_di1_pre_sel", cb + 0x38, 15, 3, ipu_di_pre_sels,   ARRAY_SIZE(ipu_di_pre_sels));
-	clks[IMX6QDL_CLK_IPU1_DI0_SEL]     = imx_clk_mux_p("ipu1_di0_sel",     cb + 0x34, 0,  3, ipu1_di0_sels,     ARRAY_SIZE(ipu1_di0_sels));
-	clks[IMX6QDL_CLK_IPU1_DI1_SEL]     = imx_clk_mux_p("ipu1_di1_sel",     cb + 0x34, 9,  3, ipu1_di1_sels,     ARRAY_SIZE(ipu1_di1_sels));
-	clks[IMX6QDL_CLK_IPU2_DI0_SEL]     = imx_clk_mux_p("ipu2_di0_sel",     cb + 0x38, 0,  3, ipu2_di0_sels,     ARRAY_SIZE(ipu2_di0_sels));
-	clks[IMX6QDL_CLK_IPU2_DI1_SEL]     = imx_clk_mux_p("ipu2_di1_sel",     cb + 0x38, 9,  3, ipu2_di1_sels,     ARRAY_SIZE(ipu2_di1_sels));
-
-	clks[IMX6QDL_CLK_IPU1_PODF]        = imx_clk_divider("ipu1_podf",        "ipu1_sel",          cb + 0x3c, 11, 3);
-	clks[IMX6QDL_CLK_IPU2_PODF]        = imx_clk_divider("ipu2_podf",        "ipu2_sel",          cb + 0x3c, 16, 3);
-	clks[IMX6QDL_CLK_LDB_DI0_DIV_3_5]  = imx_clk_fixed_factor("ldb_di0_div_3_5", "ldb_di0_sel", 2, 7);
-	clks[IMX6QDL_CLK_LDB_DI0_PODF]     = imx_clk_divider_np("ldb_di0_podf", "ldb_di0_div_3_5", cb + 0x20, 10, 1);
-	clks[IMX6QDL_CLK_LDB_DI1_DIV_3_5]  = imx_clk_fixed_factor("ldb_di1_div_3_5", "ldb_di1_sel", 2, 7);
-	clks[IMX6QDL_CLK_LDB_DI1_PODF]     = imx_clk_divider_np("ldb_di1_podf", "ldb_di1_div_3_5", cb + 0x20, 11, 1);
-	clks[IMX6QDL_CLK_IPU1_DI0_PRE]     = imx_clk_divider("ipu1_di0_pre",     "ipu1_di0_pre_sel",  cb + 0x34, 3,  3);
-	clks[IMX6QDL_CLK_IPU1_DI1_PRE]     = imx_clk_divider("ipu1_di1_pre",     "ipu1_di1_pre_sel",  cb + 0x34, 12, 3);
-	clks[IMX6QDL_CLK_IPU2_DI0_PRE]     = imx_clk_divider("ipu2_di0_pre",     "ipu2_di0_pre_sel",  cb + 0x38, 3,  3);
-	clks[IMX6QDL_CLK_IPU2_DI1_PRE]     = imx_clk_divider("ipu2_di1_pre",     "ipu2_di1_pre_sel",  cb + 0x38, 12, 3);
-
-	clks[IMX6QDL_CLK_IPU1]         = imx_clk_gate2("ipu1",          "ipu1_podf",         cb + 0x74, 0);
-	clks[IMX6QDL_CLK_IPU1_DI0]     = imx_clk_gate2("ipu1_di0",      "ipu1_di0_sel",      cb + 0x74, 2);
-	clks[IMX6QDL_CLK_IPU1_DI1]     = imx_clk_gate2("ipu1_di1",      "ipu1_di1_sel",      cb + 0x74, 4);
-	clks[IMX6QDL_CLK_IPU2]         = imx_clk_gate2("ipu2",          "ipu2_podf",         cb + 0x74, 6);
-	clks[IMX6QDL_CLK_IPU2_DI0]     = imx_clk_gate2("ipu2_di0",      "ipu2_di0_sel",      cb + 0x74, 8);
-	clks[IMX6QDL_CLK_LDB_DI0]      = imx_clk_gate2("ldb_di0",       "ldb_di0_podf",      cb + 0x74, 12);
-	clks[IMX6QDL_CLK_LDB_DI1]      = imx_clk_gate2("ldb_di1",       "ldb_di1_podf",      cb + 0x74, 14);
-	clks[IMX6QDL_CLK_IPU2_DI1]     = imx_clk_gate2("ipu2_di1",      "ipu2_di1_sel",      cb + 0x74, 10);
-
-	clk_set_parent(clks[IMX6QDL_CLK_IPU1_DI0_SEL], clks[IMX6QDL_CLK_IPU1_DI0_PRE]);
-	clk_set_parent(clks[IMX6QDL_CLK_IPU1_DI1_SEL], clks[IMX6QDL_CLK_IPU1_DI1_PRE]);
-	clk_set_parent(clks[IMX6QDL_CLK_IPU2_DI0_SEL], clks[IMX6QDL_CLK_IPU2_DI0_PRE]);
-	clk_set_parent(clks[IMX6QDL_CLK_IPU2_DI1_SEL], clks[IMX6QDL_CLK_IPU2_DI1_PRE]);
-
-	clk_set_parent(clks[IMX6QDL_CLK_IPU1_DI0_PRE_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
-	clk_set_parent(clks[IMX6QDL_CLK_IPU1_DI1_PRE_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
-	clk_set_parent(clks[IMX6QDL_CLK_IPU2_DI0_PRE_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
-	clk_set_parent(clks[IMX6QDL_CLK_IPU2_DI1_PRE_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
-
-	if ((imx_silicon_revision() != IMX_CHIP_REV_1_0) ||
-	    cpu_is_mx6dl()) {
-		clk_set_parent(clks[IMX6QDL_CLK_LDB_DI0_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
-		clk_set_parent(clks[IMX6QDL_CLK_LDB_DI1_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
-	}
-
-}
-
-static int imx6_ccm_probe(struct device_d *dev)
-{
-	struct resource *iores;
-	void __iomem *base, *anatop_base, *ccm_base;
-
-	anatop_base = (void *)MX6_ANATOP_BASE_ADDR;
-	iores = dev_request_mem_resource(dev, 0);
-	if (IS_ERR(iores))
-		return PTR_ERR(iores);
-	ccm_base = IOMEM(iores->start);
-
-	base = anatop_base;
-
-	/*                   type                               name            parent_name base   div_mask */
-	clks[IMX6QDL_CLK_PLL1_SYS]      = imx_clk_pllv3(IMX_PLLV3_SYS,	"pll1_sys",	"osc", base,        0x7f);
-	clks[IMX6QDL_CLK_PLL2_BUS]      = imx_clk_pllv3(IMX_PLLV3_GENERIC,	"pll2_bus",	"osc", base + 0x30, 0x1);
-	clks[IMX6QDL_CLK_PLL3_USB_OTG]  = imx_clk_pllv3(IMX_PLLV3_USB,	"pll3_usb_otg",	"osc", base + 0x10, 0x3);
-	clks[IMX6QDL_CLK_PLL4_AUDIO]    = imx_clk_pllv3(IMX_PLLV3_AV,	"pll4_audio",	"osc", base + 0x70, 0x7f);
-	clks[IMX6QDL_CLK_PLL5_VIDEO]    = imx_clk_pllv3(IMX_PLLV3_AV,	"pll5_video",	"osc", base + 0xa0, 0x7f);
-	clks[IMX6QDL_CLK_PLL8_MLB]      = imx_clk_pllv3(IMX_PLLV3_MLB,	"pll8_mlb",	"osc", base + 0xd0, 0x0);
-	clks[IMX6QDL_CLK_PLL7_USB_HOST] = imx_clk_pllv3(IMX_PLLV3_USB,	"pll7_usb_host","osc", base + 0x20, 0x3);
-	clks[IMX6QDL_CLK_PLL6_ENET]     = imx_clk_pllv3(IMX_PLLV3_ENET,	"pll6_enet",	"osc", base + 0xe0, 0x3);
-
-	clks[IMX6QDL_CLK_USBPHY1] = imx_clk_gate("usbphy1", "pll3_usb_otg", base + 0x10, 6);
-	clks[IMX6QDL_CLK_USBPHY2] = imx_clk_gate("usbphy2", "pll7_usb_host", base + 0x20, 6);
-
-	clks[IMX6QDL_CLK_SATA_REF] = imx_clk_fixed_factor("sata_ref", "pll6_enet", 1, 5);
-	clks[IMX6QDL_CLK_PCIE_REF] = imx_clk_fixed_factor("pcie_ref", "pll6_enet", 1, 4);
-	clks[IMX6QDL_CLK_SATA_REF_100M] = imx_clk_gate("sata_ref_100m", "sata_ref", base + 0xe0, 20);
-	clks[IMX6QDL_CLK_PCIE_REF_125M] = imx_clk_gate("pcie_ref_125m", "pcie_ref", base + 0xe0, 19);
-
-	clks[IMX6QDL_CLK_ENET_REF] = imx_clk_divider_table("enet_ref", "pll6_enet", base + 0xe0, 0, 2, clk_enet_ref_table);
-
-	clks[IMX6QDL_CLK_LVDS1_SEL] = imx_clk_mux("lvds1_sel", base + 0x160, 0, 5, lvds_sels, ARRAY_SIZE(lvds_sels));
-	clks[IMX6QDL_CLK_LVDS2_SEL] = imx_clk_mux("lvds2_sel", base + 0x160, 5, 5, lvds_sels, ARRAY_SIZE(lvds_sels));
-
-	clks[IMX6QDL_CLK_LVDS1_GATE] = imx_clk_gate_exclusive("lvds1_gate", "lvds1_sel", base + 0x160, 10, BIT(12));
-	clks[IMX6QDL_CLK_LVDS2_GATE] = imx_clk_gate_exclusive("lvds2_gate", "lvds2_sel", base + 0x160, 11, BIT(13));
-
-	/*                                name               parent_name         reg          idx */
-	clks[IMX6QDL_CLK_PLL2_PFD0_352M] = imx_clk_pfd("pll2_pfd0_352m", "pll2_bus",     base + 0x100, 0);
-	clks[IMX6QDL_CLK_PLL2_PFD1_594M] = imx_clk_pfd("pll2_pfd1_594m", "pll2_bus",     base + 0x100, 1);
-	clks[IMX6QDL_CLK_PLL2_PFD2_396M] = imx_clk_pfd("pll2_pfd2_396m", "pll2_bus",     base + 0x100, 2);
-	clks[IMX6QDL_CLK_PLL3_PFD0_720M] = imx_clk_pfd("pll3_pfd0_720m", "pll3_usb_otg", base + 0xf0,  0);
-	clks[IMX6QDL_CLK_PLL3_PFD1_540M] = imx_clk_pfd("pll3_pfd1_540m", "pll3_usb_otg", base + 0xf0,  1);
-	clks[IMX6QDL_CLK_PLL3_PFD2_508M] = imx_clk_pfd("pll3_pfd2_508m", "pll3_usb_otg", base + 0xf0,  2);
-	clks[IMX6QDL_CLK_PLL3_PFD3_454M] = imx_clk_pfd("pll3_pfd3_454m", "pll3_usb_otg", base + 0xf0,  3);
-
-	/*                                    name          parent_name          mult div */
-	clks[IMX6QDL_CLK_PLL2_198M] = imx_clk_fixed_factor("pll2_198m", "pll2_pfd2_396m", 1, 2);
-	clks[IMX6QDL_CLK_PLL3_120M] = imx_clk_fixed_factor("pll3_120m", "pll3_usb_otg",   1, 4);
-	clks[IMX6QDL_CLK_PLL3_80M]  = imx_clk_fixed_factor("pll3_80m",  "pll3_usb_otg",   1, 6);
-	clks[IMX6QDL_CLK_PLL3_60M]  = imx_clk_fixed_factor("pll3_60m",  "pll3_usb_otg",   1, 8);
-	clks[IMX6QDL_CLK_TWD]       = imx_clk_fixed_factor("twd",       "arm",            1, 2);
-
-	base = ccm_base;
-
-	/*                                  name                 reg       shift width parent_names     num_parents */
-	clks[IMX6QDL_CLK_STEP]             = imx_clk_mux("step",	         base + 0xc,  8,  1, step_sels,	        ARRAY_SIZE(step_sels));
-	clks[IMX6QDL_CLK_PLL1_SW]          = imx_clk_mux("pll1_sw",	         base + 0xc,  2,  1, pll1_sw_sels,      ARRAY_SIZE(pll1_sw_sels));
-	clks[IMX6QDL_CLK_PERIPH_PRE]       = imx_clk_mux("periph_pre",       base + 0x18, 18, 2, periph_pre_sels,   ARRAY_SIZE(periph_pre_sels));
-	clks[IMX6QDL_CLK_PERIPH2_PRE]      = imx_clk_mux("periph2_pre",      base + 0x18, 21, 2, periph_pre_sels,   ARRAY_SIZE(periph_pre_sels));
-	clks[IMX6QDL_CLK_PERIPH_CLK2_SEL]  = imx_clk_mux("periph_clk2_sel",  base + 0x18, 12, 1, periph_clk2_sels,  ARRAY_SIZE(periph_clk2_sels));
-	clks[IMX6QDL_CLK_PERIPH2_CLK2_SEL] = imx_clk_mux("periph2_clk2_sel", base + 0x18, 20, 1, periph_clk2_sels,  ARRAY_SIZE(periph_clk2_sels));
-	clks[IMX6QDL_CLK_AXI_SEL]          = imx_clk_mux("axi_sel",          base + 0x14, 6,  2, axi_sels,          ARRAY_SIZE(axi_sels));
-	clks[IMX6QDL_CLK_USDHC1_SEL]       = imx_clk_mux("usdhc1_sel",       base + 0x1c, 16, 1, usdhc_sels,        ARRAY_SIZE(usdhc_sels));
-	clks[IMX6QDL_CLK_USDHC2_SEL]       = imx_clk_mux("usdhc2_sel",       base + 0x1c, 17, 1, usdhc_sels,        ARRAY_SIZE(usdhc_sels));
-	clks[IMX6QDL_CLK_USDHC3_SEL]       = imx_clk_mux("usdhc3_sel",       base + 0x1c, 18, 1, usdhc_sels,        ARRAY_SIZE(usdhc_sels));
-	clks[IMX6QDL_CLK_USDHC4_SEL]       = imx_clk_mux("usdhc4_sel",       base + 0x1c, 19, 1, usdhc_sels,        ARRAY_SIZE(usdhc_sels));
-	clks[IMX6QDL_CLK_ENFC_SEL]         = imx_clk_mux("enfc_sel",         base + 0x2c, 16, 2, enfc_sels,         ARRAY_SIZE(enfc_sels));
-	clks[IMX6QDL_CLK_EIM_SEL]          = imx_clk_mux("eim_sel",          base + 0x1c, 27, 2, eim_sels,          ARRAY_SIZE(eim_sels));
-	clks[IMX6QDL_CLK_EIM_SLOW_SEL]     = imx_clk_mux("eim_slow_sel",     base + 0x1c, 29, 2, eim_sels,          ARRAY_SIZE(eim_sels));
-	clks[IMX6QDL_CLK_VDO_AXI_SEL]      = imx_clk_mux("vdo_axi_sel",      base + 0x18, 11, 1, vdo_axi_sels,      ARRAY_SIZE(vdo_axi_sels));
-	clks[IMX6QDL_CLK_CKO1_SEL]         = imx_clk_mux("cko1_sel",         base + 0x60, 0,  4, cko1_sels,         ARRAY_SIZE(cko1_sels));
-	clks[IMX6QDL_CLK_CKO2_SEL]         = imx_clk_mux("cko2_sel",         base + 0x60, 16, 5, cko2_sels,         ARRAY_SIZE(cko2_sels));
-	clks[IMX6QDL_CLK_CKO]              = imx_clk_mux("cko",              base + 0x60, 8,  1, cko_sels,          ARRAY_SIZE(cko_sels));
-	clks[IMX6QDL_CLK_PCIE_AXI_SEL]     = imx_clk_mux("pcie_axi_sel",     base + 0x18, 10, 1, pcie_axi_sels,     ARRAY_SIZE(pcie_axi_sels));
-
-	/*                              name         reg       shift width busy: reg, shift parent_names  num_parents */
-	clks[IMX6QDL_CLK_PERIPH]  = imx_clk_busy_mux("periph",  base + 0x14, 25,  1,   base + 0x48, 5,  periph_sels,  ARRAY_SIZE(periph_sels));
-	clks[IMX6QDL_CLK_PERIPH2] = imx_clk_busy_mux("periph2", base + 0x14, 26,  1,   base + 0x48, 3,  periph2_sels, ARRAY_SIZE(periph2_sels));
-
-	/*                                      name                 parent_name               reg       shift width */
-	clks[IMX6QDL_CLK_PERIPH_CLK2]      = imx_clk_divider("periph_clk2",      "periph_clk2_sel",   base + 0x14, 27, 3);
-	clks[IMX6QDL_CLK_PERIPH2_CLK2]     = imx_clk_divider("periph2_clk2",     "periph2_clk2_sel",  base + 0x14, 0,  3);
-	clks[IMX6QDL_CLK_IPG]              = imx_clk_divider("ipg",              "ahb",               base + 0x14, 8,  2);
-	clks[IMX6QDL_CLK_IPG_PER]          = imx_clk_divider("ipg_per",          "ipg",               base + 0x1c, 0,  6);
-	clks[IMX6QDL_CLK_CAN_ROOT]         = imx_clk_divider("can_root",         "pll3_usb_otg",      base + 0x20, 2,  6);
-	clks[IMX6QDL_CLK_ECSPI_ROOT]       = imx_clk_divider("ecspi_root",       "pll3_60m",          base + 0x38, 19, 6);
-	clks[IMX6QDL_CLK_UART_SERIAL_PODF] = imx_clk_divider("uart_serial_podf", "pll3_80m",          base + 0x24, 0,  6);
-	clks[IMX6QDL_CLK_USDHC1_PODF]      = imx_clk_divider("usdhc1_podf",      "usdhc1_sel",        base + 0x24, 11, 3);
-	clks[IMX6QDL_CLK_USDHC2_PODF]      = imx_clk_divider("usdhc2_podf",      "usdhc2_sel",        base + 0x24, 16, 3);
-	clks[IMX6QDL_CLK_USDHC3_PODF]      = imx_clk_divider("usdhc3_podf",      "usdhc3_sel",        base + 0x24, 19, 3);
-	clks[IMX6QDL_CLK_USDHC4_PODF]      = imx_clk_divider("usdhc4_podf",      "usdhc4_sel",        base + 0x24, 22, 3);
-	clks[IMX6QDL_CLK_ENFC_PRED]        = imx_clk_divider("enfc_pred",        "enfc_sel",          base + 0x2c, 18, 3);
-	clks[IMX6QDL_CLK_ENFC_PODF]        = imx_clk_divider("enfc_podf",        "enfc_pred",         base + 0x2c, 21, 6);
-	clks[IMX6QDL_CLK_EIM_PODF]         = imx_clk_divider("eim_podf",         "eim_sel",           base + 0x1c, 20, 3);
-	clks[IMX6QDL_CLK_EIM_SLOW_PODF]    = imx_clk_divider("eim_slow_podf",    "eim_slow_sel",      base + 0x1c, 23, 3);
-	clks[IMX6QDL_CLK_CKO1_PODF]        = imx_clk_divider("cko1_podf",        "cko1_sel",          base + 0x60, 4,  3);
-	clks[IMX6QDL_CLK_CKO2_PODF]        = imx_clk_divider("cko2_podf",        "cko2_sel",          base + 0x60, 21, 3);
-
-	/*                                            name                  parent_name         reg        shift width busy: reg, shift */
-	clks[IMX6QDL_CLK_AXI]               = imx_clk_busy_divider("axi",               "axi_sel",     base + 0x14, 16,  3,   base + 0x48, 0);
-	clks[IMX6QDL_CLK_MMDC_CH0_AXI_PODF] = imx_clk_busy_divider("mmdc_ch0_axi_podf", "periph",      base + 0x14, 19,  3,   base + 0x48, 4);
-	clks[IMX6QDL_CLK_MMDC_CH1_AXI_PODF] = imx_clk_busy_divider("mmdc_ch1_axi_podf", "periph2",     base + 0x14, 3,   3,   base + 0x48, 2);
-	clks[IMX6QDL_CLK_ARM]               = imx_clk_busy_divider("arm",               "pll1_sw",     base + 0x10, 0,   3,   base + 0x48, 16);
-	clks[IMX6QDL_CLK_AHB]               = imx_clk_busy_divider("ahb",               "periph",      base + 0x14, 10,  3,   base + 0x48, 1);
-
-	/*                                            name             parent_name          reg         shift */
-	clks[IMX6QDL_CLK_APBH_DMA]     = imx_clk_gate2("apbh_dma",      "usdhc3",            base + 0x68, 4);
-	clks[IMX6QDL_CLK_CAAM_MEM]     = imx_clk_gate2("caam_mem",      "ahb",               base + 0x68, 8);
-	clks[IMX6QDL_CLK_CAAM_ACLK]    = imx_clk_gate2("caam_aclk",     "ahb",               base + 0x68, 10);
-	clks[IMX6QDL_CLK_CAAM_IPG]     = imx_clk_gate2("caam_ipg",      "ipg",               base + 0x68, 12);
-	clks[IMX6QDL_CLK_ECSPI1]       = imx_clk_gate2("ecspi1",        "ecspi_root",        base + 0x6c, 0);
-	clks[IMX6QDL_CLK_ECSPI2]       = imx_clk_gate2("ecspi2",        "ecspi_root",        base + 0x6c, 2);
-	clks[IMX6QDL_CLK_ECSPI3]       = imx_clk_gate2("ecspi3",        "ecspi_root",        base + 0x6c, 4);
-	clks[IMX6QDL_CLK_ECSPI4]       = imx_clk_gate2("ecspi4",        "ecspi_root",        base + 0x6c, 6);
-	if (cpu_is_mx6dl())
-		clks[IMX6DL_CLK_I2C4]  = imx_clk_gate2("i2c4",          "ipg_per",           base + 0x6c, 8);
-	else
-		clks[IMX6Q_CLK_ECSPI5] = imx_clk_gate2("ecspi5",        "ecspi_root",        base + 0x6c, 8);
-	clks[IMX6QDL_CLK_ENET]         = imx_clk_gate2("enet",          "ipg",               base + 0x6c, 10);
-	clks[IMX6QDL_CLK_GPT_IPG]      = imx_clk_gate2("gpt_ipg",       "ipg",               base + 0x6c, 20);
-	clks[IMX6QDL_CLK_GPT_IPG_PER]  = imx_clk_gate2("gpt_ipg_per",   "ipg_per",           base + 0x6c, 22);
-	clks[IMX6QDL_CLK_I2C1]         = imx_clk_gate2("i2c1",          "ipg_per",           base + 0x70, 6);
-	clks[IMX6QDL_CLK_I2C2]         = imx_clk_gate2("i2c2",          "ipg_per",           base + 0x70, 8);
-	clks[IMX6QDL_CLK_I2C3]         = imx_clk_gate2("i2c3",          "ipg_per",           base + 0x70, 10);
-	clks[IMX6QDL_CLK_IIM]          = imx_clk_gate2("iim",           "ipg",               base + 0x70, 12);
-	clks[IMX6QDL_CLK_ENFC]         = imx_clk_gate2("enfc",          "enfc_podf",         base + 0x70, 14);
-	clks[IMX6QDL_CLK_PCIE_AXI]     = imx_clk_gate2("pcie_axi",      "pcie_axi_sel",      base + 0x78, 0);
-	clks[IMX6QDL_CLK_PER1_BCH]     = imx_clk_gate2("per1_bch",      "usdhc3",            base + 0x78, 12);
-	clks[IMX6QDL_CLK_PWM1]         = imx_clk_gate2("pwm1",          "ipg_per",           base + 0x78, 16);
-	clks[IMX6QDL_CLK_PWM2]         = imx_clk_gate2("pwm2",          "ipg_per",           base + 0x78, 18);
-	clks[IMX6QDL_CLK_PWM3]         = imx_clk_gate2("pwm3",          "ipg_per",           base + 0x78, 20);
-	clks[IMX6QDL_CLK_PWM4]         = imx_clk_gate2("pwm4",          "ipg_per",           base + 0x78, 22);
-	clks[IMX6QDL_CLK_GPMI_BCH_APB] = imx_clk_gate2("gpmi_bch_apb",  "usdhc3",            base + 0x78, 24);
-	clks[IMX6QDL_CLK_GPMI_BCH]     = imx_clk_gate2("gpmi_bch",      "usdhc4",            base + 0x78, 26);
-	clks[IMX6QDL_CLK_GPMI_IO]      = imx_clk_gate2("gpmi_io",       "enfc",              base + 0x78, 28);
-	clks[IMX6QDL_CLK_GPMI_APB]     = imx_clk_gate2("gpmi_apb",      "usdhc3",            base + 0x78, 30);
-	clks[IMX6QDL_CLK_SATA]         = imx_clk_gate2("sata",          "ipg",               base + 0x7c, 4);
-	clks[IMX6QDL_CLK_UART_IPG]     = imx_clk_gate2("uart_ipg",      "ipg",               base + 0x7c, 24);
-	clks[IMX6QDL_CLK_UART_SERIAL]  = imx_clk_gate2("uart_serial",   "uart_serial_podf",  base + 0x7c, 26);
-	clks[IMX6QDL_CLK_USBOH3]       = imx_clk_gate2("usboh3",        "ipg",               base + 0x80, 0);
-	clks[IMX6QDL_CLK_USDHC1]       = imx_clk_gate2("usdhc1",        "usdhc1_podf",       base + 0x80, 2);
-	clks[IMX6QDL_CLK_USDHC2]       = imx_clk_gate2("usdhc2",        "usdhc2_podf",       base + 0x80, 4);
-	clks[IMX6QDL_CLK_USDHC3]       = imx_clk_gate2("usdhc3",        "usdhc3_podf",       base + 0x80, 6);
-	clks[IMX6QDL_CLK_USDHC4]       = imx_clk_gate2("usdhc4",        "usdhc4_podf",       base + 0x80, 8);
-	clks[IMX6QDL_CLK_EIM_SLOW]     = imx_clk_gate2("eim_slow",      "eim_slow_podf",     base + 0x80, 10);
-	clks[IMX6QDL_CLK_CKO1]         = imx_clk_gate("cko1",           "cko1_podf",         base + 0x60, 7);
-	clks[IMX6QDL_CLK_CKO2]         = imx_clk_gate("cko2",           "cko2_podf",         base + 0x60, 24);
-
-	clkdev_add_physbase(clks[IMX6QDL_CLK_IPG], MX6_OCOTP_BASE_ADDR, NULL);
-
-	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_IMX_IPUV3))
-		imx6_add_video_clks(anatop_base, ccm_base);
-
-	writel(0xffffffff, ccm_base + CCGR0);
-	writel(0xf0ffffff, ccm_base + CCGR1); /* gate GPU3D, GPU2D */
-	writel(0xffffffff, ccm_base + CCGR2);
-	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_IMX_IPUV3))
-		writel(0x3fffffff, ccm_base + CCGR3); /* gate OpenVG */
-	else
-		writel(0x3fff0000, ccm_base + CCGR3); /* gate OpenVG, LDB, IPU1, IPU2 */
-	if (IS_ENABLED(CONFIG_PCI_IMX6))
-		writel(0xffffffff, ccm_base + CCGR4);
-	else
-		writel(0xfffffffc, ccm_base + CCGR4); /* gate PCIe */
-	writel(0xffffffff, ccm_base + CCGR5);
-	writel(0xffff3fff, ccm_base + CCGR6); /* gate VPU */
-	writel(0xffffffff, ccm_base + CCGR7);
-
-	clk_data.clks = clks;
-	clk_data.clk_num = IMX6QDL_CLK_END;
-	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get, &clk_data);
-
-	clk_enable(clks[IMX6QDL_CLK_MMDC_CH0_AXI_PODF]);
-	clk_enable(clks[IMX6QDL_CLK_PLL6_ENET]);
-	clk_enable(clks[IMX6QDL_CLK_SATA_REF_100M]);
-	clk_enable(clks[IMX6QDL_CLK_ENFC_PODF]);
-
-	clk_set_parent(clks[IMX6QDL_CLK_LVDS1_SEL], clks[IMX6QDL_CLK_SATA_REF_100M]);
-
-	return 0;
-}
-
-static __maybe_unused struct of_device_id imx6_ccm_dt_ids[] = {
-	{
-		.compatible = "fsl,imx6q-ccm",
-	}, {
-		/* sentinel */
-	}
-};
-
-static struct driver_d imx6_ccm_driver = {
-	.probe	= imx6_ccm_probe,
-	.name	= "imx6-ccm",
-	.of_compatible = DRV_OF_COMPAT(imx6_ccm_dt_ids),
-};
-
-static int imx6_ccm_init(void)
-{
-	return platform_driver_register(&imx6_ccm_driver);
-}
-core_initcall(imx6_ccm_init);
diff --git a/arch/arm/mach-imx/clk-imx6sx.c b/arch/arm/mach-imx/clk-imx6sx.c
deleted file mode 100644
index d758957..0000000
--- a/arch/arm/mach-imx/clk-imx6sx.c
+++ /dev/null
@@ -1,483 +0,0 @@
-/*
- * Copyright (C) 2014 Freescale Semiconductor, Inc.
- *
- * The code contained herein is licensed under the GNU General Public
- * License. You may obtain a copy of the GNU General Public License
- * Version 2 or later at the following locations:
- *
- * http://www.opensource.org/licenses/gpl-license.html
- * http://www.gnu.org/copyleft/gpl.html
- */
-
-#include <dt-bindings/clock/imx6sx-clock.h>
-#include <common.h>
-#include <init.h>
-#include <driver.h>
-#include <linux/clk.h>
-#include <io.h>
-#include <of.h>
-#include <linux/clkdev.h>
-#include <linux/err.h>
-#include <linux/clk.h>
-#include <mach/imx6-regs.h>
-#include <mach/revision.h>
-#include <mach/imx6.h>
-
-#include "clk.h"
-#include "common.h"
-
-#define CCDR    0x4
-#define BM_CCM_CCDR_MMDC_CH0_MASK       (0x2 << 16)
-
-static const char *step_sels[]		= { "osc", "pll2_pfd2_396m", };
-static const char *pll1_sw_sels[]	= { "pll1_sys", "step", };
-static const char *periph_pre_sels[]	= { "pll2_bus", "pll2_pfd2_396m", "pll2_pfd0_352m", "pll2_198m", };
-static const char *periph2_pre_sels[]	= { "pll2_bus", "pll2_pfd2_396m", "pll2_pfd0_352m", "pll4_audio_div", };
-static const char *periph_clk2_sels[]	= { "pll3_usb_otg", "osc", "osc", };
-static const char *periph2_clk2_sels[]	= { "pll3_usb_otg", "osc", };
-static const char *periph_sels[]	= { "periph_pre", "periph_clk2", };
-static const char *periph2_sels[]	= { "periph2_pre", "periph2_clk2", };
-static const char *ocram_sels[]		= { "periph", "pll2_pfd2_396m", "periph", "pll3_pfd1_540m", };
-static const char *gpu_axi_sels[]	= { "pll2_pfd2_396m", "pll3_pfd0_720m", "pll3_pfd1_540m", "pll2_bus", };
-static const char *gpu_core_sels[]	= { "pll3_pfd1_540m", "pll3_pfd0_720m", "pll2_bus", "pll2_pfd2_396m", };
-static const char *ldb_di0_div_sels[]	= { "ldb_di0_div_3_5", "ldb_di0_div_7", };
-static const char *ldb_di1_div_sels[]	= { "ldb_di1_div_3_5", "ldb_di1_div_7", };
-static const char *ldb_di0_sels[]	= { "pll5_video_div", "pll2_pfd0_352m", "pll2_pfd2_396m", "pll2_pfd3_594m", "pll2_pfd1_594m", "pll3_pfd3_454m", };
-static const char *ldb_di1_sels[]	= { "pll3_usb_otg", "pll2_pfd0_352m", "pll2_pfd2_396m", "pll2_bus", "pll3_pfd3_454m", "pll3_pfd2_508m", };
-static const char *pcie_axi_sels[]	= { "axi", "ahb", };
-static const char *qspi1_sels[]		= { "pll3_usb_otg", "pll2_pfd0_352m", "pll2_pfd2_396m", "pll2_bus", "pll3_pfd3_454m", "pll3_pfd2_508m", };
-static const char *perclk_sels[]	= { "ipg", "osc", };
-static const char *usdhc_sels[]		= { "pll2_pfd2_396m", "pll2_pfd0_352m", };
-static const char *vid_sels[]		= { "pll3_pfd1_540m", "pll3_usb_otg", "pll3_pfd3_454m", "pll4_audio_div", "pll5_video_div", };
-static const char *uart_sels[]		= { "pll3_80m", "osc", };
-static const char *qspi2_sels[]		= { "pll2_pfd0_352m", "pll2_bus", "pll3_usb_otg", "pll2_pfd2_396m", "pll3_pfd3_454m", "dummy", "dummy", "dummy", };
-static const char *enet_pre_sels[]	= { "pll2_bus", "pll3_usb_otg", "pll5_video_div", "pll2_pfd0_352m", "pll2_pfd2_396m", "pll3_pfd2_508m", };
-static const char *enet_sels[]		= { "enet_podf", "ipp_di0", "ipp_di1", "ldb_di0", "ldb_di1", };
-static const char *m4_pre_sels[]	= { "pll2_bus", "pll3_usb_otg", "osc", "pll2_pfd0_352m", "pll2_pfd2_396m", "pll3_pfd3_454m", };
-static const char *m4_sels[]		= { "m4_pre_sel", "ipp_di0", "ipp_di1", "ldb_di0", "ldb_di1", };
-static const char *eim_slow_sels[]	= { "ocram", "pll3_usb_otg", "pll2_pfd2_396m", "pll2_pfd0_352m", };
-static const char *ecspi_sels[]		= { "pll3_60m", "osc", };
-static const char *lcdif1_pre_sels[]	= { "pll2_bus", "pll3_pfd3_454m", "pll5_video_div", "pll2_pfd0_352m", "pll2_pfd1_594m", "pll3_pfd1_540m", };
-static const char *lcdif1_sels[]	= { "lcdif1_podf", "ipp_di0", "ipp_di1", "ldb_di0", "ldb_di1", };
-static const char *lcdif2_pre_sels[]	= { "pll2_bus", "pll3_pfd3_454m", "pll5_video_div", "pll2_pfd0_352m", "pll2_pfd3_594m", "pll3_pfd1_540m", };
-static const char *lcdif2_sels[]	= { "lcdif2_podf", "ipp_di0", "ipp_di1", "ldb_di0", "ldb_di1", };
-static const char *display_sels[]	= { "pll2_bus", "pll2_pfd2_396m", "pll3_usb_otg", "pll3_pfd1_540m", };
-static const char *csi_sels[]		= { "osc", "pll2_pfd2_396m", "pll3_120m", "pll3_pfd1_540m", };
-static const char *cko1_sels[]		= {
-	"pll3_usb_otg", "pll2_bus", "pll1_sys", "pll5_video_div",
-	"dummy", "ocram", "dummy", "pxp_axi", "epdc_axi", "lcdif_pix",
-	"epdc_pix", "ahb", "ipg", "perclk", "ckil", "pll4_audio_div",
-};
-static const char *cko2_sels[]		= {
-	"dummy", "mmdc_p0_fast", "usdhc4", "usdhc1", "dummy", "wrck",
-	"ecspi_root", "dummy", "usdhc3", "pcie", "arm", "csi_core",
-	"lcdif_axi", "dummy", "osc", "dummy", "gpu2d_ovg_core",
-	"usdhc2", "ssi1", "ssi2", "ssi3", "gpu2d_core", "dummy",
-	"dummy", "dummy", "dummy", "esai_extal", "eim_slow", "uart_serial",
-	"spdif", "asrc", "dummy",
-};
-static const char *cko_sels[] = { "cko1", "cko2", };
-static const char *lvds_sels[]	= {
-	"arm", "pll1_sys", "dummy", "dummy", "dummy", "dummy", "dummy", "pll5_video_div",
-	"dummy", "dummy", "pcie_ref_125m", "dummy", "usbphy1", "usbphy2",
-};
-static const char *pll_bypass_src_sels[] = { "osc", "lvds1_in", };
-static const char *pll1_bypass_sels[] = { "pll1", "pll1_bypass_src", };
-static const char *pll2_bypass_sels[] = { "pll2", "pll2_bypass_src", };
-static const char *pll3_bypass_sels[] = { "pll3", "pll3_bypass_src", };
-static const char *pll4_bypass_sels[] = { "pll4", "pll4_bypass_src", };
-static const char *pll5_bypass_sels[] = { "pll5", "pll5_bypass_src", };
-static const char *pll6_bypass_sels[] = { "pll6", "pll6_bypass_src", };
-static const char *pll7_bypass_sels[] = { "pll7", "pll7_bypass_src", };
-
-static struct clk *clks[IMX6SX_CLK_CLK_END];
-static struct clk_onecell_data clk_data;
-
-static struct clk_div_table clk_enet_ref_table[] = {
-	{ .val = 0, .div = 20, },
-	{ .val = 1, .div = 10, },
-	{ .val = 2, .div = 5, },
-	{ .val = 3, .div = 4, },
-	{ }
-};
-
-static struct clk_div_table post_div_table[] = {
-	{ .val = 2, .div = 1, },
-	{ .val = 1, .div = 2, },
-	{ .val = 0, .div = 4, },
-	{ }
-};
-
-static struct clk_div_table video_div_table[] = {
-	{ .val = 0, .div = 1, },
-	{ .val = 1, .div = 2, },
-	{ .val = 2, .div = 1, },
-	{ .val = 3, .div = 4, },
-	{ }
-};
-
-static int imx6sx_ccm_probe(struct device_d *dev)
-{
-	struct resource *iores;
-	void __iomem *base, *anatop_base, *ccm_base;
-	struct device_node *ccm_node = dev->device_node;
-
-	clks[IMX6SX_CLK_DUMMY] = clk_fixed("dummy", 0);
-
-	anatop_base = (void *)MX6_ANATOP_BASE_ADDR;
-	iores = dev_request_mem_resource(dev, 0);
-	if (IS_ERR(iores))
-		return PTR_ERR(iores);
-	ccm_base = IOMEM(iores->start);
-
-	base = anatop_base;
-
-	clks[IMX6SX_PLL1_BYPASS_SRC] = imx_clk_mux("pll1_bypass_src", base + 0x00, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
-	clks[IMX6SX_PLL2_BYPASS_SRC] = imx_clk_mux("pll2_bypass_src", base + 0x30, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
-	clks[IMX6SX_PLL3_BYPASS_SRC] = imx_clk_mux("pll3_bypass_src", base + 0x10, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
-	clks[IMX6SX_PLL4_BYPASS_SRC] = imx_clk_mux("pll4_bypass_src", base + 0x70, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
-	clks[IMX6SX_PLL5_BYPASS_SRC] = imx_clk_mux("pll5_bypass_src", base + 0xa0, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
-	clks[IMX6SX_PLL6_BYPASS_SRC] = imx_clk_mux("pll6_bypass_src", base + 0xe0, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
-	clks[IMX6SX_PLL7_BYPASS_SRC] = imx_clk_mux("pll7_bypass_src", base + 0x20, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
-
-	/*                                    type               name    parent_name        base         div_mask */
-	clks[IMX6SX_CLK_PLL1] = imx_clk_pllv3(IMX_PLLV3_SYS,     "pll1", "pll1_bypass_src", base + 0x00, 0x7f);
-	clks[IMX6SX_CLK_PLL2] = imx_clk_pllv3(IMX_PLLV3_GENERIC, "pll2", "pll2_bypass_src", base + 0x30, 0x1);
-	clks[IMX6SX_CLK_PLL3] = imx_clk_pllv3(IMX_PLLV3_USB,     "pll3", "pll3_bypass_src", base + 0x10, 0x3);
-	clks[IMX6SX_CLK_PLL4] = imx_clk_pllv3(IMX_PLLV3_AV,      "pll4", "pll4_bypass_src", base + 0x70, 0x7f);
-	clks[IMX6SX_CLK_PLL5] = imx_clk_pllv3(IMX_PLLV3_AV,      "pll5", "pll5_bypass_src", base + 0xa0, 0x7f);
-	clks[IMX6SX_CLK_PLL6] = imx_clk_pllv3(IMX_PLLV3_ENET,    "pll6", "pll6_bypass_src", base + 0xe0, 0x3);
-	clks[IMX6SX_CLK_PLL7] = imx_clk_pllv3(IMX_PLLV3_USB,     "pll7", "pll7_bypass_src", base + 0x20, 0x3);
-
-	clks[IMX6SX_PLL1_BYPASS] = imx_clk_mux_p("pll1_bypass", base + 0x00, 16, 1, pll1_bypass_sels, ARRAY_SIZE(pll1_bypass_sels));
-	clks[IMX6SX_PLL2_BYPASS] = imx_clk_mux_p("pll2_bypass", base + 0x30, 16, 1, pll2_bypass_sels, ARRAY_SIZE(pll2_bypass_sels));
-	clks[IMX6SX_PLL3_BYPASS] = imx_clk_mux_p("pll3_bypass", base + 0x10, 16, 1, pll3_bypass_sels, ARRAY_SIZE(pll3_bypass_sels));
-	clks[IMX6SX_PLL4_BYPASS] = imx_clk_mux_p("pll4_bypass", base + 0x70, 16, 1, pll4_bypass_sels, ARRAY_SIZE(pll4_bypass_sels));
-	clks[IMX6SX_PLL5_BYPASS] = imx_clk_mux_p("pll5_bypass", base + 0xa0, 16, 1, pll5_bypass_sels, ARRAY_SIZE(pll5_bypass_sels));
-	clks[IMX6SX_PLL6_BYPASS] = imx_clk_mux_p("pll6_bypass", base + 0xe0, 16, 1, pll6_bypass_sels, ARRAY_SIZE(pll6_bypass_sels));
-	clks[IMX6SX_PLL7_BYPASS] = imx_clk_mux_p("pll7_bypass", base + 0x20, 16, 1, pll7_bypass_sels, ARRAY_SIZE(pll7_bypass_sels));
-
-	/* Do not bypass PLLs initially */
-	clk_set_parent(clks[IMX6SX_PLL1_BYPASS], clks[IMX6SX_CLK_PLL1]);
-	clk_set_parent(clks[IMX6SX_PLL2_BYPASS], clks[IMX6SX_CLK_PLL2]);
-	clk_set_parent(clks[IMX6SX_PLL3_BYPASS], clks[IMX6SX_CLK_PLL3]);
-	clk_set_parent(clks[IMX6SX_PLL4_BYPASS], clks[IMX6SX_CLK_PLL4]);
-	clk_set_parent(clks[IMX6SX_PLL5_BYPASS], clks[IMX6SX_CLK_PLL5]);
-	clk_set_parent(clks[IMX6SX_PLL6_BYPASS], clks[IMX6SX_CLK_PLL6]);
-	clk_set_parent(clks[IMX6SX_PLL7_BYPASS], clks[IMX6SX_CLK_PLL7]);
-
-	clks[IMX6SX_CLK_PLL1_SYS]      = imx_clk_gate("pll1_sys",      "pll1_bypass", base + 0x00, 13);
-	clks[IMX6SX_CLK_PLL2_BUS]      = imx_clk_gate("pll2_bus",      "pll2_bypass", base + 0x30, 13);
-	clks[IMX6SX_CLK_PLL3_USB_OTG]  = imx_clk_gate("pll3_usb_otg",  "pll3_bypass", base + 0x10, 13);
-	clks[IMX6SX_CLK_PLL4_AUDIO]    = imx_clk_gate("pll4_audio",    "pll4_bypass", base + 0x70, 13);
-	clks[IMX6SX_CLK_PLL5_VIDEO]    = imx_clk_gate("pll5_video",    "pll5_bypass", base + 0xa0, 13);
-	clks[IMX6SX_CLK_PLL6_ENET]     = imx_clk_gate("pll6_enet",     "pll6_bypass", base + 0xe0, 13);
-	clks[IMX6SX_CLK_PLL7_USB_HOST] = imx_clk_gate("pll7_usb_host", "pll7_bypass", base + 0x20, 13);
-
-	/*
-	 * Bit 20 is the reserved and read-only bit, we do this only for:
-	 * - Do nothing for usbphy clk_enable/disable
-	 * - Keep refcount when do usbphy clk_enable/disable, in that case,
-	 * the clk framework may need to enable/disable usbphy's parent
-	 */
-	clks[IMX6SX_CLK_USBPHY1] = imx_clk_gate("usbphy1", "pll3_usb_otg",  base + 0x10, 20);
-	clks[IMX6SX_CLK_USBPHY2] = imx_clk_gate("usbphy2", "pll7_usb_host", base + 0x20, 20);
-
-	/*
-	 * usbphy*_gate needs to be on after system boots up, and software
-	 * never needs to control it anymore.
-	 */
-	clks[IMX6SX_CLK_USBPHY1_GATE] = imx_clk_gate("usbphy1_gate", "dummy", base + 0x10, 6);
-	clks[IMX6SX_CLK_USBPHY2_GATE] = imx_clk_gate("usbphy2_gate", "dummy", base + 0x20, 6);
-
-	/* FIXME 100Mhz is used for pcie ref for all imx6 pcie, excepted imx6q */
-	clks[IMX6SX_CLK_PCIE_REF] = imx_clk_fixed_factor("pcie_ref", "pll6_enet", 1, 5);
-	clks[IMX6SX_CLK_PCIE_REF_125M] = imx_clk_gate("pcie_ref_125m", "pcie_ref", base + 0xe0, 19);
-
-	clks[IMX6SX_CLK_ENET_REF] = imx_clk_divider_table("enet_ref", "pll6_enet",
-			base + 0xe0, 0, 2, clk_enet_ref_table);
-	clks[IMX6SX_CLK_ENET2_REF] = imx_clk_divider_table("enet2_ref", "pll6_enet",
-			base + 0xe0, 2, 2, clk_enet_ref_table);
-	clks[IMX6SX_CLK_ENET2_REF_125M] = imx_clk_gate("enet2_ref_125m", "enet2_ref", base + 0xe0, 20);
-
-	clks[IMX6SX_CLK_ENET_PTP_REF] = imx_clk_fixed_factor("enet_ptp_ref", "pll6_enet", 1, 20);
-	clks[IMX6SX_CLK_ENET_PTP] = imx_clk_gate("enet_ptp_25m", "enet_ptp_ref", base + 0xe0, 21);
-
-	/*                                       name              parent_name     reg           idx */
-	clks[IMX6SX_CLK_PLL2_PFD0] = imx_clk_pfd("pll2_pfd0_352m", "pll2_bus",     base + 0x100, 0);
-	clks[IMX6SX_CLK_PLL2_PFD1] = imx_clk_pfd("pll2_pfd1_594m", "pll2_bus",     base + 0x100, 1);
-	clks[IMX6SX_CLK_PLL2_PFD2] = imx_clk_pfd("pll2_pfd2_396m", "pll2_bus",     base + 0x100, 2);
-	clks[IMX6SX_CLK_PLL2_PFD3] = imx_clk_pfd("pll2_pfd3_594m", "pll2_bus",     base + 0x100, 3);
-	clks[IMX6SX_CLK_PLL3_PFD0] = imx_clk_pfd("pll3_pfd0_720m", "pll3_usb_otg", base + 0xf0,  0);
-	clks[IMX6SX_CLK_PLL3_PFD1] = imx_clk_pfd("pll3_pfd1_540m", "pll3_usb_otg", base + 0xf0,  1);
-	clks[IMX6SX_CLK_PLL3_PFD2] = imx_clk_pfd("pll3_pfd2_508m", "pll3_usb_otg", base + 0xf0,  2);
-	clks[IMX6SX_CLK_PLL3_PFD3] = imx_clk_pfd("pll3_pfd3_454m", "pll3_usb_otg", base + 0xf0,  3);
-
-	/*                                                name         parent_name       mult div */
-	clks[IMX6SX_CLK_PLL2_198M] = imx_clk_fixed_factor("pll2_198m", "pll2_pfd2_396m", 1,   2);
-	clks[IMX6SX_CLK_PLL3_120M] = imx_clk_fixed_factor("pll3_120m", "pll3_usb_otg",   1,   4);
-	clks[IMX6SX_CLK_PLL3_80M]  = imx_clk_fixed_factor("pll3_80m",  "pll3_usb_otg",   1,   6);
-	clks[IMX6SX_CLK_PLL3_60M]  = imx_clk_fixed_factor("pll3_60m",  "pll3_usb_otg",   1,   8);
-	clks[IMX6SX_CLK_TWD]       = imx_clk_fixed_factor("twd",       "arm",            1,   2);
-	clks[IMX6SX_CLK_GPT_3M]    = imx_clk_fixed_factor("gpt_3m",    "osc",            1,   8);
-
-	clks[IMX6SX_CLK_PLL4_POST_DIV]  = imx_clk_divider_table("pll4_post_div", "pll4_audio",
-				base + 0x70, 19, 2, post_div_table);
-	clks[IMX6SX_CLK_PLL4_AUDIO_DIV] = imx_clk_divider("pll4_audio_div", "pll4_post_div",
-				base + 0x170, 15, 1);
-	clks[IMX6SX_CLK_PLL5_POST_DIV]  = imx_clk_divider_table("pll5_post_div", "pll5_video",
-				base + 0xa0, 19, 2, post_div_table);
-	clks[IMX6SX_CLK_PLL5_VIDEO_DIV] = imx_clk_divider_table("pll5_video_div", "pll5_post_div",
-				base + 0x170, 30, 2, video_div_table);
-
-	/*                                                name                reg           shift   width   parent_names       num_parents */
-	clks[IMX6SX_CLK_LVDS1_SEL]          = imx_clk_mux("lvds1_sel",        base + 0x160, 0,      5,      lvds_sels,         ARRAY_SIZE(lvds_sels));
-
-	base = ccm_base;
-
-	/*                                                name                reg           shift   width   parent_names       num_parents */
-	clks[IMX6SX_CLK_STEP]               = imx_clk_mux("step",             base + 0xc,   8,      1,      step_sels,         ARRAY_SIZE(step_sels));
-	clks[IMX6SX_CLK_PLL1_SW]            = imx_clk_mux("pll1_sw",          base + 0xc,   2,      1,      pll1_sw_sels,      ARRAY_SIZE(pll1_sw_sels));
-	clks[IMX6SX_CLK_OCRAM_SEL]          = imx_clk_mux("ocram_sel",        base + 0x14,  6,      2,      ocram_sels,        ARRAY_SIZE(ocram_sels));
-	clks[IMX6SX_CLK_PERIPH_PRE]         = imx_clk_mux("periph_pre",       base + 0x18,  18,     2,      periph_pre_sels,   ARRAY_SIZE(periph_pre_sels));
-	clks[IMX6SX_CLK_PERIPH2_PRE]        = imx_clk_mux("periph2_pre",      base + 0x18,  21,     2,      periph2_pre_sels,   ARRAY_SIZE(periph2_pre_sels));
-	clks[IMX6SX_CLK_PERIPH_CLK2_SEL]    = imx_clk_mux("periph_clk2_sel",  base + 0x18,  12,     2,      periph_clk2_sels,  ARRAY_SIZE(periph_clk2_sels));
-	clks[IMX6SX_CLK_PERIPH2_CLK2_SEL]   = imx_clk_mux("periph2_clk2_sel", base + 0x18,  20,     1,      periph2_clk2_sels, ARRAY_SIZE(periph2_clk2_sels));
-	clks[IMX6SX_CLK_PCIE_AXI_SEL]       = imx_clk_mux("pcie_axi_sel",     base + 0x18,  10,     1,      pcie_axi_sels,     ARRAY_SIZE(pcie_axi_sels));
-	clks[IMX6SX_CLK_GPU_AXI_SEL]        = imx_clk_mux("gpu_axi_sel",      base + 0x18,  8,      2,      gpu_axi_sels,      ARRAY_SIZE(gpu_axi_sels));
-	clks[IMX6SX_CLK_GPU_CORE_SEL]       = imx_clk_mux("gpu_core_sel",     base + 0x18,  4,      2,      gpu_core_sels,     ARRAY_SIZE(gpu_core_sels));
-	clks[IMX6SX_CLK_EIM_SLOW_SEL]       = imx_clk_mux("eim_slow_sel",     base + 0x1c,  29,     2,      eim_slow_sels,     ARRAY_SIZE(eim_slow_sels));
-	clks[IMX6SX_CLK_USDHC1_SEL]         = imx_clk_mux("usdhc1_sel",       base + 0x1c,  16,     1,      usdhc_sels,        ARRAY_SIZE(usdhc_sels));
-	clks[IMX6SX_CLK_USDHC2_SEL]         = imx_clk_mux("usdhc2_sel",       base + 0x1c,  17,     1,      usdhc_sels,        ARRAY_SIZE(usdhc_sels));
-	clks[IMX6SX_CLK_USDHC3_SEL]         = imx_clk_mux("usdhc3_sel",       base + 0x1c,  18,     1,      usdhc_sels,        ARRAY_SIZE(usdhc_sels));
-	clks[IMX6SX_CLK_USDHC4_SEL]         = imx_clk_mux("usdhc4_sel",       base + 0x1c,  19,     1,      usdhc_sels,        ARRAY_SIZE(usdhc_sels));
-	clks[IMX6SX_CLK_QSPI1_SEL]          = imx_clk_mux_p("qspi1_sel", base + 0x1c,  7, 3, qspi1_sels, ARRAY_SIZE(qspi1_sels));
-	clks[IMX6SX_CLK_PERCLK_SEL]         = imx_clk_mux("perclk_sel",       base + 0x1c,  6,      1,      perclk_sels,       ARRAY_SIZE(perclk_sels));
-	clks[IMX6SX_CLK_VID_SEL]            = imx_clk_mux("vid_sel",          base + 0x20,  21,     3,      vid_sels,          ARRAY_SIZE(vid_sels));
-	clks[IMX6SX_CLK_UART_SEL]           = imx_clk_mux("uart_sel",         base + 0x24,  6,      1,      uart_sels,         ARRAY_SIZE(uart_sels));
-	clks[IMX6SX_CLK_QSPI2_SEL]          = imx_clk_mux_p("qspi2_sel", base + 0x2c, 15, 3, qspi2_sels, ARRAY_SIZE(qspi2_sels));
-	clks[IMX6SX_CLK_ENET_PRE_SEL]       = imx_clk_mux("enet_pre_sel",     base + 0x34,  15,     3,      enet_pre_sels,     ARRAY_SIZE(enet_pre_sels));
-	clks[IMX6SX_CLK_ENET_SEL]           = imx_clk_mux("enet_sel",         base + 0x34,  9,      3,      enet_sels,         ARRAY_SIZE(enet_sels));
-	clks[IMX6SX_CLK_M4_PRE_SEL]         = imx_clk_mux("m4_pre_sel",       base + 0x34,  6,      3,      m4_pre_sels,       ARRAY_SIZE(m4_pre_sels));
-	clks[IMX6SX_CLK_M4_SEL]             = imx_clk_mux("m4_sel",           base + 0x34,  0,      3,      m4_sels,           ARRAY_SIZE(m4_sels));
-	clks[IMX6SX_CLK_ECSPI_SEL]          = imx_clk_mux("ecspi_sel",        base + 0x38,  18,     1,      ecspi_sels,        ARRAY_SIZE(ecspi_sels));
-	clks[IMX6SX_CLK_LCDIF2_PRE_SEL]     = imx_clk_mux("lcdif2_pre_sel",   base + 0x38,  6,      3,      lcdif2_pre_sels,   ARRAY_SIZE(lcdif2_pre_sels));
-	clks[IMX6SX_CLK_LCDIF2_SEL]         = imx_clk_mux("lcdif2_sel",       base + 0x38,  0,      3,      lcdif2_sels,       ARRAY_SIZE(lcdif2_sels));
-	clks[IMX6SX_CLK_DISPLAY_SEL]        = imx_clk_mux("display_sel",      base + 0x3c,  14,     2,      display_sels,      ARRAY_SIZE(display_sels));
-	clks[IMX6SX_CLK_CSI_SEL]            = imx_clk_mux("csi_sel",          base + 0x3c,  9,      2,      csi_sels,          ARRAY_SIZE(csi_sels));
-	clks[IMX6SX_CLK_CKO1_SEL]           = imx_clk_mux("cko1_sel",         base + 0x60,  0,      4,      cko1_sels,         ARRAY_SIZE(cko1_sels));
-	clks[IMX6SX_CLK_CKO2_SEL]           = imx_clk_mux("cko2_sel",         base + 0x60,  16,     5,      cko2_sels,         ARRAY_SIZE(cko2_sels));
-	clks[IMX6SX_CLK_CKO]                = imx_clk_mux("cko",              base + 0x60,  8,      1,      cko_sels,          ARRAY_SIZE(cko_sels));
-
-	clks[IMX6SX_CLK_LDB_DI1_DIV_SEL]    = imx_clk_mux_p("ldb_di1_div_sel", base + 0x20, 11, 1, ldb_di1_div_sels, ARRAY_SIZE(ldb_di1_div_sels));
-	clks[IMX6SX_CLK_LDB_DI0_DIV_SEL]    = imx_clk_mux_p("ldb_di0_div_sel", base + 0x20, 10, 1, ldb_di0_div_sels, ARRAY_SIZE(ldb_di0_div_sels));
-	clks[IMX6SX_CLK_LDB_DI1_SEL]        = imx_clk_mux_p("ldb_di1_sel",     base + 0x2c, 12, 3, ldb_di1_sels,      ARRAY_SIZE(ldb_di1_sels));
-	clks[IMX6SX_CLK_LDB_DI0_SEL]        = imx_clk_mux_p("ldb_di0_sel",     base + 0x2c, 9,  3, ldb_di0_sels,      ARRAY_SIZE(ldb_di0_sels));
-	clks[IMX6SX_CLK_LCDIF1_PRE_SEL]     = imx_clk_mux_p("lcdif1_pre_sel",  base + 0x38, 15, 3, lcdif1_pre_sels,   ARRAY_SIZE(lcdif1_pre_sels));
-	clks[IMX6SX_CLK_LCDIF1_SEL]         = imx_clk_mux_p("lcdif1_sel",      base + 0x38, 9,  3, lcdif1_sels,       ARRAY_SIZE(lcdif1_sels));
-
-	/*                                                    name              parent_name          reg          shift width */
-	clks[IMX6SX_CLK_PERIPH_CLK2]        = imx_clk_divider("periph_clk2",    "periph_clk2_sel",   base + 0x14, 27,   3);
-	clks[IMX6SX_CLK_PERIPH2_CLK2]       = imx_clk_divider("periph2_clk2",   "periph2_clk2_sel",  base + 0x14, 0,    3);
-	clks[IMX6SX_CLK_IPG]                = imx_clk_divider("ipg",            "ahb",               base + 0x14, 8,    2);
-	clks[IMX6SX_CLK_GPU_CORE_PODF]      = imx_clk_divider("gpu_core_podf",  "gpu_core_sel",      base + 0x18, 29,   3);
-	clks[IMX6SX_CLK_GPU_AXI_PODF]       = imx_clk_divider("gpu_axi_podf",   "gpu_axi_sel",       base + 0x18, 26,   3);
-	clks[IMX6SX_CLK_LCDIF1_PODF]        = imx_clk_divider("lcdif1_podf",    "lcdif1_pred",       base + 0x18, 23,   3);
-	clks[IMX6SX_CLK_QSPI1_PODF]         = imx_clk_divider("qspi1_podf",     "qspi1_sel",         base + 0x1c, 26,   3);
-	clks[IMX6SX_CLK_EIM_SLOW_PODF]      = imx_clk_divider("eim_slow_podf",  "eim_slow_sel",      base + 0x1c, 23,   3);
-	clks[IMX6SX_CLK_LCDIF2_PODF]        = imx_clk_divider("lcdif2_podf",    "lcdif2_pred",       base + 0x1c, 20,   3);
-	clks[IMX6SX_CLK_PERCLK]             = imx_clk_divider("perclk",         "perclk_sel",        base + 0x1c, 0,    6);
-	clks[IMX6SX_CLK_VID_PODF]           = imx_clk_divider("vid_podf",       "vid_sel",           base + 0x20, 24,   2);
-	clks[IMX6SX_CLK_USDHC4_PODF]        = imx_clk_divider("usdhc4_podf",    "usdhc4_sel",        base + 0x24, 22,   3);
-	clks[IMX6SX_CLK_USDHC3_PODF]        = imx_clk_divider("usdhc3_podf",    "usdhc3_sel",        base + 0x24, 19,   3);
-	clks[IMX6SX_CLK_USDHC2_PODF]        = imx_clk_divider("usdhc2_podf",    "usdhc2_sel",        base + 0x24, 16,   3);
-	clks[IMX6SX_CLK_USDHC1_PODF]        = imx_clk_divider("usdhc1_podf",    "usdhc1_sel",        base + 0x24, 11,   3);
-	clks[IMX6SX_CLK_UART_PODF]          = imx_clk_divider("uart_podf",      "uart_sel",          base + 0x24, 0,    6);
-	clks[IMX6SX_CLK_QSPI2_PRED]         = imx_clk_divider("qspi2_pred",     "qspi2_sel",         base + 0x2c, 18,   3);
-	clks[IMX6SX_CLK_QSPI2_PODF]         = imx_clk_divider("qspi2_podf",     "qspi2_pred",        base + 0x2c, 21,   6);
-	clks[IMX6SX_CLK_ENET_PODF]          = imx_clk_divider("enet_podf",      "enet_pre_sel",      base + 0x34, 12,   3);
-	clks[IMX6SX_CLK_M4_PODF]            = imx_clk_divider("m4_podf",        "m4_sel",            base + 0x34, 3,    3);
-	clks[IMX6SX_CLK_ECSPI_PODF]         = imx_clk_divider("ecspi_podf",     "ecspi_sel",         base + 0x38, 19,   6);
-	clks[IMX6SX_CLK_LCDIF1_PRED]        = imx_clk_divider("lcdif1_pred",    "lcdif1_pre_sel",    base + 0x38, 12,   3);
-	clks[IMX6SX_CLK_LCDIF2_PRED]        = imx_clk_divider("lcdif2_pred",    "lcdif2_pre_sel",    base + 0x38, 3,    3);
-	clks[IMX6SX_CLK_DISPLAY_PODF]       = imx_clk_divider("display_podf",   "display_sel",       base + 0x3c, 16,   3);
-	clks[IMX6SX_CLK_CSI_PODF]           = imx_clk_divider("csi_podf",       "csi_sel",           base + 0x3c, 11,   3);
-	clks[IMX6SX_CLK_CKO1_PODF]          = imx_clk_divider("cko1_podf",      "cko1_sel",          base + 0x60, 4,    3);
-	clks[IMX6SX_CLK_CKO2_PODF]          = imx_clk_divider("cko2_podf",      "cko2_sel",          base + 0x60, 21,   3);
-
-	clks[IMX6SX_CLK_LDB_DI0_DIV_3_5]    = imx_clk_fixed_factor("ldb_di0_div_3_5", "ldb_di0_sel", 2, 7);
-	clks[IMX6SX_CLK_LDB_DI0_DIV_7]      = imx_clk_fixed_factor("ldb_di0_div_7",   "ldb_di0_sel", 1, 7);
-	clks[IMX6SX_CLK_LDB_DI1_DIV_3_5]    = imx_clk_fixed_factor("ldb_di1_div_3_5", "ldb_di1_sel", 2, 7);
-	clks[IMX6SX_CLK_LDB_DI1_DIV_7]      = imx_clk_fixed_factor("ldb_di1_div_7",   "ldb_di1_sel", 1, 7);
-
-	/*                                               name        reg          shift width busy: reg,   shift parent_names       num_parents */
-	clks[IMX6SX_CLK_PERIPH]       = imx_clk_busy_mux("periph",   base + 0x14, 25,   1,    base + 0x48, 5,    periph_sels,       ARRAY_SIZE(periph_sels));
-	clks[IMX6SX_CLK_PERIPH2]      = imx_clk_busy_mux("periph2",  base + 0x14, 26,   1,    base + 0x48, 3,    periph2_sels,      ARRAY_SIZE(periph2_sels));
-	/*                                                   name             parent_name    reg          shift width busy: reg,   shift */
-	clks[IMX6SX_CLK_OCRAM_PODF]   = imx_clk_busy_divider("ocram_podf",    "ocram_sel",   base + 0x14, 16,   3,    base + 0x48, 0);
-	clks[IMX6SX_CLK_AHB]          = imx_clk_busy_divider("ahb",           "periph",      base + 0x14, 10,   3,    base + 0x48, 1);
-	clks[IMX6SX_CLK_MMDC_PODF]    = imx_clk_busy_divider("mmdc_podf",     "periph2",     base + 0x14, 3,    3,    base + 0x48, 2);
-	clks[IMX6SX_CLK_ARM]          = imx_clk_busy_divider("arm",           "pll1_sw",     base + 0x10, 0,    3,    base + 0x48, 16);
-
-	/*                                            name             parent_name          reg         shift */
-	/* CCGR0 */
-	clks[IMX6SX_CLK_AIPS_TZ1]     = imx_clk_gate2("aips_tz1",      "ahb",               base + 0x68, 0);
-	clks[IMX6SX_CLK_AIPS_TZ2]     = imx_clk_gate2("aips_tz2",      "ahb",               base + 0x68, 2);
-	clks[IMX6SX_CLK_APBH_DMA]     = imx_clk_gate2("apbh_dma",      "usdhc3",            base + 0x68, 4);
-	clks[IMX6SX_CLK_CAAM_MEM]     = imx_clk_gate2("caam_mem",      "ahb",               base + 0x68, 8);
-	clks[IMX6SX_CLK_CAAM_ACLK]    = imx_clk_gate2("caam_aclk",     "ahb",               base + 0x68, 10);
-	clks[IMX6SX_CLK_CAAM_IPG]     = imx_clk_gate2("caam_ipg",      "ipg",               base + 0x68, 12);
-	clks[IMX6SX_CLK_DCIC1]        = imx_clk_gate2("dcic1",         "display_podf",      base + 0x68, 24);
-	clks[IMX6SX_CLK_DCIC2]        = imx_clk_gate2("dcic2",         "display_podf",      base + 0x68, 26);
-	clks[IMX6SX_CLK_AIPS_TZ3]     = imx_clk_gate2("aips_tz3",      "ahb",               base + 0x68, 30);
-
-	/* CCGR1 */
-	clks[IMX6SX_CLK_ECSPI1]       = imx_clk_gate2("ecspi1",        "ecspi_podf",        base + 0x6c, 0);
-	clks[IMX6SX_CLK_ECSPI2]       = imx_clk_gate2("ecspi2",        "ecspi_podf",        base + 0x6c, 2);
-	clks[IMX6SX_CLK_ECSPI3]       = imx_clk_gate2("ecspi3",        "ecspi_podf",        base + 0x6c, 4);
-	clks[IMX6SX_CLK_ECSPI4]       = imx_clk_gate2("ecspi4",        "ecspi_podf",        base + 0x6c, 6);
-	clks[IMX6SX_CLK_ECSPI5]       = imx_clk_gate2("ecspi5",        "ecspi_podf",        base + 0x6c, 8);
-	clks[IMX6SX_CLK_EPIT1]        = imx_clk_gate2("epit1",         "perclk",            base + 0x6c, 12);
-	clks[IMX6SX_CLK_EPIT2]        = imx_clk_gate2("epit2",         "perclk",            base + 0x6c, 14);
-	clks[IMX6SX_CLK_WAKEUP]       = imx_clk_gate2("wakeup",        "ipg",               base + 0x6c, 18);
-	clks[IMX6SX_CLK_GPT_BUS]      = imx_clk_gate2("gpt_bus",       "perclk",            base + 0x6c, 20);
-	clks[IMX6SX_CLK_GPT_SERIAL]   = imx_clk_gate2("gpt_serial",    "perclk",            base + 0x6c, 22);
-	clks[IMX6SX_CLK_GPU]          = imx_clk_gate2("gpu",           "gpu_core_podf",     base + 0x6c, 26);
-
-	/* CCGR2 */
-	clks[IMX6SX_CLK_CSI]          = imx_clk_gate2("csi",           "csi_podf",          base + 0x70, 2);
-	clks[IMX6SX_CLK_I2C1]         = imx_clk_gate2("i2c1",          "perclk",            base + 0x70, 6);
-	clks[IMX6SX_CLK_I2C2]         = imx_clk_gate2("i2c2",          "perclk",            base + 0x70, 8);
-	clks[IMX6SX_CLK_I2C3]         = imx_clk_gate2("i2c3",          "perclk",            base + 0x70, 10);
-	clks[IMX6SX_CLK_OCOTP]        = imx_clk_gate2("ocotp",         "ipg",               base + 0x70, 12);
-	clks[IMX6SX_CLK_IOMUXC]       = imx_clk_gate2("iomuxc",        "lcdif1_podf",       base + 0x70, 14);
-	clks[IMX6SX_CLK_IPMUX1]       = imx_clk_gate2("ipmux1",        "ahb",               base + 0x70, 16);
-	clks[IMX6SX_CLK_IPMUX2]       = imx_clk_gate2("ipmux2",        "ahb",               base + 0x70, 18);
-	clks[IMX6SX_CLK_IPMUX3]       = imx_clk_gate2("ipmux3",        "ahb",               base + 0x70, 20);
-	clks[IMX6SX_CLK_TZASC1]       = imx_clk_gate2("tzasc1",        "mmdc_podf",         base + 0x70, 22);
-	clks[IMX6SX_CLK_LCDIF_APB]    = imx_clk_gate2("lcdif_apb",     "display_podf",      base + 0x70, 28);
-	clks[IMX6SX_CLK_PXP_AXI]      = imx_clk_gate2("pxp_axi",       "display_podf",      base + 0x70, 30);
-
-	/* CCGR3 */
-	clks[IMX6SX_CLK_M4]           = imx_clk_gate2("m4",            "m4_podf",           base + 0x74, 2);
-	clks[IMX6SX_CLK_ENET]         = imx_clk_gate2("enet",          "ipg",               base + 0x74, 4);
-	clks[IMX6SX_CLK_ENET_AHB]     = imx_clk_gate2("enet_ahb",      "enet_sel",          base + 0x74, 4);
-	clks[IMX6SX_CLK_DISPLAY_AXI]  = imx_clk_gate2("display_axi",   "display_podf",      base + 0x74, 6);
-	clks[IMX6SX_CLK_LCDIF2_PIX]   = imx_clk_gate2("lcdif2_pix",    "lcdif2_sel",        base + 0x74, 8);
-	clks[IMX6SX_CLK_LCDIF1_PIX]   = imx_clk_gate2("lcdif1_pix",    "lcdif1_sel",        base + 0x74, 10);
-	clks[IMX6SX_CLK_LDB_DI0]      = imx_clk_gate2("ldb_di0",       "ldb_di0_div_sel",   base + 0x74, 12);
-	clks[IMX6SX_CLK_QSPI1]        = imx_clk_gate2("qspi1",         "qspi1_podf",        base + 0x74, 14);
-	clks[IMX6SX_CLK_MLB]          = imx_clk_gate2("mlb",           "ahb",               base + 0x74, 18);
-	clks[IMX6SX_CLK_MMDC_P0_FAST] = imx_clk_gate2("mmdc_p0_fast",  "mmdc_podf",         base + 0x74, 20);
-	clks[IMX6SX_CLK_MMDC_P0_IPG]  = imx_clk_gate2("mmdc_p0_ipg",   "ipg",               base + 0x74, 24);
-	clks[IMX6SX_CLK_OCRAM]        = imx_clk_gate2("ocram",         "ocram_podf",        base + 0x74, 28);
-
-	/* CCGR4 */
-	clks[IMX6SX_CLK_PCIE_AXI]     = imx_clk_gate2("pcie_axi",      "display_podf",      base + 0x78, 0);
-	clks[IMX6SX_CLK_QSPI2]        = imx_clk_gate2("qspi2",         "qspi2_podf",        base + 0x78, 10);
-	clks[IMX6SX_CLK_PER1_BCH]     = imx_clk_gate2("per1_bch",      "usdhc3",            base + 0x78, 12);
-	clks[IMX6SX_CLK_PER2_MAIN]    = imx_clk_gate2("per2_main",     "ahb",               base + 0x78, 14);
-	clks[IMX6SX_CLK_PWM1]         = imx_clk_gate2("pwm1",          "perclk",            base + 0x78, 16);
-	clks[IMX6SX_CLK_PWM2]         = imx_clk_gate2("pwm2",          "perclk",            base + 0x78, 18);
-	clks[IMX6SX_CLK_PWM3]         = imx_clk_gate2("pwm3",          "perclk",            base + 0x78, 20);
-	clks[IMX6SX_CLK_PWM4]         = imx_clk_gate2("pwm4",          "perclk",            base + 0x78, 22);
-	clks[IMX6SX_CLK_GPMI_BCH_APB] = imx_clk_gate2("gpmi_bch_apb",  "usdhc3",            base + 0x78, 24);
-	clks[IMX6SX_CLK_GPMI_BCH]     = imx_clk_gate2("gpmi_bch",      "usdhc4",            base + 0x78, 26);
-	clks[IMX6SX_CLK_GPMI_IO]      = imx_clk_gate2("gpmi_io",       "qspi2_podf",        base + 0x78, 28);
-	clks[IMX6SX_CLK_GPMI_APB]     = imx_clk_gate2("gpmi_apb",      "usdhc3",            base + 0x78, 30);
-
-	/* CCGR5 */
-	clks[IMX6SX_CLK_ROM]          = imx_clk_gate2("rom",           "ahb",               base + 0x7c, 0);
-	clks[IMX6SX_CLK_SDMA]         = imx_clk_gate2("sdma",          "ahb",               base + 0x7c, 6);
-	clks[IMX6SX_CLK_SPBA]         = imx_clk_gate2("spba",          "ipg",               base + 0x7c, 12);
-	clks[IMX6SX_CLK_UART_IPG]     = imx_clk_gate2("uart_ipg",      "ipg",               base + 0x7c, 24);
-	clks[IMX6SX_CLK_UART_SERIAL]  = imx_clk_gate2("uart_serial",   "uart_podf",         base + 0x7c, 26);
-	clks[IMX6SX_CLK_SAI1_IPG]     = imx_clk_gate2("sai1_ipg",      "ipg",               base + 0x7c, 28);
-	clks[IMX6SX_CLK_SAI2_IPG]     = imx_clk_gate2("sai2_ipg",      "ipg",               base + 0x7c, 30);
-
-	/* CCGR6 */
-	clks[IMX6SX_CLK_USBOH3]       = imx_clk_gate2("usboh3",        "ipg",               base + 0x80, 0);
-	clks[IMX6SX_CLK_USDHC1]       = imx_clk_gate2("usdhc1",        "usdhc1_podf",       base + 0x80, 2);
-	clks[IMX6SX_CLK_USDHC2]       = imx_clk_gate2("usdhc2",        "usdhc2_podf",       base + 0x80, 4);
-	clks[IMX6SX_CLK_USDHC3]       = imx_clk_gate2("usdhc3",        "usdhc3_podf",       base + 0x80, 6);
-	clks[IMX6SX_CLK_USDHC4]       = imx_clk_gate2("usdhc4",        "usdhc4_podf",       base + 0x80, 8);
-	clks[IMX6SX_CLK_EIM_SLOW]     = imx_clk_gate2("eim_slow",      "eim_slow_podf",     base + 0x80, 10);
-	clks[IMX6SX_CLK_PWM8]         = imx_clk_gate2("pwm8",          "perclk",            base + 0x80, 16);
-	clks[IMX6SX_CLK_VADC]         = imx_clk_gate2("vadc",          "vid_podf",          base + 0x80, 20);
-	clks[IMX6SX_CLK_GIS]          = imx_clk_gate2("gis",           "display_podf",      base + 0x80, 22);
-	clks[IMX6SX_CLK_I2C4]         = imx_clk_gate2("i2c4",          "perclk",            base + 0x80, 24);
-	clks[IMX6SX_CLK_PWM5]         = imx_clk_gate2("pwm5",          "perclk",            base + 0x80, 26);
-	clks[IMX6SX_CLK_PWM6]         = imx_clk_gate2("pwm6",          "perclk",            base + 0x80, 28);
-	clks[IMX6SX_CLK_PWM7]         = imx_clk_gate2("pwm7",          "perclk",            base + 0x80, 30);
-
-	clks[IMX6SX_CLK_CKO1]         = imx_clk_gate("cko1",           "cko1_podf",         base + 0x60, 7);
-	clks[IMX6SX_CLK_CKO2]         = imx_clk_gate("cko2",           "cko2_podf",         base + 0x60, 24);
-
-	/* mask handshake of mmdc */
-	writel(BM_CCM_CCDR_MMDC_CH0_MASK, base + CCDR);
-
-	clk_data.clks = clks;
-	clk_data.clk_num = ARRAY_SIZE(clks);
-	of_clk_add_provider(ccm_node, of_clk_src_onecell_get, &clk_data);
-
-	if (IS_ENABLED(CONFIG_USB_IMX_PHY)) {
-		clk_enable(clks[IMX6SX_CLK_USBPHY1_GATE]);
-		clk_enable(clks[IMX6SX_CLK_USBPHY2_GATE]);
-	}
-
-	return 0;
-};
-
-static int imx6sx_clocks_init(void)
-{
-	if (!of_machine_is_compatible("fsl,imx6sx"))
-		return 0;
-
-	/* Set the default 132MHz for EIM module */
-	clk_set_parent(clks[IMX6SX_CLK_EIM_SLOW_SEL], clks[IMX6SX_CLK_PLL2_PFD2]);
-	clk_set_rate(clks[IMX6SX_CLK_EIM_SLOW], 132000000);
-
-	/* set parent clock for LCDIF1 pixel clock */
-	clk_set_parent(clks[IMX6SX_CLK_LCDIF1_PRE_SEL], clks[IMX6SX_CLK_PLL5_VIDEO_DIV]);
-	clk_set_parent(clks[IMX6SX_CLK_LCDIF1_SEL], clks[IMX6SX_CLK_LCDIF1_PODF]);
-
-	/*
-	 * Init enet system AHB clock, set to 200Mhz
-	 * pll2_pfd2_396m-> ENET_PODF-> ENET_AHB
-	 */
-	clk_set_parent(clks[IMX6SX_CLK_ENET_PRE_SEL], clks[IMX6SX_CLK_PLL2_PFD2]);
-	clk_set_parent(clks[IMX6SX_CLK_ENET_SEL], clks[IMX6SX_CLK_ENET_PODF]);
-	clk_set_rate(clks[IMX6SX_CLK_ENET_PODF], 200000000);
-	clk_set_rate(clks[IMX6SX_CLK_ENET_REF], 125000000);
-	clk_set_rate(clks[IMX6SX_CLK_ENET2_REF], 125000000);
-
-	/* Set parent clock for vadc */
-	clk_set_parent(clks[IMX6SX_CLK_VID_SEL], clks[IMX6SX_CLK_PLL3_USB_OTG]);
-
-	/* Update gpu clock from default 528M to 720M */
-	clk_set_parent(clks[IMX6SX_CLK_GPU_CORE_SEL], clks[IMX6SX_CLK_PLL3_PFD0]);
-	clk_set_parent(clks[IMX6SX_CLK_GPU_AXI_SEL], clks[IMX6SX_CLK_PLL3_PFD0]);
-
-	return 0;
-}
-coredevice_initcall(imx6sx_clocks_init);
-
-static __maybe_unused struct of_device_id imx6sx_ccm_dt_ids[] = {
-	{
-		.compatible = "fsl,imx6sx-ccm",
-	}, {
-		/* sentinel */
-	}
-};
-
-static struct driver_d imx6sx_ccm_driver = {
-	.probe	= imx6sx_ccm_probe,
-	.name	= "imx6-ccm",
-	.of_compatible = DRV_OF_COMPAT(imx6sx_ccm_dt_ids),
-};
-
-static int imx6sx_ccm_init(void)
-{
-	return platform_driver_register(&imx6sx_ccm_driver);
-}
-core_initcall(imx6sx_ccm_init);
diff --git a/arch/arm/mach-imx/clk-pfd.c b/arch/arm/mach-imx/clk-pfd.c
deleted file mode 100644
index 8f6d5ad..0000000
--- a/arch/arm/mach-imx/clk-pfd.c
+++ /dev/null
@@ -1,148 +0,0 @@
-/*
- * Copyright 2012 Freescale Semiconductor, Inc.
- * Copyright 2012 Linaro Ltd.
- *
- * The code contained herein is licensed under the GNU General Public
- * License. You may obtain a copy of the GNU General Public License
- * Version 2 or later at the following locations:
- *
- * http://www.opensource.org/licenses/gpl-license.html
- * http://www.gnu.org/copyleft/gpl.html
- */
-
-#include <common.h>
-#include <init.h>
-#include <driver.h>
-#include <linux/clk.h>
-#include <io.h>
-#include <linux/clkdev.h>
-#include <linux/err.h>
-#include <malloc.h>
-#include <asm-generic/div64.h>
-
-#include "clk.h"
-
-/**
- * struct clk_pfd - IMX PFD clock
- * @clk_hw:	clock source
- * @reg:	PFD register address
- * @idx:	the index of PFD encoded in the register
- *
- * PFD clock found on i.MX6 series.  Each register for PFD has 4 clk_pfd
- * data encoded, and member idx is used to specify the one.  And each
- * register has SET, CLR and TOG registers at offset 0x4 0x8 and 0xc.
- */
-struct clk_pfd {
-	struct clk	clk;
-	void __iomem	*reg;
-	u8		idx;
-	const char	*parent;
-};
-
-#define to_clk_pfd(_clk) container_of(_clk, struct clk_pfd, clk)
-
-#define SET	0x4
-#define CLR	0x8
-#define OTG	0xc
-
-static int clk_pfd_enable(struct clk *clk)
-{
-	struct clk_pfd *pfd = to_clk_pfd(clk);
-	writel(1 << ((pfd->idx + 1) * 8 - 1), pfd->reg + CLR);
-
-	return 0;
-}
-
-static void clk_pfd_disable(struct clk *clk)
-{
-	struct clk_pfd *pfd = to_clk_pfd(clk);
-
-	writel(1 << ((pfd->idx + 1) * 8 - 1), pfd->reg + SET);
-}
-
-static unsigned long clk_pfd_recalc_rate(struct clk *clk,
-					 unsigned long parent_rate)
-{
-	struct clk_pfd *pfd = to_clk_pfd(clk);
-	u64 tmp = parent_rate;
-	u8 frac = (readl(pfd->reg) >> (pfd->idx * 8)) & 0x3f;
-
-	tmp *= 18;
-	do_div(tmp, frac);
-
-	return tmp;
-}
-
-static long clk_pfd_round_rate(struct clk *clk, unsigned long rate,
-			       unsigned long *prate)
-{
-	u64 tmp = *prate;
-	u8 frac;
-
-	tmp = tmp * 18 + rate / 2;
-	do_div(tmp, rate);
-	frac = tmp;
-	if (frac < 12)
-		frac = 12;
-	else if (frac > 35)
-		frac = 35;
-	tmp = *prate;
-	tmp *= 18;
-	do_div(tmp, frac);
-
-	return tmp;
-}
-
-static int clk_pfd_set_rate(struct clk *clk, unsigned long rate,
-		unsigned long parent_rate)
-{
-	struct clk_pfd *pfd = to_clk_pfd(clk);
-	u64 tmp = parent_rate;
-	u8 frac;
-
-	tmp = tmp * 18 + rate / 2;
-	do_div(tmp, rate);
-	frac = tmp;
-	if (frac < 12)
-		frac = 12;
-	else if (frac > 35)
-		frac = 35;
-
-	writel(0x3f << (pfd->idx * 8), pfd->reg + CLR);
-	writel(frac << (pfd->idx * 8), pfd->reg + SET);
-
-	return 0;
-}
-
-static const struct clk_ops clk_pfd_ops = {
-	.enable		= clk_pfd_enable,
-	.disable	= clk_pfd_disable,
-	.recalc_rate	= clk_pfd_recalc_rate,
-	.round_rate	= clk_pfd_round_rate,
-	.set_rate	= clk_pfd_set_rate,
-};
-
-struct clk *imx_clk_pfd(const char *name, const char *parent,
-			void __iomem *reg, u8 idx)
-{
-	struct clk_pfd *pfd;
-	int ret;
-
-	pfd = xzalloc(sizeof(*pfd));
-
-	pfd->reg = reg;
-	pfd->idx = idx;
-	pfd->parent = parent;
-	pfd->clk.name = name;
-	pfd->clk.ops = &clk_pfd_ops;
-	pfd->clk.parent_names = &pfd->parent;
-	pfd->clk.num_parents = 1;
-
-	ret = clk_register(&pfd->clk);
-	if (ret) {
-		free(pfd);
-		return ERR_PTR(ret);
-	}
-
-	return &pfd->clk;
-}
diff --git a/arch/arm/mach-imx/clk-pllv1.c b/arch/arm/mach-imx/clk-pllv1.c
deleted file mode 100644
index f992134..0000000
--- a/arch/arm/mach-imx/clk-pllv1.c
+++ /dev/null
@@ -1,95 +0,0 @@
-/*
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-#include <common.h>
-#include <init.h>
-#include <driver.h>
-#include <linux/clk.h>
-#include <io.h>
-#include <linux/clkdev.h>
-#include <linux/err.h>
-#include <malloc.h>
-#include <asm-generic/div64.h>
-
-#include "clk.h"
-
-struct clk_pllv1 {
-	struct clk clk;
-	void __iomem *reg;
-	const char *parent;
-};
-
-static unsigned long clk_pllv1_recalc_rate(struct clk *clk,
-		unsigned long parent_rate)
-{
-	struct clk_pllv1 *pll = container_of(clk, struct clk_pllv1, clk);
-	unsigned long long ll;
-	int mfn_abs;
-	unsigned int mfi, mfn, mfd, pd;
-	u32 reg_val = readl(pll->reg);
-	unsigned long freq = parent_rate;
-
-	mfi = (reg_val >> 10) & 0xf;
-	mfn = reg_val & 0x3ff;
-	mfd = (reg_val >> 16) & 0x3ff;
-	pd =  (reg_val >> 26) & 0xf;
-
-	mfi = mfi <= 5 ? 5 : mfi;
-
-	mfn_abs = mfn;
-
-#if !defined CONFIG_ARCH_MX1 && !defined CONFIG_ARCH_MX21
-	if (mfn >= 0x200) {
-		mfn |= 0xFFFFFE00;
-		mfn_abs = -mfn;
-	}
-#endif
-
-	freq *= 2;
-	freq /= pd + 1;
-
-	ll = (unsigned long long)freq * mfn_abs;
-
-	do_div(ll, mfd + 1);
-	if (mfn < 0)
-		ll = (freq * mfi) - ll;
-	else
-		ll = (freq * mfi) + ll;
-
-	return ll;
-}
-
-struct clk_ops clk_pllv1_ops = {
-	.recalc_rate = clk_pllv1_recalc_rate,
-};
-
-struct clk *imx_clk_pllv1(const char *name, const char *parent,
-		void __iomem *base)
-{
-	struct clk_pllv1 *pll = xzalloc(sizeof(*pll));
-	int ret;
-
-	pll->parent = parent;
-	pll->reg = base;
-	pll->clk.ops = &clk_pllv1_ops;
-	pll->clk.name = name;
-	pll->clk.parent_names = &pll->parent;
-	pll->clk.num_parents = 1;
-
-	ret = clk_register(&pll->clk);
-	if (ret) {
-		free(pll);
-		return ERR_PTR(ret);
-	}
-
-	return &pll->clk;
-}
diff --git a/arch/arm/mach-imx/clk-pllv2.c b/arch/arm/mach-imx/clk-pllv2.c
deleted file mode 100644
index 5ba07fa..0000000
--- a/arch/arm/mach-imx/clk-pllv2.c
+++ /dev/null
@@ -1,230 +0,0 @@
-/*
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-#include <common.h>
-#include <init.h>
-#include <driver.h>
-#include <linux/clk.h>
-#include <io.h>
-#include <linux/clkdev.h>
-#include <linux/err.h>
-#include <malloc.h>
-#include <asm-generic/div64.h>
-
-#include "clk.h"
-
-/* PLL Register Offsets */
-#define MXC_PLL_DP_CTL			0x00
-#define MXC_PLL_DP_CONFIG		0x04
-#define MXC_PLL_DP_OP			0x08
-#define MXC_PLL_DP_MFD			0x0C
-#define MXC_PLL_DP_MFN			0x10
-#define MXC_PLL_DP_MFNMINUS		0x14
-#define MXC_PLL_DP_MFNPLUS		0x18
-#define MXC_PLL_DP_HFS_OP		0x1C
-#define MXC_PLL_DP_HFS_MFD		0x20
-#define MXC_PLL_DP_HFS_MFN		0x24
-#define MXC_PLL_DP_MFN_TOGC		0x28
-#define MXC_PLL_DP_DESTAT		0x2c
-
-/* PLL Register Bit definitions */
-#define MXC_PLL_DP_CTL_MUL_CTRL		0x2000
-#define MXC_PLL_DP_CTL_DPDCK0_2_EN	0x1000
-#define MXC_PLL_DP_CTL_DPDCK0_2_OFFSET	12
-#define MXC_PLL_DP_CTL_ADE		0x800
-#define MXC_PLL_DP_CTL_REF_CLK_DIV	0x400
-#define MXC_PLL_DP_CTL_REF_CLK_SEL_MASK	(3 << 8)
-#define MXC_PLL_DP_CTL_REF_CLK_SEL_OFFSET	8
-#define MXC_PLL_DP_CTL_HFSM		0x80
-#define MXC_PLL_DP_CTL_PRE		0x40
-#define MXC_PLL_DP_CTL_UPEN		0x20
-#define MXC_PLL_DP_CTL_RST		0x10
-#define MXC_PLL_DP_CTL_RCP		0x8
-#define MXC_PLL_DP_CTL_PLM		0x4
-#define MXC_PLL_DP_CTL_BRM0		0x2
-#define MXC_PLL_DP_CTL_LRF		0x1
-
-#define MXC_PLL_DP_CONFIG_BIST		0x8
-#define MXC_PLL_DP_CONFIG_SJC_CE	0x4
-#define MXC_PLL_DP_CONFIG_AREN		0x2
-#define MXC_PLL_DP_CONFIG_LDREQ		0x1
-
-#define MXC_PLL_DP_OP_MFI_OFFSET	4
-#define MXC_PLL_DP_OP_MFI_MASK		(0xF << 4)
-#define MXC_PLL_DP_OP_PDF_OFFSET	0
-#define MXC_PLL_DP_OP_PDF_MASK		0xF
-
-#define MXC_PLL_DP_MFD_OFFSET		0
-#define MXC_PLL_DP_MFD_MASK		0x07FFFFFF
-
-#define MXC_PLL_DP_MFN_OFFSET		0x0
-#define MXC_PLL_DP_MFN_MASK		0x07FFFFFF
-
-#define MXC_PLL_DP_MFN_TOGC_TOG_DIS	(1 << 17)
-#define MXC_PLL_DP_MFN_TOGC_TOG_EN	(1 << 16)
-#define MXC_PLL_DP_MFN_TOGC_CNT_OFFSET	0x0
-#define MXC_PLL_DP_MFN_TOGC_CNT_MASK	0xFFFF
-
-#define MXC_PLL_DP_DESTAT_TOG_SEL	(1 << 31)
-#define MXC_PLL_DP_DESTAT_MFN		0x07FFFFFF
-
-#define MAX_DPLL_WAIT_TRIES	1000 /* 1000 * udelay(1) = 1ms */
-
-struct clk_pllv2 {
-	struct clk clk;
-	void __iomem *reg;
-	const char *parent;
-};
-
-static unsigned long __clk_pllv2_recalc_rate(unsigned long parent_rate,
-		u32 dp_ctl, u32 dp_op, u32 dp_mfd, u32 dp_mfn)
-{
-	long mfi, mfn, mfd, pdf, ref_clk, mfn_abs;
-	unsigned long dbl;
-	uint64_t temp;
-
-	dbl = dp_ctl & MXC_PLL_DP_CTL_DPDCK0_2_EN;
-
-	pdf = dp_op & MXC_PLL_DP_OP_PDF_MASK;
-	mfi = (dp_op & MXC_PLL_DP_OP_MFI_MASK) >> MXC_PLL_DP_OP_MFI_OFFSET;
-	mfi = (mfi <= 5) ? 5 : mfi;
-	mfd = dp_mfd & MXC_PLL_DP_MFD_MASK;
-	mfn = mfn_abs = dp_mfn & MXC_PLL_DP_MFN_MASK;
-	/* Sign extend to 32-bits */
-	if (mfn >= 0x04000000) {
-		mfn |= 0xFC000000;
-		mfn_abs = -mfn;
-	}
-
-	ref_clk = 2 * parent_rate;
-	if (dbl != 0)
-		ref_clk *= 2;
-
-	ref_clk /= (pdf + 1);
-	temp = (u64) ref_clk * mfn_abs;
-	do_div(temp, mfd + 1);
-	if (mfn < 0)
-		temp = (ref_clk * mfi) - temp;
-	else
-		temp = (ref_clk * mfi) + temp;
-
-	return temp;
-}
-
-static unsigned long clk_pllv2_recalc_rate(struct clk *clk,
-		unsigned long parent_rate)
-{
-	u32 dp_op, dp_mfd, dp_mfn, dp_ctl;
-	void __iomem *pllbase;
-	struct clk_pllv2 *pll = container_of(clk, struct clk_pllv2, clk);
-
-	pllbase = pll->reg;
-
-	dp_ctl = __raw_readl(pllbase + MXC_PLL_DP_CTL);
-	dp_op = __raw_readl(pllbase + MXC_PLL_DP_OP);
-	dp_mfd = __raw_readl(pllbase + MXC_PLL_DP_MFD);
-	dp_mfn = __raw_readl(pllbase + MXC_PLL_DP_MFN);
-
-	return __clk_pllv2_recalc_rate(parent_rate, dp_ctl, dp_op, dp_mfd, dp_mfn);
-}
-
-static int __clk_pllv2_set_rate(unsigned long rate, unsigned long parent_rate,
-		u32 *dp_op, u32 *dp_mfd, u32 *dp_mfn)
-{
-	u32 reg;
-	long mfi, pdf, mfn, mfd = 999999;
-	u64 temp64;
-	unsigned long quad_parent_rate;
-
-	quad_parent_rate = 4 * parent_rate;
-	pdf = mfi = -1;
-	while (++pdf < 16 && mfi < 5)
-		mfi = rate * (pdf+1) / quad_parent_rate;
-	if (mfi > 15)
-		return -EINVAL;
-	pdf--;
-
-	temp64 = rate * (pdf + 1) - quad_parent_rate * mfi;
-	do_div(temp64, quad_parent_rate / 1000000);
-	mfn = (long)temp64;
-
-	reg = mfi << 4 | pdf;
-
-	*dp_op = reg;
-	*dp_mfd = mfd;
-	*dp_mfn = mfn;
-
-	return 0;
-}
-
-static int clk_pllv2_set_rate(struct clk *clk, unsigned long rate,
-		unsigned long parent_rate)
-{
-	struct clk_pllv2 *pll = container_of(clk, struct clk_pllv2, clk);
-	void __iomem *pllbase;
-	u32 dp_ctl, dp_op, dp_mfd, dp_mfn;
-	int ret;
-
-	pllbase = pll->reg;
-
-	ret = __clk_pllv2_set_rate(rate, parent_rate, &dp_op, &dp_mfd, &dp_mfn);
-	if (ret)
-		return ret;
-
-	dp_ctl = __raw_readl(pllbase + MXC_PLL_DP_CTL);
-	/* use dpdck0_2 */
-	__raw_writel(dp_ctl | 0x1000L, pllbase + MXC_PLL_DP_CTL);
-
-	__raw_writel(dp_op, pllbase + MXC_PLL_DP_OP);
-	__raw_writel(dp_mfd, pllbase + MXC_PLL_DP_MFD);
-	__raw_writel(dp_mfn, pllbase + MXC_PLL_DP_MFN);
-
-	return 0;
-}
-
-static long clk_pllv2_round_rate(struct clk *clk, unsigned long rate,
-		unsigned long *prate)
-{
-	u32 dp_op, dp_mfd, dp_mfn;
-
-	__clk_pllv2_set_rate(rate, *prate, &dp_op, &dp_mfd, &dp_mfn);
-	return __clk_pllv2_recalc_rate(*prate, MXC_PLL_DP_CTL_DPDCK0_2_EN,
-			dp_op, dp_mfd, dp_mfn);
-}
-
-struct clk_ops clk_pllv2_ops = {
-	.recalc_rate = clk_pllv2_recalc_rate,
-	.round_rate = clk_pllv2_round_rate,
-	.set_rate = clk_pllv2_set_rate,
-};
-
-struct clk *imx_clk_pllv2(const char *name, const char *parent,
-		void __iomem *base)
-{
-	struct clk_pllv2 *pll = xzalloc(sizeof(*pll));
-	int ret;
-
-	pll->parent = parent;
-	pll->reg = base;
-	pll->clk.ops = &clk_pllv2_ops;
-	pll->clk.name = name;
-	pll->clk.parent_names = &pll->parent;
-	pll->clk.num_parents = 1;
-
-	ret = clk_register(&pll->clk);
-	if (ret) {
-		free(pll);
-		return ERR_PTR(ret);
-	}
-
-	return &pll->clk;
-}
diff --git a/arch/arm/mach-imx/clk-pllv3.c b/arch/arm/mach-imx/clk-pllv3.c
deleted file mode 100644
index e38dcdf..0000000
--- a/arch/arm/mach-imx/clk-pllv3.c
+++ /dev/null
@@ -1,326 +0,0 @@
-/*
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-#include <common.h>
-#include <init.h>
-#include <driver.h>
-#include <linux/clk.h>
-#include <io.h>
-#include <linux/clkdev.h>
-#include <linux/err.h>
-#include <malloc.h>
-#include <clock.h>
-#include <asm-generic/div64.h>
-
-#include "clk.h"
-
-#define PLL_NUM_OFFSET		0x10
-#define PLL_DENOM_OFFSET	0x20
-
-#define BM_PLL_POWER		(0x1 << 12)
-#define BM_PLL_ENABLE		(0x1 << 13)
-#define BM_PLL_BYPASS		(0x1 << 16)
-#define BM_PLL_LOCK		(0x1 << 31)
-
-struct clk_pllv3 {
-	struct clk	clk;
-	void __iomem	*base;
-	bool		powerup_set;
-	u32		div_mask;
-	const char	*parent;
-};
-
-#define to_clk_pllv3(_clk) container_of(_clk, struct clk_pllv3, clk)
-
-static int clk_pllv3_enable(struct clk *clk)
-{
-	struct clk_pllv3 *pll = to_clk_pllv3(clk);
-	u32 val;
-	int timeout = 10000;
-
-	val = readl(pll->base);
-	val &= ~BM_PLL_BYPASS;
-	if (pll->powerup_set)
-		val |= BM_PLL_POWER;
-	else
-		val &= ~BM_PLL_POWER;
-	writel(val, pll->base);
-
-	/* Wait for PLL to lock */
-	while (timeout--) {
-		if (readl(pll->base) & BM_PLL_LOCK)
-			break;
-	}
-
-	if (!timeout)
-		return -ETIMEDOUT;
-
-	val = readl(pll->base);
-	val |= BM_PLL_ENABLE;
-	writel(val, pll->base);
-
-	return 0;
-}
-
-static void clk_pllv3_disable(struct clk *clk)
-{
-	struct clk_pllv3 *pll = to_clk_pllv3(clk);
-	u32 val;
-
-	val = readl(pll->base);
-	val &= ~BM_PLL_ENABLE;
-	writel(val, pll->base);
-
-	val |= BM_PLL_BYPASS;
-	if (pll->powerup_set)
-		val &= ~BM_PLL_POWER;
-	else
-		val |= BM_PLL_POWER;
-	writel(val, pll->base);
-}
-
-static unsigned long clk_pllv3_recalc_rate(struct clk *clk,
-					   unsigned long parent_rate)
-{
-	struct clk_pllv3 *pll = to_clk_pllv3(clk);
-	u32 div = readl(pll->base)  & pll->div_mask;
-
-	return (div == 1) ? parent_rate * 22 : parent_rate * 20;
-}
-
-static long clk_pllv3_round_rate(struct clk *clk, unsigned long rate,
-				 unsigned long *prate)
-{
-	unsigned long parent_rate = *prate;
-
-	return (rate >= parent_rate * 22) ? parent_rate * 22 :
-					    parent_rate * 20;
-}
-
-static int clk_pllv3_set_rate(struct clk *clk, unsigned long rate,
-		unsigned long parent_rate)
-{
-	struct clk_pllv3 *pll = to_clk_pllv3(clk);
-	u32 val, div;
-
-	if (rate == parent_rate * 22)
-		div = 1;
-	else if (rate == parent_rate * 20)
-		div = 0;
-	else
-		return -EINVAL;
-
-	val = readl(pll->base);
-	val &= ~pll->div_mask;
-	val |= div;
-	writel(val, pll->base);
-
-	return 0;
-}
-
-static const struct clk_ops clk_pllv3_ops = {
-	.enable		= clk_pllv3_enable,
-	.disable	= clk_pllv3_disable,
-	.recalc_rate	= clk_pllv3_recalc_rate,
-	.round_rate	= clk_pllv3_round_rate,
-	.set_rate	= clk_pllv3_set_rate,
-};
-
-static unsigned long clk_pllv3_sys_recalc_rate(struct clk *clk,
-					       unsigned long parent_rate)
-{
-	struct clk_pllv3 *pll = to_clk_pllv3(clk);
-	u32 div = readl(pll->base) & pll->div_mask;
-
-	return parent_rate * div / 2;
-}
-
-static long clk_pllv3_sys_round_rate(struct clk *clk, unsigned long rate,
-				     unsigned long *prate)
-{
-	unsigned long parent_rate = *prate;
-	unsigned long min_rate = parent_rate * 54 / 2;
-	unsigned long max_rate = parent_rate * 108 / 2;
-	u32 div;
-
-	if (rate > max_rate)
-		rate = max_rate;
-	else if (rate < min_rate)
-		rate = min_rate;
-	div = rate * 2 / parent_rate;
-
-	return parent_rate * div / 2;
-}
-
-static int clk_pllv3_sys_set_rate(struct clk *clk, unsigned long rate,
-		unsigned long parent_rate)
-{
-	struct clk_pllv3 *pll = to_clk_pllv3(clk);
-	unsigned long min_rate = parent_rate * 54 / 2;
-	unsigned long max_rate = parent_rate * 108 / 2;
-	u32 val, div;
-
-	if (rate < min_rate || rate > max_rate)
-		return -EINVAL;
-
-	div = rate * 2 / parent_rate;
-	val = readl(pll->base);
-	val &= ~pll->div_mask;
-	val |= div;
-	writel(val, pll->base);
-
-	return 0;
-}
-
-static const struct clk_ops clk_pllv3_sys_ops = {
-	.enable		= clk_pllv3_enable,
-	.disable	= clk_pllv3_disable,
-	.recalc_rate	= clk_pllv3_sys_recalc_rate,
-	.round_rate	= clk_pllv3_sys_round_rate,
-	.set_rate	= clk_pllv3_sys_set_rate,
-};
-
-static unsigned long clk_pllv3_av_recalc_rate(struct clk *clk,
-					      unsigned long parent_rate)
-{
-	struct clk_pllv3 *pll = to_clk_pllv3(clk);
-	u32 mfn = readl(pll->base + PLL_NUM_OFFSET);
-	u32 mfd = readl(pll->base + PLL_DENOM_OFFSET);
-	u32 div = readl(pll->base) & pll->div_mask;
-
-	return (parent_rate * div) + ((parent_rate / mfd) * mfn);
-}
-
-static long clk_pllv3_av_round_rate(struct clk *clk, unsigned long rate,
-				    unsigned long *prate)
-{
-	unsigned long parent_rate = *prate;
-	unsigned long min_rate = parent_rate * 27;
-	unsigned long max_rate = parent_rate * 54;
-	u32 div;
-	u32 mfn, mfd = 1000000;
-	u64 temp64;
-
-	if (rate > max_rate)
-		rate = max_rate;
-	else if (rate < min_rate)
-		rate = min_rate;
-
-	div = rate / parent_rate;
-	temp64 = (u64) (rate - div * parent_rate);
-	temp64 *= mfd;
-	do_div(temp64, parent_rate);
-	mfn = temp64;
-
-	return parent_rate * div + parent_rate / mfd * mfn;
-}
-
-static int clk_pllv3_av_set_rate(struct clk *clk, unsigned long rate,
-		unsigned long parent_rate)
-{
-	struct clk_pllv3 *pll = to_clk_pllv3(clk);
-	unsigned long min_rate = parent_rate * 27;
-	unsigned long max_rate = parent_rate * 54;
-	u32 val, div;
-	u32 mfn, mfd = 1000000;
-	u64 temp64;
-
-	if (rate < min_rate || rate > max_rate)
-		return -EINVAL;
-
-	div = rate / parent_rate;
-	temp64 = (u64) (rate - div * parent_rate);
-	temp64 *= mfd;
-	do_div(temp64, parent_rate);
-	mfn = temp64;
-
-	val = readl(pll->base);
-	val &= ~pll->div_mask;
-	val |= div;
-	writel(val, pll->base);
-	writel(mfn, pll->base + PLL_NUM_OFFSET);
-	writel(mfd, pll->base + PLL_DENOM_OFFSET);
-
-	return 0;
-}
-
-static const struct clk_ops clk_pllv3_av_ops = {
-	.enable		= clk_pllv3_enable,
-	.disable	= clk_pllv3_disable,
-	.recalc_rate	= clk_pllv3_av_recalc_rate,
-	.round_rate	= clk_pllv3_av_round_rate,
-	.set_rate	= clk_pllv3_av_set_rate,
-};
-
-static unsigned long clk_pllv3_enet_recalc_rate(struct clk *clk,
-						unsigned long parent_rate)
-{
-	return 500000000;
-}
-
-static const struct clk_ops clk_pllv3_enet_ops = {
-	.enable		= clk_pllv3_enable,
-	.disable	= clk_pllv3_disable,
-	.recalc_rate	= clk_pllv3_enet_recalc_rate,
-};
-
-static const struct clk_ops clk_pllv3_mlb_ops = {
-	.enable		= clk_pllv3_enable,
-	.disable	= clk_pllv3_disable,
-};
-
-struct clk *imx_clk_pllv3(enum imx_pllv3_type type, const char *name,
-			  const char *parent, void __iomem *base,
-			  u32 div_mask)
-{
-	struct clk_pllv3 *pll;
-	const struct clk_ops *ops;
-	int ret;
-
-	pll = xzalloc(sizeof(*pll));
-
-	switch (type) {
-	case IMX_PLLV3_SYS:
-		ops = &clk_pllv3_sys_ops;
-		break;
-	case IMX_PLLV3_USB:
-		ops = &clk_pllv3_ops;
-		pll->powerup_set = true;
-		break;
-	case IMX_PLLV3_AV:
-		ops = &clk_pllv3_av_ops;
-		break;
-	case IMX_PLLV3_ENET:
-		ops = &clk_pllv3_enet_ops;
-		break;
-	case IMX_PLLV3_MLB:
-		ops = &clk_pllv3_mlb_ops;
-		break;
-	default:
-		ops = &clk_pllv3_ops;
-	}
-	pll->base = base;
-	pll->div_mask = div_mask;
-	pll->parent = parent;
-	pll->clk.ops = ops;
-	pll->clk.name = name;
-	pll->clk.parent_names = &pll->parent;
-	pll->clk.num_parents = 1;
-
-	ret = clk_register(&pll->clk);
-	if (ret) {
-		free(pll);
-		return ERR_PTR(ret);
-	}
-
-	return &pll->clk;
-}
diff --git a/arch/arm/mach-imx/clk.h b/arch/arm/mach-imx/clk.h
deleted file mode 100644
index c5913e1..0000000
--- a/arch/arm/mach-imx/clk.h
+++ /dev/null
@@ -1,104 +0,0 @@
-#ifndef __IMX_CLK_H
-#define __IMX_CLK_H
-
-struct clk *clk_gate2(const char *name, const char *parent, void __iomem *reg,
-		u8 shift);
-
-static inline struct clk *imx_clk_divider(const char *name, const char *parent,
-		void __iomem *reg, u8 shift, u8 width)
-{
-	return clk_divider(name, parent, reg, shift, width, CLK_SET_RATE_PARENT);
-}
-
-static inline struct clk *imx_clk_divider_np(const char *name, const char *parent,
-		void __iomem *reg, u8 shift, u8 width)
-{
-	return clk_divider(name, parent, reg, shift, width, 0);
-}
-
-static inline struct clk *imx_clk_divider_table(const char *name,
-		const char *parent, void __iomem *reg, u8 shift, u8 width,
-		const struct clk_div_table *table)
-{
-	return clk_divider_table(name, parent, reg, shift, width, table,
-			CLK_SET_RATE_PARENT);
-}
-
-static inline struct clk *imx_clk_fixed_factor(const char *name,
-		const char *parent, unsigned int mult, unsigned int div)
-{
-	return clk_fixed_factor(name, parent, mult, div, CLK_SET_RATE_PARENT);
-}
-
-static inline struct clk *imx_clk_mux(const char *name, void __iomem *reg,
-		u8 shift, u8 width, const char **parents, u8 num_parents)
-{
-	return clk_mux(name, reg, shift, width, parents, num_parents, 0);
-}
-
-static inline struct clk *imx_clk_mux_p(const char *name, void __iomem *reg,
-		u8 shift, u8 width, const char **parents, u8 num_parents)
-{
-	return clk_mux(name, reg, shift, width, parents, num_parents, CLK_SET_RATE_PARENT);
-}
-
-static inline struct clk *imx_clk_gate(const char *name, const char *parent,
-		void __iomem *reg, u8 shift)
-{
-	return clk_gate(name, parent, reg, shift, CLK_SET_RATE_PARENT, 0);
-}
-
-static inline struct clk *imx_clk_gate2(const char *name, const char *parent,
-		void __iomem *reg, u8 shift)
-{
-	return clk_gate2(name, parent, reg, shift);
-}
-
-struct clk *imx_clk_pllv1(const char *name, const char *parent,
-		void __iomem *base);
-
-struct clk *imx_clk_pllv2(const char *name, const char *parent,
-		void __iomem *base);
-
-enum imx_pllv3_type {
-	IMX_PLLV3_GENERIC,
-	IMX_PLLV3_SYS,
-	IMX_PLLV3_USB,
-	IMX_PLLV3_AV,
-	IMX_PLLV3_ENET,
-	IMX_PLLV3_MLB,
-};
-
-struct clk *imx_clk_pllv3(enum imx_pllv3_type type, const char *name,
-			  const char *parent, void __iomem *base,
-			  u32 div_mask);
-
-struct clk *imx_clk_pfd(const char *name, const char *parent,
-			void __iomem *reg, u8 idx);
-
-static inline struct clk *imx_clk_busy_divider(const char *name, const char *parent,
-				 void __iomem *reg, u8 shift, u8 width,
-				 void __iomem *busy_reg, u8 busy_shift)
-{
-	/*
-	 * For now we do not support rate setting, so just fall back to
-	 * regular divider.
-	 */
-	return imx_clk_divider(name, parent, reg, shift, width);
-}
-
-static inline struct clk *imx_clk_busy_mux(const char *name, void __iomem *reg, u8 shift,
-			     u8 width, void __iomem *busy_reg, u8 busy_shift,
-			     const char **parents, int num_parents)
-{
-	/*
-	 * For now we do not support mux switching, so just fall back to
-	 * regular mux.
-	 */
-	return imx_clk_mux(name, reg, shift, width, parents, num_parents);
-}
-
-struct clk *imx_clk_gate_exclusive(const char *name, const char *parent,
-		void __iomem *reg, u8 shift, u32 exclusive_mask);
-
-#endif /* __IMX_CLK_H */
diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index 0fe8f1e..a4e4ed0 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -9,3 +9,4 @@ obj-$(CONFIG_ARCH_ROCKCHIP)	+= rockchip/
 obj-$(CONFIG_ARCH_TEGRA)	+= tegra/
 obj-$(CONFIG_CLK_SOCFPGA)	+= socfpga.o
 obj-$(CONFIG_MACH_MIPS_ATH79)	+= clk-ar933x.o
+obj-$(CONFIG_ARCH_IMX)		+= imx/
diff --git a/drivers/clk/imx/Makefile b/drivers/clk/imx/Makefile
new file mode 100644
index 0000000..893a1a5
--- /dev/null
+++ b/drivers/clk/imx/Makefile
@@ -0,0 +1,21 @@
+obj-$(CONFIG_COMMON_CLK) +=	\
+	clk-pllv1.o		\
+	clk-pllv2.o		\
+	clk-pllv3.o		\
+	clk-pfd.o		\
+	clk-gate2.o		\
+	clk-gate-exclusive.o
+
+obj-$(CONFIG_ARCH_IMX1)   += clk-imx1.o
+obj-$(CONFIG_ARCH_IMX25)  += clk-imx25.o
+obj-$(CONFIG_ARCH_IMX21)  += clk-imx21.o
+obj-$(CONFIG_ARCH_IMX27)  += clk-imx27.o
+obj-$(CONFIG_ARCH_IMX31)  += clk-imx31.o
+obj-$(CONFIG_ARCH_IMX35)  += clk-imx35.o
+obj-$(CONFIG_ARCH_IMX50)  += clk-imx5.o
+obj-$(CONFIG_ARCH_IMX51)  += clk-imx5.o
+obj-$(CONFIG_ARCH_IMX53)  += clk-imx5.o
+obj-$(CONFIG_ARCH_IMX6)   += clk-imx6.o
+obj-$(CONFIG_ARCH_IMX6SX) += clk-imx6sx.o
+
+
diff --git a/drivers/clk/imx/clk-gate-exclusive.c b/drivers/clk/imx/clk-gate-exclusive.c
new file mode 100644
index 0000000..db88db0
--- /dev/null
+++ b/drivers/clk/imx/clk-gate-exclusive.c
@@ -0,0 +1,103 @@
+/*
+ * Copyright 2014 Freescale Semiconductor, Inc.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+#include <common.h>
+#include <io.h>
+#include <malloc.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+
+#include "clk.h"
+
+/**
+ * struct clk_gate_exclusive - i.MX specific gate clock which is mutually
+ * exclusive with other gate clocks
+ *
+ * @gate: the parent class
+ * @exclusive_mask: mask of gate bits which are mutually exclusive to this
+ *	gate clock
+ *
+ * The imx exclusive gate clock is a subclass of basic clk_gate
+ * with an addtional mask to indicate which other gate bits in the same
+ * register is mutually exclusive to this gate clock.
+ */
+struct clk_gate_exclusive {
+	struct clk clk;
+	void __iomem *reg;
+	int shift;
+	const char *parent;
+	u32 exclusive_mask;
+};
+
+static int clk_gate_exclusive_enable(struct clk *clk)
+{
+	struct clk_gate_exclusive *exgate = container_of(clk,
+					struct clk_gate_exclusive, clk);
+	u32 val = readl(exgate->reg);
+
+	if (val & exgate->exclusive_mask)
+		return -EBUSY;
+
+	val |= 1 << exgate->shift;
+
+	writel(val, exgate->reg);
+
+	return 0;
+}
+
+static void clk_gate_exclusive_disable(struct clk *clk)
+{
+	struct clk_gate_exclusive *exgate = container_of(clk,
+					struct clk_gate_exclusive, clk);
+	u32 val = readl(exgate->reg);
+
+	val &= ~(1 << exgate->shift);
+
+	writel(val, exgate->reg);
+}
+
+static int clk_gate_exclusive_is_enabled(struct clk *clk)
+{
+	struct clk_gate_exclusive *exgate = container_of(clk,
+					struct clk_gate_exclusive, clk);
+
+	return readl(exgate->reg) & (1 << exgate->shift);
+}
+
+static const struct clk_ops clk_gate_exclusive_ops = {
+	.enable = clk_gate_exclusive_enable,
+	.disable = clk_gate_exclusive_disable,
+	.is_enabled = clk_gate_exclusive_is_enabled,
+};
+
+struct clk *imx_clk_gate_exclusive(const char *name, const char *parent,
+	 void __iomem *reg, u8 shift, u32 exclusive_mask)
+{
+	struct clk_gate_exclusive *exgate;
+	int ret;
+
+	exgate = xzalloc(sizeof(*exgate));
+	exgate->parent = parent;
+	exgate->clk.name = name;
+	exgate->clk.ops = &clk_gate_exclusive_ops;
+	exgate->clk.flags = CLK_SET_RATE_PARENT;
+	exgate->clk.parent_names = &exgate->parent;
+	exgate->clk.num_parents = 1;
+
+	exgate->reg = reg;
+	exgate->shift = shift;
+	exgate->exclusive_mask = exclusive_mask;
+
+	ret = clk_register(&exgate->clk);
+	if (ret) {
+		free(exgate);
+		return ERR_PTR(ret);
+	}
+
+	return &exgate->clk;
+}
diff --git a/drivers/clk/imx/clk-gate2.c b/drivers/clk/imx/clk-gate2.c
new file mode 100644
index 0000000..faed631
--- /dev/null
+++ b/drivers/clk/imx/clk-gate2.c
@@ -0,0 +1,145 @@
+/*
+ * clk-gate2.c - barebox 2-bit clock support. Based on Linux clk support
+ *
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
+
+#include <common.h>
+#include <io.h>
+#include <malloc.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+
+#include "clk.h"
+
+
+struct clk_gate2 {
+	struct clk clk;
+	void __iomem *reg;
+	int shift;
+	const char *parent;
+#define CLK_GATE_INVERTED	(1 << 0)
+	unsigned flags;
+};
+
+#define to_clk_gate2(_clk) container_of(_clk, struct clk_gate2, clk)
+
+static int clk_gate2_enable(struct clk *clk)
+{
+	struct clk_gate2 *g = to_clk_gate2(clk);
+	u32 val;
+
+	val = readl(g->reg);
+
+	if (g->flags & CLK_GATE_INVERTED)
+		val &= ~(3 << g->shift);
+	else
+		val |= 3 << g->shift;
+
+	writel(val, g->reg);
+
+	return 0;
+}
+
+static void clk_gate2_disable(struct clk *clk)
+{
+	struct clk_gate2 *g = to_clk_gate2(clk);
+	u32 val;
+
+	val = readl(g->reg);
+
+	if (g->flags & CLK_GATE_INVERTED)
+		val |= 3 << g->shift;
+	else
+		val &= ~(3 << g->shift);
+
+	writel(val, g->reg);
+}
+
+static int clk_gate2_is_enabled(struct clk *clk)
+{
+	struct clk_gate2 *g = to_clk_gate2(clk);
+	u32 val;
+
+	val = readl(g->reg);
+
+	if (val & (1 << g->shift))
+		return g->flags & CLK_GATE_INVERTED ? 0 : 1;
+	else
+		return g->flags & CLK_GATE_INVERTED ? 1 : 0;
+}
+
+static struct clk_ops clk_gate2_ops = {
+	.set_rate = clk_parent_set_rate,
+	.round_rate = clk_parent_round_rate,
+	.enable = clk_gate2_enable,
+	.disable = clk_gate2_disable,
+	.is_enabled = clk_gate2_is_enabled,
+};
+
+struct clk *clk_gate2_alloc(const char *name, const char *parent,
+		void __iomem *reg, u8 shift)
+{
+	struct clk_gate2 *g = xzalloc(sizeof(*g));
+
+	g->parent = parent;
+	g->reg = reg;
+	g->shift = shift;
+	g->clk.ops = &clk_gate2_ops;
+	g->clk.name = name;
+	g->clk.parent_names = &g->parent;
+	g->clk.num_parents = 1;
+	g->clk.flags = CLK_SET_RATE_PARENT;
+
+	return &g->clk;
+}
+
+void clk_gate2_free(struct clk *clk)
+{
+	struct clk_gate2 *g = to_clk_gate2(clk);
+
+	free(g);
+}
+
+struct clk *clk_gate2(const char *name, const char *parent, void __iomem *reg,
+		u8 shift)
+{
+	struct clk *g;
+	int ret;
+
+	g = clk_gate2_alloc(name , parent, reg, shift);
+
+	ret = clk_register(g);
+	if (ret) {
+		free(to_clk_gate2(g));
+		return ERR_PTR(ret);
+	}
+
+	return g;
+}
+
+struct clk *clk_gate2_inverted(const char *name, const char *parent,
+		void __iomem *reg, u8 shift)
+{
+	struct clk *clk;
+	struct clk_gate2 *g;
+
+	clk = clk_gate2(name, parent, reg, shift);
+	if (IS_ERR(clk))
+		return clk;
+
+	g = to_clk_gate2(clk);
+
+	g->flags = CLK_GATE_INVERTED;
+
+	return clk;
+}
diff --git a/drivers/clk/imx/clk-imx1.c b/drivers/clk/imx/clk-imx1.c
new file mode 100644
index 0000000..5f600a9
--- /dev/null
+++ b/drivers/clk/imx/clk-imx1.c
@@ -0,0 +1,121 @@
+/*
+ *  Copyright (C) 2008 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License along
+ * with this program; if not, write to the Free Software Foundation, Inc.,
+ * 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <linux/clk.h>
+#include <io.h>
+#include <linux/clkdev.h>
+#include <linux/err.h>
+#include <mach/imx1-regs.h>
+
+#include "clk.h"
+
+#define CCM_CSCR	0x0
+#define CCM_MPCTL0	0x4
+#define CCM_SPCTL0	0xc
+#define CCM_PCDR	0x20
+
+enum imx1_clks {
+	dummy, clk32, clk16m, clk32_premult, prem, mpll, spll, mcu,
+	fclk, hclk, clk48m, per1, per2, per3, clko, dma_gate, csi_gate,
+	mma_gate, usbd_gate, clk_max
+};
+
+static struct clk *clks[clk_max];
+
+static const char *prem_sel_clks[] = {
+	"clk32_premult",
+	"clk16m",
+};
+
+static const char *clko_sel_clks[] = {
+	"per1",
+	"hclk",
+	"clk48m",
+	"clk16m",
+	"prem",
+	"fclk",
+};
+
+int __init mx1_clocks_init(void __iomem *regs, unsigned long fref)
+{
+	clks[dummy] = clk_fixed("dummy", 0);
+	clks[clk32] = clk_fixed("clk32", fref);
+	clks[clk16m] = clk_fixed("clk16m", 16000000);
+	clks[clk32_premult] = imx_clk_fixed_factor("clk32_premult", "clk32", 512, 1);
+	clks[prem] = imx_clk_mux("prem", regs + CCM_CSCR, 16, 1, prem_sel_clks,
+			ARRAY_SIZE(prem_sel_clks));
+	clks[mpll] = imx_clk_pllv1("mpll", "clk32_premult", regs + CCM_MPCTL0);
+	clks[spll] = imx_clk_pllv1("spll", "prem", regs + CCM_SPCTL0);
+	clks[mcu] = imx_clk_divider("mcu", "clk32_premult", regs + CCM_CSCR, 15, 1);
+	clks[fclk] = imx_clk_divider("fclk", "mpll", regs + CCM_CSCR, 15, 1);
+	clks[hclk] = imx_clk_divider("hclk", "spll", regs + CCM_CSCR, 10, 4);
+	clks[clk48m] = imx_clk_divider("clk48m", "spll", regs + CCM_CSCR, 26, 3);
+	clks[per1] = imx_clk_divider("per1", "spll", regs + CCM_PCDR, 0, 4);
+	clks[per2] = imx_clk_divider("per2", "spll", regs + CCM_PCDR, 4, 4);
+	clks[per3] = imx_clk_divider("per3", "spll", regs + CCM_PCDR, 16, 7);
+	clks[clko] = imx_clk_mux("clko", regs + CCM_CSCR, 29, 3, clko_sel_clks,
+			ARRAY_SIZE(clko_sel_clks));
+
+	clkdev_add_physbase(clks[per1], MX1_TIM1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per1], MX1_TIM2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per2], MX1_LCDC_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per1], MX1_UART1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per1], MX1_UART2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per2], MX1_CSPI1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per2], MX1_CSPI2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[hclk], MX1_I2C_BASE_ADDR, NULL);
+
+	return 0;
+}
+
+static int imx1_ccm_probe(struct device_d *dev)
+{
+	struct resource *iores;
+	void __iomem *regs;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+	regs = IOMEM(iores->start);
+
+	mx1_clocks_init(regs, 32000);
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id imx1_ccm_dt_ids[] = {
+	{
+		.compatible = "fsl,imx1-ccm",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d imx1_ccm_driver = {
+	.probe	= imx1_ccm_probe,
+	.name	= "imx1-ccm",
+	.of_compatible = DRV_OF_COMPAT(imx1_ccm_dt_ids),
+};
+
+static int imx1_ccm_init(void)
+{
+	return platform_driver_register(&imx1_ccm_driver);
+}
+core_initcall(imx1_ccm_init);
diff --git a/drivers/clk/imx/clk-imx21.c b/drivers/clk/imx/clk-imx21.c
new file mode 100644
index 0000000..546461b
--- /dev/null
+++ b/drivers/clk/imx/clk-imx21.c
@@ -0,0 +1,196 @@
+/*
+ * Copyright 2004-2007 Freescale Semiconductor, Inc. All Rights Reserved.
+ * Copyright 2008 Juergen Beisert, kernel@pengutronix.de
+ * Copyright 2008 Martin Fuzzey, mfuzzey@gmail.com
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2
+ * of the License, or (at your option) any later version.
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
+ * MA 02110-1301, USA.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <linux/clk.h>
+#include <io.h>
+#include <linux/clkdev.h>
+#include <linux/err.h>
+#include <mach/imx21-regs.h>
+
+#include "clk.h"
+
+/* Register offsets */
+#define CCM_CSCR		0x0
+#define CCM_MPCTL0		0x4
+#define CCM_MPCTL1		0x8
+#define CCM_SPCTL0		0xc
+#define CCM_SPCTL1		0x10
+#define CCM_OSC26MCTL		0x14
+#define CCM_PCDR0		0x18
+#define CCM_PCDR1		0x1c
+#define CCM_PCCR0		0x20
+#define CCM_PCCR1		0x24
+#define CCM_CCSR		0x28
+#define CCM_PMCTL		0x2c
+#define CCM_PMCOUNT		0x30
+#define CCM_WKGDCTL		0x34
+
+#define PCCR0_UART1_EN		(1 << 0)
+#define PCCR0_UART2_EN		(1 << 1)
+#define PCCR0_UART3_EN		(1 << 2)
+#define PCCR0_UART4_EN		(1 << 3)
+#define PCCR0_CSPI1_EN		(1 << 4)
+#define PCCR0_CSPI2_EN		(1 << 5)
+#define PCCR0_SSI1_EN		(1 << 6)
+#define PCCR0_SSI2_EN		(1 << 7)
+#define PCCR0_FIRI_EN		(1 << 8)
+#define PCCR0_SDHC1_EN		(1 << 9)
+#define PCCR0_SDHC2_EN		(1 << 10)
+#define PCCR0_GPIO_EN		(1 << 11)
+#define PCCR0_I2C_EN		(1 << 12)
+#define PCCR0_DMA_EN		(1 << 13)
+#define PCCR0_USBOTG_EN		(1 << 14)
+#define PCCR0_EMMA_EN		(1 << 15)
+#define PCCR0_SSI2_BAUD_EN	(1 << 16)
+#define PCCR0_SSI1_BAUD_EN	(1 << 17)
+#define PCCR0_PERCLK3_EN	(1 << 18)
+#define PCCR0_NFC_EN		(1 << 19)
+#define PCCR0_FRI_BAUD_EN	(1 << 20)
+#define PCCR0_SLDC_EN		(1 << 21)
+#define PCCR0_PERCLK4_EN	(1 << 22)
+#define PCCR0_HCLK_BMI_EN	(1 << 23)
+#define PCCR0_HCLK_USBOTG_EN	(1 << 24)
+#define PCCR0_HCLK_SLCDC_EN	(1 << 25)
+#define PCCR0_HCLK_LCDC_EN	(1 << 26)
+#define PCCR0_HCLK_EMMA_EN	(1 << 27)
+#define PCCR0_HCLK_BROM_EN	(1 << 28)
+#define PCCR0_HCLK_DMA_EN	(1 << 30)
+#define PCCR0_HCLK_CSI_EN	(1 << 31)
+
+#define PCCR1_CSPI3_EN	(1 << 23)
+#define PCCR1_WDT_EN	(1 << 24)
+#define PCCR1_GPT1_EN	(1 << 25)
+#define PCCR1_GPT2_EN	(1 << 26)
+#define PCCR1_GPT3_EN	(1 << 27)
+#define PCCR1_PWM_EN	(1 << 28)
+#define PCCR1_RTC_EN	(1 << 29)
+#define PCCR1_KPP_EN	(1 << 30)
+#define PCCR1_OWIRE_EN	(1 << 31)
+
+enum imx21_clks {
+	ckil, ckih, fpm, mpll_sel, spll_sel, mpll, spll, fclk, hclk, ipg, per1,
+	per2, per3, per4, usb_div, nfc_div, lcdc_per_gate, lcdc_ahb_gate,
+	lcdc_ipg_gate, clk_max
+};
+
+static struct clk *clks[clk_max];
+
+static const char *mpll_sel_clks[] = {
+	"fpm",
+	"ckih",
+};
+
+static const char *spll_sel_clks[] = {
+	"fpm",
+	"ckih",
+};
+
+static int imx21_ccm_probe(struct device_d *dev)
+{
+	struct resource *iores;
+	void __iomem *base;
+	unsigned long lref = 32768;
+	unsigned long href = 26000000;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+	base = IOMEM(iores->start);
+
+	writel(PCCR0_UART1_EN | PCCR0_UART2_EN | PCCR0_UART3_EN | PCCR0_UART4_EN |
+			PCCR0_CSPI1_EN | PCCR0_CSPI2_EN | PCCR0_SDHC1_EN |
+			PCCR0_SDHC2_EN | PCCR0_GPIO_EN | PCCR0_I2C_EN | PCCR0_DMA_EN |
+			PCCR0_USBOTG_EN | PCCR0_NFC_EN | PCCR0_PERCLK4_EN |
+			PCCR0_HCLK_USBOTG_EN | PCCR0_HCLK_DMA_EN,
+			base + CCM_PCCR0);
+
+	writel(PCCR1_CSPI3_EN | PCCR1_WDT_EN | PCCR1_GPT1_EN | PCCR1_GPT2_EN |
+			PCCR1_GPT3_EN | PCCR1_PWM_EN | PCCR1_RTC_EN | PCCR1_KPP_EN |
+			PCCR1_OWIRE_EN,
+			base + CCM_PCCR1);
+
+	clks[ckil] = clk_fixed("ckil", lref);
+	clks[ckih] = clk_fixed("ckih", href);
+	clks[fpm] = imx_clk_fixed_factor("fpm", "ckil", 512, 1);
+	clks[mpll_sel] = imx_clk_mux("mpll_sel", base + CCM_CSCR, 16, 1, mpll_sel_clks,
+			ARRAY_SIZE(mpll_sel_clks));
+	clks[spll_sel] = imx_clk_mux("spll_sel", base + CCM_CSCR, 17, 1, spll_sel_clks,
+			ARRAY_SIZE(spll_sel_clks));
+	clks[mpll] = imx_clk_pllv1("mpll", "mpll_sel", base + CCM_MPCTL0);
+	clks[spll] = imx_clk_pllv1("spll", "spll_sel", base + CCM_SPCTL0);
+	clks[fclk] = imx_clk_divider("fclk", "mpll", base + CCM_CSCR, 29, 3);
+	clks[hclk] = imx_clk_divider("hclk", "fclk", base + CCM_CSCR, 10, 4);
+	clks[ipg] = imx_clk_divider("ipg", "hclk", base + CCM_CSCR, 9, 1);
+	clks[per1] = imx_clk_divider("per1", "mpll", base + CCM_PCDR1, 0, 6);
+	clks[per2] = imx_clk_divider("per2", "mpll", base + CCM_PCDR1, 8, 6);
+	clks[per3] = imx_clk_divider("per3", "mpll", base + CCM_PCDR1, 16, 6);
+	clks[per4] = imx_clk_divider("per4", "mpll", base + CCM_PCDR1, 24, 6);
+	clks[usb_div] = imx_clk_divider("usb_div", "spll", base + CCM_CSCR, 26, 3);
+	clks[nfc_div] = imx_clk_divider("nfc_div", "ipg", base + CCM_PCDR0, 12, 4);
+	clks[lcdc_per_gate] = imx_clk_gate("lcdc_per_gate", "per3", base + CCM_PCCR0, 18);
+	clks[lcdc_ahb_gate] = imx_clk_gate("lcdc_ahb_gate", "ahb", base + CCM_PCCR0, 26);
+	/*
+	 * i.MX21 doesn't have an IPG clock for the LCD. To avoid even more conditionals
+	 * in the framebuffer code, provide a dummy clock.
+	 */
+	clks[lcdc_ipg_gate] = clk_fixed("dummy", 0);
+
+	clkdev_add_physbase(clks[per1], MX21_GPT1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per1], MX21_GPT2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per1], MX21_GPT3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per1], MX21_UART1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per1], MX21_UART2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per1], MX21_UART3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per1], MX21_UART4_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per2], MX21_CSPI1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per2], MX21_CSPI2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per2], MX21_CSPI3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX21_I2C_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX21_SDHC1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX21_SDHC2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[lcdc_per_gate], MX21_LCDC_BASE_ADDR, "per");
+	clkdev_add_physbase(clks[lcdc_ahb_gate], MX21_LCDC_BASE_ADDR, "ahb");
+	clkdev_add_physbase(clks[lcdc_ipg_gate], MX21_LCDC_BASE_ADDR, "ipg");
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id imx21_ccm_dt_ids[] = {
+	{
+		.compatible = "fsl,imx21-ccm",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d imx21_ccm_driver = {
+	.probe	= imx21_ccm_probe,
+	.name	= "imx21-ccm",
+	.of_compatible = DRV_OF_COMPAT(imx21_ccm_dt_ids),
+};
+
+static int imx21_ccm_init(void)
+{
+	return platform_driver_register(&imx21_ccm_driver);
+}
+core_initcall(imx21_ccm_init);
diff --git a/drivers/clk/imx/clk-imx25.c b/drivers/clk/imx/clk-imx25.c
new file mode 100644
index 0000000..864d06e
--- /dev/null
+++ b/drivers/clk/imx/clk-imx25.c
@@ -0,0 +1,200 @@
+/*
+ * Copyright (C) 2009 by Sascha Hauer, Pengutronix
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2
+ * of the License, or (at your option) any later version.
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
+ * MA 02110-1301, USA.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <linux/clk.h>
+#include <io.h>
+#include <linux/clkdev.h>
+#include <linux/err.h>
+#include <mach/imx25-regs.h>
+
+#include "clk.h"
+
+#define CCM_MPCTL	0x00
+#define CCM_UPCTL	0x04
+#define CCM_CCTL	0x08
+#define CCM_CGCR0	0x0C
+#define CCM_CGCR1	0x10
+#define CCM_CGCR2	0x14
+#define CCM_PCDR0	0x18
+#define CCM_PCDR1	0x1C
+#define CCM_PCDR2	0x20
+#define CCM_PCDR3	0x24
+#define CCM_RCSR	0x28
+#define CCM_CRDR	0x2C
+#define CCM_DCVR0	0x30
+#define CCM_DCVR1	0x34
+#define CCM_DCVR2	0x38
+#define CCM_DCVR3	0x3c
+#define CCM_LTR0	0x40
+#define CCM_LTR1	0x44
+#define CCM_LTR2	0x48
+#define CCM_LTR3	0x4c
+#define CCM_MCR		0x64
+
+enum mx25_clks {
+	dummy, osc, mpll, upll, mpll_cpu_3_4, cpu_sel, cpu, ahb, usb_div, ipg,
+	per0_sel, per1_sel, per2_sel, per3_sel, per4_sel, per5_sel, per6_sel,
+	per7_sel, per8_sel, per9_sel, per10_sel, per11_sel, per12_sel,
+	per13_sel, per14_sel, per15_sel, per0, per1, per2, per3, per4, per5,
+	per6, per7, per8, per9, per10, per11, per12, per13, per14, per15,
+	csi_ipg_per, epit_ipg_per, esai_ipg_per, esdhc1_ipg_per, esdhc2_ipg_per,
+	gpt_ipg_per, i2c_ipg_per, lcdc_ipg_per, nfc_ipg_per, owire_ipg_per,
+	pwm_ipg_per, sim1_ipg_per, sim2_ipg_per, ssi1_ipg_per, ssi2_ipg_per,
+	uart_ipg_per, ata_ahb, reserved1, csi_ahb, emi_ahb, esai_ahb, esdhc1_ahb,
+	esdhc2_ahb, fec_ahb, lcdc_ahb, rtic_ahb, sdma_ahb, slcdc_ahb, usbotg_ahb,
+	reserved2, reserved3, reserved4, reserved5, can1_ipg, can2_ipg, csi_ipg,
+	cspi1_ipg, cspi2_ipg, cspi3_ipg, dryice_ipg, ect_ipg, epit1_ipg, epit2_ipg,
+	reserved6, esdhc1_ipg, esdhc2_ipg, fec_ipg, reserved7, reserved8, reserved9,
+	gpt1_ipg, gpt2_ipg, gpt3_ipg, gpt4_ipg, reserved10, reserved11, reserved12,
+	iim_ipg, reserved13, reserved14, kpp_ipg, lcdc_ipg, reserved15, pwm1_ipg,
+	pwm2_ipg, pwm3_ipg, pwm4_ipg, rngb_ipg, reserved16, scc_ipg, sdma_ipg,
+	sim1_ipg, sim2_ipg, slcdc_ipg, spba_ipg, ssi1_ipg, ssi2_ipg, tsc_ipg,
+	uart1_ipg, uart2_ipg, uart3_ipg, uart4_ipg, uart5_ipg, reserved17,
+	wdt_ipg, clk_max
+};
+
+static struct clk *clks[clk_max];
+
+static const char *cpu_sel_clks[] = {
+	"mpll",
+	"mpll_cpu_3_4",
+};
+
+static const char *per_sel_clks[] = {
+	"ahb",
+	"upll",
+};
+
+static int imx25_ccm_probe(struct device_d *dev)
+{
+	struct resource *iores;
+	void __iomem *base;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+	base = IOMEM(iores->start);
+
+	writel((1 << 3) | (1 << 4) | (1 << 5) | (1 << 6) | (1 << 8) | (1 << 9) |
+			(1 << 10) | (1 << 15) |	(1 << 19) | (1 << 21) | (1 << 22) |
+			(1 << 23) | (1 << 24) | (1 << 28),
+			base + CCM_CGCR0);
+
+	writel((1 << 5) | (1 << 6) | (1 << 7) | (1 << 8) | (1 << 13) | (1 << 14) |
+			(1 << 15) | (1 << 19) | (1 << 20) | (1 << 21) | (1 << 22) |
+			(1 << 26) | (1 << 31),
+			base + CCM_CGCR1);
+
+	writel((1 << 0) | (1 << 1) | (1 << 2) | (1 << 10) | (1 << 13) | (1 << 14) |
+			(1 << 15) | (1 << 16) | (1 << 17) | (1 << 18),
+			base + CCM_CGCR2);
+
+	clks[dummy] = clk_fixed("dummy", 0);
+	clks[osc] = clk_fixed("osc", 24000000);
+	clks[mpll] = imx_clk_pllv1("mpll", "osc", base + CCM_MPCTL);
+	clks[upll] = imx_clk_pllv1("upll", "osc", base + CCM_UPCTL);
+	clks[mpll_cpu_3_4] = imx_clk_fixed_factor("mpll_cpu_3_4", "mpll", 3, 4);
+	clks[cpu_sel] = imx_clk_mux("cpu_sel", base + CCM_CCTL, 14, 1, cpu_sel_clks, ARRAY_SIZE(cpu_sel_clks));
+	clks[cpu] = imx_clk_divider("cpu", "cpu_sel", base + CCM_CCTL, 30, 2);
+	clks[ahb] = imx_clk_divider("ahb", "cpu", base + CCM_CCTL, 28, 2);
+	clks[usb_div] = imx_clk_divider("usb_div", "upll", base + CCM_CCTL, 16, 6);
+	clks[ipg] = imx_clk_fixed_factor("ipg", "ahb", 1, 2);
+	clks[per0_sel] = imx_clk_mux("per0_sel", base + CCM_MCR, 0, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
+	clks[per1_sel] = imx_clk_mux("per1_sel", base + CCM_MCR, 1, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
+	clks[per2_sel] = imx_clk_mux("per2_sel", base + CCM_MCR, 2, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
+	clks[per3_sel] = imx_clk_mux("per3_sel", base + CCM_MCR, 3, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
+	clks[per4_sel] = imx_clk_mux("per4_sel", base + CCM_MCR, 4, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
+	clks[per5_sel] = imx_clk_mux("per5_sel", base + CCM_MCR, 5, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
+	clks[per6_sel] = imx_clk_mux("per6_sel", base + CCM_MCR, 6, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
+	clks[per7_sel] = imx_clk_mux("per7_sel", base + CCM_MCR, 7, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
+	clks[per8_sel] = imx_clk_mux("per8_sel", base + CCM_MCR, 8, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
+	clks[per9_sel] = imx_clk_mux("per9_sel", base + CCM_MCR, 9, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
+	clks[per10_sel] = imx_clk_mux("per10_sel", base + CCM_MCR, 10, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
+	clks[per11_sel] = imx_clk_mux("per11_sel", base + CCM_MCR, 11, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
+	clks[per12_sel] = imx_clk_mux("per12_sel", base + CCM_MCR, 12, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
+	clks[per13_sel] = imx_clk_mux("per13_sel", base + CCM_MCR, 13, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
+	clks[per14_sel] = imx_clk_mux("per14_sel", base + CCM_MCR, 14, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
+	clks[per15_sel] = imx_clk_mux("per15_sel", base + CCM_MCR, 15, 1, per_sel_clks, ARRAY_SIZE(per_sel_clks));
+	clks[per0] = imx_clk_divider("per0", "per0_sel", base + CCM_PCDR0, 0, 6);
+	clks[per1] = imx_clk_divider("per1", "per1_sel", base + CCM_PCDR0, 8, 6);
+	clks[per2] = imx_clk_divider("per2", "per2_sel", base + CCM_PCDR0, 16, 6);
+	clks[per3] = imx_clk_divider("per3", "per3_sel", base + CCM_PCDR0, 24, 6);
+	clks[per4] = imx_clk_divider("per4", "per4_sel", base + CCM_PCDR1, 0, 6);
+	clks[per5] = imx_clk_divider("per5", "per5_sel", base + CCM_PCDR1, 8, 6);
+	clks[per6] = imx_clk_divider("per6", "per6_sel", base + CCM_PCDR1, 16, 6);
+	clks[per7] = imx_clk_divider("per7", "per7_sel", base + CCM_PCDR1, 24, 6);
+	clks[per8] = imx_clk_divider("per8", "per8_sel", base + CCM_PCDR2, 0, 6);
+	clks[per9] = imx_clk_divider("per9", "per9_sel", base + CCM_PCDR2, 8, 6);
+	clks[per10] = imx_clk_divider("per10", "per10_sel", base + CCM_PCDR2, 16, 6);
+	clks[per11] = imx_clk_divider("per11", "per11_sel", base + CCM_PCDR2, 24, 6);
+	clks[per12] = imx_clk_divider("per12", "per12_sel", base + CCM_PCDR3, 0, 6);
+	clks[per13] = imx_clk_divider("per13", "per13_sel", base + CCM_PCDR3, 8, 6);
+	clks[per14] = imx_clk_divider("per14", "per14_sel", base + CCM_PCDR3, 16, 6);
+	clks[per15] = imx_clk_divider("per15", "per15_sel", base + CCM_PCDR3, 24, 6);
+	clks[lcdc_ahb] = imx_clk_gate("lcdc_ahb", "ahb", base + CCM_CGCR0, 24);
+	clks[lcdc_ipg] = imx_clk_gate("lcdc_ipg", "ipg", base + CCM_CGCR1, 29);
+	clks[lcdc_ipg_per] = imx_clk_gate("lcdc_ipg_per", "per7", base + CCM_CGCR0, 7);
+
+	clkdev_add_physbase(clks[per15], MX25_UART1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per15], MX25_UART2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per15], MX25_UART3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per15], MX25_UART4_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per15], MX25_UART5_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per5], MX25_GPT1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per5], MX25_GPT2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per5], MX25_GPT3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per5], MX25_GPT4_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX25_FEC_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX25_I2C1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX25_I2C2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX25_I2C3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX25_CSPI1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX25_CSPI2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX25_CSPI3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per3], MX25_ESDHC1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per4], MX25_ESDHC2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per8], MX25_NFC_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[lcdc_ipg_per], MX25_LCDC_BASE_ADDR, "per");
+	clkdev_add_physbase(clks[lcdc_ipg], MX25_LCDC_BASE_ADDR, "ipg");
+	clkdev_add_physbase(clks[lcdc_ahb], MX25_LCDC_BASE_ADDR, "ahb");
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id imx25_ccm_dt_ids[] = {
+	{
+		.compatible = "fsl,imx25-ccm",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d imx25_ccm_driver = {
+	.probe	= imx25_ccm_probe,
+	.name	= "imx25-ccm",
+	.of_compatible = DRV_OF_COMPAT(imx25_ccm_dt_ids),
+};
+
+static int imx25_ccm_init(void)
+{
+	return platform_driver_register(&imx25_ccm_driver);
+}
+core_initcall(imx25_ccm_init);
diff --git a/drivers/clk/imx/clk-imx27.c b/drivers/clk/imx/clk-imx27.c
new file mode 100644
index 0000000..4b63244
--- /dev/null
+++ b/drivers/clk/imx/clk-imx27.c
@@ -0,0 +1,270 @@
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <linux/clk.h>
+#include <io.h>
+#include <linux/clkdev.h>
+#include <linux/err.h>
+#include <mach/imx27-regs.h>
+#include <mach/generic.h>
+#include <mach/revision.h>
+
+#include "clk.h"
+
+/* Register offsets */
+#define CCM_CSCR		0x0
+#define CCM_MPCTL0		0x4
+#define CCM_MPCTL1		0x8
+#define CCM_SPCTL0		0xc
+#define CCM_SPCTL1		0x10
+#define CCM_OSC26MCTL		0x14
+#define CCM_PCDR0		0x18
+#define CCM_PCDR1		0x1c
+#define CCM_PCCR0		0x20
+#define CCM_PCCR1		0x24
+#define CCM_CCSR		0x28
+#define CCM_PMCTL		0x2c
+#define CCM_PMCOUNT		0x30
+#define CCM_WKGDCTL		0x34
+
+#define PCCR0_SSI2_EN	(1 << 0)
+#define PCCR0_SSI1_EN	(1 << 1)
+#define PCCR0_SLCDC_EN	(1 << 2)
+#define PCCR0_SDHC3_EN	(1 << 3)
+#define PCCR0_SDHC2_EN	(1 << 4)
+#define PCCR0_SDHC1_EN	(1 << 5)
+#define PCCR0_SDC_EN	(1 << 6)
+#define PCCR0_SAHARA_EN	(1 << 7)
+#define PCCR0_RTIC_EN	(1 << 8)
+#define PCCR0_RTC_EN	(1 << 9)
+#define PCCR0_PWM_EN	(1 << 11)
+#define PCCR0_OWIRE_EN	(1 << 12)
+#define PCCR0_MSHC_EN	(1 << 13)
+#define PCCR0_LCDC_EN	(1 << 14)
+#define PCCR0_KPP_EN	(1 << 15)
+#define PCCR0_IIM_EN	(1 << 16)
+#define PCCR0_I2C2_EN	(1 << 17)
+#define PCCR0_I2C1_EN	(1 << 18)
+#define PCCR0_GPT6_EN	(1 << 19)
+#define PCCR0_GPT5_EN	(1 << 20)
+#define PCCR0_GPT4_EN	(1 << 21)
+#define PCCR0_GPT3_EN	(1 << 22)
+#define PCCR0_GPT2_EN	(1 << 23)
+#define PCCR0_GPT1_EN	(1 << 24)
+#define PCCR0_GPIO_EN	(1 << 25)
+#define PCCR0_FEC_EN	(1 << 26)
+#define PCCR0_EMMA_EN	(1 << 27)
+#define PCCR0_DMA_EN	(1 << 28)
+#define PCCR0_CSPI3_EN	(1 << 29)
+#define PCCR0_CSPI2_EN	(1 << 30)
+#define PCCR0_CSPI1_EN	(1 << 31)
+
+#define PCCR1_MSHC_BAUDEN	(1 << 2)
+#define PCCR1_NFC_BAUDEN	(1 << 3)
+#define PCCR1_SSI2_BAUDEN	(1 << 4)
+#define PCCR1_SSI1_BAUDEN	(1 << 5)
+#define PCCR1_H264_BAUDEN	(1 << 6)
+#define PCCR1_PERCLK4_EN	(1 << 7)
+#define PCCR1_PERCLK3_EN	(1 << 8)
+#define PCCR1_PERCLK2_EN	(1 << 9)
+#define PCCR1_PERCLK1_EN	(1 << 10)
+#define PCCR1_HCLK_USB		(1 << 11)
+#define PCCR1_HCLK_SLCDC	(1 << 12)
+#define PCCR1_HCLK_SAHARA	(1 << 13)
+#define PCCR1_HCLK_RTIC		(1 << 14)
+#define PCCR1_HCLK_LCDC		(1 << 15)
+#define PCCR1_HCLK_H264		(1 << 16)
+#define PCCR1_HCLK_FEC		(1 << 17)
+#define PCCR1_HCLK_EMMA		(1 << 18)
+#define PCCR1_HCLK_EMI		(1 << 19)
+#define PCCR1_HCLK_DMA		(1 << 20)
+#define PCCR1_HCLK_CSI		(1 << 21)
+#define PCCR1_HCLK_BROM		(1 << 22)
+#define PCCR1_HCLK_ATA		(1 << 23)
+#define PCCR1_WDT_EN		(1 << 24)
+#define PCCR1_USB_EN		(1 << 25)
+#define PCCR1_UART6_EN		(1 << 26)
+#define PCCR1_UART5_EN		(1 << 27)
+#define PCCR1_UART4_EN		(1 << 28)
+#define PCCR1_UART3_EN		(1 << 29)
+#define PCCR1_UART2_EN		(1 << 30)
+#define PCCR1_UART1_EN		(1 << 31)
+
+enum mx27_clks {
+	dummy, ckih, ckil, mpll, spll, mpll_main2, ahb, ipg, nfc_div, per1_div,
+	per2_div, per3_div, per4_div, vpu_sel, vpu_div, usb_div, cpu_sel,
+	clko_sel, cpu_div, clko_div, ssi1_sel, ssi2_sel, ssi1_div, ssi2_div,
+	clko_en, ssi2_ipg_gate, ssi1_ipg_gate, slcdc_ipg_gate, sdhc3_ipg_gate,
+	sdhc2_ipg_gate, sdhc1_ipg_gate, scc_ipg_gate, sahara_ipg_gate,
+	rtc_ipg_gate, pwm_ipg_gate, owire_ipg_gate, lcdc_ipg_gate,
+	kpp_ipg_gate, iim_ipg_gate, i2c2_ipg_gate, i2c1_ipg_gate,
+	gpt6_ipg_gate, gpt5_ipg_gate, gpt4_ipg_gate, gpt3_ipg_gate,
+	gpt2_ipg_gate, gpt1_ipg_gate, gpio_ipg_gate, fec_ipg_gate,
+	emma_ipg_gate, dma_ipg_gate, cspi3_ipg_gate, cspi2_ipg_gate,
+	cspi1_ipg_gate, nfc_baud_gate, ssi2_baud_gate, ssi1_baud_gate,
+	vpu_baud_gate, per4_gate, per3_gate, per2_gate, per1_gate,
+	usb_ahb_gate, slcdc_ahb_gate, sahara_ahb_gate, lcdc_ahb_gate,
+	vpu_ahb_gate, fec_ahb_gate, emma_ahb_gate, emi_ahb_gate, dma_ahb_gate,
+	csi_ahb_gate, brom_ahb_gate, ata_ahb_gate, wdog_ipg_gate, usb_ipg_gate,
+	uart6_ipg_gate, uart5_ipg_gate, uart4_ipg_gate, uart3_ipg_gate,
+	uart2_ipg_gate, uart1_ipg_gate, ckih_div1p5, fpm, mpll_osc_sel,
+	mpll_sel, spll_gate, clk_max
+};
+
+static struct clk *clks[clk_max];
+
+static const char *cpu_sel_clks[] = {
+	"mpll_main2",
+	"mpll",
+};
+
+static const char *mpll_sel_clks[] = {
+	"fpm",
+	"mpll_osc_sel",
+};
+
+static const char *mpll_osc_sel_clks[] = {
+	"ckih",
+	"ckih_div1p5",
+};
+
+static const char *clko_sel_clks[] = {
+	"ckil",
+	NULL,
+	"ckih",
+	"ckih",
+	"ckih",
+	"mpll",
+	"spll",
+	"cpu_div",
+	"ahb",
+	"ipg",
+	"per1_div",
+	"per2_div",
+	"per3_div",
+	"per4_div",
+	NULL,
+	NULL,
+	"nfc_div",
+	NULL,
+	NULL,
+	NULL,
+	"ckil",
+	"usb_div",
+	NULL,
+};
+
+static int imx27_ccm_probe(struct device_d *dev)
+{
+	struct resource *iores;
+	void __iomem *base;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+	base = IOMEM(iores->start);
+
+	writel(PCCR0_SDHC3_EN | PCCR0_SDHC2_EN | PCCR0_SDHC1_EN |
+			PCCR0_PWM_EN | PCCR0_KPP_EN | PCCR0_IIM_EN |
+			PCCR0_I2C2_EN | PCCR0_I2C1_EN | PCCR0_GPT6_EN | PCCR0_GPT5_EN |
+			PCCR0_GPT4_EN | PCCR0_GPT3_EN | PCCR0_GPT2_EN | PCCR0_GPT1_EN |
+			PCCR0_GPIO_EN | PCCR0_FEC_EN | PCCR0_CSPI3_EN | PCCR0_CSPI2_EN |
+			PCCR0_CSPI1_EN,
+			base + CCM_PCCR0);
+
+	writel(PCCR1_NFC_BAUDEN | PCCR1_PERCLK4_EN | PCCR1_PERCLK2_EN | PCCR1_PERCLK1_EN |
+			PCCR1_HCLK_USB | PCCR1_HCLK_FEC | PCCR1_HCLK_EMI | PCCR1_WDT_EN |
+			PCCR1_USB_EN | PCCR1_UART6_EN | PCCR1_UART5_EN | PCCR1_UART4_EN |
+			PCCR1_UART3_EN | PCCR1_UART2_EN | PCCR1_UART1_EN,
+			base + CCM_PCCR1);
+
+	clks[dummy] = clk_fixed("dummy", 0);
+	clks[ckih] = clk_fixed("ckih", 26000000);
+	clks[ckil] = clk_fixed("ckil", 32768);
+	clks[fpm] = imx_clk_fixed_factor("fpm", "ckil", 1024, 1);
+	clks[ckih_div1p5] = imx_clk_fixed_factor("ckih_div1p5", "ckih", 2, 3);
+
+	clks[mpll_osc_sel] = imx_clk_mux("mpll_osc_sel", base + CCM_CSCR, 4, 1,
+			mpll_osc_sel_clks,
+			ARRAY_SIZE(mpll_osc_sel_clks));
+	clks[mpll_sel] = imx_clk_mux("mpll_sel", base + CCM_CSCR, 16, 1, mpll_sel_clks,
+			ARRAY_SIZE(mpll_sel_clks));
+
+	clks[mpll] = imx_clk_pllv1("mpll", "mpll_sel", base + CCM_MPCTL0);
+	clks[spll] = imx_clk_pllv1("spll", "ckih", base + CCM_SPCTL0);
+	clks[mpll_main2] = imx_clk_fixed_factor("mpll_main2", "mpll", 2, 3);
+
+	if (imx_silicon_revision() >= IMX_CHIP_REV_2_0) {
+		clks[ahb] = imx_clk_divider("ahb", "mpll_main2", base + CCM_CSCR, 8, 2);
+		clks[ipg] = imx_clk_fixed_factor("ipg", "ahb", 1, 2);
+	} else {
+		clks[ahb] = imx_clk_divider("ahb", "mpll_main2", base + CCM_CSCR, 9, 4);
+		clks[ipg] = imx_clk_divider("ipg", "ahb", base + CCM_CSCR, 8, 1);
+	}
+
+	clks[nfc_div] = imx_clk_divider("nfc_div", "ahb", base + CCM_PCDR0, 6, 4);
+	clks[per1_div] = imx_clk_divider("per1_div", "mpll_main2", base + CCM_PCDR1, 0, 6);
+	clks[per2_div] = imx_clk_divider("per2_div", "mpll_main2", base + CCM_PCDR1, 8, 6);
+	clks[per3_div] = imx_clk_divider("per3_div", "mpll_main2", base + CCM_PCDR1, 16, 6);
+	clks[per4_div] = imx_clk_divider("per4_div", "mpll_main2", base + CCM_PCDR1, 24, 6);
+	clks[usb_div] = imx_clk_divider("usb_div", "spll", base + CCM_CSCR, 28, 3);
+	clks[cpu_sel] = imx_clk_mux("cpu_sel", base + CCM_CSCR, 15, 1, cpu_sel_clks,
+			ARRAY_SIZE(cpu_sel_clks));
+	clks[clko_sel] = imx_clk_mux("clko_sel", base + CCM_CCSR, 0, 5, clko_sel_clks,
+			ARRAY_SIZE(clko_sel_clks));
+	if (imx_silicon_revision() >= IMX_CHIP_REV_2_0)
+		clks[cpu_div] = imx_clk_divider("cpu_div", "cpu_sel", base + CCM_CSCR, 12, 2);
+	else
+		clks[cpu_div] = imx_clk_divider("cpu_div", "cpu_sel", base + CCM_CSCR, 13, 3);
+	clks[clko_div] = imx_clk_divider("clko_div", "clko_sel", base + CCM_PCDR0, 22, 3);
+	clks[per3_gate] = imx_clk_gate("per3_gate", "per3_div", base + CCM_PCCR1, 8);
+	clks[lcdc_ahb_gate] = imx_clk_gate("lcdc_ahb_gate", "ahb", base + CCM_PCCR1, 15);
+	clks[lcdc_ipg_gate] = imx_clk_gate("lcdc_ipg_gate", "ipg", base + CCM_PCCR0, 14);
+
+	clkdev_add_physbase(clks[per1_div], MX27_GPT1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per1_div], MX27_GPT2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per1_div], MX27_GPT3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per1_div], MX27_GPT4_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per1_div], MX27_GPT5_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per1_div], MX27_GPT6_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per1_div], MX27_UART1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per1_div], MX27_UART2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per1_div], MX27_UART3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per1_div], MX27_UART4_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per1_div], MX27_UART5_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per1_div], MX27_UART6_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX27_CSPI1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX27_CSPI2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX27_CSPI3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX27_I2C1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX27_I2C2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per2_div], MX27_SDHC1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per2_div], MX27_SDHC2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per2_div], MX27_SDHC3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per3_gate], MX27_LCDC_BASE_ADDR, "per");
+	clkdev_add_physbase(clks[lcdc_ahb_gate], MX27_LCDC_BASE_ADDR, "ahb");
+	clkdev_add_physbase(clks[lcdc_ipg_gate], MX27_LCDC_BASE_ADDR, "ipg");
+	clkdev_add_physbase(clks[ipg], MX27_FEC_BASE_ADDR, NULL);
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id imx27_ccm_dt_ids[] = {
+	{
+		.compatible = "fsl,imx27-ccm",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d imx27_ccm_driver = {
+	.probe	= imx27_ccm_probe,
+	.name	= "imx27-ccm",
+	.of_compatible = DRV_OF_COMPAT(imx27_ccm_dt_ids),
+};
+
+static int imx27_ccm_init(void)
+{
+	return platform_driver_register(&imx27_ccm_driver);
+}
+core_initcall(imx27_ccm_init);
diff --git a/drivers/clk/imx/clk-imx31.c b/drivers/clk/imx/clk-imx31.c
new file mode 100644
index 0000000..8d135c9
--- /dev/null
+++ b/drivers/clk/imx/clk-imx31.c
@@ -0,0 +1,146 @@
+/*
+ * Copyright (C) 2012 Sascha Hauer <kernel@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2
+ * of the License, or (at your option) any later version.
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <linux/clk.h>
+#include <io.h>
+#include <linux/clkdev.h>
+#include <linux/err.h>
+#include <mach/imx31-regs.h>
+
+#include "clk.h"
+
+/* Register addresses */
+#define CCM_CCMR		0x00
+#define CCM_PDR0		0x04
+#define CCM_PDR1		0x08
+//#define CCM_RCSR		0x0C
+#define CCM_MPCTL		0x10
+#define CCM_UPCTL		0x14
+#define CCM_SRPCTL		0x18
+#define CCM_COSR		0x1C
+#define CCM_CGR0		0x20
+#define CCM_CGR1		0x24
+#define CCM_CGR2		0x28
+#define CCM_WIMR		0x2C
+#define CCM_LDC		0x30
+#define CCM_DCVR0		0x34
+#define CCM_DCVR1		0x38
+#define CCM_DCVR2		0x3C
+#define CCM_DCVR3		0x40
+#define CCM_LTR0		0x44
+#define CCM_LTR1		0x48
+#define CCM_LTR2		0x4C
+#define CCM_LTR3		0x50
+#define CCM_LTBR0		0x54
+#define CCM_LTBR1		0x58
+#define CCM_PMCR0		0x5C
+#define CCM_PMCR1		0x60
+#define CCM_PDR2		0x64
+
+enum mx31_clks {
+	ckih, ckil, mpll, spll, upll, mcu_main, hsp, ahb, nfc, ipg, per_div,
+	per, csi, fir, csi_div, usb_div_pre, usb_div_post, fir_div_pre,
+	fir_div_post, sdhc1_gate, sdhc2_gate, gpt_gate, epit1_gate, epit2_gate,
+	iim_gate, ata_gate, sdma_gate, cspi3_gate, rng_gate, uart1_gate,
+	uart2_gate, ssi1_gate, i2c1_gate, i2c2_gate, i2c3_gate, hantro_gate,
+	mstick1_gate, mstick2_gate, csi_gate, rtc_gate, wdog_gate, pwm_gate,
+	sim_gate, ect_gate, usb_gate, kpp_gate, ipu_gate, uart3_gate,
+	uart4_gate, uart5_gate, owire_gate, ssi2_gate, cspi1_gate, cspi2_gate,
+	gacc_gate, emi_gate, rtic_gate, firi_gate, clk_max
+};
+
+static struct clk *clks[clk_max];
+
+static const char *mcu_main_sel[] = {
+	"spll",
+	"mpll",
+};
+
+static const char *per_sel[] = {
+	"per_div",
+	"ipg",
+};
+
+static int imx31_ccm_probe(struct device_d *dev)
+{
+	struct resource *iores;
+	void __iomem *base;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+	base = IOMEM(iores->start);
+
+	writel(0xffffffff, base + CCM_CGR0);
+	writel(0xffffffff, base + CCM_CGR1);
+	writel(0xffffffff, base + CCM_CGR2);
+
+	clks[ckih] = clk_fixed("ckih", 26000000);
+	clks[ckil] = clk_fixed("ckil", 32768);
+	clks[mpll] = imx_clk_pllv1("mpll", "ckih", base + CCM_MPCTL);
+	clks[spll] = imx_clk_pllv1("spll", "ckih", base + CCM_SRPCTL);
+	clks[upll] = imx_clk_pllv1("upll", "ckih", base + CCM_UPCTL);
+	clks[mcu_main] = imx_clk_mux("mcu_main", base + CCM_PMCR0, 31, 1,
+			mcu_main_sel, ARRAY_SIZE(mcu_main_sel));
+	clks[hsp] = imx_clk_divider("hsp", "mcu_main", base + CCM_PDR0, 11, 3);
+	clks[ahb] = imx_clk_divider("ahb", "mcu_main", base + CCM_PDR0, 3, 3);
+	clks[nfc] = imx_clk_divider("nfc", "ahb", base + CCM_PDR0, 8, 3);
+	clks[ipg] = imx_clk_divider("ipg", "ahb", base + CCM_PDR0, 6, 2);
+	clks[per_div] = imx_clk_divider("per_div", "upll", base + CCM_PDR0, 16, 5);
+	clks[per] = imx_clk_mux("per", base + CCM_CCMR, 24, 1, per_sel, ARRAY_SIZE(per_sel));
+
+	clkdev_add_physbase(clks[per], MX31_UART1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per], MX31_UART2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per], MX31_UART3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per], MX31_UART4_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per], MX31_UART5_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per], MX31_I2C1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per], MX31_I2C2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per], MX31_I2C3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX31_CSPI1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX31_CSPI2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX31_CSPI3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per], MX31_SDHC1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per], MX31_SDHC2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per], MX31_GPT1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[hsp], MX31_IPU_CTRL_BASE_ADDR, NULL);
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id imx31_ccm_dt_ids[] = {
+	{
+		.compatible = "fsl,imx31-ccm",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d imx31_ccm_driver = {
+	.probe	= imx31_ccm_probe,
+	.name	= "imx31-ccm",
+	.of_compatible = DRV_OF_COMPAT(imx31_ccm_dt_ids),
+};
+
+static int imx31_ccm_init(void)
+{
+	return platform_driver_register(&imx31_ccm_driver);
+}
+core_initcall(imx31_ccm_init);
diff --git a/drivers/clk/imx/clk-imx35.c b/drivers/clk/imx/clk-imx35.c
new file mode 100644
index 0000000..af6c405
--- /dev/null
+++ b/drivers/clk/imx/clk-imx35.c
@@ -0,0 +1,219 @@
+/*
+ * Copyright (C) 2012 Sascha Hauer, Pengutronix <s.hauer@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ */
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <linux/clk.h>
+#include <io.h>
+#include <linux/clkdev.h>
+#include <linux/err.h>
+#include <mach/imx35-regs.h>
+#include <reset_source.h>
+
+#include "clk.h"
+
+#define CCM_CCMR	0x00
+#define CCM_PDR0	0x04
+#define CCM_PDR1	0x08
+#define CCM_PDR2	0x0C
+#define CCM_PDR3	0x10
+#define CCM_PDR4	0x14
+#define CCM_RCSR	0x18
+#define CCM_MPCTL	0x1C
+#define CCM_PPCTL	0x20
+#define CCM_ACMR	0x24
+#define CCM_COSR	0x28
+#define CCM_CGR0	0x2C
+#define CCM_CGR1	0x30
+#define CCM_CGR2	0x34
+#define CCM_CGR3	0x38
+
+struct arm_ahb_div {
+	unsigned char arm, ahb, sel;
+};
+
+static struct arm_ahb_div clk_consumer[] = {
+	{ .arm = 1, .ahb = 4, .sel = 0},
+	{ .arm = 1, .ahb = 3, .sel = 1},
+	{ .arm = 2, .ahb = 2, .sel = 0},
+	{ .arm = 0, .ahb = 0, .sel = 0},
+	{ .arm = 0, .ahb = 0, .sel = 0},
+	{ .arm = 0, .ahb = 0, .sel = 0},
+	{ .arm = 4, .ahb = 1, .sel = 0},
+	{ .arm = 1, .ahb = 5, .sel = 0},
+	{ .arm = 1, .ahb = 8, .sel = 0},
+	{ .arm = 1, .ahb = 6, .sel = 1},
+	{ .arm = 2, .ahb = 4, .sel = 0},
+	{ .arm = 0, .ahb = 0, .sel = 0},
+	{ .arm = 0, .ahb = 0, .sel = 0},
+	{ .arm = 0, .ahb = 0, .sel = 0},
+	{ .arm = 4, .ahb = 2, .sel = 0},
+	{ .arm = 0, .ahb = 0, .sel = 0},
+};
+
+static char hsp_div_532[] = { 4, 8, 3, 0 };
+static char hsp_div_400[] = { 3, 6, 3, 0 };
+
+enum mx35_clks {
+	ckih, mpll, ppll, mpll_075, arm, hsp, hsp_div, hsp_sel, ahb, ipg,
+	arm_per_div, ahb_per_div, ipg_per, uart_sel, uart_div, esdhc_sel,
+	esdhc1_div, esdhc2_div, esdhc3_div, spdif_sel, spdif_div_pre,
+	spdif_div_post, ssi_sel, ssi1_div_pre, ssi1_div_post, ssi2_div_pre,
+	ssi2_div_post, usb_sel, usb_div, nfc_div, asrc_gate, pata_gate,
+	audmux_gate, can1_gate, can2_gate, cspi1_gate, cspi2_gate, ect_gate,
+	edio_gate, emi_gate, epit1_gate, epit2_gate, esai_gate, esdhc1_gate,
+	esdhc2_gate, esdhc3_gate, fec_gate, gpio1_gate, gpio2_gate, gpio3_gate,
+	gpt_gate, i2c1_gate, i2c2_gate, i2c3_gate, iomuxc_gate, ipu_gate,
+	kpp_gate, mlb_gate, mshc_gate, owire_gate, pwm_gate, rngc_gate,
+	rtc_gate, rtic_gate, scc_gate, sdma_gate, spba_gate, spdif_gate,
+	ssi1_gate, ssi2_gate, uart1_gate, uart2_gate, uart3_gate, usbotg_gate,
+	wdog_gate, max_gate, admux_gate, csi_gate, iim_gate, gpu2d_gate,
+	clk_max
+};
+
+static struct clk *clks[clk_max];
+
+static const char *std_sel[] = {
+	"ppll",
+	"arm",
+};
+
+static const char *ipg_per_sel[] = {
+	"ahb_per_div",
+	"arm_per_div",
+};
+
+static int imx35_ccm_probe(struct device_d *dev)
+{
+	struct resource *iores;
+	u32 pdr0, consumer_sel, hsp_sel;
+	struct arm_ahb_div *aad;
+	unsigned char *hsp_div;
+	void __iomem *base;
+	u32 reg;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+	base = IOMEM(iores->start);
+
+	/* Check reset source */
+	reg = readl(base + CCM_RCSR);
+
+	switch (reg & 0x0F) {
+	case 0x00:
+		reset_source_set_priority(RESET_POR, 200);
+		break;
+	case 0x02:
+		reset_source_set_priority(RESET_JTAG, 200);
+		break;
+	case 0x04:
+		reset_source_set_priority(RESET_RST, 200);
+		break;
+	case 0x08:
+		reset_source_set_priority(RESET_WDG, 200);
+		break;
+	}
+
+	writel(0xffffffff, base + CCM_CGR0);
+	writel(0xffffffff, base + CCM_CGR1);
+	writel(0xfbffffff, base + CCM_CGR2);
+	writel(0xffffffff, base + CCM_CGR3);
+
+	pdr0 = __raw_readl(base + CCM_PDR0);
+	consumer_sel = (pdr0 >> 16) & 0xf;
+	aad = &clk_consumer[consumer_sel];
+	if (!aad->arm) {
+		pr_err("i.MX35 clk: illegal consumer mux selection 0x%x\n", consumer_sel);
+		/*
+		 * We are basically stuck. Continue with a default entry and hope we
+		 * get far enough to actually show the above message
+		 */
+		aad = &clk_consumer[0];
+	}
+
+	clks[ckih] = clk_fixed("ckih", 24000000);
+	clks[mpll] = imx_clk_pllv1("mpll", "ckih", base + CCM_MPCTL);
+	clks[ppll] = imx_clk_pllv1("ppll", "ckih", base + CCM_PPCTL);
+
+	clks[mpll_075] = imx_clk_fixed_factor("mpll_075", "mpll", 3, 4);
+
+	if (aad->sel)
+		clks[arm] = imx_clk_fixed_factor("arm", "mpll_075", 1, aad->arm);
+	else
+		clks[arm] = imx_clk_fixed_factor("arm", "mpll", 1, aad->arm);
+
+	if (clk_get_rate(clks[arm]) > 400000000)
+		hsp_div = hsp_div_532;
+	else
+		hsp_div = hsp_div_400;
+
+	hsp_sel = (pdr0 >> 20) & 0x3;
+	if (!hsp_div[hsp_sel]) {
+		pr_err("i.MX35 clk: illegal hsp clk selection 0x%x\n", hsp_sel);
+		hsp_sel = 0;
+	}
+
+	clks[hsp] = imx_clk_fixed_factor("hsp", "arm", 1, hsp_div[hsp_sel]);
+
+	clks[ahb] = imx_clk_fixed_factor("ahb", "arm", 1, aad->ahb);
+	clks[ipg] = imx_clk_fixed_factor("ipg", "ahb", 1, 2);
+
+	clks[arm_per_div] = imx_clk_divider("arm_per_div", "arm", base + CCM_PDR4, 16, 6);
+	clks[ahb_per_div] = imx_clk_divider("ahb_per_div", "ahb", base + CCM_PDR0, 12, 3);
+	clks[ipg_per] = imx_clk_mux("ipg_per", base + CCM_PDR0, 26, 1, ipg_per_sel, ARRAY_SIZE(ipg_per_sel));
+
+	clks[uart_sel] = imx_clk_mux("uart_sel", base + CCM_PDR3, 14, 1, std_sel, ARRAY_SIZE(std_sel));
+	clks[uart_div] = imx_clk_divider("uart_div", "uart_sel", base + CCM_PDR4, 10, 6);
+
+	clks[esdhc_sel] = imx_clk_mux("esdhc_sel", base + CCM_PDR4, 9, 1, std_sel, ARRAY_SIZE(std_sel));
+	clks[esdhc1_div] = imx_clk_divider("esdhc1_div", "esdhc_sel", base + CCM_PDR3, 0, 6);
+	clks[esdhc2_div] = imx_clk_divider("esdhc2_div", "esdhc_sel", base + CCM_PDR3, 8, 6);
+	clks[esdhc3_div] = imx_clk_divider("esdhc3_div", "esdhc_sel", base + CCM_PDR3, 16, 6);
+
+	clks[usb_sel] = imx_clk_mux("usb_sel", base + CCM_PDR4, 9, 1, std_sel, ARRAY_SIZE(std_sel));
+	clks[usb_div] = imx_clk_divider("usb_div", "usb_sel", base + CCM_PDR4, 22, 6);
+
+	clkdev_add_physbase(clks[uart_div], MX35_UART1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[uart_div], MX35_UART2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[uart_div], MX35_UART3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg_per], MX35_I2C1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg_per], MX35_I2C2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg_per], MX35_I2C3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX35_CSPI1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX35_CSPI2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX35_FEC_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX35_GPT1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[esdhc1_div], MX35_ESDHC1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[esdhc2_div], MX35_ESDHC2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[esdhc3_div], MX35_ESDHC3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[hsp], MX35_IPU_CTRL_BASE_ADDR, NULL);
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id imx35_ccm_dt_ids[] = {
+	{
+		.compatible = "fsl,imx35-ccm",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d imx35_ccm_driver = {
+	.probe	= imx35_ccm_probe,
+	.name	= "imx35-ccm",
+	.of_compatible = DRV_OF_COMPAT(imx35_ccm_dt_ids),
+};
+
+static int imx35_ccm_init(void)
+{
+	return platform_driver_register(&imx35_ccm_driver);
+}
+core_initcall(imx35_ccm_init);
diff --git a/drivers/clk/imx/clk-imx5.c b/drivers/clk/imx/clk-imx5.c
new file mode 100644
index 0000000..c4c47a6
--- /dev/null
+++ b/drivers/clk/imx/clk-imx5.c
@@ -0,0 +1,533 @@
+/*
+ * Copyright (C) 2011 Sascha Hauer, Pengutronix <s.hauer@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ */
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <linux/clk.h>
+#include <io.h>
+#include <of.h>
+#include <linux/clkdev.h>
+#include <linux/err.h>
+#include <mach/imx50-regs.h>
+#include <mach/imx51-regs.h>
+#include <mach/imx53-regs.h>
+#include <dt-bindings/clock/imx5-clock.h>
+
+#include "clk.h"
+
+/* Register addresses of CCM*/
+#define CCM_CCR		0x00
+#define CCM_CCDR	0x04
+#define CCM_CSR		0x08
+#define CCM_CCSR	0x0C
+#define CCM_CACRR	0x10
+#define CCM_CBCDR	0x14
+#define CCM_CBCMR	0x18
+#define CCM_CSCMR1	0x1C
+#define CCM_CSCMR2	0x20
+#define CCM_CSCDR1	0x24
+#define CCM_CS1CDR	0x28
+#define CCM_CS2CDR	0x2C
+#define CCM_CDCDR	0x30
+#define CCM_CHSCDR	0x34
+#define CCM_CSCDR2	0x38
+#define CCM_CSCDR3	0x3C
+#define CCM_CSCDR4	0x40
+#define CCM_CWDR	0x44
+#define CCM_CDHIPR	0x48
+#define CCM_CDCR	0x4C
+#define CCM_CTOR	0x50
+#define CCM_CLPCR	0x54
+#define CCM_CISR	0x58
+#define CCM_CIMR	0x5C
+#define CCM_CCOSR	0x60
+#define CCM_CGPR	0x64
+#define CCM_CCGR0	0x68
+#define CCM_CCGR1	0x6C
+#define CCM_CCGR2	0x70
+#define CCM_CCGR3	0x74
+#define CCM_CCGR4	0x78
+#define CCM_CCGR5	0x7C
+#define CCM_CCGR6	0x80
+#define CCM_CCGR7	0x84
+
+#define CCM_CMEOR	0x84
+
+static struct clk *clks[IMX5_CLK_END];
+
+/* This is used multiple times */
+static const char *standard_pll_sel[] = {
+	"pll1_sw",
+	"pll2_sw",
+	"pll3_sw",
+	"lp_apm",
+};
+
+static const char *mx50_3bit_clk_sel[] = {
+	"pll1_sw",
+	"pll2_sw",
+	"pll3_sw",
+	"lp_apm",
+	"pfd0",
+	"pfd1",
+	"pfd4",
+	"osc",
+};
+
+static const char *lp_apm_sel[] = {
+	"osc",
+};
+
+static const char *periph_apm_sel[] = {
+	"pll1_sw",
+	"pll3_sw",
+	"lp_apm",
+};
+
+static const char *main_bus_sel[] = {
+	"pll2_sw",
+	"periph_apm",
+};
+
+static const char *mx50_periph_clk_sel[] = {
+	"pll1_sw",
+	"pll2_sw",
+	"pll3_sw",
+	"lp_apm",
+};
+
+static const char *per_lp_apm_sel[] = {
+	"main_bus",
+	"lp_apm",
+};
+
+static const char *per_root_sel[] = {
+	"per_podf",
+	"ipg",
+};
+
+static const char *esdhc_c_sel[] = {
+	"esdhc_a_podf",
+	"esdhc_b_podf",
+};
+
+static const char *esdhc_d_sel[] = {
+	"esdhc_a_podf",
+	"esdhc_b_podf",
+};
+
+static const char *emi_slow_sel[] = {
+	"main_bus",
+	"ahb",
+};
+
+static const char *usb_phy_sel_str[] = {
+	"osc",
+	"usb_phy_podf",
+};
+
+static const char *mx51_ipu_di0_sel[] = {
+	"di_pred",
+	"osc",
+	"ckih1",
+	"tve_di",
+};
+
+static const char *mx53_ipu_di0_sel[] = {
+	"di_pred",
+	"osc",
+	"ckih1",
+	"di_pll4_podf",
+	"dummy",
+	"ldb_di0_div",
+};
+
+static const char *mx53_ldb_di0_sel[] = {
+	"pll3_sw",
+	"pll4_sw",
+};
+
+static const char *mx51_ipu_di1_sel[] = {
+	"di_pred",
+	"osc",
+	"ckih1",
+	"tve_di",
+	"ipp_di1",
+};
+
+static const char *mx53_ipu_di1_sel[] = {
+	"di_pred",
+	"osc",
+	"ckih1",
+	"tve_di",
+	"ipp_di1",
+	"ldb_di1_div",
+};
+
+static const char *mx53_ldb_di1_sel[] = {
+	"pll3_sw",
+	"pll4_sw",
+};
+
+static const char *mx51_tve_ext_sel[] = {
+	"osc",
+	"ckih1",
+};
+
+static const char *mx53_tve_ext_sel[] = {
+	"pll4_sw",
+	"ckih1",
+};
+
+static const char *mx51_tve_sel[] = {
+	"tve_pred",
+	"tve_ext_sel",
+};
+
+static const char *ipu_sel[] = {
+	"axi_a",
+	"axi_b",
+	"emi_slow_gate",
+	"ahb",
+};
+
+static void __init mx5_clocks_common_init(struct device_d *dev, void __iomem *base)
+{
+	writel(0xffffffff, base + CCM_CCGR0);
+	writel(0xffffffff, base + CCM_CCGR1);
+	writel(0xffffffff, base + CCM_CCGR2);
+	writel(0xffffffff, base + CCM_CCGR3);
+	writel(0xffffffff, base + CCM_CCGR4);
+	writel(0xffffffff, base + CCM_CCGR5);
+	writel(0xffffffff, base + CCM_CCGR6);
+	writel(0xffffffff, base + CCM_CCGR7);
+
+	if (!IS_ENABLED(CONFIG_COMMON_CLK_OF_PROVIDER) || !dev->device_node) {
+		clks[IMX5_CLK_CKIL] = clk_fixed("ckil", 32768);
+		clks[IMX5_CLK_OSC] = clk_fixed("osc", 24000000);
+	}
+
+	clks[IMX5_CLK_PER_LP_APM] = imx_clk_mux("per_lp_apm", base + CCM_CBCMR, 1, 1,
+				per_lp_apm_sel, ARRAY_SIZE(per_lp_apm_sel));
+	clks[IMX5_CLK_PER_PRED1] = imx_clk_divider("per_pred1", "per_lp_apm", base + CCM_CBCDR, 6, 2);
+	clks[IMX5_CLK_PER_PRED2] = imx_clk_divider("per_pred2", "per_pred1", base + CCM_CBCDR, 3, 3);
+	clks[IMX5_CLK_PER_PODF] = imx_clk_divider("per_podf", "per_pred2", base + CCM_CBCDR, 0, 3);
+	clks[IMX5_CLK_PER_ROOT] = imx_clk_mux("per_root", base + CCM_CBCMR, 0, 1,
+				per_root_sel, ARRAY_SIZE(per_root_sel));
+	clks[IMX5_CLK_AHB] = imx_clk_divider("ahb", "main_bus", base + CCM_CBCDR, 10, 3);
+	clks[IMX5_CLK_IPG] = imx_clk_divider("ipg", "ahb", base + CCM_CBCDR, 8, 2);
+	clks[IMX5_CLK_AXI_A] = imx_clk_divider("axi_a", "main_bus", base + CCM_CBCDR, 16, 3);
+	clks[IMX5_CLK_AXI_B] = imx_clk_divider("axi_b", "main_bus", base + CCM_CBCDR, 19, 3);
+	clks[IMX5_CLK_UART_SEL] = imx_clk_mux("uart_sel", base + CCM_CSCMR1, 24, 2,
+				standard_pll_sel, ARRAY_SIZE(standard_pll_sel));
+	clks[IMX5_CLK_UART_PRED] = imx_clk_divider("uart_pred", "uart_sel", base + CCM_CSCDR1, 3, 3);
+	clks[IMX5_CLK_UART_ROOT] = imx_clk_divider("uart_root", "uart_pred", base + CCM_CSCDR1, 0, 3);
+	clks[IMX5_CLK_ESDHC_A_PRED] = imx_clk_divider("esdhc_a_pred",
+		"esdhc_a_sel", base + CCM_CSCDR1, 16, 3);
+	clks[IMX5_CLK_ESDHC_A_PODF] = imx_clk_divider("esdhc_a_podf",
+		"esdhc_a_pred", base + CCM_CSCDR1, 11, 3);
+	clks[IMX5_CLK_ESDHC_B_PRED] = imx_clk_divider("esdhc_b_pred",
+		"esdhc_b_sel", base + CCM_CSCDR1, 22, 3);
+	clks[IMX5_CLK_ESDHC_B_PODF] = imx_clk_divider("esdhc_b_podf",
+		"esdhc_b_pred", base + CCM_CSCDR1, 19, 3);
+	clks[IMX5_CLK_ECSPI_SEL] = imx_clk_mux("ecspi_sel", base + CCM_CSCMR1,
+		4, 2, standard_pll_sel, ARRAY_SIZE(standard_pll_sel));
+	clks[IMX5_CLK_ECSPI_PRED] = imx_clk_divider("ecspi_pred",
+		"ecspi_sel", base + CCM_CSCDR2, 25, 3);
+	clks[IMX5_CLK_ECSPI_PODF] = imx_clk_divider("ecspi_podf",
+		"ecspi_pred", base + CCM_CSCDR2, 19, 6);
+	clks[IMX5_CLK_CPU_PODF] = imx_clk_divider("cpu_podf",
+		"pll1_sw", base + CCM_CACRR, 0, 3);
+}
+
+static void mx5_clocks_mx51_mx53_init(void __iomem *base)
+{
+	clks[IMX5_CLK_LP_APM] = imx_clk_mux("lp_apm", base + CCM_CCSR, 9, 1,
+				lp_apm_sel, ARRAY_SIZE(lp_apm_sel));
+	clks[IMX5_CLK_PERIPH_APM] = imx_clk_mux("periph_apm", base + CCM_CBCMR, 12, 2,
+				periph_apm_sel, ARRAY_SIZE(periph_apm_sel));
+	clks[IMX5_CLK_MAIN_BUS] = imx_clk_mux("main_bus", base + CCM_CBCDR, 25, 1,
+				main_bus_sel, ARRAY_SIZE(main_bus_sel));
+	clks[IMX5_CLK_ESDHC_A_SEL] = imx_clk_mux("esdhc_a_sel", base + CCM_CSCMR1, 20, 2,
+				standard_pll_sel, ARRAY_SIZE(standard_pll_sel));
+	clks[IMX5_CLK_ESDHC_B_SEL] = imx_clk_mux("esdhc_b_sel", base + CCM_CSCMR1, 16, 2,
+				standard_pll_sel, ARRAY_SIZE(standard_pll_sel));
+	clks[IMX5_CLK_ESDHC_C_SEL] = imx_clk_mux("esdhc_c_sel", base + CCM_CSCMR1, 19, 1, esdhc_c_sel, ARRAY_SIZE(esdhc_c_sel));
+	clks[IMX5_CLK_ESDHC_D_SEL] = imx_clk_mux("esdhc_d_sel", base + CCM_CSCMR1, 18, 1, esdhc_d_sel, ARRAY_SIZE(esdhc_d_sel));
+	clks[IMX5_CLK_EMI_SEL] = imx_clk_mux("emi_sel", base + CCM_CBCDR, 26, 1,
+				emi_slow_sel, ARRAY_SIZE(emi_slow_sel));
+	clks[IMX5_CLK_EMI_SLOW_PODF] = imx_clk_divider("emi_slow_podf", "emi_sel", base + CCM_CBCDR, 22, 3);
+	clks[IMX5_CLK_NFC_PODF] = imx_clk_divider("nfc_podf", "emi_slow_podf", base + CCM_CBCDR, 13, 3);
+	clks[IMX5_CLK_USBOH3_SEL] = imx_clk_mux("usboh3_sel", base + CCM_CSCMR1, 22, 2,
+				standard_pll_sel, ARRAY_SIZE(standard_pll_sel));
+	clks[IMX5_CLK_USBOH3_PRED] = imx_clk_divider("usboh3_pred", "usboh3_sel", base + CCM_CSCDR1, 8, 3);
+	clks[IMX5_CLK_USBOH3_PODF] = imx_clk_divider("usboh3_podf", "usboh3_pred", base + CCM_CSCDR1, 6, 2);
+	clks[IMX5_CLK_USB_PHY_PRED] = imx_clk_divider("usb_phy_pred", "pll3_sw", base + CCM_CDCDR, 3, 3);
+	clks[IMX5_CLK_USB_PHY_PODF] = imx_clk_divider("usb_phy_podf", "usb_phy_pred", base + CCM_CDCDR, 0, 3);
+	clks[IMX5_CLK_USB_PHY_SEL] = imx_clk_mux("usb_phy_sel", base + CCM_CSCMR1, 26, 1,
+				usb_phy_sel_str, ARRAY_SIZE(usb_phy_sel_str));
+}
+
+static void mx5_clocks_ipu_init(void __iomem *regs)
+{
+	clks[IMX5_CLK_IPU_SEL]		= imx_clk_mux("ipu_sel", regs + CCM_CBCMR, 6, 2, ipu_sel, ARRAY_SIZE(ipu_sel));
+}
+
+int __init mx50_clocks_init(struct device_d *dev, void __iomem *regs)
+{
+	clks[IMX5_CLK_PLL1_SW] = imx_clk_pllv2("pll1_sw", "osc",
+					       (void *)MX50_PLL1_BASE_ADDR);
+	clks[IMX5_CLK_PLL2_SW] = imx_clk_pllv2("pll2_sw", "osc",
+					       (void *)MX50_PLL2_BASE_ADDR);
+	clks[IMX5_CLK_PLL3_SW] = imx_clk_pllv2("pll3_sw", "osc",
+					       (void *)MX50_PLL3_BASE_ADDR);
+
+	mx5_clocks_common_init(dev, regs);
+
+	clks[IMX5_CLK_LP_APM] = imx_clk_mux("lp_apm", regs + CCM_CCSR, 10, 1, lp_apm_sel, ARRAY_SIZE(lp_apm_sel));
+	clks[IMX5_CLK_MAIN_BUS] = imx_clk_mux("main_bus", regs + CCM_CBCDR, 25, 2, mx50_periph_clk_sel, ARRAY_SIZE(mx50_periph_clk_sel));
+	clks[IMX5_CLK_ESDHC_A_SEL] = imx_clk_mux("esdhc_a_sel", regs + CCM_CSCMR1, 21, 2, standard_pll_sel, ARRAY_SIZE(standard_pll_sel));
+	clks[IMX5_CLK_ESDHC_B_SEL] = imx_clk_mux("esdhc_b_sel", regs + CCM_CSCMR1, 16, 3, mx50_3bit_clk_sel, ARRAY_SIZE(mx50_3bit_clk_sel));
+	clks[IMX5_CLK_ESDHC_C_SEL] = imx_clk_mux("esdhc_c_sel", regs + CCM_CSCMR1, 20, 1, esdhc_c_sel, ARRAY_SIZE(esdhc_c_sel));
+	clks[IMX5_CLK_ESDHC_D_SEL] = imx_clk_mux("esdhc_d_sel", regs + CCM_CSCMR1, 19, 1, esdhc_d_sel, ARRAY_SIZE(esdhc_d_sel));
+	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX50_UART1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX50_UART2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX50_UART3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX50_I2C1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX50_I2C2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX50_I2C3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX50_GPT1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_IPG], MX50_CSPI_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_ECSPI_PODF], MX50_ECSPI1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_ECSPI_PODF], MX50_ECSPI2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_IPG], MX50_FEC_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_A_PODF], MX50_ESDHC1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_C_SEL], MX50_ESDHC2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_B_PODF], MX50_ESDHC3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_D_SEL], MX50_ESDHC4_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX50_PWM1_BASE_ADDR, "per");
+	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX50_PWM2_BASE_ADDR, "per");
+
+	return 0;
+}
+
+static int imx50_ccm_probe(struct device_d *dev)
+{
+	struct resource *iores;
+	void __iomem *regs;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+	regs = IOMEM(iores->start);
+
+	mx50_clocks_init(dev, regs);
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id imx50_ccm_dt_ids[] = {
+	{
+		.compatible = "fsl,imx50-ccm",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d imx50_ccm_driver = {
+	.probe	= imx50_ccm_probe,
+	.name	= "imx50-ccm",
+	.of_compatible = DRV_OF_COMPAT(imx50_ccm_dt_ids),
+};
+
+static void mx51_clocks_ipu_init(void __iomem *regs)
+{
+	clks[IMX5_CLK_IPU_DI0_SEL]	= imx_clk_mux_p("ipu_di0_sel", regs + CCM_CSCMR2, 26, 3,
+						mx51_ipu_di0_sel, ARRAY_SIZE(mx51_ipu_di0_sel));
+	clks[IMX5_CLK_IPU_DI1_SEL]	= imx_clk_mux_p("ipu_di1_sel", regs + CCM_CSCMR2, 29, 3,
+						mx51_ipu_di1_sel, ARRAY_SIZE(mx51_ipu_di1_sel));
+	clks[IMX5_CLK_TVE_EXT_SEL]	= imx_clk_mux_p("tve_ext_sel", regs + CCM_CSCMR1, 6, 1,
+						mx51_tve_ext_sel, ARRAY_SIZE(mx51_tve_ext_sel));
+	clks[IMX5_CLK_TVE_SEL]		= imx_clk_mux("tve_sel", regs + CCM_CSCMR1, 7, 1,
+						mx51_tve_sel, ARRAY_SIZE(mx51_tve_sel));
+	clks[IMX5_CLK_TVE_PRED]		= imx_clk_divider("tve_pred", "pll3_sw", regs + CCM_CDCDR, 28, 3);
+
+	mx5_clocks_ipu_init(regs);
+
+	clkdev_add_physbase(clks[IMX5_CLK_IPU_SEL], MX51_IPU_BASE_ADDR, "bus");
+	clkdev_add_physbase(clks[IMX5_CLK_IPU_DI0_SEL], MX51_IPU_BASE_ADDR, "di0");
+	clkdev_add_physbase(clks[IMX5_CLK_IPU_DI1_SEL], MX51_IPU_BASE_ADDR, "di1");
+}
+
+int __init mx51_clocks_init(struct device_d *dev, void __iomem *regs)
+{
+	clks[IMX5_CLK_PLL1_SW] = imx_clk_pllv2("pll1_sw", "osc", (void *)MX51_PLL1_BASE_ADDR);
+	clks[IMX5_CLK_PLL2_SW] = imx_clk_pllv2("pll2_sw", "osc", (void *)MX51_PLL2_BASE_ADDR);
+	clks[IMX5_CLK_PLL3_SW] = imx_clk_pllv2("pll3_sw", "osc", (void *)MX51_PLL3_BASE_ADDR);
+
+	mx5_clocks_common_init(dev, regs);
+	mx5_clocks_mx51_mx53_init(regs);
+
+	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX51_UART1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX51_UART2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX51_UART3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX51_I2C1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX51_I2C2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX51_GPT1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_IPG], MX51_CSPI_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_ECSPI_PODF], MX51_ECSPI1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_ECSPI_PODF], MX51_ECSPI2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_IPG], MX51_MXC_FEC_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_A_PODF], MX51_MMC_SDHC1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_B_PODF], MX51_MMC_SDHC2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_C_SEL], MX51_MMC_SDHC3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_D_SEL], MX51_MMC_SDHC4_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_IPG], MX51_ATA_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX51_PWM1_BASE_ADDR, "per");
+	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX51_PWM2_BASE_ADDR, "per");
+
+	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_IMX_IPUV3))
+		mx51_clocks_ipu_init(regs);
+
+	return 0;
+}
+
+static int imx51_ccm_probe(struct device_d *dev)
+{
+	struct resource *iores;
+	void __iomem *regs;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+	regs = IOMEM(iores->start);
+
+	mx51_clocks_init(dev, regs);
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id imx51_ccm_dt_ids[] = {
+	{
+		.compatible = "fsl,imx51-ccm",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d imx51_ccm_driver = {
+	.probe	= imx51_ccm_probe,
+	.name	= "imx51-ccm",
+	.of_compatible = DRV_OF_COMPAT(imx51_ccm_dt_ids),
+};
+
+static void mx53_clocks_ipu_init(void __iomem *regs)
+{
+	clks[IMX5_CLK_LDB_DI1_DIV_3_5]	= imx_clk_fixed_factor("ldb_di1_div_3_5", "ldb_di1_sel", 2, 7);
+	clks[IMX5_CLK_LDB_DI1_DIV]	= imx_clk_divider_np("ldb_di1_div", "ldb_di1_div_3_5", regs + CCM_CSCMR2, 11, 1);
+	clks[IMX5_CLK_LDB_DI1_SEL]	= imx_clk_mux_p("ldb_di1_sel", regs + CCM_CSCMR2, 9, 1,
+						mx53_ldb_di1_sel, ARRAY_SIZE(mx53_ldb_di1_sel));
+	clks[IMX5_CLK_DI_PLL4_PODF]	= imx_clk_divider("di_pll4_podf", "pll4_sw", regs + CCM_CDCDR, 16, 3);
+	clks[IMX5_CLK_LDB_DI0_DIV_3_5]	= imx_clk_fixed_factor("ldb_di0_div_3_5", "ldb_di0_sel", 2, 7);
+	clks[IMX5_CLK_LDB_DI0_DIV]	= imx_clk_divider("ldb_di0_div", "ldb_di0_div_3_5", regs + CCM_CSCMR2, 10, 1);
+	clks[IMX5_CLK_LDB_DI0_SEL]	= imx_clk_mux_p("ldb_di0_sel", regs + CCM_CSCMR2, 8, 1,
+						mx53_ldb_di0_sel, ARRAY_SIZE(mx53_ldb_di0_sel));
+	clks[IMX5_CLK_IPU_DI0_SEL]	= imx_clk_mux_p("ipu_di0_sel", regs + CCM_CSCMR2, 26, 3,
+						mx53_ipu_di0_sel, ARRAY_SIZE(mx53_ipu_di0_sel));
+	clks[IMX5_CLK_IPU_DI1_SEL]	= imx_clk_mux_p("ipu_di1_sel", regs + CCM_CSCMR2, 29, 3,
+						mx53_ipu_di1_sel, ARRAY_SIZE(mx53_ipu_di1_sel));
+	clks[IMX5_CLK_TVE_EXT_SEL]	= imx_clk_mux_p("tve_ext_sel", regs + CCM_CSCMR1, 6, 1,
+						mx53_tve_ext_sel, ARRAY_SIZE(mx53_tve_ext_sel));
+	clks[IMX5_CLK_TVE_PRED]		= imx_clk_divider("tve_pred", "tve_ext_sel", regs + CCM_CDCDR, 28, 3);
+
+	mx5_clocks_ipu_init(regs);
+
+	clkdev_add_physbase(clks[IMX5_CLK_IPU_SEL], MX53_IPU_BASE_ADDR, "bus");
+	clkdev_add_physbase(clks[IMX5_CLK_IPU_DI0_SEL], MX53_IPU_BASE_ADDR, "di0");
+	clkdev_add_physbase(clks[IMX5_CLK_IPU_DI1_SEL], MX53_IPU_BASE_ADDR, "di1");
+}
+
+int __init mx53_clocks_init(struct device_d *dev, void __iomem *regs)
+{
+	clks[IMX5_CLK_PLL1_SW] = imx_clk_pllv2("pll1_sw", "osc", (void *)MX53_PLL1_BASE_ADDR);
+	clks[IMX5_CLK_PLL2_SW] = imx_clk_pllv2("pll2_sw", "osc", (void *)MX53_PLL2_BASE_ADDR);
+	clks[IMX5_CLK_PLL3_SW] = imx_clk_pllv2("pll3_sw", "osc", (void *)MX53_PLL3_BASE_ADDR);
+	clks[IMX5_CLK_PLL4_SW] = imx_clk_pllv2("pll4_sw", "osc", (void *)MX53_PLL4_BASE_ADDR);
+
+	mx5_clocks_common_init(dev, regs);
+	mx5_clocks_mx51_mx53_init(regs);
+
+	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX53_UART1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX53_UART2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX53_UART3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX53_UART4_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX53_UART5_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX53_I2C1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX53_I2C2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX53_I2C3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX53_GPT1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_IPG], MX53_CSPI_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_ECSPI_PODF], MX53_ECSPI1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_ECSPI_PODF], MX53_ECSPI2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_IPG], MX53_FEC_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_A_PODF], MX53_ESDHC1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_C_SEL], MX53_ESDHC2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_B_PODF], MX53_ESDHC3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_D_SEL], MX53_ESDHC4_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_AHB], MX53_SATA_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX53_PWM1_BASE_ADDR, "per");
+	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX53_PWM2_BASE_ADDR, "per");
+
+	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_IMX_IPUV3))
+		mx53_clocks_ipu_init(regs);
+
+	return 0;
+}
+
+static int imx53_ccm_probe(struct device_d *dev)
+{
+	struct resource *iores;
+	void __iomem *regs;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+	regs = IOMEM(iores->start);
+
+	mx53_clocks_init(dev, regs);
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id imx53_ccm_dt_ids[] = {
+	{
+		.compatible = "fsl,imx53-ccm",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d imx53_ccm_driver = {
+	.probe	= imx53_ccm_probe,
+	.name	= "imx53-ccm",
+	.of_compatible = DRV_OF_COMPAT(imx53_ccm_dt_ids),
+};
+
+static int imx5_ccm_init(void)
+{
+	if (IS_ENABLED(CONFIG_ARCH_IMX50))
+		platform_driver_register(&imx50_ccm_driver);
+	if (IS_ENABLED(CONFIG_ARCH_IMX51))
+		platform_driver_register(&imx51_ccm_driver);
+	if (IS_ENABLED(CONFIG_ARCH_IMX53))
+		platform_driver_register(&imx53_ccm_driver);
+
+	return 0;
+}
+core_initcall(imx5_ccm_init);
diff --git a/drivers/clk/imx/clk-imx6.c b/drivers/clk/imx/clk-imx6.c
new file mode 100644
index 0000000..8ac43be
--- /dev/null
+++ b/drivers/clk/imx/clk-imx6.c
@@ -0,0 +1,541 @@
+/*
+ * Copyright 2011 Freescale Semiconductor, Inc.
+ * Copyright 2011 Linaro Ltd.
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
+#include <of.h>
+#include <linux/clkdev.h>
+#include <linux/err.h>
+#include <mach/imx6-regs.h>
+#include <mach/revision.h>
+#include <mach/imx6.h>
+#include <dt-bindings/clock/imx6qdl-clock.h>
+
+#include "clk.h"
+
+#define CCGR0				0x68
+#define CCGR1				0x6c
+#define CCGR2				0x70
+#define CCGR3				0x74
+#define CCGR4				0x78
+#define CCGR5				0x7c
+#define CCGR6				0x80
+#define CCGR7				0x84
+
+#define CLPCR				0x54
+#define BP_CLPCR_LPM			0
+#define BM_CLPCR_LPM			(0x3 << 0)
+#define BM_CLPCR_BYPASS_PMIC_READY	(0x1 << 2)
+#define BM_CLPCR_ARM_CLK_DIS_ON_LPM	(0x1 << 5)
+#define BM_CLPCR_SBYOS			(0x1 << 6)
+#define BM_CLPCR_DIS_REF_OSC		(0x1 << 7)
+#define BM_CLPCR_VSTBY			(0x1 << 8)
+#define BP_CLPCR_STBY_COUNT		9
+#define BM_CLPCR_STBY_COUNT		(0x3 << 9)
+#define BM_CLPCR_COSC_PWRDOWN		(0x1 << 11)
+#define BM_CLPCR_WB_PER_AT_LPM		(0x1 << 16)
+#define BM_CLPCR_WB_CORE_AT_LPM		(0x1 << 17)
+#define BM_CLPCR_BYP_MMDC_CH0_LPM_HS	(0x1 << 19)
+#define BM_CLPCR_BYP_MMDC_CH1_LPM_HS	(0x1 << 21)
+#define BM_CLPCR_MASK_CORE0_WFI		(0x1 << 22)
+#define BM_CLPCR_MASK_CORE1_WFI		(0x1 << 23)
+#define BM_CLPCR_MASK_CORE2_WFI		(0x1 << 24)
+#define BM_CLPCR_MASK_CORE3_WFI		(0x1 << 25)
+#define BM_CLPCR_MASK_SCU_IDLE		(0x1 << 26)
+#define BM_CLPCR_MASK_L2CC_IDLE		(0x1 << 27)
+
+static struct clk *clks[IMX6QDL_CLK_END];
+static struct clk_onecell_data clk_data;
+
+static const char *step_sels[] = {
+	"osc",
+	"pll2_pfd2_396m",
+};
+
+static const char *pll1_sw_sels[] = {
+	"pll1_sys",
+	"step",
+};
+
+static const char *periph_pre_sels[] = {
+	"pll2_bus",
+	"pll2_pfd2_396m",
+	"pll2_pfd0_352m",
+	"pll2_198m",
+};
+
+static const char *periph_clk2_sels[] = {
+	"pll3_usb_otg",
+	"osc",
+};
+
+static const char *periph_sels[] = {
+	"periph_pre",
+	"periph_clk2",
+};
+
+static const char *periph2_sels[] = {
+	"periph2_pre",
+	"periph2_clk2",
+};
+
+static const char *axi_sels[] = {
+	"periph",
+	"pll2_pfd2_396m",
+	"pll3_pfd1_540m",
+};
+
+static const char *usdhc_sels[] = {
+	"pll2_pfd2_396m",
+	"pll2_pfd0_352m",
+};
+
+static const char *enfc_sels[]	= {
+	"pll2_pfd0_352m",
+	"pll2_bus",
+	"pll3_usb_otg",
+	"pll2_pfd2_396m",
+};
+
+static const char *eim_sels[] = {
+	"axi",
+	"pll3_usb_otg",
+	"pll2_pfd2_396m",
+	"pll2_pfd0_352m",
+};
+
+static const char *vdo_axi_sels[] = {
+	"axi",
+	"ahb",
+};
+
+static const char *cko_sels[] = {
+	"cko1",
+	"cko2",
+};
+
+static const char *cko1_sels[] = {
+	"pll3_usb_otg",
+	"pll2_bus",
+	"pll1_sys",
+	"pll5_video",
+	"dummy",
+	"axi",
+	"enfc",
+	"ipu1_di0",
+	"ipu1_di1",
+	"ipu2_di0",
+	"ipu2_di1",
+	"ahb",
+	"ipg",
+	"ipg_per",
+	"ckil",
+	"pll4_audio",
+};
+
+static const char *cko2_sels[] = {
+	"mmdc_ch0_axi",
+	"mmdc_ch1_axi",
+	"usdhc4",
+	"usdhc1",
+	"gpu2d_axi",
+	"dummy",
+	"ecspi_root",
+	"gpu3d_axi",
+	"usdhc3",
+	"dummy",
+	"arm",
+	"ipu1",
+	"ipu2",
+	"vdo_axi",
+	"osc",
+	"gpu2d_core",
+	"gpu3d_core",
+	"usdhc2",
+	"ssi1",
+	"ssi2",
+	"ssi3",
+	"gpu3d_shader",
+	"vpu_axi",
+	"can_root",
+	"ldb_di0",
+	"ldb_di1",
+	"esai",
+	"eim_slow",
+	"uart_serial",
+	"spdif",
+	"asrc",
+	"hsi_tx",
+};
+
+static const char *ipu_sels[] = {
+	"mmdc_ch0_axi_podf",
+	"pll2_pfd2_396m",
+	"pll3_120m",
+	"pll3_pfd1_540m",
+};
+
+static const char *ldb_di_sels[] = {
+	"pll5_video_div",
+	"pll2_pfd0_352m",
+	"pll2_pfd2_396m",
+	"mmdc_ch1_axi_podf",
+	"pll3_usb_otg",
+};
+
+static const char *ipu_di_pre_sels[] = {
+	"mmdc_ch0_axi",
+	"pll3_usb_otg",
+	"pll5_video_div",
+	"pll2_pfd0_352m",
+	"pll2_pfd2_396m",
+	"pll3_pfd1_540m",
+};
+
+static const char *ipu1_di0_sels[] = {
+	"ipu1_di0_pre",
+	"dummy",
+	"dummy",
+	"ldb_di0_podf",
+	"ldb_di1_podf",
+};
+
+static const char *ipu1_di1_sels[] = {
+	"ipu1_di1_pre",
+	"dummy",
+	"dummy",
+	"ldb_di0_podf",
+	"ldb_di1_podf",
+};
+
+static const char *ipu2_di0_sels[] = {
+	"ipu2_di0_pre",
+	"dummy",
+	"dummy",
+	"ldb_di0_podf",
+	"ldb_di1_podf",
+};
+
+static const char *ipu2_di1_sels[] = {
+	"ipu2_di1_pre",
+	"dummy",
+	"dummy",
+	"ldb_di0_podf",
+	"ldb_di1_podf",
+};
+
+static const char *lvds_sels[] = {
+	"dummy",
+	"dummy",
+	"dummy",
+	"dummy",
+	"dummy",
+	"dummy",
+	"pll4_audio",
+	"pll5_video",
+	"pll8_mlb",
+	"enet_ref",
+	"pcie_ref_125m",
+	"sata_ref_100m",
+};
+
+static const char *pcie_axi_sels[] = {
+	"axi",
+	"ahb",
+};
+
+static struct clk_div_table clk_enet_ref_table[] = {
+	{ .val = 0, .div = 20, },
+	{ .val = 1, .div = 10, },
+	{ .val = 2, .div = 5, },
+	{ .val = 3, .div = 4, },
+	{ },
+};
+
+static struct clk_div_table post_div_table[] = {
+	{ .val = 2, .div = 1, },
+	{ .val = 1, .div = 2, },
+	{ .val = 0, .div = 4, },
+	{ /* sentinel */ }
+};
+
+static struct clk_div_table video_div_table[] = {
+	{ .val = 0, .div = 1, },
+	{ .val = 1, .div = 2, },
+	{ .val = 2, .div = 1, },
+	{ .val = 3, .div = 4, },
+	{ /* sentinel */ }
+};
+
+static void imx6_add_video_clks(void __iomem *anab, void __iomem *cb)
+{
+	clks[IMX6QDL_CLK_PLL5_POST_DIV] = imx_clk_divider_table("pll5_post_div", "pll5_video", anab + 0xa0, 19, 2, post_div_table);
+	clks[IMX6QDL_CLK_PLL5_VIDEO_DIV] = imx_clk_divider_table("pll5_video_div", "pll5_post_div", anab + 0x170, 30, 2, video_div_table);
+
+	clks[IMX6QDL_CLK_IPU1_SEL]         = imx_clk_mux("ipu1_sel",         cb + 0x3c, 9,  2, ipu_sels,          ARRAY_SIZE(ipu_sels));
+	clks[IMX6QDL_CLK_IPU2_SEL]         = imx_clk_mux("ipu2_sel",         cb + 0x3c, 14, 2, ipu_sels,          ARRAY_SIZE(ipu_sels));
+	clks[IMX6QDL_CLK_LDB_DI0_SEL]      = imx_clk_mux_p("ldb_di0_sel",      cb + 0x2c, 9,  3, ldb_di_sels,       ARRAY_SIZE(ldb_di_sels));
+	clks[IMX6QDL_CLK_LDB_DI1_SEL]      = imx_clk_mux_p("ldb_di1_sel",      cb + 0x2c, 12, 3, ldb_di_sels,       ARRAY_SIZE(ldb_di_sels));
+	clks[IMX6QDL_CLK_IPU1_DI0_PRE_SEL] = imx_clk_mux_p("ipu1_di0_pre_sel", cb + 0x34, 6,  3, ipu_di_pre_sels,   ARRAY_SIZE(ipu_di_pre_sels));
+	clks[IMX6QDL_CLK_IPU1_DI1_PRE_SEL] = imx_clk_mux_p("ipu1_di1_pre_sel", cb + 0x34, 15, 3, ipu_di_pre_sels,   ARRAY_SIZE(ipu_di_pre_sels));
+	clks[IMX6QDL_CLK_IPU2_DI0_PRE_SEL] = imx_clk_mux_p("ipu2_di0_pre_sel", cb + 0x38, 6,  3, ipu_di_pre_sels,   ARRAY_SIZE(ipu_di_pre_sels));
+	clks[IMX6QDL_CLK_IPU2_DI1_PRE_SEL] = imx_clk_mux_p("ipu2_di1_pre_sel", cb + 0x38, 15, 3, ipu_di_pre_sels,   ARRAY_SIZE(ipu_di_pre_sels));
+	clks[IMX6QDL_CLK_IPU1_DI0_SEL]     = imx_clk_mux_p("ipu1_di0_sel",     cb + 0x34, 0,  3, ipu1_di0_sels,     ARRAY_SIZE(ipu1_di0_sels));
+	clks[IMX6QDL_CLK_IPU1_DI1_SEL]     = imx_clk_mux_p("ipu1_di1_sel",     cb + 0x34, 9,  3, ipu1_di1_sels,     ARRAY_SIZE(ipu1_di1_sels));
+	clks[IMX6QDL_CLK_IPU2_DI0_SEL]     = imx_clk_mux_p("ipu2_di0_sel",     cb + 0x38, 0,  3, ipu2_di0_sels,     ARRAY_SIZE(ipu2_di0_sels));
+	clks[IMX6QDL_CLK_IPU2_DI1_SEL]     = imx_clk_mux_p("ipu2_di1_sel",     cb + 0x38, 9,  3, ipu2_di1_sels,     ARRAY_SIZE(ipu2_di1_sels));
+
+	clks[IMX6QDL_CLK_IPU1_PODF]        = imx_clk_divider("ipu1_podf",        "ipu1_sel",          cb + 0x3c, 11, 3);
+	clks[IMX6QDL_CLK_IPU2_PODF]        = imx_clk_divider("ipu2_podf",        "ipu2_sel",          cb + 0x3c, 16, 3);
+	clks[IMX6QDL_CLK_LDB_DI0_DIV_3_5]  = imx_clk_fixed_factor("ldb_di0_div_3_5", "ldb_di0_sel", 2, 7);
+	clks[IMX6QDL_CLK_LDB_DI0_PODF]     = imx_clk_divider_np("ldb_di0_podf", "ldb_di0_div_3_5", cb + 0x20, 10, 1);
+	clks[IMX6QDL_CLK_LDB_DI1_DIV_3_5]  = imx_clk_fixed_factor("ldb_di1_div_3_5", "ldb_di1_sel", 2, 7);
+	clks[IMX6QDL_CLK_LDB_DI1_PODF]     = imx_clk_divider_np("ldb_di1_podf", "ldb_di1_div_3_5", cb + 0x20, 11, 1);
+	clks[IMX6QDL_CLK_IPU1_DI0_PRE]     = imx_clk_divider("ipu1_di0_pre",     "ipu1_di0_pre_sel",  cb + 0x34, 3,  3);
+	clks[IMX6QDL_CLK_IPU1_DI1_PRE]     = imx_clk_divider("ipu1_di1_pre",     "ipu1_di1_pre_sel",  cb + 0x34, 12, 3);
+	clks[IMX6QDL_CLK_IPU2_DI0_PRE]     = imx_clk_divider("ipu2_di0_pre",     "ipu2_di0_pre_sel",  cb + 0x38, 3,  3);
+	clks[IMX6QDL_CLK_IPU2_DI1_PRE]     = imx_clk_divider("ipu2_di1_pre",     "ipu2_di1_pre_sel",  cb + 0x38, 12, 3);
+
+	clks[IMX6QDL_CLK_IPU1]         = imx_clk_gate2("ipu1",          "ipu1_podf",         cb + 0x74, 0);
+	clks[IMX6QDL_CLK_IPU1_DI0]     = imx_clk_gate2("ipu1_di0",      "ipu1_di0_sel",      cb + 0x74, 2);
+	clks[IMX6QDL_CLK_IPU1_DI1]     = imx_clk_gate2("ipu1_di1",      "ipu1_di1_sel",      cb + 0x74, 4);
+	clks[IMX6QDL_CLK_IPU2]         = imx_clk_gate2("ipu2",          "ipu2_podf",         cb + 0x74, 6);
+	clks[IMX6QDL_CLK_IPU2_DI0]     = imx_clk_gate2("ipu2_di0",      "ipu2_di0_sel",      cb + 0x74, 8);
+	clks[IMX6QDL_CLK_LDB_DI0]      = imx_clk_gate2("ldb_di0",       "ldb_di0_podf",      cb + 0x74, 12);
+	clks[IMX6QDL_CLK_LDB_DI1]      = imx_clk_gate2("ldb_di1",       "ldb_di1_podf",      cb + 0x74, 14);
+	clks[IMX6QDL_CLK_IPU2_DI1]     = imx_clk_gate2("ipu2_di1",      "ipu2_di1_sel",      cb + 0x74, 10);
+
+	clk_set_parent(clks[IMX6QDL_CLK_IPU1_DI0_SEL], clks[IMX6QDL_CLK_IPU1_DI0_PRE]);
+	clk_set_parent(clks[IMX6QDL_CLK_IPU1_DI1_SEL], clks[IMX6QDL_CLK_IPU1_DI1_PRE]);
+	clk_set_parent(clks[IMX6QDL_CLK_IPU2_DI0_SEL], clks[IMX6QDL_CLK_IPU2_DI0_PRE]);
+	clk_set_parent(clks[IMX6QDL_CLK_IPU2_DI1_SEL], clks[IMX6QDL_CLK_IPU2_DI1_PRE]);
+
+	clk_set_parent(clks[IMX6QDL_CLK_IPU1_DI0_PRE_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
+	clk_set_parent(clks[IMX6QDL_CLK_IPU1_DI1_PRE_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
+	clk_set_parent(clks[IMX6QDL_CLK_IPU2_DI0_PRE_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
+	clk_set_parent(clks[IMX6QDL_CLK_IPU2_DI1_PRE_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
+
+	if ((imx_silicon_revision() != IMX_CHIP_REV_1_0) ||
+	    cpu_is_mx6dl()) {
+		clk_set_parent(clks[IMX6QDL_CLK_LDB_DI0_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
+		clk_set_parent(clks[IMX6QDL_CLK_LDB_DI1_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
+	}
+
+}
+
+static int imx6_ccm_probe(struct device_d *dev)
+{
+	struct resource *iores;
+	void __iomem *base, *anatop_base, *ccm_base;
+
+	anatop_base = (void *)MX6_ANATOP_BASE_ADDR;
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+	ccm_base = IOMEM(iores->start);
+
+	base = anatop_base;
+
+	/*                   type                               name            parent_name base   div_mask */
+	clks[IMX6QDL_CLK_PLL1_SYS]      = imx_clk_pllv3(IMX_PLLV3_SYS,	"pll1_sys",	"osc", base,        0x7f);
+	clks[IMX6QDL_CLK_PLL2_BUS]      = imx_clk_pllv3(IMX_PLLV3_GENERIC,	"pll2_bus",	"osc", base + 0x30, 0x1);
+	clks[IMX6QDL_CLK_PLL3_USB_OTG]  = imx_clk_pllv3(IMX_PLLV3_USB,	"pll3_usb_otg",	"osc", base + 0x10, 0x3);
+	clks[IMX6QDL_CLK_PLL4_AUDIO]    = imx_clk_pllv3(IMX_PLLV3_AV,	"pll4_audio",	"osc", base + 0x70, 0x7f);
+	clks[IMX6QDL_CLK_PLL5_VIDEO]    = imx_clk_pllv3(IMX_PLLV3_AV,	"pll5_video",	"osc", base + 0xa0, 0x7f);
+	clks[IMX6QDL_CLK_PLL8_MLB]      = imx_clk_pllv3(IMX_PLLV3_MLB,	"pll8_mlb",	"osc", base + 0xd0, 0x0);
+	clks[IMX6QDL_CLK_PLL7_USB_HOST] = imx_clk_pllv3(IMX_PLLV3_USB,	"pll7_usb_host","osc", base + 0x20, 0x3);
+	clks[IMX6QDL_CLK_PLL6_ENET]     = imx_clk_pllv3(IMX_PLLV3_ENET,	"pll6_enet",	"osc", base + 0xe0, 0x3);
+
+	clks[IMX6QDL_CLK_USBPHY1] = imx_clk_gate("usbphy1", "pll3_usb_otg", base + 0x10, 6);
+	clks[IMX6QDL_CLK_USBPHY2] = imx_clk_gate("usbphy2", "pll7_usb_host", base + 0x20, 6);
+
+	clks[IMX6QDL_CLK_SATA_REF] = imx_clk_fixed_factor("sata_ref", "pll6_enet", 1, 5);
+	clks[IMX6QDL_CLK_PCIE_REF] = imx_clk_fixed_factor("pcie_ref", "pll6_enet", 1, 4);
+	clks[IMX6QDL_CLK_SATA_REF_100M] = imx_clk_gate("sata_ref_100m", "sata_ref", base + 0xe0, 20);
+	clks[IMX6QDL_CLK_PCIE_REF_125M] = imx_clk_gate("pcie_ref_125m", "pcie_ref", base + 0xe0, 19);
+
+	clks[IMX6QDL_CLK_ENET_REF] = imx_clk_divider_table("enet_ref", "pll6_enet", base + 0xe0, 0, 2, clk_enet_ref_table);
+
+	clks[IMX6QDL_CLK_LVDS1_SEL] = imx_clk_mux("lvds1_sel", base + 0x160, 0, 5, lvds_sels, ARRAY_SIZE(lvds_sels));
+	clks[IMX6QDL_CLK_LVDS2_SEL] = imx_clk_mux("lvds2_sel", base + 0x160, 5, 5, lvds_sels, ARRAY_SIZE(lvds_sels));
+
+	clks[IMX6QDL_CLK_LVDS1_GATE] = imx_clk_gate_exclusive("lvds1_gate", "lvds1_sel", base + 0x160, 10, BIT(12));
+	clks[IMX6QDL_CLK_LVDS2_GATE] = imx_clk_gate_exclusive("lvds2_gate", "lvds2_sel", base + 0x160, 11, BIT(13));
+
+	/*                                name               parent_name         reg          idx */
+	clks[IMX6QDL_CLK_PLL2_PFD0_352M] = imx_clk_pfd("pll2_pfd0_352m", "pll2_bus",     base + 0x100, 0);
+	clks[IMX6QDL_CLK_PLL2_PFD1_594M] = imx_clk_pfd("pll2_pfd1_594m", "pll2_bus",     base + 0x100, 1);
+	clks[IMX6QDL_CLK_PLL2_PFD2_396M] = imx_clk_pfd("pll2_pfd2_396m", "pll2_bus",     base + 0x100, 2);
+	clks[IMX6QDL_CLK_PLL3_PFD0_720M] = imx_clk_pfd("pll3_pfd0_720m", "pll3_usb_otg", base + 0xf0,  0);
+	clks[IMX6QDL_CLK_PLL3_PFD1_540M] = imx_clk_pfd("pll3_pfd1_540m", "pll3_usb_otg", base + 0xf0,  1);
+	clks[IMX6QDL_CLK_PLL3_PFD2_508M] = imx_clk_pfd("pll3_pfd2_508m", "pll3_usb_otg", base + 0xf0,  2);
+	clks[IMX6QDL_CLK_PLL3_PFD3_454M] = imx_clk_pfd("pll3_pfd3_454m", "pll3_usb_otg", base + 0xf0,  3);
+
+	/*                                    name          parent_name          mult div */
+	clks[IMX6QDL_CLK_PLL2_198M] = imx_clk_fixed_factor("pll2_198m", "pll2_pfd2_396m", 1, 2);
+	clks[IMX6QDL_CLK_PLL3_120M] = imx_clk_fixed_factor("pll3_120m", "pll3_usb_otg",   1, 4);
+	clks[IMX6QDL_CLK_PLL3_80M]  = imx_clk_fixed_factor("pll3_80m",  "pll3_usb_otg",   1, 6);
+	clks[IMX6QDL_CLK_PLL3_60M]  = imx_clk_fixed_factor("pll3_60m",  "pll3_usb_otg",   1, 8);
+	clks[IMX6QDL_CLK_TWD]       = imx_clk_fixed_factor("twd",       "arm",            1, 2);
+
+	base = ccm_base;
+
+	/*                                  name                 reg       shift width parent_names     num_parents */
+	clks[IMX6QDL_CLK_STEP]             = imx_clk_mux("step",	         base + 0xc,  8,  1, step_sels,	        ARRAY_SIZE(step_sels));
+	clks[IMX6QDL_CLK_PLL1_SW]          = imx_clk_mux("pll1_sw",	         base + 0xc,  2,  1, pll1_sw_sels,      ARRAY_SIZE(pll1_sw_sels));
+	clks[IMX6QDL_CLK_PERIPH_PRE]       = imx_clk_mux("periph_pre",       base + 0x18, 18, 2, periph_pre_sels,   ARRAY_SIZE(periph_pre_sels));
+	clks[IMX6QDL_CLK_PERIPH2_PRE]      = imx_clk_mux("periph2_pre",      base + 0x18, 21, 2, periph_pre_sels,   ARRAY_SIZE(periph_pre_sels));
+	clks[IMX6QDL_CLK_PERIPH_CLK2_SEL]  = imx_clk_mux("periph_clk2_sel",  base + 0x18, 12, 1, periph_clk2_sels,  ARRAY_SIZE(periph_clk2_sels));
+	clks[IMX6QDL_CLK_PERIPH2_CLK2_SEL] = imx_clk_mux("periph2_clk2_sel", base + 0x18, 20, 1, periph_clk2_sels,  ARRAY_SIZE(periph_clk2_sels));
+	clks[IMX6QDL_CLK_AXI_SEL]          = imx_clk_mux("axi_sel",          base + 0x14, 6,  2, axi_sels,          ARRAY_SIZE(axi_sels));
+	clks[IMX6QDL_CLK_USDHC1_SEL]       = imx_clk_mux("usdhc1_sel",       base + 0x1c, 16, 1, usdhc_sels,        ARRAY_SIZE(usdhc_sels));
+	clks[IMX6QDL_CLK_USDHC2_SEL]       = imx_clk_mux("usdhc2_sel",       base + 0x1c, 17, 1, usdhc_sels,        ARRAY_SIZE(usdhc_sels));
+	clks[IMX6QDL_CLK_USDHC3_SEL]       = imx_clk_mux("usdhc3_sel",       base + 0x1c, 18, 1, usdhc_sels,        ARRAY_SIZE(usdhc_sels));
+	clks[IMX6QDL_CLK_USDHC4_SEL]       = imx_clk_mux("usdhc4_sel",       base + 0x1c, 19, 1, usdhc_sels,        ARRAY_SIZE(usdhc_sels));
+	clks[IMX6QDL_CLK_ENFC_SEL]         = imx_clk_mux("enfc_sel",         base + 0x2c, 16, 2, enfc_sels,         ARRAY_SIZE(enfc_sels));
+	clks[IMX6QDL_CLK_EIM_SEL]          = imx_clk_mux("eim_sel",          base + 0x1c, 27, 2, eim_sels,          ARRAY_SIZE(eim_sels));
+	clks[IMX6QDL_CLK_EIM_SLOW_SEL]     = imx_clk_mux("eim_slow_sel",     base + 0x1c, 29, 2, eim_sels,          ARRAY_SIZE(eim_sels));
+	clks[IMX6QDL_CLK_VDO_AXI_SEL]      = imx_clk_mux("vdo_axi_sel",      base + 0x18, 11, 1, vdo_axi_sels,      ARRAY_SIZE(vdo_axi_sels));
+	clks[IMX6QDL_CLK_CKO1_SEL]         = imx_clk_mux("cko1_sel",         base + 0x60, 0,  4, cko1_sels,         ARRAY_SIZE(cko1_sels));
+	clks[IMX6QDL_CLK_CKO2_SEL]         = imx_clk_mux("cko2_sel",         base + 0x60, 16, 5, cko2_sels,         ARRAY_SIZE(cko2_sels));
+	clks[IMX6QDL_CLK_CKO]              = imx_clk_mux("cko",              base + 0x60, 8,  1, cko_sels,          ARRAY_SIZE(cko_sels));
+	clks[IMX6QDL_CLK_PCIE_AXI_SEL]     = imx_clk_mux("pcie_axi_sel",     base + 0x18, 10, 1, pcie_axi_sels,     ARRAY_SIZE(pcie_axi_sels));
+
+	/*                              name         reg       shift width busy: reg, shift parent_names  num_parents */
+	clks[IMX6QDL_CLK_PERIPH]  = imx_clk_busy_mux("periph",  base + 0x14, 25,  1,   base + 0x48, 5,  periph_sels,  ARRAY_SIZE(periph_sels));
+	clks[IMX6QDL_CLK_PERIPH2] = imx_clk_busy_mux("periph2", base + 0x14, 26,  1,   base + 0x48, 3,  periph2_sels, ARRAY_SIZE(periph2_sels));
+
+	/*                                      name                 parent_name               reg       shift width */
+	clks[IMX6QDL_CLK_PERIPH_CLK2]      = imx_clk_divider("periph_clk2",      "periph_clk2_sel",   base + 0x14, 27, 3);
+	clks[IMX6QDL_CLK_PERIPH2_CLK2]     = imx_clk_divider("periph2_clk2",     "periph2_clk2_sel",  base + 0x14, 0,  3);
+	clks[IMX6QDL_CLK_IPG]              = imx_clk_divider("ipg",              "ahb",               base + 0x14, 8,  2);
+	clks[IMX6QDL_CLK_IPG_PER]          = imx_clk_divider("ipg_per",          "ipg",               base + 0x1c, 0,  6);
+	clks[IMX6QDL_CLK_CAN_ROOT]         = imx_clk_divider("can_root",         "pll3_usb_otg",      base + 0x20, 2,  6);
+	clks[IMX6QDL_CLK_ECSPI_ROOT]       = imx_clk_divider("ecspi_root",       "pll3_60m",          base + 0x38, 19, 6);
+	clks[IMX6QDL_CLK_UART_SERIAL_PODF] = imx_clk_divider("uart_serial_podf", "pll3_80m",          base + 0x24, 0,  6);
+	clks[IMX6QDL_CLK_USDHC1_PODF]      = imx_clk_divider("usdhc1_podf",      "usdhc1_sel",        base + 0x24, 11, 3);
+	clks[IMX6QDL_CLK_USDHC2_PODF]      = imx_clk_divider("usdhc2_podf",      "usdhc2_sel",        base + 0x24, 16, 3);
+	clks[IMX6QDL_CLK_USDHC3_PODF]      = imx_clk_divider("usdhc3_podf",      "usdhc3_sel",        base + 0x24, 19, 3);
+	clks[IMX6QDL_CLK_USDHC4_PODF]      = imx_clk_divider("usdhc4_podf",      "usdhc4_sel",        base + 0x24, 22, 3);
+	clks[IMX6QDL_CLK_ENFC_PRED]        = imx_clk_divider("enfc_pred",        "enfc_sel",          base + 0x2c, 18, 3);
+	clks[IMX6QDL_CLK_ENFC_PODF]        = imx_clk_divider("enfc_podf",        "enfc_pred",         base + 0x2c, 21, 6);
+	clks[IMX6QDL_CLK_EIM_PODF]         = imx_clk_divider("eim_podf",         "eim_sel",           base + 0x1c, 20, 3);
+	clks[IMX6QDL_CLK_EIM_SLOW_PODF]    = imx_clk_divider("eim_slow_podf",    "eim_slow_sel",      base + 0x1c, 23, 3);
+	clks[IMX6QDL_CLK_CKO1_PODF]        = imx_clk_divider("cko1_podf",        "cko1_sel",          base + 0x60, 4,  3);
+	clks[IMX6QDL_CLK_CKO2_PODF]        = imx_clk_divider("cko2_podf",        "cko2_sel",          base + 0x60, 21, 3);
+
+	/*                                            name                  parent_name         reg        shift width busy: reg, shift */
+	clks[IMX6QDL_CLK_AXI]               = imx_clk_busy_divider("axi",               "axi_sel",     base + 0x14, 16,  3,   base + 0x48, 0);
+	clks[IMX6QDL_CLK_MMDC_CH0_AXI_PODF] = imx_clk_busy_divider("mmdc_ch0_axi_podf", "periph",      base + 0x14, 19,  3,   base + 0x48, 4);
+	clks[IMX6QDL_CLK_MMDC_CH1_AXI_PODF] = imx_clk_busy_divider("mmdc_ch1_axi_podf", "periph2",     base + 0x14, 3,   3,   base + 0x48, 2);
+	clks[IMX6QDL_CLK_ARM]               = imx_clk_busy_divider("arm",               "pll1_sw",     base + 0x10, 0,   3,   base + 0x48, 16);
+	clks[IMX6QDL_CLK_AHB]               = imx_clk_busy_divider("ahb",               "periph",      base + 0x14, 10,  3,   base + 0x48, 1);
+
+	/*                                            name             parent_name          reg         shift */
+	clks[IMX6QDL_CLK_APBH_DMA]     = imx_clk_gate2("apbh_dma",      "usdhc3",            base + 0x68, 4);
+	clks[IMX6QDL_CLK_CAAM_MEM]     = imx_clk_gate2("caam_mem",      "ahb",               base + 0x68, 8);
+	clks[IMX6QDL_CLK_CAAM_ACLK]    = imx_clk_gate2("caam_aclk",     "ahb",               base + 0x68, 10);
+	clks[IMX6QDL_CLK_CAAM_IPG]     = imx_clk_gate2("caam_ipg",      "ipg",               base + 0x68, 12);
+	clks[IMX6QDL_CLK_ECSPI1]       = imx_clk_gate2("ecspi1",        "ecspi_root",        base + 0x6c, 0);
+	clks[IMX6QDL_CLK_ECSPI2]       = imx_clk_gate2("ecspi2",        "ecspi_root",        base + 0x6c, 2);
+	clks[IMX6QDL_CLK_ECSPI3]       = imx_clk_gate2("ecspi3",        "ecspi_root",        base + 0x6c, 4);
+	clks[IMX6QDL_CLK_ECSPI4]       = imx_clk_gate2("ecspi4",        "ecspi_root",        base + 0x6c, 6);
+	if (cpu_is_mx6dl())
+		clks[IMX6DL_CLK_I2C4]  = imx_clk_gate2("i2c4",          "ipg_per",           base + 0x6c, 8);
+	else
+		clks[IMX6Q_CLK_ECSPI5] = imx_clk_gate2("ecspi5",        "ecspi_root",        base + 0x6c, 8);
+	clks[IMX6QDL_CLK_ENET]         = imx_clk_gate2("enet",          "ipg",               base + 0x6c, 10);
+	clks[IMX6QDL_CLK_GPT_IPG]      = imx_clk_gate2("gpt_ipg",       "ipg",               base + 0x6c, 20);
+	clks[IMX6QDL_CLK_GPT_IPG_PER]  = imx_clk_gate2("gpt_ipg_per",   "ipg_per",           base + 0x6c, 22);
+	clks[IMX6QDL_CLK_I2C1]         = imx_clk_gate2("i2c1",          "ipg_per",           base + 0x70, 6);
+	clks[IMX6QDL_CLK_I2C2]         = imx_clk_gate2("i2c2",          "ipg_per",           base + 0x70, 8);
+	clks[IMX6QDL_CLK_I2C3]         = imx_clk_gate2("i2c3",          "ipg_per",           base + 0x70, 10);
+	clks[IMX6QDL_CLK_IIM]          = imx_clk_gate2("iim",           "ipg",               base + 0x70, 12);
+	clks[IMX6QDL_CLK_ENFC]         = imx_clk_gate2("enfc",          "enfc_podf",         base + 0x70, 14);
+	clks[IMX6QDL_CLK_PCIE_AXI]     = imx_clk_gate2("pcie_axi",      "pcie_axi_sel",      base + 0x78, 0);
+	clks[IMX6QDL_CLK_PER1_BCH]     = imx_clk_gate2("per1_bch",      "usdhc3",            base + 0x78, 12);
+	clks[IMX6QDL_CLK_PWM1]         = imx_clk_gate2("pwm1",          "ipg_per",           base + 0x78, 16);
+	clks[IMX6QDL_CLK_PWM2]         = imx_clk_gate2("pwm2",          "ipg_per",           base + 0x78, 18);
+	clks[IMX6QDL_CLK_PWM3]         = imx_clk_gate2("pwm3",          "ipg_per",           base + 0x78, 20);
+	clks[IMX6QDL_CLK_PWM4]         = imx_clk_gate2("pwm4",          "ipg_per",           base + 0x78, 22);
+	clks[IMX6QDL_CLK_GPMI_BCH_APB] = imx_clk_gate2("gpmi_bch_apb",  "usdhc3",            base + 0x78, 24);
+	clks[IMX6QDL_CLK_GPMI_BCH]     = imx_clk_gate2("gpmi_bch",      "usdhc4",            base + 0x78, 26);
+	clks[IMX6QDL_CLK_GPMI_IO]      = imx_clk_gate2("gpmi_io",       "enfc",              base + 0x78, 28);
+	clks[IMX6QDL_CLK_GPMI_APB]     = imx_clk_gate2("gpmi_apb",      "usdhc3",            base + 0x78, 30);
+	clks[IMX6QDL_CLK_SATA]         = imx_clk_gate2("sata",          "ipg",               base + 0x7c, 4);
+	clks[IMX6QDL_CLK_UART_IPG]     = imx_clk_gate2("uart_ipg",      "ipg",               base + 0x7c, 24);
+	clks[IMX6QDL_CLK_UART_SERIAL]  = imx_clk_gate2("uart_serial",   "uart_serial_podf",  base + 0x7c, 26);
+	clks[IMX6QDL_CLK_USBOH3]       = imx_clk_gate2("usboh3",        "ipg",               base + 0x80, 0);
+	clks[IMX6QDL_CLK_USDHC1]       = imx_clk_gate2("usdhc1",        "usdhc1_podf",       base + 0x80, 2);
+	clks[IMX6QDL_CLK_USDHC2]       = imx_clk_gate2("usdhc2",        "usdhc2_podf",       base + 0x80, 4);
+	clks[IMX6QDL_CLK_USDHC3]       = imx_clk_gate2("usdhc3",        "usdhc3_podf",       base + 0x80, 6);
+	clks[IMX6QDL_CLK_USDHC4]       = imx_clk_gate2("usdhc4",        "usdhc4_podf",       base + 0x80, 8);
+	clks[IMX6QDL_CLK_EIM_SLOW]     = imx_clk_gate2("eim_slow",      "eim_slow_podf",     base + 0x80, 10);
+	clks[IMX6QDL_CLK_CKO1]         = imx_clk_gate("cko1",           "cko1_podf",         base + 0x60, 7);
+	clks[IMX6QDL_CLK_CKO2]         = imx_clk_gate("cko2",           "cko2_podf",         base + 0x60, 24);
+
+	clkdev_add_physbase(clks[IMX6QDL_CLK_IPG], MX6_OCOTP_BASE_ADDR, NULL);
+
+	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_IMX_IPUV3))
+		imx6_add_video_clks(anatop_base, ccm_base);
+
+	writel(0xffffffff, ccm_base + CCGR0);
+	writel(0xf0ffffff, ccm_base + CCGR1); /* gate GPU3D, GPU2D */
+	writel(0xffffffff, ccm_base + CCGR2);
+	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_IMX_IPUV3))
+		writel(0x3fffffff, ccm_base + CCGR3); /* gate OpenVG */
+	else
+		writel(0x3fff0000, ccm_base + CCGR3); /* gate OpenVG, LDB, IPU1, IPU2 */
+	if (IS_ENABLED(CONFIG_PCI_IMX6))
+		writel(0xffffffff, ccm_base + CCGR4);
+	else
+		writel(0xfffffffc, ccm_base + CCGR4); /* gate PCIe */
+	writel(0xffffffff, ccm_base + CCGR5);
+	writel(0xffff3fff, ccm_base + CCGR6); /* gate VPU */
+	writel(0xffffffff, ccm_base + CCGR7);
+
+	clk_data.clks = clks;
+	clk_data.clk_num = IMX6QDL_CLK_END;
+	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get, &clk_data);
+
+	clk_enable(clks[IMX6QDL_CLK_MMDC_CH0_AXI_PODF]);
+	clk_enable(clks[IMX6QDL_CLK_PLL6_ENET]);
+	clk_enable(clks[IMX6QDL_CLK_SATA_REF_100M]);
+	clk_enable(clks[IMX6QDL_CLK_ENFC_PODF]);
+
+	clk_set_parent(clks[IMX6QDL_CLK_LVDS1_SEL], clks[IMX6QDL_CLK_SATA_REF_100M]);
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id imx6_ccm_dt_ids[] = {
+	{
+		.compatible = "fsl,imx6q-ccm",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d imx6_ccm_driver = {
+	.probe	= imx6_ccm_probe,
+	.name	= "imx6-ccm",
+	.of_compatible = DRV_OF_COMPAT(imx6_ccm_dt_ids),
+};
+
+static int imx6_ccm_init(void)
+{
+	return platform_driver_register(&imx6_ccm_driver);
+}
+core_initcall(imx6_ccm_init);
diff --git a/drivers/clk/imx/clk-imx6sx.c b/drivers/clk/imx/clk-imx6sx.c
new file mode 100644
index 0000000..d758957
--- /dev/null
+++ b/drivers/clk/imx/clk-imx6sx.c
@@ -0,0 +1,483 @@
+/*
+ * Copyright (C) 2014 Freescale Semiconductor, Inc.
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+#include <dt-bindings/clock/imx6sx-clock.h>
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <linux/clk.h>
+#include <io.h>
+#include <of.h>
+#include <linux/clkdev.h>
+#include <linux/err.h>
+#include <linux/clk.h>
+#include <mach/imx6-regs.h>
+#include <mach/revision.h>
+#include <mach/imx6.h>
+
+#include "clk.h"
+#include "common.h"
+
+#define CCDR    0x4
+#define BM_CCM_CCDR_MMDC_CH0_MASK       (0x2 << 16)
+
+static const char *step_sels[]		= { "osc", "pll2_pfd2_396m", };
+static const char *pll1_sw_sels[]	= { "pll1_sys", "step", };
+static const char *periph_pre_sels[]	= { "pll2_bus", "pll2_pfd2_396m", "pll2_pfd0_352m", "pll2_198m", };
+static const char *periph2_pre_sels[]	= { "pll2_bus", "pll2_pfd2_396m", "pll2_pfd0_352m", "pll4_audio_div", };
+static const char *periph_clk2_sels[]	= { "pll3_usb_otg", "osc", "osc", };
+static const char *periph2_clk2_sels[]	= { "pll3_usb_otg", "osc", };
+static const char *periph_sels[]	= { "periph_pre", "periph_clk2", };
+static const char *periph2_sels[]	= { "periph2_pre", "periph2_clk2", };
+static const char *ocram_sels[]		= { "periph", "pll2_pfd2_396m", "periph", "pll3_pfd1_540m", };
+static const char *gpu_axi_sels[]	= { "pll2_pfd2_396m", "pll3_pfd0_720m", "pll3_pfd1_540m", "pll2_bus", };
+static const char *gpu_core_sels[]	= { "pll3_pfd1_540m", "pll3_pfd0_720m", "pll2_bus", "pll2_pfd2_396m", };
+static const char *ldb_di0_div_sels[]	= { "ldb_di0_div_3_5", "ldb_di0_div_7", };
+static const char *ldb_di1_div_sels[]	= { "ldb_di1_div_3_5", "ldb_di1_div_7", };
+static const char *ldb_di0_sels[]	= { "pll5_video_div", "pll2_pfd0_352m", "pll2_pfd2_396m", "pll2_pfd3_594m", "pll2_pfd1_594m", "pll3_pfd3_454m", };
+static const char *ldb_di1_sels[]	= { "pll3_usb_otg", "pll2_pfd0_352m", "pll2_pfd2_396m", "pll2_bus", "pll3_pfd3_454m", "pll3_pfd2_508m", };
+static const char *pcie_axi_sels[]	= { "axi", "ahb", };
+static const char *qspi1_sels[]		= { "pll3_usb_otg", "pll2_pfd0_352m", "pll2_pfd2_396m", "pll2_bus", "pll3_pfd3_454m", "pll3_pfd2_508m", };
+static const char *perclk_sels[]	= { "ipg", "osc", };
+static const char *usdhc_sels[]		= { "pll2_pfd2_396m", "pll2_pfd0_352m", };
+static const char *vid_sels[]		= { "pll3_pfd1_540m", "pll3_usb_otg", "pll3_pfd3_454m", "pll4_audio_div", "pll5_video_div", };
+static const char *uart_sels[]		= { "pll3_80m", "osc", };
+static const char *qspi2_sels[]		= { "pll2_pfd0_352m", "pll2_bus", "pll3_usb_otg", "pll2_pfd2_396m", "pll3_pfd3_454m", "dummy", "dummy", "dummy", };
+static const char *enet_pre_sels[]	= { "pll2_bus", "pll3_usb_otg", "pll5_video_div", "pll2_pfd0_352m", "pll2_pfd2_396m", "pll3_pfd2_508m", };
+static const char *enet_sels[]		= { "enet_podf", "ipp_di0", "ipp_di1", "ldb_di0", "ldb_di1", };
+static const char *m4_pre_sels[]	= { "pll2_bus", "pll3_usb_otg", "osc", "pll2_pfd0_352m", "pll2_pfd2_396m", "pll3_pfd3_454m", };
+static const char *m4_sels[]		= { "m4_pre_sel", "ipp_di0", "ipp_di1", "ldb_di0", "ldb_di1", };
+static const char *eim_slow_sels[]	= { "ocram", "pll3_usb_otg", "pll2_pfd2_396m", "pll2_pfd0_352m", };
+static const char *ecspi_sels[]		= { "pll3_60m", "osc", };
+static const char *lcdif1_pre_sels[]	= { "pll2_bus", "pll3_pfd3_454m", "pll5_video_div", "pll2_pfd0_352m", "pll2_pfd1_594m", "pll3_pfd1_540m", };
+static const char *lcdif1_sels[]	= { "lcdif1_podf", "ipp_di0", "ipp_di1", "ldb_di0", "ldb_di1", };
+static const char *lcdif2_pre_sels[]	= { "pll2_bus", "pll3_pfd3_454m", "pll5_video_div", "pll2_pfd0_352m", "pll2_pfd3_594m", "pll3_pfd1_540m", };
+static const char *lcdif2_sels[]	= { "lcdif2_podf", "ipp_di0", "ipp_di1", "ldb_di0", "ldb_di1", };
+static const char *display_sels[]	= { "pll2_bus", "pll2_pfd2_396m", "pll3_usb_otg", "pll3_pfd1_540m", };
+static const char *csi_sels[]		= { "osc", "pll2_pfd2_396m", "pll3_120m", "pll3_pfd1_540m", };
+static const char *cko1_sels[]		= {
+	"pll3_usb_otg", "pll2_bus", "pll1_sys", "pll5_video_div",
+	"dummy", "ocram", "dummy", "pxp_axi", "epdc_axi", "lcdif_pix",
+	"epdc_pix", "ahb", "ipg", "perclk", "ckil", "pll4_audio_div",
+};
+static const char *cko2_sels[]		= {
+	"dummy", "mmdc_p0_fast", "usdhc4", "usdhc1", "dummy", "wrck",
+	"ecspi_root", "dummy", "usdhc3", "pcie", "arm", "csi_core",
+	"lcdif_axi", "dummy", "osc", "dummy", "gpu2d_ovg_core",
+	"usdhc2", "ssi1", "ssi2", "ssi3", "gpu2d_core", "dummy",
+	"dummy", "dummy", "dummy", "esai_extal", "eim_slow", "uart_serial",
+	"spdif", "asrc", "dummy",
+};
+static const char *cko_sels[] = { "cko1", "cko2", };
+static const char *lvds_sels[]	= {
+	"arm", "pll1_sys", "dummy", "dummy", "dummy", "dummy", "dummy", "pll5_video_div",
+	"dummy", "dummy", "pcie_ref_125m", "dummy", "usbphy1", "usbphy2",
+};
+static const char *pll_bypass_src_sels[] = { "osc", "lvds1_in", };
+static const char *pll1_bypass_sels[] = { "pll1", "pll1_bypass_src", };
+static const char *pll2_bypass_sels[] = { "pll2", "pll2_bypass_src", };
+static const char *pll3_bypass_sels[] = { "pll3", "pll3_bypass_src", };
+static const char *pll4_bypass_sels[] = { "pll4", "pll4_bypass_src", };
+static const char *pll5_bypass_sels[] = { "pll5", "pll5_bypass_src", };
+static const char *pll6_bypass_sels[] = { "pll6", "pll6_bypass_src", };
+static const char *pll7_bypass_sels[] = { "pll7", "pll7_bypass_src", };
+
+static struct clk *clks[IMX6SX_CLK_CLK_END];
+static struct clk_onecell_data clk_data;
+
+static struct clk_div_table clk_enet_ref_table[] = {
+	{ .val = 0, .div = 20, },
+	{ .val = 1, .div = 10, },
+	{ .val = 2, .div = 5, },
+	{ .val = 3, .div = 4, },
+	{ }
+};
+
+static struct clk_div_table post_div_table[] = {
+	{ .val = 2, .div = 1, },
+	{ .val = 1, .div = 2, },
+	{ .val = 0, .div = 4, },
+	{ }
+};
+
+static struct clk_div_table video_div_table[] = {
+	{ .val = 0, .div = 1, },
+	{ .val = 1, .div = 2, },
+	{ .val = 2, .div = 1, },
+	{ .val = 3, .div = 4, },
+	{ }
+};
+
+static int imx6sx_ccm_probe(struct device_d *dev)
+{
+	struct resource *iores;
+	void __iomem *base, *anatop_base, *ccm_base;
+	struct device_node *ccm_node = dev->device_node;
+
+	clks[IMX6SX_CLK_DUMMY] = clk_fixed("dummy", 0);
+
+	anatop_base = (void *)MX6_ANATOP_BASE_ADDR;
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+	ccm_base = IOMEM(iores->start);
+
+	base = anatop_base;
+
+	clks[IMX6SX_PLL1_BYPASS_SRC] = imx_clk_mux("pll1_bypass_src", base + 0x00, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
+	clks[IMX6SX_PLL2_BYPASS_SRC] = imx_clk_mux("pll2_bypass_src", base + 0x30, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
+	clks[IMX6SX_PLL3_BYPASS_SRC] = imx_clk_mux("pll3_bypass_src", base + 0x10, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
+	clks[IMX6SX_PLL4_BYPASS_SRC] = imx_clk_mux("pll4_bypass_src", base + 0x70, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
+	clks[IMX6SX_PLL5_BYPASS_SRC] = imx_clk_mux("pll5_bypass_src", base + 0xa0, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
+	clks[IMX6SX_PLL6_BYPASS_SRC] = imx_clk_mux("pll6_bypass_src", base + 0xe0, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
+	clks[IMX6SX_PLL7_BYPASS_SRC] = imx_clk_mux("pll7_bypass_src", base + 0x20, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
+
+	/*                                    type               name    parent_name        base         div_mask */
+	clks[IMX6SX_CLK_PLL1] = imx_clk_pllv3(IMX_PLLV3_SYS,     "pll1", "pll1_bypass_src", base + 0x00, 0x7f);
+	clks[IMX6SX_CLK_PLL2] = imx_clk_pllv3(IMX_PLLV3_GENERIC, "pll2", "pll2_bypass_src", base + 0x30, 0x1);
+	clks[IMX6SX_CLK_PLL3] = imx_clk_pllv3(IMX_PLLV3_USB,     "pll3", "pll3_bypass_src", base + 0x10, 0x3);
+	clks[IMX6SX_CLK_PLL4] = imx_clk_pllv3(IMX_PLLV3_AV,      "pll4", "pll4_bypass_src", base + 0x70, 0x7f);
+	clks[IMX6SX_CLK_PLL5] = imx_clk_pllv3(IMX_PLLV3_AV,      "pll5", "pll5_bypass_src", base + 0xa0, 0x7f);
+	clks[IMX6SX_CLK_PLL6] = imx_clk_pllv3(IMX_PLLV3_ENET,    "pll6", "pll6_bypass_src", base + 0xe0, 0x3);
+	clks[IMX6SX_CLK_PLL7] = imx_clk_pllv3(IMX_PLLV3_USB,     "pll7", "pll7_bypass_src", base + 0x20, 0x3);
+
+	clks[IMX6SX_PLL1_BYPASS] = imx_clk_mux_p("pll1_bypass", base + 0x00, 16, 1, pll1_bypass_sels, ARRAY_SIZE(pll1_bypass_sels));
+	clks[IMX6SX_PLL2_BYPASS] = imx_clk_mux_p("pll2_bypass", base + 0x30, 16, 1, pll2_bypass_sels, ARRAY_SIZE(pll2_bypass_sels));
+	clks[IMX6SX_PLL3_BYPASS] = imx_clk_mux_p("pll3_bypass", base + 0x10, 16, 1, pll3_bypass_sels, ARRAY_SIZE(pll3_bypass_sels));
+	clks[IMX6SX_PLL4_BYPASS] = imx_clk_mux_p("pll4_bypass", base + 0x70, 16, 1, pll4_bypass_sels, ARRAY_SIZE(pll4_bypass_sels));
+	clks[IMX6SX_PLL5_BYPASS] = imx_clk_mux_p("pll5_bypass", base + 0xa0, 16, 1, pll5_bypass_sels, ARRAY_SIZE(pll5_bypass_sels));
+	clks[IMX6SX_PLL6_BYPASS] = imx_clk_mux_p("pll6_bypass", base + 0xe0, 16, 1, pll6_bypass_sels, ARRAY_SIZE(pll6_bypass_sels));
+	clks[IMX6SX_PLL7_BYPASS] = imx_clk_mux_p("pll7_bypass", base + 0x20, 16, 1, pll7_bypass_sels, ARRAY_SIZE(pll7_bypass_sels));
+
+	/* Do not bypass PLLs initially */
+	clk_set_parent(clks[IMX6SX_PLL1_BYPASS], clks[IMX6SX_CLK_PLL1]);
+	clk_set_parent(clks[IMX6SX_PLL2_BYPASS], clks[IMX6SX_CLK_PLL2]);
+	clk_set_parent(clks[IMX6SX_PLL3_BYPASS], clks[IMX6SX_CLK_PLL3]);
+	clk_set_parent(clks[IMX6SX_PLL4_BYPASS], clks[IMX6SX_CLK_PLL4]);
+	clk_set_parent(clks[IMX6SX_PLL5_BYPASS], clks[IMX6SX_CLK_PLL5]);
+	clk_set_parent(clks[IMX6SX_PLL6_BYPASS], clks[IMX6SX_CLK_PLL6]);
+	clk_set_parent(clks[IMX6SX_PLL7_BYPASS], clks[IMX6SX_CLK_PLL7]);
+
+	clks[IMX6SX_CLK_PLL1_SYS]      = imx_clk_gate("pll1_sys",      "pll1_bypass", base + 0x00, 13);
+	clks[IMX6SX_CLK_PLL2_BUS]      = imx_clk_gate("pll2_bus",      "pll2_bypass", base + 0x30, 13);
+	clks[IMX6SX_CLK_PLL3_USB_OTG]  = imx_clk_gate("pll3_usb_otg",  "pll3_bypass", base + 0x10, 13);
+	clks[IMX6SX_CLK_PLL4_AUDIO]    = imx_clk_gate("pll4_audio",    "pll4_bypass", base + 0x70, 13);
+	clks[IMX6SX_CLK_PLL5_VIDEO]    = imx_clk_gate("pll5_video",    "pll5_bypass", base + 0xa0, 13);
+	clks[IMX6SX_CLK_PLL6_ENET]     = imx_clk_gate("pll6_enet",     "pll6_bypass", base + 0xe0, 13);
+	clks[IMX6SX_CLK_PLL7_USB_HOST] = imx_clk_gate("pll7_usb_host", "pll7_bypass", base + 0x20, 13);
+
+	/*
+	 * Bit 20 is the reserved and read-only bit, we do this only for:
+	 * - Do nothing for usbphy clk_enable/disable
+	 * - Keep refcount when do usbphy clk_enable/disable, in that case,
+	 * the clk framework may need to enable/disable usbphy's parent
+	 */
+	clks[IMX6SX_CLK_USBPHY1] = imx_clk_gate("usbphy1", "pll3_usb_otg",  base + 0x10, 20);
+	clks[IMX6SX_CLK_USBPHY2] = imx_clk_gate("usbphy2", "pll7_usb_host", base + 0x20, 20);
+
+	/*
+	 * usbphy*_gate needs to be on after system boots up, and software
+	 * never needs to control it anymore.
+	 */
+	clks[IMX6SX_CLK_USBPHY1_GATE] = imx_clk_gate("usbphy1_gate", "dummy", base + 0x10, 6);
+	clks[IMX6SX_CLK_USBPHY2_GATE] = imx_clk_gate("usbphy2_gate", "dummy", base + 0x20, 6);
+
+	/* FIXME 100Mhz is used for pcie ref for all imx6 pcie, excepted imx6q */
+	clks[IMX6SX_CLK_PCIE_REF] = imx_clk_fixed_factor("pcie_ref", "pll6_enet", 1, 5);
+	clks[IMX6SX_CLK_PCIE_REF_125M] = imx_clk_gate("pcie_ref_125m", "pcie_ref", base + 0xe0, 19);
+
+	clks[IMX6SX_CLK_ENET_REF] = imx_clk_divider_table("enet_ref", "pll6_enet",
+			base + 0xe0, 0, 2, clk_enet_ref_table);
+	clks[IMX6SX_CLK_ENET2_REF] = imx_clk_divider_table("enet2_ref", "pll6_enet",
+			base + 0xe0, 2, 2, clk_enet_ref_table);
+	clks[IMX6SX_CLK_ENET2_REF_125M] = imx_clk_gate("enet2_ref_125m", "enet2_ref", base + 0xe0, 20);
+
+	clks[IMX6SX_CLK_ENET_PTP_REF] = imx_clk_fixed_factor("enet_ptp_ref", "pll6_enet", 1, 20);
+	clks[IMX6SX_CLK_ENET_PTP] = imx_clk_gate("enet_ptp_25m", "enet_ptp_ref", base + 0xe0, 21);
+
+	/*                                       name              parent_name     reg           idx */
+	clks[IMX6SX_CLK_PLL2_PFD0] = imx_clk_pfd("pll2_pfd0_352m", "pll2_bus",     base + 0x100, 0);
+	clks[IMX6SX_CLK_PLL2_PFD1] = imx_clk_pfd("pll2_pfd1_594m", "pll2_bus",     base + 0x100, 1);
+	clks[IMX6SX_CLK_PLL2_PFD2] = imx_clk_pfd("pll2_pfd2_396m", "pll2_bus",     base + 0x100, 2);
+	clks[IMX6SX_CLK_PLL2_PFD3] = imx_clk_pfd("pll2_pfd3_594m", "pll2_bus",     base + 0x100, 3);
+	clks[IMX6SX_CLK_PLL3_PFD0] = imx_clk_pfd("pll3_pfd0_720m", "pll3_usb_otg", base + 0xf0,  0);
+	clks[IMX6SX_CLK_PLL3_PFD1] = imx_clk_pfd("pll3_pfd1_540m", "pll3_usb_otg", base + 0xf0,  1);
+	clks[IMX6SX_CLK_PLL3_PFD2] = imx_clk_pfd("pll3_pfd2_508m", "pll3_usb_otg", base + 0xf0,  2);
+	clks[IMX6SX_CLK_PLL3_PFD3] = imx_clk_pfd("pll3_pfd3_454m", "pll3_usb_otg", base + 0xf0,  3);
+
+	/*                                                name         parent_name       mult div */
+	clks[IMX6SX_CLK_PLL2_198M] = imx_clk_fixed_factor("pll2_198m", "pll2_pfd2_396m", 1,   2);
+	clks[IMX6SX_CLK_PLL3_120M] = imx_clk_fixed_factor("pll3_120m", "pll3_usb_otg",   1,   4);
+	clks[IMX6SX_CLK_PLL3_80M]  = imx_clk_fixed_factor("pll3_80m",  "pll3_usb_otg",   1,   6);
+	clks[IMX6SX_CLK_PLL3_60M]  = imx_clk_fixed_factor("pll3_60m",  "pll3_usb_otg",   1,   8);
+	clks[IMX6SX_CLK_TWD]       = imx_clk_fixed_factor("twd",       "arm",            1,   2);
+	clks[IMX6SX_CLK_GPT_3M]    = imx_clk_fixed_factor("gpt_3m",    "osc",            1,   8);
+
+	clks[IMX6SX_CLK_PLL4_POST_DIV]  = imx_clk_divider_table("pll4_post_div", "pll4_audio",
+				base + 0x70, 19, 2, post_div_table);
+	clks[IMX6SX_CLK_PLL4_AUDIO_DIV] = imx_clk_divider("pll4_audio_div", "pll4_post_div",
+				base + 0x170, 15, 1);
+	clks[IMX6SX_CLK_PLL5_POST_DIV]  = imx_clk_divider_table("pll5_post_div", "pll5_video",
+				base + 0xa0, 19, 2, post_div_table);
+	clks[IMX6SX_CLK_PLL5_VIDEO_DIV] = imx_clk_divider_table("pll5_video_div", "pll5_post_div",
+				base + 0x170, 30, 2, video_div_table);
+
+	/*                                                name                reg           shift   width   parent_names       num_parents */
+	clks[IMX6SX_CLK_LVDS1_SEL]          = imx_clk_mux("lvds1_sel",        base + 0x160, 0,      5,      lvds_sels,         ARRAY_SIZE(lvds_sels));
+
+	base = ccm_base;
+
+	/*                                                name                reg           shift   width   parent_names       num_parents */
+	clks[IMX6SX_CLK_STEP]               = imx_clk_mux("step",             base + 0xc,   8,      1,      step_sels,         ARRAY_SIZE(step_sels));
+	clks[IMX6SX_CLK_PLL1_SW]            = imx_clk_mux("pll1_sw",          base + 0xc,   2,      1,      pll1_sw_sels,      ARRAY_SIZE(pll1_sw_sels));
+	clks[IMX6SX_CLK_OCRAM_SEL]          = imx_clk_mux("ocram_sel",        base + 0x14,  6,      2,      ocram_sels,        ARRAY_SIZE(ocram_sels));
+	clks[IMX6SX_CLK_PERIPH_PRE]         = imx_clk_mux("periph_pre",       base + 0x18,  18,     2,      periph_pre_sels,   ARRAY_SIZE(periph_pre_sels));
+	clks[IMX6SX_CLK_PERIPH2_PRE]        = imx_clk_mux("periph2_pre",      base + 0x18,  21,     2,      periph2_pre_sels,   ARRAY_SIZE(periph2_pre_sels));
+	clks[IMX6SX_CLK_PERIPH_CLK2_SEL]    = imx_clk_mux("periph_clk2_sel",  base + 0x18,  12,     2,      periph_clk2_sels,  ARRAY_SIZE(periph_clk2_sels));
+	clks[IMX6SX_CLK_PERIPH2_CLK2_SEL]   = imx_clk_mux("periph2_clk2_sel", base + 0x18,  20,     1,      periph2_clk2_sels, ARRAY_SIZE(periph2_clk2_sels));
+	clks[IMX6SX_CLK_PCIE_AXI_SEL]       = imx_clk_mux("pcie_axi_sel",     base + 0x18,  10,     1,      pcie_axi_sels,     ARRAY_SIZE(pcie_axi_sels));
+	clks[IMX6SX_CLK_GPU_AXI_SEL]        = imx_clk_mux("gpu_axi_sel",      base + 0x18,  8,      2,      gpu_axi_sels,      ARRAY_SIZE(gpu_axi_sels));
+	clks[IMX6SX_CLK_GPU_CORE_SEL]       = imx_clk_mux("gpu_core_sel",     base + 0x18,  4,      2,      gpu_core_sels,     ARRAY_SIZE(gpu_core_sels));
+	clks[IMX6SX_CLK_EIM_SLOW_SEL]       = imx_clk_mux("eim_slow_sel",     base + 0x1c,  29,     2,      eim_slow_sels,     ARRAY_SIZE(eim_slow_sels));
+	clks[IMX6SX_CLK_USDHC1_SEL]         = imx_clk_mux("usdhc1_sel",       base + 0x1c,  16,     1,      usdhc_sels,        ARRAY_SIZE(usdhc_sels));
+	clks[IMX6SX_CLK_USDHC2_SEL]         = imx_clk_mux("usdhc2_sel",       base + 0x1c,  17,     1,      usdhc_sels,        ARRAY_SIZE(usdhc_sels));
+	clks[IMX6SX_CLK_USDHC3_SEL]         = imx_clk_mux("usdhc3_sel",       base + 0x1c,  18,     1,      usdhc_sels,        ARRAY_SIZE(usdhc_sels));
+	clks[IMX6SX_CLK_USDHC4_SEL]         = imx_clk_mux("usdhc4_sel",       base + 0x1c,  19,     1,      usdhc_sels,        ARRAY_SIZE(usdhc_sels));
+	clks[IMX6SX_CLK_QSPI1_SEL]          = imx_clk_mux_p("qspi1_sel", base + 0x1c,  7, 3, qspi1_sels, ARRAY_SIZE(qspi1_sels));
+	clks[IMX6SX_CLK_PERCLK_SEL]         = imx_clk_mux("perclk_sel",       base + 0x1c,  6,      1,      perclk_sels,       ARRAY_SIZE(perclk_sels));
+	clks[IMX6SX_CLK_VID_SEL]            = imx_clk_mux("vid_sel",          base + 0x20,  21,     3,      vid_sels,          ARRAY_SIZE(vid_sels));
+	clks[IMX6SX_CLK_UART_SEL]           = imx_clk_mux("uart_sel",         base + 0x24,  6,      1,      uart_sels,         ARRAY_SIZE(uart_sels));
+	clks[IMX6SX_CLK_QSPI2_SEL]          = imx_clk_mux_p("qspi2_sel", base + 0x2c, 15, 3, qspi2_sels, ARRAY_SIZE(qspi2_sels));
+	clks[IMX6SX_CLK_ENET_PRE_SEL]       = imx_clk_mux("enet_pre_sel",     base + 0x34,  15,     3,      enet_pre_sels,     ARRAY_SIZE(enet_pre_sels));
+	clks[IMX6SX_CLK_ENET_SEL]           = imx_clk_mux("enet_sel",         base + 0x34,  9,      3,      enet_sels,         ARRAY_SIZE(enet_sels));
+	clks[IMX6SX_CLK_M4_PRE_SEL]         = imx_clk_mux("m4_pre_sel",       base + 0x34,  6,      3,      m4_pre_sels,       ARRAY_SIZE(m4_pre_sels));
+	clks[IMX6SX_CLK_M4_SEL]             = imx_clk_mux("m4_sel",           base + 0x34,  0,      3,      m4_sels,           ARRAY_SIZE(m4_sels));
+	clks[IMX6SX_CLK_ECSPI_SEL]          = imx_clk_mux("ecspi_sel",        base + 0x38,  18,     1,      ecspi_sels,        ARRAY_SIZE(ecspi_sels));
+	clks[IMX6SX_CLK_LCDIF2_PRE_SEL]     = imx_clk_mux("lcdif2_pre_sel",   base + 0x38,  6,      3,      lcdif2_pre_sels,   ARRAY_SIZE(lcdif2_pre_sels));
+	clks[IMX6SX_CLK_LCDIF2_SEL]         = imx_clk_mux("lcdif2_sel",       base + 0x38,  0,      3,      lcdif2_sels,       ARRAY_SIZE(lcdif2_sels));
+	clks[IMX6SX_CLK_DISPLAY_SEL]        = imx_clk_mux("display_sel",      base + 0x3c,  14,     2,      display_sels,      ARRAY_SIZE(display_sels));
+	clks[IMX6SX_CLK_CSI_SEL]            = imx_clk_mux("csi_sel",          base + 0x3c,  9,      2,      csi_sels,          ARRAY_SIZE(csi_sels));
+	clks[IMX6SX_CLK_CKO1_SEL]           = imx_clk_mux("cko1_sel",         base + 0x60,  0,      4,      cko1_sels,         ARRAY_SIZE(cko1_sels));
+	clks[IMX6SX_CLK_CKO2_SEL]           = imx_clk_mux("cko2_sel",         base + 0x60,  16,     5,      cko2_sels,         ARRAY_SIZE(cko2_sels));
+	clks[IMX6SX_CLK_CKO]                = imx_clk_mux("cko",              base + 0x60,  8,      1,      cko_sels,          ARRAY_SIZE(cko_sels));
+
+	clks[IMX6SX_CLK_LDB_DI1_DIV_SEL]    = imx_clk_mux_p("ldb_di1_div_sel", base + 0x20, 11, 1, ldb_di1_div_sels, ARRAY_SIZE(ldb_di1_div_sels));
+	clks[IMX6SX_CLK_LDB_DI0_DIV_SEL]    = imx_clk_mux_p("ldb_di0_div_sel", base + 0x20, 10, 1, ldb_di0_div_sels, ARRAY_SIZE(ldb_di0_div_sels));
+	clks[IMX6SX_CLK_LDB_DI1_SEL]        = imx_clk_mux_p("ldb_di1_sel",     base + 0x2c, 12, 3, ldb_di1_sels,      ARRAY_SIZE(ldb_di1_sels));
+	clks[IMX6SX_CLK_LDB_DI0_SEL]        = imx_clk_mux_p("ldb_di0_sel",     base + 0x2c, 9,  3, ldb_di0_sels,      ARRAY_SIZE(ldb_di0_sels));
+	clks[IMX6SX_CLK_LCDIF1_PRE_SEL]     = imx_clk_mux_p("lcdif1_pre_sel",  base + 0x38, 15, 3, lcdif1_pre_sels,   ARRAY_SIZE(lcdif1_pre_sels));
+	clks[IMX6SX_CLK_LCDIF1_SEL]         = imx_clk_mux_p("lcdif1_sel",      base + 0x38, 9,  3, lcdif1_sels,       ARRAY_SIZE(lcdif1_sels));
+
+	/*                                                    name              parent_name          reg          shift width */
+	clks[IMX6SX_CLK_PERIPH_CLK2]        = imx_clk_divider("periph_clk2",    "periph_clk2_sel",   base + 0x14, 27,   3);
+	clks[IMX6SX_CLK_PERIPH2_CLK2]       = imx_clk_divider("periph2_clk2",   "periph2_clk2_sel",  base + 0x14, 0,    3);
+	clks[IMX6SX_CLK_IPG]                = imx_clk_divider("ipg",            "ahb",               base + 0x14, 8,    2);
+	clks[IMX6SX_CLK_GPU_CORE_PODF]      = imx_clk_divider("gpu_core_podf",  "gpu_core_sel",      base + 0x18, 29,   3);
+	clks[IMX6SX_CLK_GPU_AXI_PODF]       = imx_clk_divider("gpu_axi_podf",   "gpu_axi_sel",       base + 0x18, 26,   3);
+	clks[IMX6SX_CLK_LCDIF1_PODF]        = imx_clk_divider("lcdif1_podf",    "lcdif1_pred",       base + 0x18, 23,   3);
+	clks[IMX6SX_CLK_QSPI1_PODF]         = imx_clk_divider("qspi1_podf",     "qspi1_sel",         base + 0x1c, 26,   3);
+	clks[IMX6SX_CLK_EIM_SLOW_PODF]      = imx_clk_divider("eim_slow_podf",  "eim_slow_sel",      base + 0x1c, 23,   3);
+	clks[IMX6SX_CLK_LCDIF2_PODF]        = imx_clk_divider("lcdif2_podf",    "lcdif2_pred",       base + 0x1c, 20,   3);
+	clks[IMX6SX_CLK_PERCLK]             = imx_clk_divider("perclk",         "perclk_sel",        base + 0x1c, 0,    6);
+	clks[IMX6SX_CLK_VID_PODF]           = imx_clk_divider("vid_podf",       "vid_sel",           base + 0x20, 24,   2);
+	clks[IMX6SX_CLK_USDHC4_PODF]        = imx_clk_divider("usdhc4_podf",    "usdhc4_sel",        base + 0x24, 22,   3);
+	clks[IMX6SX_CLK_USDHC3_PODF]        = imx_clk_divider("usdhc3_podf",    "usdhc3_sel",        base + 0x24, 19,   3);
+	clks[IMX6SX_CLK_USDHC2_PODF]        = imx_clk_divider("usdhc2_podf",    "usdhc2_sel",        base + 0x24, 16,   3);
+	clks[IMX6SX_CLK_USDHC1_PODF]        = imx_clk_divider("usdhc1_podf",    "usdhc1_sel",        base + 0x24, 11,   3);
+	clks[IMX6SX_CLK_UART_PODF]          = imx_clk_divider("uart_podf",      "uart_sel",          base + 0x24, 0,    6);
+	clks[IMX6SX_CLK_QSPI2_PRED]         = imx_clk_divider("qspi2_pred",     "qspi2_sel",         base + 0x2c, 18,   3);
+	clks[IMX6SX_CLK_QSPI2_PODF]         = imx_clk_divider("qspi2_podf",     "qspi2_pred",        base + 0x2c, 21,   6);
+	clks[IMX6SX_CLK_ENET_PODF]          = imx_clk_divider("enet_podf",      "enet_pre_sel",      base + 0x34, 12,   3);
+	clks[IMX6SX_CLK_M4_PODF]            = imx_clk_divider("m4_podf",        "m4_sel",            base + 0x34, 3,    3);
+	clks[IMX6SX_CLK_ECSPI_PODF]         = imx_clk_divider("ecspi_podf",     "ecspi_sel",         base + 0x38, 19,   6);
+	clks[IMX6SX_CLK_LCDIF1_PRED]        = imx_clk_divider("lcdif1_pred",    "lcdif1_pre_sel",    base + 0x38, 12,   3);
+	clks[IMX6SX_CLK_LCDIF2_PRED]        = imx_clk_divider("lcdif2_pred",    "lcdif2_pre_sel",    base + 0x38, 3,    3);
+	clks[IMX6SX_CLK_DISPLAY_PODF]       = imx_clk_divider("display_podf",   "display_sel",       base + 0x3c, 16,   3);
+	clks[IMX6SX_CLK_CSI_PODF]           = imx_clk_divider("csi_podf",       "csi_sel",           base + 0x3c, 11,   3);
+	clks[IMX6SX_CLK_CKO1_PODF]          = imx_clk_divider("cko1_podf",      "cko1_sel",          base + 0x60, 4,    3);
+	clks[IMX6SX_CLK_CKO2_PODF]          = imx_clk_divider("cko2_podf",      "cko2_sel",          base + 0x60, 21,   3);
+
+	clks[IMX6SX_CLK_LDB_DI0_DIV_3_5]    = imx_clk_fixed_factor("ldb_di0_div_3_5", "ldb_di0_sel", 2, 7);
+	clks[IMX6SX_CLK_LDB_DI0_DIV_7]      = imx_clk_fixed_factor("ldb_di0_div_7",   "ldb_di0_sel", 1, 7);
+	clks[IMX6SX_CLK_LDB_DI1_DIV_3_5]    = imx_clk_fixed_factor("ldb_di1_div_3_5", "ldb_di1_sel", 2, 7);
+	clks[IMX6SX_CLK_LDB_DI1_DIV_7]      = imx_clk_fixed_factor("ldb_di1_div_7",   "ldb_di1_sel", 1, 7);
+
+	/*                                               name        reg          shift width busy: reg,   shift parent_names       num_parents */
+	clks[IMX6SX_CLK_PERIPH]       = imx_clk_busy_mux("periph",   base + 0x14, 25,   1,    base + 0x48, 5,    periph_sels,       ARRAY_SIZE(periph_sels));
+	clks[IMX6SX_CLK_PERIPH2]      = imx_clk_busy_mux("periph2",  base + 0x14, 26,   1,    base + 0x48, 3,    periph2_sels,      ARRAY_SIZE(periph2_sels));
+	/*                                                   name             parent_name    reg          shift width busy: reg,   shift */
+	clks[IMX6SX_CLK_OCRAM_PODF]   = imx_clk_busy_divider("ocram_podf",    "ocram_sel",   base + 0x14, 16,   3,    base + 0x48, 0);
+	clks[IMX6SX_CLK_AHB]          = imx_clk_busy_divider("ahb",           "periph",      base + 0x14, 10,   3,    base + 0x48, 1);
+	clks[IMX6SX_CLK_MMDC_PODF]    = imx_clk_busy_divider("mmdc_podf",     "periph2",     base + 0x14, 3,    3,    base + 0x48, 2);
+	clks[IMX6SX_CLK_ARM]          = imx_clk_busy_divider("arm",           "pll1_sw",     base + 0x10, 0,    3,    base + 0x48, 16);
+
+	/*                                            name             parent_name          reg         shift */
+	/* CCGR0 */
+	clks[IMX6SX_CLK_AIPS_TZ1]     = imx_clk_gate2("aips_tz1",      "ahb",               base + 0x68, 0);
+	clks[IMX6SX_CLK_AIPS_TZ2]     = imx_clk_gate2("aips_tz2",      "ahb",               base + 0x68, 2);
+	clks[IMX6SX_CLK_APBH_DMA]     = imx_clk_gate2("apbh_dma",      "usdhc3",            base + 0x68, 4);
+	clks[IMX6SX_CLK_CAAM_MEM]     = imx_clk_gate2("caam_mem",      "ahb",               base + 0x68, 8);
+	clks[IMX6SX_CLK_CAAM_ACLK]    = imx_clk_gate2("caam_aclk",     "ahb",               base + 0x68, 10);
+	clks[IMX6SX_CLK_CAAM_IPG]     = imx_clk_gate2("caam_ipg",      "ipg",               base + 0x68, 12);
+	clks[IMX6SX_CLK_DCIC1]        = imx_clk_gate2("dcic1",         "display_podf",      base + 0x68, 24);
+	clks[IMX6SX_CLK_DCIC2]        = imx_clk_gate2("dcic2",         "display_podf",      base + 0x68, 26);
+	clks[IMX6SX_CLK_AIPS_TZ3]     = imx_clk_gate2("aips_tz3",      "ahb",               base + 0x68, 30);
+
+	/* CCGR1 */
+	clks[IMX6SX_CLK_ECSPI1]       = imx_clk_gate2("ecspi1",        "ecspi_podf",        base + 0x6c, 0);
+	clks[IMX6SX_CLK_ECSPI2]       = imx_clk_gate2("ecspi2",        "ecspi_podf",        base + 0x6c, 2);
+	clks[IMX6SX_CLK_ECSPI3]       = imx_clk_gate2("ecspi3",        "ecspi_podf",        base + 0x6c, 4);
+	clks[IMX6SX_CLK_ECSPI4]       = imx_clk_gate2("ecspi4",        "ecspi_podf",        base + 0x6c, 6);
+	clks[IMX6SX_CLK_ECSPI5]       = imx_clk_gate2("ecspi5",        "ecspi_podf",        base + 0x6c, 8);
+	clks[IMX6SX_CLK_EPIT1]        = imx_clk_gate2("epit1",         "perclk",            base + 0x6c, 12);
+	clks[IMX6SX_CLK_EPIT2]        = imx_clk_gate2("epit2",         "perclk",            base + 0x6c, 14);
+	clks[IMX6SX_CLK_WAKEUP]       = imx_clk_gate2("wakeup",        "ipg",               base + 0x6c, 18);
+	clks[IMX6SX_CLK_GPT_BUS]      = imx_clk_gate2("gpt_bus",       "perclk",            base + 0x6c, 20);
+	clks[IMX6SX_CLK_GPT_SERIAL]   = imx_clk_gate2("gpt_serial",    "perclk",            base + 0x6c, 22);
+	clks[IMX6SX_CLK_GPU]          = imx_clk_gate2("gpu",           "gpu_core_podf",     base + 0x6c, 26);
+
+	/* CCGR2 */
+	clks[IMX6SX_CLK_CSI]          = imx_clk_gate2("csi",           "csi_podf",          base + 0x70, 2);
+	clks[IMX6SX_CLK_I2C1]         = imx_clk_gate2("i2c1",          "perclk",            base + 0x70, 6);
+	clks[IMX6SX_CLK_I2C2]         = imx_clk_gate2("i2c2",          "perclk",            base + 0x70, 8);
+	clks[IMX6SX_CLK_I2C3]         = imx_clk_gate2("i2c3",          "perclk",            base + 0x70, 10);
+	clks[IMX6SX_CLK_OCOTP]        = imx_clk_gate2("ocotp",         "ipg",               base + 0x70, 12);
+	clks[IMX6SX_CLK_IOMUXC]       = imx_clk_gate2("iomuxc",        "lcdif1_podf",       base + 0x70, 14);
+	clks[IMX6SX_CLK_IPMUX1]       = imx_clk_gate2("ipmux1",        "ahb",               base + 0x70, 16);
+	clks[IMX6SX_CLK_IPMUX2]       = imx_clk_gate2("ipmux2",        "ahb",               base + 0x70, 18);
+	clks[IMX6SX_CLK_IPMUX3]       = imx_clk_gate2("ipmux3",        "ahb",               base + 0x70, 20);
+	clks[IMX6SX_CLK_TZASC1]       = imx_clk_gate2("tzasc1",        "mmdc_podf",         base + 0x70, 22);
+	clks[IMX6SX_CLK_LCDIF_APB]    = imx_clk_gate2("lcdif_apb",     "display_podf",      base + 0x70, 28);
+	clks[IMX6SX_CLK_PXP_AXI]      = imx_clk_gate2("pxp_axi",       "display_podf",      base + 0x70, 30);
+
+	/* CCGR3 */
+	clks[IMX6SX_CLK_M4]           = imx_clk_gate2("m4",            "m4_podf",           base + 0x74, 2);
+	clks[IMX6SX_CLK_ENET]         = imx_clk_gate2("enet",          "ipg",               base + 0x74, 4);
+	clks[IMX6SX_CLK_ENET_AHB]     = imx_clk_gate2("enet_ahb",      "enet_sel",          base + 0x74, 4);
+	clks[IMX6SX_CLK_DISPLAY_AXI]  = imx_clk_gate2("display_axi",   "display_podf",      base + 0x74, 6);
+	clks[IMX6SX_CLK_LCDIF2_PIX]   = imx_clk_gate2("lcdif2_pix",    "lcdif2_sel",        base + 0x74, 8);
+	clks[IMX6SX_CLK_LCDIF1_PIX]   = imx_clk_gate2("lcdif1_pix",    "lcdif1_sel",        base + 0x74, 10);
+	clks[IMX6SX_CLK_LDB_DI0]      = imx_clk_gate2("ldb_di0",       "ldb_di0_div_sel",   base + 0x74, 12);
+	clks[IMX6SX_CLK_QSPI1]        = imx_clk_gate2("qspi1",         "qspi1_podf",        base + 0x74, 14);
+	clks[IMX6SX_CLK_MLB]          = imx_clk_gate2("mlb",           "ahb",               base + 0x74, 18);
+	clks[IMX6SX_CLK_MMDC_P0_FAST] = imx_clk_gate2("mmdc_p0_fast",  "mmdc_podf",         base + 0x74, 20);
+	clks[IMX6SX_CLK_MMDC_P0_IPG]  = imx_clk_gate2("mmdc_p0_ipg",   "ipg",               base + 0x74, 24);
+	clks[IMX6SX_CLK_OCRAM]        = imx_clk_gate2("ocram",         "ocram_podf",        base + 0x74, 28);
+
+	/* CCGR4 */
+	clks[IMX6SX_CLK_PCIE_AXI]     = imx_clk_gate2("pcie_axi",      "display_podf",      base + 0x78, 0);
+	clks[IMX6SX_CLK_QSPI2]        = imx_clk_gate2("qspi2",         "qspi2_podf",        base + 0x78, 10);
+	clks[IMX6SX_CLK_PER1_BCH]     = imx_clk_gate2("per1_bch",      "usdhc3",            base + 0x78, 12);
+	clks[IMX6SX_CLK_PER2_MAIN]    = imx_clk_gate2("per2_main",     "ahb",               base + 0x78, 14);
+	clks[IMX6SX_CLK_PWM1]         = imx_clk_gate2("pwm1",          "perclk",            base + 0x78, 16);
+	clks[IMX6SX_CLK_PWM2]         = imx_clk_gate2("pwm2",          "perclk",            base + 0x78, 18);
+	clks[IMX6SX_CLK_PWM3]         = imx_clk_gate2("pwm3",          "perclk",            base + 0x78, 20);
+	clks[IMX6SX_CLK_PWM4]         = imx_clk_gate2("pwm4",          "perclk",            base + 0x78, 22);
+	clks[IMX6SX_CLK_GPMI_BCH_APB] = imx_clk_gate2("gpmi_bch_apb",  "usdhc3",            base + 0x78, 24);
+	clks[IMX6SX_CLK_GPMI_BCH]     = imx_clk_gate2("gpmi_bch",      "usdhc4",            base + 0x78, 26);
+	clks[IMX6SX_CLK_GPMI_IO]      = imx_clk_gate2("gpmi_io",       "qspi2_podf",        base + 0x78, 28);
+	clks[IMX6SX_CLK_GPMI_APB]     = imx_clk_gate2("gpmi_apb",      "usdhc3",            base + 0x78, 30);
+
+	/* CCGR5 */
+	clks[IMX6SX_CLK_ROM]          = imx_clk_gate2("rom",           "ahb",               base + 0x7c, 0);
+	clks[IMX6SX_CLK_SDMA]         = imx_clk_gate2("sdma",          "ahb",               base + 0x7c, 6);
+	clks[IMX6SX_CLK_SPBA]         = imx_clk_gate2("spba",          "ipg",               base + 0x7c, 12);
+	clks[IMX6SX_CLK_UART_IPG]     = imx_clk_gate2("uart_ipg",      "ipg",               base + 0x7c, 24);
+	clks[IMX6SX_CLK_UART_SERIAL]  = imx_clk_gate2("uart_serial",   "uart_podf",         base + 0x7c, 26);
+	clks[IMX6SX_CLK_SAI1_IPG]     = imx_clk_gate2("sai1_ipg",      "ipg",               base + 0x7c, 28);
+	clks[IMX6SX_CLK_SAI2_IPG]     = imx_clk_gate2("sai2_ipg",      "ipg",               base + 0x7c, 30);
+
+	/* CCGR6 */
+	clks[IMX6SX_CLK_USBOH3]       = imx_clk_gate2("usboh3",        "ipg",               base + 0x80, 0);
+	clks[IMX6SX_CLK_USDHC1]       = imx_clk_gate2("usdhc1",        "usdhc1_podf",       base + 0x80, 2);
+	clks[IMX6SX_CLK_USDHC2]       = imx_clk_gate2("usdhc2",        "usdhc2_podf",       base + 0x80, 4);
+	clks[IMX6SX_CLK_USDHC3]       = imx_clk_gate2("usdhc3",        "usdhc3_podf",       base + 0x80, 6);
+	clks[IMX6SX_CLK_USDHC4]       = imx_clk_gate2("usdhc4",        "usdhc4_podf",       base + 0x80, 8);
+	clks[IMX6SX_CLK_EIM_SLOW]     = imx_clk_gate2("eim_slow",      "eim_slow_podf",     base + 0x80, 10);
+	clks[IMX6SX_CLK_PWM8]         = imx_clk_gate2("pwm8",          "perclk",            base + 0x80, 16);
+	clks[IMX6SX_CLK_VADC]         = imx_clk_gate2("vadc",          "vid_podf",          base + 0x80, 20);
+	clks[IMX6SX_CLK_GIS]          = imx_clk_gate2("gis",           "display_podf",      base + 0x80, 22);
+	clks[IMX6SX_CLK_I2C4]         = imx_clk_gate2("i2c4",          "perclk",            base + 0x80, 24);
+	clks[IMX6SX_CLK_PWM5]         = imx_clk_gate2("pwm5",          "perclk",            base + 0x80, 26);
+	clks[IMX6SX_CLK_PWM6]         = imx_clk_gate2("pwm6",          "perclk",            base + 0x80, 28);
+	clks[IMX6SX_CLK_PWM7]         = imx_clk_gate2("pwm7",          "perclk",            base + 0x80, 30);
+
+	clks[IMX6SX_CLK_CKO1]         = imx_clk_gate("cko1",           "cko1_podf",         base + 0x60, 7);
+	clks[IMX6SX_CLK_CKO2]         = imx_clk_gate("cko2",           "cko2_podf",         base + 0x60, 24);
+
+	/* mask handshake of mmdc */
+	writel(BM_CCM_CCDR_MMDC_CH0_MASK, base + CCDR);
+
+	clk_data.clks = clks;
+	clk_data.clk_num = ARRAY_SIZE(clks);
+	of_clk_add_provider(ccm_node, of_clk_src_onecell_get, &clk_data);
+
+	if (IS_ENABLED(CONFIG_USB_IMX_PHY)) {
+		clk_enable(clks[IMX6SX_CLK_USBPHY1_GATE]);
+		clk_enable(clks[IMX6SX_CLK_USBPHY2_GATE]);
+	}
+
+	return 0;
+};
+
+static int imx6sx_clocks_init(void)
+{
+	if (!of_machine_is_compatible("fsl,imx6sx"))
+		return 0;
+
+	/* Set the default 132MHz for EIM module */
+	clk_set_parent(clks[IMX6SX_CLK_EIM_SLOW_SEL], clks[IMX6SX_CLK_PLL2_PFD2]);
+	clk_set_rate(clks[IMX6SX_CLK_EIM_SLOW], 132000000);
+
+	/* set parent clock for LCDIF1 pixel clock */
+	clk_set_parent(clks[IMX6SX_CLK_LCDIF1_PRE_SEL], clks[IMX6SX_CLK_PLL5_VIDEO_DIV]);
+	clk_set_parent(clks[IMX6SX_CLK_LCDIF1_SEL], clks[IMX6SX_CLK_LCDIF1_PODF]);
+
+	/*
+	 * Init enet system AHB clock, set to 200Mhz
+	 * pll2_pfd2_396m-> ENET_PODF-> ENET_AHB
+	 */
+	clk_set_parent(clks[IMX6SX_CLK_ENET_PRE_SEL], clks[IMX6SX_CLK_PLL2_PFD2]);
+	clk_set_parent(clks[IMX6SX_CLK_ENET_SEL], clks[IMX6SX_CLK_ENET_PODF]);
+	clk_set_rate(clks[IMX6SX_CLK_ENET_PODF], 200000000);
+	clk_set_rate(clks[IMX6SX_CLK_ENET_REF], 125000000);
+	clk_set_rate(clks[IMX6SX_CLK_ENET2_REF], 125000000);
+
+	/* Set parent clock for vadc */
+	clk_set_parent(clks[IMX6SX_CLK_VID_SEL], clks[IMX6SX_CLK_PLL3_USB_OTG]);
+
+	/* Update gpu clock from default 528M to 720M */
+	clk_set_parent(clks[IMX6SX_CLK_GPU_CORE_SEL], clks[IMX6SX_CLK_PLL3_PFD0]);
+	clk_set_parent(clks[IMX6SX_CLK_GPU_AXI_SEL], clks[IMX6SX_CLK_PLL3_PFD0]);
+
+	return 0;
+}
+coredevice_initcall(imx6sx_clocks_init);
+
+static __maybe_unused struct of_device_id imx6sx_ccm_dt_ids[] = {
+	{
+		.compatible = "fsl,imx6sx-ccm",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d imx6sx_ccm_driver = {
+	.probe	= imx6sx_ccm_probe,
+	.name	= "imx6-ccm",
+	.of_compatible = DRV_OF_COMPAT(imx6sx_ccm_dt_ids),
+};
+
+static int imx6sx_ccm_init(void)
+{
+	return platform_driver_register(&imx6sx_ccm_driver);
+}
+core_initcall(imx6sx_ccm_init);
diff --git a/drivers/clk/imx/clk-pfd.c b/drivers/clk/imx/clk-pfd.c
new file mode 100644
index 0000000..8f6d5ad
--- /dev/null
+++ b/drivers/clk/imx/clk-pfd.c
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
diff --git a/drivers/clk/imx/clk-pllv1.c b/drivers/clk/imx/clk-pllv1.c
new file mode 100644
index 0000000..f992134
--- /dev/null
+++ b/drivers/clk/imx/clk-pllv1.c
@@ -0,0 +1,95 @@
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
+		ll = (freq * mfi) - ll;
+	else
+		ll = (freq * mfi) + ll;
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
diff --git a/drivers/clk/imx/clk-pllv2.c b/drivers/clk/imx/clk-pllv2.c
new file mode 100644
index 0000000..5ba07fa
--- /dev/null
+++ b/drivers/clk/imx/clk-pllv2.c
@@ -0,0 +1,230 @@
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
+		temp = (ref_clk * mfi) - temp;
+	else
+		temp = (ref_clk * mfi) + temp;
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
+static int __clk_pllv2_set_rate(unsigned long rate, unsigned long parent_rate,
+		u32 *dp_op, u32 *dp_mfd, u32 *dp_mfn)
+{
+	u32 reg;
+	long mfi, pdf, mfn, mfd = 999999;
+	u64 temp64;
+	unsigned long quad_parent_rate;
+
+	quad_parent_rate = 4 * parent_rate;
+	pdf = mfi = -1;
+	while (++pdf < 16 && mfi < 5)
+		mfi = rate * (pdf+1) / quad_parent_rate;
+	if (mfi > 15)
+		return -EINVAL;
+	pdf--;
+
+	temp64 = rate * (pdf + 1) - quad_parent_rate * mfi;
+	do_div(temp64, quad_parent_rate / 1000000);
+	mfn = (long)temp64;
+
+	reg = mfi << 4 | pdf;
+
+	*dp_op = reg;
+	*dp_mfd = mfd;
+	*dp_mfn = mfn;
+
+	return 0;
+}
+
+static int clk_pllv2_set_rate(struct clk *clk, unsigned long rate,
+		unsigned long parent_rate)
+{
+	struct clk_pllv2 *pll = container_of(clk, struct clk_pllv2, clk);
+	void __iomem *pllbase;
+	u32 dp_ctl, dp_op, dp_mfd, dp_mfn;
+	int ret;
+
+	pllbase = pll->reg;
+
+	ret = __clk_pllv2_set_rate(rate, parent_rate, &dp_op, &dp_mfd, &dp_mfn);
+	if (ret)
+		return ret;
+
+	dp_ctl = __raw_readl(pllbase + MXC_PLL_DP_CTL);
+	/* use dpdck0_2 */
+	__raw_writel(dp_ctl | 0x1000L, pllbase + MXC_PLL_DP_CTL);
+
+	__raw_writel(dp_op, pllbase + MXC_PLL_DP_OP);
+	__raw_writel(dp_mfd, pllbase + MXC_PLL_DP_MFD);
+	__raw_writel(dp_mfn, pllbase + MXC_PLL_DP_MFN);
+
+	return 0;
+}
+
+static long clk_pllv2_round_rate(struct clk *clk, unsigned long rate,
+		unsigned long *prate)
+{
+	u32 dp_op, dp_mfd, dp_mfn;
+
+	__clk_pllv2_set_rate(rate, *prate, &dp_op, &dp_mfd, &dp_mfn);
+	return __clk_pllv2_recalc_rate(*prate, MXC_PLL_DP_CTL_DPDCK0_2_EN,
+			dp_op, dp_mfd, dp_mfn);
+}
+
+struct clk_ops clk_pllv2_ops = {
+	.recalc_rate = clk_pllv2_recalc_rate,
+	.round_rate = clk_pllv2_round_rate,
+	.set_rate = clk_pllv2_set_rate,
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
diff --git a/drivers/clk/imx/clk-pllv3.c b/drivers/clk/imx/clk-pllv3.c
new file mode 100644
index 0000000..e38dcdf
--- /dev/null
+++ b/drivers/clk/imx/clk-pllv3.c
@@ -0,0 +1,326 @@
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
+	int timeout = 10000;
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
+	while (timeout--) {
+		if (readl(pll->base) & BM_PLL_LOCK)
+			break;
+	}
+
+	if (!timeout)
+		return -ETIMEDOUT;
+
+	val = readl(pll->base);
+	val |= BM_PLL_ENABLE;
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
+	val &= ~BM_PLL_ENABLE;
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
+	return 500000000;
+}
+
+static const struct clk_ops clk_pllv3_enet_ops = {
+	.enable		= clk_pllv3_enable,
+	.disable	= clk_pllv3_disable,
+	.recalc_rate	= clk_pllv3_enet_recalc_rate,
+};
+
+static const struct clk_ops clk_pllv3_mlb_ops = {
+	.enable		= clk_pllv3_enable,
+	.disable	= clk_pllv3_disable,
+};
+
+struct clk *imx_clk_pllv3(enum imx_pllv3_type type, const char *name,
+			  const char *parent, void __iomem *base,
+			  u32 div_mask)
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
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
new file mode 100644
index 0000000..c5913e1
--- /dev/null
+++ b/drivers/clk/imx/clk.h
@@ -0,0 +1,104 @@
+#ifndef __IMX_CLK_H
+#define __IMX_CLK_H
+
+struct clk *clk_gate2(const char *name, const char *parent, void __iomem *reg,
+		u8 shift);
+
+static inline struct clk *imx_clk_divider(const char *name, const char *parent,
+		void __iomem *reg, u8 shift, u8 width)
+{
+	return clk_divider(name, parent, reg, shift, width, CLK_SET_RATE_PARENT);
+}
+
+static inline struct clk *imx_clk_divider_np(const char *name, const char *parent,
+		void __iomem *reg, u8 shift, u8 width)
+{
+	return clk_divider(name, parent, reg, shift, width, 0);
+}
+
+static inline struct clk *imx_clk_divider_table(const char *name,
+		const char *parent, void __iomem *reg, u8 shift, u8 width,
+		const struct clk_div_table *table)
+{
+	return clk_divider_table(name, parent, reg, shift, width, table,
+			CLK_SET_RATE_PARENT);
+}
+
+static inline struct clk *imx_clk_fixed_factor(const char *name,
+		const char *parent, unsigned int mult, unsigned int div)
+{
+	return clk_fixed_factor(name, parent, mult, div, CLK_SET_RATE_PARENT);
+}
+
+static inline struct clk *imx_clk_mux(const char *name, void __iomem *reg,
+		u8 shift, u8 width, const char **parents, u8 num_parents)
+{
+	return clk_mux(name, reg, shift, width, parents, num_parents, 0);
+}
+
+static inline struct clk *imx_clk_mux_p(const char *name, void __iomem *reg,
+		u8 shift, u8 width, const char **parents, u8 num_parents)
+{
+	return clk_mux(name, reg, shift, width, parents, num_parents, CLK_SET_RATE_PARENT);
+}
+
+static inline struct clk *imx_clk_gate(const char *name, const char *parent,
+		void __iomem *reg, u8 shift)
+{
+	return clk_gate(name, parent, reg, shift, CLK_SET_RATE_PARENT, 0);
+}
+
+static inline struct clk *imx_clk_gate2(const char *name, const char *parent,
+		void __iomem *reg, u8 shift)
+{
+	return clk_gate2(name, parent, reg, shift);
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
+			  u32 div_mask);
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
+struct clk *imx_clk_gate_exclusive(const char *name, const char *parent,
+		void __iomem *reg, u8 shift, u32 exclusive_mask);
+
+#endif /* __IMX_CLK_H */
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
