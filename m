Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TK5XI-0004iP-QH
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 10:53:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  5 Oct 2012 12:53:29 +0200
Message-Id: <1349434416-4231-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349434416-4231-1-git-send-email-s.hauer@pengutronix.de>
References: <1349434416-4231-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/8] ARM i.MX27: Use standard IMX_CHIP_REV_* defines
To: barebox@lists.infradead.org

We have IMX_CHIP_REV_* defines which are used for most i.MX SoCs.
Use them for i.MX27 aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx27.c             |    4 ++--
 arch/arm/mach-imx/imx27.c                 |   15 ++++++++++++++-
 arch/arm/mach-imx/include/mach/generic.h  |    2 --
 arch/arm/mach-imx/include/mach/imx-regs.h |    1 +
 4 files changed, 17 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-imx/clk-imx27.c b/arch/arm/mach-imx/clk-imx27.c
index abfde0f..74d70db 100644
--- a/arch/arm/mach-imx/clk-imx27.c
+++ b/arch/arm/mach-imx/clk-imx27.c
@@ -92,7 +92,7 @@ static int imx27_ccm_probe(struct device_d *dev)
 	clks[spll] = imx_clk_pllv1("spll", "ckih", base + CCM_SPCTL0);
 	clks[mpll_main2] = imx_clk_fixed_factor("mpll_main2", "mpll", 2, 3);
 
-	if (imx_silicon_revision() >= IMX27_CHIP_REVISION_2_0) {
+	if (imx_silicon_revision() >= IMX_CHIP_REV_2_0) {
 		clks[ahb] = imx_clk_divider("ahb", "mpll_main2", base + CCM_CSCR, 8, 2);
 		clks[ipg] = imx_clk_fixed_factor("ipg", "ahb", 1, 2);
 	} else {
@@ -110,7 +110,7 @@ static int imx27_ccm_probe(struct device_d *dev)
 			ARRAY_SIZE(cpu_sel_clks));
 	clks[clko_sel] = imx_clk_mux("clko_sel", base + CCM_CCSR, 0, 5, clko_sel_clks,
 			ARRAY_SIZE(clko_sel_clks));
-	if (imx_silicon_revision() >= IMX27_CHIP_REVISION_2_0)
+	if (imx_silicon_revision() >= IMX_CHIP_REV_2_0)
 		clks[cpu_div] = imx_clk_divider("cpu_div", "cpu_sel", base + CCM_CSCR, 12, 2);
 	else
 		clks[cpu_div] = imx_clk_divider("cpu_div", "cpu_sel", base + CCM_CSCR, 13, 3);
diff --git a/arch/arm/mach-imx/imx27.c b/arch/arm/mach-imx/imx27.c
index 8116e6f..cd429d0 100644
--- a/arch/arm/mach-imx/imx27.c
+++ b/arch/arm/mach-imx/imx27.c
@@ -20,7 +20,20 @@
 
 int imx_silicon_revision(void)
 {
-	return CID >> 28;
+	uint32_t val;
+
+	val = readl(MX27_SYSCTRL_BASE_ADDR);
+
+	switch (val >> 28) {
+	case 0:
+		return IMX_CHIP_REV_1_0;
+	case 1:
+		return IMX_CHIP_REV_2_0;
+	case 2:
+		return IMX_CHIP_REV_2_1;
+	default:
+		return IMX_CHIP_REV_UNKNOWN;
+	}
 }
 
 void imx27_setup_weimcs(size_t cs, unsigned upper, unsigned lower,
diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index 99f3012..018ea91 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -1,7 +1,5 @@
 
 int imx_silicon_revision(void);
-#define IMX27_CHIP_REVISION_1_0   0
-#define IMX27_CHIP_REVISION_2_0   1
 
 u64 imx_uid(void);
 
diff --git a/arch/arm/mach-imx/include/mach/imx-regs.h b/arch/arm/mach-imx/include/mach/imx-regs.h
index 235bac3..2b836c9 100644
--- a/arch/arm/mach-imx/include/mach/imx-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx-regs.h
@@ -115,5 +115,6 @@
 #define IMX_CHIP_REV_3_0	0x30
 #define IMX_CHIP_REV_3_1	0x31
 #define IMX_CHIP_REV_3_2	0x32
+#define IMX_CHIP_REV_UNKNOWN	0xff
 
 #endif				/* _IMX_REGS_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
