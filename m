Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Te9MV-0008C2-RI
 for barebox@lists.infradead.org; Thu, 29 Nov 2012 19:01:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 29 Nov 2012 20:01:24 +0100
Message-Id: <1354215684-25235-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1354215684-25235-1-git-send-email-s.hauer@pengutronix.de>
References: <1354215684-25235-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] ARM i.MX6: save boot location
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/boot.c                 |   60 ++++++++++++++++++++++++++++++
 arch/arm/mach-imx/imx6.c                 |    3 ++
 arch/arm/mach-imx/include/mach/generic.h |    1 +
 3 files changed, 64 insertions(+)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index ae7c48b..8c7f8ee 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -218,3 +218,63 @@ int imx53_boot_save_loc(void __iomem *src_base)
 
 	return 0;
 }
+
+#define IMX6_SRC_SBMR1	0x04
+#define IMX6_SRC_SBMR2	0x1c
+
+int imx6_boot_save_loc(void __iomem *src_base)
+{
+	enum imx_bootsource src = bootsource_unknown;
+	uint32_t sbmr2 = readl(src_base + IMX6_SRC_SBMR2) >> 24;
+	uint32_t cfg1 = readl(src_base + IMX6_SRC_SBMR1) & 0xff;
+	uint32_t boot_cfg_4_2_0;
+	int boot_mode;
+
+	boot_mode = (sbmr2 >> 24) & 0x3;
+
+	switch (boot_mode) {
+	case 0: /* Fuses, fall through */
+	case 2: /* internal boot */
+		goto internal_boot;
+	case 1: /* Serial Downloader */
+		src = bootsource_serial;
+		break;
+	case 3: /* reserved */
+		break;
+	};
+
+	imx_set_bootsource(src);
+
+	return 0;
+
+internal_boot:
+
+	switch (cfg1 >> 4) {
+	case 2:
+		src = bootsource_hd;
+		break;
+	case 3:
+		boot_cfg_4_2_0 = (cfg1 >> 16) & 0x7;
+
+		if (boot_cfg_4_2_0 > 4)
+			src = bootsource_i2c;
+		else
+			src = bootsource_spi;
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
diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index c9eec5a..37ee5d8 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -15,6 +15,7 @@
 #include <common.h>
 #include <io.h>
 #include <sizes.h>
+#include <mach/generic.h>
 #include <mach/imx6-regs.h>
 
 void imx6_init_lowlevel(void)
@@ -54,6 +55,8 @@ void imx6_init_lowlevel(void)
 
 static int imx6_init(void)
 {
+	imx6_boot_save_loc((void *)MX6_SRC_BASE_ADDR);
+
 	add_generic_device("imx-iomuxv3", 0, NULL, MX6_IOMUXC_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx6-ccm", 0, NULL, MX6_CCM_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpt", 0, NULL, 0x02098000, 0x1000, IORESOURCE_MEM, NULL);
diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index 39bb7e3..5e600a3 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -20,6 +20,7 @@ int imx_25_35_boot_save_loc(unsigned int ctrl, unsigned int type);
 void imx_27_boot_save_loc(void __iomem *sysctrl_base);
 int imx51_boot_save_loc(void __iomem *src_base);
 int imx53_boot_save_loc(void __iomem *src_base);
+int imx6_boot_save_loc(void __iomem *src_base);
 
 /* There's a off-by-one betweem the gpio bank number and the gpiochip */
 /* range e.g. GPIO_1_5 is gpio 5 under linux */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
