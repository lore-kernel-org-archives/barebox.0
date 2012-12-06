Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgWmB-000051-AC
 for barebox@lists.infradead.org; Thu, 06 Dec 2012 08:25:49 +0000
Received: by mail-la0-f49.google.com with SMTP id r15so4584563lag.36
 for <barebox@lists.infradead.org>; Thu, 06 Dec 2012 00:25:46 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu,  6 Dec 2012 12:25:36 +0400
Message-Id: <1354782336-16239-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1354782336-16239-1-git-send-email-antonynpavlov@gmail.com>
References: <1354782336-16239-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 2/2] ARM: pass the 'flags'=0 parameter to clk_fixed()
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/mach-bcm2835/core.c  |    6 +++---
 arch/arm/mach-imx/clk-imx1.c  |    6 +++---
 arch/arm/mach-imx/clk-imx21.c |    4 ++--
 arch/arm/mach-imx/clk-imx25.c |    4 ++--
 arch/arm/mach-imx/clk-imx27.c |    6 +++---
 arch/arm/mach-imx/clk-imx31.c |    4 ++--
 arch/arm/mach-imx/clk-imx35.c |    2 +-
 arch/arm/mach-imx/clk-imx5.c  |   10 +++++-----
 arch/arm/mach-imx/clk-imx6.c  |    8 ++++----
 9 files changed, 25 insertions(+), 25 deletions(-)

diff --git a/arch/arm/mach-bcm2835/core.c b/arch/arm/mach-bcm2835/core.c
index b0fec8b..01672a6 100644
--- a/arch/arm/mach-bcm2835/core.c
+++ b/arch/arm/mach-bcm2835/core.c
@@ -42,9 +42,9 @@ static int bcm2835_clk_init(void)
 {
 	int ret;
 
-	clks[dummy] = clk_fixed("dummy", 0);
-	clks[clk_ref_3] = clk_fixed("ref3", 3 * 1000 * 1000);
-	clks[clk_ref_1] = clk_fixed("ref1", 1 * 1000 * 1000);
+	clks[dummy] = clk_fixed("dummy", 0, 0);
+	clks[clk_ref_3] = clk_fixed("ref3", 3 * 1000 * 1000, 0);
+	clks[clk_ref_1] = clk_fixed("ref1", 1 * 1000 * 1000, 0);
 
 	ret = clk_register_clkdev(clks[dummy], "apb_pclk", NULL);
 	if (ret)
diff --git a/arch/arm/mach-imx/clk-imx1.c b/arch/arm/mach-imx/clk-imx1.c
index 0d04a92..f221342 100644
--- a/arch/arm/mach-imx/clk-imx1.c
+++ b/arch/arm/mach-imx/clk-imx1.c
@@ -55,9 +55,9 @@ static const char *clko_sel_clks[] = {
 
 int __init mx1_clocks_init(void __iomem *regs, unsigned long fref)
 {
-	clks[dummy] = clk_fixed("dummy", 0);
-	clks[clk32] = clk_fixed("clk32", fref);
-	clks[clk16m] = clk_fixed("clk16m", 16000000);
+	clks[dummy] = clk_fixed("dummy", 0, 0);
+	clks[clk32] = clk_fixed("clk32", fref, 0);
+	clks[clk16m] = clk_fixed("clk16m", 16000000, 0);
 	clks[clk32_premult] = imx_clk_fixed_factor("clk32_premult", "clk32", 512, 1);
 	clks[prem] = imx_clk_mux("prem", regs + CCM_CSCR, 16, 1, prem_sel_clks,
 			ARRAY_SIZE(prem_sel_clks));
diff --git a/arch/arm/mach-imx/clk-imx21.c b/arch/arm/mach-imx/clk-imx21.c
index 9e7af81..1ce1efe 100644
--- a/arch/arm/mach-imx/clk-imx21.c
+++ b/arch/arm/mach-imx/clk-imx21.c
@@ -80,8 +80,8 @@ static int imx21_ccm_probe(struct device_d *dev)
 			(1 << 28) | (1 << 29) | (1 << 30) | (1 << 31),
 			base + CCM_PCCR1);
 
-	clks[ckil] = clk_fixed("ckil", lref);
-	clks[ckih] = clk_fixed("ckih", href);
+	clks[ckil] = clk_fixed("ckil", lref, 0);
+	clks[ckih] = clk_fixed("ckih", href, 0);
 	clks[fpm] = imx_clk_fixed_factor("fpm", "ckil", 512, 1);
 	clks[mpll_sel] = imx_clk_mux("mpll_sel", base + CCM_CSCR, 16, 1, mpll_sel_clks,
 			ARRAY_SIZE(mpll_sel_clks));
diff --git a/arch/arm/mach-imx/clk-imx25.c b/arch/arm/mach-imx/clk-imx25.c
index 38f15a6..e459218 100644
--- a/arch/arm/mach-imx/clk-imx25.c
+++ b/arch/arm/mach-imx/clk-imx25.c
@@ -90,8 +90,8 @@ static int imx25_ccm_probe(struct device_d *dev)
 			(1 << 15) | (1 << 16) | (1 << 17) | (1 << 18),
 			base + CCM_CGCR2);
 
-	clks[dummy] = clk_fixed("dummy", 0);
-	clks[osc] = clk_fixed("osc", 24000000);
+	clks[dummy] = clk_fixed("dummy", 0, 0);
+	clks[osc] = clk_fixed("osc", 24000000, 0);
 	clks[mpll] = imx_clk_pllv1("mpll", "osc", base + CCM_MPCTL);
 	clks[upll] = imx_clk_pllv1("upll", "osc", base + CCM_UPCTL);
 	clks[mpll_cpu_3_4] = imx_clk_fixed_factor("mpll_cpu_3_4", "mpll", 3, 4);
diff --git a/arch/arm/mach-imx/clk-imx27.c b/arch/arm/mach-imx/clk-imx27.c
index 222d2a6..854dab9 100644
--- a/arch/arm/mach-imx/clk-imx27.c
+++ b/arch/arm/mach-imx/clk-imx27.c
@@ -149,9 +149,9 @@ static int imx27_ccm_probe(struct device_d *dev)
 			PCCR1_UART4_EN | PCCR1_UART3_EN | PCCR1_UART2_EN | PCCR1_UART1_EN,
 			base + CCM_PCCR1);
 
