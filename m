Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XwAi5-0001Bn-UF
 for barebox@lists.infradead.org; Wed, 03 Dec 2014 14:15:19 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Wed,  3 Dec 2014 15:14:43 +0100
Message-Id: <1417616083-6814-1-git-send-email-p.zabel@pengutronix.de>
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
Subject: [RFC PATCH] ARM: i.MX6: Add workaround for glitchy LDB_DI mux
To: barebox@lists.infradead.org
Cc: Fabio Estevam <fabio.estevam@freescale.com>, Ranjani Vaidyanathan <Ranjani.Vaidyanathan@freescale.com>, Shawn Guo <shawn.guo@linaro.org>

Due to incorrect placement of the clock gate cell in the ldb_di[x]_clk tree,
the glitchy parent mux of ldb_di[x]_clk can cause a glitch to enter the
ldb_di_ipu_div divider. If the divider gets locked up, no ldb_di[x]_clk is
generated, and the LVDS display will hang when the ipu_di_clk is sourced from
ldb_di_clk.

To fix the problem, both the new and current parent of the ldb_di_clk should
be disabled before the switch. This patch ensures that correct steps are
followed when ldb_di_clk parent is switched in the beginning of boot. The
glitchy muxes are then registered as read-only. The clock parent can be selected
using the assigned-clocks and assigned-clock-parents properties of the ccm
device tree node:

	&clks {
		assigned-clocks = <&clks IMX6QDL_CLK_LDB_DI0_SEL>,
				  <&clks IMX6QDL_CLK_LDB_DI1_SEL>;
		assigned-clock-parents = <&clks IMX6QDL_CLK_MMDC_CH1_AXI>,
					 <&clks IMX6QDL_CLK_PLL5_VIDEO_DIV>;
	};

Signed-off-by: Ranjani Vaidyanathan <Ranjani.Vaidyanathan@freescale.com>
Signed-off-by: Fabio Estevam <fabio.estevam@freescale.com>
Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
This has been discussed before for Linux:
  http://comments.gmane.org/gmane.linux.ports.arm.kernel/337903

I'm not sure whether the decision is final, but Shawn mentions this should
be done in the bootloader:
  https://patchwork.ozlabs.org/patch/366505/

I have tried to generalize the workaround to allow switching between any
of the four lower mux inputs (A -> B by way of A -> A|4 -> B|4 -> B, is
this indeed the correct way to do it?) and added support for the
assigned-clocks / assigned-clock-parents device tree bindings.

regards
Philipp
---
 arch/arm/mach-imx/clk-imx6.c | 216 +++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 209 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-imx/clk-imx6.c b/arch/arm/mach-imx/clk-imx6.c
index 3bc5949..d9e5f07 100644
--- a/arch/arm/mach-imx/clk-imx6.c
+++ b/arch/arm/mach-imx/clk-imx6.c
@@ -254,8 +254,217 @@ static struct clk_div_table video_div_table[] = {
 	{ /* sentinel */ }
 };
 
