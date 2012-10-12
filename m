Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMiTp-0002An-4E
 for barebox@lists.infradead.org; Fri, 12 Oct 2012 16:52:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Oct 2012 18:52:53 +0200
Message-Id: <1350060774-24779-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1350060774-24779-1-git-send-email-s.hauer@pengutronix.de>
References: <1350060774-24779-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] ARM i.MX53: set bootsource location
To: barebox@lists.infradead.org

To be able to set the environment location based on the
bootsource.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/boot.c                 |   35 ++++++++++++++++++++++++++++++
 arch/arm/mach-imx/imx53.c                |    2 ++
 arch/arm/mach-imx/include/mach/generic.h |    2 ++
 3 files changed, 39 insertions(+)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 409c237..cdddbe5 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -28,6 +28,7 @@ static const char *bootsource_str[] = {
 	[bootsource_spi] = "spi",
 	[bootsource_serial] = "serial",
 	[bootsource_onenand] = "onenand",
+	[bootsource_hd] = "harddisk",
 };
 
 static enum imx_bootsource bootsource;
@@ -183,3 +184,37 @@ int imx51_boot_save_loc(void __iomem *src_base)
 
 	return 0;
 }
+
+#define IMX53_SRC_SBMR	0x4
+int imx53_boot_save_loc(void __iomem *src_base)
+{
+	enum imx_bootsource src = bootsource_unknown;
+	uint32_t cfg1 = readl(src_base + IMX53_SRC_SBMR) & 0xff;
+
+	switch (cfg1 >> 4) {
+	case 2:
+		src = bootsource_hd;
+		break;
+	case 3:
+		if (cfg1 & (1 << 3))
+			src = bootsource_spi;
+		else
+			src = bootsource_i2c;
+		break;
+	case 4:
+	case 5:
+	case 6:
+	case 7:
+		src = bootsource_mmc;
+		break;
+	default:
+		break;
+	}
+
+	if (cfg1 & (1 << 7))
+		src = bootsource_nand;
+
+	imx_set_bootsource(src);
+
+	return 0;
+}
diff --git a/arch/arm/mach-imx/imx53.c b/arch/arm/mach-imx/imx53.c
index cac7b74..e424e7d 100644
--- a/arch/arm/mach-imx/imx53.c
+++ b/arch/arm/mach-imx/imx53.c
@@ -20,6 +20,7 @@
 #include <mach/imx53-regs.h>
 #include <mach/revision.h>
 #include <mach/clock-imx51_53.h>
+#include <mach/generic.h>
 
 #define SI_REV 0x48
 
@@ -52,6 +53,7 @@ static int imx53_silicon_revision(void)
 static int imx53_init(void)
 {
 	imx53_silicon_revision();
+	imx53_boot_save_loc((void *)MX53_SRC_BASE_ADDR);
 
 	add_generic_device("imx_iim", 0, NULL, MX53_IIM_BASE_ADDR, SZ_4K,
 			IORESOURCE_MEM, NULL);
diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index 86966e4..39bb7e3 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -10,6 +10,7 @@ enum imx_bootsource {
 	bootsource_spi,
 	bootsource_serial,
 	bootsource_onenand,
+	bootsource_hd,
 };
 
 enum imx_bootsource imx_bootsource(void);
@@ -18,6 +19,7 @@ void imx_set_bootsource(enum imx_bootsource src);
 int imx_25_35_boot_save_loc(unsigned int ctrl, unsigned int type);
 void imx_27_boot_save_loc(void __iomem *sysctrl_base);
 int imx51_boot_save_loc(void __iomem *src_base);
+int imx53_boot_save_loc(void __iomem *src_base);
 
 /* There's a off-by-one betweem the gpio bank number and the gpiochip */
 /* range e.g. GPIO_1_5 is gpio 5 under linux */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
