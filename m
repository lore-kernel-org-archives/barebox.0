Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bk6Fy-0006sd-Cn
 for barebox@lists.infradead.org; Wed, 14 Sep 2016 09:13:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Sep 2016 11:12:42 +0200
Message-Id: <1473844368-13030-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1473844368-13030-1-git-send-email-s.hauer@pengutronix.de>
References: <1473844368-13030-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/12] ARM: i.MX: Provide bootsource functions for early boot
 code
To: Barebox List <barebox@lists.infradead.org>

The regular bootsource functions only work in a running barebox,
provide functions for early code. This has already been done for
i.MX6, this patch adds the same functions for the other SoCs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/boot.c                 | 90 ++++++++++++++++++++++++--------
 arch/arm/mach-imx/include/mach/generic.h |  5 ++
 2 files changed, 72 insertions(+), 23 deletions(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index f6c546d..c72ec61 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -78,7 +78,7 @@ static void imx25_35_boot_save_loc(unsigned int ctrl, unsigned int type)
 	bootsource_set(src);
 }
 
-void imx25_boot_save_loc(void)
+void imx25_get_boot_source(enum bootsource *src, int *instance)
 {
 	void __iomem *ccm_base = IOMEM(MX25_CCM_BASE_ADDR);
 	uint32_t val;
@@ -88,7 +88,18 @@ void imx25_boot_save_loc(void)
 			       (val >> MX25_CCM_RCSR_MEM_TYPE_SHIFT) & 0x3);
 }
 
-void imx35_boot_save_loc(void)
+void imx25_boot_save_loc(void)
+{
+	enum bootsource src = BOOTSOURCE_UNKNOWN;
+	int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
+
+	imx25_get_boot_source(&src, &instance);
+
+	bootsource_set(src);
+	bootsource_set_instance(instance);
+}
+
+void imx35_get_boot_source(enum bootsource *src, int *instance)
 {
 	void __iomem *ccm_base = IOMEM(MX35_CCM_BASE_ADDR);
 	uint32_t val;
@@ -98,6 +109,17 @@ void imx35_boot_save_loc(void)
 			       (val >> MX35_CCM_RCSR_MEM_TYPE_SHIFT) & 0x3);
 }
 
+void imx35_boot_save_loc(void)
+{
+	enum bootsource src = BOOTSOURCE_UNKNOWN;
+	int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
+
+	imx35_get_boot_source(&src, &instance);
+
+	bootsource_set(src);
+	bootsource_set_instance(instance);
+}
+
 #define IMX27_SYSCTRL_GPCR	0x18
 #define IMX27_GPCR_BOOT_SHIFT			16
 #define IMX27_GPCR_BOOT_MASK			(0xf << IMX27_GPCR_BOOT_SHIFT)
@@ -109,10 +131,9 @@ void imx35_boot_save_loc(void)
 #define IMX27_GPCR_BOOT_32BIT_CS0		6
 #define IMX27_GPCR_BOOT_8BIT_NAND_512		7
 
-void imx27_boot_save_loc(void)
+void imx27_get_boot_source(enum bootsource *src, int *instance)
 {
 	void __iomem *sysctrl_base = IOMEM(MX27_SYSCTRL_BASE_ADDR);
-	enum bootsource src;
 	uint32_t val;
 
 	val = readl(sysctrl_base + IMX27_SYSCTRL_GPCR);
@@ -121,20 +142,29 @@ void imx27_boot_save_loc(void)
 
 	switch (val) {
 	case IMX27_GPCR_BOOT_UART_USB:
-		src = BOOTSOURCE_SERIAL;
+		*src = BOOTSOURCE_SERIAL;
 		break;
 	case IMX27_GPCR_BOOT_8BIT_NAND_2k:
 	case IMX27_GPCR_BOOT_16BIT_NAND_2k:
 	case IMX27_GPCR_BOOT_16BIT_NAND_512:
 	case IMX27_GPCR_BOOT_8BIT_NAND_512:
-		src = BOOTSOURCE_NAND;
+		*src = BOOTSOURCE_NAND;
 		break;
 	default:
-		src = BOOTSOURCE_NOR;
+		*src = BOOTSOURCE_NOR;
 		break;
 	}
+}
+
+void imx27_boot_save_loc(void)
+{
+	enum bootsource src = BOOTSOURCE_UNKNOWN;
+	int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
+
+	imx27_get_boot_source(&src, &instance);
 
 	bootsource_set(src);
+	bootsource_set_instance(instance);
 }
 
 #define IMX51_SRC_SBMR			0x4
