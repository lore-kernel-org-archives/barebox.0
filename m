Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dMxrc-0003DK-TZ
 for barebox@lists.infradead.org; Mon, 19 Jun 2017 14:41:19 +0000
Received: by mail-pf0-x241.google.com with SMTP id w12so17388893pfk.0
 for <barebox@lists.infradead.org>; Mon, 19 Jun 2017 07:40:52 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 19 Jun 2017 07:40:37 -0700
Message-Id: <20170619144039.20552-2-andrew.smirnov@gmail.com>
In-Reply-To: <20170619144039.20552-1-andrew.smirnov@gmail.com>
References: <20170619144039.20552-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/3] clk-vf610: Mark all of CCSR muxes with
 CLK_OPS_PARENT_ENABLE
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, cphealy@gmail.com

As per VYBRIDRM.pdf, p. 673:

"... When switching clock sources on GL MUX, both active and target
clock sources must be active..."

So mark all of the clock muxes controlled by CCM_CSSR with
CLK_OPS_PARENT_ENABLE to satisfy that requirement. Experiment shows
that failing to do so would result in failure (in some cases CPU
hang).

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/clk/imx/clk-vf610.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/imx/clk-vf610.c b/drivers/clk/imx/clk-vf610.c
index 41fa3e9..5469840 100644
--- a/drivers/clk/imx/clk-vf610.c
+++ b/drivers/clk/imx/clk-vf610.c
@@ -181,8 +181,8 @@ static void __init vf610_clocks_init(struct device_node *ccm_node)
 		CCSR_PLL1_PFDn_EN(4);
 	writel(ccsr, CCM_CCSR);
 
-	clk[VF610_CLK_SLOW_CLK_SEL] = imx_clk_mux("slow_clk_sel", CCM_CCSR, 4, 1, slow_sels, ARRAY_SIZE(slow_sels));
-	clk[VF610_CLK_FASK_CLK_SEL] = imx_clk_mux("fast_clk_sel", CCM_CCSR, 5, 1, fast_sels, ARRAY_SIZE(fast_sels));
+	clk[VF610_CLK_SLOW_CLK_SEL] = imx_clk_mux2("slow_clk_sel", CCM_CCSR, 4, 1, slow_sels, ARRAY_SIZE(slow_sels));
+	clk[VF610_CLK_FASK_CLK_SEL] = imx_clk_mux2("fast_clk_sel", CCM_CCSR, 5, 1, fast_sels, ARRAY_SIZE(fast_sels));
 
 	clk[VF610_CLK_PLL1_BYPASS_SRC] = imx_clk_mux("pll1_bypass_src", PLL1_CTRL, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
 	clk[VF610_CLK_PLL2_BYPASS_SRC] = imx_clk_mux("pll2_bypass_src", PLL2_CTRL, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
@@ -243,10 +243,10 @@ static void __init vf610_clocks_init(struct device_node *ccm_node)
 	clk[VF610_CLK_PLL3_PFD3] = imx_clk_pfd("pll3_pfd3", "pll3_usb_otg", PFD_PLL3_BASE, 2);
 	clk[VF610_CLK_PLL3_PFD4] = imx_clk_pfd("pll3_pfd4", "pll3_usb_otg", PFD_PLL3_BASE, 3);
 
-	clk[VF610_CLK_PLL1_PFD_SEL] = imx_clk_mux("pll1_pfd_sel", CCM_CCSR, 16, 3, pll1_sels, 5);
-	clk[VF610_CLK_PLL2_PFD_SEL] = imx_clk_mux("pll2_pfd_sel", CCM_CCSR, 19, 3, pll2_sels, 5);
-	clk[VF610_CLK_SYS_SEL] = imx_clk_mux("sys_sel", CCM_CCSR, 0, 3, sys_sels, ARRAY_SIZE(sys_sels));
-	clk[VF610_CLK_DDR_SEL] = imx_clk_mux("ddr_sel", CCM_CCSR, 6, 1, ddr_sels, ARRAY_SIZE(ddr_sels));
+	clk[VF610_CLK_PLL1_PFD_SEL] = imx_clk_mux2("pll1_pfd_sel", CCM_CCSR, 16, 3, pll1_sels, 5);
+	clk[VF610_CLK_PLL2_PFD_SEL] = imx_clk_mux2("pll2_pfd_sel", CCM_CCSR, 19, 3, pll2_sels, 5);
+	clk[VF610_CLK_SYS_SEL] = imx_clk_mux2("sys_sel", CCM_CCSR, 0, 3, sys_sels, ARRAY_SIZE(sys_sels));
+	clk[VF610_CLK_DDR_SEL] = imx_clk_mux2("ddr_sel", CCM_CCSR, 6, 1, ddr_sels, ARRAY_SIZE(ddr_sels));
 	clk[VF610_CLK_SYS_BUS] = imx_clk_divider("sys_bus", "sys_sel", CCM_CACRR, 0, 3);
 	clk[VF610_CLK_PLATFORM_BUS] = imx_clk_divider("platform_bus", "sys_bus", CCM_CACRR, 3, 3);
 	clk[VF610_CLK_IPG_BUS] = imx_clk_divider("ipg_bus", "platform_bus", CCM_CACRR, 11, 2);
-- 
2.9.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
