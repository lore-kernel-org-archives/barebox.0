Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P5GYR-0003GE-5p
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 11:33:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Oct 2010 13:28:24 +0200
Message-Id: <1286796505-16049-17-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1286796505-16049-1-git-send-email-s.hauer@pengutronix.de>
References: <1286796505-16049-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 16/17] ARM i.MX: Add basic i.MX51 support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig                    |   17 +-
 arch/arm/mach-imx/Makefile                   |    1 +
 arch/arm/mach-imx/imx51.c                    |   51 ++
 arch/arm/mach-imx/include/mach/clock-imx51.h |  696 ++++++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/generic.h     |    6 +
 arch/arm/mach-imx/include/mach/imx-regs.h    |    2 +
 arch/arm/mach-imx/include/mach/imx51-regs.h  |  131 +++++
 arch/arm/mach-imx/include/mach/iomux-mx51.h  |  330 ++++++++++++
 arch/arm/mach-imx/include/mach/iomux-v3.h    |   10 +-
 arch/arm/mach-imx/speed-imx51.c              |  163 ++++++
 include/asm-generic/barebox.lds.h            |    2 +-
 11 files changed, 1404 insertions(+), 5 deletions(-)
 create mode 100644 arch/arm/mach-imx/include/mach/clock-imx51.h
 create mode 100644 arch/arm/mach-imx/include/mach/imx51-regs.h
 create mode 100644 arch/arm/mach-imx/include/mach/iomux-mx51.h
 create mode 100644 arch/arm/mach-imx/speed-imx51.c

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 4f95393..f143e60 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -38,7 +38,7 @@ config ARCH_HAS_FEC_IMX
 
 config ARCH_IMX_INTERNAL_BOOT
 	bool "support internal boot mode"
-	depends on ARCH_IMX25 || ARCH_IMX35
+	depends on ARCH_IMX25 || ARCH_IMX35 || ARCH_IMX51
 
 choice
 	depends on ARCH_IMX_INTERNAL_BOOT
@@ -94,6 +94,11 @@ config ARCH_IMX35
 	select CPU_V6
 	select ARCH_HAS_FEC_IMX
 
+config ARCH_IMX51
+	bool "i.MX51"
+	select CPU_V7
+	select ARCH_HAS_FEC_IMX
+
 endchoice
 
 # ----------------------------------------------------------
@@ -298,6 +303,16 @@ endif
 
 # ----------------------------------------------------------
 
+if ARCH_IMX51
+
+choice
+
+	prompt "i.MX51 Board Type"
+
+endchoice
+
+endif
+
 menu "Board specific settings       "
 
 if MACH_PCM043
diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index de62f7e..ce38566 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -5,6 +5,7 @@ obj-$(CONFIG_ARCH_IMX21) += speed-imx21.o imx21.o iomux-v1.o
 obj-$(CONFIG_ARCH_IMX27) += speed-imx27.o imx27.o iomux-v1.o
 obj-$(CONFIG_ARCH_IMX31) += speed-imx31.o imx31.o iomux-v2.o
 obj-$(CONFIG_ARCH_IMX35) += speed-imx35.o imx35.o iomux-v3.o
+obj-$(CONFIG_ARCH_IMX51) += speed-imx51.o imx51.o iomux-v3.o
 obj-$(CONFIG_IMX_CLKO)	+= clko.o
 obj-$(CONFIG_IMX_IIM)	+= iim.o
 obj-$(CONFIG_NAND_IMX) += nand.o
diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
index 8c4fc11..075ed22 100644
--- a/arch/arm/mach-imx/imx51.c
+++ b/arch/arm/mach-imx/imx51.c
@@ -15,7 +15,10 @@
  * MA 02111-1307 USA
  */
 
+#include <init.h>
 #include <common.h>
+#include <asm/io.h>
+#include <mach/imx51-regs.h>
 
 #include "gpio.h"
 
