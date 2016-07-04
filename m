Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bK0Ac-000618-FS
 for barebox@lists.infradead.org; Mon, 04 Jul 2016 09:28:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Jul 2016 11:27:28 +0200
Message-Id: <1467624459-16448-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1467624459-16448-1-git-send-email-s.hauer@pengutronix.de>
References: <1467624459-16448-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/12] ARM: i.MX53: do not pass base address to
 imx*_boot_save_loc
To: Barebox List <barebox@lists.infradead.org>

The functions can determine the necessary base addresses themselves.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/boot.c                 | 20 ++++++++++++++------
 arch/arm/mach-imx/imx25.c                |  2 +-
 arch/arm/mach-imx/imx27.c                |  2 +-
 arch/arm/mach-imx/imx35.c                |  2 +-
 arch/arm/mach-imx/imx51.c                |  2 +-
 arch/arm/mach-imx/imx53.c                |  2 +-
 arch/arm/mach-imx/imx6.c                 |  2 +-
 arch/arm/mach-imx/include/mach/generic.h | 12 ++++++------
 8 files changed, 26 insertions(+), 18 deletions(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 376e370..f6c546d 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -20,7 +20,10 @@
 #include <io.h>
 #include <mach/generic.h>
 #include <mach/imx25-regs.h>
+#include <mach/imx27-regs.h>
 #include <mach/imx35-regs.h>
+#include <mach/imx51-regs.h>
+#include <mach/imx53-regs.h>
 #include <mach/imx6-regs.h>
 
 /* [CTRL][TYPE] */
@@ -75,8 +78,9 @@ static void imx25_35_boot_save_loc(unsigned int ctrl, unsigned int type)
 	bootsource_set(src);
 }
 
-void imx25_boot_save_loc(void __iomem *ccm_base)
+void imx25_boot_save_loc(void)
 {
+	void __iomem *ccm_base = IOMEM(MX25_CCM_BASE_ADDR);
 	uint32_t val;
 
 	val = readl(ccm_base + MX25_CCM_RCSR);
@@ -84,8 +88,9 @@ void imx25_boot_save_loc(void __iomem *ccm_base)
 			       (val >> MX25_CCM_RCSR_MEM_TYPE_SHIFT) & 0x3);
 }
 
