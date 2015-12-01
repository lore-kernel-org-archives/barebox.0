Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x230.google.com ([2a00:1450:400c:c09::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a3mpS-0004GK-GE
 for barebox@lists.infradead.org; Tue, 01 Dec 2015 15:26:58 +0000
Received: by wmww144 with SMTP id w144so177702250wmw.1
 for <barebox@lists.infradead.org>; Tue, 01 Dec 2015 07:26:32 -0800 (PST)
From: Florian Vallee <fvallee@eukrea.fr>
Date: Tue,  1 Dec 2015 16:26:23 +0100
Message-Id: <1448983584-14939-2-git-send-email-fvallee@eukrea.fr>
In-Reply-To: <1448983584-14939-1-git-send-email-fvallee@eukrea.fr>
References: <1448983584-14939-1-git-send-email-fvallee@eukrea.fr>
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
Subject: [RFC 1/2] drivers: imx_adc: import and adapt imx_adc from linux
To: barebox@lists.infradead.org
Cc: Florian Vallee <fvallee@eukrea.fr>

---
 arch/arm/mach-imx/include/mach/imx25-regs.h |   1 +
 drivers/misc/Kconfig                        |   4 +
 drivers/misc/Makefile                       |   1 +
 drivers/misc/imx_adc.c                      | 214 ++++++++++++++++++++++++
 drivers/misc/imx_adc.h                      | 110 +++++++++++++
 drivers/misc/imx_adc_reg.h                  | 247 ++++++++++++++++++++++++++++
 6 files changed, 577 insertions(+)
 create mode 100644 drivers/misc/imx_adc.c
 create mode 100644 drivers/misc/imx_adc.h
 create mode 100644 drivers/misc/imx_adc_reg.h

diff --git a/arch/arm/mach-imx/include/mach/imx25-regs.h b/arch/arm/mach-imx/include/mach/imx25-regs.h
index 7181276..30ca4b2 100644
--- a/arch/arm/mach-imx/include/mach/imx25-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx25-regs.h
@@ -58,6 +58,7 @@
 
 #define MX25_CSPI3_BASE_ADDR		0x50004000
 #define MX25_CSPI2_BASE_ADDR		0x50010000
+#define MX25_TSC_BASE_ADDR              0x50030000
 #define MX25_FEC_BASE_ADDR		0x50038000
 #define MX25_SSI2_BASE_ADDR		0x50014000
 #define MX25_SSI1_BASE_ADDR		0x50034000
diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
index 7a5b146..e37e0b1 100644
--- a/drivers/misc/Kconfig
+++ b/drivers/misc/Kconfig
@@ -19,4 +19,8 @@ config STATE_DRV
 	tristate "state driver"
 	depends on STATE
 
+config IMX_ADC
+	bool "IMX ADC driver"
+	depends on ARCH_IMX25
+
 endmenu
diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
index 487e4b8..9b00f82 100644
--- a/drivers/misc/Makefile
+++ b/drivers/misc/Makefile
@@ -5,3 +5,4 @@
 obj-$(CONFIG_JTAG)		+= jtag.o
 obj-$(CONFIG_SRAM)		+= sram.o
 obj-$(CONFIG_STATE_DRV)		+= state.o
+obj-$(CONFIG_IMX_ADC)		+= imx_adc.o
diff --git a/drivers/misc/imx_adc.c b/drivers/misc/imx_adc.c
new file mode 100644
index 0000000..3e5ee88
--- /dev/null
+++ b/drivers/misc/imx_adc.c
@@ -0,0 +1,214 @@
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <mach/imx25-regs.h>
+
+#include "imx_adc.h"
+#include "imx_adc_reg.h"
+
+unsigned long tsc_base;
+
+enum IMX_ADC_STATUS imx_adc_read_general(unsigned short *result)
+{
+	unsigned long reg;
+	unsigned int data_num = 0;
+
+	reg = __raw_readl(tsc_base + GCQCR);
+	reg |= CQCR_FQS;
+	__raw_writel(reg, tsc_base + GCQCR);
+
+	while (!(__raw_readl(tsc_base + GCQSR) & CQSR_EOQ))
+		continue;
+	reg = __raw_readl(tsc_base + GCQCR);
+	reg &= ~CQCR_FQS;
+	__raw_writel(reg, tsc_base + GCQCR);
+	reg = __raw_readl(tsc_base + GCQSR);
+	reg |= CQSR_EOQ;
+	__raw_writel(reg, tsc_base + GCQSR);
+
+	while (!(__raw_readl(tsc_base + GCQSR) & CQSR_EMPT)) {
+		result[data_num] = __raw_readl(tsc_base + GCQFIFO) >>
+				 GCQFIFO_ADCOUT_SHIFT;
+		data_num++;
+	}
+	printf("data_num = %x\n", data_num);
+
+	return IMX_ADC_SUCCESS;
+}
+
+/*!
+ * This function triggers a conversion and returns one sampling result of one
+ * channel.
+ *
+ * @param        channel   The channel to be sampled
+ * @param        result    The pointer to the conversion result. The memory
+ *                         should be allocated by the caller of this function.
+ *
+ * @return       This function returns IMX_ADC_SUCCESS if successful.
+ */
+enum IMX_ADC_STATUS imx_adc_convert(enum t_channel channel,
+				    unsigned short *result)
+{
+	unsigned long reg;
+	int lastitemid;
+
+	switch (channel) {
+	case GER_PURPOSE_ADC0:
+		lastitemid = 0;
+		reg = (0xf << CQCR_FIFOWATERMARK_SHIFT) |
+		      (lastitemid << CQCR_LAST_ITEM_ID_SHIFT) | CQCR_QSM_FQS;
+		__raw_writel(reg, tsc_base + GCQCR);
+
+		reg = TSC_GENERAL_ADC_GCC0;
+		reg |= (15 << CC_NOS_SHIFT) | (16 << CC_SETTLING_TIME_SHIFT);
+		__raw_writel(reg, tsc_base + GCC0);
+
+		imx_adc_read_general(result);
+		break;
+
+	case GER_PURPOSE_ADC1:
+		lastitemid = 0;
+		reg = (0xf << CQCR_FIFOWATERMARK_SHIFT) |
+		      (lastitemid << CQCR_LAST_ITEM_ID_SHIFT) | CQCR_QSM_FQS;
+		__raw_writel(reg, tsc_base + GCQCR);
+
+		reg = TSC_GENERAL_ADC_GCC1;
+		reg |= (3 << CC_NOS_SHIFT) | (16 << CC_SETTLING_TIME_SHIFT);
+		__raw_writel(reg, tsc_base + GCC0);
+
+		imx_adc_read_general(result);
+		break;
+
+	case GER_PURPOSE_ADC2:
+		lastitemid = 0;
+		reg = (0xf << CQCR_FIFOWATERMARK_SHIFT) |
+		      (lastitemid << CQCR_LAST_ITEM_ID_SHIFT) | CQCR_QSM_FQS;
+		__raw_writel(reg, tsc_base + GCQCR);
+
+		reg = TSC_GENERAL_ADC_GCC2;
+		reg |= (3 << CC_NOS_SHIFT) | (16 << CC_SETTLING_TIME_SHIFT);
+		__raw_writel(reg, tsc_base + GCC0);
+
+		imx_adc_read_general(result);
+		break;
+
+	case GER_PURPOSE_MULTICHNNEL:
+		reg = TSC_GENERAL_ADC_GCC0;
+		reg |= (3 << CC_NOS_SHIFT) | (16 << CC_SETTLING_TIME_SHIFT);
+		__raw_writel(reg, tsc_base + GCC0);
+
+		reg = TSC_GENERAL_ADC_GCC1;
+		reg |= (3 << CC_NOS_SHIFT) | (16 << CC_SETTLING_TIME_SHIFT);
+		__raw_writel(reg, tsc_base + GCC1);
+
+		reg = TSC_GENERAL_ADC_GCC2;
+		reg |= (3 << CC_NOS_SHIFT) | (16 << CC_SETTLING_TIME_SHIFT);
+		__raw_writel(reg, tsc_base + GCC2);
+
+		reg = (GCQ_ITEM_GCC2 << GCQ_ITEM2_SHIFT) |
+		      (GCQ_ITEM_GCC1 << GCQ_ITEM1_SHIFT) |
+		      (GCQ_ITEM_GCC0 << GCQ_ITEM0_SHIFT);
+		__raw_writel(reg, tsc_base + GCQ_ITEM_7_0);
+
+		lastitemid = 2;
+		reg = (0xf << CQCR_FIFOWATERMARK_SHIFT) |
+		      (lastitemid << CQCR_LAST_ITEM_ID_SHIFT) | CQCR_QSM_FQS;
+		__raw_writel(reg, tsc_base + GCQCR);
+
+		imx_adc_read_general(result);
+		break;
+	default:
+		printf("%s: bad channel number\n", __func__);
+		return IMX_ADC_ERROR;
+	}
+
+	return IMX_ADC_SUCCESS;
+}
+
+void tsc_clk_enable(void)
+{
+	unsigned long reg;
+
+	// clk_enable(adc_data->adc_clk);
+
+	reg = __raw_readl(tsc_base + TGCR);
+	reg |= TGCR_IPG_CLK_EN;
+	__raw_writel(reg, tsc_base + TGCR);
+}
+
+void tsc_clk_disable(void)
+{
+	unsigned long reg;
+
+	// clk_disable(adc_data->adc_clk);
+
+	reg = __raw_readl(tsc_base + TGCR);
+	reg &= ~TGCR_IPG_CLK_EN;
+	__raw_writel(reg, tsc_base + TGCR);
+}
+
+void tsc_self_reset(void)
+{
+	unsigned long reg;
+
+	reg = __raw_readl(tsc_base + TGCR);
+	reg |= TGCR_TSC_RST;
+	__raw_writel(reg, tsc_base + TGCR);
+
+	while (__raw_readl(tsc_base + TGCR) & TGCR_TSC_RST)
+		continue;
+}
+
+/* Internal reference */
+void tsc_intref_enable(void)
+{
+	unsigned long reg;
+
+	reg = __raw_readl(tsc_base + TGCR);
+	reg |= TGCR_INTREFEN;
+	__raw_writel(reg, tsc_base + TGCR);
+}
+
+/*!
+ * This function initializes all ADC registers with default values. This
+ * function also registers the interrupt events.
+ *
+ * @return       This function returns IMX_ADC_SUCCESS if successful.
+ */
+int imx_adc_init(void)
+{
+	unsigned long reg;
+
+	printf("imx_adc_init()\n");
+
+	tsc_base = MX25_TSC_BASE_ADDR;
+
+	tsc_clk_enable();
+
+	/* Reset */
+	tsc_self_reset();
+
+	/* Internal reference */
+	tsc_intref_enable();
+
+	/* Set power mode */
+	reg = __raw_readl(tsc_base + TGCR) & ~TGCR_POWER_MASK;
+	reg |= TGCR_POWER_SAVE;
+	__raw_writel(reg, tsc_base + TGCR);
+
+	return 0;
+}
+
+/*!
+ * This function disables the ADC, de-registers the interrupt events.
+ *
+ * @return       This function returns IMX_ADC_SUCCESS if successful.
+ */
+enum IMX_ADC_STATUS imx_adc_deinit(void)
+{
+	printf("imx_adc_deinit()\n");
+
+	return IMX_ADC_SUCCESS;
+}
+
+device_initcall(imx_adc_init);
diff --git a/drivers/misc/imx_adc.h b/drivers/misc/imx_adc.h
new file mode 100644
index 0000000..7cc59ff
--- /dev/null
+++ b/drivers/misc/imx_adc.h
@@ -0,0 +1,110 @@
+/*
+ * Copyright 2009 Freescale Semiconductor, Inc. All Rights Reserved.
+ */
+
+/*
+ * The code contained herein is licensed under the GNU Lesser General
+ * Public License.  You may obtain a copy of the GNU Lesser General
+ * Public License Version 2.1 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/lgpl-license.html
+ * http://www.gnu.org/copyleft/lgpl.html
+ */
+
+#ifndef __ASM_ARCH_IMX_ADC_H__
+#define __ASM_ARCH_IMX_ADC_H__
+
+/*!
+ * @defgroup IMX_ADC Digitizer Driver
+ * @ingroup IMX_DRVRS
+ */
+
+/*!
+ * @file arch-mxc/imx_adc.h
+ * @brief This is the header of IMX ADC driver.
+ *
+ * @ingroup IMX_ADC
+ */
+
+/*!
+ * @enum IMX_ADC_STATUS
+ * @brief Define return values for all IMX_ADC APIs.
+ *
+ * These return values are used by all of the IMX_ADC APIs.
+ *
+ * @ingroup IMX_ADC
+ */
+enum IMX_ADC_STATUS {
+	/*! The requested operation was successfully completed. */
+	IMX_ADC_SUCCESS = 0,
+	/*! The requested operation could not be completed due to an error. */
+	IMX_ADC_ERROR = -1,
+	/*!
+	 * The requested operation failed because one or more of the
+	 * parameters was invalid.
+	 */
+	IMX_ADC_PARAMETER_ERROR = -2,
+	/*!
+	 * The requested operation could not be completed because the ADC
+	 * hardware does not support it.
+	 */
+	IMX_ADC_NOT_SUPPORTED = -3,
+	/*! Error in malloc function */
+	IMX_ADC_MALLOC_ERROR = -5,
+	/*! Error in un-subscribe event */
+	IMX_ADC_UNSUBSCRIBE_ERROR = -6,
+	/*! Event occur and not subscribed */
+	IMX_ADC_EVENT_NOT_SUBSCRIBED = -7,
+	/*! Error - bad call back */
+	IMX_ADC_EVENT_CALL_BACK = -8,
+	/*!
+	 * The requested operation could not be completed because there
+	 * are too many ADC client requests
+	 */
+	IMX_ADC_CLIENT_NBOVERFLOW = -9,
+};
+
+/*! @} */
+/*!
+ * This enumeration defines input channels for IMX ADC
+ */
+
+enum t_channel {
+	TS_X_POS,
+	TS_Y_POS,
+	GER_PURPOSE_ADC0,
+	GER_PURPOSE_ADC1,
+	GER_PURPOSE_ADC2,
+	GER_PURPOSE_MULTICHNNEL,
+};
+
+/* EXPORTED FUNCTIONS */
+
+/*!
+ * This function initializes all ADC registers with default values. This
+ * function also registers the interrupt events.
+ */
+int imx_adc_init(void);
+
+/*!
+ * This function disables the ADC, de-registers the interrupt events.
+ *
+ * @return       This function returns IMX_ADC_SUCCESS if successful.
+ */
+enum IMX_ADC_STATUS imx_adc_deinit(void);
+
+/*!
+ * This function triggers a conversion and returns one sampling result of one
+ * channel.
+ *
+ * @param        channel   The channel to be sampled
+ * @param        result    The pointer to the conversion result. The memory
+ *                         should be allocated by the caller of this function.
+ *
+ * @return       This function returns IMX_ADC_SUCCESS if successful.
+ */
+
+enum IMX_ADC_STATUS imx_adc_convert(enum t_channel channel,
+				    unsigned short *result);
+
+#endif				/* __ASM_ARCH_IMX_ADC_H__ */
diff --git a/drivers/misc/imx_adc_reg.h b/drivers/misc/imx_adc_reg.h
new file mode 100644
index 0000000..00f4792
--- /dev/null
+++ b/drivers/misc/imx_adc_reg.h
@@ -0,0 +1,247 @@
+/*
+ * Copyright 2009 Freescale Semiconductor, Inc. All Rights Reserved.
+ */
+
+/*
+ * The code contained herein is licensed under the GNU Lesser General
+ * Public License.  You may obtain a copy of the GNU Lesser General
+ * Public License Version 2.1 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/lgpl-license.html
+ * http://www.gnu.org/copyleft/lgpl.html
+ */
+
+#ifndef __IMX_ADC_H__
+#define __IMX_ADC_H__
+
+/* TSC General Config Register */
+#define TGCR                  0x000
+#define TGCR_IPG_CLK_EN       (1 << 0)
+#define TGCR_TSC_RST          (1 << 1)
+#define TGCR_FUNC_RST         (1 << 2)
+#define TGCR_SLPC             (1 << 4)
+#define TGCR_STLC             (1 << 5)
+#define TGCR_HSYNC_EN         (1 << 6)
+#define TGCR_HSYNC_POL        (1 << 7)
+#define TGCR_POWERMODE_SHIFT  8
+#define TGCR_POWER_OFF        (0x0 << TGCR_POWERMODE_SHIFT)
+#define TGCR_POWER_SAVE       (0x1 << TGCR_POWERMODE_SHIFT)
+#define TGCR_POWER_ON         (0x3 << TGCR_POWERMODE_SHIFT)
+#define TGCR_POWER_MASK       (0x3 << TGCR_POWERMODE_SHIFT)
+#define TGCR_INTREFEN         (1 << 10)
+#define TGCR_ADCCLKCFG_SHIFT  16
+#define TGCR_PD_EN            (1 << 23)
+#define TGCR_PDB_EN           (1 << 24)
+#define TGCR_PDBTIME_SHIFT    25
+#define TGCR_PDBTIME128       (0x3f << TGCR_PDBTIME_SHIFT)
+#define TGCR_PDBTIME_MASK     (0x7f << TGCR_PDBTIME_SHIFT)
+
+/* TSC General Status Register */
+#define TGSR                  0x004
+#define TCQ_INT               (1 << 0)
+#define GCQ_INT               (1 << 1)
+#define SLP_INT               (1 << 2)
+#define TCQ_DMA               (1 << 16)
+#define GCQ_DMA               (1 << 17)
+
+/* TSC IDLE Config Register */
+#define TICR                  0x008
+
+/* TouchScreen Convert Queue FIFO Register */
+#define TCQFIFO               0x400
+/* TouchScreen Convert Queue Control Register */
+#define TCQCR                 0x404
+#define CQCR_QSM_SHIFT        0
+#define CQCR_QSM_STOP         (0x0 << CQCR_QSM_SHIFT)
+#define CQCR_QSM_PEN          (0x1 << CQCR_QSM_SHIFT)
+#define CQCR_QSM_FQS          (0x2 << CQCR_QSM_SHIFT)
+#define CQCR_QSM_FQS_PEN      (0x3 << CQCR_QSM_SHIFT)
+#define CQCR_QSM_MASK         (0x3 << CQCR_QSM_SHIFT)
+#define CQCR_FQS              (1 << 2)
+#define CQCR_RPT              (1 << 3)
+#define CQCR_LAST_ITEM_ID_SHIFT   4
+#define CQCR_LAST_ITEM_ID_MASK    (0xf << CQCR_LAST_ITEM_ID_SHIFT)
+#define CQCR_FIFOWATERMARK_SHIFT  8
+#define CQCR_FIFOWATERMARK_MASK   (0xf << CQCR_FIFOWATERMARK_SHIFT)
+#define CQCR_REPEATWAIT_SHIFT     12
+#define CQCR_REPEATWAIT_MASK      (0xf << CQCR_REPEATWAIT_SHIFT)
+#define CQCR_QRST             (1 << 16)
+#define CQCR_FRST             (1 << 17)
+#define CQCR_PD_MSK           (1 << 18)
+#define CQCR_PD_CFG           (1 << 19)
+
+/* TouchScreen Convert Queue Status Register */
+#define TCQSR                 0x408
+#define CQSR_PD               (1 << 0)
+#define CQSR_EOQ              (1 << 1)
+#define CQSR_FOR              (1 << 4)
+#define CQSR_FUR              (1 << 5)
+#define CQSR_FER              (1 << 6)
+#define CQSR_EMPT             (1 << 13)
+#define CQSR_FULL             (1 << 14)
+#define CQSR_FDRY             (1 << 15)
+
+/* TouchScreen Convert Queue Mask Register */
+#define TCQMR                 0x40c
+#define TCQMR_PD_IRQ_MSK      (1 << 0)
+#define TCQMR_EOQ_IRQ_MSK     (1 << 1)
+#define TCQMR_FOR_IRQ_MSK     (1 << 4)
+#define TCQMR_FUR_IRQ_MSK     (1 << 5)
+#define TCQMR_FER_IRQ_MSK     (1 << 6)
+#define TCQMR_PD_DMA_MSK      (1 << 16)
+#define TCQMR_EOQ_DMA_MSK     (1 << 17)
+#define TCQMR_FOR_DMA_MSK     (1 << 20)
+#define TCQMR_FUR_DMA_MSK     (1 << 21)
+#define TCQMR_FER_DMA_MSK     (1 << 22)
+#define TCQMR_FDRY_DMA_MSK    (1 << 31)
+
+/* TouchScreen Convert Queue ITEM 7~0 */
+#define TCQ_ITEM_7_0          0x420
+
+/* TouchScreen Convert Queue ITEM 15~8 */
+#define TCQ_ITEM_15_8         0x424
+
+#define TCQ_ITEM7_SHIFT       28
+#define TCQ_ITEM6_SHIFT       24
+#define TCQ_ITEM5_SHIFT       20
+#define TCQ_ITEM4_SHIFT       16
+#define TCQ_ITEM3_SHIFT       12
+#define TCQ_ITEM2_SHIFT       8
+#define TCQ_ITEM1_SHIFT       4
+#define TCQ_ITEM0_SHIFT       0
+
+#define TCQ_ITEM_TCC0         0x0
+#define TCQ_ITEM_TCC1         0x1
+#define TCQ_ITEM_TCC2         0x2
+#define TCQ_ITEM_TCC3         0x3
+#define TCQ_ITEM_TCC4         0x4
+#define TCQ_ITEM_TCC5         0x5
+#define TCQ_ITEM_TCC6         0x6
+#define TCQ_ITEM_TCC7         0x7
+#define TCQ_ITEM_GCC7         0x8
+#define TCQ_ITEM_GCC6         0x9
+#define TCQ_ITEM_GCC5         0xa
+#define TCQ_ITEM_GCC4         0xb
+#define TCQ_ITEM_GCC3         0xc
+#define TCQ_ITEM_GCC2         0xd
+#define TCQ_ITEM_GCC1         0xe
+#define TCQ_ITEM_GCC0         0xf
+
+/* TouchScreen Convert Config 0-7 */
+#define TCC0                  0x440
+#define TCC1                  0x444
+#define TCC2                  0x448
+#define TCC3                  0x44c
+#define TCC4                  0x450
+#define TCC5                  0x454
+#define TCC6                  0x458
+#define TCC7                  0x45c
+#define CC_PEN_IACK           (1 << 1)
+#define CC_SEL_REFN_SHIFT     2
+#define CC_SEL_REFN_YNLR      (0x1 << CC_SEL_REFN_SHIFT)
+#define CC_SEL_REFN_AGND      (0x2 << CC_SEL_REFN_SHIFT)
+#define CC_SEL_REFN_MASK      (0x3 << CC_SEL_REFN_SHIFT)
+#define CC_SELIN_SHIFT        4
+#define CC_SELIN_XPUL         (0x0 << CC_SELIN_SHIFT)
+#define CC_SELIN_YPLL         (0x1 << CC_SELIN_SHIFT)
+#define CC_SELIN_XNUR         (0x2 << CC_SELIN_SHIFT)
+#define CC_SELIN_YNLR         (0x3 << CC_SELIN_SHIFT)
+#define CC_SELIN_WIPER        (0x4 << CC_SELIN_SHIFT)
+#define CC_SELIN_INAUX0       (0x5 << CC_SELIN_SHIFT)
+#define CC_SELIN_INAUX1       (0x6 << CC_SELIN_SHIFT)
+#define CC_SELIN_INAUX2       (0x7 << CC_SELIN_SHIFT)
+#define CC_SELIN_MASK         (0x7 << CC_SELIN_SHIFT)
+#define CC_SELREFP_SHIFT      7
+#define CC_SELREFP_YPLL       (0x0 << CC_SELREFP_SHIFT)
+#define CC_SELREFP_XPUL       (0x1 << CC_SELREFP_SHIFT)
+#define CC_SELREFP_EXT        (0x2 << CC_SELREFP_SHIFT)
+#define CC_SELREFP_INT        (0x3 << CC_SELREFP_SHIFT)
+#define CC_SELREFP_MASK       (0x3 << CC_SELREFP_SHIFT)
+#define CC_XPULSW             (1 << 9)
+#define CC_XNURSW_SHIFT       10
+#define CC_XNURSW_HIGH        (0x0 << CC_XNURSW_SHIFT)
+#define CC_XNURSW_OFF         (0x1 << CC_XNURSW_SHIFT)
+#define CC_XNURSW_LOW         (0x3 << CC_XNURSW_SHIFT)
+#define CC_XNURSW_MASK        (0x3 << CC_XNURSW_SHIFT)
+#define CC_YPLLSW_SHIFT       12
+#define CC_YPLLSW_MASK        (0x3 << CC_YPLLSW_SHIFT)
+#define CC_YNLRSW             (1 << 14)
+#define CC_WIPERSW            (1 << 15)
+#define CC_NOS_SHIFT          16
+#define CC_YPLLSW_HIGH        (0x0 << CC_NOS_SHIFT)
+#define CC_YPLLSW_OFF         (0x1 << CC_NOS_SHIFT)
+#define CC_YPLLSW_LOW         (0x3 << CC_NOS_SHIFT
+#define CC_NOS_MASK           (0xf << CC_NOS_SHIFT)
+#define CC_IGS                (1 << 20)
+#define CC_SETTLING_TIME_SHIFT 24
+#define CC_SETTLING_TIME_MASK (0xff << CC_SETTLING_TIME_SHIFT)
+
+#define TSC_4WIRE_PRECHARGE    0x158c
+#define TSC_4WIRE_TOUCH_DETECT 0x578e
+
+#define TSC_4WIRE_X_MEASUMENT  0x1c90
+#define TSC_4WIRE_Y_MEASUMENT  0x4604
+
+#define TSC_GENERAL_ADC_XP     0x170c
+#define TSC_GENERAL_ADC_YP     0x171c
+#define TSC_GENERAL_ADC_XN     0x172c
+#define TSC_GENERAL_ADC_YN     0x173c
+#define TSC_GENERAL_ADC_WIPER  0x174c
+#define TSC_GENERAL_ADC_GCC0   0x175c
+#define TSC_GENERAL_ADC_GCC1   0x176c
+#define TSC_GENERAL_ADC_GCC2   0x177c
+
+/* GeneralADC Convert Queue FIFO Register */
+#define GCQFIFO                0x800
+#define GCQFIFO_ADCOUT_SHIFT   4
+#define GCQFIFO_ADCOUT_MASK    (0xfff << GCQFIFO_ADCOUT_SHIFT)
+/* GeneralADC Convert Queue Control Register */
+#define GCQCR                  0x804
+/* GeneralADC Convert Queue Status Register */
+#define GCQSR                  0x808
+/* GeneralADC Convert Queue Mask Register */
+#define GCQMR                  0x80c
+
+/* GeneralADC Convert Queue ITEM 7~0 */
+#define GCQ_ITEM_7_0           0x820
+/* GeneralADC Convert Queue ITEM 15~8 */
+#define GCQ_ITEM_15_8          0x824
+
+#define GCQ_ITEM7_SHIFT        28
+#define GCQ_ITEM6_SHIFT        24
+#define GCQ_ITEM5_SHIFT        20
+#define GCQ_ITEM4_SHIFT        16
+#define GCQ_ITEM3_SHIFT        12
+#define GCQ_ITEM2_SHIFT        8
+#define GCQ_ITEM1_SHIFT        4
+#define GCQ_ITEM0_SHIFT        0
+
+#define GCQ_ITEM_GCC0          0x0
+#define GCQ_ITEM_GCC1          0x1
+#define GCQ_ITEM_GCC2          0x2
+#define GCQ_ITEM_GCC3          0x3
+
+/* GeneralADC Convert Config 0-7 */
+#define GCC0                   0x840
+#define GCC1                   0x844
+#define GCC2                   0x848
+#define GCC3                   0x84c
+#define GCC4                   0x850
+#define GCC5                   0x854
+#define GCC6                   0x858
+#define GCC7                   0x85c
+
+/* TSC Test Register R/W */
+#define TTR                    0xc00
+/* TSC Monitor Register 1, 2 */
+#define MNT1                   0xc04
+#define MNT2                   0xc04
+
+#define DETECT_ITEM_ID_1       1
+#define DETECT_ITEM_ID_2       5
+#define TS_X_ITEM_ID           2
+#define TS_Y_ITEM_ID           3
+#define TSI_DATA               1
+#define FQS_DATA               0
+
+#endif				/* __IMX_ADC_H__ */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
