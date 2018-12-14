Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXoHt-0000Aa-Jw
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 14:18:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Dec 2018 15:17:27 +0100
Message-Id: <20181214141730.26181-21-s.hauer@pengutronix.de>
In-Reply-To: <20181214141730.26181-1-s.hauer@pengutronix.de>
References: <20181214141730.26181-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 20/23] ARM: omap: Add emif4 support for AM3517
To: Barebox List <barebox@lists.infradead.org>

This adds support for the SDRAM controller found on AM3517.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/Makefile             |   2 +-
 arch/arm/mach-omap/am35xx_emif4.c       |  85 +++++++++++++++++++
 arch/arm/mach-omap/include/mach/emif4.h | 105 ++++++++++++++++++++++++
 3 files changed, 191 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-omap/am35xx_emif4.c
 create mode 100644 arch/arm/mach-omap/include/mach/emif4.h

diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index 901cc90373..36b2aa090e 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -22,7 +22,7 @@ pbl-$(CONFIG_ARCH_OMAP3) += omap3_generic.o auxcr.o
 obj-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
 pbl-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
 obj-pbl-$(CONFIG_ARCH_AM33XX) += am33xx_generic.o am33xx_clock.o am33xx_mux.o am3xxx.o
-obj-pbl-$(CONFIG_ARCH_AM35XX) += am3xxx.o
+obj-pbl-$(CONFIG_ARCH_AM35XX) += am3xxx.o am35xx_emif4.o
 obj-$(CONFIG_ARCH_AM33XX) += am33xx_scrm.o
 obj-$(CONFIG_ARCH_OMAP3) += omap3_clock.o
 pbl-$(CONFIG_ARCH_OMAP3) += omap3_clock.o
