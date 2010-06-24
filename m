Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1ORiu1-00043C-BM
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 09:39:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 Jun 2010 11:39:06 +0200
Message-Id: <1277372356-32370-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1277372356-32370-1-git-send-email-s.hauer@pengutronix.de>
References: <1277372356-32370-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/11] i.MX27: merge iomux pim definitions from kernel
To: barebox@lists.infradead.org

The Kernel pin definitions are more complete and up to date. Being
here we also use seperate files for the iomuxer like the other
i.MX SoCs already do.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/imx21-regs.h |   33 ----
 arch/arm/mach-imx/include/mach/imx27-regs.h |   93 -----------
 arch/arm/mach-imx/include/mach/iomux-mx21.h |  121 ++++++++++++++
 arch/arm/mach-imx/include/mach/iomux-mx27.h |  204 ++++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/iomux-mx2x.h |  230 +++++++++++++++++++++++++++
 board/eukrea_cpuimx27/eukrea_cpuimx27.c     |    3 +-
 board/imx21ads/imx21ads.c                   |    1 +
 board/imx27ads/imx27ads.c                   |    3 +-
 board/pcm038/pcm038.c                       |    3 +-
 board/phycard-i.MX27/pca100.c               |    3 +-
 10 files changed, 564 insertions(+), 130 deletions(-)
 create mode 100644 arch/arm/mach-imx/include/mach/iomux-mx21.h
 create mode 100644 arch/arm/mach-imx/include/mach/iomux-mx27.h
 create mode 100644 arch/arm/mach-imx/include/mach/iomux-mx2x.h

diff --git a/arch/arm/mach-imx/include/mach/imx21-regs.h b/arch/arm/mach-imx/include/mach/imx21-regs.h
index 3d21749..6d64b81 100644
--- a/arch/arm/mach-imx/include/mach/imx21-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx21-regs.h
@@ -115,39 +115,6 @@
 
 #define CCSR_32K_SR		(1 << 15)
 
-#define PA5_PF_LSCLK            (GPIO_PORTA | GPIO_PF | GPIO_OUT | 5)
-#define PA6_PF_LD0              (GPIO_PORTA | GPIO_PF | GPIO_OUT | 6)
-#define PA7_PF_LD1              (GPIO_PORTA | GPIO_PF | GPIO_OUT | 7)
-#define PA8_PF_LD2              (GPIO_PORTA | GPIO_PF | GPIO_OUT | 8)
-#define PA9_PF_LD3              (GPIO_PORTA | GPIO_PF | GPIO_OUT | 9)
-#define PA10_PF_LD4             (GPIO_PORTA | GPIO_PF | GPIO_OUT | 10)
-#define PA11_PF_LD5             (GPIO_PORTA | GPIO_PF | GPIO_OUT | 11)
-#define PA12_PF_LD6             (GPIO_PORTA | GPIO_PF | GPIO_OUT | 12)
-#define PA13_PF_LD7             (GPIO_PORTA | GPIO_PF | GPIO_OUT | 13)
-#define PA14_PF_LD8             (GPIO_PORTA | GPIO_PF | GPIO_OUT | 14)
-#define PA15_PF_LD9             (GPIO_PORTA | GPIO_PF | GPIO_OUT | 15)
-#define PA16_PF_LD10            (GPIO_PORTA | GPIO_PF | GPIO_OUT | 16)
-#define PA17_PF_LD11            (GPIO_PORTA | GPIO_PF | GPIO_OUT | 17)
-#define PA18_PF_LD12            (GPIO_PORTA | GPIO_PF | GPIO_OUT | 18)
-#define PA19_PF_LD13            (GPIO_PORTA | GPIO_PF | GPIO_OUT | 19)
-#define PA20_PF_LD14            (GPIO_PORTA | GPIO_PF | GPIO_OUT | 20)
-#define PA21_PF_LD15            (GPIO_PORTA | GPIO_PF | GPIO_OUT | 21)
-#define PA22_PF_LD16            (GPIO_PORTA | GPIO_PF | GPIO_OUT | 22)
-#define PA23_PF_LD17            (GPIO_PORTA | GPIO_PF | GPIO_OUT | 23)
-#define PA24_PF_REV             (GPIO_PORTA | GPIO_PF | GPIO_OUT | 24)
-#define PA25_PF_CLS             (GPIO_PORTA | GPIO_PF | GPIO_OUT | 25)
-#define PA26_PF_PS              (GPIO_PORTA | GPIO_PF | GPIO_OUT | 26)
-#define PA27_PF_SPL_SPR         (GPIO_PORTA | GPIO_PF | GPIO_OUT | 27)
-#define PA28_PF_HSYNC           (GPIO_PORTA | GPIO_PF | GPIO_OUT | 28)
-#define PA29_PF_VSYNC           (GPIO_PORTA | GPIO_PF | GPIO_OUT | 29)
-#define PA30_PF_CONTRAST        (GPIO_PORTA | GPIO_PF | GPIO_OUT | 30)
-#define PA31_PF_OE_ACD          (GPIO_PORTA | GPIO_PF | GPIO_OUT | 31)
-
-#define PE12_PF_UART1_TXD	(GPIO_PORTE | GPIO_OUT | GPIO_PF | 12)
-#define PE13_PF_UART1_RXD	(GPIO_PORTE | GPIO_IN  | GPIO_PF | 13)
-#define PE14_PF_UART1_CTS	(GPIO_PORTE | GPIO_OUT | GPIO_PF | 14)
-#define PE15_PF_UART1_RTS	(GPIO_PORTE | GPIO_IN  | GPIO_PF | 15)
-
 /*
  * Definitions for the clocksource driver
  */
diff --git a/arch/arm/mach-imx/include/mach/imx27-regs.h b/arch/arm/mach-imx/include/mach/imx27-regs.h
index 4e22612..d804a9d 100644
--- a/arch/arm/mach-imx/include/mach/imx27-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx27-regs.h
@@ -232,99 +232,6 @@
 #define ESDMISC_MA10_SHARE	(1 << 6)
 #define ESDMISC_SDRAM_RDY	(1 << 6)
 
