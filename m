Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x233.google.com ([2a00:1450:4013:c00::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WeLQt-0007sG-8E
 for barebox@lists.infradead.org; Sun, 27 Apr 2014 09:31:36 +0000
Received: by mail-ee0-f51.google.com with SMTP id c13so3869669eek.24
 for <barebox@lists.infradead.org>; Sun, 27 Apr 2014 02:31:14 -0700 (PDT)
From: Beniamino Galvani <b.galvani@gmail.com>
Date: Sun, 27 Apr 2014 11:30:38 +0200
Message-Id: <1398591044-3616-6-git-send-email-b.galvani@gmail.com>
In-Reply-To: <1398591044-3616-1-git-send-email-b.galvani@gmail.com>
References: <1398591044-3616-1-git-send-email-b.galvani@gmail.com>
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
Subject: [PATCH 05/11] clk: gate: add flags argument to clock gate constructor
To: barebox@lists.infradead.org

This adds a clk_gate_flags argument to clock gate creation functions
to allow the introduction of new clock gate modifiers.

Signed-off-by: Beniamino Galvani <b.galvani@gmail.com>
---
 arch/arm/mach-imx/clk.h           |    2 +-
 arch/arm/mach-zynq/clk-zynq7000.c |    8 ++++----
 drivers/clk/clk-gate.c            |   12 +++++-------
 drivers/clk/mvebu/common.c        |    2 +-
 drivers/clk/mxs/clk-imx28.c       |    2 +-
 drivers/clk/tegra/clk-periph.c    |    2 +-
 include/linux/clk.h               |    7 +++++--
 7 files changed, 18 insertions(+), 17 deletions(-)

diff --git a/arch/arm/mach-imx/clk.h b/arch/arm/mach-imx/clk.h
index 32a02db..e2f4143 100644
--- a/arch/arm/mach-imx/clk.h
+++ b/arch/arm/mach-imx/clk.h
@@ -36,7 +36,7 @@ static inline struct clk *imx_clk_mux_p(const char *name, void __iomem *reg,
 static inline struct clk *imx_clk_gate(const char *name, const char *parent,
 		void __iomem *reg, u8 shift)
 {
-	return clk_gate(name, parent, reg, shift, CLK_SET_RATE_PARENT);
+	return clk_gate(name, parent, reg, shift, CLK_SET_RATE_PARENT, 0);
 }
 
 struct clk *imx_clk_pllv1(const char *name, const char *parent,
diff --git a/arch/arm/mach-zynq/clk-zynq7000.c b/arch/arm/mach-zynq/clk-zynq7000.c
index ea637d7..b4513a9 100644
--- a/arch/arm/mach-zynq/clk-zynq7000.c
+++ b/arch/arm/mach-zynq/clk-zynq7000.c
@@ -374,11 +374,11 @@ static int zynq_clock_probe(struct device_d *dev)
 
 	clks[uart_clk] = zynq_periph_clk("uart_clk", slcr_base + 0x154);
 
-	clks[uart0] = clk_gate("uart0", "uart_clk", slcr_base + 0x154, 0, 0);
-	clks[uart1] = clk_gate("uart1", "uart_clk", slcr_base + 0x154, 1, 0);
+	clks[uart0] = clk_gate("uart0", "uart_clk", slcr_base + 0x154, 0, 0, 0);
+	clks[uart1] = clk_gate("uart1", "uart_clk", slcr_base + 0x154, 1, 0, 0);
 
-	clks[gem0] = clk_gate("gem0", "io_pll", slcr_base + 0x140, 0, 0);
-	clks[gem1] = clk_gate("gem1", "io_pll", slcr_base + 0x144, 1, 0);
+	clks[gem0] = clk_gate("gem0", "io_pll", slcr_base + 0x140, 0, 0, 0);
+	clks[gem1] = clk_gate("gem1", "io_pll", slcr_base + 0x144, 1, 0, 0);
 
 	clks[cpu_clk] = zynq_cpu_clk("cpu_clk", slcr_base + 0x120);
 
diff --git a/drivers/clk/clk-gate.c b/drivers/clk/clk-gate.c
index b298b19..11c749a 100644
--- a/drivers/clk/clk-gate.c
+++ b/drivers/clk/clk-gate.c
@@ -25,7 +25,6 @@ struct clk_gate {
 	void __iomem *reg;
 	int shift;
 	const char *parent;
-#define CLK_GATE_INVERTED	(1 << 0)
 	unsigned flags;
 };
 
@@ -85,7 +84,7 @@ static struct clk_ops clk_gate_ops = {
 };
 
 struct clk *clk_gate_alloc(const char *name, const char *parent,
-		void __iomem *reg, u8 shift, unsigned flags)
+		void __iomem *reg, u8 shift, unsigned flags, u8 clk_gate_flags)
 {
 	struct clk_gate *g = xzalloc(sizeof(*g));
 
@@ -97,6 +96,7 @@ struct clk *clk_gate_alloc(const char *name, const char *parent,
 	g->clk.flags = flags;
 	g->clk.parent_names = &g->parent;
 	g->clk.num_parents = 1;
+	g->flags = clk_gate_flags;
 
 	return &g->clk;
 }
@@ -109,12 +109,12 @@ void clk_gate_free(struct clk *clk_gate)
 }
 
 struct clk *clk_gate(const char *name, const char *parent, void __iomem *reg,
-		u8 shift, unsigned flags)
+		u8 shift, unsigned flags, u8 clk_gate_flags)
 {
 	struct clk *g;
 	int ret;
 
-	g = clk_gate_alloc(name , parent, reg, shift, flags);
+	g = clk_gate_alloc(name , parent, reg, shift, flags, clk_gate_flags);
 
 	ret = clk_register(g);
 	if (ret) {
@@ -131,13 +131,11 @@ struct clk *clk_gate_inverted(const char *name, const char *parent,
 	struct clk *clk;
 	struct clk_gate *g;
 
-	clk = clk_gate(name, parent, reg, shift, flags);
+	clk = clk_gate(name, parent, reg, shift, flags, CLK_GATE_INVERTED);
 	if (IS_ERR(clk))
 		return clk;
 
 	g = container_of(clk, struct clk_gate, clk);
 
-	g->flags = CLK_GATE_INVERTED;
-
 	return clk;
 }
diff --git a/drivers/clk/mvebu/common.c b/drivers/clk/mvebu/common.c
index 658ce3e..f3be5f2 100644
--- a/drivers/clk/mvebu/common.c
+++ b/drivers/clk/mvebu/common.c
@@ -188,7 +188,7 @@ int mvebu_clk_gating_probe(struct device_d *dev)
 			(desc[n].parent) ? desc[n].parent : default_parent;
 		gate->bit_idx = desc[n].bit_idx;
 		gate->clk = clk_gate(desc[n].name, parent,
-				base, desc[n].bit_idx, 0);
+				base, desc[n].bit_idx, 0, 0);
 		WARN_ON(IS_ERR(gate->clk));
 	}
 
diff --git a/drivers/clk/mxs/clk-imx28.c b/drivers/clk/mxs/clk-imx28.c
index 934a194..36b71f6 100644
--- a/drivers/clk/mxs/clk-imx28.c
+++ b/drivers/clk/mxs/clk-imx28.c
@@ -128,7 +128,7 @@ int __init mx28_clocks_init(void __iomem *regs)
 	clks[fec] = mxs_clk_gate("fec", "fec_sleep", ENET, 30);
 	clks[usb0_phy] = mxs_clk_gate("usb0_phy", "pll0", PLL0CTRL0, 18);
 	clks[usb1_phy] = mxs_clk_gate("usb1_phy", "pll1", PLL1CTRL0, 18);
-	clks[enet_out] = clk_gate("enet_out", "pll2", ENET, 18, 0);
+	clks[enet_out] = clk_gate("enet_out", "pll2", ENET, 18, 0, 0);
 	clks[lcdif_comp] = mxs_clk_lcdif("lcdif_comp", clks[ref_pix],
 			clks[lcdif_div], clks[lcdif]);
 
diff --git a/drivers/clk/tegra/clk-periph.c b/drivers/clk/tegra/clk-periph.c
index 25616c8..be83955 100644
--- a/drivers/clk/tegra/clk-periph.c
+++ b/drivers/clk/tegra/clk-periph.c
@@ -150,7 +150,7 @@ struct clk *_tegra_clk_register_periph(const char *name,
 		gate_offs = 0x10 + ((id >> 3) & 0xc);
 
 	periph->gate = clk_gate_alloc(NULL, NULL, clk_base + gate_offs,
-				      id & 0x1f, 0);
+				      id & 0x1f, 0, 0);
 	if (!periph->gate)
 		goto out_gate;
 
diff --git a/include/linux/clk.h b/include/linux/clk.h
index dd9fab7..fbfdd4f 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -199,6 +199,8 @@ static inline int clk_set_rate(struct clk *clk, unsigned long rate)
 
 #define CLK_SET_RATE_PARENT     (1 << 0) /* propagate rate change up one level */
 
+#define CLK_GATE_INVERTED	(1 << 0)
+
 struct clk_ops {
 	int		(*enable)(struct clk *clk);
 	void		(*disable)(struct clk *clk);
@@ -267,10 +269,11 @@ struct clk *clk_mux(const char *name, void __iomem *reg,
 		unsigned flags);
 
 struct clk *clk_gate_alloc(const char *name, const char *parent,
-		void __iomem *reg, u8 shift, unsigned flags);
+		void __iomem *reg, u8 shift, unsigned flags,
+		u8 clk_gate_flags);
 void clk_gate_free(struct clk *clk_gate);
 struct clk *clk_gate(const char *name, const char *parent, void __iomem *reg,
-		u8 shift, unsigned flags);
+		u8 shift, unsigned flags, u8 clk_gate_flags);
 struct clk *clk_gate_inverted(const char *name, const char *parent, void __iomem *reg,
 		u8 shift, unsigned flags);
 int clk_is_enabled(struct clk *clk);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
