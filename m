Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yqdyf-0006tS-63
 for barebox@lists.infradead.org; Fri, 08 May 2015 08:49:50 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Fri,  8 May 2015 10:49:14 +0200
Message-Id: <1431074954-28737-1-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH] imx6: lowlevel_init: Fix workaround for new i.MX6s chips
To: barebox@lists.infradead.org

This errata workaround was introduced for i.MX6Q, i.MX6D and i.MX6SL.
Old revisions of i.MX6s chips had no problems with the PFD resets.

In a newer i.MX6s revision I had issues with this code when booting in
internal boot mode from NAND or in serial downloader mode. FUSE mode
worked fine although it jumped directly to serial downloader mode.

This patch executes the PFD workaround only for i.MX6Q and i.MX6D which
fixes the issues I saw.

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
---
 arch/arm/mach-imx/imx6.c | 48 +++++++++++++++++++++++++-----------------------
 1 file changed, 25 insertions(+), 23 deletions(-)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 73630e70927a..7508964bf549 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -30,7 +30,8 @@ void imx6_init_lowlevel(void)
 	void __iomem *aips1 = (void *)MX6_AIPS1_ON_BASE_ADDR;
 	void __iomem *aips2 = (void *)MX6_AIPS2_ON_BASE_ADDR;
 	void __iomem *iomux = (void *)MX6_IOMUXC_BASE_ADDR;
-	int is_imx6q = __imx6_cpu_type() == IMX6_CPUTYPE_IMX6Q;
+	bool is_imx6q = __imx6_cpu_type() == IMX6_CPUTYPE_IMX6Q;
+	bool is_imx6d = __imx6_cpu_type() == IMX6_CPUTYPE_IMX6D;
 	uint32_t val;
 
 	/*
@@ -67,28 +68,29 @@ void imx6_init_lowlevel(void)
 	 * not output clock after reset, MX6DL and MX6SL have added 396M pfd
 	 * workaround in ROM code, as bus clock need it
 	 */
-	writel(BM_ANADIG_PFD_480_PFD3_CLKGATE |
-			BM_ANADIG_PFD_480_PFD2_CLKGATE |
-			BM_ANADIG_PFD_480_PFD1_CLKGATE |
-			BM_ANADIG_PFD_480_PFD0_CLKGATE,
-			MX6_ANATOP_BASE_ADDR + HW_ANADIG_PFD_480_SET);
-	writel(BM_ANADIG_PFD_528_PFD3_CLKGATE |
-			(is_imx6q ? BM_ANADIG_PFD_528_PFD2_CLKGATE : 0) |
-			BM_ANADIG_PFD_528_PFD1_CLKGATE |
-			BM_ANADIG_PFD_528_PFD0_CLKGATE,
-			MX6_ANATOP_BASE_ADDR + HW_ANADIG_PFD_528_SET);
-
-	writel(BM_ANADIG_PFD_480_PFD3_CLKGATE |
-			BM_ANADIG_PFD_480_PFD2_CLKGATE |
-			BM_ANADIG_PFD_480_PFD1_CLKGATE |
-			BM_ANADIG_PFD_480_PFD0_CLKGATE,
-			MX6_ANATOP_BASE_ADDR + HW_ANADIG_PFD_480_CLR);
-	writel(BM_ANADIG_PFD_528_PFD3_CLKGATE |
-			(is_imx6q ? BM_ANADIG_PFD_528_PFD2_CLKGATE : 0) |
-			BM_ANADIG_PFD_528_PFD2_CLKGATE |
-			BM_ANADIG_PFD_528_PFD1_CLKGATE |
-			BM_ANADIG_PFD_528_PFD0_CLKGATE,
-			MX6_ANATOP_BASE_ADDR + HW_ANADIG_PFD_528_CLR);
+	if (is_imx6q || is_imx6d) {
+		writel(BM_ANADIG_PFD_480_PFD3_CLKGATE |
+		       BM_ANADIG_PFD_480_PFD2_CLKGATE |
+		       BM_ANADIG_PFD_480_PFD1_CLKGATE |
+		       BM_ANADIG_PFD_480_PFD0_CLKGATE,
+		       MX6_ANATOP_BASE_ADDR + HW_ANADIG_PFD_480_SET);
+		writel(BM_ANADIG_PFD_528_PFD3_CLKGATE |
+		       (is_imx6q ? BM_ANADIG_PFD_528_PFD2_CLKGATE : 0) |
+		       BM_ANADIG_PFD_528_PFD1_CLKGATE |
+		       BM_ANADIG_PFD_528_PFD0_CLKGATE,
+		       MX6_ANATOP_BASE_ADDR + HW_ANADIG_PFD_528_SET);
+
+		writel(BM_ANADIG_PFD_480_PFD3_CLKGATE |
+		       BM_ANADIG_PFD_480_PFD2_CLKGATE |
+		       BM_ANADIG_PFD_480_PFD1_CLKGATE |
+		       BM_ANADIG_PFD_480_PFD0_CLKGATE,
+		       MX6_ANATOP_BASE_ADDR + HW_ANADIG_PFD_480_CLR);
+		writel(BM_ANADIG_PFD_528_PFD3_CLKGATE |
+		       (is_imx6q ? BM_ANADIG_PFD_528_PFD2_CLKGATE : 0) |
+		       BM_ANADIG_PFD_528_PFD1_CLKGATE |
+		       BM_ANADIG_PFD_528_PFD0_CLKGATE,
+		       MX6_ANATOP_BASE_ADDR + HW_ANADIG_PFD_528_CLR);
+	}
 
 	val = readl(iomux + IOMUXC_GPR4);
 	val |= IMX6Q_GPR4_VPU_WR_CACHE_SEL | IMX6Q_GPR4_VPU_RD_CACHE_SEL |
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