-	clks[dummy] = clk_fixed("dummy", 0);
-	clks[ckih] = clk_fixed("ckih", 26000000);
-	clks[ckil] = clk_fixed("ckil", 32768);
+	clks[dummy] = clk_fixed("dummy", 0, 0);
+	clks[ckih] = clk_fixed("ckih", 26000000, 0);
+	clks[ckil] = clk_fixed("ckil", 32768, 0);
 	clks[mpll] = imx_clk_pllv1("mpll", "ckih", base + CCM_MPCTL0);
 	clks[spll] = imx_clk_pllv1("spll", "ckih", base + CCM_SPCTL0);
 	clks[mpll_main2] = imx_clk_fixed_factor("mpll_main2", "mpll", 2, 3);
diff --git a/arch/arm/mach-imx/clk-imx31.c b/arch/arm/mach-imx/clk-imx31.c
index aa1b652..37a092b 100644
--- a/arch/arm/mach-imx/clk-imx31.c
+++ b/arch/arm/mach-imx/clk-imx31.c
@@ -88,8 +88,8 @@ static int imx31_ccm_probe(struct device_d *dev)
 	writel(0xffffffff, base + CCM_CGR1);
 	writel(0xffffffff, base + CCM_CGR2);
 
-	clks[ckih] = clk_fixed("ckih", 26000000);
-	clks[ckil] = clk_fixed("ckil", 32768);
+	clks[ckih] = clk_fixed("ckih", 26000000, 0);
+	clks[ckil] = clk_fixed("ckil", 32768, 0);
 	clks[mpll] = imx_clk_pllv1("mpll", "ckih", base + CCM_MPCTL);
 	clks[spll] = imx_clk_pllv1("spll", "ckih", base + CCM_SRPCTL);
 	clks[upll] = imx_clk_pllv1("upll", "ckih", base + CCM_UPCTL);