-#define PA0_PF_USBH2_CLK        (GPIO_PORTA | GPIO_PF | 0)
-#define PA1_PF_USBH2_DIR        (GPIO_PORTA | GPIO_PF | 1)
-#define PA2_PF_USBH2_DATA7      (GPIO_PORTA | GPIO_PF | 2)
-#define PA3_PF_USBH2_NXT        (GPIO_PORTA | GPIO_PF | 3)
-#define PA4_PF_USBH2_STP        (GPIO_PORTA | GPIO_PF | 4)
-#define PA5_PF_LSCLK            (GPIO_PORTA | GPIO_PF | GPIO_OUT | 5)
-#define PA6_PF_LD0              (GPIO_PORTA | GPIO_PF | GPIO_OUT | 6)
-#define PA7_PF_LD1              (GPIO_PORTA | GPIO_PF | GPIO_OUT | 7)
-#define PA8_PF_LD2              (GPIO_PORTA | GPIO_PF | GPIO_OUT | 8)
-#define PA9_PF_LD3              (GPIO_PORTA | GPIO_PF | GPIO_OUT | 9)
-#define PA10_PF_LD4             (GPIO_PORTA | GPIO_PF | GPIO_OUT | 10)
-#define PA11_PF_LD5             (GPIO_PORTA | GPIO_PF | GPIO_OUT | 11)
-#define PA12_PF_LD6             (GPIO_PORTA | GPIO_PF | GPIO_OUT | 12)
-#define PA13_PF_LD7             (GPIO_PORTA | GPIO_PF | GPIO_OUT | 13)
-#define PA14_PF_LD8             (GPIO_PORTA | GPIO_PF | GPIO_OUT | 14)
-#define PA15_PF_LD9             (GPIO_PORTA | GPIO_PF | GPIO_OUT | 15)
-#define PA16_PF_LD10            (GPIO_PORTA | GPIO_PF | GPIO_OUT | 16)
-#define PA17_PF_LD11            (GPIO_PORTA | GPIO_PF | GPIO_OUT | 17)
-#define PA18_PF_LD12            (GPIO_PORTA | GPIO_PF | GPIO_OUT | 18)
-#define PA19_PF_LD13            (GPIO_PORTA | GPIO_PF | GPIO_OUT | 19)
-#define PA20_PF_LD14            (GPIO_PORTA | GPIO_PF | GPIO_OUT | 20)
-#define PA21_PF_LD15            (GPIO_PORTA | GPIO_PF | GPIO_OUT | 21)
-#define PA22_PF_LD16            (GPIO_PORTA | GPIO_PF | GPIO_OUT | 22)
-#define PA23_PF_LD17            (GPIO_PORTA | GPIO_PF | GPIO_OUT | 23)
-#define PA24_PF_REV             (GPIO_PORTA | GPIO_PF | GPIO_OUT | 24)
-#define PA25_PF_CLS             (GPIO_PORTA | GPIO_PF | GPIO_OUT | 25)
-#define PA26_PF_PS              (GPIO_PORTA | GPIO_PF | GPIO_OUT | 26)
-#define PA27_PF_SPL_SPR         (GPIO_PORTA | GPIO_PF | GPIO_OUT | 27)
-#define PA28_PF_HSYNC           (GPIO_PORTA | GPIO_PF | GPIO_OUT | 28)
-#define PA29_PF_VSYNC           (GPIO_PORTA | GPIO_PF | GPIO_OUT | 29)
-#define PA30_PF_CONTRAST        (GPIO_PORTA | GPIO_PF | GPIO_OUT | 30)
-#define PA31_PF_OE_ACD          (GPIO_PORTA | GPIO_PF | GPIO_OUT | 31)
-#define PD0_AIN_FEC_TXD0	(GPIO_PORTD | GPIO_OUT | GPIO_AIN | 0)
-#define PD1_AIN_FEC_TXD1	(GPIO_PORTD | GPIO_OUT | GPIO_AIN | 1)
-#define PD2_AIN_FEC_TXD2	(GPIO_PORTD | GPIO_OUT | GPIO_AIN | 2)
-#define PD3_AIN_FEC_TXD3	(GPIO_PORTD | GPIO_OUT | GPIO_AIN | 3)
-#define PD4_AOUT_FEC_RX_ER	(GPIO_PORTD | GPIO_IN | GPIO_AOUT | 4)
-#define PD5_AOUT_FEC_RXD1	(GPIO_PORTD | GPIO_IN | GPIO_AOUT | 5)
-#define PD6_AOUT_FEC_RXD2	(GPIO_PORTD | GPIO_IN | GPIO_AOUT | 6)
-#define PD7_AOUT_FEC_RXD3	(GPIO_PORTD | GPIO_IN | GPIO_AOUT | 7)
-#define PD8_AF_FEC_MDIO		(GPIO_PORTD | GPIO_IN | GPIO_AF | 8)
-#define PD9_AIN_FEC_MDC		(GPIO_PORTD | GPIO_OUT | GPIO_AIN | 9)
-#define PD10_AOUT_FEC_CRS	(GPIO_PORTD | GPIO_IN | GPIO_AOUT | 10)
-#define PD11_AOUT_FEC_TX_CLK	(GPIO_PORTD | GPIO_IN | GPIO_AOUT | 11)
-#define PD12_AOUT_FEC_RXD0	(GPIO_PORTD | GPIO_IN | GPIO_AOUT | 12)
-#define PD13_AOUT_FEC_RX_DV	(GPIO_PORTD | GPIO_IN | GPIO_AOUT | 13)
-#define PD14_AOUT_FEC_CLR	(GPIO_PORTD | GPIO_IN | GPIO_AOUT | 14)
-#define PD15_AOUT_FEC_COL	(GPIO_PORTD | GPIO_IN | GPIO_AOUT | 15)
-#define PD16_AIN_FEC_TX_ER	(GPIO_PORTD | GPIO_OUT | GPIO_AIN | 16)
-#define PD17_PF_I2C_DATA	(GPIO_PORTD | GPIO_OUT | GPIO_PF | 17)
-#define PD18_PF_I2C_CLK		(GPIO_PORTD | GPIO_OUT | GPIO_PF | 18)
-#define PD19_AF_USBH2_DATA4     (GPIO_PORTD | GPIO_AF | 19)
-#define PD20_AF_USBH2_DATA3     (GPIO_PORTD | GPIO_AF | 20)
-#define PD21_AF_USBH2_DATA6     (GPIO_PORTD | GPIO_AF | 21)
-#define PD22_AF_USBH2_DATA0     (GPIO_PORTD | GPIO_AF | 22)
-#define PD23_AF_USBH2_DATA2     (GPIO_PORTD | GPIO_AF | 23)
-#define PD24_AF_USBH2_DATA1     (GPIO_PORTD | GPIO_AF | 24)
-#define PD25_PF_CSPI1_RDY	(GPIO_PORTD | GPIO_OUT | GPIO_PF  | 25)
-#define PD26_PF_CSPI1_SS2	(GPIO_PORTD | GPIO_OUT | GPIO_PF  | 26)
-#define PD26_AF_USBH2_DATA5     (GPIO_PORTD | GPIO_AF | 26)
-#define PD27_PF_CSPI1_SS1	(GPIO_PORTD | GPIO_OUT | GPIO_PF  | 27)
-#define PD28_PF_CSPI1_SS0	(GPIO_PORTD | GPIO_OUT | GPIO_PF  | 28)
-#define PD29_PF_CSPI1_SCLK	(GPIO_PORTD | GPIO_OUT | GPIO_PF  | 29)
-#define PD30_PF_CSPI1_MISO	(GPIO_PORTD | GPIO_IN | GPIO_PF  | 30)
-#define PD31_PF_CSPI1_MOSI	(GPIO_PORTD | GPIO_OUT | GPIO_PF  | 31)
-#define PF23_AIN_FEC_TX_EN	(GPIO_PORTF | GPIO_OUT | GPIO_AIN | 23)
-#define PE3_PF_UART2_CTS	(GPIO_PORTE | GPIO_OUT | GPIO_PF | 3)
-#define PE4_PF_UART2_RTS	(GPIO_PORTE | GPIO_IN  | GPIO_PF | 4)
-#define PE6_PF_UART2_TXD	(GPIO_PORTE | GPIO_OUT | GPIO_PF | 6)
-#define PE7_PF_UART2_RXD	(GPIO_PORTE | GPIO_IN  | GPIO_PF | 7)
-#define PE8_PF_UART3_TXD	(GPIO_PORTE | GPIO_OUT | GPIO_PF | 8)
-#define PE9_PF_UART3_RXD	(GPIO_PORTE | GPIO_IN  | GPIO_PF | 9)
-#define PE10_PF_UART3_CTS	(GPIO_PORTE | GPIO_OUT | GPIO_PF | 10)
-#define PE11_PF_UART3_RTS	(GPIO_PORTE | GPIO_IN  | GPIO_PF | 11)
-#define PE12_PF_UART1_TXD	(GPIO_PORTE | GPIO_OUT | GPIO_PF | 12)
-#define PE13_PF_UART1_RXD	(GPIO_PORTE | GPIO_IN  | GPIO_PF | 13)
-#define PE14_PF_UART1_CTS	(GPIO_PORTE | GPIO_OUT | GPIO_PF | 14)
-#define PE15_PF_UART1_RTS	(GPIO_PORTE | GPIO_IN  | GPIO_PF | 15)
-#define PC5_PF_I2C2_DATA	(GPIO_PORTC | GPIO_OUT | GPIO_PF | 5)
-#define PC6_PF_I2C2_CLK		(GPIO_PORTC | GPIO_OUT | GPIO_PF | 6)
-#define PC7_PF_USBOTG_DATA5     (GPIO_PORTC | GPIO_PF | GPIO_OUT | 7)
-#define PC8_PF_USBOTG_DATA6     (GPIO_PORTC | GPIO_PF | GPIO_OUT | 8)
-#define PC9_PF_USBOTG_DATA0     (GPIO_PORTC | GPIO_PF | GPIO_OUT | 9)
-#define PC10_PF_USBOTG_DATA2    (GPIO_PORTC | GPIO_PF | GPIO_OUT | 10)
-#define PC11_PF_USBOTG_DATA1    (GPIO_PORTC | GPIO_PF | GPIO_OUT | 11)
-#define PC12_PF_USBOTG_DATA4    (GPIO_PORTC | GPIO_PF | GPIO_OUT | 12)
-#define PC13_PF_USBOTG_DATA3    (GPIO_PORTC | GPIO_PF | GPIO_OUT | 13)
-#define PE0_PF_USBOTG_NXT       (GPIO_PORTE | GPIO_PF | GPIO_OUT | 0)
-#define PE1_PF_USBOTG_STP       (GPIO_PORTE | GPIO_PF | GPIO_OUT | 1)
-#define PE2_PF_USBOTG_DIR       (GPIO_PORTE | GPIO_PF | GPIO_OUT | 2)
-#define PE24_PF_USBOTG_CLK      (GPIO_PORTE | GPIO_PF | GPIO_OUT | 24)
-#define PE25_PF_USBOTG_DATA7    (GPIO_PORTE | GPIO_PF | GPIO_OUT | 25)
-
 /*
  * Definitions for the clocksource driver
  */
