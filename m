Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMCxm-0008Pv-K6
 for barebox@lists.infradead.org; Thu, 11 Oct 2012 07:13:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 Oct 2012 09:13:30 +0200
Message-Id: <1349939621-17793-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349939621-17793-1-git-send-email-s.hauer@pengutronix.de>
References: <1349939621-17793-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/13] ARM i.MX nand layout: make multisoc safe
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/nand.c |   53 +++++++++++++++++++++++++---------------------
 1 file changed, 29 insertions(+), 24 deletions(-)

diff --git a/arch/arm/mach-imx/nand.c b/arch/arm/mach-imx/nand.c
index fff9a12..b347664 100644
--- a/arch/arm/mach-imx/nand.c
+++ b/arch/arm/mach-imx/nand.c
@@ -12,20 +12,20 @@
  */
 
 #include <common.h>
+#include <mach/generic.h>
 #include <mach/imx-regs.h>
 #include <io.h>
 
-#if defined(CONFIG_ARCH_IMX35) || defined (CONFIG_ARCH_IMX25)
-
 #define RCSR_NFC_FMS		(1 << 8)
 #define RCSR_NFC_4K		(1 << 9)
 #define RCSR_NFC_16BIT_SEL	(1 << 14)
 
-void imx_nand_set_layout(int writesize, int datawidth)
+static __maybe_unused void imx25_35_nand_set_layout(void __iomem *reg_rcsr,
+		int writesize, int datawidth)
 {
 	unsigned int rcsr;
 
-	rcsr = readl(IMX_CCM_BASE + CCM_RCSR);
+	rcsr = readl(reg_rcsr);
 
 	switch (writesize) {
 	case 512:
@@ -52,19 +52,18 @@ void imx_nand_set_layout(int writesize, int datawidth)
 		break;
 	}
 
-	writel(rcsr, IMX_CCM_BASE + CCM_RCSR);
+	writel(rcsr, reg_rcsr);
 }
 
-#elif defined(CONFIG_ARCH_IMX21) || defined (CONFIG_ARCH_IMX27)
-
 #define FMCR_NF_FMS		(1 << 5)
 #define FMCR_NF_16BIT_SEL	(1 << 4)
 
-void imx_nand_set_layout(int writesize, int datawidth)
+static __maybe_unused void imx21_27_nand_set_layout(void __iomem *reg_fmcr,
+		int writesize, int datawidth)
 {
 	unsigned int fmcr;
 
-	fmcr = FMCR;
+	fmcr = readl(reg_fmcr);
 
 	switch (writesize) {
 	case 512:
@@ -88,23 +87,29 @@ void imx_nand_set_layout(int writesize, int datawidth)
 		break;
 	}
 
-	FMCR = fmcr;
-}
-
-#elif defined CONFIG_ARCH_IMX51 || defined CONFIG_ARCH_IMX53
-
-void imx_nand_set_layout(int writesize, int datawidth)
-{
-	/* Just silence the compiler warning below. On i.MX51 we don't
-	 * have external boot.
-	 */
+	writel(fmcr, reg_fmcr);
 }
 
-#else
-#warning using empty imx_nand_set_layout(). NAND flash will not work properly if not booting from it
-
 void imx_nand_set_layout(int writesize, int datawidth)
 {
-}
-
+#ifdef CONFIG_ARCH_IMX21
+	if (cpu_is_mx21())
+		imx21_27_nand_set_layout((void *)(MX21_SYSCTRL_BASE_ADDR +
+					0x14), writesize, datawidth);
 #endif
+#ifdef CONFIG_ARCH_IMX27
+	if (cpu_is_mx27())
+		imx21_27_nand_set_layout((void *)(MX27_SYSCTRL_BASE_ADDR +
+					0x14), writesize, datawidth);
+#endif
+#ifdef CONFIG_ARCH_IMX25
+	if (cpu_is_mx25())
+		imx25_35_nand_set_layout((void *)MX25_CCM_BASE_ADDR +
+				CCM_RCSR, writesize, datawidth);
+#endif
+#ifdef CONFIG_ARCH_IMX35
+	if (cpu_is_mx35())
+		imx25_35_nand_set_layout((void *)MX35_CCM_BASE_ADDR +
+				CCM_RCSR, writesize, datawidth);
+#endif
+}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