diff --git a/arch/arm/mach-imx/clk-imx35.c b/arch/arm/mach-imx/clk-imx35.c
index 5b5a9e7..886e262 100644
--- a/arch/arm/mach-imx/clk-imx35.c
+++ b/arch/arm/mach-imx/clk-imx35.c
@@ -114,7 +114,7 @@ static int imx35_ccm_probe(struct device_d *dev)
 		aad = &clk_consumer[0];
 	}
 
-	clks[ckih] = clk_fixed("ckih", 24000000);
+	clks[ckih] = clk_fixed("ckih", 24000000, 0);
 	clks[mpll] = imx_clk_pllv1("mpll", "ckih", base + CCM_MPCTL);
 	clks[ppll] = imx_clk_pllv1("ppll", "ckih", base + CCM_PPCTL);
 
diff --git a/arch/arm/mach-imx/clk-imx5.c b/arch/arm/mach-imx/clk-imx5.c
index 050842d..f7ee56c 100644
--- a/arch/arm/mach-imx/clk-imx5.c
+++ b/arch/arm/mach-imx/clk-imx5.c
@@ -137,11 +137,11 @@ static void __init mx5_clocks_common_init(void __iomem *base, unsigned long rate
 	writel(0xffffffff, base + CCM_CCGR6);
 	writel(0xffffffff, base + CCM_CCGR7);
 
-	clks[dummy] = clk_fixed("dummy", 0);
-	clks[ckil] = clk_fixed("ckil", rate_ckil);
-	clks[osc] = clk_fixed("osc", rate_osc);
-	clks[ckih1] = clk_fixed("ckih1", rate_ckih1);
-	clks[ckih2] = clk_fixed("ckih2", rate_ckih2);
+	clks[dummy] = clk_fixed("dummy", 0, 0);
+	clks[ckil] = clk_fixed("ckil", rate_ckil, 0);
+	clks[osc] = clk_fixed("osc", rate_osc, 0);
+	clks[ckih1] = clk_fixed("ckih1", rate_ckih1, 0);
+	clks[ckih2] = clk_fixed("ckih2", rate_ckih2, 0);
 
 	clks[lp_apm] = imx_clk_mux("lp_apm", base + CCM_CCSR, 9, 1,
 				lp_apm_sel, ARRAY_SIZE(lp_apm_sel));
diff --git a/arch/arm/mach-imx/clk-imx6.c b/arch/arm/mach-imx/clk-imx6.c
index a1da47a..e027578 100644
--- a/arch/arm/mach-imx/clk-imx6.c
+++ b/arch/arm/mach-imx/clk-imx6.c
@@ -181,10 +181,10 @@ static int imx6_ccm_probe(struct device_d *dev)
 
 	base = anatop_base;
 
-	clks[dummy] = clk_fixed("dummy", 0);
-	clks[ckil] = clk_fixed("ckil", ckil_rate);
-	clks[ckih] = clk_fixed("ckih", ckih_rate);
-	clks[osc] = clk_fixed("osc", osc_rate);
+	clks[dummy] = clk_fixed("dummy", 0, 0);
+	clks[ckil] = clk_fixed("ckil", ckil_rate, 0);
+	clks[ckih] = clk_fixed("ckih", ckih_rate, 0);
+	clks[osc] = clk_fixed("osc", osc_rate, 0);
 
 	/*                   type                               name            parent_name base       gate_mask div_mask */
 	clks[pll1_sys]      = imx_clk_pllv3(IMX_PLLV3_SYS,	"pll1_sys",	"osc", base,        0x2000,   0x7f);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