@@ -142,10 +172,9 @@ void imx27_boot_save_loc(void)
 #define IMX51_SBMR_BT_MEM_CTL_SHIFT	0
 #define IMX51_SBMR_BMOD_SHIFT		14
 
-void imx51_boot_save_loc(void)
+void imx51_get_boot_source(enum bootsource *src, int *instance)
 {
 	void __iomem *src_base = IOMEM(MX51_SRC_BASE_ADDR);
-	enum bootsource src = BOOTSOURCE_UNKNOWN;
 	uint32_t reg;
 	unsigned int ctrl, type;
 
@@ -158,63 +187,78 @@ void imx51_boot_save_loc(void)
 		ctrl = (reg >> IMX51_SBMR_BT_MEM_CTL_SHIFT) & 0x3;
 		type = (reg >> IMX51_SBMR_BT_MEM_TYPE_SHIFT) & 0x3;
 
-		src = locations[ctrl][type];
+		*src = locations[ctrl][type];
 		break;
 	case 1:
 		/* reserved */
-		src = BOOTSOURCE_UNKNOWN;
+		*src = BOOTSOURCE_UNKNOWN;
 		break;
 	case 3:
-		src = BOOTSOURCE_SERIAL;
+		*src = BOOTSOURCE_SERIAL;
 		break;
 
 	}
+}
+
+void imx51_boot_save_loc(void)
+{
+	enum bootsource src = BOOTSOURCE_UNKNOWN;
+	int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
+
+	imx51_get_boot_source(&src, &instance);
 
 	bootsource_set(src);
+	bootsource_set_instance(instance);
 }
 
 #define IMX53_SRC_SBMR	0x4
-void imx53_boot_save_loc(void)
+void imx53_get_boot_source(enum bootsource *src, int *instance)
 {
 	void __iomem *src_base = IOMEM(MX53_SRC_BASE_ADDR);
-	enum bootsource src = BOOTSOURCE_UNKNOWN;
-	int instance;
 	uint32_t cfg1 = readl(src_base + IMX53_SRC_SBMR);
 
 	switch ((cfg1 & 0xff) >> 4) {
 	case 2:
-		src = BOOTSOURCE_HD;
+		*src = BOOTSOURCE_HD;
 		break;
 	case 3:
 		if (cfg1 & (1 << 3))
-			src = BOOTSOURCE_SPI;
+			*src = BOOTSOURCE_SPI;
 		else
-			src = BOOTSOURCE_I2C;
+			*src = BOOTSOURCE_I2C;
 		break;
 	case 4:
 	case 5:
 	case 6:
 	case 7:
-		src = BOOTSOURCE_MMC;
+		*src = BOOTSOURCE_MMC;
 		break;
 	default:
 		break;
 	}
 
 	if (cfg1 & (1 << 7))
-		src = BOOTSOURCE_NAND;
+		*src = BOOTSOURCE_NAND;
 
 
-	switch (src) {
+	switch (*src) {
 	case BOOTSOURCE_MMC:
 	case BOOTSOURCE_SPI:
 	case BOOTSOURCE_I2C:
-		instance = (cfg1 >> 20) & 0x3;
+		*instance = (cfg1 >> 20) & 0x3;
 		break;
 	default:
-		instance = 0;
+		*instance = 0;
 		break;
 	}
+}
+
+void imx53_boot_save_loc(void)
+{
+	enum bootsource src = BOOTSOURCE_UNKNOWN;
+	int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
+
+	imx53_get_boot_source(&src, &instance);
 
 	bootsource_set(src);
 	bootsource_set_instance(instance);
diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index 9279bef..7c275df 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -14,6 +14,11 @@ void imx27_boot_save_loc(void);
 void imx51_boot_save_loc(void);
 void imx53_boot_save_loc(void);
 void imx6_boot_save_loc(void);
+
+void imx25_get_boot_source(enum bootsource *src, int *instance);
+void imx35_get_boot_source(enum bootsource *src, int *instance);
+void imx51_get_boot_source(enum bootsource *src, int *instance);
+void imx53_get_boot_source(enum bootsource *src, int *instance);
 void imx6_get_boot_source(enum bootsource *src, int *instance);
 
 int imx1_init(void);
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
