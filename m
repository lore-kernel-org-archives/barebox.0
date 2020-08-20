Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8qVT-0003Tw-D3
 for barebox@lists.infradead.org; Thu, 20 Aug 2020 19:45:52 +0000
Received: from [2001:67c:670:100:1d::28] (helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1k8qVP-0003XK-Q6
 for barebox@lists.infradead.org; Thu, 20 Aug 2020 21:45:47 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 20 Aug 2020 21:45:47 +0200
Message-Id: <20200820194547.3738-2-l.stach@pengutronix.de>
In-Reply-To: <20200820194547.3738-1-l.stach@pengutronix.de>
References: <20200820194547.3738-1-l.stach@pengutronix.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] clk: imx8mm: fix CPU clock
To: barebox@lists.infradead.org

This is a port of the Linux kernel commit d3b70cd87e77 (clk: imx: imx8mm:
fix a53 cpu cloc). This allows the reparenting as specified in the new DTs
to succeed.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/clk/imx/clk-imx8mm.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index a31741af884f..17cb0177f758 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -26,6 +26,8 @@ static const char *sys_pll3_bypass_sels[] = {"sys_pll3", "sys_pll3_ref_sel", };
 static const char *imx8mm_a53_sels[] = {"osc_24m", "arm_pll_out", "sys_pll2_500m", "sys_pll2_1000m",
 					"sys_pll1_800m", "sys_pll1_400m", "audio_pll1_out", "sys_pll3_out", };
 
+static const char *imx8mm_a53_core_sels[] = {"arm_a53_div", "arm_pll_out", };
+
 static const char *imx8mm_m4_sels[] = {"osc_24m", "sys_pll2_200m", "sys_pll2_250m", "sys_pll1_266m",
 				       "sys_pll1_800m", "audio_pll1_out", "video_pll1_out", "sys_pll3_out", };
 
@@ -396,6 +398,9 @@ static int imx8mm_clocks_init(struct device_node *ccm_np)
 	clks[IMX8MM_CLK_GPU3D_DIV] = imx_clk_divider2("gpu3d_div", "gpu3d_cg", ccm + 0x8180, 0, 3);
 	clks[IMX8MM_CLK_GPU2D_DIV] = imx_clk_divider2("gpu2d_div", "gpu2d_cg", ccm + 0x8200, 0, 3);
 
+	/* CORE SEL */
+	clks[IMX8MM_CLK_A53_CORE] = imx_clk_mux2_flags("arm_a53_core", ccm + 0x9880, 24, 1, imx8mm_a53_core_sels, ARRAY_SIZE(imx8mm_a53_core_sels), CLK_IS_CRITICAL);
+
 	/* BUS */
 	clks[IMX8MM_CLK_MAIN_AXI] = imx8m_clk_composite_critical("main_axi",  imx8mm_main_axi_sels, ccm + 0x8800);
 	clks[IMX8MM_CLK_ENET_AXI] = imx8m_clk_composite("enet_axi", imx8mm_enet_axi_sels, ccm + 0x8880);
@@ -556,11 +561,11 @@ static int imx8mm_clocks_init(struct device_node *ccm_np)
 	clks[IMX8MM_CLK_DRAM_ALT_ROOT] = imx_clk_fixed_factor("dram_alt_root", "dram_alt", 1, 4);
 	clks[IMX8MM_CLK_DRAM_CORE] = imx_clk_mux2_flags("dram_core_clk", ccm + 0x9800, 24, 1, imx8mm_dram_core_sels, ARRAY_SIZE(imx8mm_dram_core_sels), CLK_IS_CRITICAL);
 
-	clks[IMX8MM_CLK_ARM] = imx_clk_cpu("arm", "arm_a53_div",
-					   clks[IMX8MM_CLK_A53_DIV],
-					   clks[IMX8MM_CLK_A53_SRC],
+	clks[IMX8MM_CLK_ARM] = imx_clk_cpu("arm", "arm_a53_core",
+					   clks[IMX8MM_CLK_A53_CORE],
+					   clks[IMX8MM_CLK_A53_CORE],
 					   clks[IMX8MM_ARM_PLL_OUT],
-					   clks[IMX8MM_SYS_PLL1_800M]);
+					   clks[IMX8MM_CLK_A53_DIV]);
 
 	imx_check_clocks(clks, ARRAY_SIZE(clks));
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