@@ -28,3 +31,51 @@ void *imx_gpio_base[] = {
 
 int imx_gpio_count = ARRAY_SIZE(imx_gpio_base) * 32;
 
+#define SI_REV 0x48
+
+static u32 mx51_silicon_revision;
+static char *mx51_rev_string = "unknown";
+
+int imx_silicon_revision(void)
+{
+	return mx51_silicon_revision;
+}
+
+static int query_silicon_revision(void)
+{
+	void __iomem *rom = MX51_IROM_BASE_ADDR;
+	u32 rev;
+
+	rev = readl(rom + SI_REV);
+	switch (rev) {
+	case 0x1:
+		mx51_silicon_revision = MX51_CHIP_REV_1_0;
+		mx51_rev_string = "1.0";
+		break;
+	case 0x2:
+		mx51_silicon_revision = MX51_CHIP_REV_1_1;
+		mx51_rev_string = "1.1";
+		break;
+	case 0x10:
+		mx51_silicon_revision = MX51_CHIP_REV_2_0;
+		mx51_rev_string = "2.0";
+		break;
+	case 0x20:
+		mx51_silicon_revision = MX51_CHIP_REV_3_0;
+		mx51_rev_string = "3.0";
+		break;
+	default:
+		mx51_silicon_revision = 0;
+	}
+
+	return 0;
+}
+core_initcall(query_silicon_revision);
+
+static int imx51_print_silicon_rev(void)
+{
+	printf("detected i.MX51 rev %s\n", mx51_rev_string);
+
+	return 0;
+}
+device_initcall(imx51_print_silicon_rev);
diff --git a/arch/arm/mach-imx/include/mach/clock-imx51.h b/arch/arm/mach-imx/include/mach/clock-imx51.h
new file mode 100644
index 0000000..0dee7c3
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/clock-imx51.h
@@ -0,0 +1,696 @@
+/*
+ * Copyright 2008-2009 Freescale Semiconductor, Inc. All Rights Reserved.
+ */
+
+/*
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+#ifndef __ARCH_ARM_MACH_MX51_CRM_REGS_H__
+#define __ARCH_ARM_MACH_MX51_CRM_REGS_H__
+
+/* PLL Register Offsets */
+#define MX51_PLL_DP_CTL			0x00
+#define MX51_PLL_DP_CONFIG		0x04
+#define MX51_PLL_DP_OP			0x08
+#define MX51_PLL_DP_MFD			0x0C
+#define MX51_PLL_DP_MFN			0x10
+#define MX51_PLL_DP_MFNMINUS		0x14
+#define MX51_PLL_DP_MFNPLUS		0x18
+#define MX51_PLL_DP_HFS_OP		0x1C
+#define MX51_PLL_DP_HFS_MFD		0x20
+#define MX51_PLL_DP_HFS_MFN		0x24
+#define MX51_PLL_DP_MFN_TOGC		0x28
+#define MX51_PLL_DP_DESTAT		0x2c
+
+/* PLL Register Bit definitions */
+#define MX51_PLL_DP_CTL_MUL_CTRL		0x2000
+#define MX51_PLL_DP_CTL_DPDCK0_2_EN	0x1000
+#define MX51_PLL_DP_CTL_DPDCK0_2_OFFSET	12
+#define MX51_PLL_DP_CTL_ADE		0x800
+#define MX51_PLL_DP_CTL_REF_CLK_DIV	0x400
+#define MX51_PLL_DP_CTL_REF_CLK_SEL_MASK	(3 << 8)
+#define MX51_PLL_DP_CTL_REF_CLK_SEL_OFFSET	8
+#define MX51_PLL_DP_CTL_HFSM		0x80
+#define MX51_PLL_DP_CTL_PRE		0x40
+#define MX51_PLL_DP_CTL_UPEN		0x20
+#define MX51_PLL_DP_CTL_RST		0x10
+#define MX51_PLL_DP_CTL_RCP		0x8
+#define MX51_PLL_DP_CTL_PLM		0x4
+#define MX51_PLL_DP_CTL_BRM0		0x2
+#define MX51_PLL_DP_CTL_LRF		0x1
+
+#define MX51_PLL_DP_CONFIG_BIST		0x8
+#define MX51_PLL_DP_CONFIG_SJC_CE	0x4
+#define MX51_PLL_DP_CONFIG_AREN		0x2
+#define MX51_PLL_DP_CONFIG_LDREQ		0x1
+
+#define MX51_PLL_DP_OP_MFI_OFFSET	4
+#define MX51_PLL_DP_OP_MFI_MASK		(0xF << 4)
+#define MX51_PLL_DP_OP_PDF_OFFSET	0
+#define MX51_PLL_DP_OP_PDF_MASK		0xF
+
+#define MX51_PLL_DP_MFD_OFFSET		0
+#define MX51_PLL_DP_MFD_MASK		0x07FFFFFF
+
+#define MX51_PLL_DP_MFN_OFFSET		0x0
+#define MX51_PLL_DP_MFN_MASK		0x07FFFFFF
+
+#define MX51_PLL_DP_MFN_TOGC_TOG_DIS	(1 << 17)
+#define MX51_PLL_DP_MFN_TOGC_TOG_EN	(1 << 16)
+#define MX51_PLL_DP_MFN_TOGC_CNT_OFFSET	0x0
+#define MX51_PLL_DP_MFN_TOGC_CNT_MASK	0xFFFF
+
+#define MX51_PLL_DP_DESTAT_TOG_SEL	(1 << 31)
+#define MX51_PLL_DP_DESTAT_MFN		0x07FFFFFF
+
+/* Assuming 24MHz input clock with doubler ON */
+/*                            MFI         PDF */
+#define MX51_PLL_DP_OP_850	((8 << 4) + ((1 - 1)  << 0))
+#define MX51_PLL_DP_MFD_850	(48 - 1)
+#define MX51_PLL_DP_MFN_850	41
+
+#define MX51_PLL_DP_OP_800	((8 << 4) + ((1 - 1)  << 0))
+#define MX51_PLL_DP_MFD_800	(3 - 1)
+#define MX51_PLL_DP_MFN_800	1
+
+#define MX51_PLL_DP_OP_700	((7 << 4) + ((1 - 1)  << 0))
+#define MX51_PLL_DP_MFD_700	(24 - 1)
+#define MX51_PLL_DP_MFN_700	7
+
+#define MX51_PLL_DP_OP_665	((6 << 4) + ((1 - 1)  << 0))
+#define MX51_PLL_DP_MFD_665	(96 - 1)
+#define MX51_PLL_DP_MFN_665	89
+
+#define MX51_PLL_DP_OP_532	((5 << 4) + ((1 - 1)  << 0))
+#define MX51_PLL_DP_MFD_532	(24 - 1)
+#define MX51_PLL_DP_MFN_532	13
+
+#define MX51_PLL_DP_OP_400	((8 << 4) + ((2 - 1)  << 0))
+#define MX51_PLL_DP_MFD_400	(3 - 1)
+#define MX51_PLL_DP_MFN_400	1
+
+#define MX51_PLL_DP_OP_216	((6 << 4) + ((3 - 1)  << 0))
+#define MX51_PLL_DP_MFD_216	(4 - 1)
+#define MX51_PLL_DP_MFN_216	3
+
+/* Register addresses of CCM*/
+#define MX51_CCM_CCR		0x00
+#define MX51_CCM_CCDR		0x04
+#define MX51_CCM_CSR		0x08
+#define MX51_CCM_CCSR		0x0C
+#define MX51_CCM_CACRR		0x10
+#define MX51_CCM_CBCDR		0x14
+#define MX51_CCM_CBCMR		0x18
+#define MX51_CCM_CSCMR1		0x1C
+#define MX51_CCM_CSCMR2		0x20
+#define MX51_CCM_CSCDR1		0x24
+#define MX51_CCM_CS1CDR		0x28
+#define MX51_CCM_CS2CDR		0x2C
+#define MX51_CCM_CDCDR		0x30
+#define MX51_CCM_CHSCDR		0x34
+#define MX51_CCM_CSCDR2		0x38
+#define MX51_CCM_CSCDR3		0x3C
+#define MX51_CCM_CSCDR4		0x40
+#define MX51_CCM_CWDR		0x44
+#define MX51_CCM_CDHIPR		0x48
+#define MX51_CCM_CDCR		0x4C
+#define MX51_CCM_CTOR		0x50
+#define MX51_CCM_CLPCR		0x54
+#define MX51_CCM_CISR		0x58
+#define MX51_CCM_CIMR		0x5C
+#define MX51_CCM_CCOSR		0x60
+#define MX51_CCM_CGPR		0x64
+#define MX51_CCM_CCGR0		0x68
+#define MX51_CCM_CCGR1		0x6C
+#define MX51_CCM_CCGR2		0x70
+#define MX51_CCM_CCGR3		0x74
+#define MX51_CCM_CCGR4		0x78
+#define MX51_CCM_CCGR5		0x7C
+#define MX51_CCM_CCGR6		0x80
+#define MX51_CCM_CMEOR		0x84
+
+/* Define the bits in register CCR */
+#define MX51_CCM_CCR_COSC_EN		(1 << 12)
+#define MX51_CCM_CCR_FPM_MULT_MASK	(1 << 11)
+#define MX51_CCM_CCR_CAMP2_EN		(1 << 10)
+#define MX51_CCM_CCR_CAMP1_EN		(1 << 9)
+#define MX51_CCM_CCR_FPM_EN		(1 << 8)
+#define MX51_CCM_CCR_OSCNT_OFFSET	(0)
+#define MX51_CCM_CCR_OSCNT_MASK	(0xFF)
+
+/* Define the bits in register CCDR */
+#define MX51_CCM_CCDR_HSC_HS_MASK	(0x1 << 18)
+#define MX51_CCM_CCDR_IPU_HS_MASK	(0x1 << 17)
+#define MX51_CCM_CCDR_EMI_HS_MASK	(0x1 << 16)
+
+/* Define the bits in register CSR */
+#define MX51_CCM_CSR_COSR_READY	(1 << 5)
+#define MX51_CCM_CSR_LVS_VALUE		(1 << 4)
+#define MX51_CCM_CSR_CAMP2_READY	(1 << 3)
+#define MX51_CCM_CSR_CAMP1_READY	(1 << 2)
+#define MX51_CCM_CSR_FPM_READY	(1 << 1)
+#define MX51_CCM_CSR_REF_EN_B		(1 << 0)
+
+/* Define the bits in register CCSR */
+#define MX51_CCM_CCSR_LP_APM_SEL		(0x1 << 9)
+#define MX51_CCM_CCSR_STEP_SEL_OFFSET		(7)
+#define MX51_CCM_CCSR_STEP_SEL_MASK		(0x3 << 7)
+#define MX51_CCM_CCSR_PLL2_PODF_OFFSET	(5)
+#define MX51_CCM_CCSR_PLL2_PODF_MASK		(0x3 << 5)
+#define MX51_CCM_CCSR_PLL3_PODF_OFFSET	(3)
+#define MX51_CCM_CCSR_PLL3_PODF_MASK		(0x3 << 3)
+#define MX51_CCM_CCSR_PLL1_SW_CLK_SEL		(1 << 2)
+#define MX51_CCM_CCSR_PLL2_SW_CLK_SEL		(1 << 1)
+#define MX51_CCM_CCSR_PLL3_SW_CLK_SEL		(1 << 0)
+
+/* Define the bits in register CACRR */
+#define MX51_CCM_CACRR_ARM_PODF_OFFSET	(0)
+#define MX51_CCM_CACRR_ARM_PODF_MASK		(0x7)
+
+/* Define the bits in register CBCDR */
+#define MX51_CCM_CBCDR_EMI_CLK_SEL			(0x1 << 26)
+#define MX51_CCM_CBCDR_PERIPH_CLK_SEL			(0x1 << 25)
+#define MX51_CCM_CBCDR_DDR_HF_SEL_OFFSET		(30)
+#define MX51_CCM_CBCDR_DDR_HF_SEL			(0x1 << 30)
+#define MX51_CCM_CBCDR_DDR_PODF_OFFSET		(27)
+#define MX51_CCM_CBCDR_DDR_PODF_MASK			(0x7 << 27)
+#define MX51_CCM_CBCDR_EMI_PODF_OFFSET		(22)
+#define MX51_CCM_CBCDR_EMI_PODF_MASK			(0x7 << 22)
+#define MX51_CCM_CBCDR_AXI_B_PODF_OFFSET		(19)
+#define MX51_CCM_CBCDR_AXI_B_PODF_MASK		(0x7 << 19)
+#define MX51_CCM_CBCDR_AXI_A_PODF_OFFSET		(16)
+#define MX51_CCM_CBCDR_AXI_A_PODF_MASK		(0x7 << 16)
+#define MX51_CCM_CBCDR_NFC_PODF_OFFSET		(13)
+#define MX51_CCM_CBCDR_NFC_PODF_MASK			(0x7 << 13)
+#define MX51_CCM_CBCDR_AHB_PODF_OFFSET		(10)
+#define MX51_CCM_CBCDR_AHB_PODF_MASK			(0x7 << 10)
+#define MX51_CCM_CBCDR_IPG_PODF_OFFSET		(8)
+#define MX51_CCM_CBCDR_IPG_PODF_MASK			(0x3 << 8)
+#define MX51_CCM_CBCDR_PERCLK_PRED1_OFFSET		(6)
+#define MX51_CCM_CBCDR_PERCLK_PRED1_MASK		(0x3 << 6)
+#define MX51_CCM_CBCDR_PERCLK_PRED2_OFFSET		(3)
+#define MX51_CCM_CBCDR_PERCLK_PRED2_MASK		(0x7 << 3)
+#define MX51_CCM_CBCDR_PERCLK_PODF_OFFSET		(0)
+#define MX51_CCM_CBCDR_PERCLK_PODF_MASK		(0x7)
+
+/* Define the bits in register CBCMR */
+#define MX51_CCM_CBCMR_VPU_AXI_CLK_SEL_OFFSET	(14)
+#define MX51_CCM_CBCMR_VPU_AXI_CLK_SEL_MASK		(0x3 << 14)
+#define MX51_CCM_CBCMR_PERIPH_CLK_SEL_OFFSET		(12)
+#define MX51_CCM_CBCMR_PERIPH_CLK_SEL_MASK		(0x3 << 12)
+#define MX51_CCM_CBCMR_DDR_CLK_SEL_OFFSET		(10)
+#define MX51_CCM_CBCMR_DDR_CLK_SEL_MASK		(0x3 << 10)
+#define MX51_CCM_CBCMR_ARM_AXI_CLK_SEL_OFFSET	(8)
+#define MX51_CCM_CBCMR_ARM_AXI_CLK_SEL_MASK		(0x3 << 8)
+#define MX51_CCM_CBCMR_IPU_HSP_CLK_SEL_OFFSET	(6)
+#define MX51_CCM_CBCMR_IPU_HSP_CLK_SEL_MASK		(0x3 << 6)
+#define MX51_CCM_CBCMR_GPU_CLK_SEL_OFFSET		(4)
+#define MX51_CCM_CBCMR_GPU_CLK_SEL_MASK		(0x3 << 4)
+#define MX51_CCM_CBCMR_GPU2D_CLK_SEL_OFFSET        (14)
+#define MX51_CCM_CBCMR_GPU2D_CLK_SEL_MASK      (0x3 << 14)
+#define MX51_CCM_CBCMR_PERCLK_LP_APM_CLK_SEL		(0x1 << 1)
+#define MX51_CCM_CBCMR_PERCLK_IPG_CLK_SEL		(0x1 << 0)
+
+/* Define the bits in register CSCMR1 */
+#define MX51_CCM_CSCMR1_SSI_EXT2_CLK_SEL_OFFSET		(30)
+#define MX51_CCM_CSCMR1_SSI_EXT2_CLK_SEL_MASK		(0x3 << 30)
+#define MX51_CCM_CSCMR1_SSI_EXT1_CLK_SEL_OFFSET		(28)
+#define MX51_CCM_CSCMR1_SSI_EXT1_CLK_SEL_MASK		(0x3 << 28)
+#define MX51_CCM_CSCMR1_USB_PHY_CLK_SEL_OFFSET		(26)
+#define MX51_CCM_CSCMR1_USB_PHY_CLK_SEL			(0x1 << 26)
+#define MX51_CCM_CSCMR1_UART_CLK_SEL_OFFSET			(24)
+#define MX51_CCM_CSCMR1_UART_CLK_SEL_MASK			(0x3 << 24)
+#define MX51_CCM_CSCMR1_USBOH3_CLK_SEL_OFFSET		(22)
+#define MX51_CCM_CSCMR1_USBOH3_CLK_SEL_MASK			(0x3 << 22)
+#define MX51_CCM_CSCMR1_ESDHC1_MSHC1_CLK_SEL_OFFSET	(20)
+#define MX51_CCM_CSCMR1_ESDHC1_MSHC1_CLK_SEL_MASK		(0x3 << 20)
+#define MX51_CCM_CSCMR1_ESDHC3_CLK_SEL			(0x1 << 19)
+#define MX51_CCM_CSCMR1_ESDHC4_CLK_SEL			(0x1 << 18)
+#define MX51_CCM_CSCMR1_ESDHC2_MSHC2_CLK_SEL_OFFSET	(16)
+#define MX51_CCM_CSCMR1_ESDHC2_MSHC2_CLK_SEL_MASK		(0x3 << 16)
+#define MX51_CCM_CSCMR1_SSI1_CLK_SEL_OFFSET			(14)
+#define MX51_CCM_CSCMR1_SSI1_CLK_SEL_MASK			(0x3 << 14)
+#define MX51_CCM_CSCMR1_SSI2_CLK_SEL_OFFSET			(12)
+#define MX51_CCM_CSCMR1_SSI2_CLK_SEL_MASK			(0x3 << 12)
+#define MX51_CCM_CSCMR1_SSI3_CLK_SEL				(0x1 << 11)
+#define MX51_CCM_CSCMR1_VPU_RCLK_SEL				(0x1 << 10)
+#define MX51_CCM_CSCMR1_SSI_APM_CLK_SEL_OFFSET		(8)
+#define MX51_CCM_CSCMR1_SSI_APM_CLK_SEL_MASK		(0x3 << 8)
+#define MX51_CCM_CSCMR1_TVE_CLK_SEL				(0x1 << 7)
+#define MX51_CCM_CSCMR1_TVE_EXT_CLK_SEL			(0x1 << 6)
+#define MX51_CCM_CSCMR1_CSPI_CLK_SEL_OFFSET			(4)
+#define MX51_CCM_CSCMR1_CSPI_CLK_SEL_MASK			(0x3 << 4)
+#define MX51_CCM_CSCMR1_SPDIF_CLK_SEL_OFFSET			(2)
+#define MX51_CCM_CSCMR1_SPDIF_CLK_SEL_MASK			(0x3 << 2)
+#define MX51_CCM_CSCMR1_SSI_EXT2_COM_CLK_SEL			(0x1 << 1)
+#define MX51_CCM_CSCMR1_SSI_EXT1_COM_CLK_SEL			(0x1)
+
+/* Define the bits in register CSCMR2 */
+#define MX51_CCM_CSCMR2_DI_CLK_SEL_OFFSET(n)		(26+n*3)
+#define MX51_CCM_CSCMR2_DI_CLK_SEL_MASK(n)		(0x7 << (26+n*3))
+#define MX51_CCM_CSCMR2_CSI_MCLK2_CLK_SEL_OFFSET	(24)
+#define MX51_CCM_CSCMR2_CSI_MCLK2_CLK_SEL_MASK	(0x3 << 24)
+#define MX51_CCM_CSCMR2_CSI_MCLK1_CLK_SEL_OFFSET	(22)
+#define MX51_CCM_CSCMR2_CSI_MCLK1_CLK_SEL_MASK	(0x3 << 22)
+#define MX51_CCM_CSCMR2_ESC_CLK_SEL_OFFSET		(20)
+#define MX51_CCM_CSCMR2_ESC_CLK_SEL_MASK		(0x3 << 20)
+#define MX51_CCM_CSCMR2_HSC2_CLK_SEL_OFFSET		(18)
+#define MX51_CCM_CSCMR2_HSC2_CLK_SEL_MASK		(0x3 << 18)
+#define MX51_CCM_CSCMR2_HSC1_CLK_SEL_OFFSET		(16)
+#define MX51_CCM_CSCMR2_HSC1_CLK_SEL_MASK		(0x3 << 16)
+#define MX51_CCM_CSCMR2_HSI2C_CLK_SEL_OFFSET		(14)
+#define MX51_CCM_CSCMR2_HSI2C_CLK_SEL_MASK		(0x3 << 14)
+#define MX51_CCM_CSCMR2_FIRI_CLK_SEL_OFFSET		(12)
+#define MX51_CCM_CSCMR2_FIRI_CLK_SEL_MASK		(0x3 << 12)
+#define MX51_CCM_CSCMR2_SIM_CLK_SEL_OFFSET		(10)
+#define MX51_CCM_CSCMR2_SIM_CLK_SEL_MASK		(0x3 << 10)
+#define MX51_CCM_CSCMR2_SLIMBUS_COM			(0x1 << 9)
+#define MX51_CCM_CSCMR2_SLIMBUS_CLK_SEL_OFFSET	(6)
+#define MX51_CCM_CSCMR2_SLIMBUS_CLK_SEL_MASK		(0x7 << 6)
+#define MX51_CCM_CSCMR2_SPDIF1_COM			(1 << 5)
+#define MX51_CCM_CSCMR2_SPDIF0_COM			(1 << 4)
+#define MX51_CCM_CSCMR2_SPDIF1_CLK_SEL_OFFSET	(2)
+#define MX51_CCM_CSCMR2_SPDIF1_CLK_SEL_MASK		(0x3 << 2)
+#define MX51_CCM_CSCMR2_SPDIF0_CLK_SEL_OFFSET	(0)
+#define MX51_CCM_CSCMR2_SPDIF0_CLK_SEL_MASK		(0x3)
+
+/* Define the bits in register CSCDR1 */
+#define MX51_CCM_CSCDR1_ESDHC2_MSHC2_CLK_PRED_OFFSET	(22)
+#define MX51_CCM_CSCDR1_ESDHC2_MSHC2_CLK_PRED_MASK		(0x7 << 22)
+#define MX51_CCM_CSCDR1_ESDHC2_MSHC2_CLK_PODF_OFFSET	(19)
+#define MX51_CCM_CSCDR1_ESDHC2_MSHC2_CLK_PODF_MASK		(0x7 << 19)
+#define MX51_CCM_CSCDR1_ESDHC1_MSHC1_CLK_PRED_OFFSET	(16)
+#define MX51_CCM_CSCDR1_ESDHC1_MSHC1_CLK_PRED_MASK		(0x7 << 16)
+#define MX51_CCM_CSCDR1_PGC_CLK_PODF_OFFSET			(14)
+#define MX51_CCM_CSCDR1_PGC_CLK_PODF_MASK			(0x3 << 14)
+#define MX51_CCM_CSCDR1_ESDHC1_MSHC1_CLK_PODF_OFFSET	(11)
+#define MX51_CCM_CSCDR1_ESDHC1_MSHC1_CLK_PODF_MASK		(0x7 << 11)
+#define MX51_CCM_CSCDR1_USBOH3_CLK_PRED_OFFSET		(8)
+#define MX51_CCM_CSCDR1_USBOH3_CLK_PRED_MASK		(0x7 << 8)
+#define MX51_CCM_CSCDR1_USBOH3_CLK_PODF_OFFSET		(6)
+#define MX51_CCM_CSCDR1_USBOH3_CLK_PODF_MASK		(0x3 << 6)
+#define MX51_CCM_CSCDR1_UART_CLK_PRED_OFFSET		(3)
+#define MX51_CCM_CSCDR1_UART_CLK_PRED_MASK			(0x7 << 3)
+#define MX51_CCM_CSCDR1_UART_CLK_PODF_OFFSET		(0)
+#define MX51_CCM_CSCDR1_UART_CLK_PODF_MASK			(0x7)
+
+/* Define the bits in register CS1CDR and CS2CDR */
+#define MX51_CCM_CS1CDR_SSI_EXT1_CLK_PRED_OFFSET	(22)
+#define MX51_CCM_CS1CDR_SSI_EXT1_CLK_PRED_MASK	(0x7 << 22)
+#define MX51_CCM_CS1CDR_SSI_EXT1_CLK_PODF_OFFSET	(16)
+#define MX51_CCM_CS1CDR_SSI_EXT1_CLK_PODF_MASK	(0x3F << 16)
+#define MX51_CCM_CS1CDR_SSI1_CLK_PRED_OFFSET		(6)
+#define MX51_CCM_CS1CDR_SSI1_CLK_PRED_MASK		(0x7 << 6)
+#define MX51_CCM_CS1CDR_SSI1_CLK_PODF_OFFSET		(0)
+#define MX51_CCM_CS1CDR_SSI1_CLK_PODF_MASK		(0x3F)
+
+#define MX51_CCM_CS2CDR_SSI_EXT2_CLK_PRED_OFFSET	(22)
+#define MX51_CCM_CS2CDR_SSI_EXT2_CLK_PRED_MASK	(0x7 << 22)
+#define MX51_CCM_CS2CDR_SSI_EXT2_CLK_PODF_OFFSET	(16)
+#define MX51_CCM_CS2CDR_SSI_EXT2_CLK_PODF_MASK	(0x3F << 16)
+#define MX51_CCM_CS2CDR_SSI2_CLK_PRED_OFFSET		(6)
+#define MX51_CCM_CS2CDR_SSI2_CLK_PRED_MASK		(0x7 << 6)
+#define MX51_CCM_CS2CDR_SSI2_CLK_PODF_OFFSET		(0)
+#define MX51_CCM_CS2CDR_SSI2_CLK_PODF_MASK		(0x3F)
+
+/* Define the bits in register CDCDR */
+#define MX51_CCM_CDCDR_TVE_CLK_PRED_OFFSET		(28)
+#define MX51_CCM_CDCDR_TVE_CLK_PRED_MASK		(0x7 << 28)
+#define MX51_CCM_CDCDR_SPDIF0_CLK_PRED_OFFSET	(25)
+#define MX51_CCM_CDCDR_SPDIF0_CLK_PRED_MASK		(0x7 << 25)
+#define MX51_CCM_CDCDR_SPDIF0_CLK_PODF_OFFSET	(19)
+#define MX51_CCM_CDCDR_SPDIF0_CLK_PODF_MASK		(0x3F << 19)
+#define MX51_CCM_CDCDR_SPDIF1_CLK_PRED_OFFSET	(16)
+#define MX51_CCM_CDCDR_SPDIF1_CLK_PRED_MASK		(0x7 << 16)
+#define MX51_CCM_CDCDR_SPDIF1_CLK_PODF_OFFSET	(9)
+#define MX51_CCM_CDCDR_SPDIF1_CLK_PODF_MASK		(0x3F << 9)
+#define MX51_CCM_CDCDR_DI_CLK_PRED_OFFSET		(6)
+#define MX51_CCM_CDCDR_DI_CLK_PRED_MASK		(0x7 << 6)
+#define MX51_CCM_CDCDR_USB_PHY_PRED_OFFSET		(3)
+#define MX51_CCM_CDCDR_USB_PHY_PRED_MASK		(0x7 << 3)
+#define MX51_CCM_CDCDR_USB_PHY_PODF_OFFSET		(0)
+#define MX51_CCM_CDCDR_USB_PHY_PODF_MASK		(0x7)
+
+/* Define the bits in register CHSCCDR */
+#define MX51_CCM_CHSCCDR_ESC_CLK_PRED_OFFSET		(12)
+#define MX51_CCM_CHSCCDR_ESC_CLK_PRED_MASK		(0x7 << 12)
+#define MX51_CCM_CHSCCDR_ESC_CLK_PODF_OFFSET	(6)
+#define MX51_CCM_CHSCCDR_ESC_CLK_PODF_MASK		(0x3F << 6)
+#define MX51_CCM_CHSCCDR_HSC2_CLK_PODF_OFFSET	(3)
+#define MX51_CCM_CHSCCDR_HSC2_CLK_PODF_MASK		(0x7 << 3)
+#define MX51_CCM_CHSCCDR_HSC1_CLK_PODF_OFFSET	(0)
+#define MX51_CCM_CHSCCDR_HSC1_CLK_PODF_MASK		(0x7)
+
+/* Define the bits in register CSCDR2 */
+#define MX51_CCM_CSCDR2_CSPI_CLK_PRED_OFFSET		(25)
+#define MX51_CCM_CSCDR2_CSPI_CLK_PRED_MASK		(0x7 << 25)
+#define MX51_CCM_CSCDR2_CSPI_CLK_PODF_OFFSET		(19)
+#define MX51_CCM_CSCDR2_CSPI_CLK_PODF_MASK		(0x3F << 19)
+#define MX51_CCM_CSCDR2_SIM_CLK_PRED_OFFSET		(16)
+#define MX51_CCM_CSCDR2_SIM_CLK_PRED_MASK		(0x7 << 16)
+#define MX51_CCM_CSCDR2_SIM_CLK_PODF_OFFSET		(9)
+#define MX51_CCM_CSCDR2_SIM_CLK_PODF_MASK		(0x3F << 9)
+#define MX51_CCM_CSCDR2_SLIMBUS_CLK_PRED_OFFSET	(6)
+#define MX51_CCM_CSCDR2_SLIMBUS_PRED_MASK		(0x7 << 6)
+#define MX51_CCM_CSCDR2_SLIMBUS_PODF_OFFSET		(0)
+#define MX51_CCM_CSCDR2_SLIMBUS_PODF_MASK		(0x3F)
+
+/* Define the bits in register CSCDR3 */
+#define MX51_CCM_CSCDR3_HSI2C_CLK_PRED_OFFSET	(16)
+#define MX51_CCM_CSCDR3_HSI2C_CLK_PRED_MASK		(0x7 << 16)
+#define MX51_CCM_CSCDR3_HSI2C_CLK_PODF_OFFSET	(9)
+#define MX51_CCM_CSCDR3_HSI2C_CLK_PODF_MASK		(0x3F << 9)
+#define MX51_CCM_CSCDR3_FIRI_CLK_PRED_OFFSET		(6)
+#define MX51_CCM_CSCDR3_FIRI_CLK_PRED_MASK		(0x7 << 6)
+#define MX51_CCM_CSCDR3_FIRI_CLK_PODF_OFFSET		(0)
+#define MX51_CCM_CSCDR3_FIRI_CLK_PODF_MASK		(0x3F)
+
+/* Define the bits in register CSCDR4 */
+#define MX51_CCM_CSCDR4_CSI_MCLK2_CLK_PRED_OFFSET	(16)
+#define MX51_CCM_CSCDR4_CSI_MCLK2_CLK_PRED_MASK	(0x7 << 16)
+#define MX51_CCM_CSCDR4_CSI_MCLK2_CLK_PODF_OFFSET	(9)
+#define MX51_CCM_CSCDR4_CSI_MCLK2_CLK_PODF_MASK	(0x3F << 9)
+#define MX51_CCM_CSCDR4_CSI_MCLK1_CLK_PRED_OFFSET	(6)
+#define MX51_CCM_CSCDR4_CSI_MCLK1_CLK_PRED_MASK	(0x7 << 6)
+#define MX51_CCM_CSCDR4_CSI_MCLK1_CLK_PODF_OFFSET	(0)
+#define MX51_CCM_CSCDR4_CSI_MCLK1_CLK_PODF_MASK	(0x3F)
+
+/* Define the bits in register CDHIPR */
+#define MX51_CCM_CDHIPR_ARM_PODF_BUSY			(1 << 16)
+#define MX51_CCM_CDHIPR_DDR_HF_CLK_SEL_BUSY		(1 << 8)
+#define MX51_CCM_CDHIPR_DDR_PODF_BUSY			(1 << 7)
+#define MX51_CCM_CDHIPR_EMI_CLK_SEL_BUSY			(1 << 6)
+#define MX51_CCM_CDHIPR_PERIPH_CLK_SEL_BUSY		(1 << 5)
+#define MX51_CCM_CDHIPR_NFC_IPG_INT_MEM_PODF_BUSY	(1 << 4)
+#define MX51_CCM_CDHIPR_AHB_PODF_BUSY			(1 << 3)
+#define MX51_CCM_CDHIPR_EMI_PODF_BUSY			(1 << 2)
+#define MX51_CCM_CDHIPR_AXI_B_PODF_BUSY			(1 << 1)
+#define MX51_CCM_CDHIPR_AXI_A_PODF_BUSY			(1 << 0)
+
+/* Define the bits in register CDCR */
+#define MX51_CCM_CDCR_ARM_FREQ_SHIFT_DIVIDER			(0x1 << 2)
+#define MX51_CCM_CDCR_PERIPH_CLK_DVFS_PODF_OFFSET		(0)
+#define MX51_CCM_CDCR_PERIPH_CLK_DVFS_PODF_MASK		(0x3)
+
+/* Define the bits in register CLPCR */
+#define MX51_CCM_CLPCR_BYPASS_HSC_LPM_HS		(0x1 << 23)
+#define MX51_CCM_CLPCR_BYPASS_SCC_LPM_HS		(0x1 << 22)
+#define MX51_CCM_CLPCR_BYPASS_MAX_LPM_HS		(0x1 << 21)
+#define MX51_CCM_CLPCR_BYPASS_SDMA_LPM_HS		(0x1 << 20)
+#define MX51_CCM_CLPCR_BYPASS_EMI_LPM_HS		(0x1 << 19)
+#define MX51_CCM_CLPCR_BYPASS_IPU_LPM_HS		(0x1 << 18)
+#define MX51_CCM_CLPCR_BYPASS_RTIC_LPM_HS		(0x1 << 17)
+#define MX51_CCM_CLPCR_BYPASS_RNGC_LPM_HS		(0x1 << 16)
+#define MX51_CCM_CLPCR_COSC_PWRDOWN			(0x1 << 11)
+#define MX51_CCM_CLPCR_STBY_COUNT_OFFSET		(9)
+#define MX51_CCM_CLPCR_STBY_COUNT_MASK		(0x3 << 9)
+#define MX51_CCM_CLPCR_VSTBY				(0x1 << 8)
+#define MX51_CCM_CLPCR_DIS_REF_OSC			(0x1 << 7)
+#define MX51_CCM_CLPCR_SBYOS				(0x1 << 6)
+#define MX51_CCM_CLPCR_ARM_CLK_DIS_ON_LPM		(0x1 << 5)
+#define MX51_CCM_CLPCR_LPSR_CLK_SEL_OFFSET		(3)
+#define MX51_CCM_CLPCR_LPSR_CLK_SEL_MASK		(0x3 << 3)
+#define MX51_CCM_CLPCR_LPM_OFFSET			(0)
+#define MX51_CCM_CLPCR_LPM_MASK			(0x3)
+
+/* Define the bits in register CISR */
+#define MX51_CCM_CISR_ARM_PODF_LOADED			(0x1 << 25)
+#define MX51_CCM_CISR_NFC_IPG_INT_MEM_PODF_LOADED		(0x1 << 21)
+#define MX51_CCM_CISR_AHB_PODF_LOADED			(0x1 << 20)
+#define MX51_CCM_CISR_EMI_PODF_LOADED				(0x1 << 19)
+#define MX51_CCM_CISR_AXI_B_PODF_LOADED			(0x1 << 18)
+#define MX51_CCM_CISR_AXI_A_PODF_LOADED			(0x1 << 17)
+#define MX51_CCM_CISR_DIVIDER_LOADED				(0x1 << 16)
+#define MX51_CCM_CISR_COSC_READY				(0x1 << 6)
+#define MX51_CCM_CISR_CKIH2_READY				(0x1 << 5)
+#define MX51_CCM_CISR_CKIH_READY				(0x1 << 4)
+#define MX51_CCM_CISR_FPM_READY				(0x1 << 3)
+#define MX51_CCM_CISR_LRF_PLL3					(0x1 << 2)
+#define MX51_CCM_CISR_LRF_PLL2					(0x1 << 1)
+#define MX51_CCM_CISR_LRF_PLL1					(0x1)
+
+/* Define the bits in register CIMR */
+#define MX51_CCM_CIMR_MASK_ARM_PODF_LOADED		(0x1 << 25)
+#define MX51_CCM_CIMR_MASK_NFC_IPG_INT_MEM_PODF_LOADED	(0x1 << 21)
+#define MX51_CCM_CIMR_MASK_EMI_PODF_LOADED		(0x1 << 20)
+#define MX51_CCM_CIMR_MASK_AXI_C_PODF_LOADED		(0x1 << 19)
+#define MX51_CCM_CIMR_MASK_AXI_B_PODF_LOADED		(0x1 << 18)
+#define MX51_CCM_CIMR_MASK_AXI_A_PODF_LOADED		(0x1 << 17)
+#define MX51_CCM_CIMR_MASK_DIVIDER_LOADED		(0x1 << 16)
+#define MX51_CCM_CIMR_MASK_COSC_READY			(0x1 << 5)
+#define MX51_CCM_CIMR_MASK_CKIH_READY			(0x1 << 4)
+#define MX51_CCM_CIMR_MASK_FPM_READY			(0x1 << 3)
+#define MX51_CCM_CIMR_MASK_LRF_PLL3			(0x1 << 2)
+#define MX51_CCM_CIMR_MASK_LRF_PLL2			(0x1 << 1)
+#define MX51_CCM_CIMR_MASK_LRF_PLL1			(0x1)
+
+/* Define the bits in register CCOSR */
+#define MX51_CCM_CCOSR_CKO2_EN_OFFSET			(0x1 << 24)
+#define MX51_CCM_CCOSR_CKO2_DIV_OFFSET			(21)
+#define MX51_CCM_CCOSR_CKO2_DIV_MASK			(0x7 << 21)
+#define MX51_CCM_CCOSR_CKO2_SEL_OFFSET			(16)
+#define MX51_CCM_CCOSR_CKO2_SEL_MASK			(0x1F << 16)
+#define MX51_CCM_CCOSR_CKOL_EN				(0x1 << 7)
+#define MX51_CCM_CCOSR_CKOL_DIV_OFFSET			(4)
+#define MX51_CCM_CCOSR_CKOL_DIV_MASK			(0x7 << 4)
+#define MX51_CCM_CCOSR_CKOL_SEL_OFFSET			(0)
+#define MX51_CCM_CCOSR_CKOL_SEL_MASK			(0xF)
+
+/* Define the bits in registers CGPR */
+#define MX51_CCM_CGPR_EFUSE_PROG_SUPPLY_GATE		(0x1 << 4)
+#define MX51_CCM_CGPR_FPM_SEL				(0x1 << 3)
+#define MX51_CCM_CGPR_VL_L2BIST_CLKDIV_OFFSET		(0)
+#define MX51_CCM_CGPR_VL_L2BIST_CLKDIV_MASK		(0x7)
+
+/* Define the bits in registers CCGRx */
+#define MX51_CCM_CCGR_CG_MASK				0x3
+#define MX51_CCM_CCGR_MOD_OFF				0x0
+#define MX51_CCM_CCGR_MOD_ON				0x3
+#define MX51_CCM_CCGR_MOD_IDLE				0x1
+
+#define MX51_CCM_CCGR0_CG15_OFFSET			30
+#define MX51_CCM_CCGR0_CG15_MASK			(0x3 << 30)
+#define MX51_CCM_CCGR0_CG14_OFFSET			28
+#define MX51_CCM_CCGR0_CG14_MASK			(0x3 << 28)
+#define MX51_CCM_CCGR0_CG13_OFFSET			26
+#define MX51_CCM_CCGR0_CG13_MASK			(0x3 << 26)
+#define MX51_CCM_CCGR0_CG12_OFFSET			24
+#define MX51_CCM_CCGR0_CG12_MASK			(0x3 << 24)
+#define MX51_CCM_CCGR0_CG11_OFFSET			22
+#define MX51_CCM_CCGR0_CG11_MASK			(0x3 << 22)
+#define MX51_CCM_CCGR0_CG10_OFFSET			20
+#define MX51_CCM_CCGR0_CG10_MASK			(0x3 << 20)
+#define MX51_CCM_CCGR0_CG9_OFFSET			18
+#define MX51_CCM_CCGR0_CG9_MASK			(0x3 << 18)
+#define MX51_CCM_CCGR0_CG8_OFFSET			16
+#define MX51_CCM_CCGR0_CG8_MASK			(0x3 << 16)
+#define MX51_CCM_CCGR0_CG7_OFFSET			14
+#define MX51_CCM_CCGR0_CG6_OFFSET			12
+#define MX51_CCM_CCGR0_CG5_OFFSET			10
+#define MX51_CCM_CCGR0_CG5_MASK			(0x3 << 10)
+#define MX51_CCM_CCGR0_CG4_OFFSET			8
+#define MX51_CCM_CCGR0_CG4_MASK			(0x3 << 8)
+#define MX51_CCM_CCGR0_CG3_OFFSET			6
+#define MX51_CCM_CCGR0_CG3_MASK			(0x3 << 6)
+#define MX51_CCM_CCGR0_CG2_OFFSET			4
+#define MX51_CCM_CCGR0_CG2_MASK			(0x3 << 4)
+#define MX51_CCM_CCGR0_CG1_OFFSET			2
+#define MX51_CCM_CCGR0_CG1_MASK			(0x3 << 2)
+#define MX51_CCM_CCGR0_CG0_OFFSET			0
+#define MX51_CCM_CCGR0_CG0_MASK			0x3
+
+#define MX51_CCM_CCGR1_CG15_OFFSET			30
+#define MX51_CCM_CCGR1_CG14_OFFSET			28
+#define MX51_CCM_CCGR1_CG13_OFFSET			26
+#define MX51_CCM_CCGR1_CG12_OFFSET			24
+#define MX51_CCM_CCGR1_CG11_OFFSET			22
+#define MX51_CCM_CCGR1_CG10_OFFSET			20
+#define MX51_CCM_CCGR1_CG9_OFFSET			18
+#define MX51_CCM_CCGR1_CG8_OFFSET			16
+#define MX51_CCM_CCGR1_CG7_OFFSET			14
+#define MX51_CCM_CCGR1_CG6_OFFSET			12
+#define MX51_CCM_CCGR1_CG5_OFFSET			10
+#define MX51_CCM_CCGR1_CG4_OFFSET			8
+#define MX51_CCM_CCGR1_CG3_OFFSET			6
+#define MX51_CCM_CCGR1_CG2_OFFSET			4
+#define MX51_CCM_CCGR1_CG1_OFFSET			2
+#define MX51_CCM_CCGR1_CG0_OFFSET			0
+
+#define MX51_CCM_CCGR2_CG15_OFFSET			30
+#define MX51_CCM_CCGR2_CG14_OFFSET			28
+#define MX51_CCM_CCGR2_CG13_OFFSET			26
+#define MX51_CCM_CCGR2_CG12_OFFSET			24
+#define MX51_CCM_CCGR2_CG11_OFFSET			22
+#define MX51_CCM_CCGR2_CG10_OFFSET			20
+#define MX51_CCM_CCGR2_CG9_OFFSET			18
+#define MX51_CCM_CCGR2_CG8_OFFSET			16
+#define MX51_CCM_CCGR2_CG7_OFFSET			14
+#define MX51_CCM_CCGR2_CG6_OFFSET			12
+#define MX51_CCM_CCGR2_CG5_OFFSET			10
+#define MX51_CCM_CCGR2_CG4_OFFSET			8
+#define MX51_CCM_CCGR2_CG3_OFFSET			6
+#define MX51_CCM_CCGR2_CG2_OFFSET			4
+#define MX51_CCM_CCGR2_CG1_OFFSET			2
+#define MX51_CCM_CCGR2_CG0_OFFSET			0
+
+#define MX51_CCM_CCGR3_CG15_OFFSET			30
+#define MX51_CCM_CCGR3_CG14_OFFSET			28
+#define MX51_CCM_CCGR3_CG13_OFFSET			26
+#define MX51_CCM_CCGR3_CG12_OFFSET			24
+#define MX51_CCM_CCGR3_CG11_OFFSET			22
+#define MX51_CCM_CCGR3_CG10_OFFSET			20
+#define MX51_CCM_CCGR3_CG9_OFFSET			18
+#define MX51_CCM_CCGR3_CG8_OFFSET			16
+#define MX51_CCM_CCGR3_CG7_OFFSET			14
+#define MX51_CCM_CCGR3_CG6_OFFSET			12
+#define MX51_CCM_CCGR3_CG5_OFFSET			10
+#define MX51_CCM_CCGR3_CG4_OFFSET			8
+#define MX51_CCM_CCGR3_CG3_OFFSET			6
+#define MX51_CCM_CCGR3_CG2_OFFSET			4
+#define MX51_CCM_CCGR3_CG1_OFFSET			2
+#define MX51_CCM_CCGR3_CG0_OFFSET			0
+
+#define MX51_CCM_CCGR4_CG15_OFFSET			30
+#define MX51_CCM_CCGR4_CG14_OFFSET			28
+#define MX51_CCM_CCGR4_CG13_OFFSET			26
+#define MX51_CCM_CCGR4_CG12_OFFSET			24
+#define MX51_CCM_CCGR4_CG11_OFFSET			22
+#define MX51_CCM_CCGR4_CG10_OFFSET			20
+#define MX51_CCM_CCGR4_CG9_OFFSET			18
+#define MX51_CCM_CCGR4_CG8_OFFSET			16
+#define MX51_CCM_CCGR4_CG7_OFFSET			14
+#define MX51_CCM_CCGR4_CG6_OFFSET			12
+#define MX51_CCM_CCGR4_CG5_OFFSET			10
+#define MX51_CCM_CCGR4_CG4_OFFSET			8
+#define MX51_CCM_CCGR4_CG3_OFFSET			6
+#define MX51_CCM_CCGR4_CG2_OFFSET			4
+#define MX51_CCM_CCGR4_CG1_OFFSET			2
+#define MX51_CCM_CCGR4_CG0_OFFSET			0
+
+#define MX51_CCM_CCGR5_CG15_OFFSET			30
+#define MX51_CCM_CCGR5_CG14_OFFSET			28
+#define MX51_CCM_CCGR5_CG14_MASK			(0x3 << 28)
+#define MX51_CCM_CCGR5_CG13_OFFSET			26
+#define MX51_CCM_CCGR5_CG13_MASK			(0x3 << 26)
+#define MX51_CCM_CCGR5_CG12_OFFSET			24
+#define MX51_CCM_CCGR5_CG12_MASK			(0x3 << 24)
+#define MX51_CCM_CCGR5_CG11_OFFSET			22
+#define MX51_CCM_CCGR5_CG11_MASK			(0x3 << 22)
+#define MX51_CCM_CCGR5_CG10_OFFSET			20
+#define MX51_CCM_CCGR5_CG10_MASK			(0x3 << 20)
+#define MX51_CCM_CCGR5_CG9_OFFSET			18
+#define MX51_CCM_CCGR5_CG9_MASK			(0x3 << 18)
+#define MX51_CCM_CCGR5_CG8_OFFSET			16
+#define MX51_CCM_CCGR5_CG8_MASK			(0x3 << 16)
+#define MX51_CCM_CCGR5_CG7_OFFSET			14
+#define MX51_CCM_CCGR5_CG7_MASK			(0x3 << 14)
+#define MX51_CCM_CCGR5_CG6_OFFSET			12
+#define MX51_CCM_CCGR5_CG5_OFFSET			10
+#define MX51_CCM_CCGR5_CG4_OFFSET			8
+#define MX51_CCM_CCGR5_CG3_OFFSET			6
+#define MX51_CCM_CCGR5_CG2_OFFSET			4
+#define MX51_CCM_CCGR5_CG2_MASK			(0x3 << 4)
+#define MX51_CCM_CCGR5_CG1_OFFSET			2
+#define MX51_CCM_CCGR5_CG0_OFFSET			0
+#define MX51_CCM_CCGR6_CG7_OFFSET            14
+#define MX51_CCM_CCGR6_CG7_MASK          (0x3 << 14)
+#define MX51_CCM_CCGR6_CG6_OFFSET			12
+#define MX51_CCM_CCGR6_CG6_MASK			(0x3 << 12)
+#define MX51_CCM_CCGR6_CG5_OFFSET			10
+#define MX51_CCM_CCGR6_CG5_MASK			(0x3 << 10)
+#define MX51_CCM_CCGR6_CG4_OFFSET			8
+#define MX51_CCM_CCGR6_CG4_MASK			(0x3 << 8)
+#define MX51_CCM_CCGR6_CG3_OFFSET			6
+#define MX51_CCM_CCGR6_CG2_OFFSET			4
+#define MX51_CCM_CCGR6_CG1_OFFSET			2
+#define MX51_CCM_CCGR6_CG0_OFFSET			0
+
+/* CORTEXA8 platform */
+#define MX51_CORTEXA8_PLAT_PVID		(MX51_CORTEXA8_BASE + 0x0)
+#define MX51_CORTEXA8_PLAT_GPC		(MX51_CORTEXA8_BASE + 0x4)
+#define MX51_CORTEXA8_PLAT_PIC		(MX51_CORTEXA8_BASE + 0x8)
+#define MX51_CORTEXA8_PLAT_LPC		(MX51_CORTEXA8_BASE + 0xC)
+#define MX51_CORTEXA8_PLAT_NEON_LPC	(MX51_CORTEXA8_BASE + 0x10)
+#define MX51_CORTEXA8_PLAT_ICGC		(MX51_CORTEXA8_BASE + 0x14)
+#define MX51_CORTEXA8_PLAT_AMC		(MX51_CORTEXA8_BASE + 0x18)
+#define MX51_CORTEXA8_PLAT_NMC		(MX51_CORTEXA8_BASE + 0x20)
+#define MX51_CORTEXA8_PLAT_NMS		(MX51_CORTEXA8_BASE + 0x24)
+
+/* DVFS CORE */
+#define MX51_DVFSTHRS		(MX51_DVFS_CORE_BASE + 0x00)
+#define MX51_DVFSCOUN		(MX51_DVFS_CORE_BASE + 0x04)
+#define MX51_DVFSSIG1		(MX51_DVFS_CORE_BASE + 0x08)
+#define MX51_DVFSSIG0		(MX51_DVFS_CORE_BASE + 0x0C)
+#define MX51_DVFSGPC0		(MX51_DVFS_CORE_BASE + 0x10)
+#define MX51_DVFSGPC1		(MX51_DVFS_CORE_BASE + 0x14)
+#define MX51_DVFSGPBT		(MX51_DVFS_CORE_BASE + 0x18)
+#define MX51_DVFSEMAC		(MX51_DVFS_CORE_BASE + 0x1C)
+#define MX51_DVFSCNTR		(MX51_DVFS_CORE_BASE + 0x20)
+#define MX51_DVFSLTR0_0		(MX51_DVFS_CORE_BASE + 0x24)
+#define MX51_DVFSLTR0_1		(MX51_DVFS_CORE_BASE + 0x28)
+#define MX51_DVFSLTR1_0		(MX51_DVFS_CORE_BASE + 0x2C)
+#define MX51_DVFSLTR1_1		(MX51_DVFS_CORE_BASE + 0x30)
+#define MX51_DVFSPT0 		(MX51_DVFS_CORE_BASE + 0x34)
+#define MX51_DVFSPT1 		(MX51_DVFS_CORE_BASE + 0x38)
+#define MX51_DVFSPT2 		(MX51_DVFS_CORE_BASE + 0x3C)
+#define MX51_DVFSPT3 		(MX51_DVFS_CORE_BASE + 0x40)
+
+/* GPC */
+#define MX51_GPC_CNTR		(MX51_GPC_BASE + 0x0)
+#define MX51_GPC_PGR		(MX51_GPC_BASE + 0x4)
+#define MX51_GPC_VCR		(MX51_GPC_BASE + 0x8)
+#define MX51_GPC_ALL_PU		(MX51_GPC_BASE + 0xC)
+#define MX51_GPC_NEON		(MX51_GPC_BASE + 0x10)
+#define MX51_GPC_PGR_ARMPG_OFFSET	8
+#define MX51_GPC_PGR_ARMPG_MASK		(3 << 8)
+
+/* PGC */
+#define MX51_PGC_IPU_PGCR	(MX51_PGC_IPU_BASE + 0x0)
+#define MX51_PGC_IPU_PGSR	(MX51_PGC_IPU_BASE + 0xC)
+#define MX51_PGC_VPU_PGCR	(MX51_PGC_VPU_BASE + 0x0)
+#define MX51_PGC_VPU_PGSR	(MX51_PGC_VPU_BASE + 0xC)
+#define MX51_PGC_GPU_PGCR	(MX51_PGC_GPU_BASE + 0x0)
+#define MX51_PGC_GPU_PGSR	(MX51_PGC_GPU_BASE + 0xC)
+
+#define MX51_PGCR_PCR		1
+#define MX51_SRPGCR_PCR		1
+#define MX51_EMPGCR_PCR		1
+#define MX51_PGSR_PSR		1
+
+
+#define MX51_CORTEXA8_PLAT_LPC_DSM	(1 << 0)
+#define MX51_CORTEXA8_PLAT_LPC_DBG_DSM	(1 << 1)
+
+/* SRPG */
+#define MX51_SRPG_NEON_SRPGCR	(MX51_SRPG_NEON_BASE + 0x0)
+#define MX51_SRPG_NEON_PUPSCR	(MX51_SRPG_NEON_BASE + 0x4)
+#define MX51_SRPG_NEON_PDNSCR	(MX51_SRPG_NEON_BASE + 0x8)
+
+#define MX51_SRPG_ARM_SRPGCR	(MX51_SRPG_ARM_BASE + 0x0)
+#define MX51_SRPG_ARM_PUPSCR	(MX51_SRPG_ARM_BASE + 0x4)
+#define MX51_SRPG_ARM_PDNSCR	(MX51_SRPG_ARM_BASE + 0x8)
+
+#define MX51_SRPG_EMPGC0_SRPGCR	(MX51_SRPG_EMPGC0_BASE + 0x0)
+#define MX51_SRPG_EMPGC0_PUPSCR	(MX51_SRPG_EMPGC0_BASE + 0x4)
+#define MX51_SRPG_EMPGC0_PDNSCR	(MX51_SRPG_EMPGC0_BASE + 0x8)
+
+#define MX51_SRPG_EMPGC1_SRPGCR	(MX51_SRPG_EMPGC1_BASE + 0x0)
+#define MX51_SRPG_EMPGC1_PUPSCR	(MX51_SRPG_EMPGC1_BASE + 0x4)
+#define MX51_SRPG_EMPGC1_PDNSCR	(MX51_SRPG_EMPGC1_BASE + 0x8)
+
+#define MX51_SRPG_MEGAMIX_SRPGCR		(MX51_SRPG_MEGAMIX_BASE + 0x0)
+#define MX51_SRPG_MEGAMIX_PUPSCR		(MX51_SRPG_MEGAMIX_BASE + 0x4)
+#define MX51_SRPG_MEGAMIX_PDNSCR		(MX51_SRPG_MEGAMIX_BASE + 0x8)
+
+#define MX51_SRPGC_EMI_SRPGCR	(MX51_SRPGC_EMI_BASE + 0x0)
+#define MX51_SRPGC_EMI_PUPSCR	(MX51_SRPGC_EMI_BASE + 0x4)
+#define MX51_SRPGC_EMI_PDNSCR	(MX51_SRPGC_EMI_BASE + 0x8)
+
+#endif				/* __ARCH_ARM_MACH_MX51_CRM_REGS_H__ */
+
+
diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index 4b89838..9ca838b 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -45,3 +45,9 @@ u64 imx_uid(void);
 #define cpu_is_mx35()	(0)
 #endif
 
+#ifdef CONFIG_ARCH_IMX51
+#define cpu_is_mx51()	(1)
+#else
+#define cpu_is_mx51()	(0)
+#endif
+
diff --git a/arch/arm/mach-imx/include/mach/imx-regs.h b/arch/arm/mach-imx/include/mach/imx-regs.h
index 2cc49dd..605d320 100644
--- a/arch/arm/mach-imx/include/mach/imx-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx-regs.h
@@ -51,6 +51,8 @@
 # include <mach/imx35-regs.h>
 #elif defined CONFIG_ARCH_IMX25
 # include <mach/imx25-regs.h>
+#elif defined CONFIG_ARCH_IMX51
+#include <mach/imx51-regs.h>
 #else
 # error "unknown i.MX soc type"
 #endif
diff --git a/arch/arm/mach-imx/include/mach/imx51-regs.h b/arch/arm/mach-imx/include/mach/imx51-regs.h
new file mode 100644
index 0000000..f99285c
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/imx51-regs.h
@@ -0,0 +1,131 @@
+#ifndef __MACH_IMX51_REGS_H
+#define __MACH_IMX51_REGS_H
+
+#define IMX_TIM1_BASE			0x73fa0000
+#define IMX_WDT_BASE			0x73f98000
+#define IMX_IOMUXC_BASE			0x73fa8000
+
+#define GPT_TCTL	0x00
+#define GPT_TPRER	0x04
+#define GPT_TCMP	0x10
+#define GPT_TCR		0x1c
+#define GPT_TCN		0x24
+#define GPT_TSTAT	0x08
+
+/* Part 2: Bitfields */
+#define TCTL_SWR	(1<<15)	/* Software reset */
+#define TCTL_FRR	(1<<9)	/* Freerun / restart */
+#define TCTL_CAP	(3<<6)	/* Capture Edge */
+#define TCTL_OM		(1<<5)	/* output mode */
+#define TCTL_IRQEN	(1<<4)	/* interrupt enable */
+#define TCTL_CLKSOURCE	(6)	/* Clock source bit position */
+#define TCTL_TEN	(1)	/* Timer enable */
+#define TPRER_PRES	(0xff)	/* Prescale */
+#define TSTAT_CAPT	(1<<1)	/* Capture event */
+#define TSTAT_COMP	(1)	/* Compare event */
+
+#define WCR	__REG16(IMX_WDT_BASE + 0x00) /* Watchdog Control Register */
+#define WSR	__REG16(IMX_WDT_BASE + 0x02) /* Watchdog Service Register */
+#define WSTR	__REG16(IMX_WDT_BASE + 0x04) /* Watchdog Status Register  */
+
+/* important definition of some bits of WCR */
+#define WCR_WDE 0x04
+
+#define MX51_IROM_BASE_ADDR	0x0
+
+/*
+ * AIPS 1
+ */
+#define MX51_AIPS1_BASE_ADDR 	0x73F00000
+
+#define MX51_OTG_BASE_ADDR	(MX51_AIPS1_BASE_ADDR + 0x00080000)
+#define MX51_GPIO1_BASE_ADDR	(MX51_AIPS1_BASE_ADDR + 0x00084000)
+#define MX51_GPIO2_BASE_ADDR	(MX51_AIPS1_BASE_ADDR + 0x00088000)
+#define MX51_GPIO3_BASE_ADDR	(MX51_AIPS1_BASE_ADDR + 0x0008C000)
+#define MX51_GPIO4_BASE_ADDR	(MX51_AIPS1_BASE_ADDR + 0x00090000)
+#define MX51_KPP_BASE_ADDR	(MX51_AIPS1_BASE_ADDR + 0x00094000)
+#define MX51_WDOG_BASE_ADDR	(MX51_AIPS1_BASE_ADDR + 0x00098000)
+#define MX51_WDOG2_BASE_ADDR	(MX51_AIPS1_BASE_ADDR + 0x0009C000)
+#define MX51_GPT1_BASE_ADDR	(MX51_AIPS1_BASE_ADDR + 0x000A0000)
+#define MX51_SRTC_BASE_ADDR	(MX51_AIPS1_BASE_ADDR + 0x000A4000)
+#define MX51_IOMUXC_BASE_ADDR	(MX51_AIPS1_BASE_ADDR + 0x000A8000)
+#define MX51_EPIT1_BASE_ADDR	(MX51_AIPS1_BASE_ADDR + 0x000AC000)
+#define MX51_EPIT2_BASE_ADDR	(MX51_AIPS1_BASE_ADDR + 0x000B0000)
+#define MX51_PWM1_BASE_ADDR	(MX51_AIPS1_BASE_ADDR + 0x000B4000)
+#define MX51_PWM2_BASE_ADDR	(MX51_AIPS1_BASE_ADDR + 0x000B8000)
+#define MX51_UART1_BASE_ADDR	(MX51_AIPS1_BASE_ADDR + 0x000BC000)
+#define MX51_UART2_BASE_ADDR	(MX51_AIPS1_BASE_ADDR + 0x000C0000)
+#define MX51_SRC_BASE_ADDR	(MX51_AIPS1_BASE_ADDR + 0x000D0000)
+#define MX51_CCM_BASE_ADDR	(MX51_AIPS1_BASE_ADDR + 0x000D4000)
+#define MX51_GPC_BASE_ADDR	(MX51_AIPS1_BASE_ADDR + 0x000D8000)
+
+/*
+ * AIPS 2
+ */
+#define MX51_AIPS2_BASE_ADDR		0x83F00000
+
+#define MX51_PLL1_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x00080000)
+#define MX51_PLL2_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x00084000)
+#define MX51_PLL3_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x00088000)
+#define MX51_AHBMAX_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x00094000)
+#define MX51_IIM_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x00098000)
+#define MX51_CSU_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x0009C000)
+#define MX51_ARM_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000A0000)
+#define MX51_OWIRE_BASE_ADDR (MX51_AIPS2_BASE_ADDR + 0x000A4000)
+#define MX51_FIRI_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000A8000)
+#define MX51_CSPI2_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000AC000)
+#define MX51_SDMA_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000B0000)
+#define MX51_SCC_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000B4000)
+#define MX51_ROMCP_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000B8000)
+#define MX51_RTIC_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000BC000)
+#define MX51_CSPI3_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000C0000)
+#define MX51_I2C2_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000C4000)
+#define MX51_I2C1_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000C8000)
+#define MX51_SSI1_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000CC000)
+#define MX51_AUDMUX_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000D0000)
+#define MX51_M4IF_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000D8000)
+#define MX51_ESDCTL_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000D9000)
+#define MX51_WEIM_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000DA000)
+#define MX51_NFC_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000DB000)
+#define MX51_EMI_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000DBF00)
+#define MX51_MIPI_HSC_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000DC000)
+#define MX51_ATA_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000E0000)
+#define MX51_SIM_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000E4000)
+#define MX51_SSI3BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000E8000)
+#define MX51_MXC_FEC_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000EC000)
+#define MX51_TVE_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000F0000)
+#define MX51_VPU_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000F4000)
+#define MX51_SAHARA_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000F8000)
+
+#define MX51_SPBA0_BASE_ADDR    0x70000000
+#define MX51_CSPI1_BASE_ADDR    (MX51_SPBA0_BASE_ADDR + 0x00010000)
+
+/*
+ * Memory regions and CS
+ */
+#define MX51_GPU_CTRL_BASE_ADDR	0x30000000
+#define MX51_IPU_CTRL_BASE_ADDR	0x40000000
+#define MX51_CSD0_BASE_ADDR		0x90000000
+#define MX51_CSD1_BASE_ADDR		0xA0000000
+#define MX51_CS0_BASE_ADDR		0xB0000000
+#define MX51_CS1_BASE_ADDR		0xB8000000
+#define MX51_CS2_BASE_ADDR		0xC0000000
+#define MX51_CS3_BASE_ADDR		0xC8000000
+#define MX51_CS4_BASE_ADDR		0xCC000000
+#define MX51_CS5_BASE_ADDR		0xCE000000
+
+/* silicon revisions specific to i.MX51 */
+#define MX51_CHIP_REV_1_0	0x10
+#define MX51_CHIP_REV_1_1	0x11
+#define MX51_CHIP_REV_1_2	0x12
+#define MX51_CHIP_REV_1_3	0x13
+#define MX51_CHIP_REV_2_0	0x20
+#define MX51_CHIP_REV_2_1	0x21
+#define MX51_CHIP_REV_2_2	0x22
+#define MX51_CHIP_REV_2_3	0x23
+#define MX51_CHIP_REV_3_0	0x30
+#define MX51_CHIP_REV_3_1	0x31
+#define MX51_CHIP_REV_3_2	0x32
+
+#endif /* __MACH_IMX51_REGS_H */
+
diff --git a/arch/arm/mach-imx/include/mach/iomux-mx51.h b/arch/arm/mach-imx/include/mach/iomux-mx51.h
new file mode 100644
index 0000000..2901ee6
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/iomux-mx51.h
@@ -0,0 +1,330 @@
+/*
+ * Copyright (C) 2009 by Sascha Hauer <s.hauer@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2
+ * of the License, or (at your option, NO_PAD_CTRL) any later version.
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
+ * MA 02110-1301, USA.
+ */
+
+#ifndef __MACH_IOMUX_MX51_H__
+#define __MACH_IOMUX_MX51_H__
+
+#include <mach/iomux-v3.h>
+
+#define MX51_FEC_PAD_CTRL      (PAD_CTL_DRV_VOT_HIGH | PAD_CTL_DRIVE_STRENGTH_HIGH)
+
+/*
+ * The naming convention for the pad modes is MX51_PAD_<padname>__<padmode>
+ * If <padname> or <padmode> refers to a GPIO, it is named
+ * GPIO_<unit>_<num> see also iomux-v3.h
+ */
+
+/*								  PAD    MUX   ALT INPSE PATH */
+#define MX51_PAD_EIM_DA0__EIM_DA0			IOMUX_PAD(0x7A8, 0x1C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_DA1__EIM_DA1			IOMUX_PAD(0x7A8, 0x20, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_DA2__EIM_DA2			IOMUX_PAD(0x7A8, 0x24, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_DA3__EIM_DA3			IOMUX_PAD(0x7A8, 0x28, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_DA4__EIM_DA4			IOMUX_PAD(0x7AC, 0x2C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_DA5__EIM_DA5			IOMUX_PAD(0x7AC, 0x30, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_DA6__EIM_DA6			IOMUX_PAD(0x7AC, 0x34, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_DA7__EIM_DA7			IOMUX_PAD(0x7AC, 0x38, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_DA8__EIM_DA8			IOMUX_PAD(0x7B0, 0x3C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_DA9__EIM_DA9			IOMUX_PAD(0x7B0, 0x40, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_DA10__EIM_DA10			IOMUX_PAD(0x7B0, 0x44, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_DA11__EIM_DA11			IOMUX_PAD(0x7B0, 0x48, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_DA12__EIM_DA12			IOMUX_PAD(0x7BC, 0x4C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_DA13__EIM_DA13			IOMUX_PAD(0x7BC, 0x50, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_DA14__EIM_DA14			IOMUX_PAD(0x7BC, 0x54, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_DA15__EIM_DA15			IOMUX_PAD(0x7BC, 0x58, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_D16__EIM_D16			IOMUX_PAD(0x3F0, 0x5C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_D17__EIM_D17			IOMUX_PAD(0x3F4, 0x60, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_D18__EIM_D18			IOMUX_PAD(0x3F8, 0x64, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_D19__EIM_D19			IOMUX_PAD(0x3FC, 0x68, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_D20__EIM_D20			IOMUX_PAD(0x400, 0x6C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_D21__EIM_D21			IOMUX_PAD(0x404, 0x70, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_D22__EIM_D22			IOMUX_PAD(0x408, 0x74, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_D23__EIM_D23			IOMUX_PAD(0x40C, 0x78, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_D24__EIM_D24			IOMUX_PAD(0x410, 0x7C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_D25__EIM_D25			IOMUX_PAD(0x414, 0x80, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_D26__EIM_D26			IOMUX_PAD(0x418, 0x84, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_D27__EIM_D27			IOMUX_PAD(0x41C, 0x88, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_D28__EIM_D28			IOMUX_PAD(0x420, 0x8C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_D29__EIM_D29			IOMUX_PAD(0x424, 0x90, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_D30__EIM_D30			IOMUX_PAD(0x428, 0x94, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_D31__EIM_D31			IOMUX_PAD(0x42C, 0x98, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_A16__EIM_A16			IOMUX_PAD(0x430, 0x9C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_A17__EIM_A17			IOMUX_PAD(0x434, 0xA0, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_A18__EIM_A18			IOMUX_PAD(0x438, 0xA4, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_A19__EIM_A19			IOMUX_PAD(0x43C, 0xA8, 0, 0x0, 0, NO_PAD_CTRL)
+
+#define MX51_PAD_EIM_A20__EIM_A20			IOMUX_PAD(0x440, 0xAC, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_A20__GPIO2_14			IOMUX_PAD(0x440, 0xAC, 1, 0x0, 0, NO_PAD_CTRL)
+
+#define MX51_PAD_EIM_A21__EIM_A21			IOMUX_PAD(0x444, 0xB0, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_A22__EIM_A22			IOMUX_PAD(0x448, 0xB4, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_A23__EIM_A23			IOMUX_PAD(0x44C, 0xB8, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_A24__EIM_A24			IOMUX_PAD(0x450, 0xBC, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_A25__EIM_A25			IOMUX_PAD(0x454, 0xC0, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_A26__EIM_A26			IOMUX_PAD(0x458, 0xC4, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_A27__EIM_A27			IOMUX_PAD(0x45C, 0xC8, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_EB0__EIM_EB0			IOMUX_PAD(0x460, 0xCC, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_EB1__EIM_EB1			IOMUX_PAD(0x464, 0xD0, 0, 0x0, 0, NO_PAD_CTRL)
+
+#define MX51_PAD_EIM_EB2__EIM_EB2			IOMUX_PAD(0x468, 0xD4, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_EB2__FEC_MDIO			IOMUX_PAD(0x468, 0x0d4, 3, 0x954,   0, MX51_FEC_PAD_CTRL)
+
+#define MX51_PAD_EIM_EB3__EIM_EB3			IOMUX_PAD(0x46C, 0xD8, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_EB3__FEC_RDATA1			IOMUX_PAD(0x46c, 0x0d8, 3, 0x95c,   0, MX51_FEC_PAD_CTRL)
+
+#define MX51_PAD_EIM_OE__EIM_OE				IOMUX_PAD(0x470, 0xDC, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_CS0__EIM_CS0			IOMUX_PAD(0x474, 0xE0, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_CS1__EIM_CS1			IOMUX_PAD(0x478, 0xE4, 0, 0x0, 0, NO_PAD_CTRL)
+
+#define MX51_PAD_EIM_CS2__EIM_CS2			IOMUX_PAD(0x47C, 0xE8, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_CS2__FEC_RDATA2			IOMUX_PAD(0x47c, 0x0e8, 3, 0x960,   0, MX51_FEC_PAD_CTRL)
+
+#define MX51_PAD_EIM_CS3__EIM_CS3			IOMUX_PAD(0x480, 0xEC, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_CS3__FEC_RDATA3			IOMUX_PAD(0x480, 0x0ec, 3, 0x964,   0, MX51_FEC_PAD_CTRL)
+
+#define MX51_PAD_EIM_CS4__EIM_CS4			IOMUX_PAD(0x484, 0xF0, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_CS4__FEC_RX_ER			IOMUX_PAD(0x484, 0x0f0, 3, 0x970,   0, MX51_FEC_PAD_CTRL)
+
+#define MX51_PAD_EIM_CS5__EIM_CS5			IOMUX_PAD(0x488, 0xF4, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_CS5__FEC_CRS			IOMUX_PAD(0x52C, 0xF4, 3, 0x950, 0, MX51_FEC_PAD_CTRL)
+
+#define MX51_PAD_EIM_DTACK__EIM_DTACK			IOMUX_PAD(0x48C, 0xF8, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_LBA__EIM_LBA			IOMUX_PAD(0x494, 0xFC, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_CRE__EIM_CRE			IOMUX_PAD(0x4A0, 0x100, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DRAM_CS1__DRAM_CS1			IOMUX_PAD(0x4D0, 0x104, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_WE_B__NANDF_WE_B			IOMUX_PAD(0x4E4, 0x108, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_RE_B__NANDF_RE_B			IOMUX_PAD(0x4E8, 0x10C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_ALE__NANDF_ALE			IOMUX_PAD(0x4EC, 0x110, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_CLE__NANDF_CLE			IOMUX_PAD(0x4F0, 0x114, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_WP_B__NANDF_WP_B			IOMUX_PAD(0x4F4, 0x118, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_RB0__NANDF_RB0			IOMUX_PAD(0x4F8, 0x11C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_RB1__NANDF_RB1			IOMUX_PAD(0x4FC, 0x120, 0, 0x0, 0, NO_PAD_CTRL)
+
+#define MX51_PAD_NANDF_RB2__NANDF_RB2			IOMUX_PAD(0x500, 0x124, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_RB2__FEC_COL			IOMUX_PAD(0x500, 0x124, 1, 0x94c, 0, MX51_FEC_PAD_CTRL)
+
+#define MX51_PAD_NANDF_RB3__NANDF_RB3			IOMUX_PAD(0x504, 0x128, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_RB3__FEC_RX_CLK			IOMUX_PAD(0x504, 0x128, 1, 0x968, 0, MX51_FEC_PAD_CTRL)
+
+#define MX51_PAD_NANDF_RB4__NANDF_RB4			IOMUX_PAD(0x514, 0x12C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_RB5__NANDF_RB5			IOMUX_PAD(0x5D8, 0x130, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_RB6__FEC_RDATA0			IOMUX_PAD(0x5DC, 0x16C, 2, 0x958, 0, MX51_FEC_PAD_CTRL)
+
+#define MX51_PAD_NANDF_RB7__NANDF_RB7			IOMUX_PAD(0x5E0, 0x138, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_RB7__FEC_TX_ER			IOMUX_PAD(0x5E0, 0x138, 2, 0x0, 0, NO_PAD_CTRL)
+
+#define MX51_PAD_NANDF_CS0__NANDF_CS0			IOMUX_PAD(0x518, 0x130, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_CS1__NANDF_CS1			IOMUX_PAD(0x51C, 0x134, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_CS2__NANDF_CS2			IOMUX_PAD(0x520, 0x138, 0, 0x0, 0, NO_PAD_CTRL)
+
+#define MX51_PAD_NANDF_CS3__NANDF_CS3			IOMUX_PAD(0x524, 0x13C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_CS3__FEC_MDC			IOMUX_PAD(0x524, 0x13C, 2, 0x0, 0,MX51_FEC_PAD_CTRL)
+
+#define MX51_PAD_NANDF_CS4__NANDF_CS4			IOMUX_PAD(0x528, 0x140, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_CS4__FEC_TDATA1			IOMUX_PAD(0x528, 0x140, 2, 0x0, 0, MX51_FEC_PAD_CTRL)
+
+#define MX51_PAD_NANDF_CS5__NANDF_CS5			IOMUX_PAD(0x52C, 0x144, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_CS5__FEC_TDATA2			IOMUX_PAD(0x52C, 0x144, 2, 0x0, 0, MX51_FEC_PAD_CTRL)
+
+#define MX51_PAD_NANDF_CS6__NANDF_CS6			IOMUX_PAD(0x530, 0x148, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_CS6__FEC_TDATA3			IOMUX_PAD(0x530, 0x148, 2, 0x0, 0, MX51_FEC_PAD_CTRL)
+
+#define MX51_PAD_NANDF_CS7__NANDF_CS7			IOMUX_PAD(0x534, 0x14C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_CS7__FEC_TX_EN			IOMUX_PAD(0x534, 0x14C, 1, 0x0, 0, MX51_FEC_PAD_CTRL)
+
+#define MX51_PAD_NANDF_RDY_INT__NANDF_RDY_INT		IOMUX_PAD(0x538, 0x150, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_RDY_INT__FEC_TX_CLK		IOMUX_PAD(0x538, 0x150, 1, 0x974, 0, MX51_FEC_PAD_CTRL)
+
+#define MX51_PAD_NANDF_D15__NANDF_D15			IOMUX_PAD(0x53C, 0x154, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_D14__NANDF_D14			IOMUX_PAD(0x540, 0x158, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_D13__NANDF_D13			IOMUX_PAD(0x544, 0x15C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_D12__NANDF_D12			IOMUX_PAD(0x548, 0x160, 0, 0x0, 0, NO_PAD_CTRL)
+
+#define MX51_PAD_NANDF_D11__NANDF_D11			IOMUX_PAD(0x54C, 0x164, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_D11__FEC_RX_DV			IOMUX_PAD(0x54C, 0x164, 2, 0x96c, 0, MX51_FEC_PAD_CTRL)
+
+#define MX51_PAD_NANDF_D10__NANDF_D10			IOMUX_PAD(0x550, 0x168, 0, 0x0, 0, NO_PAD_CTRL)
+
+#define MX51_PAD_NANDF_D9__NANDF_D9			IOMUX_PAD(0x554, 0x16C, 0, 0x0, 0, NO_PAD_CTRL)
+
+#define MX51_PAD_NANDF_D8__NANDF_D8			IOMUX_PAD(0x558, 0x170, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_D8__FEC_TDATA0			IOMUX_PAD(0x558, 0x170, 2, 0x0, 0, MX51_FEC_PAD_CTRL)
+
+#define MX51_PAD_NANDF_D7__NANDF_D7			IOMUX_PAD(0x55C, 0x174, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_D6__NANDF_D6			IOMUX_PAD(0x560, 0x178, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_D5__NANDF_D5			IOMUX_PAD(0x564, 0x17C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_D4__NANDF_D4			IOMUX_PAD(0x568, 0x180, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_D3__NANDF_D3			IOMUX_PAD(0x56C, 0x184, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_D2__NANDF_D2			IOMUX_PAD(0x570, 0x188, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_D1__NANDF_D1			IOMUX_PAD(0x574, 0x18C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_D0__NANDF_D0			IOMUX_PAD(0x578, 0x190, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_CSI1_D8__CSI1_D8			IOMUX_PAD(0x57C, 0x194, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_CSI1_D9__CSI1_D9			IOMUX_PAD(0x580, 0x198, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_CSI1_D10__CSI1_D10			IOMUX_PAD(0x584, 0x19C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_CSI1_D11__CSI1_D11			IOMUX_PAD(0x588, 0x1A0, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_CSI1_D12__CSI1_D12			IOMUX_PAD(0x58C, 0x1A4, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_CSI1_D13__CSI1_D13			IOMUX_PAD(0x590, 0x1A8, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_CSI1_D14__CSI1_D14			IOMUX_PAD(0x594, 0x1AC, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_CSI1_D15__CSI1_D15			IOMUX_PAD(0x598, 0x1B0, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_CSI1_D16__CSI1_D16			IOMUX_PAD(0x59C, 0x1B4, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_CSI1_D17__CSI1_D17			IOMUX_PAD(0x5A0, 0x1B8, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_CSI1_D18__CSI1_D18			IOMUX_PAD(0x5A4, 0x1BC, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_CSI1_D19__CSI1_D19			IOMUX_PAD(0x5A8, 0x1C0, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_CSI1_VSYNC__CSI1_VSYNC			IOMUX_PAD(0x5AC, 0x1C4, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_CSI1_HSYNC__CSI1_HSYNC			IOMUX_PAD(0x5B0, 0x1C8, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_CSI1_PIXCLK__CSI1_PIXCLK		IOMUX_PAD(0x5B4, NON_MUX_I, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_CSI1_MCLK__CSI1_MCLK			IOMUX_PAD(0x5B8, NON_MUX_I, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_CSI1_PKE0__CSI1_PKE0			IOMUX_PAD(0x860, NON_MUX_I, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_CSI2_D12__CSI2_D12			IOMUX_PAD(0x5BC, 0x1CC, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_CSI2_D13__CSI2_D13			IOMUX_PAD(0x5C0, 0x1D0, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_CSI2_D14__CSI2_D14			IOMUX_PAD(0x5C4, 0x1D4, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_CSI2_D15__CSI2_D15			IOMUX_PAD(0x5C8, 0x1D8, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_CSI2_D16__CSI2_D16			IOMUX_PAD(0x5CC, 0x1DC, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_CSI2_D17__CSI2_D17			IOMUX_PAD(0x5D0, 0x1E0, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_CSI2_D18__CSI2_D18			IOMUX_PAD(0x5D4, 0x1E4, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_CSI2_D19__CSI2_D19			IOMUX_PAD(0x5D8, 0x1E8, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_CSI2_VSYNC__CSI2_VSYNC			IOMUX_PAD(0x5DC, 0x1EC, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_CSI2_HSYNC__CSI2_HSYNC			IOMUX_PAD(0x5E0, 0x1F0, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_CSI2_PIXCLK__CSI2_PIXCLK		IOMUX_PAD(0x5E4, 0x1F4, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_CSI2_PKE0__CSI2_PKE0			IOMUX_PAD(0x81C, NON_MUX_I, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_I2C1_CLK__I2C1_CLK			IOMUX_PAD(0x5E8, 0x1F8, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_I2C1_DAT__I2C1_DAT			IOMUX_PAD(0x5EC, 0x1FC, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_AUD3_BB_TXD__AUD3_BB_TXD		IOMUX_PAD(0x5F0, 0x200, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_AUD3_BB_RXD__AUD3_BB_RXD		IOMUX_PAD(0x5F4, 0x204, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_AUD3_BB_CK__AUD3_BB_CK			IOMUX_PAD(0x5F8, 0x208, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_AUD3_BB_FS__AUD3_BB_FS			IOMUX_PAD(0x5FC, 0x20C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_CSPI1_MOSI__CSPI1_MOSI			IOMUX_PAD(0x600, 0x210, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_CSPI1_MISO__CSPI1_MISO			IOMUX_PAD(0x604, 0x214, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_CSPI1_SS0__CSPI1_SS0			IOMUX_PAD(0x608, 0x218, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_CSPI1_SS1__CSPI1_SS1			IOMUX_PAD(0x60C, 0x21C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_CSPI1_RDY__CSPI1_RDY			IOMUX_PAD(0x610, 0x220, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_CSPI1_SCLK__CSPI1_SCLK			IOMUX_PAD(0x614, 0x224, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_UART1_RXD__UART1_RXD			IOMUX_PAD(0x618, 0x228, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_UART1_TXD__UART1_TXD			IOMUX_PAD(0x61C, 0x22C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_UART1_RTS__UART1_RTS			IOMUX_PAD(0x620, 0x230, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_UART1_CTS__UART1_CTS			IOMUX_PAD(0x624, 0x234, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_UART2_RXD__UART2_RXD			IOMUX_PAD(0x628, 0x238, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_UART2_TXD__UART2_TXD			IOMUX_PAD(0x62C, 0x23C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_UART3_RXD__UART3_RXD			IOMUX_PAD(0x630, 0x240, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_UART3_TXD__UART3_TXD			IOMUX_PAD(0x634, 0x244, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_OWIRE_LINE__OWIRE_LINE			IOMUX_PAD(0x638, 0x248, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_KEY_ROW0__KEY_ROW0			IOMUX_PAD(0x63C, 0x24C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_KEY_ROW1__KEY_ROW1			IOMUX_PAD(0x640, 0x250, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_KEY_ROW2__KEY_ROW2			IOMUX_PAD(0x644, 0x254, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_KEY_ROW3__KEY_ROW3			IOMUX_PAD(0x648, 0x258, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_KEY_COL0__KEY_COL0			IOMUX_PAD(0x64C, 0x25C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_KEY_COL1__KEY_COL1			IOMUX_PAD(0x650, 0x260, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_KEY_COL2__KEY_COL2			IOMUX_PAD(0x654, 0x264, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_KEY_COL3__KEY_COL3			IOMUX_PAD(0x658, 0x268, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_KEY_COL4__KEY_COL4			IOMUX_PAD(0x65C, 0x26C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_KEY_COL5__KEY_COL5			IOMUX_PAD(0x660, 0x270, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_USBH1_CLK__USBH1_CLK			IOMUX_PAD(0x678, 0x278, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_USBH1_DIR__USBH1_DIR			IOMUX_PAD(0x67C, 0x27C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_USBH1_STP__USBH1_STP			IOMUX_PAD(0x680, 0x280, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_USBH1_NXT__USBH1_NXT			IOMUX_PAD(0x684, 0x284, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_USBH1_DATA0__USBH1_DATA0		IOMUX_PAD(0x688, 0x288, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_USBH1_DATA1__USBH1_DATA1		IOMUX_PAD(0x68C, 0x28C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_USBH1_DATA2__USBH1_DATA2		IOMUX_PAD(0x690, 0x290, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_USBH1_DATA3__USBH1_DATA3		IOMUX_PAD(0x694, 0x294, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_USBH1_DATA4__USBH1_DATA4		IOMUX_PAD(0x698, 0x298, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_USBH1_DATA5__USBH1_DATA5		IOMUX_PAD(0x69C, 0x29C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_USBH1_DATA6__USBH1_DATA6		IOMUX_PAD(0x6A0, 0x2A0, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_USBH1_DATA7__USBH1_DATA7		IOMUX_PAD(0x6A4, 0x2A4, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DI1_PIN11__DI1_PIN11			IOMUX_PAD(0x6A8, 0x2A8, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DI1_PIN12__DI1_PIN12			IOMUX_PAD(0x6AC, 0x2AC, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DI1_PIN13__DI1_PIN13			IOMUX_PAD(0x6B0, 0x2B0, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DI1_D0_CS__DI1_D0_CS			IOMUX_PAD(0x6B4, 0x2B4, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DI1_D1_CS__DI1_D1_CS			IOMUX_PAD(0x6B8, 0x2B8, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISPB2_SER_DIN__DISPB2_SER_DIN		IOMUX_PAD(0x6BC, 0x2BC, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISPB2_SER_DIO__DISPB2_SER_DIO		IOMUX_PAD(0x6C0, 0x2C0, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISPB2_SER_CLK__DISPB2_SER_CLK		IOMUX_PAD(0x6C4, 0x2C4, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISPB2_SER_RS__DISPB2_SER_RS		IOMUX_PAD(0x6C8, 0x2C8, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISP1_DAT0__DISP1_DAT0			IOMUX_PAD(0x6CC, 0x2CC, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISP1_DAT1__DISP1_DAT1			IOMUX_PAD(0x6D0, 0x2D0, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISP1_DAT2__DISP1_DAT2			IOMUX_PAD(0x6D4, 0x2D4, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISP1_DAT3__DISP1_DAT3			IOMUX_PAD(0x6D8, 0x2D8, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISP1_DAT4__DISP1_DAT4			IOMUX_PAD(0x6DC, 0x2DC, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISP1_DAT5__DISP1_DAT5			IOMUX_PAD(0x6E0, 0x2E0, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISP1_DAT6__DISP1_DAT6			IOMUX_PAD(0x6E4, 0x2E4, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISP1_DAT7__DISP1_DAT7			IOMUX_PAD(0x6E8, 0x2E8, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISP1_DAT8__DISP1_DAT8			IOMUX_PAD(0x6EC, 0x2EC, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISP1_DAT9__DISP1_DAT9			IOMUX_PAD(0x6F0, 0x2F0, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISP1_DAT10__DISP1_DAT10		IOMUX_PAD(0x6F4, 0x2F4, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISP1_DAT11__DISP1_DAT11		IOMUX_PAD(0x6F8, 0x2F8, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISP1_DAT12__DISP1_DAT12		IOMUX_PAD(0x6FC, 0x2FC, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISP1_DAT13__DISP1_DAT13		IOMUX_PAD(0x700, 0x300, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISP1_DAT14__DISP1_DAT14		IOMUX_PAD(0x704, 0x304, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISP1_DAT15__DISP1_DAT15		IOMUX_PAD(0x708, 0x308, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISP1_DAT16__DISP1_DAT16		IOMUX_PAD(0x70C, 0x30C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISP1_DAT17__DISP1_DAT17		IOMUX_PAD(0x710, 0x310, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISP1_DAT18__DISP1_DAT18		IOMUX_PAD(0x714, 0x314, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISP1_DAT19__DISP1_DAT19		IOMUX_PAD(0x718, 0x318, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISP1_DAT20__DISP1_DAT20		IOMUX_PAD(0x71C, 0x31C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISP1_DAT21__DISP1_DAT21		IOMUX_PAD(0x720, 0x320, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISP1_DAT22__DISP1_DAT22		IOMUX_PAD(0x724, 0x324, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISP1_DAT23__DISP1_DAT23		IOMUX_PAD(0x728, 0x328, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DI1_PIN3__DI1_PIN3			IOMUX_PAD(0x72C, 0x32C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DI1_PIN2__DI1_PIN2			IOMUX_PAD(0x734, 0x330, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DI_GP1__DI_GP1				IOMUX_PAD(0x73C, 0x334, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DI_GP2__DI_GP2				IOMUX_PAD(0x740, 0x338, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DI_GP3__DI_GP3				IOMUX_PAD(0x744, 0x33C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DI2_PIN4__DI2_PIN4			IOMUX_PAD(0x748, 0x340, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DI2_PIN2__DI2_PIN2			IOMUX_PAD(0x74C, 0x344, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DI2_PIN3__DI2_PIN3			IOMUX_PAD(0x750, 0x348, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DI2_DISP_CLK__DI2_DISP_CLK		IOMUX_PAD(0x754, 0x34C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DI_GP4__DI_GP4				IOMUX_PAD(0x758, 0x350, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISP2_DAT0__DISP2_DAT0			IOMUX_PAD(0x75C, 0x354, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISP2_DAT1__DISP2_DAT1			IOMUX_PAD(0x760, 0x358, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISP2_DAT2__DISP2_DAT2			IOMUX_PAD(0x764, 0x35C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISP2_DAT3__DISP2_DAT3			IOMUX_PAD(0x768, 0x360, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISP2_DAT4__DISP2_DAT4			IOMUX_PAD(0x76C, 0x364, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISP2_DAT5__DISP2_DAT5			IOMUX_PAD(0x770, 0x368, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISP2_DAT6__DISP2_DAT6			IOMUX_PAD(0x774, 0x36C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISP2_DAT7__DISP2_DAT7			IOMUX_PAD(0x778, 0x370, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISP2_DAT8__DISP2_DAT8			IOMUX_PAD(0x77C, 0x374, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISP2_DAT9__DISP2_DAT9			IOMUX_PAD(0x780, 0x378, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISP2_DAT10__DISP2_DAT10		IOMUX_PAD(0x784, 0x37C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISP2_DAT11__DISP2_DAT11		IOMUX_PAD(0x788, 0x380, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISP2_DAT12__DISP2_DAT12		IOMUX_PAD(0x78C, 0x384, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISP2_DAT13__DISP2_DAT13		IOMUX_PAD(0x790, 0x388, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISP2_DAT14__DISP2_DAT14		IOMUX_PAD(0x794, 0x38C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISP2_DAT15__DISP2_DAT15		IOMUX_PAD(0x798, 0x390, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_SD1_CMD__SD1_CMD			IOMUX_PAD(0x79C, 0x394, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_SD1_CLK__SD1_CLK			IOMUX_PAD(0x7A0, 0x398, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_SD1_DATA0__SD1_DATA0			IOMUX_PAD(0x7A4, 0x39C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_SD1_DATA1__SD1_DATA1			IOMUX_PAD(0x7A8, 0x3A0, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_SD1_DATA2__SD1_DATA2			IOMUX_PAD(0x7AC, 0x3A4, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_SD1_DATA3__SD1_DATA3			IOMUX_PAD(0x7B0, 0x3A8, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_GPIO1_0__GPIO1_0			IOMUX_PAD(0x7B4, 0x3AC, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_GPIO1_1__GPIO1_1			IOMUX_PAD(0x7B8, 0x3B0, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_SD2_CMD__SD2_CMD			IOMUX_PAD(0x7BC, 0x3B4, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_SD2_CLK__SD2_CLK			IOMUX_PAD(0x7C0, 0x3B8, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_SD2_DATA0__SD2_DATA0			IOMUX_PAD(0x7C4, 0x3BC, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_SD2_DATA1__SD2_DATA1			IOMUX_PAD(0x7C8, 0x3C0, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_SD2_DATA2__SD2_DATA2			IOMUX_PAD(0x7CC, 0x3C4, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_SD2_DATA3__SD2_DATA3			IOMUX_PAD(0x7D0, 0x3C8, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_GPIO1_2__GPIO1_2			IOMUX_PAD(0x7D4, 0x3CC, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_GPIO1_3__GPIO1_3			IOMUX_PAD(0x7D8, 0x3D0, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_PMIC_INT_REQ__PMIC_INT_REQ		IOMUX_PAD(0x7FC, 0x3D4, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_GPIO1_4__GPIO1_4			IOMUX_PAD(0x804, 0x3D8, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_GPIO1_5__GPIO1_5			IOMUX_PAD(0x808, 0x3DC, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_GPIO1_6__GPIO1_6			IOMUX_PAD(0x80C, 0x3E0, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_GPIO1_7__GPIO1_7			IOMUX_PAD(0x810, 0x3E4, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_GPIO1_8__GPIO1_8			IOMUX_PAD(0x814, 0x3E8, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_GPIO1_9__GPIO1_9			IOMUX_PAD(0x818, 0x3EC, 0, 0x0, 0, NO_PAD_CTRL)
+#endif /* __MACH_IOMUX_MX51_H__ */
+
diff --git a/arch/arm/mach-imx/include/mach/iomux-v3.h b/arch/arm/mach-imx/include/mach/iomux-v3.h
index 1d660a0..198286a 100644
--- a/arch/arm/mach-imx/include/mach/iomux-v3.h
+++ b/arch/arm/mach-imx/include/mach/iomux-v3.h
@@ -84,13 +84,17 @@ struct pad_desc {
 #define PAD_CTL_OUTPUT_CMOS		(0)
 #define PAD_CTL_OUTPUT_OPEN_DRAIN	(1 << 3)
 
-#define PAD_CTL_DRIVE_STRENGTH_NORM	(0)
-#define PAD_CTL_DRIVE_STRENGTH_HIGH	(1 << 1)
-#define PAD_CTL_DRIVE_STRENGTH_MAX	(2 << 1)
+#define PAD_CTL_DRIVE_STRENGTH_LOW	(0 << 1)
+#define PAD_CTL_DRIVE_STRENGTH_MED	(1 << 1)
+#define PAD_CTL_DRIVE_STRENGTH_HIGH	(2 << 1)
+#define PAD_CTL_DRIVE_STRENGTH_MAX	(3 << 1)
 
 #define PAD_CTL_SLEW_RATE_SLOW		0
 #define PAD_CTL_SLEW_RATE_FAST		1
 
+#define PAD_CTL_DRV_VOT_LOW            (0 << 13)
+#define PAD_CTL_DRV_VOT_HIGH           (1 << 13)
+
 /*
  * setups a single pad:
  * 	- reserves the pad so that it is not claimed by another driver
diff --git a/arch/arm/mach-imx/speed-imx51.c b/arch/arm/mach-imx/speed-imx51.c
new file mode 100644
index 0000000..dcfc874
--- /dev/null
+++ b/arch/arm/mach-imx/speed-imx51.c
@@ -0,0 +1,163 @@
+#include <common.h>
+#include <asm/io.h>
+#include <asm-generic/div64.h>
+#include <mach/imx51-regs.h>
+#include "mach/clock-imx51.h"
+
+static u32 ccm_readl(u32 ofs)
+{
+	return readl(MX51_CCM_BASE_ADDR + ofs);
+}
+
+static unsigned long ckil_get_rate(void)
+{
+	return 32768;
+}
+
+static unsigned long osc_get_rate(void)
+{
+	return 24000000;
+}
+
+static unsigned long fpm_get_rate(void)
+{
+	return ckil_get_rate() * 512;
+}
+
+static unsigned long pll_get_rate(void __iomem *pllbase)
+{
+	long mfi, mfn, mfd, pdf, ref_clk, mfn_abs;
+	unsigned long dp_op, dp_mfd, dp_mfn, dp_ctl, pll_hfsm, dbl;
+	u64 temp;
+	unsigned long parent_rate;
+
+	dp_ctl = readl(pllbase + MX51_PLL_DP_CTL);
+
+	if ((dp_ctl & MX51_PLL_DP_CTL_REF_CLK_SEL_MASK) == 0)
+		parent_rate = fpm_get_rate();
+	else
+		parent_rate = osc_get_rate();
+
+	pll_hfsm = dp_ctl & MX51_PLL_DP_CTL_HFSM;
+	dbl = dp_ctl & MX51_PLL_DP_CTL_DPDCK0_2_EN;
+
+	if (pll_hfsm == 0) {
+		dp_op = readl(pllbase + MX51_PLL_DP_OP);
+		dp_mfd = readl(pllbase + MX51_PLL_DP_MFD);
+		dp_mfn = readl(pllbase + MX51_PLL_DP_MFN);
+	} else {
+		dp_op = readl(pllbase + MX51_PLL_DP_HFS_OP);
+		dp_mfd = readl(pllbase + MX51_PLL_DP_HFS_MFD);
+		dp_mfn = readl(pllbase + MX51_PLL_DP_HFS_MFN);
+	}
+	pdf = dp_op & MX51_PLL_DP_OP_PDF_MASK;
+	mfi = (dp_op & MX51_PLL_DP_OP_MFI_MASK) >> MX51_PLL_DP_OP_MFI_OFFSET;
+	mfi = (mfi <= 5) ? 5 : mfi;
+	mfd = dp_mfd & MX51_PLL_DP_MFD_MASK;
+	mfn = mfn_abs = dp_mfn & MX51_PLL_DP_MFN_MASK;
+	/* Sign extend to 32-bits */
+	if (mfn >= 0x04000000) {
+		mfn |= 0xFC000000;
+		mfn_abs = -mfn;
+	}
+
+	ref_clk = 2 * parent_rate;
+	if (dbl != 0)
+		ref_clk *= 2;
+
+	ref_clk /= (pdf + 1);
+	temp = (u64)ref_clk * mfn_abs;
+	do_div(temp, mfd + 1);
+	if (mfn < 0)
+		temp = -temp;
+	temp = (ref_clk * mfi) + temp;
+
+	return temp;
+}
+
+static unsigned long pll1_main_get_rate(void)
+{
+	return pll_get_rate((void __iomem *)MX51_PLL1_BASE_ADDR);
+}
+
+static unsigned long pll2_sw_get_rate(void)
+{
+	return pll_get_rate((void __iomem *)MX51_PLL2_BASE_ADDR);
+}
+
+static unsigned long pll3_sw_get_rate(void)
+{
+	return pll_get_rate((void __iomem *)MX51_PLL3_BASE_ADDR);
+}
+
+unsigned long imx_get_uartclk(void)
+{
+	u32 reg, prediv, podf;
+	unsigned long parent_rate;
+
+	parent_rate = pll2_sw_get_rate();
+
+	reg = ccm_readl(MX51_CCM_CSCDR1);
+	prediv = ((reg & MX51_CCM_CSCDR1_UART_CLK_PRED_MASK) >>
+		  MX51_CCM_CSCDR1_UART_CLK_PRED_OFFSET) + 1;
+	podf = ((reg & MX51_CCM_CSCDR1_UART_CLK_PODF_MASK) >>
+		MX51_CCM_CSCDR1_UART_CLK_PODF_OFFSET) + 1;
+
+	return parent_rate / (prediv * podf);
+}
+
+static unsigned long imx_get_ahbclk(void)
+{
+	u32 reg, div;
+
+	reg = ccm_readl(MX51_CCM_CBCDR);
+	div = ((reg >> 10) & 0x7) + 1;
+
+	return pll2_sw_get_rate() / div;
+}
+
+unsigned long imx_get_ipgclk(void)
+{
+	u32 reg, div;
+
+	reg = ccm_readl(MX51_CCM_CBCDR);
+	div = ((reg >> 8) & 0x3) + 1;
+
+	return imx_get_ahbclk() / div;
+}
+
+unsigned long imx_get_gptclk(void)
+{
+	return imx_get_ipgclk();
+}
+
+unsigned long imx_get_fecclk(void)
+{
+	return imx_get_ipgclk();
+}
+
+unsigned long imx_get_mmcclk(void)
+{
+	u32 reg, prediv, podf, rate;
+
+	reg = ccm_readl(MX51_CCM_CSCDR1);
+	prediv = ((reg & MX51_CCM_CSCDR1_ESDHC1_MSHC1_CLK_PRED_MASK) >>
+			MX51_CCM_CSCDR1_ESDHC1_MSHC1_CLK_PRED_OFFSET) + 1;
+	podf = ((reg & MX51_CCM_CSCDR1_ESDHC1_MSHC1_CLK_PODF_MASK) >>
+			MX51_CCM_CSCDR1_ESDHC1_MSHC1_CLK_PODF_OFFSET) + 1;
+
+	rate = pll2_sw_get_rate() / (prediv * podf);
+
+	return rate;
+}
+
+void imx_dump_clocks(void)
+{
+	printf("pll1: %ld\n", pll1_main_get_rate());
+	printf("pll2: %ld\n", pll2_sw_get_rate());
+	printf("pll3: %ld\n", pll3_sw_get_rate());
+	printf("uart: %ld\n", imx_get_uartclk());
+	printf("ipg:  %ld\n", imx_get_ipgclk());
+	printf("fec:  %ld\n", imx_get_fecclk());
+	printf("gpt:  %ld\n", imx_get_gptclk());
+}
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index 1d3f4f7..fc141a4 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -1,5 +1,5 @@
 
-#if defined CONFIG_ARCH_IMX25 || defined CONFIG_ARCH_IMX35
+#if defined CONFIG_ARCH_IMX25 || defined CONFIG_ARCH_IMX35 || defined CONFIG_ARCH_IMX51
 #include <mach/barebox.lds.h>
 #endif
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
