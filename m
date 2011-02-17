Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pq2Cw-0007z9-4L
	for barebox@lists.infradead.org; Thu, 17 Feb 2011 11:39:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 17 Feb 2011 12:39:28 +0100
Message-Id: <1297942771-2289-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1297942771-2289-1-git-send-email-s.hauer@pengutronix.de>
References: <1297942771-2289-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] ARM i.MX: sync i.MX25 iomux support with kernel
To: barebox@lists.infradead.org

At least partly. We have pads in barebox that we do
not have in the kernel. Also, this with this patch we
do not set the sion bit which the kernel does.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |   90 +-
 arch/arm/boards/freescale-mx25-3-stack/3stack.c   |   36 +-
 arch/arm/mach-imx/include/mach/iomux-mx25.h       | 1288 +++++++++------------
 arch/arm/mach-imx/include/mach/iomux-mx51.h       |    2 +-
 arch/arm/mach-imx/include/mach/iomux-v3.h         |   37 +-
 5 files changed, 602 insertions(+), 851 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index ce9be97..f2b2523 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -200,57 +200,57 @@ static void eukrea_cpuimx25_mmu_init(void)
 #endif
 
 static struct pad_desc eukrea_cpuimx25_pads[] = {
-	MX25_PAD_FEC_MDC__MDC,
-	MX25_PAD_FEC_MDIO__MDIO,
-	MX25_PAD_FEC_RDATA0__RDATA0,
-	MX25_PAD_FEC_RDATA1__RDATA1,
-	MX25_PAD_FEC_RX_DV__RX_DV,
-	MX25_PAD_FEC_TDATA0__TDATA0,
-	MX25_PAD_FEC_TDATA1__TDATA1,
-	MX25_PAD_FEC_TX_CLK__TX_CLK,
-	MX25_PAD_FEC_TX_EN__TX_EN,
+	MX25_PAD_FEC_MDC__FEC_MDC,
+	MX25_PAD_FEC_MDIO__FEC_MDIO,
+	MX25_PAD_FEC_RDATA0__FEC_RDATA0,
+	MX25_PAD_FEC_RDATA1__FEC_RDATA1,
+	MX25_PAD_FEC_RX_DV__FEC_RX_DV,
+	MX25_PAD_FEC_TDATA0__FEC_TDATA0,
+	MX25_PAD_FEC_TDATA1__FEC_TDATA1,
+	MX25_PAD_FEC_TX_CLK__FEC_TX_CLK,
+	MX25_PAD_FEC_TX_EN__FEC_TX_EN,
 	/* UART1 */
-	MX25_PAD_UART1_RXD__RXD_MUX,
-	MX25_PAD_UART1_TXD__TXD_MUX,
-	MX25_PAD_UART1_RTS__RTS,
-	MX25_PAD_UART1_CTS__CTS,
+	MX25_PAD_UART1_RXD__UART1_RXD,
+	MX25_PAD_UART1_TXD__UART1_TXD,
+	MX25_PAD_UART1_RTS__UART1_RTS,
+	MX25_PAD_UART1_CTS__UART1_CTS,
 	/* LCDC */
-	MX25_PAD_LD0__LCDC_LD0,
-	MX25_PAD_LD1__LCDC_LD1,
-	MX25_PAD_LD2__LCDC_LD2,
-	MX25_PAD_LD3__LCDC_LD3,
-	MX25_PAD_LD4__LCDC_LD4,
-	MX25_PAD_LD5__LCDC_LD5,
-	MX25_PAD_LD6__LCDC_LD6,
-	MX25_PAD_LD7__LCDC_LD7,
-	MX25_PAD_LD8__LCDC_LD8,
-	MX25_PAD_LD9__LCDC_LD9,
-	MX25_PAD_LD10__LCDC_LD10,
-	MX25_PAD_LD11__LCDC_LD11,
-	MX25_PAD_LD12__LCDC_LD12,
-	MX25_PAD_LD13__LCDC_LD13,
-	MX25_PAD_LD14__LCDC_LD14,
-	MX25_PAD_LD15__LCDC_LD15,
-	MX25_PAD_GPIO_E__LCDC_LD16,
-	MX25_PAD_GPIO_F__LCDC_LD17,
-	MX25_PAD_LSCLK__LCDC_LSCLK,
-	MX25_PAD_OE_ACD__LCDC_OE_ACD,
-	MX25_PAD_VSYNC__LCDC_VSYN,
-	MX25_PAD_HSYNC__LCDC_HSYN,
+	MX25_PAD_LD0__LD0,
+	MX25_PAD_LD1__LD1,
+	MX25_PAD_LD2__LD2,
+	MX25_PAD_LD3__LD3,
+	MX25_PAD_LD4__LD4,
+	MX25_PAD_LD5__LD5,
+	MX25_PAD_LD6__LD6,
+	MX25_PAD_LD7__LD7,
+	MX25_PAD_LD8__LD8,
+	MX25_PAD_LD9__LD9,
+	MX25_PAD_LD10__LD10,
+	MX25_PAD_LD11__LD11,
+	MX25_PAD_LD12__LD12,
+	MX25_PAD_LD13__LD13,
+	MX25_PAD_LD14__LD14,
+	MX25_PAD_LD15__LD15,
+	MX25_PAD_GPIO_E__LD16,
+	MX25_PAD_GPIO_F__LD17,
+	MX25_PAD_LSCLK__LSCLK,
+	MX25_PAD_OE_ACD__OE_ACD,
+	MX25_PAD_VSYNC__VSYNC,
+	MX25_PAD_HSYNC__HSYNC,
 	/* BACKLIGHT CONTROL */
-	MX25_PAD_PWM__GPIO26,
+	MX25_PAD_PWM__GPIO_1_26,
 	/* I2C */
-	MX25_PAD_I2C1_CLK__SCL,
-	MX25_PAD_I2C1_DAT__SDA,
+	MX25_PAD_I2C1_CLK__I2C1_CLK,
+	MX25_PAD_I2C1_DAT__I2C1_DAT,
 	/* SDCard */
-	MX25_PAD_SD1_CLK__CLK,
-	MX25_PAD_SD1_CMD__CMD,
-	MX25_PAD_SD1_DATA0__DAT0,
-	MX25_PAD_SD1_DATA1__DAT1,
-	MX25_PAD_SD1_DATA2__DAT2,
-	MX25_PAD_SD1_DATA3__DAT3,
+	MX25_PAD_SD1_CLK__SD1_CLK,
+	MX25_PAD_SD1_CMD__SD1_CMD,
+	MX25_PAD_SD1_DATA0__SD1_DATA0,
+	MX25_PAD_SD1_DATA1__SD1_DATA1,
+	MX25_PAD_SD1_DATA2__SD1_DATA2,
+	MX25_PAD_SD1_DATA3__SD1_DATA3,
 	/* LED */
-	MX25_PAD_POWER_FAIL__GPIO19,
+	MX25_PAD_POWER_FAIL__GPIO_3_19,
 };
 
 static int eukrea_cpuimx25_devices_init(void)
diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index 49b7f5c..e3607f5 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
@@ -270,23 +270,23 @@ static int imx25_devices_init(void)
 device_initcall(imx25_devices_init);
 
 static struct pad_desc imx25_pads[] = {
-	MX25_PAD_FEC_MDC__MDC,
-	MX25_PAD_FEC_MDIO__MDIO,
-	MX25_PAD_FEC_RDATA0__RDATA0,
-	MX25_PAD_FEC_RDATA1__RDATA1,
-	MX25_PAD_FEC_RX_DV__RX_DV,
-	MX25_PAD_FEC_TDATA0__TDATA0,
-	MX25_PAD_FEC_TDATA1__TDATA1,
-	MX25_PAD_FEC_TX_CLK__TX_CLK,
-	MX25_PAD_FEC_TX_EN__TX_EN,
-	MX25_PAD_POWER_FAIL__POWER_FAIL_INT,
-	MX25_PAD_A17__GPIO3,
-	MX25_PAD_D12__GPIO8,
+	MX25_PAD_FEC_MDC__FEC_MDC,
+	MX25_PAD_FEC_MDIO__FEC_MDIO,
+	MX25_PAD_FEC_RDATA0__FEC_RDATA0,
+	MX25_PAD_FEC_RDATA1__FEC_RDATA1,
+	MX25_PAD_FEC_RX_DV__FEC_RX_DV,
+	MX25_PAD_FEC_TDATA0__FEC_TDATA0,
+	MX25_PAD_FEC_TDATA1__FEC_TDATA1,
+	MX25_PAD_FEC_TX_CLK__FEC_TX_CLK,
+	MX25_PAD_FEC_TX_EN__FEC_TX_EN,
+	MX25_PAD_POWER_FAIL__POWER_FAIL,
+	MX25_PAD_A17__GPIO_2_3,
+	MX25_PAD_D12__GPIO_4_8,
 	/* UART1 */
-	MX25_PAD_UART1_RXD__RXD_MUX,
-	MX25_PAD_UART1_TXD__TXD_MUX,
-	MX25_PAD_UART1_RTS__RTS,
-	MX25_PAD_UART1_CTS__CTS,
+	MX25_PAD_UART1_RXD__UART1_RXD,
+	MX25_PAD_UART1_TXD__UART1_TXD,
+	MX25_PAD_UART1_RTS__UART1_RTS,
+	MX25_PAD_UART1_CTS__UART1_CTS,
 	/* USBH2 */
 	MX25_PAD_D9__USBH2_PWR,
 	MX25_PAD_D8__USBH2_OC,
@@ -303,8 +303,8 @@ static struct pad_desc imx25_pads[] = {
 	MX25_PAD_LSCLK__USBH2_DATA6,
 	MX25_PAD_OE_ACD__USBH2_DATA7,
 	/* i2c */
-	MX25_PAD_I2C1_CLK__SCL,
-	MX25_PAD_I2C1_DAT__SDA,
+	MX25_PAD_I2C1_CLK__I2C1_CLK,
+	MX25_PAD_I2C1_DAT__I2C1_DAT,
 };
 
 static int imx25_console_init(void)
diff --git a/arch/arm/mach-imx/include/mach/iomux-mx25.h b/arch/arm/mach-imx/include/mach/iomux-mx25.h
index a8ca8f1..e636c7f 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx25.h
+++ b/arch/arm/mach-imx/include/mach/iomux-mx25.h
@@ -1,773 +1,529 @@
+/*
+ * arch/arm/plat-mxc/include/mach/iomux-mx25.h
+ *
+ * Copyright (C) 2009 by Lothar Wassmann <LW@KARO-electronics.de>
+ *
+ * based on arch/arm/mach-mx25/mx25_pins.h
+ *    Copyright 2008 Freescale Semiconductor, Inc. All Rights Reserved.
+ * and
+ * arch/arm/plat-mxc/include/mach/iomux-mx35.h
+ *    Copyright (C) 2009 by Jan Weitzel Phytec Messtechnik GmbH <armlinux@phytec.de>
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
 #ifndef __MACH_IOMUX_MX25_H__
 #define __MACH_IOMUX_MX25_H__
 
 #include <mach/iomux-v3.h>
 
-#define SRE		(1 << 0)
-#define DSE_STD		(0 << 1)
-#define DSE_HIGH	(1 << 1)
-#define DSE_MAX		(2 << 1)
-#define ODE		(1 << 3)
-#define PUS_100K_DOWN	(0 << 4)
-#define PUS_47K_UP	(1 << 4)
-#define PUS_100K_UP	(2 << 4)
-#define PUS_22K_UP	(3 << 4)
-#define PUE		(1 << 6)
-#define PKE		(1 << 7)
-#define HYS		(1 << 8)
-#define DVS		(1 << 13)
-
-#define MX25_PAD_A10__EIM_DA_H10                           IOMUX_PAD(0x000,   0x8, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A10__GPIO0                                IOMUX_PAD(0x000,   0x8, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A13__EIM_DA_H13                           IOMUX_PAD(0x22c,   0xc, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A13__GPIO1                                IOMUX_PAD(0x22c,   0xc, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A13__LCDC_CLS                             IOMUX_PAD(0x22c,   0xc, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A14__EIM_DA_H214                          IOMUX_PAD(0x230,  0x10, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A14__GPIO0                                IOMUX_PAD(0x230,  0x10, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A14__CLK1                                 IOMUX_PAD(0x230,  0x10, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A14__LCDC_SPL                             IOMUX_PAD(0x230,  0x10, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A15__EIM_DA_H215                          IOMUX_PAD(0x234,  0x14, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A15__GPIO1                                IOMUX_PAD(0x234,  0x14, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A15__RST1                                 IOMUX_PAD(0x234,  0x14, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A15__LCDC_PS                              IOMUX_PAD(0x234,  0x14, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A16__EIM_A16                              IOMUX_PAD(0x000,  0x18, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A16__GPIO2                                IOMUX_PAD(0x000,  0x18, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A16__VEN1                                 IOMUX_PAD(0x000,  0x18, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A16__LCDC_REV                             IOMUX_PAD(0x000,  0x18, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A17__EIM_A17                              IOMUX_PAD(0x238,  0x1c, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A17__GPIO3                                IOMUX_PAD(0x238,  0x1c, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A17__TX1                                  IOMUX_PAD(0x238,  0x1c, 6, 0x554, 0, NO_PAD_CTRL)
-#define MX25_PAD_A17__TX_ERR                               IOMUX_PAD(0x238,  0x1c, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A18__EIM_A18                              IOMUX_PAD(0x23c,  0x20, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A18__GPIO4                                IOMUX_PAD(0x23c,  0x20, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A18__PD1                                  IOMUX_PAD(0x23c,  0x20, 6, 0x550, 0, NO_PAD_CTRL)
-#define MX25_PAD_A18__COL                                  IOMUX_PAD(0x23c,  0x20, 7, 0x504, 0, NO_PAD_CTRL)
-#define MX25_PAD_A19__EIM_A19                              IOMUX_PAD(0x240,  0x24, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A19__GPIO5                                IOMUX_PAD(0x240,  0x24, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A19__RX1                                  IOMUX_PAD(0x240,  0x24, 6, 0x54c, 0, NO_PAD_CTRL)
-#define MX25_PAD_A19__RX_ERR                               IOMUX_PAD(0x240,  0x24, 7, 0x518, 0, NO_PAD_CTRL)
-#define MX25_PAD_A20__EIM_A20                              IOMUX_PAD(0x244,  0x28, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A20__GPIO6                                IOMUX_PAD(0x244,  0x28, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A20__CLK1                                 IOMUX_PAD(0x244,  0x28, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A20__RDATA2                               IOMUX_PAD(0x244,  0x28, 7, 0x50c, 0, NO_PAD_CTRL)
-#define MX25_PAD_A21__EIM_A21                              IOMUX_PAD(0x248,  0x2c, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A21__GPIO7                                IOMUX_PAD(0x248,  0x2c, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A21__RST1                                 IOMUX_PAD(0x248,  0x2c, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A21__RDATA3                               IOMUX_PAD(0x248,  0x2c, 7, 0x510, 0, NO_PAD_CTRL)
-#define MX25_PAD_A22__EIM_A22                              IOMUX_PAD(0x000,  0x30, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A22__GPIO8                                IOMUX_PAD(0x000,  0x30, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A22__VEN1                                 IOMUX_PAD(0x000,  0x30, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A22__TDATA2                               IOMUX_PAD(0x000,  0x30, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A23__EIM_A23                              IOMUX_PAD(0x24c,  0x34, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A23__GPIO9                                IOMUX_PAD(0x24c,  0x34, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A23__TX1                                  IOMUX_PAD(0x24c,  0x34, 6, 0x560, 0, NO_PAD_CTRL)
-#define MX25_PAD_A23__TDATA3                               IOMUX_PAD(0x24c,  0x34, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A24__EIM_A24                              IOMUX_PAD(0x250,  0x38, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A24__GPIO10                               IOMUX_PAD(0x250,  0x38, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A24__PD1                                  IOMUX_PAD(0x250,  0x38, 6, 0x55c, 0, NO_PAD_CTRL)
-#define MX25_PAD_A24__RX_CLK                               IOMUX_PAD(0x250,  0x38, 7, 0x514, 0, NO_PAD_CTRL)
-#define MX25_PAD_A25__EIM_A25                              IOMUX_PAD(0x254,  0x3c, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A25__GPIO11                               IOMUX_PAD(0x254,  0x3c, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_A25__RX1                                  IOMUX_PAD(0x254,  0x3c, 6, 0x558, 0, NO_PAD_CTRL)
-#define MX25_PAD_A25__CRS                                  IOMUX_PAD(0x254,  0x3c, 7, 0x508, 0, NO_PAD_CTRL)
-#define MX25_PAD_BCLK__EIM_BCLK                            IOMUX_PAD(0x000,  0x68, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_BCLK__GPIO4                               IOMUX_PAD(0x000,  0x68, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_BOOT_MODE0__BOOT_MODE0                    IOMUX_PAD(0x000, 0x224, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_BOOT_MODE0__GPIO30                        IOMUX_PAD(0x000, 0x224, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_BOOT_MODE1__BOOT_MODE1                    IOMUX_PAD(0x000, 0x228, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_BOOT_MODE1__GPIO31                        IOMUX_PAD(0x000, 0x228, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CLKO__CLKO                                IOMUX_PAD(0x414, 0x220, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CLKO__GPIO21                              IOMUX_PAD(0x414, 0x220, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CONTRAST__LCDC_CONTRAST                   IOMUX_PAD(0x310, 0x118, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CONTRAST__CAPIN1                          IOMUX_PAD(0x310, 0x118, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CONTRAST__SS1                             IOMUX_PAD(0x310, 0x118, 2, 0x4a8, 0, NO_PAD_CTRL)
-#define MX25_PAD_CONTRAST__DA_2                            IOMUX_PAD(0x310, 0x118, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CONTRAST__PWMO                            IOMUX_PAD(0x310, 0x118, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CONTRAST__CRS                             IOMUX_PAD(0x310, 0x118, 5, 0x508, 1, NO_PAD_CTRL)
-#define MX25_PAD_CONTRAST__USBH2_PWR                       IOMUX_PAD(0x310, 0x118, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CONTRAST__WDOG_B                          IOMUX_PAD(0x310, 0x118, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CS0__EIM_CS0                              IOMUX_PAD(0x000,  0x4c, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CS0__GPIO2                                IOMUX_PAD(0x000,  0x4c, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CS1__EIM_CS1                              IOMUX_PAD(0x000,  0x50, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CS1__NANDF_CE3                            IOMUX_PAD(0x000,  0x50, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CS1__GPIO3                                IOMUX_PAD(0x000,  0x50, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CS4__EIM_CS4                              IOMUX_PAD(0x264,  0x54, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CS4__NANDF_CE1                            IOMUX_PAD(0x264,  0x54, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CS4__CTS                                  IOMUX_PAD(0x264,  0x54, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CS4__AUD4_RXC                             IOMUX_PAD(0x264,  0x54, 4, 0x468, 0, NO_PAD_CTRL)
-#define MX25_PAD_CS4__GPIO20                               IOMUX_PAD(0x264,  0x54, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CS4__MOSI                                 IOMUX_PAD(0x264,  0x54, 6, 0x4b8, 0, NO_PAD_CTRL)
-#define MX25_PAD_CS4__TRSYNC                               IOMUX_PAD(0x264,  0x54, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CS5__EIM_CS5                              IOMUX_PAD(0x268,  0x58, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CS5__NANDF_CE2                            IOMUX_PAD(0x268,  0x58, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CS5__DTACK_B                              IOMUX_PAD(0x268,  0x58, 2,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CS5__RTS                                  IOMUX_PAD(0x268,  0x58, 3, 0x574, 0, NO_PAD_CTRL)
-#define MX25_PAD_CS5__AUD4_RXFS                            IOMUX_PAD(0x268,  0x58, 4, 0x46c, 0, NO_PAD_CTRL)
-#define MX25_PAD_CS5__GPIO21                               IOMUX_PAD(0x268,  0x58, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CS5__MISO                                 IOMUX_PAD(0x268,  0x58, 6, 0x4b4, 0, NO_PAD_CTRL)
-#define MX25_PAD_CS5__TRCLK                                IOMUX_PAD(0x268,  0x58, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D2__CSI_D2                            IOMUX_PAD(0x318, 0x120, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D2__RXD_MUX                           IOMUX_PAD(0x318, 0x120, 1, 0x578, 1, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D2__DAT4                              IOMUX_PAD(0x318, 0x120, 2, 0x4f4, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D2__SCKR                              IOMUX_PAD(0x318, 0x120, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D2__CLK0                              IOMUX_PAD(0x318, 0x120, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D2__GPIO27                            IOMUX_PAD(0x318, 0x120, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D2__MOSI                              IOMUX_PAD(0x318, 0x120, 7, 0x4b8, 1, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D2__USBOTG_DATA0                      IOMUX_PAD(0x318, 0x120, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D3__CSI_D3                            IOMUX_PAD(0x31c, 0x124, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D3__TXD_MUX                           IOMUX_PAD(0x31c, 0x124, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D3__DAT5                              IOMUX_PAD(0x31c, 0x124, 2, 0x4f8, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D3__FSR                               IOMUX_PAD(0x31c, 0x124, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D3__RST0                              IOMUX_PAD(0x31c, 0x124, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D3__GPIO28                            IOMUX_PAD(0x31c, 0x124, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D3__MISO                              IOMUX_PAD(0x31c, 0x124, 7, 0x4b4, 1, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D3__USBOTG_DATA1                      IOMUX_PAD(0x31c, 0x124, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D4__CSI_D4                            IOMUX_PAD(0x320, 0x128, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D4__RTS                               IOMUX_PAD(0x320, 0x128, 1, 0x574, 1, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D4__DAT6                              IOMUX_PAD(0x320, 0x128, 2, 0x4fc, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D4__HCKR                              IOMUX_PAD(0x320, 0x128, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D4__VEN0                              IOMUX_PAD(0x320, 0x128, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D4__GPIO29                            IOMUX_PAD(0x320, 0x128, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D4__USBOTG_DATA2                      IOMUX_PAD(0x320, 0x128, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D4__SCLK                              IOMUX_PAD(0x320, 0x128, 7, 0x4ac, 1, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D5__CSI_D5                            IOMUX_PAD(0x324, 0x12c, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D5__CTS                               IOMUX_PAD(0x324, 0x12c, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D5__DAT7                              IOMUX_PAD(0x324, 0x12c, 2, 0x500, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D5__SCKT                              IOMUX_PAD(0x324, 0x12c, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D5__TX0                               IOMUX_PAD(0x324, 0x12c, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D5__GPIO30                            IOMUX_PAD(0x324, 0x12c, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D5__USBOTG_DATA3                      IOMUX_PAD(0x324, 0x12c, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D5__RDY                               IOMUX_PAD(0x324, 0x12c, 7, 0x4b0, 1, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D6__CSI_D6                            IOMUX_PAD(0x328, 0x130, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D6__ROW6                              IOMUX_PAD(0x328, 0x130, 1, 0x544, 1, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D6__CMD                               IOMUX_PAD(0x328, 0x130, 2, 0x4e0, 1, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D6__FST                               IOMUX_PAD(0x328, 0x130, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D6__PD0                               IOMUX_PAD(0x328, 0x130, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D6__GPIO31                            IOMUX_PAD(0x328, 0x130, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D6__USBOTG_DATA4                      IOMUX_PAD(0x328, 0x130, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D6__SS0                               IOMUX_PAD(0x328, 0x130, 7, 0x4bc, 1, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D7__CSI_D7                            IOMUX_PAD(0x32c, 0x134, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D7__ROW7                              IOMUX_PAD(0x32c, 0x134, 1, 0x548, 1, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D7__CLK                               IOMUX_PAD(0x32c, 0x134, 2, 0x4dc, 1, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D7__HCKT                              IOMUX_PAD(0x32c, 0x134, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D7__RX0                               IOMUX_PAD(0x32c, 0x134, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D7__GPIO6                             IOMUX_PAD(0x32c, 0x134, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D7__USBOTG_DATA5                      IOMUX_PAD(0x32c, 0x134, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D7__SS1                               IOMUX_PAD(0x32c, 0x134, 7, 0x4c0, 1, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D8__CSI_D8                            IOMUX_PAD(0x330, 0x138, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D8__COL6                              IOMUX_PAD(0x330, 0x138, 1, 0x534, 1, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D8__AUD6_RXC                          IOMUX_PAD(0x330, 0x138, 2,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D8__TX5_RX0                           IOMUX_PAD(0x330, 0x138, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D8__CLK0                              IOMUX_PAD(0x330, 0x138, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D8__GPIO7                             IOMUX_PAD(0x330, 0x138, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D8__USBOTG_DATA6                      IOMUX_PAD(0x330, 0x138, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D8__SS2                               IOMUX_PAD(0x330, 0x138, 7, 0x4c4, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D9__CSI_D9                            IOMUX_PAD(0x334, 0x13c, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D9__COL7                              IOMUX_PAD(0x334, 0x13c, 1, 0x538, 1, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D9__AUD6_RXFS                         IOMUX_PAD(0x334, 0x13c, 2,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D9__TX4_RX1                           IOMUX_PAD(0x334, 0x13c, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D9__RST0                              IOMUX_PAD(0x334, 0x13c, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D9__GPIO21                            IOMUX_PAD(0x334, 0x13c, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D9__USBOTG_DATA7                      IOMUX_PAD(0x334, 0x13c, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_D9__SS3                               IOMUX_PAD(0x334, 0x13c, 7, 0x4c8, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_HSYNC__CSI_HSYNC                      IOMUX_PAD(0x340, 0x148, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_HSYNC__AUD6_TXC                       IOMUX_PAD(0x340, 0x148, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_HSYNC__DAT2                           IOMUX_PAD(0x340, 0x148, 2, 0x4ec, 1, NO_PAD_CTRL)
-#define MX25_PAD_CSI_HSYNC__TX1                            IOMUX_PAD(0x340, 0x148, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_HSYNC__PD0                            IOMUX_PAD(0x340, 0x148, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_HSYNC__GPIO10                         IOMUX_PAD(0x340, 0x148, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_HSYNC__USBOTG_NXT                     IOMUX_PAD(0x340, 0x148, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_HSYNC__BT_RES2                        IOMUX_PAD(0x340, 0x148, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_MCLK__CSI_MCLK                        IOMUX_PAD(0x338, 0x140, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_MCLK__AUD6_TXD                        IOMUX_PAD(0x338, 0x140, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_MCLK__DAT0                            IOMUX_PAD(0x338, 0x140, 2, 0x4e4, 1, NO_PAD_CTRL)
-#define MX25_PAD_CSI_MCLK__TX3_RX2                         IOMUX_PAD(0x338, 0x140, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_MCLK__VEN0                            IOMUX_PAD(0x338, 0x140, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_MCLK__GPIO8                           IOMUX_PAD(0x338, 0x140, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_MCLK__USBOTG_DIR                      IOMUX_PAD(0x338, 0x140, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_MCLK__BT_RES0                         IOMUX_PAD(0x338, 0x140, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_PIXCLK__CSI_PIXCLK                    IOMUX_PAD(0x344, 0x14c, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_PIXCLK__AUD6_TXFS                     IOMUX_PAD(0x344, 0x14c, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_PIXCLK__DAT3                          IOMUX_PAD(0x344, 0x14c, 2, 0x4f0, 1, NO_PAD_CTRL)
-#define MX25_PAD_CSI_PIXCLK__TX0                           IOMUX_PAD(0x344, 0x14c, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_PIXCLK__RX0                           IOMUX_PAD(0x344, 0x14c, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_PIXCLK__GPIO11                        IOMUX_PAD(0x344, 0x14c, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_PIXCLK__USBOTG_CLK                    IOMUX_PAD(0x344, 0x14c, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_PIXCLK__BT_RES3                       IOMUX_PAD(0x344, 0x14c, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_VSYNC__CSI_VSYNC                      IOMUX_PAD(0x33c, 0x144, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_VSYNC__AUD6_RXD                       IOMUX_PAD(0x33c, 0x144, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_VSYNC__DAT1                           IOMUX_PAD(0x33c, 0x144, 2, 0x4e8, 1, NO_PAD_CTRL)
-#define MX25_PAD_CSI_VSYNC__TX2_RX3                        IOMUX_PAD(0x33c, 0x144, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_VSYNC__TX0                            IOMUX_PAD(0x33c, 0x144, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_VSYNC__GPIO9                          IOMUX_PAD(0x33c, 0x144, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_VSYNC__USBOTG_STP                     IOMUX_PAD(0x33c, 0x144, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSI_VSYNC__BT_RES1                        IOMUX_PAD(0x33c, 0x144, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSPI1_MISO__MISO                          IOMUX_PAD(0x354, 0x15c, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSPI1_MISO__TXD_MUX                       IOMUX_PAD(0x354, 0x15c, 2,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSPI1_MISO__SDMA_DBG_EVT_1                IOMUX_PAD(0x354, 0x15c, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSPI1_MISO__GPIO15                        IOMUX_PAD(0x354, 0x15c, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSPI1_MISO__SLCDC_DATA13                  IOMUX_PAD(0x354, 0x15c, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSPI1_MISO__TRACE5                        IOMUX_PAD(0x354, 0x15c, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSPI1_MOSI__MOSI                          IOMUX_PAD(0x350, 0x158, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSPI1_MOSI__RXD_MUX                       IOMUX_PAD(0x350, 0x158, 2, 0x568, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSPI1_MOSI__SDMA_DBG_EVT_0                IOMUX_PAD(0x350, 0x158, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSPI1_MOSI__GPIO14                        IOMUX_PAD(0x350, 0x158, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSPI1_MOSI__SLCDC_DATA12                  IOMUX_PAD(0x350, 0x158, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSPI1_MOSI__TRACE4                        IOMUX_PAD(0x350, 0x158, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSPI1_RDY__RDY                            IOMUX_PAD(0x364, 0x16c, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSPI1_RDY__SDMA_DBG_EVT_5                 IOMUX_PAD(0x364, 0x16c, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSPI1_RDY__GPIO22                         IOMUX_PAD(0x364, 0x16c, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSPI1_RDY__SLCDC_DATA15                   IOMUX_PAD(0x364, 0x16c, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSPI1_RDY__TRACE9                         IOMUX_PAD(0x364, 0x16c, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSPI1_SCLK__SCLK                          IOMUX_PAD(0x360, 0x168, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSPI1_SCLK__CTS                           IOMUX_PAD(0x360, 0x168, 2,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSPI1_SCLK__SDMA_DBG_EVT_4                IOMUX_PAD(0x360, 0x168, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSPI1_SCLK__GPIO18                        IOMUX_PAD(0x360, 0x168, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSPI1_SCLK__SLCDC_DATA14                  IOMUX_PAD(0x360, 0x168, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSPI1_SCLK__TRACE8                        IOMUX_PAD(0x360, 0x168, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSPI1_SS0__SS0                            IOMUX_PAD(0x358, 0x160, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSPI1_SS0__LCDC_LD16                      IOMUX_PAD(0x358, 0x160, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSPI1_SS0__PWMO                           IOMUX_PAD(0x358, 0x160, 2,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSPI1_SS0__SDMA_DBG_EVT_2                 IOMUX_PAD(0x358, 0x160, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSPI1_SS0__GPIO16                         IOMUX_PAD(0x358, 0x160, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSPI1_SS0__SLCDC_CS                       IOMUX_PAD(0x358, 0x160, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSPI1_SS0__TRACE6                         IOMUX_PAD(0x358, 0x160, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSPI1_SS1__SS1                            IOMUX_PAD(0x35c, 0x164, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSPI1_SS1__SDA                            IOMUX_PAD(0x35c, 0x164, 1, 0x528, 1, NO_PAD_CTRL)
-#define MX25_PAD_CSPI1_SS1__RTS                            IOMUX_PAD(0x35c, 0x164, 2, 0x564, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSPI1_SS1__SDMA_DBG_EVT_3                 IOMUX_PAD(0x35c, 0x164, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSPI1_SS1__GPIO17                         IOMUX_PAD(0x35c, 0x164, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSPI1_SS1__SLCDC_RS                       IOMUX_PAD(0x35c, 0x164, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_CSPI1_SS1__TRACE7                         IOMUX_PAD(0x35c, 0x164, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D0__EIM_D0                                IOMUX_PAD(0x2bc,  0xc4, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D0__GPIO20                                IOMUX_PAD(0x2bc,  0xc4, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D10__EIM_D10                              IOMUX_PAD(0x294,  0x9c, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D10__LCDC_LD21                            IOMUX_PAD(0x294,  0x9c, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D10__GPIO10                               IOMUX_PAD(0x294,  0x9c, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D10__USBOTG_OC                            IOMUX_PAD(0x294,  0x9c, 6, 0x57c, 0, NO_PAD_CTRL)
-#define MX25_PAD_D11__EIM_D11                              IOMUX_PAD(0x290,  0x98, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D11__LCDC_LD20                            IOMUX_PAD(0x290,  0x98, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D11__GPIO9                                IOMUX_PAD(0x290,  0x98, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D11__USBOTG_PWR                           IOMUX_PAD(0x290,  0x98, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D12__EIM_D12                              IOMUX_PAD(0x28c,  0x94, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D12__GPIO8                                IOMUX_PAD(0x28c,  0x94, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D12__DAT4                                 IOMUX_PAD(0x28c,  0x94, 6, 0x4cc, 0, NO_PAD_CTRL)
-#define MX25_PAD_D12__LCDC_LD19                            IOMUX_PAD(0x28c,  0x94, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D13__EIM_D13                              IOMUX_PAD(0x288,  0x90, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D13__LCDC_LD18                            IOMUX_PAD(0x288,  0x90, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D13__GPIO7                                IOMUX_PAD(0x288,  0x90, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D13__DAT5                                 IOMUX_PAD(0x288,  0x90, 6, 0x4d0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D14__EIM_D14                              IOMUX_PAD(0x284,  0x8c, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D14__LCDC_LD17                            IOMUX_PAD(0x284,  0x8c, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D14__GPIO6                                IOMUX_PAD(0x284,  0x8c, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D14__DAT6                                 IOMUX_PAD(0x284,  0x8c, 6, 0x4d4, 0, NO_PAD_CTRL)
-#define MX25_PAD_D15__EIM_D15                              IOMUX_PAD(0x280,  0x88, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D15__LCDC_LD16                            IOMUX_PAD(0x280,  0x88, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D15__GPIO5                                IOMUX_PAD(0x280,  0x88, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D15__DAT7                                 IOMUX_PAD(0x280,  0x88, 6, 0x4d8, 0, NO_PAD_CTRL)
-#define MX25_PAD_D1__EIM_D1                                IOMUX_PAD(0x2b8,  0xc0, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D1__GPIO19                                IOMUX_PAD(0x2b8,  0xc0, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D2__EIM_D2                                IOMUX_PAD(0x2b4,  0xbc, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D2__GPIO18                                IOMUX_PAD(0x2b4,  0xbc, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D3__EIM_D3                                IOMUX_PAD(0x2b0,  0xb8, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D3__GPIO17                                IOMUX_PAD(0x2b0,  0xb8, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D4__EIM_D4                                IOMUX_PAD(0x2ac,  0xb4, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D4__GPIO16                                IOMUX_PAD(0x2ac,  0xb4, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D5__EIM_D5                                IOMUX_PAD(0x2a8,  0xb0, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D5__GPIO15                                IOMUX_PAD(0x2a8,  0xb0, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D6__EIM_D6                                IOMUX_PAD(0x2a4,  0xac, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D6__GPIO14                                IOMUX_PAD(0x2a4,  0xac, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D7__EIM_D7                                IOMUX_PAD(0x2a0,  0xa8, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D7__GPIO13                                IOMUX_PAD(0x2a0,  0xa8, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D8__EIM_D8                                IOMUX_PAD(0x29c,  0xa4, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D8__LCDC_LD23                             IOMUX_PAD(0x29c,  0xa4, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D8__GPIO12                                IOMUX_PAD(0x29c,  0xa4, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D8__USBH2_OC                              IOMUX_PAD(0x29c,  0xa4, 6, 0x580, 0, 0x1c0)
-#define MX25_PAD_D9__EIM_D9                                IOMUX_PAD(0x298,  0xa0, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D9__LCDC_LD22                             IOMUX_PAD(0x298,  0xa0, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D9__GPIO11                                IOMUX_PAD(0x298,  0xa0, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_D9__USBH2_PWR                             IOMUX_PAD(0x298,  0xa0, 6,     0, 0, 0x60)
-#define MX25_PAD_DE_B__DE_B                                IOMUX_PAD(0x3ec, 0x1f0, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_DE_B__GPIO20                              IOMUX_PAD(0x3ec, 0x1f0, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_EB0__EIM_EB0_B                            IOMUX_PAD(0x258,  0x40, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_EB0__AUD4_TXD                             IOMUX_PAD(0x258,  0x40, 4, 0x464, 0, NO_PAD_CTRL)
-#define MX25_PAD_EB0__GPIO12                               IOMUX_PAD(0x258,  0x40, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_EB0__SS0                                  IOMUX_PAD(0x258,  0x40, 6, 0x4bc, 0, NO_PAD_CTRL)
-#define MX25_PAD_EB1__EIM_EB1_B                            IOMUX_PAD(0x25c,  0x44, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_EB1__AUD4_RXD                             IOMUX_PAD(0x25c,  0x44, 4, 0x460, 0, NO_PAD_CTRL)
-#define MX25_PAD_EB1__GPIO13                               IOMUX_PAD(0x25c,  0x44, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_EB1__SS1                                  IOMUX_PAD(0x25c,  0x44, 6, 0x4c0, 0, NO_PAD_CTRL)
-#define MX25_PAD_ECB__EIM_ECB                              IOMUX_PAD(0x270,  0x60, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_ECB__TXD_MUX                              IOMUX_PAD(0x270,  0x60, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_ECB__GPIO23                               IOMUX_PAD(0x270,  0x60, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_ECB__SCLK                                 IOMUX_PAD(0x270,  0x60, 6, 0x4ac, 0, NO_PAD_CTRL)
-#define MX25_PAD_EXT_ARMCLK__EXT_ARMCLK                    IOMUX_PAD(0x000, 0x20c, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_EXT_ARMCLK__GPIO15                        IOMUX_PAD(0x000, 0x20c, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_MDC__MDC                              IOMUX_PAD(0x3c0, 0x1c8, 0,     0, 0, PUE)
-#define MX25_PAD_FEC_MDC__CMD                              IOMUX_PAD(0x3c0, 0x1c8, 1, 0x4e0, 2, NO_PAD_CTRL)
-#define MX25_PAD_FEC_MDC__AUD4_TXD                         IOMUX_PAD(0x3c0, 0x1c8, 2, 0x464, 1, NO_PAD_CTRL)
-#define MX25_PAD_FEC_MDC__DIOR                             IOMUX_PAD(0x3c0, 0x1c8, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_MDC__GPIO5                            IOMUX_PAD(0x3c0, 0x1c8, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_MDC__SDMA_DBG_PC_8                    IOMUX_PAD(0x3c0, 0x1c8, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_MDC__LCDC_LD16                        IOMUX_PAD(0x3c0, 0x1c8, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_MDIO__MDIO                            IOMUX_PAD(0x3c4, 0x1cc, 0,     0, 0, (HYS | PKE | PUE | PUS_22K_UP))
-#define MX25_PAD_FEC_MDIO__CLK                             IOMUX_PAD(0x3c4, 0x1cc, 1, 0x4dc, 2, NO_PAD_CTRL)
-#define MX25_PAD_FEC_MDIO__AUD4_RXD                        IOMUX_PAD(0x3c4, 0x1cc, 2, 0x460, 1, NO_PAD_CTRL)
-#define MX25_PAD_FEC_MDIO__DIOW                            IOMUX_PAD(0x3c4, 0x1cc, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_MDIO__GPIO6                           IOMUX_PAD(0x3c4, 0x1cc, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_MDIO__SDMA_DBG_PC_9                   IOMUX_PAD(0x3c4, 0x1cc, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_MDIO__LCDC_LD17                       IOMUX_PAD(0x3c4, 0x1cc, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_RDATA0__RDATA0                        IOMUX_PAD(0x3d4, 0x1dc, 0,     0, 0, (HYS | PKE | PUE))
-#define MX25_PAD_FEC_RDATA0__DAT3                          IOMUX_PAD(0x3d4, 0x1dc, 1, 0x4f0, 2, NO_PAD_CTRL)
-#define MX25_PAD_FEC_RDATA0__AUD4_RXFS                     IOMUX_PAD(0x3d4, 0x1dc, 2, 0x46c, 1, NO_PAD_CTRL)
-#define MX25_PAD_FEC_RDATA0__INTRQ                         IOMUX_PAD(0x3d4, 0x1dc, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_RDATA0__RXCAN                         IOMUX_PAD(0x3d4, 0x1dc, 4, 0x480, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_RDATA0__GPIO10                        IOMUX_PAD(0x3d4, 0x1dc, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_RDATA0__ROW5                          IOMUX_PAD(0x3d4, 0x1dc, 6, 0x540, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_RDATA0__LCDC_LD21                     IOMUX_PAD(0x3d4, 0x1dc, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_RDATA1__RDATA1                        IOMUX_PAD(0x3d8, 0x1e0, 0,     0, 0, (HYS | PKE | PUE))
-#define MX25_PAD_FEC_RDATA1__SCL                           IOMUX_PAD(0x3d8, 0x1e0, 1, 0x51c, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_RDATA1__DAT4                          IOMUX_PAD(0x3d8, 0x1e0, 2, 0x4f4, 1, NO_PAD_CTRL)
-#define MX25_PAD_FEC_RDATA1__CS0                           IOMUX_PAD(0x3d8, 0x1e0, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_RDATA1__TXCAN                         IOMUX_PAD(0x3d8, 0x1e0, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_RDATA1__GPIO11                        IOMUX_PAD(0x3d8, 0x1e0, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_RDATA1__COL4                          IOMUX_PAD(0x3d8, 0x1e0, 6, 0x52c, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_RDATA1__LCDC_LD22                     IOMUX_PAD(0x3d8, 0x1e0, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_RX_DV__RX_DV                          IOMUX_PAD(0x3dc, 0x1e4, 0,     0, 0, (HYS | PKE | PUE))
-#define MX25_PAD_FEC_RX_DV__SDA                            IOMUX_PAD(0x3dc, 0x1e4, 1, 0x520, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_RX_DV__DAT5                           IOMUX_PAD(0x3dc, 0x1e4, 2, 0x4f8, 1, NO_PAD_CTRL)
-#define MX25_PAD_FEC_RX_DV__CS1                            IOMUX_PAD(0x3dc, 0x1e4, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_RX_DV__RXCAN                          IOMUX_PAD(0x3dc, 0x1e4, 4, 0x484, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_RX_DV__GPIO12                         IOMUX_PAD(0x3dc, 0x1e4, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_RX_DV__COL5                           IOMUX_PAD(0x3dc, 0x1e4, 6, 0x530, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_RX_DV__LCDC_LD23                      IOMUX_PAD(0x3dc, 0x1e4, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_TDATA0__TDATA0                        IOMUX_PAD(0x3c8, 0x1d0, 0,     0, 0, PUE)
-#define MX25_PAD_FEC_TDATA0__DAT0                          IOMUX_PAD(0x3c8, 0x1d0, 1, 0x4e4, 2, NO_PAD_CTRL)
-#define MX25_PAD_FEC_TDATA0__AUD4_TXC                      IOMUX_PAD(0x3c8, 0x1d0, 2,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_TDATA0__DMACK                         IOMUX_PAD(0x3c8, 0x1d0, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_TDATA0__GPIO7                         IOMUX_PAD(0x3c8, 0x1d0, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_TDATA0__SDMA_DBG_PC_10                IOMUX_PAD(0x3c8, 0x1d0, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_TDATA0__LCDC_LD18                     IOMUX_PAD(0x3c8, 0x1d0, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_TDATA1__TDATA1                        IOMUX_PAD(0x3cc, 0x1d4, 0,     0, 0, PUE)
-#define MX25_PAD_FEC_TDATA1__DAT1                          IOMUX_PAD(0x3cc, 0x1d4, 1, 0x4e8, 2, NO_PAD_CTRL)
-#define MX25_PAD_FEC_TDATA1__AUD4_TXFS                     IOMUX_PAD(0x3cc, 0x1d4, 2, 0x474, 1, NO_PAD_CTRL)
-#define MX25_PAD_FEC_TDATA1__RESET_B                       IOMUX_PAD(0x3cc, 0x1d4, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_TDATA1__GPIO8                         IOMUX_PAD(0x3cc, 0x1d4, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_TDATA1__SDMA_DBG_PC_11                IOMUX_PAD(0x3cc, 0x1d4, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_TDATA1__LCDC_LD19                     IOMUX_PAD(0x3cc, 0x1d4, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_TX_CLK__TX_CLK                        IOMUX_PAD(0x3e0, 0x1e8, 0,     0, 0, (HYS | PKE | PUE))
-#define MX25_PAD_FEC_TX_CLK__PWMO                          IOMUX_PAD(0x3e0, 0x1e8, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_TX_CLK__DAT6                          IOMUX_PAD(0x3e0, 0x1e8, 2, 0x4fc, 1, NO_PAD_CTRL)
-#define MX25_PAD_FEC_TX_CLK__LCDC_LD16                     IOMUX_PAD(0x3e0, 0x1e8, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_TX_CLK__GPIO13                        IOMUX_PAD(0x3e0, 0x1e8, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_TX_CLK__SDMA_DBG_PC_12                IOMUX_PAD(0x3e0, 0x1e8, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_TX_CLK__M3IF_CHOSEN_MASTER_0          IOMUX_PAD(0x3e0, 0x1e8, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_TX_EN__TX_EN                          IOMUX_PAD(0x3d0, 0x1d8, 0,     0, 0, PUE)
-#define MX25_PAD_FEC_TX_EN__DAT2                           IOMUX_PAD(0x3d0, 0x1d8, 1, 0x4ec, 2, NO_PAD_CTRL)
-#define MX25_PAD_FEC_TX_EN__AUD4_RXC                       IOMUX_PAD(0x3d0, 0x1d8, 2, 0x468, 1, NO_PAD_CTRL)
-#define MX25_PAD_FEC_TX_EN__IORDY                          IOMUX_PAD(0x3d0, 0x1d8, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_TX_EN__TXCAN                          IOMUX_PAD(0x3d0, 0x1d8, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_TX_EN__GPIO9                          IOMUX_PAD(0x3d0, 0x1d8, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_TX_EN__ROW4                           IOMUX_PAD(0x3d0, 0x1d8, 6, 0x53c, 0, NO_PAD_CTRL)
-#define MX25_PAD_FEC_TX_EN__LCDC_LD20                      IOMUX_PAD(0x3d0, 0x1d8, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_GPIO_A__GPIO0                             IOMUX_PAD(0x3f0, 0x1f4, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_GPIO_A__PWMO                              IOMUX_PAD(0x3f0, 0x1f4, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_GPIO_A__USBOTG_PWR                        IOMUX_PAD(0x3f0, 0x1f4, 2,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_GPIO_A__ROW4                              IOMUX_PAD(0x3f0, 0x1f4, 3, 0x53c, 1, NO_PAD_CTRL)
-#define MX25_PAD_GPIO_A__SCL                               IOMUX_PAD(0x3f0, 0x1f4, 4, 0x524, 1, NO_PAD_CTRL)
-#define MX25_PAD_GPIO_A__TXCAN                             IOMUX_PAD(0x3f0, 0x1f4, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_GPIO_A__INT_MUX_OUT                       IOMUX_PAD(0x3f0, 0x1f4, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_GPIO_B__GPIO1                             IOMUX_PAD(0x3f4, 0x1f8, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_GPIO_B__PWMO                              IOMUX_PAD(0x3f4, 0x1f8, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_GPIO_B__USBOTG_OC                         IOMUX_PAD(0x3f4, 0x1f8, 2, 0x57c, 1, NO_PAD_CTRL)
-#define MX25_PAD_GPIO_B__ROW5                              IOMUX_PAD(0x3f4, 0x1f8, 3, 0x540, 1, NO_PAD_CTRL)
-#define MX25_PAD_GPIO_B__SDA                               IOMUX_PAD(0x3f4, 0x1f8, 4, 0x528, 2, NO_PAD_CTRL)
-#define MX25_PAD_GPIO_B__RXCAN                             IOMUX_PAD(0x3f4, 0x1f8, 6, 0x480, 1, NO_PAD_CTRL)
-#define MX25_PAD_GPIO_C__GPIO2                             IOMUX_PAD(0x3f8, 0x1fc, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_GPIO_C__PWMO                              IOMUX_PAD(0x3f8, 0x1fc, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_GPIO_C__SCL                               IOMUX_PAD(0x3f8, 0x1fc, 2, 0x51c, 1, NO_PAD_CTRL)
-#define MX25_PAD_GPIO_C__COL4                              IOMUX_PAD(0x3f8, 0x1fc, 3, 0x52c, 1, NO_PAD_CTRL)
-#define MX25_PAD_GPIO_C__CAPIN1                            IOMUX_PAD(0x3f8, 0x1fc, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_GPIO_C__CSPI1_SS2                         IOMUX_PAD(0x3f8, 0x1fc, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_GPIO_C__TXCAN                             IOMUX_PAD(0x3f8, 0x1fc, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_GPIO_C__CSPI2_SS2                         IOMUX_PAD(0x3f8, 0x1fc, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_GPIO_D__GPIO3                             IOMUX_PAD(0x3fc, 0x200, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_GPIO_D__WDOG_B                            IOMUX_PAD(0x3fc, 0x200, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_GPIO_D__SDA                               IOMUX_PAD(0x3fc, 0x200, 2, 0x520, 1, NO_PAD_CTRL)
-#define MX25_PAD_GPIO_D__COL5                              IOMUX_PAD(0x3fc, 0x200, 3, 0x530, 1, NO_PAD_CTRL)
-#define MX25_PAD_GPIO_D__CMPOUT1                           IOMUX_PAD(0x3fc, 0x200, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_GPIO_D__RXCAN                             IOMUX_PAD(0x3fc, 0x200, 6, 0x484, 1, NO_PAD_CTRL)
-#define MX25_PAD_GPIO_D__SS2                               IOMUX_PAD(0x3fc, 0x200, 7, 0x4c4, 1, NO_PAD_CTRL)
-#define MX25_PAD_GPIO_E__GPIO4                             IOMUX_PAD(0x400, 0x204, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_GPIO_E__SCL                               IOMUX_PAD(0x400, 0x204, 1, 0x524, 2, NO_PAD_CTRL)
-#define MX25_PAD_GPIO_E__LCDC_LD16                         IOMUX_PAD(0x400, 0x204, 2,     0, 0, (PKE | PUE | PUS_100K_UP))
-#define MX25_PAD_GPIO_E__AUD7_TXD                          IOMUX_PAD(0x400, 0x204, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_GPIO_E__RXD_MUX                           IOMUX_PAD(0x400, 0x204, 6, 0x570, 2, NO_PAD_CTRL)
-#define MX25_PAD_GPIO_E__CTI_TRIG_IN0_6                    IOMUX_PAD(0x400, 0x204, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_GPIO_F__GPIO5                             IOMUX_PAD(0x404, 0x208, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_GPIO_F__LCDC_LD17                         IOMUX_PAD(0x404, 0x208, 2,     0, 0, (PKE | PUE | PUS_100K_UP))
-#define MX25_PAD_GPIO_F__EPITO                             IOMUX_PAD(0x404, 0x208, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_GPIO_F__AUD7_TXC                          IOMUX_PAD(0x404, 0x208, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_GPIO_F__TXD_MUX                           IOMUX_PAD(0x404, 0x208, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_GPIO_F__CTI_TRIG_OUT0_6                   IOMUX_PAD(0x404, 0x208, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_HSYNC__LCDC_HSYN                          IOMUX_PAD(0x300, 0x108, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_HSYNC__SCL                                IOMUX_PAD(0x300, 0x108, 2, 0x524, 0, NO_PAD_CTRL)
-#define MX25_PAD_HSYNC__BUFFER_EN                          IOMUX_PAD(0x300, 0x108, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_HSYNC__VEN1                               IOMUX_PAD(0x300, 0x108, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_HSYNC__GPIO22                             IOMUX_PAD(0x300, 0x108, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_HSYNC__USBH2_DATA4                        IOMUX_PAD(0x300, 0x108, 6,     0, 0, 0xe5)
-#define MX25_PAD_HSYNC__BT_UART_SRC1                       IOMUX_PAD(0x300, 0x108, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_I2C1_CLK__SCL                             IOMUX_PAD(0x348, 0x150, 0,     0, 0, (HYS | PKE | PUE | PUS_100K_UP))
-#define MX25_PAD_I2C1_CLK__GPIO12                          IOMUX_PAD(0x348, 0x150, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_I2C1_CLK__SLCDC_DATA6                     IOMUX_PAD(0x348, 0x150, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_I2C1_DAT__SDA                             IOMUX_PAD(0x34c, 0x154, 0,     0, 0, (HYS | PKE | PUE | PUS_100K_UP))
-#define MX25_PAD_I2C1_DAT__GPIO13                          IOMUX_PAD(0x34c, 0x154, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_I2C1_DAT__SLCDC_DATA7                     IOMUX_PAD(0x34c, 0x154, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_KPP_COL0__COL0                            IOMUX_PAD(0x3b0, 0x1b8, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_KPP_COL0__RXD_MUX                         IOMUX_PAD(0x3b0, 0x1b8, 1, 0x570, 1, NO_PAD_CTRL)
-#define MX25_PAD_KPP_COL0__AUD5_TXD                        IOMUX_PAD(0x3b0, 0x1b8, 2,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_KPP_COL0__GPIO1                           IOMUX_PAD(0x3b0, 0x1b8, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_KPP_COL0__SDMA_DBG_PC_4                   IOMUX_PAD(0x3b0, 0x1b8, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_KPP_COL1__COL1                            IOMUX_PAD(0x3b4, 0x1bc, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_KPP_COL1__TXD_MUX                         IOMUX_PAD(0x3b4, 0x1bc, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_KPP_COL1__AUD5_RXD                        IOMUX_PAD(0x3b4, 0x1bc, 2,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_KPP_COL1__GPIO2                           IOMUX_PAD(0x3b4, 0x1bc, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_KPP_COL1__SDMA_DBG_PC_5                   IOMUX_PAD(0x3b4, 0x1bc, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_KPP_COL2__COL2                            IOMUX_PAD(0x3b8, 0x1c0, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_KPP_COL2__RTS                             IOMUX_PAD(0x3b8, 0x1c0, 1, 0x56c, 1, NO_PAD_CTRL)
-#define MX25_PAD_KPP_COL2__AUD5_TXC                        IOMUX_PAD(0x3b8, 0x1c0, 2,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_KPP_COL2__GPIO3                           IOMUX_PAD(0x3b8, 0x1c0, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_KPP_COL2__SDMA_DBG_PC_6                   IOMUX_PAD(0x3b8, 0x1c0, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_KPP_COL2__M3IF_CHOSEN_MASTER_1            IOMUX_PAD(0x3b8, 0x1c0, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_KPP_COL3__COL3                            IOMUX_PAD(0x3bc, 0x1c4, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_KPP_COL3__CTS                             IOMUX_PAD(0x3bc, 0x1c4, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_KPP_COL3__AUD5_TXFS                       IOMUX_PAD(0x3bc, 0x1c4, 2,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_KPP_COL3__GPIO4                           IOMUX_PAD(0x3bc, 0x1c4, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_KPP_COL3__SDMA_DBG_PC_7                   IOMUX_PAD(0x3bc, 0x1c4, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_KPP_COL3__M3IF_CHOSEN_MASTER_2            IOMUX_PAD(0x3bc, 0x1c4, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_KPP_ROW0__RXD_MUX                         IOMUX_PAD(0x3a0, 0x1a8, 1, 0x568, 1, NO_PAD_CTRL)
-#define MX25_PAD_KPP_ROW0__ROW0                            IOMUX_PAD(0x3a0, 0x1a8, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_KPP_ROW0__DTR                             IOMUX_PAD(0x3a0, 0x1a8, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_KPP_ROW0__GPIO29                          IOMUX_PAD(0x3a0, 0x1a8, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_KPP_ROW0__SDMA_DBG_PC_0                   IOMUX_PAD(0x3a0, 0x1a8, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_KPP_ROW1__ROW1                            IOMUX_PAD(0x3a4, 0x1ac, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_KPP_ROW1__TXD_MUX                         IOMUX_PAD(0x3a4, 0x1ac, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_KPP_ROW1__DSR                             IOMUX_PAD(0x3a4, 0x1ac, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_KPP_ROW1__GPIO30                          IOMUX_PAD(0x3a4, 0x1ac, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_KPP_ROW1__SDMA_DBG_PC_1                   IOMUX_PAD(0x3a4, 0x1ac, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_KPP_ROW2__ROW2                            IOMUX_PAD(0x3a8, 0x1b0, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_KPP_ROW2__RTS                             IOMUX_PAD(0x3a8, 0x1b0, 1, 0x564, 1, NO_PAD_CTRL)
-#define MX25_PAD_KPP_ROW2__AUD5_RXC                        IOMUX_PAD(0x3a8, 0x1b0, 2,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_KPP_ROW2__CSI_D0                          IOMUX_PAD(0x3a8, 0x1b0, 3, 0x488, 2, NO_PAD_CTRL)
-#define MX25_PAD_KPP_ROW2__DCD                             IOMUX_PAD(0x3a8, 0x1b0, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_KPP_ROW2__GPIO31                          IOMUX_PAD(0x3a8, 0x1b0, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_KPP_ROW2__SDMA_DBG_PC_2                   IOMUX_PAD(0x3a8, 0x1b0, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_KPP_ROW3__ROW3                            IOMUX_PAD(0x3ac, 0x1b4, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_KPP_ROW3__CTS                             IOMUX_PAD(0x3ac, 0x1b4, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_KPP_ROW3__AUD5_RXFS                       IOMUX_PAD(0x3ac, 0x1b4, 2,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_KPP_ROW3__CSI_D1                          IOMUX_PAD(0x3ac, 0x1b4, 3, 0x48c, 2, NO_PAD_CTRL)
-#define MX25_PAD_KPP_ROW3__RI                              IOMUX_PAD(0x3ac, 0x1b4, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_KPP_ROW3__GPIO0                           IOMUX_PAD(0x3ac, 0x1b4, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_KPP_ROW3__SDMA_DBG_PC_3                   IOMUX_PAD(0x3ac, 0x1b4, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LBA__EIM_LBA                              IOMUX_PAD(0x274,  0x64, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LBA__RXD_MUX                              IOMUX_PAD(0x274,  0x64, 3, 0x578, 0, NO_PAD_CTRL)
-#define MX25_PAD_LBA__GPIO24                               IOMUX_PAD(0x274,  0x64, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LBA__RDY                                  IOMUX_PAD(0x274,  0x64, 6, 0x4b0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD0__LCDC_LD0                             IOMUX_PAD(0x2c0,  0xc8, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD0__SLCDC_DATA0                          IOMUX_PAD(0x2c0,  0xc8, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD0__CSI_D0                               IOMUX_PAD(0x2c0,  0xc8, 2, 0x488, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD0__DATA0                                IOMUX_PAD(0x2c0,  0xc8, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD0__CLK1                                 IOMUX_PAD(0x2c0,  0xc8, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD0__GPIO15                               IOMUX_PAD(0x2c0,  0xc8, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD0__USBH2_CLK                            IOMUX_PAD(0x2c0,  0xc8, 6,     0, 0, 0xe0)
-#define MX25_PAD_LD0__BT_MEM_CTRL0                         IOMUX_PAD(0x2c0,  0xc8, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD10__LCDC_LD10                           IOMUX_PAD(0x2e8,  0xf0, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD10__SLCDC_DATA10                        IOMUX_PAD(0x2e8,  0xf0, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD10__RTS                                 IOMUX_PAD(0x2e8,  0xf0, 2, 0x56c, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD10__DATA10                              IOMUX_PAD(0x2e8,  0xf0, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD10__AUD3_TXC                            IOMUX_PAD(0x2e8,  0xf0, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD10__DAT0                                IOMUX_PAD(0x2e8,  0xf0, 6, 0x4e4, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD10__RX_ERR                              IOMUX_PAD(0x2e8,  0xf0, 5, 0x518, 1, NO_PAD_CTRL)
-#define MX25_PAD_LD10__BT_MLC_SEL                          IOMUX_PAD(0x2e8,  0xf0, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD11__LCDC_LD11                           IOMUX_PAD(0x2ec,  0xf4, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD11__SLCDC_DATA11                        IOMUX_PAD(0x2ec,  0xf4, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD11__CTS                                 IOMUX_PAD(0x2ec,  0xf4, 2,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD11__DATA11                              IOMUX_PAD(0x2ec,  0xf4, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD11__AUD3_TXFS                           IOMUX_PAD(0x2ec,  0xf4, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD11__RDATA2                              IOMUX_PAD(0x2ec,  0xf4, 5, 0x50c, 1, NO_PAD_CTRL)
-#define MX25_PAD_LD11__DAT1                                IOMUX_PAD(0x2ec,  0xf4, 6, 0x4e8, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD11__BT_SPARE_SIZE                       IOMUX_PAD(0x2ec,  0xf4, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD12__LCDC_LD12                           IOMUX_PAD(0x2f0,  0xf8, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD12__SLCDC_DATA12                        IOMUX_PAD(0x2f0,  0xf8, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD12__MOSI                                IOMUX_PAD(0x2f0,  0xf8, 2, 0x4a0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD12__DATA12                              IOMUX_PAD(0x2f0,  0xf8, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD12__ROW6                                IOMUX_PAD(0x2f0,  0xf8, 4, 0x544, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD12__RDATA3                              IOMUX_PAD(0x2f0,  0xf8, 5, 0x510, 1, NO_PAD_CTRL)
-#define MX25_PAD_LD12__DAT2                                IOMUX_PAD(0x2f0,  0xf8, 6, 0x4ec, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD12__BT_SRC0                             IOMUX_PAD(0x2f0,  0xf8, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD13__LCDC_LD13                           IOMUX_PAD(0x2f4,  0xfc, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD13__SLCDC_DATA13                        IOMUX_PAD(0x2f4,  0xfc, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD13__MISO                                IOMUX_PAD(0x2f4,  0xfc, 2, 0x49c, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD13__DATA13                              IOMUX_PAD(0x2f4,  0xfc, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD13__ROW7                                IOMUX_PAD(0x2f4,  0xfc, 4, 0x548, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD13__TDATA2                              IOMUX_PAD(0x2f4,  0xfc, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD13__DAT3                                IOMUX_PAD(0x2f4,  0xfc, 6, 0x4f0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD13__BT_SRC1                             IOMUX_PAD(0x2f4,  0xfc, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD14__LCDC_LD14                           IOMUX_PAD(0x2f8, 0x100, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD14__SLCDC_DATA14                        IOMUX_PAD(0x2f8, 0x100, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD14__SCLK                                IOMUX_PAD(0x2f8, 0x100, 2, 0x494, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD14__DATA14                              IOMUX_PAD(0x2f8, 0x100, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD14__COL6                                IOMUX_PAD(0x2f8, 0x100, 4, 0x534, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD14__TDATA3                              IOMUX_PAD(0x2f8, 0x100, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD14__AUD3_RXC                            IOMUX_PAD(0x2f8, 0x100, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD14__BT_EEPROM_CFG                       IOMUX_PAD(0x2f8, 0x100, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD15__LCDC_LD15                           IOMUX_PAD(0x2fc, 0x104, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD15__SLCDC_DATA15                        IOMUX_PAD(0x2fc, 0x104, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD15__RDY                                 IOMUX_PAD(0x2fc, 0x104, 2, 0x498, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD15__DATA15                              IOMUX_PAD(0x2fc, 0x104, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD15__COL7                                IOMUX_PAD(0x2fc, 0x104, 4, 0x538, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD15__RX_CLK                              IOMUX_PAD(0x2fc, 0x104, 5, 0x514, 1, NO_PAD_CTRL)
-#define MX25_PAD_LD15__AUD3_RXFS                           IOMUX_PAD(0x2fc, 0x104, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD15__BT_UART_SRC0                        IOMUX_PAD(0x2fc, 0x104, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD1__LCDC_LD1                             IOMUX_PAD(0x2c4,  0xcc, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD1__SLCDC_DATA1                          IOMUX_PAD(0x2c4,  0xcc, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD1__CSI_D1                               IOMUX_PAD(0x2c4,  0xcc, 2, 0x48c, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD1__DATA1                                IOMUX_PAD(0x2c4,  0xcc, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD1__RST1                                 IOMUX_PAD(0x2c4,  0xcc, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD1__GPIO16                               IOMUX_PAD(0x2c4,  0xcc, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD1__USBH2_DIR                            IOMUX_PAD(0x2c4,  0xcc, 6,     0, 0, 0xe0)
-#define MX25_PAD_LD1__BT_MEM_CTRL1                         IOMUX_PAD(0x2c4,  0xcc, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD2__LCDC_LD2                             IOMUX_PAD(0x2c8,  0xd0, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD2__SLCDC_DATA2                          IOMUX_PAD(0x2c8,  0xd0, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD2__CSI_D15                              IOMUX_PAD(0x2c8,  0xd0, 2,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD2__DATA2                                IOMUX_PAD(0x2c8,  0xd0, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD2__VEN1                                 IOMUX_PAD(0x2c8,  0xd0, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD2__GPIO17                               IOMUX_PAD(0x2c8,  0xd0, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD2__USBH2_STP                            IOMUX_PAD(0x2c8,  0xd0, 6,     0, 0, 0xe5)
-#define MX25_PAD_LD2__BT_MEM_TYPE0                         IOMUX_PAD(0x2c8,  0xd0, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD3__LCDC_LD3                             IOMUX_PAD(0x2cc,  0xd4, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD3__SLCDC_DATA3                          IOMUX_PAD(0x2cc,  0xd4, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD3__CSI_D14                              IOMUX_PAD(0x2cc,  0xd4, 2,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD3__DATA3                                IOMUX_PAD(0x2cc,  0xd4, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD3__TX1                                  IOMUX_PAD(0x2cc,  0xd4, 4, 0x554, 1, NO_PAD_CTRL)
-#define MX25_PAD_LD3__GPIO18                               IOMUX_PAD(0x2cc,  0xd4, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD3__USBH2_NXT                            IOMUX_PAD(0x2cc,  0xd4, 6,     0, 0, 0xe0)
-#define MX25_PAD_LD3__BT_MEM_TYPE1                         IOMUX_PAD(0x2cc,  0xd4, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD4__LCDC_LD4                             IOMUX_PAD(0x2d0,  0xd8, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD4__SLCDC_DATA4                          IOMUX_PAD(0x2d0,  0xd8, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD4__CSI_D13                              IOMUX_PAD(0x2d0,  0xd8, 2,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD4__DATA4                                IOMUX_PAD(0x2d0,  0xd8, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD4__PD1                                  IOMUX_PAD(0x2d0,  0xd8, 4, 0x550, 1, NO_PAD_CTRL)
-#define MX25_PAD_LD4__GPIO19                               IOMUX_PAD(0x2d0,  0xd8, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD4__USBH2_DATA0                          IOMUX_PAD(0x2d0,  0xd8, 6,     0, 0, 0xe5)
-#define MX25_PAD_LD4__BT_PAGE_SIZE0                        IOMUX_PAD(0x2d0,  0xd8, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD5__LCDC_LD5                             IOMUX_PAD(0x2d4,  0xdc, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD5__SLCDC_DATA5                          IOMUX_PAD(0x2d4,  0xdc, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD5__CSI_D12                              IOMUX_PAD(0x2d4,  0xdc, 2,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD5__DATA5                                IOMUX_PAD(0x2d4,  0xdc, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD5__RX1                                  IOMUX_PAD(0x2d4,  0xdc, 4, 0x54c, 1, NO_PAD_CTRL)
-#define MX25_PAD_LD5__GPIO19                               IOMUX_PAD(0x2d4,  0xdc, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD5__USBH2_DATA1                          IOMUX_PAD(0x2d4,  0xdc, 6,     0, 0, 0xe5)
-#define MX25_PAD_LD5__BT_PAGE_SIZE1                        IOMUX_PAD(0x2d4,  0xdc, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD6__LCDC_LD6                             IOMUX_PAD(0x2d8,  0xe0, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD6__SLCDC_DATA6                          IOMUX_PAD(0x2d8,  0xe0, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD6__CSI_D11                              IOMUX_PAD(0x2d8,  0xe0, 2,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD6__DATA6                                IOMUX_PAD(0x2d8,  0xe0, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD6__CLK1                                 IOMUX_PAD(0x2d8,  0xe0, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD6__GPIO20                               IOMUX_PAD(0x2d8,  0xe0, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD6__USBH2_DATA2                          IOMUX_PAD(0x2d8,  0xe0, 6,     0, 0, 0xe5)
-#define MX25_PAD_LD6__BT_BUS_WIDTH0                        IOMUX_PAD(0x2d8,  0xe0, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD7__LCDC_LD7                             IOMUX_PAD(0x2dc,  0xe4, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD7__SLCDC_DATA7                          IOMUX_PAD(0x2dc,  0xe4, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD7__CSI_D10                              IOMUX_PAD(0x2dc,  0xe4, 2,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD7__DATA7                                IOMUX_PAD(0x2dc,  0xe4, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD7__RST1                                 IOMUX_PAD(0x2dc,  0xe4, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD7__GPIO21                               IOMUX_PAD(0x2dc,  0xe4, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD7__USBH2_DATA3                          IOMUX_PAD(0x2dc,  0xe4, 6,     0, 0, 0xe5)
-#define MX25_PAD_LD7__BT_BUS_WIDTH1                        IOMUX_PAD(0x2dc,  0xe4, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD8__LCDC_LD8                             IOMUX_PAD(0x2e0,  0xe8, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD8__SLCDC_DATA8                          IOMUX_PAD(0x2e0,  0xe8, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD8__RXD_MUX                              IOMUX_PAD(0x2e0,  0xe8, 2, 0x570, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD8__DATA8                                IOMUX_PAD(0x2e0,  0xe8, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD8__AUD3_TXD                             IOMUX_PAD(0x2e0,  0xe8, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD8__TX_ERR                               IOMUX_PAD(0x2e0,  0xe8, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD8__CMD                                  IOMUX_PAD(0x2e0,  0xe8, 6, 0x4e0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD8__BT_USB_SRC0                          IOMUX_PAD(0x2e0,  0xe8, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD9__LCDC_LD9                             IOMUX_PAD(0x2e4,  0xec, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD9__SLCDC_DATA9                          IOMUX_PAD(0x2e4,  0xec, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD9__TXD_MUX                              IOMUX_PAD(0x2e4,  0xec, 2,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD9__DATA9                                IOMUX_PAD(0x2e4,  0xec, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD9__AUD3_RXD                             IOMUX_PAD(0x2e4,  0xec, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD9__COL                                  IOMUX_PAD(0x2e4,  0xec, 5, 0x504, 1, NO_PAD_CTRL)
-#define MX25_PAD_LD9__CLK                                  IOMUX_PAD(0x2e4,  0xec, 6, 0x4dc, 0, NO_PAD_CTRL)
-#define MX25_PAD_LD9__BT_USB_SRC1                          IOMUX_PAD(0x2e4,  0xec, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LSCLK__LCDC_LSCLK                         IOMUX_PAD(0x308, 0x110, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LSCLK__SLCDC_CS                           IOMUX_PAD(0x308, 0x110, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LSCLK__DA_0                               IOMUX_PAD(0x308, 0x110, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LSCLK__PD1                                IOMUX_PAD(0x308, 0x110, 4, 0x55c, 1, NO_PAD_CTRL)
-#define MX25_PAD_LSCLK__GPIO24                             IOMUX_PAD(0x308, 0x110, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_LSCLK__USBH2_DATA6                        IOMUX_PAD(0x308, 0x110, 6,     0, 0, 0xe5)
-#define MX25_PAD_LSCLK__BT_LPB_FREQ0                       IOMUX_PAD(0x308, 0x110, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_NFALE__NANDF_ALE                          IOMUX_PAD(0x000,  0x78, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_NFALE__GPIO28                             IOMUX_PAD(0x000,  0x78, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_NFALE__PIPESTAT0                          IOMUX_PAD(0x000,  0x78, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_NF_CE0__NANDF_CE0                         IOMUX_PAD(0x26c,  0x5c, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_NF_CE0__SS3                               IOMUX_PAD(0x26c,  0x5c, 1, 0x490, 0, NO_PAD_CTRL)
-#define MX25_PAD_NF_CE0__GPIO22                            IOMUX_PAD(0x26c,  0x5c, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_NF_CE0__TRACE3                            IOMUX_PAD(0x26c,  0x5c, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_NFCLE__NANDF_CLE                          IOMUX_PAD(0x000,  0x7c, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_NFCLE__GPIO29                             IOMUX_PAD(0x000,  0x7c, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_NFCLE__TRACE0                             IOMUX_PAD(0x000,  0x7c, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_NFRB__NANDF_RB                            IOMUX_PAD(0x27c,  0x84, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_NFRB__GPIO31                              IOMUX_PAD(0x27c,  0x84, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_NFRB__TRACE2                              IOMUX_PAD(0x27c,  0x84, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_NFRE_B__NANDF_RE_B                        IOMUX_PAD(0x000,  0x74, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_NFRE_B__GPIO27                            IOMUX_PAD(0x000,  0x74, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_NFRE_B__PIPESTAT1                         IOMUX_PAD(0x000,  0x74, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_NFWE_B__NANDF_WE_B                        IOMUX_PAD(0x000,  0x70, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_NFWE_B__GPIO26                            IOMUX_PAD(0x000,  0x70, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_NFWE_B__PIPESTAT2                         IOMUX_PAD(0x000,  0x70, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_NFWP_B__NANDF_WP_B                        IOMUX_PAD(0x000,  0x80, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_NFWP_B__GPIO30                            IOMUX_PAD(0x000,  0x80, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_NFWP_B__TRACE1                            IOMUX_PAD(0x000,  0x80, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_OE_ACD__LCDC_OE_ACD                       IOMUX_PAD(0x30c, 0x114, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_OE_ACD__SLCDC_RS                          IOMUX_PAD(0x30c, 0x114, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_OE_ACD__SS0                               IOMUX_PAD(0x30c, 0x114, 2, 0x4a4, 0, NO_PAD_CTRL)
-#define MX25_PAD_OE_ACD__DA_1                              IOMUX_PAD(0x30c, 0x114, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_OE_ACD__RX1                               IOMUX_PAD(0x30c, 0x114, 4, 0x558, 1, NO_PAD_CTRL)
-#define MX25_PAD_OE_ACD__GPIO25                            IOMUX_PAD(0x30c, 0x114, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_OE_ACD__USBH2_DATA7                       IOMUX_PAD(0x30c, 0x114, 6,     0, 0, 0xe5)
-#define MX25_PAD_OE_ACD__BT_LPB_FREQ1                      IOMUX_PAD(0x30c, 0x114, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_OE__EIM_OE                                IOMUX_PAD(0x260,  0x48, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_OE__AUD4_TXC                              IOMUX_PAD(0x260,  0x48, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_OE__GPIO14                                IOMUX_PAD(0x260,  0x48, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_POWER_FAIL__POWER_FAIL_INT                IOMUX_PAD(0x410, 0x21c, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_POWER_FAIL__AUD7_RXD                      IOMUX_PAD(0x410, 0x21c, 4, 0x478, 1, NO_PAD_CTRL)
-#define MX25_PAD_POWER_FAIL__GPIO19                        IOMUX_PAD(0x410, 0x21c, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_POWER_FAIL__CTS                           IOMUX_PAD(0x410, 0x21c, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_PWM__PWMO                                 IOMUX_PAD(0x314, 0x11c, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_PWM__CMPOUT1                              IOMUX_PAD(0x314, 0x11c, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_PWM__GPIO26                               IOMUX_PAD(0x314, 0x11c, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_PWM__USBH2_OC                             IOMUX_PAD(0x314, 0x11c, 6, 0x580, 1, NO_PAD_CTRL)
-#define MX25_PAD_PWM__BT_LPB_FREQ2                         IOMUX_PAD(0x314, 0x11c, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_RTCK__RTCK                                IOMUX_PAD(0x3e4, 0x1ec, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_RTCK__LINE                                IOMUX_PAD(0x3e4, 0x1ec, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_RTCK__DAT7                                IOMUX_PAD(0x3e4, 0x1ec, 2, 0x500, 1, NO_PAD_CTRL)
-#define MX25_PAD_RTCK__GPIO14                              IOMUX_PAD(0x3e4, 0x1ec, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_RTCK__SDMA_DBG_PC_13                      IOMUX_PAD(0x3e4, 0x1ec, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_RW__EIM_RW                                IOMUX_PAD(0x278,  0x6c, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_RW__AUD4_TXFS                             IOMUX_PAD(0x278,  0x6c, 4, 0x474, 0, NO_PAD_CTRL)
-#define MX25_PAD_RW__GPIO25                                IOMUX_PAD(0x278,  0x6c, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_SD1_CLK__CLK                              IOMUX_PAD(0x38c, 0x194, 0x10,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_SD1_CLK__MISO                             IOMUX_PAD(0x38c, 0x194, 1, 0x49c, 1, NO_PAD_CTRL)
-#define MX25_PAD_SD1_CLK__RDATA3                           IOMUX_PAD(0x38c, 0x194, 2, 0x510, 2, NO_PAD_CTRL)
-#define MX25_PAD_SD1_CLK__SDMA_DBG_STAT_0                  IOMUX_PAD(0x38c, 0x194, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_SD1_CLK__GPIO24                           IOMUX_PAD(0x38c, 0x194, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_SD1_CLK__SLCDC_DATA1                      IOMUX_PAD(0x38c, 0x194, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_SD1_CLK__TRACE11                          IOMUX_PAD(0x38c, 0x194, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_SD1_CMD__CMD                              IOMUX_PAD(0x388, 0x190, 0x10,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_SD1_CMD__MOSI                             IOMUX_PAD(0x388, 0x190, 1, 0x4a0, 1, NO_PAD_CTRL)
-#define MX25_PAD_SD1_CMD__RDATA2                           IOMUX_PAD(0x388, 0x190, 2, 0x50c, 2, NO_PAD_CTRL)
-#define MX25_PAD_SD1_CMD__SDMA_DBG_EVT_SEL                 IOMUX_PAD(0x388, 0x190, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_SD1_CMD__GPIO23                           IOMUX_PAD(0x388, 0x190, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_SD1_CMD__SLCDC_DATA0                      IOMUX_PAD(0x388, 0x190, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_SD1_CMD__TRACE10                          IOMUX_PAD(0x388, 0x190, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_SD1_DATA0__DAT0                           IOMUX_PAD(0x390, 0x198, 0x10,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_SD1_DATA0__SCLK                           IOMUX_PAD(0x390, 0x198, 1, 0x494, 1, NO_PAD_CTRL)
-#define MX25_PAD_SD1_DATA0__TDATA2                         IOMUX_PAD(0x390, 0x198, 2,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_SD1_DATA0__AUD7_TXFS                      IOMUX_PAD(0x390, 0x198, 3, 0x47c, 0, NO_PAD_CTRL)
-#define MX25_PAD_SD1_DATA0__SDMA_DBG_STAT_1                IOMUX_PAD(0x390, 0x198, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_SD1_DATA0__GPIO25                         IOMUX_PAD(0x390, 0x198, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_SD1_DATA0__SLCDC_DATA2                    IOMUX_PAD(0x390, 0x198, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_SD1_DATA0__TRACE12                        IOMUX_PAD(0x390, 0x198, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_SD1_DATA1__DAT1                           IOMUX_PAD(0x394, 0x19c, 0x10,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_SD1_DATA1__RDY                            IOMUX_PAD(0x394, 0x19c, 1, 0x498, 1, NO_PAD_CTRL)
-#define MX25_PAD_SD1_DATA1__TDATA3                         IOMUX_PAD(0x394, 0x19c, 2,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_SD1_DATA1__AUD7_RXD                       IOMUX_PAD(0x394, 0x19c, 3, 0x478, 0, NO_PAD_CTRL)
-#define MX25_PAD_SD1_DATA1__SDMA_DBG_STAT_2                IOMUX_PAD(0x394, 0x19c, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_SD1_DATA1__GPIO26                         IOMUX_PAD(0x394, 0x19c, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_SD1_DATA1__SLCDC_DATA3                    IOMUX_PAD(0x394, 0x19c, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_SD1_DATA1__TRACE13                        IOMUX_PAD(0x394, 0x19c, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_SD1_DATA2__DAT2                           IOMUX_PAD(0x398, 0x1a0, 0x10,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_SD1_DATA2__SS0                            IOMUX_PAD(0x398, 0x1a0, 1, 0x4a4, 1, NO_PAD_CTRL)
-#define MX25_PAD_SD1_DATA2__RX_CLK                         IOMUX_PAD(0x398, 0x1a0, 2, 0x514, 2, NO_PAD_CTRL)
-#define MX25_PAD_SD1_DATA2__AUD7_RXC                       IOMUX_PAD(0x398, 0x1a0, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_SD1_DATA2__SDMA_DBG_STAT_3                IOMUX_PAD(0x398, 0x1a0, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_SD1_DATA2__GPIO27                         IOMUX_PAD(0x398, 0x1a0, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_SD1_DATA2__SLCDC_DATA4                    IOMUX_PAD(0x398, 0x1a0, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_SD1_DATA2__TRACE14                        IOMUX_PAD(0x398, 0x1a0, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_SD1_DATA3__DAT3                           IOMUX_PAD(0x39c, 0x1a4, 0x10,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_SD1_DATA3__SS1                            IOMUX_PAD(0x39c, 0x1a4, 1, 0x4a8, 1, NO_PAD_CTRL)
-#define MX25_PAD_SD1_DATA3__CRS                            IOMUX_PAD(0x39c, 0x1a4, 2, 0x508, 2, NO_PAD_CTRL)
-#define MX25_PAD_SD1_DATA3__AUD7_RXFS                      IOMUX_PAD(0x39c, 0x1a4, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_SD1_DATA3__GPIO28                         IOMUX_PAD(0x39c, 0x1a4, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_SD1_DATA3__SLCDC_DATA5                    IOMUX_PAD(0x39c, 0x1a4, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_SD1_DATA3__TRACE15                        IOMUX_PAD(0x39c, 0x1a4, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_UART1_CTS__CTS                            IOMUX_PAD(0x374, 0x17c, 0,     0, 0, 0x40)
-#define MX25_PAD_UART1_CTS__CSI_D1                         IOMUX_PAD(0x374, 0x17c, 1, 0x48c, 1, NO_PAD_CTRL)
-#define MX25_PAD_UART1_CTS__CMPOUT1                        IOMUX_PAD(0x374, 0x17c, 2,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_UART1_CTS__RI                             IOMUX_PAD(0x374, 0x17c, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_UART1_CTS__LCDC_REV                       IOMUX_PAD(0x374, 0x17c, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_UART1_CTS__GPIO25                         IOMUX_PAD(0x374, 0x17c, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_UART1_CTS__SLCDC_DATA11                   IOMUX_PAD(0x374, 0x17c, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_UART1_RTS__RTS                            IOMUX_PAD(0x370, 0x178, 0,     0, 0, 0x1E0)
-#define MX25_PAD_UART1_RTS__CSI_D0                         IOMUX_PAD(0x370, 0x178, 1, 0x488, 1, NO_PAD_CTRL)
-#define MX25_PAD_UART1_RTS__CAPIN1                         IOMUX_PAD(0x370, 0x178, 2,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_UART1_RTS__DCD                            IOMUX_PAD(0x370, 0x178, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_UART1_RTS__LCDC_PS                        IOMUX_PAD(0x370, 0x178, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_UART1_RTS__GPIO24                         IOMUX_PAD(0x370, 0x178, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_UART1_RTS__SLCDC_DATA10                   IOMUX_PAD(0x370, 0x178, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_UART1_RXD__RXD_MUX                        IOMUX_PAD(0x368, 0x170, 0,     0, 0, 0x1e0)
-#define MX25_PAD_UART1_RXD__DTR                            IOMUX_PAD(0x368, 0x170, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_UART1_RXD__LCDC_CLS                       IOMUX_PAD(0x368, 0x170, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_UART1_RXD__GPIO22                         IOMUX_PAD(0x368, 0x170, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_UART1_RXD__SLCDC_DATA8                    IOMUX_PAD(0x368, 0x170, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_UART1_TXD__TXD_MUX                        IOMUX_PAD(0x36c, 0x174, 0,     0, 0, 0x40)
-#define MX25_PAD_UART1_TXD__DSR                            IOMUX_PAD(0x36c, 0x174, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_UART1_TXD__LCDC_SPL                       IOMUX_PAD(0x36c, 0x174, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_UART1_TXD__GPIO23                         IOMUX_PAD(0x36c, 0x174, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_UART1_TXD__SLCDC_DATA9                    IOMUX_PAD(0x36c, 0x174, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_UART2_CTS__CTS                            IOMUX_PAD(0x384, 0x18c, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_UART2_CTS__DAT4                           IOMUX_PAD(0x384, 0x18c, 1, 0x4cc, 1, NO_PAD_CTRL)
-#define MX25_PAD_UART2_CTS__RX_ERR                         IOMUX_PAD(0x384, 0x18c, 2, 0x518, 2, NO_PAD_CTRL)
-#define MX25_PAD_UART2_CTS__CMPOUT1                        IOMUX_PAD(0x384, 0x18c, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_UART2_CTS__GPIO29                         IOMUX_PAD(0x384, 0x18c, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_UART2_CTS__SS3                            IOMUX_PAD(0x384, 0x18c, 6, 0x4c8, 1, NO_PAD_CTRL)
-#define MX25_PAD_UART2_CTS__EXTDMA_2                       IOMUX_PAD(0x384, 0x18c, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_UART2_RTS__RTS                            IOMUX_PAD(0x380, 0x188, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_UART2_RTS__DAT5                           IOMUX_PAD(0x380, 0x188, 1, 0x4d0, 1, NO_PAD_CTRL)
-#define MX25_PAD_UART2_RTS__COL                            IOMUX_PAD(0x380, 0x188, 2, 0x504, 2, NO_PAD_CTRL)
-#define MX25_PAD_UART2_RTS__CAPIN1                         IOMUX_PAD(0x380, 0x188, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_UART2_RTS__EPITO                          IOMUX_PAD(0x380, 0x188, 4,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_UART2_RTS__GPIO28                         IOMUX_PAD(0x380, 0x188, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_UART2_RTS__SS3                            IOMUX_PAD(0x380, 0x188, 6,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_UART2_RTS__EXTDMA_1                       IOMUX_PAD(0x380, 0x188, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_UART2_RXD__RXD_MUX                        IOMUX_PAD(0x378, 0x180, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_UART2_RXD__DAT7                           IOMUX_PAD(0x378, 0x180, 1, 0x4d8, 1, NO_PAD_CTRL)
-#define MX25_PAD_UART2_RXD__GPIO26                         IOMUX_PAD(0x378, 0x180, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_UART2_TXD__TXD_MUX                        IOMUX_PAD(0x37c, 0x184, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_UART2_TXD__DAT6                           IOMUX_PAD(0x37c, 0x184, 1, 0x4d4, 1, NO_PAD_CTRL)
-#define MX25_PAD_UART2_TXD__TX_ERR                         IOMUX_PAD(0x37c, 0x184, 2,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_UART2_TXD__GPIO27                         IOMUX_PAD(0x37c, 0x184, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_UART2_TXD__EXTDMA_0                       IOMUX_PAD(0x37c, 0x184, 7,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_UPLL_BYPCLK__UPLL_BYPCLK                  IOMUX_PAD(0x000, 0x210, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_UPLL_BYPCLK__GPIO16                       IOMUX_PAD(0x000, 0x210, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_VSTBY_ACK__hreset_b                       IOMUX_PAD(0x40c, 0x218, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_VSTBY_ACK__VSTBY_ACK                      IOMUX_PAD(0x40c, 0x218, 1,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_VSTBY_ACK__SS3                            IOMUX_PAD(0x40c, 0x218, 2, 0x490, 1, NO_PAD_CTRL)
-#define MX25_PAD_VSTBY_ACK__EPITO                          IOMUX_PAD(0x40c, 0x218, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_VSTBY_ACK__GPIO18                         IOMUX_PAD(0x40c, 0x218, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_VSTBY_REQ__VSTBY_REQ                      IOMUX_PAD(0x408, 0x214, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_VSTBY_REQ__AUD7_TXFS                      IOMUX_PAD(0x408, 0x214, 4, 0x47c, 1, NO_PAD_CTRL)
-#define MX25_PAD_VSTBY_REQ__GPIO17                         IOMUX_PAD(0x408, 0x214, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_VSTBY_REQ__RTS                            IOMUX_PAD(0x408, 0x214, 6, 0x56c, 2, NO_PAD_CTRL)
-#define MX25_PAD_VSYNC__LCDC_VSYN                          IOMUX_PAD(0x304, 0x10c, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_VSYNC__SDA                                IOMUX_PAD(0x304, 0x10c, 2, 0x528, 0, NO_PAD_CTRL)
-#define MX25_PAD_VSYNC__DMARQ                              IOMUX_PAD(0x304, 0x10c, 3,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_VSYNC__TX1                                IOMUX_PAD(0x304, 0x10c, 4, 0x560, 1, NO_PAD_CTRL)
-#define MX25_PAD_VSYNC__GPIO23                             IOMUX_PAD(0x304, 0x10c, 5,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_VSYNC__USBH2_DATA5                        IOMUX_PAD(0x304, 0x10c, 6,     0, 0, 0xe5)
-#define MX25_PAD_VSYNC__BT_UART_SRC2                       IOMUX_PAD(0x304, 0x10c, 7,     0, 0, NO_PAD_CTRL)
+/*
+ * IOMUX/PAD Bit field definitions
+ */
 
-#endif /* __MACH_IOMUX_MX25_H__ */
+#define MX25_PAD_A10__A10		IOMUX_PAD(0x000, 0x008, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_A10__GPIO_4_0		IOMUX_PAD(0x000, 0x008, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_A13__A13		IOMUX_PAD(0x22C, 0x00c, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_A13__GPIO_4_1		IOMUX_PAD(0x22C, 0x00c, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_A14__A14		IOMUX_PAD(0x230, 0x010, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_A14__GPIO_2_0		IOMUX_PAD(0x230, 0x010, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_A15__A15		IOMUX_PAD(0x234, 0x014, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_A15__GPIO_2_1		IOMUX_PAD(0x234, 0x014, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_A16__A16		IOMUX_PAD(0x000, 0x018, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_A16__GPIO_2_2		IOMUX_PAD(0x000, 0x018, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_A17__A17		IOMUX_PAD(0x238, 0x01c, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_A17__GPIO_2_3		IOMUX_PAD(0x238, 0x01c, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_A18__A18		IOMUX_PAD(0x23c, 0x020, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_A18__GPIO_2_4		IOMUX_PAD(0x23c, 0x020, 0x05, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_A18__FEC_COL		IOMUX_PAD(0x23c, 0x020, 0x07, 0x504, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_A19__A19		IOMUX_PAD(0x240, 0x024, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_A19__FEC_RX_ER		IOMUX_PAD(0x240, 0x024, 0x07, 0x518, 0, NO_PAD_CTRL)
+#define MX25_PAD_A19__GPIO_2_5		IOMUX_PAD(0x240, 0x024, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_A20__A20		IOMUX_PAD(0x244, 0x028, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_A20__GPIO_2_6		IOMUX_PAD(0x244, 0x028, 0x05, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_A20__FEC_RDATA2	IOMUX_PAD(0x244, 0x028, 0x07, 0x50c, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_A21__A21		IOMUX_PAD(0x248, 0x02c, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_A21__GPIO_2_7		IOMUX_PAD(0x248, 0x02c, 0x05, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_A21__FEC_RDATA3	IOMUX_PAD(0x248, 0x02c, 0x07, 0x510, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_A22__A22		IOMUX_PAD(0x000, 0x030, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_A22__GPIO_2_8		IOMUX_PAD(0x000, 0x030, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_A23__A23		IOMUX_PAD(0x24c, 0x034, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_A23__GPIO_2_9		IOMUX_PAD(0x24c, 0x034, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_A24__A24		IOMUX_PAD(0x250, 0x038, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_A24__GPIO_2_10		IOMUX_PAD(0x250, 0x038, 0x05, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_A24__FEC_RX_CLK	IOMUX_PAD(0x250, 0x038, 0x07, 0x514, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_A25__A25		IOMUX_PAD(0x254, 0x03c, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_A25__GPIO_2_11		IOMUX_PAD(0x254, 0x03c, 0x05, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_A25__FEC_CRS		IOMUX_PAD(0x254, 0x03c, 0x07, 0x508, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_EB0__EB0		IOMUX_PAD(0x258, 0x040, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_EB0__AUD4_TXD		IOMUX_PAD(0x258, 0x040, 0x04, 0x464, 0, NO_PAD_CTRL)
+#define MX25_PAD_EB0__GPIO_2_12		IOMUX_PAD(0x258, 0x040, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_EB1__EB1		IOMUX_PAD(0x25c, 0x044, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_EB1__AUD4_RXD		IOMUX_PAD(0x25c, 0x044, 0x04, 0x460, 0, NO_PAD_CTRL)
+#define MX25_PAD_EB1__GPIO_2_13		IOMUX_PAD(0x25c, 0x044, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_OE__OE			IOMUX_PAD(0x260, 0x048, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_OE__AUD4_TXC		IOMUX_PAD(0x260, 0x048, 0x04, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_OE__GPIO_2_14		IOMUX_PAD(0x260, 0x048, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_CS0__CS0		IOMUX_PAD(0x000, 0x04c, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CS0__GPIO_4_2		IOMUX_PAD(0x000, 0x04c, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_CS1__CS1		IOMUX_PAD(0x000, 0x050, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CS1__GPIO_4_3		IOMUX_PAD(0x000, 0x050, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_CS4__CS4		IOMUX_PAD(0x264, 0x054, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CS4__UART5_CTS		IOMUX_PAD(0x264, 0x054, 0x03, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CS4__GPIO_3_20		IOMUX_PAD(0x264, 0x054, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_CS5__CS5		IOMUX_PAD(0x268, 0x058, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CS5__UART5_RTS		IOMUX_PAD(0x268, 0x058, 0x03, 0x574, 0, NO_PAD_CTRL)
+#define MX25_PAD_CS5__GPIO_3_21		IOMUX_PAD(0x268, 0x058, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_NF_CE0__NF_CE0		IOMUX_PAD(0x26c, 0x05c, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_NF_CE0__GPIO_3_22	IOMUX_PAD(0x26c, 0x05c, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_ECB__ECB		IOMUX_PAD(0x270, 0x060, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_ECB__UART5_TXD_MUX	IOMUX_PAD(0x270, 0x060, 0x03, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_ECB__GPIO_3_23		IOMUX_PAD(0x270, 0x060, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_LBA__LBA		IOMUX_PAD(0x274, 0x064, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_LBA__UART5_RXD_MUX	IOMUX_PAD(0x274, 0x064, 0x03, 0x578, 0, NO_PAD_CTRL)
+#define MX25_PAD_LBA__GPIO_3_24		IOMUX_PAD(0x274, 0x064, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_BCLK__BCLK		IOMUX_PAD(0x000, 0x068, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_BCLK__GPIO_4_4		IOMUX_PAD(0x000, 0x068, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_RW__RW			IOMUX_PAD(0x278, 0x06c, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_RW__AUD4_TXFS		IOMUX_PAD(0x278, 0x06c, 0x04, 0x474, 0, NO_PAD_CTRL)
+#define MX25_PAD_RW__GPIO_3_25		IOMUX_PAD(0x278, 0x06c, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_NFWE_B__NFWE_B		IOMUX_PAD(0x000, 0x070, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_NFWE_B__GPIO_3_26	IOMUX_PAD(0x000, 0x070, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_NFRE_B__NFRE_B		IOMUX_PAD(0x000, 0x074, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_NFRE_B__GPIO_3_27	IOMUX_PAD(0x000, 0x074, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_NFALE__NFALE		IOMUX_PAD(0x000, 0x078, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_NFALE__GPIO_3_28	IOMUX_PAD(0x000, 0x078, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_NFCLE__NFCLE		IOMUX_PAD(0x000, 0x07c, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_NFCLE__GPIO_3_29	IOMUX_PAD(0x000, 0x07c, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_NFWP_B__NFWP_B		IOMUX_PAD(0x000, 0x080, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_NFWP_B__GPIO_3_30	IOMUX_PAD(0x000, 0x080, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_NFRB__NFRB		IOMUX_PAD(0x27c, 0x084, 0x00, 0, 0, PAD_CTL_PKE)
+#define MX25_PAD_NFRB__GPIO_3_31	IOMUX_PAD(0x27c, 0x084, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_D15__D15		IOMUX_PAD(0x280, 0x088, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_D15__LD16		IOMUX_PAD(0x280, 0x088, 0x01, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_D15__GPIO_4_5		IOMUX_PAD(0x280, 0x088, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_D14__D14		IOMUX_PAD(0x284, 0x08c, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_D14__LD17		IOMUX_PAD(0x284, 0x08c, 0x01, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_D14__GPIO_4_6		IOMUX_PAD(0x284, 0x08c, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_D13__D13		IOMUX_PAD(0x288, 0x090, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_D13__LD18		IOMUX_PAD(0x288, 0x090, 0x01, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_D13__GPIO_4_7		IOMUX_PAD(0x288, 0x090, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_D12__D12		IOMUX_PAD(0x28c, 0x094, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_D12__GPIO_4_8		IOMUX_PAD(0x28c, 0x094, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_D11__D11		IOMUX_PAD(0x290, 0x098, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_D11__GPIO_4_9		IOMUX_PAD(0x290, 0x098, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_D10__D10		IOMUX_PAD(0x294, 0x09c, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_D10__GPIO_4_10		IOMUX_PAD(0x294, 0x09c, 0x05, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_D10__USBOTG_OC		IOMUX_PAD(0x294, 0x09c, 0x06, 0x57c, 0, PAD_CTL_PUS_100K_UP)
+
+#define MX25_PAD_D9__D9			IOMUX_PAD(0x298, 0x0a0, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_D9__GPIO_4_11		IOMUX_PAD(0x298, 0x0a0, 0x05, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_D9__USBH2_PWR		IOMUX_PAD(0x298, 0x0a0, 0x06, 0, 0, PAD_CTL_PKE)
+
+#define MX25_PAD_D8__D8			IOMUX_PAD(0x29c, 0x0a4, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_D8__GPIO_4_12		IOMUX_PAD(0x29c, 0x0a4, 0x05, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_D8__USBH2_OC		IOMUX_PAD(0x29c, 0x0a4, 0x06, 0x580, 0, PAD_CTL_PUS_100K_UP)
+
+#define MX25_PAD_D7__D7			IOMUX_PAD(0x2a0, 0x0a8, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_D7__GPIO_4_13		IOMUX_PAD(0x2a0, 0x0a8, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_D6__D6			IOMUX_PAD(0x2a4, 0x0ac, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_D6__GPIO_4_14		IOMUX_PAD(0x2a4, 0x0ac, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_D5__D5			IOMUX_PAD(0x2a8, 0x0b0, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_D5__GPIO_4_15		IOMUX_PAD(0x2a8, 0x0b0, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_D4__D4			IOMUX_PAD(0x2ac, 0x0b4, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_D4__GPIO_4_16		IOMUX_PAD(0x2ac, 0x0b4, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_D3__D3			IOMUX_PAD(0x2b0, 0x0b8, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_D3__GPIO_4_17		IOMUX_PAD(0x2b0, 0x0b8, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_D2__D2			IOMUX_PAD(0x2b4, 0x0bc, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_D2__GPIO_4_18		IOMUX_PAD(0x2b4, 0x0bc, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_D1__D1			IOMUX_PAD(0x2b8, 0x0c0, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_D1__GPIO_4_19		IOMUX_PAD(0x2b8, 0x0c0, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_D0__D0			IOMUX_PAD(0x2bc, 0x0c4, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_D0__GPIO_4_20		IOMUX_PAD(0x2bc, 0x0c4, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_LD0__LD0		IOMUX_PAD(0x2c0, 0x0c8, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_LD0__CSI_D0		IOMUX_PAD(0x2c0, 0x0c8, 0x02, 0x488, 0, NO_PAD_CTRL)
+#define MX25_PAD_LD0__GPIO_2_15		IOMUX_PAD(0x2c0, 0x0c8, 0x05, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_LD0__USBH2_CLK		IOMUX_PAD(0x2c0,  0xc8, 0x06, 0, 0, 0xe0)
+
+#define MX25_PAD_LD1__LD1		IOMUX_PAD(0x2c4, 0x0cc, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_LD1__CSI_D1		IOMUX_PAD(0x2c4, 0x0cc, 0x02, 0x48c, 0, NO_PAD_CTRL)
+#define MX25_PAD_LD1__GPIO_2_16		IOMUX_PAD(0x2c4, 0x0cc, 0x05, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_LD1__USBH2_DIR		IOMUX_PAD(0x2c4, 0x0cc, 0x06, 0, 0, 0xe0)
+
+#define MX25_PAD_LD2__LD2		IOMUX_PAD(0x2c8, 0x0d0, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_LD2__GPIO_2_17		IOMUX_PAD(0x2c8, 0x0d0, 0x05, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_LD2__USBH2_STP		IOMUX_PAD(0x2c8, 0x0d0, 0x06, 0, 0, 0xe5)
+
+#define MX25_PAD_LD3__LD3		IOMUX_PAD(0x2cc, 0x0d4, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_LD3__GPIO_2_18		IOMUX_PAD(0x2cc, 0x0d4, 0x05, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_LD3__USBH2_NXT		IOMUX_PAD(0x2cc, 0x0d4, 0x06, 0, 0, 0xe0)
+
+#define MX25_PAD_LD4__LD4		IOMUX_PAD(0x2d0, 0x0d8, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_LD4__GPIO_2_19		IOMUX_PAD(0x2d0, 0x0d8, 0x05, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_LD4__USBH2_DATA0	IOMUX_PAD(0x2d0, 0x0d8, 0x06, 0, 0, 0xe5)
+
+#define MX25_PAD_LD5__LD5		IOMUX_PAD(0x2d4, 0x0dc, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_LD5__GPIO_1_19		IOMUX_PAD(0x2d4, 0x0dc, 0x05, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_LD5__USBH2_DATA1	IOMUX_PAD(0x2d4, 0x0dc, 0x06, 0, 0, 0xe5)
+
+#define MX25_PAD_LD6__LD6		IOMUX_PAD(0x2d8, 0x0e0, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_LD6__GPIO_1_20		IOMUX_PAD(0x2d8, 0x0e0, 0x05, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_LD6__USBH2_DATA2	IOMUX_PAD(0x2d8, 0x0e0, 0x06, 0, 0, 0xe5)
+
+#define MX25_PAD_LD7__LD7		IOMUX_PAD(0x2dc, 0x0e4, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_LD7__GPIO_1_21		IOMUX_PAD(0x2dc, 0x0e4, 0x05, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_LD7__USBH2_DATA3	IOMUX_PAD(0x2dc, 0x0e4, 0x06, 0, 0, 0xe5)
+
+#define MX25_PAD_LD8__LD8		IOMUX_PAD(0x2e0, 0x0e8, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_LD8__FEC_TX_ERR	IOMUX_PAD(0x2e0, 0x0e8, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_LD9__LD9		IOMUX_PAD(0x2e4, 0x0ec, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_LD9__FEC_COL		IOMUX_PAD(0x2e4, 0x0ec, 0x05, 0x504, 1, NO_PAD_CTRL)
+
+#define MX25_PAD_LD10__LD10		IOMUX_PAD(0x2e8, 0x0f0, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_LD10__FEC_RX_ER	IOMUX_PAD(0x2e8, 0x0f0, 0x05, 0x518, 1, NO_PAD_CTRL)
+
+#define MX25_PAD_LD11__LD11		IOMUX_PAD(0x2ec, 0x0f4, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_LD11__FEC_RDATA2	IOMUX_PAD(0x2ec, 0x0f4, 0x05, 0x50c, 1, NO_PAD_CTRL)
+
+#define MX25_PAD_LD12__LD12		IOMUX_PAD(0x2f0, 0x0f8, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_LD12__FEC_RDATA3	IOMUX_PAD(0x2f0, 0x0f8, 0x05, 0x510, 1, NO_PAD_CTRL)
+
+#define MX25_PAD_LD13__LD13		IOMUX_PAD(0x2f4, 0x0fc, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_LD13__FEC_TDATA2	IOMUX_PAD(0x2f4, 0x0fc, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_LD14__LD14		IOMUX_PAD(0x2f8, 0x100, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_LD14__FEC_TDATA3	IOMUX_PAD(0x2f8, 0x100, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_LD15__LD15		IOMUX_PAD(0x2fc, 0x104, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_LD15__FEC_RX_CLK	IOMUX_PAD(0x2fc, 0x104, 0x05, 0x514, 1, NO_PAD_CTRL)
+
+#define MX25_PAD_HSYNC__HSYNC		IOMUX_PAD(0x300, 0x108, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_HSYNC__GPIO_1_22	IOMUX_PAD(0x300, 0x108, 0x05, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_HSYNC__USBH2_DATA4	IOMUX_PAD(0x300, 0x108, 0x06, 0, 0, 0xe5)
+
+#define MX25_PAD_VSYNC__VSYNC		IOMUX_PAD(0x304, 0x10c, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_VSYNC__GPIO_1_23	IOMUX_PAD(0x304, 0x10c, 0x05, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_VSYNC__USBH2_DATA5	IOMUX_PAD(0x304, 0x10c, 0x06, 0, 0, 0xe5)
+
+#define MX25_PAD_LSCLK__LSCLK		IOMUX_PAD(0x308, 0x110, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_LSCLK__GPIO_1_24	IOMUX_PAD(0x308, 0x110, 0x05, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_LSCLK__USBH2_DATA6	IOMUX_PAD(0x308, 0x110, 0x06, 0, 0, 0xe5)
+
+#define MX25_PAD_OE_ACD__OE_ACD		IOMUX_PAD(0x30c, 0x114, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_OE_ACD__GPIO_1_25	IOMUX_PAD(0x30c, 0x114, 0x05, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_OE_ACD__USBH2_DATA7	IOMUX_PAD(0x30c, 0x114, 0x06, 0, 0, 0xe5)
+
+#define MX25_PAD_CONTRAST__CONTRAST	IOMUX_PAD(0x310, 0x118, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CONTRAST__PWM4_PWMO	IOMUX_PAD(0x310, 0x118, 0x04, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CONTRAST__FEC_CRS	IOMUX_PAD(0x310, 0x118, 0x05, 0x508, 1, NO_PAD_CTRL)
+
+#define MX25_PAD_PWM__PWM		IOMUX_PAD(0x314, 0x11c, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_PWM__GPIO_1_26		IOMUX_PAD(0x314, 0x11c, 0x05, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_PWM__USBH2_OC		IOMUX_PAD(0x314, 0x11c, 0x16, 0x580, 1, PAD_CTL_PUS_100K_UP)
 
+#define MX25_PAD_CSI_D2__CSI_D2		IOMUX_PAD(0x318, 0x120, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CSI_D2__UART5_RXD_MUX	IOMUX_PAD(0x318, 0x120, 0x01, 0x578, 1, NO_PAD_CTRL)
+#define MX25_PAD_CSI_D2__GPIO_1_27	IOMUX_PAD(0x318, 0x120, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_CSI_D3__CSI_D3		IOMUX_PAD(0x31c, 0x124, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CSI_D3__GPIO_1_28	IOMUX_PAD(0x31c, 0x124, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_CSI_D4__CSI_D4		IOMUX_PAD(0x320, 0x128, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CSI_D4__UART5_RTS	IOMUX_PAD(0x320, 0x128, 0x01, 0x574, 1, NO_PAD_CTRL)
+#define MX25_PAD_CSI_D4__GPIO_1_29	IOMUX_PAD(0x320, 0x128, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_CSI_D5__CSI_D5		IOMUX_PAD(0x324, 0x12c, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CSI_D5__GPIO_1_30	IOMUX_PAD(0x324, 0x12c, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_CSI_D6__CSI_D6		IOMUX_PAD(0x328, 0x130, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CSI_D6__GPIO_1_31	IOMUX_PAD(0x328, 0x130, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_CSI_D7__CSI_D7		IOMUX_PAD(0x32c, 0x134, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CSI_D7__GPIO_1_6	IOMUX_PAD(0x32c, 0x134, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_CSI_D8__CSI_D8		IOMUX_PAD(0x330, 0x138, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CSI_D8__GPIO_1_7	IOMUX_PAD(0x330, 0x138, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_CSI_D9__CSI_D9		IOMUX_PAD(0x334, 0x13c, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CSI_D9__GPIO_4_21	IOMUX_PAD(0x334, 0x13c, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_CSI_MCLK__CSI_MCLK	IOMUX_PAD(0x338, 0x140, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CSI_MCLK__GPIO_1_8	IOMUX_PAD(0x338, 0x140, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_CSI_VSYNC__CSI_VSYNC	IOMUX_PAD(0x33c, 0x144, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CSI_VSYNC__GPIO_1_9	IOMUX_PAD(0x33c, 0x144, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_CSI_HSYNC__CSI_HSYNC	IOMUX_PAD(0x340, 0x148, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CSI_HSYNC__GPIO_1_10	IOMUX_PAD(0x340, 0x148, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_CSI_PIXCLK__CSI_PIXCLK	IOMUX_PAD(0x344, 0x14c, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CSI_PIXCLK__GPIO_1_11	IOMUX_PAD(0x344, 0x14c, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_I2C1_CLK__I2C1_CLK	IOMUX_PAD(0x348, 0x150, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_I2C1_CLK__GPIO_1_12	IOMUX_PAD(0x348, 0x150, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_I2C1_DAT__I2C1_DAT	IOMUX_PAD(0x34c, 0x154, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_I2C1_DAT__GPIO_1_13	IOMUX_PAD(0x34c, 0x154, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_CSPI1_MOSI__CSPI1_MOSI	IOMUX_PAD(0x350, 0x158, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CSPI1_MOSI__GPIO_1_14	IOMUX_PAD(0x350, 0x158, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_CSPI1_MISO__CSPI1_MISO	IOMUX_PAD(0x354, 0x15c, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CSPI1_MISO__GPIO_1_15	IOMUX_PAD(0x354, 0x15c, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_CSPI1_SS0__CSPI1_SS0	IOMUX_PAD(0x358, 0x160, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CSPI1_SS0__GPIO_1_16	IOMUX_PAD(0x358, 0x160, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_CSPI1_SS1__CSPI1_SS1	IOMUX_PAD(0x35c, 0x164, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CSPI1_SS1__GPIO_1_17	IOMUX_PAD(0x35c, 0x164, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_CSPI1_SCLK__CSPI1_SCLK	IOMUX_PAD(0x360, 0x168, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CSPI1_SCLK__GPIO_1_18	IOMUX_PAD(0x360, 0x168, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_CSPI1_RDY__CSPI1_RDY	IOMUX_PAD(0x364, 0x16c, 0x00, 0, 0, PAD_CTL_PKE)
+#define MX25_PAD_CSPI1_RDY__GPIO_2_22	IOMUX_PAD(0x364, 0x16c, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_UART1_RXD__UART1_RXD	IOMUX_PAD(0x368, 0x170, 0x00, 0, 0, PAD_CTL_PUS_100K_DOWN)
+#define MX25_PAD_UART1_RXD__GPIO_4_22	IOMUX_PAD(0x368, 0x170, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_UART1_TXD__UART1_TXD	IOMUX_PAD(0x36c, 0x174, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_UART1_TXD__GPIO_4_23	IOMUX_PAD(0x36c, 0x174, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_UART1_RTS__UART1_RTS	IOMUX_PAD(0x370, 0x178, 0x00, 0, 0, PAD_CTL_PUS_100K_UP)
+#define MX25_PAD_UART1_RTS__CSI_D0	IOMUX_PAD(0x370, 0x178, 0x01, 0x488, 1, NO_PAD_CTRL)
+#define MX25_PAD_UART1_RTS__GPIO_4_24	IOMUX_PAD(0x370, 0x178, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_UART1_CTS__UART1_CTS	IOMUX_PAD(0x374, 0x17c, 0x00, 0, 0, PAD_CTL_PUS_100K_UP)
+#define MX25_PAD_UART1_CTS__CSI_D1	IOMUX_PAD(0x374, 0x17c, 0x01, 0x48c, 1, NO_PAD_CTRL)
+#define MX25_PAD_UART1_CTS__GPIO_4_25	IOMUX_PAD(0x374, 0x17c, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_UART2_RXD__UART2_RXD	IOMUX_PAD(0x378, 0x180, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_UART2_RXD__GPIO_4_26	IOMUX_PAD(0x378, 0x180, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_UART2_TXD__UART2_TXD	IOMUX_PAD(0x37c, 0x184, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_UART2_TXD__GPIO_4_27	IOMUX_PAD(0x37c, 0x184, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_UART2_RTS__UART2_RTS	IOMUX_PAD(0x380, 0x188, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_UART2_RTS__FEC_COL	IOMUX_PAD(0x380, 0x188, 0x02, 0x504, 2, NO_PAD_CTRL)
+#define MX25_PAD_UART2_RTS__GPIO_4_28	IOMUX_PAD(0x380, 0x188, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_UART2_CTS__FEC_RX_ER	IOMUX_PAD(0x384, 0x18c, 0x02, 0x518, 2, NO_PAD_CTRL)
+#define MX25_PAD_UART2_CTS__UART2_CTS	IOMUX_PAD(0x384, 0x18c, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_UART2_CTS__GPIO_4_29	IOMUX_PAD(0x384, 0x18c, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_SD1_CMD__SD1_CMD	IOMUX_PAD(0x388, 0x190, 0x00, 0, 0, PAD_CTL_PUS_47K_UP)
+#define MX25_PAD_SD1_CMD__FEC_RDATA2	IOMUX_PAD(0x388, 0x190, 0x02, 0x50c, 2, NO_PAD_CTRL)
+#define MX25_PAD_SD1_CMD__GPIO_2_23	IOMUX_PAD(0x388, 0x190, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_SD1_CLK__SD1_CLK	IOMUX_PAD(0x38c, 0x194, 0x00, 0, 0, PAD_CTL_PUS_47K_UP)
+#define MX25_PAD_SD1_CLK__FEC_RDATA3	IOMUX_PAD(0x38c, 0x194, 0x02, 0x510, 2, NO_PAD_CTRL)
+#define MX25_PAD_SD1_CLK__GPIO_2_24	IOMUX_PAD(0x38c, 0x194, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_SD1_DATA0__SD1_DATA0	IOMUX_PAD(0x390, 0x198, 0x00, 0, 0, PAD_CTL_PUS_47K_UP)
+#define MX25_PAD_SD1_DATA0__GPIO_2_25	IOMUX_PAD(0x390, 0x198, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_SD1_DATA1__SD1_DATA1	IOMUX_PAD(0x394, 0x19c, 0x00, 0, 0, PAD_CTL_PUS_47K_UP)
+#define MX25_PAD_SD1_DATA1__AUD7_RXD	IOMUX_PAD(0x394, 0x19c, 0x03, 0x478, 0, NO_PAD_CTRL)
+#define MX25_PAD_SD1_DATA1__GPIO_2_26	IOMUX_PAD(0x394, 0x19c, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_SD1_DATA2__SD1_DATA2	IOMUX_PAD(0x398, 0x1a0, 0x00, 0, 0, PAD_CTL_PUS_47K_UP)
+#define MX25_PAD_SD1_DATA2__FEC_RX_CLK	IOMUX_PAD(0x398, 0x1a0, 0x05, 0x514, 2, NO_PAD_CTRL)
+#define MX25_PAD_SD1_DATA2__GPIO_2_27	IOMUX_PAD(0x398, 0x1a0, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_SD1_DATA3__SD1_DATA3	IOMUX_PAD(0x39c, 0x1a4, 0x00, 0, 0, PAD_CTL_PUS_47K_UP)
+#define MX25_PAD_SD1_DATA3__FEC_CRS	IOMUX_PAD(0x39c, 0x1a4, 0x00, 0x508, 2, NO_PAD_CTRL)
+#define MX25_PAD_SD1_DATA3__GPIO_2_28	IOMUX_PAD(0x39c, 0x1a4, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define KPP_CTL_ROW	(PAD_CTL_PKE | PAD_CTL_PUE | PAD_CTL_PUS_100K_UP)
+#define KPP_CTL_COL	(PAD_CTL_PKE | PAD_CTL_PUE | PAD_CTL_PUS_100K_UP | PAD_CTL_ODE)
+
+#define MX25_PAD_KPP_ROW0__KPP_ROW0	IOMUX_PAD(0x3a0, 0x1a8, 0x00, 0, 0, KPP_CTL_ROW)
+#define MX25_PAD_KPP_ROW0__GPIO_2_29	IOMUX_PAD(0x3a0, 0x1a8, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_KPP_ROW1__KPP_ROW1	IOMUX_PAD(0x3a4, 0x1ac, 0x00, 0, 0, KPP_CTL_ROW)
+#define MX25_PAD_KPP_ROW1__GPIO_2_30	IOMUX_PAD(0x3a4, 0x1ac, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_KPP_ROW2__KPP_ROW2	IOMUX_PAD(0x3a8, 0x1b0, 0x00, 0, 0, KPP_CTL_ROW)
+#define MX25_PAD_KPP_ROW2__CSI_D0	IOMUX_PAD(0x3a8, 0x1b0, 0x03, 0x488, 2, NO_PAD_CTRL)
+#define MX25_PAD_KPP_ROW2__GPIO_2_31	IOMUX_PAD(0x3a8, 0x1b0, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_KPP_ROW3__KPP_ROW3	IOMUX_PAD(0x3ac, 0x1b4, 0x00, 0, 0, KPP_CTL_ROW)
+#define MX25_PAD_KPP_ROW3__CSI_LD1	IOMUX_PAD(0x3ac, 0x1b4, 0x03, 0x48c, 2, NO_PAD_CTRL)
+#define MX25_PAD_KPP_ROW3__GPIO_3_0	IOMUX_PAD(0x3ac, 0x1b4, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_KPP_COL0__KPP_COL0	IOMUX_PAD(0x3b0, 0x1b8, 0x00, 0, 0, KPP_CTL_COL)
+#define MX25_PAD_KPP_COL0__UART4_RXD_MUX IOMUX_PAD(0x3b0, 0x1b8, 0x01, 0x570, 1, NO_PAD_CTRL)
+#define MX25_PAD_KPP_COL0__AUD5_TXD	IOMUX_PAD(0x3b0, 0x1b8, 0x02, 0, 0, PAD_CTL_PKE | PAD_CTL_PUS_100K_UP)
+#define MX25_PAD_KPP_COL0__GPIO_3_1	IOMUX_PAD(0x3b0, 0x1b8, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_KPP_COL1__KPP_COL1	IOMUX_PAD(0x3b4, 0x1bc, 0x00, 0, 0, KPP_CTL_COL)
+#define MX25_PAD_KPP_COL1__UART4_TXD_MUX IOMUX_PAD(0x3b4, 0x1bc, 0x01, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_KPP_COL1__AUD5_RXD	IOMUX_PAD(0x3b4, 0x1bc, 0x02, 0, 0, PAD_CTL_PKE | PAD_CTL_PUS_100K_UP)
+#define MX25_PAD_KPP_COL1__GPIO_3_2	IOMUX_PAD(0x3b4, 0x1bc, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_KPP_COL2__KPP_COL2	IOMUX_PAD(0x3b8, 0x1c0, 0x00, 0, 0, KPP_CTL_COL)
+#define MX25_PAD_KPP_COL2__UART4_RTS	IOMUX_PAD(0x3b8, 0x1c0, 0x01, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_KPP_COL2__AUD5_TXC	IOMUX_PAD(0x3b8, 0x1c0, 0x02, 0, 0, PAD_CTL_PKE | PAD_CTL_PUS_100K_UP)
+#define MX25_PAD_KPP_COL2__GPIO_3_3	IOMUX_PAD(0x3b8, 0x1c0, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_KPP_COL3__KPP_COL3	IOMUX_PAD(0x3bc, 0x1c4, 0x00, 0, 0, KPP_CTL_COL)
+#define MX25_PAD_KPP_COL3__UART4_CTS	IOMUX_PAD(0x3bc, 0x1c4, 0x01, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_KPP_COL3__AUD5_TXFS	IOMUX_PAD(0x3bc, 0x1c4, 0x02, 0, 0, PAD_CTL_PKE | PAD_CTL_PUS_100K_UP)
+#define MX25_PAD_KPP_COL3__GPIO_3_4	IOMUX_PAD(0x3bc, 0x1c4, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_FEC_MDC__FEC_MDC	IOMUX_PAD(0x3c0, 0x1c8, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_FEC_MDC__AUD4_TXD	IOMUX_PAD(0x3c0, 0x1c8, 0x02, 0x464, 1, NO_PAD_CTRL)
+#define MX25_PAD_FEC_MDC__GPIO_3_5	IOMUX_PAD(0x3c0, 0x1c8, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_FEC_MDIO__FEC_MDIO	IOMUX_PAD(0x3c4, 0x1cc, 0x00, 0, 0, PAD_CTL_HYS | PAD_CTL_PUS_22K_UP | PAD_CTL_PUE)
+#define MX25_PAD_FEC_MDIO__AUD4_RXD	IOMUX_PAD(0x3c4, 0x1cc, 0x02, 0x460, 1, NO_PAD_CTRL)
+#define MX25_PAD_FEC_MDIO__GPIO_3_6	IOMUX_PAD(0x3c4, 0x1cc, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_FEC_TDATA0__FEC_TDATA0	IOMUX_PAD(0x3c8, 0x1d0, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_FEC_TDATA0__GPIO_3_7	IOMUX_PAD(0x3c8, 0x1d0, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_FEC_TDATA1__FEC_TDATA1	IOMUX_PAD(0x3cc, 0x1d4, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_FEC_TDATA1__AUD4_TXFS	IOMUX_PAD(0x3cc, 0x1d4, 0x02, 0x474, 1, NO_PAD_CTRL)
+#define MX25_PAD_FEC_TDATA1__GPIO_3_8	IOMUX_PAD(0x3cc, 0x1d4, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_FEC_TX_EN__FEC_TX_EN	IOMUX_PAD(0x3d0, 0x1d8, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_FEC_TX_EN__GPIO_3_9   	IOMUX_PAD(0x3d0, 0x1d8, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_FEC_RDATA0__FEC_RDATA0	IOMUX_PAD(0x3d4, 0x1dc, 0x00, 0, 0, PAD_CTL_PUS_100K_DOWN | NO_PAD_CTRL)
+#define MX25_PAD_FEC_RDATA0__GPIO_3_10	IOMUX_PAD(0x3d4, 0x1dc, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_FEC_RDATA1__FEC_RDATA1	IOMUX_PAD(0x3d8, 0x1e0, 0x00, 0, 0, PAD_CTL_PUS_100K_DOWN | NO_PAD_CTRL)
+#define MX25_PAD_FEC_RDATA1__GPIO_3_11	IOMUX_PAD(0x3d8, 0x1e0, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_FEC_RX_DV__FEC_RX_DV	IOMUX_PAD(0x3dc, 0x1e4, 0x00, 0, 0, PAD_CTL_PUS_100K_DOWN | NO_PAD_CTRL)
+#define MX25_PAD_FEC_RX_DV__CAN2_RX	IOMUX_PAD(0x3dc, 0x1e4, 0x04, 0x484, 0, PAD_CTL_PUS_22K_UP)
+#define MX25_PAD_FEC_RX_DV__GPIO_3_12	IOMUX_PAD(0x3dc, 0x1e4, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_FEC_TX_CLK__FEC_TX_CLK	IOMUX_PAD(0x3e0, 0x1e8, 0x00, 0, 0, PAD_CTL_HYS | PAD_CTL_PUS_100K_DOWN)
+#define MX25_PAD_FEC_TX_CLK__GPIO_3_13	IOMUX_PAD(0x3e0, 0x1e8, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_RTCK__RTCK		IOMUX_PAD(0x3e4, 0x1ec, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_RTCK__OWIRE		IOMUX_PAD(0x3e4, 0x1ec, 0x01, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_RTCK__GPIO_3_14	IOMUX_PAD(0x3e4, 0x1ec, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_DE_B__DE_B		IOMUX_PAD(0x3ec, 0x1f0, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_DE_B__GPIO_2_20	IOMUX_PAD(0x3ec, 0x1f0, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_TDO__TDO		IOMUX_PAD(0x3e8, 0x000, 0x00, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_GPIO_A__GPIO_A		IOMUX_PAD(0x3f0, 0x1f4, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_GPIO_A__CAN1_TX	IOMUX_PAD(0x3f0, 0x1f4, 0x16, 0, 0, PAD_CTL_PUS_22K_UP)
+#define MX25_PAD_GPIO_A__USBOTG_PWR	IOMUX_PAD(0x3f0, 0x1f4, 0x02, 0, 0, PAD_CTL_PKE)
+
+#define MX25_PAD_GPIO_B__GPIO_B		IOMUX_PAD(0x3f4, 0x1f8, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_GPIO_B__CAN1_RX	IOMUX_PAD(0x3f4, 0x1f8, 0x16, 0x480, 1, PAD_CTL_PUS_22K)
+#define MX25_PAD_GPIO_B__USBOTG_OC	IOMUX_PAD(0x3f4, 0x1f8, 0x02, 0x57c, 1, PAD_CTL_PUS_100K_UP)
+
+#define MX25_PAD_GPIO_C__GPIO_C		IOMUX_PAD(0x3f8, 0x1fc, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_GPIO_C__CAN2_TX	IOMUX_PAD(0x3f8, 0x1fc, 0x16, 0, 0, PAD_CTL_PUS_22K_UP)
+
+#define MX25_PAD_GPIO_D__GPIO_D		IOMUX_PAD(0x3fc, 0x200, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_GPIO_E__LD16		IOMUX_PAD(0x400, 0x204, 0x02, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_GPIO_D__CAN2_RX	IOMUX_PAD(0x3fc, 0x200, 0x16, 0x484, 1, PAD_CTL_PUS_22K_UP)
+
+#define MX25_PAD_GPIO_E__GPIO_E		IOMUX_PAD(0x400, 0x204, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_GPIO_F__LD17		IOMUX_PAD(0x404, 0x208, 0x02, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_GPIO_E__AUD7_TXD	IOMUX_PAD(0x400, 0x204, 0x04, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_GPIO_F__GPIO_F		IOMUX_PAD(0x404, 0x208, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_GPIO_F__AUD7_TXC	IOMUX_PAD(0x404, 0x208, 0x04, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_EXT_ARMCLK__EXT_ARMCLK	IOMUX_PAD(0x000, 0x20c, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_EXT_ARMCLK__GPIO_3_15	IOMUX_PAD(0x000, 0x20c, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_UPLL_BYPCLK__UPLL_BYPCLK IOMUX_PAD(0x000, 0x210, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_UPLL_BYPCLK__GPIO_3_16	IOMUX_PAD(0x000, 0x210, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_VSTBY_REQ__VSTBY_REQ	IOMUX_PAD(0x408, 0x214, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_VSTBY_REQ__AUD7_TXFS	IOMUX_PAD(0x408, 0x214, 0x04, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_VSTBY_REQ__GPIO_3_17	IOMUX_PAD(0x408, 0x214, 0x05, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_VSTBY_ACK__VSTBY_ACK	IOMUX_PAD(0x40c, 0x218, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_VSTBY_ACK__GPIO_3_18	IOMUX_PAD(0x40c, 0x218, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_POWER_FAIL__POWER_FAIL	IOMUX_PAD(0x410, 0x21c, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_POWER_FAIL__AUD7_RXD	IOMUX_PAD(0x410, 0x21c, 0x04, 0x478, 1, NO_PAD_CTRL)
+#define MX25_PAD_POWER_FAIL__GPIO_3_19	IOMUX_PAD(0x410, 0x21c, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_CLKO__CLKO		IOMUX_PAD(0x414, 0x220, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CLKO__GPIO_2_21	IOMUX_PAD(0x414, 0x220, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_BOOT_MODE0__BOOT_MODE0	IOMUX_PAD(0x000, 0x224, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_BOOT_MODE0__GPIO_4_30	IOMUX_PAD(0x000, 0x224, 0x05, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_BOOT_MODE1__BOOT_MODE1	IOMUX_PAD(0x000, 0x228, 0x00, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_BOOT_MODE1__GPIO_4_31	IOMUX_PAD(0x000, 0x228, 0x05, 0, 0, NO_PAD_CTRL)
+
+#define MX25_PAD_CTL_GRP_DVS_MISC	IOMUX_PAD(0x418, 0x000, 0, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CTL_GRP_DSE_FEC	IOMUX_PAD(0x41c, 0x000, 0, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CTL_GRP_DVS_JTAG	IOMUX_PAD(0x420, 0x000, 0, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CTL_GRP_DSE_NFC	IOMUX_PAD(0x424, 0x000, 0, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CTL_GRP_DSE_CSI	IOMUX_PAD(0x428, 0x000, 0, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CTL_GRP_DSE_WEIM	IOMUX_PAD(0x42c, 0x000, 0, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CTL_GRP_DSE_DDR	IOMUX_PAD(0x430, 0x000, 0, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CTL_GRP_DVS_CRM	IOMUX_PAD(0x434, 0x000, 0, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CTL_GRP_DSE_KPP	IOMUX_PAD(0x438, 0x000, 0, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CTL_GRP_DSE_SDHC1	IOMUX_PAD(0x43c, 0x000, 0, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CTL_GRP_DSE_LCD	IOMUX_PAD(0x440, 0x000, 0, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CTL_GRP_DSE_UART	IOMUX_PAD(0x444, 0x000, 0, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CTL_GRP_DVS_NFC	IOMUX_PAD(0x448, 0x000, 0, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CTL_GRP_DVS_CSI	IOMUX_PAD(0x44c, 0x000, 0, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CTL_GRP_DSE_CSPI1	IOMUX_PAD(0x450, 0x000, 0, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CTL_GRP_DDRTYPE	IOMUX_PAD(0x454, 0x000, 0, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CTL_GRP_DVS_SDHC1	IOMUX_PAD(0x458, 0x000, 0, 0, 0, NO_PAD_CTRL)
+#define MX25_PAD_CTL_GRP_DVS_LCD	IOMUX_PAD(0x45c, 0x000, 0, 0, 0, NO_PAD_CTRL)
+
+#endif /* __MACH_IOMUX_MX25_H__ */
diff --git a/arch/arm/mach-imx/include/mach/iomux-mx51.h b/arch/arm/mach-imx/include/mach/iomux-mx51.h
index 2901ee6..66dee8e 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx51.h
+++ b/arch/arm/mach-imx/include/mach/iomux-mx51.h
@@ -21,7 +21,7 @@
 
 #include <mach/iomux-v3.h>
 
-#define MX51_FEC_PAD_CTRL      (PAD_CTL_DRV_VOT_HIGH | PAD_CTL_DRIVE_STRENGTH_HIGH)
+#define MX51_FEC_PAD_CTRL      (PAD_CTL_DVS | PAD_CTL_DSE_HIGH)
 
 /*
  * The naming convention for the pad modes is MX51_PAD_<padname>__<padmode>
diff --git a/arch/arm/mach-imx/include/mach/iomux-v3.h b/arch/arm/mach-imx/include/mach/iomux-v3.h
index 198286a..8a1adc2 100644
--- a/arch/arm/mach-imx/include/mach/iomux-v3.h
+++ b/arch/arm/mach-imx/include/mach/iomux-v3.h
@@ -68,32 +68,27 @@ struct pad_desc {
 /*
  * Use to set PAD control
  */
-#define PAD_CTL_DRIVE_VOLTAGE_3_3_V	(0)
-#define PAD_CTL_DRIVE_VOLTAGE_1_8_V	(1 << 13)
+#define PAD_CTL_DVS			(1 << 13)
+#define PAD_CTL_HYS			(1 << 8)
 
-#define PAD_CTL_NO_HYSTERESIS		(0)
-#define PAD_CTL_HYSTERESIS		(1 << 8)
+#define PAD_CTL_PKE			(1 << 7)
+#define PAD_CTL_PUE			(1 << 6)
+#define PAD_CTL_PUS_100K_DOWN		(0 << 4)
+#define PAD_CTL_PUS_47K_UP		(1 << 4)
+#define PAD_CTL_PUS_100K_UP		(2 << 4)
+#define PAD_CTL_PUS_22K_UP		(3 << 4)
 
-#define PAD_CTL_PULL_DISABLED		(0)
-#define PAD_CTL_PULL_KEEPER		(0xa << 4)
-#define PAD_CTL_PULL_DOWN_100K		(0xc << 4)
-#define PAD_CTL_PULL_UP_47K		(0xd << 4)
-#define PAD_CTL_PULL_UP_100K		(0xe << 4)
-#define PAD_CTL_PULL_UP_22K		(0xf << 4)
+#define PAD_CTL_ODE			(1 << 3)
 
-#define PAD_CTL_OUTPUT_CMOS		(0)
-#define PAD_CTL_OUTPUT_OPEN_DRAIN	(1 << 3)
+#define PAD_CTL_DSE_LOW			(0 << 1)
+#define PAD_CTL_DSE_MED			(1 << 1)
+#define PAD_CTL_DSE_HIGH		(2 << 1)
+#define PAD_CTL_DSE_MAX			(3 << 1)
 
-#define PAD_CTL_DRIVE_STRENGTH_LOW	(0 << 1)
-#define PAD_CTL_DRIVE_STRENGTH_MED	(1 << 1)
-#define PAD_CTL_DRIVE_STRENGTH_HIGH	(2 << 1)
-#define PAD_CTL_DRIVE_STRENGTH_MAX	(3 << 1)
+#define PAD_CTL_SRE_FAST		(1 << 0)
+#define PAD_CTL_SRE_SLOW		(0 << 0)
 
-#define PAD_CTL_SLEW_RATE_SLOW		0
-#define PAD_CTL_SLEW_RATE_FAST		1
-
-#define PAD_CTL_DRV_VOT_LOW            (0 << 13)
-#define PAD_CTL_DRV_VOT_HIGH           (1 << 13)
+#define IOMUX_CONFIG_SION		(0x1 << 4)
 
 /*
  * setups a single pad:
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
