Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UGC7C-0003fy-KH
 for barebox@lists.infradead.org; Thu, 14 Mar 2013 17:39:03 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Thu, 14 Mar 2013 18:38:44 +0100
Message-Id: <1363282729-18545-6-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1363282729-18545-1-git-send-email-mkl@pengutronix.de>
References: <1363282729-18545-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 05/10] ARM i.MX bootsource: add separate function for mx25 and
 mx35
To: barebox@lists.infradead.org

This patch creates a seperate function for mx25 and mx35 to save it's
bootsource.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/arm/mach-imx/boot.c                 | 22 +++++++++++++++++++++-
 arch/arm/mach-imx/imx25.c                |  6 +-----
 arch/arm/mach-imx/imx35.c                |  6 +-----
 arch/arm/mach-imx/include/mach/generic.h |  3 ++-
 4 files changed, 25 insertions(+), 12 deletions(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 473b9d1..95a7673 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -18,6 +18,8 @@
 
 #include <io.h>
 #include <mach/generic.h>
+#include <mach/imx25-regs.h>
+#include <mach/imx35-regs.h>
 
 static const char *bootsource_str[] = {
 	[BOOTSOURCE_UNKNOWN] = "unknown",
@@ -94,7 +96,7 @@ static const enum imx_bootsource locations[4][4] = {
  * Note also that I suspect that the boot source pins are only sampled at
  * power up.
  */
-void imx_25_35_boot_save_loc(unsigned int ctrl, unsigned int type)
+static void imx25_35_boot_save_loc(unsigned int ctrl, unsigned int type)
 {
 	enum imx_bootsource src;
 
@@ -103,6 +105,24 @@ void imx_25_35_boot_save_loc(unsigned int ctrl, unsigned int type)
 	imx_set_bootsource(src);
 }
 
+void imx25_boot_save_loc(void __iomem *ccm_base)
+{
+	uint32_t val;
+
+	val = readl(ccm_base + MX25_CCM_RCSR);
+	imx25_35_boot_save_loc((val >> MX25_CCM_RCSR_MEM_CTRL_SHIFT) & 0x3,
+			       (val >> MX25_CCM_RCSR_MEM_TYPE_SHIFT) & 0x3);
+}
+
+void imx35_boot_save_loc(void __iomem *ccm_base)
+{
+	uint32_t val;
+
+	val = readl(ccm_base + MX35_CCM_RCSR);
+	imx25_35_boot_save_loc((val >> MX35_CCM_RCSR_MEM_CTRL_SHIFT) & 0x3,
+			       (val >> MX35_CCM_RCSR_MEM_TYPE_SHIFT) & 0x3);
+}
+
 #define IMX27_SYSCTRL_GPCR	0x18
 #define IMX27_GPCR_BOOT_SHIFT			16
 #define IMX27_GPCR_BOOT_MASK			(0xf << IMX27_GPCR_BOOT_SHIFT)
diff --git a/arch/arm/mach-imx/imx25.c b/arch/arm/mach-imx/imx25.c
index adcd9d2..5011918 100644
--- a/arch/arm/mach-imx/imx25.c
+++ b/arch/arm/mach-imx/imx25.c
@@ -59,11 +59,7 @@ static struct imx_iim_platform_data imx25_iim_pdata = {
 
 static int imx25_init(void)
 {
-	uint32_t val;
-
-	val = readl(MX25_CCM_BASE_ADDR + MX25_CCM_RCSR);
-	imx_25_35_boot_save_loc((val >> MX25_CCM_RCSR_MEM_CTRL_SHIFT) & 0x3,
-			(val >> MX25_CCM_RCSR_MEM_TYPE_SHIFT) & 0x3);
+	imx25_boot_save_loc((void *)MX25_CCM_BASE_ADDR);
 
 	add_generic_device("imx_iim", 0, NULL, MX25_IIM_BASE_ADDR, SZ_4K,
 			IORESOURCE_MEM, &imx25_iim_pdata);
diff --git a/arch/arm/mach-imx/imx35.c b/arch/arm/mach-imx/imx35.c
index 7b68783..92f6964 100644
--- a/arch/arm/mach-imx/imx35.c
+++ b/arch/arm/mach-imx/imx35.c
@@ -59,13 +59,9 @@ core_initcall(imx35_l2_fix);
 
 static int imx35_init(void)
 {
-	uint32_t val;
-
 	imx35_silicon_revision();
 
-	val = readl(MX35_CCM_BASE_ADDR + MX35_CCM_RCSR);
-	imx_25_35_boot_save_loc((val >> MX35_CCM_RCSR_MEM_CTRL_SHIFT) & 0x3,
-			(val >> MX35_CCM_RCSR_MEM_TYPE_SHIFT) & 0x3);
+	imx35_boot_save_loc((void *)MX35_CCM_BASE_ADDR);
 
 	add_generic_device("imx_iim", 0, NULL, MX35_IIM_BASE_ADDR, SZ_4K,
 			IORESOURCE_MEM, NULL);
diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index d39369b..f6e9ecf 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -16,7 +16,8 @@ enum imx_bootsource {
 enum imx_bootsource imx_bootsource(void);
 void imx_set_bootsource(enum imx_bootsource src);
 
-void imx_25_35_boot_save_loc(unsigned int ctrl, unsigned int type);
+void imx25_boot_save_loc(void __iomem *ccm_base);
+void imx35_boot_save_loc(void __iomem *ccm_base);
 void imx27_boot_save_loc(void __iomem *sysctrl_base);
 void imx51_boot_save_loc(void __iomem *src_base);
 void imx53_boot_save_loc(void __iomem *src_base);
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
