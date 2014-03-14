Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WOTAp-0003AL-Dc
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 14:33:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Mar 2014 15:32:38 +0100
Message-Id: <1394807569-23620-19-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1394807569-23620-1-git-send-email-s.hauer@pengutronix.de>
References: <1394807569-23620-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 18/29] ARM: i.MX: introduce clk parent rate changes
To: barebox@lists.infradead.org

Let dividers and gates change the parent rates.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx6.c |  2 +-
 arch/arm/mach-imx/clk.h      | 14 +++++++++++---
 2 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-imx/clk-imx6.c b/arch/arm/mach-imx/clk-imx6.c
index 8d78a18..db16bb5 100644
--- a/arch/arm/mach-imx/clk-imx6.c
+++ b/arch/arm/mach-imx/clk-imx6.c
@@ -214,7 +214,7 @@ static int imx6_ccm_probe(struct device_d *dev)
 	clks[sata_ref_100m] = imx_clk_gate("sata_ref_100m", "sata_ref", base + 0xe0, 20);
 	clks[pcie_ref_125m] = imx_clk_gate("pcie_ref_125m", "pcie_ref", base + 0xe0, 19);
 
-	clks[enet_ref] = clk_divider_table("enet_ref", "pll6_enet", base + 0xe0, 0, 2, clk_enet_ref_table, 0);
+	clks[enet_ref] = imx_clk_divider_table("enet_ref", "pll6_enet", base + 0xe0, 0, 2, clk_enet_ref_table);
 
 	/*                                name               parent_name         reg          idx */
 	clks[pll2_pfd0_352m] = imx_clk_pfd("pll2_pfd0_352m", "pll2_bus",     base + 0x100, 0);
diff --git a/arch/arm/mach-imx/clk.h b/arch/arm/mach-imx/clk.h
index cdafad1..d83266b 100644
--- a/arch/arm/mach-imx/clk.h
+++ b/arch/arm/mach-imx/clk.h
@@ -4,13 +4,21 @@
 static inline struct clk *imx_clk_divider(const char *name, const char *parent,
 		void __iomem *reg, u8 shift, u8 width)
 {
-	return clk_divider(name, parent, reg, shift, width, 0);
+	return clk_divider(name, parent, reg, shift, width, CLK_SET_RATE_PARENT);
+}
+
+static inline struct clk *imx_clk_divider_table(const char *name,
+		const char *parent, void __iomem *reg, u8 shift, u8 width,
+		const struct clk_div_table *table)
+{
+	return clk_divider_table(name, parent, reg, shift, width, table,
+			CLK_SET_RATE_PARENT);
 }
 
 static inline struct clk *imx_clk_fixed_factor(const char *name,
 		const char *parent, unsigned int mult, unsigned int div)
 {
-	return clk_fixed_factor(name, parent, mult, div, 0);
+	return clk_fixed_factor(name, parent, mult, div, CLK_SET_RATE_PARENT);
 }
 
 static inline struct clk *imx_clk_mux(const char *name, void __iomem *reg,
@@ -22,7 +30,7 @@ static inline struct clk *imx_clk_mux(const char *name, void __iomem *reg,
 static inline struct clk *imx_clk_gate(const char *name, const char *parent,
 		void __iomem *reg, u8 shift)
 {
-	return clk_gate(name, parent, reg, shift, 0);
+	return clk_gate(name, parent, reg, shift, CLK_SET_RATE_PARENT);
 }
 
 struct clk *imx_clk_pllv1(const char *name, const char *parent,
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