+static int ldb_di_sel_by_clock_id(int clock_id)
+{
+	switch (clock_id) {
+	case pll5_video_div:
+		return 0;
+	case pll2_pfd0_352m:
+		return 1;
+	case pll2_pfd2_396m:
+		return 2;
+	case mmdc_ch1_axi:
+		return 3;
+	case pll3_usb_otg:
+		return 4;
+	default:
+		return -ENOENT;
+	}
+}
+
+static void of_assigned_ldb_sels(struct device_node *node, int *sel0, int *sel1)
+{
+	struct of_phandle_args clkspec;
+	int index, rc, num_parents;
+	int parent, child, sel;
+
+	num_parents = of_count_phandle_with_args(node, "assigned-clock-parents",
+						 "#clock-cells");
+	for (index = 0; index < num_parents; index++) {
+		rc = of_parse_phandle_with_args(node, "assigned-clock-parents",
+						"#clock-cells", index, &clkspec);
+		if (rc < 0) {
+			/* skip empty (null) phandles */
+			if (rc == -ENOENT)
+				continue;
+			else
+				return;
+		}
+		if (clkspec.np != node || clkspec.args[0] >= clk_max) {
+			pr_err("ccm: parent clock %d not in ccm\n", index);
+			return;
+		}
+		parent = clkspec.args[0];
+
+		rc = of_parse_phandle_with_args(node, "assigned-clocks",
+						"#clock-cells", index, &clkspec);
+		if (rc < 0)
+			return;
+		if (clkspec.np != node || clkspec.args[0] >= clk_max) {
+			pr_err("ccm: child clock %d not in ccm\n", index);
+			return;
+		}
+		child = clkspec.args[0];
+
+		if (child != ldb_di0_sel &&
+		    child != ldb_di1_sel)
+			continue;
+
+		sel = ldb_di_sel_by_clock_id(parent);
+		if (sel < 0)
+			pr_err("ccm: invalid ldb_di parent clock\n");
+
+		if (child == ldb_di0_sel)
+			*sel0 = sel;
+		if (child == ldb_di1_sel)
+			*sel1 = sel;
+	}
+}
+
+#define CCM_CCDR                0x04
+#define CCM_CCSR                0x0c
+#define CCM_CS2CDR              0x2c
+
+#define CCDR_MMDC_CH1_MASK      BIT(16)
+#define CCSR_PLL3_SW_CLK_SEL    BIT(0)
+
+/*
+ * The only way to disable the MMDC_CH1 clock is to move it to pll3_sw_clk
+ * via periph2_clk2_sel and then to disable pll3_sw_clk by selecting the
+ * bypass clock source, since there is no CG bit for mmdc_ch1.
+ */
+static void mmdc_ch1_disable(void __iomem *cb)
+{
+	unsigned int reg;
+
+	clk_set_parent(clks[periph2_clk2_sel], clks[pll3_usb_otg]);
+
+	/* Mask handshake with mmdc_ch1 module when changing periph2_clk_sel */
+	reg = readl(cb + CCM_CCDR);
+	reg |= CCDR_MMDC_CH1_MASK;
+	writel(reg, cb + CCM_CCDR);
+
+	clk_set_parent(clks[periph2], clks[periph2_clk2]);
+
+	/* Disable pll3_sw_clk by selecting the bypass clock source */
+	reg = readl(cb + CCM_CCSR);
+	reg |= CCSR_PLL3_SW_CLK_SEL;
+	writel(reg, cb + CCM_CCSR);
+}
+
+static void mmdc_ch1_reenable(void __iomem *cb)
+{
+	unsigned int reg;
+
+	/* Enable pll3_sw_clk by disabling the bypass */
+	reg = readl(cb + CCM_CCSR);
+	reg &= ~CCSR_PLL3_SW_CLK_SEL;
+	writel(reg, cb + CCM_CCSR);
+
+	clk_set_parent(clks[periph2], clks[periph2_pre]);
+
+	/* Reenable handshake with mmdc_ch1 module */
+	reg = readl(cb + CCM_CCDR);
+	reg &= ~CCDR_MMDC_CH1_MASK;
+	writel(reg, cb + CCM_CCDR);
+}
+
+/*
+ * Need to follow a strict procedure when changing the LDB
+ * clock, else we can introduce a glitch. Things to keep in
+ * mind:
+ * 1. The current and new parent clocks must be disabled.
+ * 2. The default clock for ldb_dio_clk is mmdc_ch1 which has
+ * no CG bit.
+ * 3. In the RTL implementation of the LDB_DI_CLK_SEL mux
+ * the top four options are in one mux and the PLL3 option along
+ * with another option is in the second mux. There is third mux
+ * used to decide between the first and second mux.
+ * The code below switches the parent to the bottom mux first
+ * and then manipulates the top mux. This ensures that no glitch
+ * will enter the divider.
+ */
+static void init_ldb_clks(void __iomem *cb)
+{
+	struct device_node *np;
+	unsigned int reg;
+	int sel0[4] = { 0 };
+	int sel1[4] = { 0 };
+	int i;
+
+	reg = readl(cb + CCM_CS2CDR);
+	sel0[0] = (reg >> 9) & 7;
+	sel1[0] = (reg >> 12) & 7;
+
+	np = of_find_compatible_node(NULL, NULL, "fsl,imx6q-ccm");
+	of_assigned_ldb_sels(np, &sel0[3], &sel1[3]);
+
+	if (sel0[0] == sel0[3] &&
+	    sel1[0] == sel1[3])
+		return;
+
+	if (sel0[0] != 3 || sel1[0] != 3)
+		pr_warn("ccm: ldb_di_sel already changed from reset value\n");
+
+	if (sel0[0] > 3 || sel1[0] > 3 ||
+	    sel0[3] > 3 || sel1[3] > 3) {
+		pr_err("ccm: ldb_di_sel workaround only for top mux\n");
+		return;
+	}
+
+	sel0[1] = sel0[0] | 4;
+	sel0[2] = sel0[3] | 4;
+	sel1[1] = sel1[0] | 4;
+	sel1[2] = sel1[3] | 4;
+
+	mmdc_ch1_disable(cb);
+
+	for (i = 1; i < 4; i++) {
+		reg = readl(cb + CCM_CS2CDR);
+		reg &= ~((7 << 9) | (7 << 12));
+		reg |= ((sel0[i] << 9) | (sel1[i] << 12));
+		writel(reg, cb + CCM_CS2CDR);
+	}
+
+	mmdc_ch1_reenable(cb);
+}
+
+static void disable_anatop_clocks(void __iomem *anab)
+{
+	unsigned int reg;
+
+	/* Make sure PFDs are disabled at boot. */
+	reg = readl(anab + 0x100);
+	/* Cannot gate PFD2 if pll2_pfd2_396m is the parent of MMDC clock */
+	if (clk_get_parent(clks[periph_pre]) == clks[pll2_pfd2_396m])
+		reg |= 0x00008080;
+	else
+		reg |= 0x00808080;
+	writel(reg, anab + 0x100);
+
+	reg = readl(anab + 0xf0);
+	reg |= 0x80808080;
+	writel(reg, anab + 0xf0);
+
+	/* Make sure PLLs is disabled */
+	reg = readl(anab + 0xa0);
+	reg &= ~(1 << 13);
+	writel(reg, anab + 0xa0);
+}
+
 static void imx6_add_video_clks(void __iomem *anab, void __iomem *cb)
 {
+	/*
+	 * The LDB_DI0/1_SEL muxes are registered read-only due to a hardware
+	 * bug. Set the muxes to the requested values before registering the
+	 * ldb_di_sel clocks.
+	 */
+	if ((imx_silicon_revision() != IMX_CHIP_REV_1_0) ||
+	    cpu_is_mx6dl()) {
+		disable_anatop_clocks(anab);
+		init_ldb_clks(cb);
+	}
+
 	clks[pll5_post_div] = imx_clk_divider_table("pll5_post_div", "pll5_video", anab + 0xa0, 19, 2, post_div_table);
 	clks[pll5_video_div] = imx_clk_divider_table("pll5_video_div", "pll5_post_div", anab + 0x170, 30, 2, video_div_table);
 
@@ -310,13 +519,6 @@ static void imx6_add_video_clks(void __iomem *anab, void __iomem *cb)
 	clk_set_parent(clks[ipu1_di1_pre_sel], clks[pll5_video_div]);
 	clk_set_parent(clks[ipu2_di0_pre_sel], clks[pll5_video_div]);
 	clk_set_parent(clks[ipu2_di1_pre_sel], clks[pll5_video_div]);
-
-	if ((imx_silicon_revision() != IMX_CHIP_REV_1_0) ||
-	    cpu_is_mx6dl()) {
-		clk_set_parent(clks[ldb_di0_sel], clks[pll5_video_div]);
-		clk_set_parent(clks[ldb_di1_sel], clks[pll5_video_div]);
-	}
-
 }
 
 static int imx6_ccm_probe(struct device_d *dev)
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