diff --git a/arch/arm/mach-imx/include/mach/iomux-mx21.h b/arch/arm/mach-imx/include/mach/iomux-mx21.h
new file mode 100644
index 0000000..c7218bc
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/iomux-mx21.h
@@ -0,0 +1,121 @@
+/*
+ * Copyright (C) 2009 by Holger Schurig <hs4233@mail.mn-solutions.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2
+ * of the License, or (at your option) any later version.
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
+#ifndef __MACH_IOMUX_MX21_H__
+#define __MACH_IOMUX_MX21_H__
+
+#include <mach/iomux-mx2x.h>
+
+/* Primary GPIO pin functions */
+
+#define PB22_PF_USBH1_BYP	(GPIO_PORTB | GPIO_PF | 22)
+#define PB25_PF_USBH1_ON	(GPIO_PORTB | GPIO_PF | 25)
+#define PC5_PF_USBOTG_SDA	(GPIO_PORTC | GPIO_PF | 5)
+#define PC6_PF_USBOTG_SCL	(GPIO_PORTC | GPIO_PF | 6)
+#define PC7_PF_USBOTG_ON	(GPIO_PORTC | GPIO_PF | 7)
+#define PC8_PF_USBOTG_FS	(GPIO_PORTC | GPIO_PF | 8)
+#define PC9_PF_USBOTG_OE	(GPIO_PORTC | GPIO_PF | 9)
+#define PC10_PF_USBOTG_TXDM	(GPIO_PORTC | GPIO_PF | 10)
+#define PC11_PF_USBOTG_TXDP	(GPIO_PORTC | GPIO_PF | 11)
+#define PC12_PF_USBOTG_RXDM	(GPIO_PORTC | GPIO_PF | 12)
+#define PC13_PF_USBOTG_RXDP	(GPIO_PORTC | GPIO_PF | 13)
+#define PC16_PF_SAP_FS		(GPIO_PORTC | GPIO_PF | 16)
+#define PC17_PF_SAP_RXD		(GPIO_PORTC | GPIO_PF | 17)
+#define PC18_PF_SAP_TXD		(GPIO_PORTC | GPIO_PF | 18)
+#define PC19_PF_SAP_CLK		(GPIO_PORTC | GPIO_PF | 19)
+#define PE0_PF_TEST_WB2		(GPIO_PORTE | GPIO_PF | 0)
+#define PE1_PF_TEST_WB1		(GPIO_PORTE | GPIO_PF | 1)
+#define PE2_PF_TEST_WB0		(GPIO_PORTE | GPIO_PF | 2)
+#define PF1_PF_NFCE		(GPIO_PORTF | GPIO_PF | 1)
+#define PF3_PF_NFCLE		(GPIO_PORTF | GPIO_PF | 3)
+#define PF7_PF_NFIO0		(GPIO_PORTF | GPIO_PF | 7)
+#define PF8_PF_NFIO1		(GPIO_PORTF | GPIO_PF | 8)
+#define PF9_PF_NFIO2		(GPIO_PORTF | GPIO_PF | 9)
+#define PF10_PF_NFIO3		(GPIO_PORTF | GPIO_PF | 10)
+#define PF11_PF_NFIO4		(GPIO_PORTF | GPIO_PF | 11)
+#define PF12_PF_NFIO5		(GPIO_PORTF | GPIO_PF | 12)
+#define PF13_PF_NFIO6		(GPIO_PORTF | GPIO_PF | 13)
+#define PF14_PF_NFIO7		(GPIO_PORTF | GPIO_PF | 14)
+#define PF16_PF_RES		(GPIO_PORTF | GPIO_PF | 16)
+
+/* Alternate GPIO pin functions */
+
+#define PA5_AF_BMI_CLK_CS	(GPIO_PORTA | GPIO_AF | 5)
+#define PA6_AF_BMI_D0		(GPIO_PORTA | GPIO_AF | 6)
+#define PA7_AF_BMI_D1		(GPIO_PORTA | GPIO_AF | 7)
+#define PA8_AF_BMI_D2		(GPIO_PORTA | GPIO_AF | 8)
+#define PA9_AF_BMI_D3		(GPIO_PORTA | GPIO_AF | 9)
+#define PA10_AF_BMI_D4		(GPIO_PORTA | GPIO_AF | 10)
+#define PA11_AF_BMI_D5		(GPIO_PORTA | GPIO_AF | 11)
+#define PA12_AF_BMI_D6		(GPIO_PORTA | GPIO_AF | 12)
+#define PA13_AF_BMI_D7		(GPIO_PORTA | GPIO_AF | 13)
+#define PA14_AF_BMI_D8		(GPIO_PORTA | GPIO_AF | 14)
+#define PA15_AF_BMI_D9		(GPIO_PORTA | GPIO_AF | 15)
+#define PA16_AF_BMI_D10		(GPIO_PORTA | GPIO_AF | 16)
+#define PA17_AF_BMI_D11		(GPIO_PORTA | GPIO_AF | 17)
+#define PA18_AF_BMI_D12		(GPIO_PORTA | GPIO_AF | 18)
+#define PA19_AF_BMI_D13		(GPIO_PORTA | GPIO_AF | 19)
+#define PA20_AF_BMI_D14		(GPIO_PORTA | GPIO_AF | 20)
+#define PA21_AF_BMI_D15		(GPIO_PORTA | GPIO_AF | 21)
+#define PA22_AF_BMI_READ_REQ	(GPIO_PORTA | GPIO_AF | 22)
+#define PA23_AF_BMI_WRITE	(GPIO_PORTA | GPIO_AF | 23)
+#define PA29_AF_BMI_RX_FULL	(GPIO_PORTA | GPIO_AF | 29)
+#define PA30_AF_BMI_READ	(GPIO_PORTA | GPIO_AF | 30)
+
+/* AIN GPIO pin functions */
+
+#define PC14_AIN_SYS_CLK	(GPIO_PORTC | GPIO_AIN | GPIO_OUT | 14)
+#define PD21_AIN_USBH2_FS	(GPIO_PORTD | GPIO_AIN | GPIO_OUT | 21)
+#define PD22_AIN_USBH2_OE	(GPIO_PORTD | GPIO_AIN | GPIO_OUT | 22)
+#define PD23_AIN_USBH2_TXDM	(GPIO_PORTD | GPIO_AIN | GPIO_OUT | 23)
+#define PD24_AIN_USBH2_TXDP	(GPIO_PORTD | GPIO_AIN | GPIO_OUT | 24)
+#define PE8_AIN_IR_TXD		(GPIO_PORTE | GPIO_AIN | GPIO_OUT | 8)
+#define PF0_AIN_PC_RST		(GPIO_PORTF | GPIO_AIN | GPIO_OUT | 0)
+#define PF1_AIN_PC_CE1		(GPIO_PORTF | GPIO_AIN | GPIO_OUT | 1)
+#define PF2_AIN_PC_CE2		(GPIO_PORTF | GPIO_AIN | GPIO_OUT | 2)
+#define PF3_AIN_PC_POE		(GPIO_PORTF | GPIO_AIN | GPIO_OUT | 3)
+#define PF4_AIN_PC_OE		(GPIO_PORTF | GPIO_AIN | GPIO_OUT | 4)
+#define PF5_AIN_PC_RW		(GPIO_PORTF | GPIO_AIN | GPIO_OUT | 5)
+
+/* BIN GPIO pin functions */
+
+#define PC14_BIN_SYS_CLK	(GPIO_PORTC | GPIO_BIN | GPIO_OUT | 14)
+#define PD27_BIN_EXT_DMA_GRANT	(GPIO_PORTD | GPIO_BIN | GPIO_OUT | 27)
+
+/* CIN GPIO pin functions */
+
+#define PB26_CIN_USBH1_RXDAT	(GPIO_PORTB | GPIO_CIN | GPIO_OUT | 26)
+
+/* AOUT GPIO pin functions */
+
+#define PA29_AOUT_BMI_WAIT	(GPIO_PORTA | GPIO_AOUT | GPIO_IN | 29)
+#define PD19_AOUT_USBH2_RXDM	(GPIO_PORTD | GPIO_AOUT | GPIO_IN | 19)
+#define PD20_AOUT_USBH2_RXDP	(GPIO_PORTD | GPIO_AOUT | GPIO_IN | 20)
+#define PD25_AOUT_EXT_DMAREQ	(GPIO_PORTD | GPIO_AOUT | GPIO_IN | 25)
+#define PD26_AOUT_USBOTG_RXDAT	(GPIO_PORTD | GPIO_AOUT | GPIO_IN | 26)
+#define PE9_AOUT_IR_RXD		(GPIO_PORTE | GPIO_AOUT | GPIO_IN | 9)
+#define PF6_AOUT_PC_BVD2	(GPIO_PORTF | GPIO_AOUT | GPIO_IN | 6)
+#define PF7_AOUT_PC_BVD1	(GPIO_PORTF | GPIO_AOUT | GPIO_IN | 7)
+#define PF8_AOUT_PC_VS2		(GPIO_PORTF | GPIO_AOUT | GPIO_IN | 8)
+#define PF9_AOUT_PC_VS1		(GPIO_PORTF | GPIO_AOUT | GPIO_IN | 9)
+#define PF10_AOUT_PC_WP		(GPIO_PORTF | GPIO_AOUT | GPIO_IN | 10)
+#define PF11_AOUT_PC_READY	(GPIO_PORTF | GPIO_AOUT | GPIO_IN | 11)
+#define PF12_AOUT_PC_WAIT	(GPIO_PORTF | GPIO_AOUT | GPIO_IN | 12)
+#define PF13_AOUT_PC_CD2	(GPIO_PORTF | GPIO_AOUT | GPIO_IN | 13)
+#define PF14_AOUT_PC_CD1	(GPIO_PORTF | GPIO_AOUT | GPIO_IN | 14)
+
+#endif /* ifndef __MACH_IOMUX_MX21_H__ */
diff --git a/arch/arm/mach-imx/include/mach/iomux-mx27.h b/arch/arm/mach-imx/include/mach/iomux-mx27.h
new file mode 100644
index 0000000..993b141
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/iomux-mx27.h
@@ -0,0 +1,204 @@
+/*
+ * Copyright (C) 2008 by Sascha Hauer <kernel@pengutronix.de>
+ * Copyright (C) 2009 by Holger Schurig <hs4233@mail.mn-solutions.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2
+ * of the License, or (at your option) any later version.
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
+#ifndef __MACH_IOMUX_MX27_H__
+#define __MACH_IOMUX_MX27_H__
+
+#include <mach/iomux-mx2x.h>
+
+/* Primary GPIO pin functions */
+
+#define PA0_PF_USBH2_CLK	(GPIO_PORTA | GPIO_PF | 0)
+#define PA1_PF_USBH2_DIR	(GPIO_PORTA | GPIO_PF | 1)
+#define PA2_PF_USBH2_DATA7	(GPIO_PORTA | GPIO_PF | 2)
+#define PA3_PF_USBH2_NXT	(GPIO_PORTA | GPIO_PF | 3)
+#define PA4_PF_USBH2_STP	(GPIO_PORTA | GPIO_PF | 4)
+#define PB22_PF_USBH1_SUSP	(GPIO_PORTB | GPIO_PF | 22)
+#define PB25_PF_USBH1_RCV	(GPIO_PORTB | GPIO_PF | 25)
+#define PC5_PF_I2C2_SDA		(GPIO_PORTC | GPIO_PF | GPIO_IN | 5)
+#define PC6_PF_I2C2_SCL		(GPIO_PORTC | GPIO_PF | GPIO_IN | 6)
+#define PC7_PF_USBOTG_DATA5	(GPIO_PORTC | GPIO_PF | GPIO_OUT | 7)
+#define PC8_PF_USBOTG_DATA6	(GPIO_PORTC | GPIO_PF | GPIO_OUT | 8)
+#define PC9_PF_USBOTG_DATA0	(GPIO_PORTC | GPIO_PF | GPIO_OUT | 9)
+#define PC10_PF_USBOTG_DATA2	(GPIO_PORTC | GPIO_PF | GPIO_OUT | 10)
+#define PC11_PF_USBOTG_DATA1	(GPIO_PORTC | GPIO_PF | GPIO_OUT | 11)
+#define PC12_PF_USBOTG_DATA4	(GPIO_PORTC | GPIO_PF | GPIO_OUT | 12)
+#define PC13_PF_USBOTG_DATA3	(GPIO_PORTC | GPIO_PF | GPIO_OUT | 13)
+#define PC16_PF_SSI4_FS		(GPIO_PORTC | GPIO_PF | GPIO_IN | 16)
+#define PC17_PF_SSI4_RXD	(GPIO_PORTC | GPIO_PF | GPIO_IN | 17)
+#define PC18_PF_SSI4_TXD	(GPIO_PORTC | GPIO_PF | GPIO_IN | 18)
+#define PC19_PF_SSI4_CLK	(GPIO_PORTC | GPIO_PF | GPIO_IN | 19)
+#define PD0_PF_SD3_CMD		(GPIO_PORTD | GPIO_PF | 0)
+#define PD1_PF_SD3_CLK		(GPIO_PORTD | GPIO_PF | 1)
+#define PD2_PF_ATA_DATA0	(GPIO_PORTD | GPIO_PF | 2)
+#define PD3_PF_ATA_DATA1	(GPIO_PORTD | GPIO_PF | 3)
+#define PD4_PF_ATA_DATA2	(GPIO_PORTD | GPIO_PF | 4)
+#define PD5_PF_ATA_DATA3	(GPIO_PORTD | GPIO_PF | 5)
+#define PD6_PF_ATA_DATA4	(GPIO_PORTD | GPIO_PF | 6)
+#define PD7_PF_ATA_DATA5	(GPIO_PORTD | GPIO_PF | 7)
+#define PD8_PF_ATA_DATA6	(GPIO_PORTD | GPIO_PF | 8)
+#define PD9_PF_ATA_DATA7	(GPIO_PORTD | GPIO_PF | 9)
+#define PD10_PF_ATA_DATA8	(GPIO_PORTD | GPIO_PF | 10)
+#define PD11_PF_ATA_DATA9	(GPIO_PORTD | GPIO_PF | 11)
+#define PD12_PF_ATA_DATA10	(GPIO_PORTD | GPIO_PF | 12)
+#define PD13_PF_ATA_DATA11	(GPIO_PORTD | GPIO_PF | 13)
+#define PD14_PF_ATA_DATA12	(GPIO_PORTD | GPIO_PF | 14)
+#define PD15_PF_ATA_DATA13	(GPIO_PORTD | GPIO_PF | 15)
+#define PD16_PF_ATA_DATA14	(GPIO_PORTD | GPIO_PF | 16)
+#define PE0_PF_USBOTG_NXT	(GPIO_PORTE | GPIO_PF | GPIO_OUT | 0)
+#define PE1_PF_USBOTG_STP	(GPIO_PORTE | GPIO_PF | GPIO_OUT | 1)
+#define PE2_PF_USBOTG_DIR	(GPIO_PORTE | GPIO_PF | GPIO_OUT | 2)
+#define PE24_PF_USBOTG_CLK	(GPIO_PORTE | GPIO_PF | GPIO_OUT | 24)
+#define PE25_PF_USBOTG_DATA7	(GPIO_PORTE | GPIO_PF | GPIO_OUT | 25)
+#define PF1_PF_NFCLE		(GPIO_PORTF | GPIO_PF | 1)
+#define PF3_PF_NFCE		(GPIO_PORTF | GPIO_PF | 3)
+#define PF7_PF_PC_POE		(GPIO_PORTF | GPIO_PF | 7)
+#define PF8_PF_PC_RW		(GPIO_PORTF | GPIO_PF | 8)
+#define PF9_PF_PC_IOIS16	(GPIO_PORTF | GPIO_PF | 9)
+#define PF10_PF_PC_RST		(GPIO_PORTF | GPIO_PF | 10)
+#define PF11_PF_PC_BVD2		(GPIO_PORTF | GPIO_PF | 11)
+#define PF12_PF_PC_BVD1		(GPIO_PORTF | GPIO_PF | 12)
+#define PF13_PF_PC_VS2		(GPIO_PORTF | GPIO_PF | 13)
+#define PF14_PF_PC_VS1		(GPIO_PORTF | GPIO_PF | 14)
+#define PF16_PF_PC_PWRON	(GPIO_PORTF | GPIO_PF | 16)
+#define PF17_PF_PC_READY	(GPIO_PORTF | GPIO_PF | 17)
+#define PF18_PF_PC_WAIT		(GPIO_PORTF | GPIO_PF | 18)
+#define PF19_PF_PC_CD2		(GPIO_PORTF | GPIO_PF | 19)
+#define PF20_PF_PC_CD1		(GPIO_PORTF | GPIO_PF | 20)
+#define PF23_PF_ATA_DATA15	(GPIO_PORTF | GPIO_PF | 23)
+
+/* Alternate GPIO pin functions */
+
+#define PB4_AF_MSHC_DATA0	(GPIO_PORTB | GPIO_AF | GPIO_OUT | 4)
+#define PB5_AF_MSHC_DATA1	(GPIO_PORTB | GPIO_AF | GPIO_OUT | 5)
+#define PB6_AF_MSHC_DATA2	(GPIO_PORTB | GPIO_AF | GPIO_OUT | 6)
+#define PB7_AF_MSHC_DATA4	(GPIO_PORTB | GPIO_AF | GPIO_OUT | 7)
+#define PB8_AF_MSHC_BS		(GPIO_PORTB | GPIO_AF | GPIO_OUT | 8)
+#define PB9_AF_MSHC_SCLK	(GPIO_PORTB | GPIO_AF | GPIO_OUT | 9)
+#define PB10_AF_UART6_TXD	(GPIO_PORTB | GPIO_AF | GPIO_OUT | 10)
+#define PB11_AF_UART6_RXD	(GPIO_PORTB | GPIO_AF | GPIO_IN | 11)
+#define PB12_AF_UART6_CTS	(GPIO_PORTB | GPIO_AF | GPIO_OUT | 12)
+#define PB13_AF_UART6_RTS	(GPIO_PORTB | GPIO_AF | GPIO_IN | 13)
+#define PB18_AF_UART5_TXD	(GPIO_PORTB | GPIO_AF | GPIO_OUT | 18)
+#define PB19_AF_UART5_RXD	(GPIO_PORTB | GPIO_AF | GPIO_IN | 19)
+#define PB20_AF_UART5_CTS	(GPIO_PORTB | GPIO_AF | GPIO_OUT | 20)
+#define PB21_AF_UART5_RTS	(GPIO_PORTB | GPIO_AF | GPIO_IN | 21)
+#define PC8_AF_FEC_MDIO		(GPIO_PORTC | GPIO_AF | GPIO_IN | 8)
+#define PC24_AF_GPT5_TOUT	(GPIO_PORTC | GPIO_AF | 24)
+#define PC25_AF_GPT5_TIN	(GPIO_PORTC | GPIO_AF | 25)
+#define PC26_AF_GPT4_TOUT	(GPIO_PORTC | GPIO_AF | 26)
+#define PC27_AF_GPT4_TIN	(GPIO_PORTC | GPIO_AF | 27)
+#define PD1_AF_ETMTRACE_PKT15	(GPIO_PORTD | GPIO_AF | 1)
+#define PD6_AF_ETMTRACE_PKT14	(GPIO_PORTD | GPIO_AF | 6)
+#define PD7_AF_ETMTRACE_PKT13	(GPIO_PORTD | GPIO_AF | 7)
+#define PD9_AF_ETMTRACE_PKT12	(GPIO_PORTD | GPIO_AF | 9)
+#define PD2_AF_SD3_D0		(GPIO_PORTD | GPIO_AF | 2)
+#define PD3_AF_SD3_D1		(GPIO_PORTD | GPIO_AF | 3)
+#define PD4_AF_SD3_D2		(GPIO_PORTD | GPIO_AF | 4)
+#define PD5_AF_SD3_D3		(GPIO_PORTD | GPIO_AF | 5)
+#define PD8_AF_FEC_MDIO		(GPIO_PORTD | GPIO_AF | GPIO_IN | 8)
+#define PD10_AF_ETMTRACE_PKT11	(GPIO_PORTD | GPIO_AF | 10)
+#define PD11_AF_ETMTRACE_PKT10	(GPIO_PORTD | GPIO_AF | 11)
+#define PD12_AF_ETMTRACE_PKT9	(GPIO_PORTD | GPIO_AF | 12)
+#define PD13_AF_ETMTRACE_PKT8	(GPIO_PORTD | GPIO_AF | 13)
+#define PD14_AF_ETMTRACE_PKT7	(GPIO_PORTD | GPIO_AF | 14)
+#define PD15_AF_ETMTRACE_PKT6	(GPIO_PORTD | GPIO_AF | 15)
+#define PD16_AF_ETMTRACE_PKT5	(GPIO_PORTD | GPIO_AF | 16)
+#define PF1_AF_ETMTRACE_PKT0	(GPIO_PORTF | GPIO_AF | 1)
+#define PF3_AF_ETMTRACE_PKT2	(GPIO_PORTF | GPIO_AF | 3)
+#define PF5_AF_ETMPIPESTAT11	(GPIO_PORTF | GPIO_AF | 5)
+#define PF7_AF_ATA_BUFFER_EN	(GPIO_PORTF | GPIO_AF | 7)
+#define PF8_AF_ATA_IORDY	(GPIO_PORTF | GPIO_AF | 8)
+#define PF9_AF_ATA_INTRQ	(GPIO_PORTF | GPIO_AF | 9)
+#define PF10_AF_ATA_RESET	(GPIO_PORTF | GPIO_AF | 10)
+#define PF11_AF_ATA_DMACK	(GPIO_PORTF | GPIO_AF | 11)
+#define PF12_AF_ATA_DMAREQ	(GPIO_PORTF | GPIO_AF | 12)
+#define PF13_AF_ATA_DA0		(GPIO_PORTF | GPIO_AF | 13)
+#define PF14_AF_ATA_DA1		(GPIO_PORTF | GPIO_AF | 14)
+#define PF15_AF_ETMTRACE_SYNC	(GPIO_PORTF | GPIO_AF | 15)
+#define PF16_AF_ATA_DA2		(GPIO_PORTF | GPIO_AF | 16)
+#define PF17_AF_ATA_CS0		(GPIO_PORTF | GPIO_AF | 17)
+#define PF18_AF_ATA_CS1		(GPIO_PORTF | GPIO_AF | 18)
+#define PF19_AF_ATA_DIOW	(GPIO_PORTF | GPIO_AF | 19)
+#define PF20_AF_ATA_DIOR	(GPIO_PORTF | GPIO_AF | 20)
+#define PF22_AF_ETMTRACE_CLK	(GPIO_PORTF | GPIO_AF | 22)
+#define PF23_AF_ETMTRACE_PKT4	(GPIO_PORTF | GPIO_AF | 23)
+
+/* AIN GPIO pin functions */
+
+#define PC14_AIN_SSI1_MCLK	(GPIO_PORTC | GPIO_AIN | GPIO_OUT | 14)
+#define PC15_AIN_GPT6_TOUT	(GPIO_PORTC | GPIO_AIN | GPIO_OUT | 15)
+#define PD0_AIN_FEC_TXD0	(GPIO_PORTD | GPIO_AIN | GPIO_OUT | 0)
+#define PD1_AIN_FEC_TXD1	(GPIO_PORTD | GPIO_AIN | GPIO_OUT | 1)
+#define PD2_AIN_FEC_TXD2	(GPIO_PORTD | GPIO_AIN | GPIO_OUT | 2)
+#define PD3_AIN_FEC_TXD3	(GPIO_PORTD | GPIO_AIN | GPIO_OUT | 3)
+#define PD9_AIN_FEC_MDC		(GPIO_PORTD | GPIO_AIN | GPIO_OUT | 9)
+#define PD16_AIN_FEC_TX_ER	(GPIO_PORTD | GPIO_AIN | GPIO_OUT | 16)
+#define PD27_AIN_EXT_DMA_GRANT	(GPIO_PORTD | GPIO_AIN | GPIO_OUT | 27)
+#define PF23_AIN_FEC_TX_EN	(GPIO_PORTF | GPIO_AIN | GPIO_OUT | 23)
+
+/* BIN GPIO pin functions */
+
+#define PC14_BIN_SSI2_MCLK	(GPIO_PORTC | GPIO_BIN | GPIO_OUT | 14)
+
+/* CIN GPIO pin functions */
+
+#define PD2_CIN_SLCDC1_DAT0	(GPIO_PORTD | GPIO_CIN | GPIO_OUT | 2)
+#define PD3_CIN_SLCDC1_DAT1	(GPIO_PORTD | GPIO_CIN | GPIO_OUT | 3)
+#define PD4_CIN_SLCDC1_DAT2	(GPIO_PORTD | GPIO_CIN | GPIO_OUT | 4)
+#define PD5_CIN_SLCDC1_DAT3	(GPIO_PORTD | GPIO_CIN | GPIO_OUT | 5)
+#define PD6_CIN_SLCDC1_DAT4	(GPIO_PORTD | GPIO_CIN | GPIO_OUT | 6)
+#define PD7_CIN_SLCDC1_DAT5	(GPIO_PORTD | GPIO_CIN | GPIO_OUT | 7)
+#define PD8_CIN_SLCDC1_DAT6	(GPIO_PORTD | GPIO_CIN | GPIO_OUT | 8)
+#define PD9_CIN_SLCDC1_DAT7	(GPIO_PORTD | GPIO_CIN | GPIO_OUT | 9)
+#define PD10_CIN_SLCDC1_DAT8	(GPIO_PORTD | GPIO_CIN | GPIO_OUT | 10)
+#define PD11_CIN_SLCDC1_DAT9	(GPIO_PORTD | GPIO_CIN | GPIO_OUT | 11)
+#define PD12_CIN_SLCDC1_DAT10	(GPIO_PORTD | GPIO_CIN | GPIO_OUT | 12)
+#define PD13_CIN_SLCDC1_DAT11	(GPIO_PORTD | GPIO_CIN | GPIO_OUT | 13)
+#define PD14_CIN_SLCDC1_DAT12	(GPIO_PORTD | GPIO_CIN | GPIO_OUT | 14)
+#define PD15_CIN_SLCDC1_DAT13	(GPIO_PORTD | GPIO_CIN | GPIO_OUT | 15)
+#define PD16_CIN_SLCDC1_DAT14	(GPIO_PORTD | GPIO_CIN | GPIO_OUT | 16)
+#define PD23_CIN_SLCDC1_DAT15	(GPIO_PORTD | GPIO_CIN | GPIO_OUT | 23)
+#define PF27_CIN_EXT_DMA_GRANT	(GPIO_PORTF | GPIO_CIN | GPIO_OUT | 27)
+/* LCDC_TESTx on PBxx omitted, because it's not clear what they do */
+
+/* AOUT GPIO pin functions */
+
+#define PC14_AOUT_GPT6_TIN	(GPIO_PORTC | GPIO_AOUT | GPIO_IN | 14)
+#define PD4_AOUT_FEC_RX_ER	(GPIO_PORTD | GPIO_AOUT | GPIO_IN | 4)
+#define PD5_AOUT_FEC_RXD1	(GPIO_PORTD | GPIO_AOUT | GPIO_IN | 5)
+#define PD6_AOUT_FEC_RXD2	(GPIO_PORTD | GPIO_AOUT | GPIO_IN | 6)
+#define PD7_AOUT_FEC_RXD3	(GPIO_PORTD | GPIO_AOUT | GPIO_IN | 7)
+#define PD10_AOUT_FEC_CRS	(GPIO_PORTD | GPIO_AOUT | GPIO_IN | 10)
+#define PD11_AOUT_FEC_TX_CLK	(GPIO_PORTD | GPIO_AOUT | GPIO_IN | 11)
+#define PD12_AOUT_FEC_RXD0	(GPIO_PORTD | GPIO_AOUT | GPIO_IN | 12)
+#define PD13_AOUT_FEC_RX_DV	(GPIO_PORTD | GPIO_AOUT | GPIO_IN | 13)
+#define PD14_AOUT_FEC_RX_CLK	(GPIO_PORTD | GPIO_AOUT | GPIO_IN | 14)
+#define PD15_AOUT_FEC_COL	(GPIO_PORTD | GPIO_AOUT | GPIO_IN | 15)
+
+/* BOUT GPIO pin functions */
+
+#define PC17_BOUT_PC_IOIS16	(GPIO_PORTC | GPIO_BOUT | GPIO_IN | 17)
+#define PC18_BOUT_PC_BVD2	(GPIO_PORTC | GPIO_BOUT | GPIO_IN | 18)
+#define PC19_BOUT_PC_BVD1	(GPIO_PORTC | GPIO_BOUT | GPIO_IN | 19)
+#define PC28_BOUT_PC_BVD2	(GPIO_PORTC | GPIO_BOUT | GPIO_IN | 28)
+#define PC29_BOUT_PC_VS1	(GPIO_PORTC | GPIO_BOUT | GPIO_IN | 29)
+#define PC30_BOUT_PC_READY	(GPIO_PORTC | GPIO_BOUT | GPIO_IN | 30)
+#define PC31_BOUT_PC_WAIT	(GPIO_PORTC | GPIO_BOUT | GPIO_IN | 31)
+
+#endif /* __MACH_IOMUX_MX27_H__ */
diff --git a/arch/arm/mach-imx/include/mach/iomux-mx2x.h b/arch/arm/mach-imx/include/mach/iomux-mx2x.h
new file mode 100644
index 0000000..c4f116d
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/iomux-mx2x.h
@@ -0,0 +1,230 @@
+/*
+ * Copyright (C) 2008 by Sascha Hauer <kernel@pengutronix.de>
+ * Copyright (C) 2009 by Holger Schurig <hs4233@mail.mn-solutions.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2
+ * of the License, or (at your option) any later version.
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
+#ifndef __MACH_IOMUX_MX2x_H__
+#define __MACH_IOMUX_MX2x_H__
+
+/* Primary GPIO pin functions */
+
+#define PA5_PF_LSCLK		(GPIO_PORTA | GPIO_PF | GPIO_OUT | 5)
+#define PA6_PF_LD0		(GPIO_PORTA | GPIO_PF | GPIO_OUT | 6)
+#define PA7_PF_LD1		(GPIO_PORTA | GPIO_PF | GPIO_OUT | 7)
+#define PA8_PF_LD2		(GPIO_PORTA | GPIO_PF | GPIO_OUT | 8)
+#define PA9_PF_LD3		(GPIO_PORTA | GPIO_PF | GPIO_OUT | 9)
+#define PA10_PF_LD4		(GPIO_PORTA | GPIO_PF | GPIO_OUT | 10)
+#define PA11_PF_LD5		(GPIO_PORTA | GPIO_PF | GPIO_OUT | 11)
+#define PA12_PF_LD6		(GPIO_PORTA | GPIO_PF | GPIO_OUT | 12)
+#define PA13_PF_LD7		(GPIO_PORTA | GPIO_PF | GPIO_OUT | 13)
+#define PA14_PF_LD8		(GPIO_PORTA | GPIO_PF | GPIO_OUT | 14)
+#define PA15_PF_LD9		(GPIO_PORTA | GPIO_PF | GPIO_OUT | 15)
+#define PA16_PF_LD10		(GPIO_PORTA | GPIO_PF | GPIO_OUT | 16)
+#define PA17_PF_LD11		(GPIO_PORTA | GPIO_PF | GPIO_OUT | 17)
+#define PA18_PF_LD12		(GPIO_PORTA | GPIO_PF | GPIO_OUT | 18)
+#define PA19_PF_LD13		(GPIO_PORTA | GPIO_PF | GPIO_OUT | 19)
+#define PA20_PF_LD14		(GPIO_PORTA | GPIO_PF | GPIO_OUT | 20)
+#define PA21_PF_LD15		(GPIO_PORTA | GPIO_PF | GPIO_OUT | 21)
+#define PA22_PF_LD16		(GPIO_PORTA | GPIO_PF | GPIO_OUT | 22)
+#define PA23_PF_LD17		(GPIO_PORTA | GPIO_PF | GPIO_OUT | 23)
+#define PA24_PF_REV		(GPIO_PORTA | GPIO_PF | GPIO_OUT | 24)
+#define PA25_PF_CLS		(GPIO_PORTA | GPIO_PF | GPIO_OUT | 25)
+#define PA26_PF_PS		(GPIO_PORTA | GPIO_PF | GPIO_OUT | 26)
+#define PA27_PF_SPL_SPR		(GPIO_PORTA | GPIO_PF | GPIO_OUT | 27)
+#define PA28_PF_HSYNC		(GPIO_PORTA | GPIO_PF | GPIO_OUT | 28)
+#define PA29_PF_VSYNC		(GPIO_PORTA | GPIO_PF | GPIO_OUT | 29)
+#define PA30_PF_CONTRAST	(GPIO_PORTA | GPIO_PF | GPIO_OUT | 30)
+#define PA31_PF_OE_ACD		(GPIO_PORTA | GPIO_PF | GPIO_OUT | 31)
+#define PB4_PF_SD2_D0		(GPIO_PORTB | GPIO_PF | 4)
+#define PB5_PF_SD2_D1		(GPIO_PORTB | GPIO_PF | 5)
+#define PB6_PF_SD2_D2		(GPIO_PORTB | GPIO_PF | 6)
+#define PB7_PF_SD2_D3		(GPIO_PORTB | GPIO_PF | 7)
+#define PB8_PF_SD2_CMD		(GPIO_PORTB | GPIO_PF | 8)
+#define PB9_PF_SD2_CLK		(GPIO_PORTB | GPIO_PF | 9)
+#define PB10_PF_CSI_D0		(GPIO_PORTB | GPIO_PF | GPIO_OUT | 10)
+#define PB11_PF_CSI_D1		(GPIO_PORTB | GPIO_PF | GPIO_OUT | 11)
+#define PB12_PF_CSI_D2		(GPIO_PORTB | GPIO_PF | GPIO_OUT | 12)
+#define PB13_PF_CSI_D3		(GPIO_PORTB | GPIO_PF | GPIO_OUT | 13)
+#define PB14_PF_CSI_D4		(GPIO_PORTB | GPIO_PF | GPIO_OUT | 14)
+#define PB15_PF_CSI_MCLK	(GPIO_PORTB | GPIO_PF | GPIO_OUT | 15)
+#define PB16_PF_CSI_PIXCLK	(GPIO_PORTB | GPIO_PF | GPIO_OUT | 16)
+#define PB17_PF_CSI_D5		(GPIO_PORTB | GPIO_PF | GPIO_OUT | 17)
+#define PB18_PF_CSI_D6		(GPIO_PORTB | GPIO_PF | GPIO_OUT | 18)
+#define PB19_PF_CSI_D7		(GPIO_PORTB | GPIO_PF | GPIO_OUT | 19)
+#define PB20_PF_CSI_VSYNC	(GPIO_PORTB | GPIO_PF | GPIO_OUT | 20)
+#define PB21_PF_CSI_HSYNC	(GPIO_PORTB | GPIO_PF | GPIO_OUT | 21)
+#define PB23_PF_USB_PWR		(GPIO_PORTB | GPIO_PF | 23)
+#define PB24_PF_USB_OC		(GPIO_PORTB | GPIO_PF | 24)
+#define PB26_PF_USBH1_FS	(GPIO_PORTB | GPIO_PF | 26)
+#define PB27_PF_USBH1_OE	(GPIO_PORTB | GPIO_PF | 27)
+#define PB28_PF_USBH1_TXDM	(GPIO_PORTB | GPIO_PF | 28)
+#define PB29_PF_USBH1_TXDP	(GPIO_PORTB | GPIO_PF | 29)
+#define PB30_PF_USBH1_RXDM	(GPIO_PORTB | GPIO_PF | 30)
+#define PB31_PF_USBH1_RXDP	(GPIO_PORTB | GPIO_PF | 31)
+#define PC14_PF_TOUT		(GPIO_PORTC | GPIO_PF | 14)
+#define PC15_PF_TIN		(GPIO_PORTC | GPIO_PF | 15)
+#define PC20_PF_SSI1_FS		(GPIO_PORTC | GPIO_PF | GPIO_IN | 20)
+#define PC21_PF_SSI1_RXD	(GPIO_PORTC | GPIO_PF | GPIO_IN | 21)
+#define PC22_PF_SSI1_TXD	(GPIO_PORTC | GPIO_PF | GPIO_IN | 22)
+#define PC23_PF_SSI1_CLK	(GPIO_PORTC | GPIO_PF | GPIO_IN | 23)
+#define PC24_PF_SSI2_FS		(GPIO_PORTC | GPIO_PF | GPIO_IN | 24)
+#define PC25_PF_SSI2_RXD	(GPIO_PORTC | GPIO_PF | GPIO_IN | 25)
+#define PC26_PF_SSI2_TXD	(GPIO_PORTC | GPIO_PF | GPIO_IN | 26)
+#define PC27_PF_SSI2_CLK	(GPIO_PORTC | GPIO_PF | GPIO_IN | 27)
+#define PC28_PF_SSI3_FS		(GPIO_PORTC | GPIO_PF | GPIO_IN | 28)
+#define PC29_PF_SSI3_RXD	(GPIO_PORTC | GPIO_PF | GPIO_IN | 29)
+#define PC30_PF_SSI3_TXD	(GPIO_PORTC | GPIO_PF | GPIO_IN | 30)
+#define PC31_PF_SSI3_CLK	(GPIO_PORTC | GPIO_PF | GPIO_IN | 31)
+#define PD17_PF_I2C_DATA	(GPIO_PORTD | GPIO_PF | GPIO_OUT | 17)
+#define PD18_PF_I2C_CLK		(GPIO_PORTD | GPIO_PF | GPIO_OUT | 18)
+#define PD19_PF_CSPI2_SS2	(GPIO_PORTD | GPIO_PF | 19)
+#define PD20_PF_CSPI2_SS1	(GPIO_PORTD | GPIO_PF | 20)
+#define PD21_PF_CSPI2_SS0	(GPIO_PORTD | GPIO_PF | 21)
+#define PD22_PF_CSPI2_SCLK	(GPIO_PORTD | GPIO_PF | 22)
+#define PD23_PF_CSPI2_MISO	(GPIO_PORTD | GPIO_PF | 23)
+#define PD24_PF_CSPI2_MOSI	(GPIO_PORTD | GPIO_PF | 24)
+#define PD25_PF_CSPI1_RDY	(GPIO_PORTD | GPIO_PF | GPIO_OUT | 25)
+#define PD26_PF_CSPI1_SS2	(GPIO_PORTD | GPIO_PF | GPIO_OUT | 26)
+#define PD27_PF_CSPI1_SS1	(GPIO_PORTD | GPIO_PF | GPIO_OUT | 27)
+#define PD28_PF_CSPI1_SS0	(GPIO_PORTD | GPIO_PF | GPIO_OUT | 28)
+#define PD29_PF_CSPI1_SCLK	(GPIO_PORTD | GPIO_PF | GPIO_OUT | 29)
+#define PD30_PF_CSPI1_MISO	(GPIO_PORTD | GPIO_PF | GPIO_IN | 30)
+#define PD31_PF_CSPI1_MOSI	(GPIO_PORTD | GPIO_PF | GPIO_OUT | 31)
+#define PE3_PF_UART2_CTS	(GPIO_PORTE | GPIO_PF | GPIO_OUT | 3)
+#define PE4_PF_UART2_RTS	(GPIO_PORTE | GPIO_PF | GPIO_IN | 4)
+#define PE5_PF_PWMO		(GPIO_PORTE | GPIO_PF | 5)
+#define PE6_PF_UART2_TXD	(GPIO_PORTE | GPIO_PF | GPIO_OUT | 6)
+#define PE7_PF_UART2_RXD	(GPIO_PORTE | GPIO_PF | GPIO_IN | 7)
+#define PE8_PF_UART3_TXD	(GPIO_PORTE | GPIO_PF | GPIO_OUT | 8)
+#define PE9_PF_UART3_RXD	(GPIO_PORTE | GPIO_PF | GPIO_IN | 9)
+#define PE10_PF_UART3_CTS	(GPIO_PORTE | GPIO_PF | GPIO_OUT | 10)
+#define PE11_PF_UART3_RTS	(GPIO_PORTE | GPIO_PF | GPIO_IN | 11)
+#define PE12_PF_UART1_TXD	(GPIO_PORTE | GPIO_PF | GPIO_OUT | 12)
+#define PE13_PF_UART1_RXD	(GPIO_PORTE | GPIO_PF | GPIO_IN | 13)
+#define PE14_PF_UART1_CTS	(GPIO_PORTE | GPIO_PF | GPIO_OUT | 14)
+#define PE15_PF_UART1_RTS	(GPIO_PORTE | GPIO_PF | GPIO_IN | 15)
+#define PE16_PF_RTCK		(GPIO_PORTE | GPIO_PF | GPIO_OUT | 16)
+#define PE17_PF_RESET_OUT	(GPIO_PORTE | GPIO_PF | 17)
+#define PE18_PF_SD1_D0		(GPIO_PORTE | GPIO_PF | 18)
+#define PE19_PF_SD1_D1		(GPIO_PORTE | GPIO_PF | 19)
+#define PE20_PF_SD1_D2		(GPIO_PORTE | GPIO_PF | 20)
+#define PE21_PF_SD1_D3		(GPIO_PORTE | GPIO_PF | 21)
+#define PE22_PF_SD1_CMD		(GPIO_PORTE | GPIO_PF | 22)
+#define PE23_PF_SD1_CLK		(GPIO_PORTE | GPIO_PF | 23)
+#define PF0_PF_NRFB		(GPIO_PORTF | GPIO_PF | 0)
+#define PF2_PF_NFWP		(GPIO_PORTF | GPIO_PF | 2)
+#define PF4_PF_NFALE		(GPIO_PORTF | GPIO_PF | 4)
+#define PF5_PF_NFRE		(GPIO_PORTF | GPIO_PF | 5)
+#define PF6_PF_NFWE		(GPIO_PORTF | GPIO_PF | 6)
+#define PF15_PF_CLKO		(GPIO_PORTF | GPIO_PF | 15)
+#define PF21_PF_CS4		(GPIO_PORTF | GPIO_PF | 21)
+#define PF22_PF_CS5		(GPIO_PORTF | GPIO_PF | 22)
+
+/* Alternate GPIO pin functions */
+
+#define PB26_AF_UART4_RTS	(GPIO_PORTB | GPIO_AF | GPIO_IN | 26)
+#define PB28_AF_UART4_TXD	(GPIO_PORTB | GPIO_AF | GPIO_OUT | 28)
+#define PB29_AF_UART4_CTS	(GPIO_PORTB | GPIO_AF | GPIO_OUT | 29)
+#define PB31_AF_UART4_RXD	(GPIO_PORTB | GPIO_AF | GPIO_IN | 31)
+#define PC28_AF_SLCDC2_D0	(GPIO_PORTC | GPIO_AF | 28)
+#define PC29_AF_SLCDC2_RS	(GPIO_PORTC | GPIO_AF | 29)
+#define PC30_AF_SLCDC2_CS	(GPIO_PORTC | GPIO_AF | 30)
+#define PC31_AF_SLCDC2_CLK	(GPIO_PORTC | GPIO_AF | 31)
+#define PD19_AF_USBH2_DATA4	(GPIO_PORTD | GPIO_AF | 19)
+#define PD20_AF_USBH2_DATA3	(GPIO_PORTD | GPIO_AF | 20)
+#define PD21_AF_USBH2_DATA6	(GPIO_PORTD | GPIO_AF | 21)
+#define PD22_AF_USBH2_DATA0	(GPIO_PORTD | GPIO_AF | 22)
+#define PD23_AF_USBH2_DATA2	(GPIO_PORTD | GPIO_AF | 23)
+#define PD24_AF_USBH2_DATA1	(GPIO_PORTD | GPIO_AF | 24)
+#define PD26_AF_USBH2_DATA5	(GPIO_PORTD | GPIO_AF | 26)
+#define PE0_AF_KP_COL6		(GPIO_PORTE | GPIO_AF | 0)
+#define PE1_AF_KP_ROW6		(GPIO_PORTE | GPIO_AF | 1)
+#define PE2_AF_KP_ROW7		(GPIO_PORTE | GPIO_AF | 2)
+#define PE3_AF_KP_COL7		(GPIO_PORTE | GPIO_AF | 3)
+#define PE4_AF_KP_ROW7		(GPIO_PORTE | GPIO_AF | 4)
+#define PE6_AF_KP_COL6		(GPIO_PORTE | GPIO_AF | 6)
+#define PE7_AF_KP_ROW6		(GPIO_PORTE | GPIO_AF | 7)
+#define PE16_AF_OWIRE		(GPIO_PORTE | GPIO_AF | 16)
+#define PE18_AF_CSPI3_MISO	(GPIO_PORTE | GPIO_AF | GPIO_IN | 18)
+#define PE21_AF_CSPI3_SS	(GPIO_PORTE | GPIO_AF | GPIO_OUT | 21)
+#define PE22_AF_CSPI3_MOSI	(GPIO_PORTE | GPIO_AF | GPIO_OUT | 22)
+#define PE23_AF_CSPI3_SCLK	(GPIO_PORTE | GPIO_AF | GPIO_OUT | 23)
+
+/* AIN GPIO pin functions */
+
+#define PA6_AIN_SLCDC1_DAT0	(GPIO_PORTA | GPIO_AIN | GPIO_OUT | 6)
+#define PA7_AIN_SLCDC1_DAT1	(GPIO_PORTA | GPIO_AIN | GPIO_OUT | 7)
+#define PA8_AIN_SLCDC1_DAT2	(GPIO_PORTA | GPIO_AIN | GPIO_OUT | 8)
+#define PA0_AIN_SLCDC1_DAT3	(GPIO_PORTA | GPIO_AIN | GPIO_OUT | 0)
+#define PA11_AIN_SLCDC1_DAT5	(GPIO_PORTA | GPIO_AIN | GPIO_OUT | 11)
+#define PA13_AIN_SLCDC1_DAT7	(GPIO_PORTA | GPIO_AIN | GPIO_OUT | 13)
+#define PA15_AIN_SLCDC1_DAT9	(GPIO_PORTA | GPIO_AIN | GPIO_OUT | 15)
+#define PA17_AIN_SLCDC1_DAT11	(GPIO_PORTA | GPIO_AIN | GPIO_OUT | 17)
+#define PA19_AIN_SLCDC1_DAT13	(GPIO_PORTA | GPIO_AIN | GPIO_OUT | 19)
+#define PA21_AIN_SLCDC1_DAT15	(GPIO_PORTA | GPIO_AIN | GPIO_OUT | 21)
+#define PA22_AIN_EXT_DMAGRANT	(GPIO_PORTA | GPIO_AIN | GPIO_OUT | 22)
+#define PA24_AIN_SLCDC1_D0	(GPIO_PORTA | GPIO_AIN | GPIO_OUT | 24)
+#define PA25_AIN_SLCDC1_RS	(GPIO_PORTA | GPIO_AIN | GPIO_OUT | 25)
+#define PA26_AIN_SLCDC1_CS	(GPIO_PORTA | GPIO_AIN | GPIO_OUT | 26)
+#define PA27_AIN_SLCDC1_CLK	(GPIO_PORTA | GPIO_AIN | GPIO_OUT | 27)
+#define PB6_AIN_SLCDC1_D0	(GPIO_PORTB | GPIO_AIN | GPIO_OUT | 6)
+#define PB7_AIN_SLCDC1_RS	(GPIO_PORTB | GPIO_AIN | GPIO_OUT | 7)
+#define PB8_AIN_SLCDC1_CS	(GPIO_PORTB | GPIO_AIN | GPIO_OUT | 8)
+#define PB9_AIN_SLCDC1_CLK	(GPIO_PORTB | GPIO_AIN | GPIO_OUT | 9)
+#define PB25_AIN_SLCDC1_DAT0	(GPIO_PORTB | GPIO_AIN | GPIO_OUT | 25)
+#define PB26_AIN_SLCDC1_DAT1	(GPIO_PORTB | GPIO_AIN | GPIO_OUT | 26)
+#define PB27_AIN_SLCDC1_DAT2	(GPIO_PORTB | GPIO_AIN | GPIO_OUT | 27)
+#define PB28_AIN_SLCDC1_DAT3	(GPIO_PORTB | GPIO_AIN | GPIO_OUT | 28)
+#define PB29_AIN_SLCDC1_DAT4	(GPIO_PORTB | GPIO_AIN | GPIO_OUT | 29)
+#define PB30_AIN_SLCDC1_DAT5	(GPIO_PORTB | GPIO_AIN | GPIO_OUT | 30)
+#define PB31_AIN_SLCDC1_DAT6	(GPIO_PORTB | GPIO_AIN | GPIO_OUT | 31)
+#define PC5_AIN_SLCDC1_DAT7	(GPIO_PORTC | GPIO_AIN | GPIO_OUT | 5)
+#define PC6_AIN_SLCDC1_DAT8	(GPIO_PORTC | GPIO_AIN | GPIO_OUT | 6)
+#define PC7_AIN_SLCDC1_DAT9	(GPIO_PORTC | GPIO_AIN | GPIO_OUT | 7)
+#define PC8_AIN_SLCDC1_DAT10	(GPIO_PORTC | GPIO_AIN | GPIO_OUT | 8)
+#define PC9_AIN_SLCDC1_DAT11	(GPIO_PORTC | GPIO_AIN | GPIO_OUT | 9)
+#define PC10_AIN_SLCDC1_DAT12	(GPIO_PORTC | GPIO_AIN | GPIO_OUT | 10)
+#define PC11_AIN_SLCDC1_DAT13	(GPIO_PORTC | GPIO_AIN | GPIO_OUT | 11)
+#define PC12_AIN_SLCDC1_DAT14	(GPIO_PORTC | GPIO_AIN | GPIO_OUT | 12)
+#define PC13_AIN_SLCDC1_DAT15	(GPIO_PORTC | GPIO_AIN | GPIO_OUT | 13)
+#define PE5_AIN_PC_SPKOUT	(GPIO_PORTE | GPIO_AIN | GPIO_OUT | 5)
+
+/* BIN GPIO pin functions */
+
+#define PE5_BIN_TOUT2		(GPIO_PORTE | GPIO_BIN | GPIO_OUT | 5)
+
+/* CIN GPIO pin functions */
+
+#define PA14_CIN_SLCDC1_DAT0	(GPIO_PORTA | GPIO_CIN | GPIO_OUT | 14)
+#define PA15_CIN_SLCDC1_DAT1	(GPIO_PORTA | GPIO_CIN | GPIO_OUT | 15)
+#define PA16_CIN_SLCDC1_DAT2	(GPIO_PORTA | GPIO_CIN | GPIO_OUT | 16)
+#define PA17_CIN_SLCDC1_DAT3	(GPIO_PORTA | GPIO_CIN | GPIO_OUT | 17)
+#define PA18_CIN_SLCDC1_DAT4	(GPIO_PORTA | GPIO_CIN | GPIO_OUT | 18)
+#define PA19_CIN_SLCDC1_DAT5	(GPIO_PORTA | GPIO_CIN | GPIO_OUT | 19)
+#define PA20_CIN_SLCDC1_DAT6	(GPIO_PORTA | GPIO_CIN | GPIO_OUT | 20)
+#define PA21_CIN_SLCDC1_DAT7	(GPIO_PORTA | GPIO_CIN | GPIO_OUT | 21)
+#define PB30_CIN_UART4_CTS	(GPIO_PORTB | GPIO_CIN | GPIO_OUT | 30)
+#define PE5_CIN_TOUT3		(GPIO_PORTE | GPIO_CIN | GPIO_OUT | 5)
+
+/* AOUT GPIO pin functions */
+
+#define PB29_AOUT_UART4_RXD	(GPIO_PORTB | GPIO_AOUT | GPIO_IN | 29)
+#define PB31_AOUT_UART4_RTS	(GPIO_PORTB | GPIO_AOUT | GPIO_IN | 31)
+#define PC8_AOUT_USBOTG_TXR_INT (GPIO_PORTC | GPIO_AOUT | GPIO_IN | 8)
+#define PC15_AOUT_WKGD		(GPIO_PORTC | GPIO_AOUT | GPIO_IN | 15)
+#define PF21_AOUT_DTACK		(GPIO_PORTF | GPIO_AOUT | GPIO_IN | 21)
+
+#endif /* ifndef __MACH_IOMUX_MX2x_H__ */
diff --git a/board/eukrea_cpuimx27/eukrea_cpuimx27.c b/board/eukrea_cpuimx27/eukrea_cpuimx27.c
index e40c260..1937d21 100644
--- a/board/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/board/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -45,6 +45,7 @@
 #include <asm/mmu.h>
 #include <i2c/i2c.h>
 #include <i2c/lp3972.h>