diff --git a/arch/arm/mach-omap/am35xx_emif4.c b/arch/arm/mach-omap/am35xx_emif4.c
new file mode 100644
index 0000000000..38fc0f02d2
--- /dev/null
+++ b/arch/arm/mach-omap/am35xx_emif4.c
@@ -0,0 +1,85 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Author :
+ *     Vaibhav Hiremath <hvaibhav@ti.com>
+ *
+ * Based on mem.c and sdrc.c
+ *
+ * Copyright (C) 2010
+ * Texas Instruments Incorporated - http://www.ti.com/
+ */
+
+#include <common.h>
+#include <io.h>
+#include <mach/emif4.h>
+#include <mach/omap3-silicon.h>
+
+/*
+ * do_pac200_emif4_init -
+ *  - Init the emif4 module for DDR access
+ *  - Early init routines, called from flash or SRAM.
+ */
+void am35xx_emif4_init(void)
+{
+	unsigned int regval;
+	struct emif4 *emif4_base = IOMEM(OMAP3_SDRC_BASE);
+
+	/* Set the DDR PHY parameters in PHY ctrl registers */
+	regval = (EMIF4_DDR1_READ_LAT | EMIF4_DDR1_PWRDN_DIS |
+		EMIF4_DDR1_EXT_STRB_DIS);
+	writel(regval, &emif4_base->ddr_phyctrl1);
+	writel(regval, &emif4_base->ddr_phyctrl1_shdw);
+	writel(0, &emif4_base->ddr_phyctrl2);
+
+	/* Reset the DDR PHY and wait till completed */
+	regval = readl(&emif4_base->sdram_iodft_tlgc);
+	regval |= (1 << 10);
+	writel(regval, &emif4_base->sdram_iodft_tlgc);
+
+	/* Wait till that bit clears*/
+	while ((readl(&emif4_base->sdram_iodft_tlgc) & (1 << 10)) == 0x1);
+
+	/* Re-verify the DDR PHY status*/
+	while ((readl(&emif4_base->sdram_sts) & (1 << 2)) == 0x0);
+
+	regval |= (1 << 0);
+	writel(regval, &emif4_base->sdram_iodft_tlgc);
+
+	/* Set SDR timing registers */
+	regval = (EMIF4_TIM1_T_WTR | EMIF4_TIM1_T_RRD |
+		EMIF4_TIM1_T_RC | EMIF4_TIM1_T_RAS |
+		EMIF4_TIM1_T_WR | EMIF4_TIM1_T_RCD |
+		EMIF4_TIM1_T_RP);
+	writel(regval, &emif4_base->sdram_time1);
+	writel(regval, &emif4_base->sdram_time1_shdw);
+
+	regval = (EMIF4_TIM2_T_CKE | EMIF4_TIM2_T_RTP |
+		EMIF4_TIM2_T_XSRD | EMIF4_TIM2_T_XSNR |
+		EMIF4_TIM2_T_ODT | EMIF4_TIM2_T_XP);
+	writel(regval, &emif4_base->sdram_time2);
+	writel(regval, &emif4_base->sdram_time2_shdw);
+
+	regval = (EMIF4_TIM3_T_RAS_MAX | EMIF4_TIM3_T_RFC);
+	writel(regval, &emif4_base->sdram_time3);
+	writel(regval, &emif4_base->sdram_time3_shdw);
+
+	/* Set the PWR control register */
+	regval = (EMIF4_PWR_PM_TIM | EMIF4_PWR_LP_MODE |
+		EMIF4_PWR_DPD_DIS | EMIF4_PWR_IDLE_MODE);
+	writel(regval, &emif4_base->sdram_pwr_mgmt);
+	writel(regval, &emif4_base->sdram_pwr_mgmt_shdw);
+
+	/* Set the DDR refresh rate control register */
+	regval = (EMIF4_REFRESH_RATE | EMIF4_INITREF_DIS);
+	writel(regval, &emif4_base->sdram_refresh_ctrl);
+	writel(regval, &emif4_base->sdram_refresh_ctrl_shdw);
+
+	/* set the SDRAM configuration register */
+	regval = (EMIF4_CFG_PGSIZE | EMIF4_CFG_EBANK |
+		EMIF4_CFG_IBANK | EMIF4_CFG_ROWSIZE |
+		EMIF4_CFG_CL | EMIF4_CFG_NARROW_MD |
+		EMIF4_CFG_SDR_DRV | EMIF4_CFG_DDR_DIS_DLL |
+		EMIF4_CFG_DDR2_DDQS | EMIF4_CFG_DDR_TERM |
+		EMIF4_CFG_IBANK_POS | EMIF4_CFG_SDRAM_TYP);
+	writel(regval, &emif4_base->sdram_config);
+}
diff --git a/arch/arm/mach-omap/include/mach/emif4.h b/arch/arm/mach-omap/include/mach/emif4.h
new file mode 100644
index 0000000000..1f9c2938a1
--- /dev/null
+++ b/arch/arm/mach-omap/include/mach/emif4.h
@@ -0,0 +1,105 @@
+/*
+ * Auther:
+ *       Vaibhav Hiremath <hvaibhav@ti.com>
+ *
+ * Copyright (C) 2010
+ * Texas Instruments Incorporated - http://www.ti.com/
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#ifndef _EMIF_H_
+#define _EMIF_H_
+
+/*
+ * Configuration values
+ */
+#define EMIF4_TIM1_T_RP		(0x3 << 25)
+#define EMIF4_TIM1_T_RCD	(0x3 << 21)
+#define EMIF4_TIM1_T_WR		(0x3 << 17)
+#define EMIF4_TIM1_T_RAS	(0x7 << 12) /* 8->7 */
+#define EMIF4_TIM1_T_RC		(0xA << 6)
+#define EMIF4_TIM1_T_RRD	(0x2 << 3)
+#define EMIF4_TIM1_T_WTR	(0x2)
+
+#define EMIF4_TIM2_T_XP		(0x2 << 28)
+#define EMIF4_TIM2_T_ODT	(0x0 << 25) /* 2? */
+#define EMIF4_TIM2_T_XSNR	(0x1C << 16)
+#define EMIF4_TIM2_T_XSRD	(0xC8 << 6)
+#define EMIF4_TIM2_T_RTP	(0x1 << 3)
+#define EMIF4_TIM2_T_CKE	(0x2)
+
+#define EMIF4_TIM3_T_RFC	(0x15 << 4) /* 25->15 */
+#define EMIF4_TIM3_T_RAS_MAX	(0xf)	    /* 7->f */
+
+#define EMIF4_PWR_IDLE_MODE	(0x2 << 30)
+#define EMIF4_PWR_DPD_DIS	(0x0 << 10)
+#define EMIF4_PWR_DPD_EN	(0x1 << 10)
+#define EMIF4_PWR_LP_MODE	(0x0 << 8)
+#define EMIF4_PWR_PM_TIM	(0x0)
+
+#define EMIF4_INITREF_DIS	(0x0 << 31)
+#define EMIF4_REFRESH_RATE	(0x257) /* 50f->257 */
+
+#define EMIF4_CFG_SDRAM_TYP	(0x2 << 29)
+#define EMIF4_CFG_IBANK_POS	(0x0 << 27)
+#define EMIF4_CFG_DDR_TERM	(0x3 << 24) /* --> 0x3 */
+#define EMIF4_CFG_DDR2_DDQS	(0x1 << 23)
+#define EMIF4_CFG_DDR_DIS_DLL	(0x0 << 20)
+#define EMIF4_CFG_SDR_DRV	(0x0 << 18)
+#define EMIF4_CFG_NARROW_MD	(0x0 << 14)
+#define EMIF4_CFG_CL		(0x5 << 10)
+#define EMIF4_CFG_ROWSIZE	(0x0 << 7) /* --> 0x4: a0..a12 */
+#define EMIF4_CFG_IBANK		(0x3 << 4)
+#define EMIF4_CFG_EBANK		(0x0 << 3)
+#define EMIF4_CFG_PGSIZE	(0x2)      /* 10 columns */
+
+/*
+ * EMIF4 PHY Control 1 register configuration
+ */
+#define EMIF4_DDR1_EXT_STRB_EN	(0x1 << 7)
+#define EMIF4_DDR1_EXT_STRB_DIS	(0x0 << 7)
+#define EMIF4_DDR1_PWRDN_DIS	(0x0 << 6)
+#define EMIF4_DDR1_PWRDN_EN	(0x1 << 6)
+#define EMIF4_DDR1_READ_LAT	(0x6 << 0)
+
+struct emif4 {
+	unsigned int emif_mod_id_rev;
+	unsigned int sdram_sts;
+	unsigned int sdram_config;
+	unsigned int res1;
+	unsigned int sdram_refresh_ctrl;
+	unsigned int sdram_refresh_ctrl_shdw;
+	unsigned int sdram_time1;
+	unsigned int sdram_time1_shdw;
+	unsigned int sdram_time2;
+	unsigned int sdram_time2_shdw;
+	unsigned int sdram_time3;
+	unsigned int sdram_time3_shdw;
+	unsigned char res2[8];
+	unsigned int sdram_pwr_mgmt;
+	unsigned int sdram_pwr_mgmt_shdw;
+	unsigned char res3[32];
+	unsigned int sdram_iodft_tlgc;
+	unsigned char res4[128];
+	unsigned int ddr_phyctrl1;
+	unsigned int ddr_phyctrl1_shdw;
+	unsigned int ddr_phyctrl2;
+};
+
+void am35xx_emif4_init(void);
+
+#endif /* endif _EMIF_H_ */
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