-void imx35_boot_save_loc(void __iomem *ccm_base)
+void imx35_boot_save_loc(void)
 {
+	void __iomem *ccm_base = IOMEM(MX35_CCM_BASE_ADDR);
 	uint32_t val;
 
 	val = readl(ccm_base + MX35_CCM_RCSR);
@@ -104,8 +109,9 @@ void imx35_boot_save_loc(void __iomem *ccm_base)
 #define IMX27_GPCR_BOOT_32BIT_CS0		6
 #define IMX27_GPCR_BOOT_8BIT_NAND_512		7
 
-void imx27_boot_save_loc(void __iomem *sysctrl_base)
+void imx27_boot_save_loc(void)
 {
+	void __iomem *sysctrl_base = IOMEM(MX27_SYSCTRL_BASE_ADDR);
 	enum bootsource src;
 	uint32_t val;
 
@@ -136,8 +142,9 @@ void imx27_boot_save_loc(void __iomem *sysctrl_base)
 #define IMX51_SBMR_BT_MEM_CTL_SHIFT	0
 #define IMX51_SBMR_BMOD_SHIFT		14
 
-void imx51_boot_save_loc(void __iomem *src_base)
+void imx51_boot_save_loc(void)
 {
+	void __iomem *src_base = IOMEM(MX51_SRC_BASE_ADDR);
 	enum bootsource src = BOOTSOURCE_UNKNOWN;
 	uint32_t reg;
 	unsigned int ctrl, type;
@@ -167,8 +174,9 @@ void imx51_boot_save_loc(void __iomem *src_base)
 }
 
 #define IMX53_SRC_SBMR	0x4
-void imx53_boot_save_loc(void __iomem *src_base)
+void imx53_boot_save_loc(void)
 {
+	void __iomem *src_base = IOMEM(MX53_SRC_BASE_ADDR);
 	enum bootsource src = BOOTSOURCE_UNKNOWN;
 	int instance;
 	uint32_t cfg1 = readl(src_base + IMX53_SRC_SBMR);
@@ -278,7 +286,7 @@ internal_boot:
 	return;
 }
 
-void imx6_boot_save_loc(void __iomem *src_base)
+void imx6_boot_save_loc(void)
 {
 	enum bootsource src = BOOTSOURCE_UNKNOWN;
 	int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
diff --git a/arch/arm/mach-imx/imx25.c b/arch/arm/mach-imx/imx25.c
index 3cfeebb..a374a31 100644
--- a/arch/arm/mach-imx/imx25.c
+++ b/arch/arm/mach-imx/imx25.c
@@ -60,7 +60,7 @@ int imx25_init(void)
 {
 	int val;
 
-	imx25_boot_save_loc((void *)MX25_CCM_BASE_ADDR);
+	imx25_boot_save_loc();
 	add_generic_device("imx25-esdctl", 0, NULL, MX25_ESDCTL_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 
 	/*
diff --git a/arch/arm/mach-imx/imx27.c b/arch/arm/mach-imx/imx27.c
index b99a4ea..81b9f53 100644
--- a/arch/arm/mach-imx/imx27.c
+++ b/arch/arm/mach-imx/imx27.c
@@ -100,7 +100,7 @@ static void imx27_init_max(void)
 int imx27_init(void)
 {
 	imx27_silicon_revision();
-	imx27_boot_save_loc((void *)MX27_SYSCTRL_BASE_ADDR);
+	imx27_boot_save_loc();
 	add_generic_device("imx27-esdctl", DEVICE_ID_SINGLE, NULL,
 			   MX27_ESDCTL_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 
diff --git a/arch/arm/mach-imx/imx35.c b/arch/arm/mach-imx/imx35.c
index 3e1aa97..d37bdfd 100644
--- a/arch/arm/mach-imx/imx35.c
+++ b/arch/arm/mach-imx/imx35.c
@@ -55,7 +55,7 @@ int imx35_init(void)
 
 	imx35_silicon_revision();
 
-	imx35_boot_save_loc((void *)MX35_CCM_BASE_ADDR);
+	imx35_boot_save_loc();
 	add_generic_device("imx35-esdctl", 0, NULL, MX35_ESDCTL_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 
 	return 0;
diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
index a6784d0..ffe6a7c 100644
--- a/arch/arm/mach-imx/imx51.c
+++ b/arch/arm/mach-imx/imx51.c
@@ -58,7 +58,7 @@ static void imx51_ipu_mipi_setup(void)
 int imx51_init(void)
 {
 	imx_set_silicon_revision("i.MX51", imx51_silicon_revision());
-	imx51_boot_save_loc((void *)MX51_SRC_BASE_ADDR);
+	imx51_boot_save_loc();
 	add_generic_device("imx51-esdctl", 0, NULL, MX51_ESDCTL_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	imx51_ipu_mipi_setup();
 
diff --git a/arch/arm/mach-imx/imx53.c b/arch/arm/mach-imx/imx53.c
index 872d293..2758f1b 100644
--- a/arch/arm/mach-imx/imx53.c
+++ b/arch/arm/mach-imx/imx53.c
@@ -53,7 +53,7 @@ static int imx53_silicon_revision(void)
 int imx53_init(void)
 {
 	imx53_silicon_revision();
-	imx53_boot_save_loc((void *)MX53_SRC_BASE_ADDR);
+	imx53_boot_save_loc();
 	add_generic_device("imx53-esdctl", 0, NULL, MX53_ESDCTL_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 
 	return 0;
diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index ba8fb89..c23cc54 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -120,7 +120,7 @@ int imx6_init(void)
 
 	imx6_init_lowlevel();
 
-	imx6_boot_save_loc((void *)MX6_SRC_BASE_ADDR);
+	imx6_boot_save_loc();
 
 	rev = readl(MX6_ANATOP_BASE_ADDR + SI_REV);
 
diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index 46fe388..3b25ecb 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -7,12 +7,12 @@
 
 u64 imx_uid(void);
 
-void imx25_boot_save_loc(void __iomem *ccm_base);
-void imx35_boot_save_loc(void __iomem *ccm_base);
-void imx27_boot_save_loc(void __iomem *sysctrl_base);
-void imx51_boot_save_loc(void __iomem *src_base);
-void imx53_boot_save_loc(void __iomem *src_base);
-void imx6_boot_save_loc(void __iomem *src_base);
+void imx25_boot_save_loc(void);
+void imx35_boot_save_loc(void);
+void imx27_boot_save_loc(void);
+void imx51_boot_save_loc(void);
+void imx53_boot_save_loc(void);
+void imx6_boot_save_loc(void);
 void imx6_get_boot_source(enum bootsource *src, int *instance);
 
 int imx1_init(void);
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