+#include <mach/iomux-mx27.h>
 
 static struct device_d cfi_dev = {
 	.name     = "cfi_flash",
@@ -230,7 +231,7 @@ static int eukrea_cpuimx27_devices_init(void)
 		PD11_AOUT_FEC_TX_CLK,
 		PD12_AOUT_FEC_RXD0,
 		PD13_AOUT_FEC_RX_DV,
-		PD14_AOUT_FEC_CLR,
+		PD14_AOUT_FEC_RX_CLK,
 		PD15_AOUT_FEC_COL,
 		PD16_AIN_FEC_TX_ER,
 		PF23_AIN_FEC_TX_EN,
diff --git a/board/imx21ads/imx21ads.c b/board/imx21ads/imx21ads.c
index 9eba19a..5e88af4 100644
--- a/board/imx21ads/imx21ads.c
+++ b/board/imx21ads/imx21ads.c
@@ -35,6 +35,7 @@
 #include <asm/mach-types.h>
 #include <mach/imx-nand.h>
 #include <mach/imxfb.h>
+#include <mach/iomux-mx21.h>
 
 #define MX21ADS_IO_REG    0xCC800000
 #define MX21ADS_IO_LCDON  (1 << 9)
diff --git a/board/imx27ads/imx27ads.c b/board/imx27ads/imx27ads.c
index 3512ed3..6f31520 100644
--- a/board/imx27ads/imx27ads.c
+++ b/board/imx27ads/imx27ads.c
@@ -31,6 +31,7 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <asm/mach-types.h>
+#include <mach/iomux-mx27.h>
 
 static struct device_d cfi_dev = {
 	.name     = "cfi_flash",
@@ -114,7 +115,7 @@ static int mx27ads_devices_init(void)
 		PD11_AOUT_FEC_TX_CLK,
 		PD12_AOUT_FEC_RXD0,
 		PD13_AOUT_FEC_RX_DV,
-		PD14_AOUT_FEC_CLR,
+		PD14_AOUT_FEC_RX_CLK,
 		PD15_AOUT_FEC_COL,
 		PD16_AIN_FEC_TX_ER,
 		PF23_AIN_FEC_TX_EN,
diff --git a/board/pcm038/pcm038.c b/board/pcm038/pcm038.c
index fbd53a5..03794fc 100644
--- a/board/pcm038/pcm038.c
+++ b/board/pcm038/pcm038.c
@@ -42,6 +42,7 @@
 #include <asm/mmu.h>
 #include <usb/isp1504.h>
 #include <mach/spi.h>
+#include <mach/iomux-mx27.h>
 
 static struct device_d cfi_dev = {
 	.name     = "cfi_flash",
@@ -229,7 +230,7 @@ static int pcm038_devices_init(void)
 		PD11_AOUT_FEC_TX_CLK,
 		PD12_AOUT_FEC_RXD0,
 		PD13_AOUT_FEC_RX_DV,
-		PD14_AOUT_FEC_CLR,
+		PD14_AOUT_FEC_RX_CLK,
 		PD15_AOUT_FEC_COL,
 		PD16_AIN_FEC_TX_ER,
 		PF23_AIN_FEC_TX_EN,
diff --git a/board/phycard-i.MX27/pca100.c b/board/phycard-i.MX27/pca100.c
index 2fb1e35..ce59960 100644
--- a/board/phycard-i.MX27/pca100.c
+++ b/board/phycard-i.MX27/pca100.c
@@ -38,6 +38,7 @@
 #include <gpio.h>
 #include <asm/mmu.h>
 #include <usb/isp1504.h>
+#include <mach/iomux-mx27.h>
 
 static struct memory_platform_data ram_pdata = {
 	.name = "ram0",
@@ -147,7 +148,7 @@ static int pca100_devices_init(void)
 		PD11_AOUT_FEC_TX_CLK,
 		PD12_AOUT_FEC_RXD0,
 		PD13_AOUT_FEC_RX_DV,
-		PD14_AOUT_FEC_CLR,
+		PD14_AOUT_FEC_RX_CLK,
 		PD15_AOUT_FEC_COL,
 		PD16_AIN_FEC_TX_ER,
 		PF23_AIN_FEC_TX_EN,
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
