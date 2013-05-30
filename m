Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ui1Me-0005a0-Sg
 for barebox@lists.infradead.org; Thu, 30 May 2013 11:50:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 30 May 2013 13:49:23 +0200
Message-Id: <1369914567-15650-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369914567-15650-1-git-send-email-s.hauer@pengutronix.de>
References: <1369914567-15650-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/8] ARM: i.MX6: Add devicetree files
To: barebox@lists.infradead.org

Diretly taken from Linux 3.10-rc3

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx6q-pinfunc.h | 1041 ++++++++++++++++++++++++++++++++++++++++++
 arch/arm/dts/imx6q.dtsi      |  358 +++++++++++++++
 arch/arm/dts/imx6qdl.dtsi    |  836 +++++++++++++++++++++++++++++++++
 3 files changed, 2235 insertions(+)
 create mode 100644 arch/arm/dts/imx6q-pinfunc.h
 create mode 100644 arch/arm/dts/imx6q.dtsi
 create mode 100644 arch/arm/dts/imx6qdl.dtsi

diff --git a/arch/arm/dts/imx6q-pinfunc.h b/arch/arm/dts/imx6q-pinfunc.h
new file mode 100644
index 0000000..faea6e1
--- /dev/null
+++ b/arch/arm/dts/imx6q-pinfunc.h
@@ -0,0 +1,1041 @@
+/*
+ * Copyright 2013 Freescale Semiconductor, Inc.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ */
+
+#ifndef __DTS_IMX6Q_PINFUNC_H
+#define __DTS_IMX6Q_PINFUNC_H
+
+/*
+ * The pin function ID is a tuple of
+ * <mux_reg conf_reg input_reg mux_mode input_val>
+ */
+#define MX6Q_PAD_SD2_DAT1__SD2_DATA1              0x04c 0x360 0x000 0x0 0x0
+#define MX6Q_PAD_SD2_DAT1__ECSPI5_SS0             0x04c 0x360 0x834 0x1 0x0
+#define MX6Q_PAD_SD2_DAT1__EIM_CS2_B              0x04c 0x360 0x000 0x2 0x0
+#define MX6Q_PAD_SD2_DAT1__AUD4_TXFS              0x04c 0x360 0x7c8 0x3 0x0
+#define MX6Q_PAD_SD2_DAT1__KEY_COL7               0x04c 0x360 0x8f0 0x4 0x0
+#define MX6Q_PAD_SD2_DAT1__GPIO1_IO14             0x04c 0x360 0x000 0x5 0x0
+#define MX6Q_PAD_SD2_DAT2__SD2_DATA2              0x050 0x364 0x000 0x0 0x0
+#define MX6Q_PAD_SD2_DAT2__ECSPI5_SS1             0x050 0x364 0x838 0x1 0x0
+#define MX6Q_PAD_SD2_DAT2__EIM_CS3_B              0x050 0x364 0x000 0x2 0x0
+#define MX6Q_PAD_SD2_DAT2__AUD4_TXD               0x050 0x364 0x7b8 0x3 0x0
+#define MX6Q_PAD_SD2_DAT2__KEY_ROW6               0x050 0x364 0x8f8 0x4 0x0
+#define MX6Q_PAD_SD2_DAT2__GPIO1_IO13             0x050 0x364 0x000 0x5 0x0
+#define MX6Q_PAD_SD2_DAT0__SD2_DATA0              0x054 0x368 0x000 0x0 0x0
+#define MX6Q_PAD_SD2_DAT0__ECSPI5_MISO            0x054 0x368 0x82c 0x1 0x0
+#define MX6Q_PAD_SD2_DAT0__AUD4_RXD               0x054 0x368 0x7b4 0x3 0x0
+#define MX6Q_PAD_SD2_DAT0__KEY_ROW7               0x054 0x368 0x8fc 0x4 0x0
+#define MX6Q_PAD_SD2_DAT0__GPIO1_IO15             0x054 0x368 0x000 0x5 0x0
+#define MX6Q_PAD_SD2_DAT0__DCIC2_OUT              0x054 0x368 0x000 0x6 0x0
+#define MX6Q_PAD_RGMII_TXC__USB_H2_DATA           0x058 0x36c 0x000 0x0 0x0
+#define MX6Q_PAD_RGMII_TXC__RGMII_TXC             0x058 0x36c 0x000 0x1 0x0
+#define MX6Q_PAD_RGMII_TXC__SPDIF_EXT_CLK         0x058 0x36c 0x918 0x2 0x0
+#define MX6Q_PAD_RGMII_TXC__GPIO6_IO19            0x058 0x36c 0x000 0x5 0x0
+#define MX6Q_PAD_RGMII_TXC__XTALOSC_REF_CLK_24M   0x058 0x36c 0x000 0x7 0x0
+#define MX6Q_PAD_RGMII_TD0__HSI_TX_READY          0x05c 0x370 0x000 0x0 0x0
+#define MX6Q_PAD_RGMII_TD0__RGMII_TD0             0x05c 0x370 0x000 0x1 0x0
+#define MX6Q_PAD_RGMII_TD0__GPIO6_IO20            0x05c 0x370 0x000 0x5 0x0
+#define MX6Q_PAD_RGMII_TD1__HSI_RX_FLAG           0x060 0x374 0x000 0x0 0x0
+#define MX6Q_PAD_RGMII_TD1__RGMII_TD1             0x060 0x374 0x000 0x1 0x0
+#define MX6Q_PAD_RGMII_TD1__GPIO6_IO21            0x060 0x374 0x000 0x5 0x0
+#define MX6Q_PAD_RGMII_TD2__HSI_RX_DATA           0x064 0x378 0x000 0x0 0x0
+#define MX6Q_PAD_RGMII_TD2__RGMII_TD2             0x064 0x378 0x000 0x1 0x0
+#define MX6Q_PAD_RGMII_TD2__GPIO6_IO22            0x064 0x378 0x000 0x5 0x0
+#define MX6Q_PAD_RGMII_TD3__HSI_RX_WAKE           0x068 0x37c 0x000 0x0 0x0
+#define MX6Q_PAD_RGMII_TD3__RGMII_TD3             0x068 0x37c 0x000 0x1 0x0
+#define MX6Q_PAD_RGMII_TD3__GPIO6_IO23            0x068 0x37c 0x000 0x5 0x0
+#define MX6Q_PAD_RGMII_RX_CTL__USB_H3_DATA        0x06c 0x380 0x000 0x0 0x0
+#define MX6Q_PAD_RGMII_RX_CTL__RGMII_RX_CTL       0x06c 0x380 0x858 0x1 0x0
+#define MX6Q_PAD_RGMII_RX_CTL__GPIO6_IO24         0x06c 0x380 0x000 0x5 0x0
+#define MX6Q_PAD_RGMII_RD0__HSI_RX_READY          0x070 0x384 0x000 0x0 0x0
+#define MX6Q_PAD_RGMII_RD0__RGMII_RD0             0x070 0x384 0x848 0x1 0x0
+#define MX6Q_PAD_RGMII_RD0__GPIO6_IO25            0x070 0x384 0x000 0x5 0x0
+#define MX6Q_PAD_RGMII_TX_CTL__USB_H2_STROBE      0x074 0x388 0x000 0x0 0x0
+#define MX6Q_PAD_RGMII_TX_CTL__RGMII_TX_CTL       0x074 0x388 0x000 0x1 0x0
+#define MX6Q_PAD_RGMII_TX_CTL__GPIO6_IO26         0x074 0x388 0x000 0x5 0x0
+#define MX6Q_PAD_RGMII_TX_CTL__ENET_REF_CLK       0x074 0x388 0x83c 0x7 0x0
+#define MX6Q_PAD_RGMII_RD1__HSI_TX_FLAG           0x078 0x38c 0x000 0x0 0x0
+#define MX6Q_PAD_RGMII_RD1__RGMII_RD1             0x078 0x38c 0x84c 0x1 0x0
+#define MX6Q_PAD_RGMII_RD1__GPIO6_IO27            0x078 0x38c 0x000 0x5 0x0
+#define MX6Q_PAD_RGMII_RD2__HSI_TX_DATA           0x07c 0x390 0x000 0x0 0x0
+#define MX6Q_PAD_RGMII_RD2__RGMII_RD2             0x07c 0x390 0x850 0x1 0x0
+#define MX6Q_PAD_RGMII_RD2__GPIO6_IO28            0x07c 0x390 0x000 0x5 0x0
+#define MX6Q_PAD_RGMII_RD3__HSI_TX_WAKE           0x080 0x394 0x000 0x0 0x0
+#define MX6Q_PAD_RGMII_RD3__RGMII_RD3             0x080 0x394 0x854 0x1 0x0
+#define MX6Q_PAD_RGMII_RD3__GPIO6_IO29            0x080 0x394 0x000 0x5 0x0
+#define MX6Q_PAD_RGMII_RXC__USB_H3_STROBE         0x084 0x398 0x000 0x0 0x0
+#define MX6Q_PAD_RGMII_RXC__RGMII_RXC             0x084 0x398 0x844 0x1 0x0
+#define MX6Q_PAD_RGMII_RXC__GPIO6_IO30            0x084 0x398 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_A25__EIM_ADDR25              0x088 0x39c 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_A25__ECSPI4_SS1              0x088 0x39c 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_A25__ECSPI2_RDY              0x088 0x39c 0x000 0x2 0x0
+#define MX6Q_PAD_EIM_A25__IPU1_DI1_PIN12          0x088 0x39c 0x000 0x3 0x0
+#define MX6Q_PAD_EIM_A25__IPU1_DI0_D1_CS          0x088 0x39c 0x000 0x4 0x0
+#define MX6Q_PAD_EIM_A25__GPIO5_IO02              0x088 0x39c 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_A25__HDMI_TX_CEC_LINE        0x088 0x39c 0x88c 0x6 0x0
+#define MX6Q_PAD_EIM_EB2__EIM_EB2_B               0x08c 0x3a0 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_EB2__ECSPI1_SS0              0x08c 0x3a0 0x800 0x1 0x0
+#define MX6Q_PAD_EIM_EB2__IPU2_CSI1_DATA19        0x08c 0x3a0 0x8d4 0x3 0x0
+#define MX6Q_PAD_EIM_EB2__HDMI_TX_DDC_SCL         0x08c 0x3a0 0x890 0x4 0x0
+#define MX6Q_PAD_EIM_EB2__GPIO2_IO30              0x08c 0x3a0 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_EB2__I2C2_SCL                0x08c 0x3a0 0x8a0 0x6 0x0
+#define MX6Q_PAD_EIM_EB2__SRC_BOOT_CFG30          0x08c 0x3a0 0x000 0x7 0x0
+#define MX6Q_PAD_EIM_D16__EIM_DATA16              0x090 0x3a4 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_D16__ECSPI1_SCLK             0x090 0x3a4 0x7f4 0x1 0x0
+#define MX6Q_PAD_EIM_D16__IPU1_DI0_PIN05          0x090 0x3a4 0x000 0x2 0x0
+#define MX6Q_PAD_EIM_D16__IPU2_CSI1_DATA18        0x090 0x3a4 0x8d0 0x3 0x0
+#define MX6Q_PAD_EIM_D16__HDMI_TX_DDC_SDA         0x090 0x3a4 0x894 0x4 0x0
+#define MX6Q_PAD_EIM_D16__GPIO3_IO16              0x090 0x3a4 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_D16__I2C2_SDA                0x090 0x3a4 0x8a4 0x6 0x0
+#define MX6Q_PAD_EIM_D17__EIM_DATA17              0x094 0x3a8 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_D17__ECSPI1_MISO             0x094 0x3a8 0x7f8 0x1 0x0
+#define MX6Q_PAD_EIM_D17__IPU1_DI0_PIN06          0x094 0x3a8 0x000 0x2 0x0
+#define MX6Q_PAD_EIM_D17__IPU2_CSI1_PIXCLK        0x094 0x3a8 0x8e0 0x3 0x0
+#define MX6Q_PAD_EIM_D17__DCIC1_OUT               0x094 0x3a8 0x000 0x4 0x0
+#define MX6Q_PAD_EIM_D17__GPIO3_IO17              0x094 0x3a8 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_D17__I2C3_SCL                0x094 0x3a8 0x8a8 0x6 0x0
+#define MX6Q_PAD_EIM_D18__EIM_DATA18              0x098 0x3ac 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_D18__ECSPI1_MOSI             0x098 0x3ac 0x7fc 0x1 0x0
+#define MX6Q_PAD_EIM_D18__IPU1_DI0_PIN07          0x098 0x3ac 0x000 0x2 0x0
+#define MX6Q_PAD_EIM_D18__IPU2_CSI1_DATA17        0x098 0x3ac 0x8cc 0x3 0x0
+#define MX6Q_PAD_EIM_D18__IPU1_DI1_D0_CS          0x098 0x3ac 0x000 0x4 0x0
+#define MX6Q_PAD_EIM_D18__GPIO3_IO18              0x098 0x3ac 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_D18__I2C3_SDA                0x098 0x3ac 0x8ac 0x6 0x0
+#define MX6Q_PAD_EIM_D19__EIM_DATA19              0x09c 0x3b0 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_D19__ECSPI1_SS1              0x09c 0x3b0 0x804 0x1 0x0
+#define MX6Q_PAD_EIM_D19__IPU1_DI0_PIN08          0x09c 0x3b0 0x000 0x2 0x0
+#define MX6Q_PAD_EIM_D19__IPU2_CSI1_DATA16        0x09c 0x3b0 0x8c8 0x3 0x0
+#define MX6Q_PAD_EIM_D19__UART1_CTS_B             0x09c 0x3b0 0x000 0x4 0x0
+#define MX6Q_PAD_EIM_D19__UART1_RTS_B             0x09c 0x3b0 0x91c 0x4 0x0
+#define MX6Q_PAD_EIM_D19__GPIO3_IO19              0x09c 0x3b0 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_D19__EPIT1_OUT               0x09c 0x3b0 0x000 0x6 0x0
+#define MX6Q_PAD_EIM_D20__EIM_DATA20              0x0a0 0x3b4 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_D20__ECSPI4_SS0              0x0a0 0x3b4 0x824 0x1 0x0
+#define MX6Q_PAD_EIM_D20__IPU1_DI0_PIN16          0x0a0 0x3b4 0x000 0x2 0x0
+#define MX6Q_PAD_EIM_D20__IPU2_CSI1_DATA15        0x0a0 0x3b4 0x8c4 0x3 0x0
+#define MX6Q_PAD_EIM_D20__UART1_RTS_B             0x0a0 0x3b4 0x91c 0x4 0x1
+#define MX6Q_PAD_EIM_D20__UART1_CTS_B             0x0a0 0x3b4 0x000 0x4 0x0
+#define MX6Q_PAD_EIM_D20__GPIO3_IO20              0x0a0 0x3b4 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_D20__EPIT2_OUT               0x0a0 0x3b4 0x000 0x6 0x0
+#define MX6Q_PAD_EIM_D21__EIM_DATA21              0x0a4 0x3b8 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_D21__ECSPI4_SCLK             0x0a4 0x3b8 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_D21__IPU1_DI0_PIN17          0x0a4 0x3b8 0x000 0x2 0x0
+#define MX6Q_PAD_EIM_D21__IPU2_CSI1_DATA11        0x0a4 0x3b8 0x8b4 0x3 0x0
+#define MX6Q_PAD_EIM_D21__USB_OTG_OC              0x0a4 0x3b8 0x944 0x4 0x0
+#define MX6Q_PAD_EIM_D21__GPIO3_IO21              0x0a4 0x3b8 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_D21__I2C1_SCL                0x0a4 0x3b8 0x898 0x6 0x0
+#define MX6Q_PAD_EIM_D21__SPDIF_IN                0x0a4 0x3b8 0x914 0x7 0x0
+#define MX6Q_PAD_EIM_D22__EIM_DATA22              0x0a8 0x3bc 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_D22__ECSPI4_MISO             0x0a8 0x3bc 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_D22__IPU1_DI0_PIN01          0x0a8 0x3bc 0x000 0x2 0x0
+#define MX6Q_PAD_EIM_D22__IPU2_CSI1_DATA10        0x0a8 0x3bc 0x8b0 0x3 0x0
+#define MX6Q_PAD_EIM_D22__USB_OTG_PWR             0x0a8 0x3bc 0x000 0x4 0x0
+#define MX6Q_PAD_EIM_D22__GPIO3_IO22              0x0a8 0x3bc 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_D22__SPDIF_OUT               0x0a8 0x3bc 0x000 0x6 0x0
+#define MX6Q_PAD_EIM_D23__EIM_DATA23              0x0ac 0x3c0 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_D23__IPU1_DI0_D0_CS          0x0ac 0x3c0 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_D23__UART3_CTS_B             0x0ac 0x3c0 0x000 0x2 0x0
+#define MX6Q_PAD_EIM_D23__UART3_RTS_B             0x0ac 0x3c0 0x92c 0x2 0x0
+#define MX6Q_PAD_EIM_D23__UART1_DCD_B             0x0ac 0x3c0 0x000 0x3 0x0
+#define MX6Q_PAD_EIM_D23__IPU2_CSI1_DATA_EN       0x0ac 0x3c0 0x8d8 0x4 0x0
+#define MX6Q_PAD_EIM_D23__GPIO3_IO23              0x0ac 0x3c0 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_D23__IPU1_DI1_PIN02          0x0ac 0x3c0 0x000 0x6 0x0
+#define MX6Q_PAD_EIM_D23__IPU1_DI1_PIN14          0x0ac 0x3c0 0x000 0x7 0x0
+#define MX6Q_PAD_EIM_EB3__EIM_EB3_B               0x0b0 0x3c4 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_EB3__ECSPI4_RDY              0x0b0 0x3c4 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_EB3__UART3_RTS_B             0x0b0 0x3c4 0x92c 0x2 0x1
+#define MX6Q_PAD_EIM_EB3__UART3_CTS_B             0x0b0 0x3c4 0x000 0x2 0x0
+#define MX6Q_PAD_EIM_EB3__UART1_RI_B              0x0b0 0x3c4 0x000 0x3 0x0
+#define MX6Q_PAD_EIM_EB3__IPU2_CSI1_HSYNC         0x0b0 0x3c4 0x8dc 0x4 0x0
+#define MX6Q_PAD_EIM_EB3__GPIO2_IO31              0x0b0 0x3c4 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_EB3__IPU1_DI1_PIN03          0x0b0 0x3c4 0x000 0x6 0x0
+#define MX6Q_PAD_EIM_EB3__SRC_BOOT_CFG31          0x0b0 0x3c4 0x000 0x7 0x0
+#define MX6Q_PAD_EIM_D24__EIM_DATA24              0x0b4 0x3c8 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_D24__ECSPI4_SS2              0x0b4 0x3c8 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_D24__UART3_TX_DATA           0x0b4 0x3c8 0x000 0x2 0x0
+#define MX6Q_PAD_EIM_D24__UART3_RX_DATA           0x0b4 0x3c8 0x930 0x2 0x0
+#define MX6Q_PAD_EIM_D24__ECSPI1_SS2              0x0b4 0x3c8 0x808 0x3 0x0
+#define MX6Q_PAD_EIM_D24__ECSPI2_SS2              0x0b4 0x3c8 0x000 0x4 0x0
+#define MX6Q_PAD_EIM_D24__GPIO3_IO24              0x0b4 0x3c8 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_D24__AUD5_RXFS               0x0b4 0x3c8 0x7d8 0x6 0x0
+#define MX6Q_PAD_EIM_D24__UART1_DTR_B             0x0b4 0x3c8 0x000 0x7 0x0
+#define MX6Q_PAD_EIM_D25__EIM_DATA25              0x0b8 0x3cc 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_D25__ECSPI4_SS3              0x0b8 0x3cc 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_D25__UART3_RX_DATA           0x0b8 0x3cc 0x930 0x2 0x1
+#define MX6Q_PAD_EIM_D25__UART3_TX_DATA           0x0b8 0x3cc 0x000 0x2 0x0
+#define MX6Q_PAD_EIM_D25__ECSPI1_SS3              0x0b8 0x3cc 0x80c 0x3 0x0
+#define MX6Q_PAD_EIM_D25__ECSPI2_SS3              0x0b8 0x3cc 0x000 0x4 0x0
+#define MX6Q_PAD_EIM_D25__GPIO3_IO25              0x0b8 0x3cc 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_D25__AUD5_RXC                0x0b8 0x3cc 0x7d4 0x6 0x0
+#define MX6Q_PAD_EIM_D25__UART1_DSR_B             0x0b8 0x3cc 0x000 0x7 0x0
+#define MX6Q_PAD_EIM_D26__EIM_DATA26              0x0bc 0x3d0 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_D26__IPU1_DI1_PIN11          0x0bc 0x3d0 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_D26__IPU1_CSI0_DATA01        0x0bc 0x3d0 0x000 0x2 0x0
+#define MX6Q_PAD_EIM_D26__IPU2_CSI1_DATA14        0x0bc 0x3d0 0x8c0 0x3 0x0
+#define MX6Q_PAD_EIM_D26__UART2_TX_DATA           0x0bc 0x3d0 0x000 0x4 0x0
+#define MX6Q_PAD_EIM_D26__UART2_RX_DATA           0x0bc 0x3d0 0x928 0x4 0x0
+#define MX6Q_PAD_EIM_D26__GPIO3_IO26              0x0bc 0x3d0 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_D26__IPU1_SISG2              0x0bc 0x3d0 0x000 0x6 0x0
+#define MX6Q_PAD_EIM_D26__IPU1_DISP1_DATA22       0x0bc 0x3d0 0x000 0x7 0x0
+#define MX6Q_PAD_EIM_D27__EIM_DATA27              0x0c0 0x3d4 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_D27__IPU1_DI1_PIN13          0x0c0 0x3d4 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_D27__IPU1_CSI0_DATA00        0x0c0 0x3d4 0x000 0x2 0x0
+#define MX6Q_PAD_EIM_D27__IPU2_CSI1_DATA13        0x0c0 0x3d4 0x8bc 0x3 0x0
+#define MX6Q_PAD_EIM_D27__UART2_RX_DATA           0x0c0 0x3d4 0x928 0x4 0x1
+#define MX6Q_PAD_EIM_D27__UART2_TX_DATA           0x0c0 0x3d4 0x000 0x4 0x0
+#define MX6Q_PAD_EIM_D27__GPIO3_IO27              0x0c0 0x3d4 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_D27__IPU1_SISG3              0x0c0 0x3d4 0x000 0x6 0x0
+#define MX6Q_PAD_EIM_D27__IPU1_DISP1_DATA23       0x0c0 0x3d4 0x000 0x7 0x0
+#define MX6Q_PAD_EIM_D28__EIM_DATA28              0x0c4 0x3d8 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_D28__I2C1_SDA                0x0c4 0x3d8 0x89c 0x1 0x0
+#define MX6Q_PAD_EIM_D28__ECSPI4_MOSI             0x0c4 0x3d8 0x000 0x2 0x0
+#define MX6Q_PAD_EIM_D28__IPU2_CSI1_DATA12        0x0c4 0x3d8 0x8b8 0x3 0x0
+#define MX6Q_PAD_EIM_D28__UART2_CTS_B             0x0c4 0x3d8 0x000 0x4 0x0
+#define MX6Q_PAD_EIM_D28__UART2_RTS_B             0x0c4 0x3d8 0x924 0x4 0x0
+#define MX6Q_PAD_EIM_D28__GPIO3_IO28              0x0c4 0x3d8 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_D28__IPU1_EXT_TRIG           0x0c4 0x3d8 0x000 0x6 0x0
+#define MX6Q_PAD_EIM_D28__IPU1_DI0_PIN13          0x0c4 0x3d8 0x000 0x7 0x0
+#define MX6Q_PAD_EIM_D29__EIM_DATA29              0x0c8 0x3dc 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_D29__IPU1_DI1_PIN15          0x0c8 0x3dc 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_D29__ECSPI4_SS0              0x0c8 0x3dc 0x824 0x2 0x1
+#define MX6Q_PAD_EIM_D29__UART2_RTS_B             0x0c8 0x3dc 0x924 0x4 0x1
+#define MX6Q_PAD_EIM_D29__UART2_CTS_B             0x0c8 0x3dc 0x000 0x4 0x0
+#define MX6Q_PAD_EIM_D29__GPIO3_IO29              0x0c8 0x3dc 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_D29__IPU2_CSI1_VSYNC         0x0c8 0x3dc 0x8e4 0x6 0x0
+#define MX6Q_PAD_EIM_D29__IPU1_DI0_PIN14          0x0c8 0x3dc 0x000 0x7 0x0
+#define MX6Q_PAD_EIM_D30__EIM_DATA30              0x0cc 0x3e0 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_D30__IPU1_DISP1_DATA21       0x0cc 0x3e0 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_D30__IPU1_DI0_PIN11          0x0cc 0x3e0 0x000 0x2 0x0
+#define MX6Q_PAD_EIM_D30__IPU1_CSI0_DATA03        0x0cc 0x3e0 0x000 0x3 0x0
+#define MX6Q_PAD_EIM_D30__UART3_CTS_B             0x0cc 0x3e0 0x000 0x4 0x0
+#define MX6Q_PAD_EIM_D30__UART3_RTS_B             0x0cc 0x3e0 0x92c 0x4 0x2
+#define MX6Q_PAD_EIM_D30__GPIO3_IO30              0x0cc 0x3e0 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_D30__USB_H1_OC               0x0cc 0x3e0 0x948 0x6 0x0
+#define MX6Q_PAD_EIM_D31__EIM_DATA31              0x0d0 0x3e4 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_D31__IPU1_DISP1_DATA20       0x0d0 0x3e4 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_D31__IPU1_DI0_PIN12          0x0d0 0x3e4 0x000 0x2 0x0
+#define MX6Q_PAD_EIM_D31__IPU1_CSI0_DATA02        0x0d0 0x3e4 0x000 0x3 0x0
+#define MX6Q_PAD_EIM_D31__UART3_RTS_B             0x0d0 0x3e4 0x92c 0x4 0x3
+#define MX6Q_PAD_EIM_D31__UART3_CTS_B             0x0d0 0x3e4 0x000 0x4 0x0
+#define MX6Q_PAD_EIM_D31__GPIO3_IO31              0x0d0 0x3e4 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_D31__USB_H1_PWR              0x0d0 0x3e4 0x000 0x6 0x0
+#define MX6Q_PAD_EIM_A24__EIM_ADDR24              0x0d4 0x3e8 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_A24__IPU1_DISP1_DATA19       0x0d4 0x3e8 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_A24__IPU2_CSI1_DATA19        0x0d4 0x3e8 0x8d4 0x2 0x1
+#define MX6Q_PAD_EIM_A24__IPU2_SISG2              0x0d4 0x3e8 0x000 0x3 0x0
+#define MX6Q_PAD_EIM_A24__IPU1_SISG2              0x0d4 0x3e8 0x000 0x4 0x0
+#define MX6Q_PAD_EIM_A24__GPIO5_IO04              0x0d4 0x3e8 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_A24__SRC_BOOT_CFG24          0x0d4 0x3e8 0x000 0x7 0x0
+#define MX6Q_PAD_EIM_A23__EIM_ADDR23              0x0d8 0x3ec 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_A23__IPU1_DISP1_DATA18       0x0d8 0x3ec 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_A23__IPU2_CSI1_DATA18        0x0d8 0x3ec 0x8d0 0x2 0x1
+#define MX6Q_PAD_EIM_A23__IPU2_SISG3              0x0d8 0x3ec 0x000 0x3 0x0
+#define MX6Q_PAD_EIM_A23__IPU1_SISG3              0x0d8 0x3ec 0x000 0x4 0x0
+#define MX6Q_PAD_EIM_A23__GPIO6_IO06              0x0d8 0x3ec 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_A23__SRC_BOOT_CFG23          0x0d8 0x3ec 0x000 0x7 0x0
+#define MX6Q_PAD_EIM_A22__EIM_ADDR22              0x0dc 0x3f0 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_A22__IPU1_DISP1_DATA17       0x0dc 0x3f0 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_A22__IPU2_CSI1_DATA17        0x0dc 0x3f0 0x8cc 0x2 0x1
+#define MX6Q_PAD_EIM_A22__GPIO2_IO16              0x0dc 0x3f0 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_A22__SRC_BOOT_CFG22          0x0dc 0x3f0 0x000 0x7 0x0
+#define MX6Q_PAD_EIM_A21__EIM_ADDR21              0x0e0 0x3f4 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_A21__IPU1_DISP1_DATA16       0x0e0 0x3f4 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_A21__IPU2_CSI1_DATA16        0x0e0 0x3f4 0x8c8 0x2 0x1
+#define MX6Q_PAD_EIM_A21__GPIO2_IO17              0x0e0 0x3f4 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_A21__SRC_BOOT_CFG21          0x0e0 0x3f4 0x000 0x7 0x0
+#define MX6Q_PAD_EIM_A20__EIM_ADDR20              0x0e4 0x3f8 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_A20__IPU1_DISP1_DATA15       0x0e4 0x3f8 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_A20__IPU2_CSI1_DATA15        0x0e4 0x3f8 0x8c4 0x2 0x1
+#define MX6Q_PAD_EIM_A20__GPIO2_IO18              0x0e4 0x3f8 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_A20__SRC_BOOT_CFG20          0x0e4 0x3f8 0x000 0x7 0x0
+#define MX6Q_PAD_EIM_A19__EIM_ADDR19              0x0e8 0x3fc 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_A19__IPU1_DISP1_DATA14       0x0e8 0x3fc 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_A19__IPU2_CSI1_DATA14        0x0e8 0x3fc 0x8c0 0x2 0x1
+#define MX6Q_PAD_EIM_A19__GPIO2_IO19              0x0e8 0x3fc 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_A19__SRC_BOOT_CFG19          0x0e8 0x3fc 0x000 0x7 0x0
+#define MX6Q_PAD_EIM_A18__EIM_ADDR18              0x0ec 0x400 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_A18__IPU1_DISP1_DATA13       0x0ec 0x400 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_A18__IPU2_CSI1_DATA13        0x0ec 0x400 0x8bc 0x2 0x1
+#define MX6Q_PAD_EIM_A18__GPIO2_IO20              0x0ec 0x400 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_A18__SRC_BOOT_CFG18          0x0ec 0x400 0x000 0x7 0x0
+#define MX6Q_PAD_EIM_A17__EIM_ADDR17              0x0f0 0x404 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_A17__IPU1_DISP1_DATA12       0x0f0 0x404 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_A17__IPU2_CSI1_DATA12        0x0f0 0x404 0x8b8 0x2 0x1
+#define MX6Q_PAD_EIM_A17__GPIO2_IO21              0x0f0 0x404 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_A17__SRC_BOOT_CFG17          0x0f0 0x404 0x000 0x7 0x0
+#define MX6Q_PAD_EIM_A16__EIM_ADDR16              0x0f4 0x408 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_A16__IPU1_DI1_DISP_CLK       0x0f4 0x408 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_A16__IPU2_CSI1_PIXCLK        0x0f4 0x408 0x8e0 0x2 0x1
+#define MX6Q_PAD_EIM_A16__GPIO2_IO22              0x0f4 0x408 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_A16__SRC_BOOT_CFG16          0x0f4 0x408 0x000 0x7 0x0
+#define MX6Q_PAD_EIM_CS0__EIM_CS0_B               0x0f8 0x40c 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_CS0__IPU1_DI1_PIN05          0x0f8 0x40c 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_CS0__ECSPI2_SCLK             0x0f8 0x40c 0x810 0x2 0x0
+#define MX6Q_PAD_EIM_CS0__GPIO2_IO23              0x0f8 0x40c 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_CS1__EIM_CS1_B               0x0fc 0x410 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_CS1__IPU1_DI1_PIN06          0x0fc 0x410 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_CS1__ECSPI2_MOSI             0x0fc 0x410 0x818 0x2 0x0
+#define MX6Q_PAD_EIM_CS1__GPIO2_IO24              0x0fc 0x410 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_OE__EIM_OE_B                 0x100 0x414 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_OE__IPU1_DI1_PIN07           0x100 0x414 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_OE__ECSPI2_MISO              0x100 0x414 0x814 0x2 0x0
+#define MX6Q_PAD_EIM_OE__GPIO2_IO25               0x100 0x414 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_RW__EIM_RW                   0x104 0x418 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_RW__IPU1_DI1_PIN08           0x104 0x418 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_RW__ECSPI2_SS0               0x104 0x418 0x81c 0x2 0x0
+#define MX6Q_PAD_EIM_RW__GPIO2_IO26               0x104 0x418 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_RW__SRC_BOOT_CFG29           0x104 0x418 0x000 0x7 0x0
+#define MX6Q_PAD_EIM_LBA__EIM_LBA_B               0x108 0x41c 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_LBA__IPU1_DI1_PIN17          0x108 0x41c 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_LBA__ECSPI2_SS1              0x108 0x41c 0x820 0x2 0x0
+#define MX6Q_PAD_EIM_LBA__GPIO2_IO27              0x108 0x41c 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_LBA__SRC_BOOT_CFG26          0x108 0x41c 0x000 0x7 0x0
+#define MX6Q_PAD_EIM_EB0__EIM_EB0_B               0x10c 0x420 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_EB0__IPU1_DISP1_DATA11       0x10c 0x420 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_EB0__IPU2_CSI1_DATA11        0x10c 0x420 0x8b4 0x2 0x1
+#define MX6Q_PAD_EIM_EB0__CCM_PMIC_READY          0x10c 0x420 0x7f0 0x4 0x0
+#define MX6Q_PAD_EIM_EB0__GPIO2_IO28              0x10c 0x420 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_EB0__SRC_BOOT_CFG27          0x10c 0x420 0x000 0x7 0x0
+#define MX6Q_PAD_EIM_EB1__EIM_EB1_B               0x110 0x424 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_EB1__IPU1_DISP1_DATA10       0x110 0x424 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_EB1__IPU2_CSI1_DATA10        0x110 0x424 0x8b0 0x2 0x1
+#define MX6Q_PAD_EIM_EB1__GPIO2_IO29              0x110 0x424 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_EB1__SRC_BOOT_CFG28          0x110 0x424 0x000 0x7 0x0
+#define MX6Q_PAD_EIM_DA0__EIM_AD00                0x114 0x428 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_DA0__IPU1_DISP1_DATA09       0x114 0x428 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_DA0__IPU2_CSI1_DATA09        0x114 0x428 0x000 0x2 0x0
+#define MX6Q_PAD_EIM_DA0__GPIO3_IO00              0x114 0x428 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_DA0__SRC_BOOT_CFG00          0x114 0x428 0x000 0x7 0x0
+#define MX6Q_PAD_EIM_DA1__EIM_AD01                0x118 0x42c 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_DA1__IPU1_DISP1_DATA08       0x118 0x42c 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_DA1__IPU2_CSI1_DATA08        0x118 0x42c 0x000 0x2 0x0
+#define MX6Q_PAD_EIM_DA1__GPIO3_IO01              0x118 0x42c 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_DA1__SRC_BOOT_CFG01          0x118 0x42c 0x000 0x7 0x0
+#define MX6Q_PAD_EIM_DA2__EIM_AD02                0x11c 0x430 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_DA2__IPU1_DISP1_DATA07       0x11c 0x430 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_DA2__IPU2_CSI1_DATA07        0x11c 0x430 0x000 0x2 0x0
+#define MX6Q_PAD_EIM_DA2__GPIO3_IO02              0x11c 0x430 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_DA2__SRC_BOOT_CFG02          0x11c 0x430 0x000 0x7 0x0
+#define MX6Q_PAD_EIM_DA3__EIM_AD03                0x120 0x434 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_DA3__IPU1_DISP1_DATA06       0x120 0x434 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_DA3__IPU2_CSI1_DATA06        0x120 0x434 0x000 0x2 0x0
+#define MX6Q_PAD_EIM_DA3__GPIO3_IO03              0x120 0x434 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_DA3__SRC_BOOT_CFG03          0x120 0x434 0x000 0x7 0x0
+#define MX6Q_PAD_EIM_DA4__EIM_AD04                0x124 0x438 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_DA4__IPU1_DISP1_DATA05       0x124 0x438 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_DA4__IPU2_CSI1_DATA05        0x124 0x438 0x000 0x2 0x0
+#define MX6Q_PAD_EIM_DA4__GPIO3_IO04              0x124 0x438 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_DA4__SRC_BOOT_CFG04          0x124 0x438 0x000 0x7 0x0
+#define MX6Q_PAD_EIM_DA5__EIM_AD05                0x128 0x43c 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_DA5__IPU1_DISP1_DATA04       0x128 0x43c 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_DA5__IPU2_CSI1_DATA04        0x128 0x43c 0x000 0x2 0x0
+#define MX6Q_PAD_EIM_DA5__GPIO3_IO05              0x128 0x43c 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_DA5__SRC_BOOT_CFG05          0x128 0x43c 0x000 0x7 0x0
+#define MX6Q_PAD_EIM_DA6__EIM_AD06                0x12c 0x440 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_DA6__IPU1_DISP1_DATA03       0x12c 0x440 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_DA6__IPU2_CSI1_DATA03        0x12c 0x440 0x000 0x2 0x0
+#define MX6Q_PAD_EIM_DA6__GPIO3_IO06              0x12c 0x440 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_DA6__SRC_BOOT_CFG06          0x12c 0x440 0x000 0x7 0x0
+#define MX6Q_PAD_EIM_DA7__EIM_AD07                0x130 0x444 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_DA7__IPU1_DISP1_DATA02       0x130 0x444 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_DA7__IPU2_CSI1_DATA02        0x130 0x444 0x000 0x2 0x0
+#define MX6Q_PAD_EIM_DA7__GPIO3_IO07              0x130 0x444 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_DA7__SRC_BOOT_CFG07          0x130 0x444 0x000 0x7 0x0
+#define MX6Q_PAD_EIM_DA8__EIM_AD08                0x134 0x448 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_DA8__IPU1_DISP1_DATA01       0x134 0x448 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_DA8__IPU2_CSI1_DATA01        0x134 0x448 0x000 0x2 0x0
+#define MX6Q_PAD_EIM_DA8__GPIO3_IO08              0x134 0x448 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_DA8__SRC_BOOT_CFG08          0x134 0x448 0x000 0x7 0x0
+#define MX6Q_PAD_EIM_DA9__EIM_AD09                0x138 0x44c 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_DA9__IPU1_DISP1_DATA00       0x138 0x44c 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_DA9__IPU2_CSI1_DATA00        0x138 0x44c 0x000 0x2 0x0
+#define MX6Q_PAD_EIM_DA9__GPIO3_IO09              0x138 0x44c 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_DA9__SRC_BOOT_CFG09          0x138 0x44c 0x000 0x7 0x0
+#define MX6Q_PAD_EIM_DA10__EIM_AD10               0x13c 0x450 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_DA10__IPU1_DI1_PIN15         0x13c 0x450 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_DA10__IPU2_CSI1_DATA_EN      0x13c 0x450 0x8d8 0x2 0x1
+#define MX6Q_PAD_EIM_DA10__GPIO3_IO10             0x13c 0x450 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_DA10__SRC_BOOT_CFG10         0x13c 0x450 0x000 0x7 0x0
+#define MX6Q_PAD_EIM_DA11__EIM_AD11               0x140 0x454 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_DA11__IPU1_DI1_PIN02         0x140 0x454 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_DA11__IPU2_CSI1_HSYNC        0x140 0x454 0x8dc 0x2 0x1
+#define MX6Q_PAD_EIM_DA11__GPIO3_IO11             0x140 0x454 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_DA11__SRC_BOOT_CFG11         0x140 0x454 0x000 0x7 0x0
+#define MX6Q_PAD_EIM_DA12__EIM_AD12               0x144 0x458 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_DA12__IPU1_DI1_PIN03         0x144 0x458 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_DA12__IPU2_CSI1_VSYNC        0x144 0x458 0x8e4 0x2 0x1
+#define MX6Q_PAD_EIM_DA12__GPIO3_IO12             0x144 0x458 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_DA12__SRC_BOOT_CFG12         0x144 0x458 0x000 0x7 0x0
+#define MX6Q_PAD_EIM_DA13__EIM_AD13               0x148 0x45c 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_DA13__IPU1_DI1_D0_CS         0x148 0x45c 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_DA13__GPIO3_IO13             0x148 0x45c 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_DA13__SRC_BOOT_CFG13         0x148 0x45c 0x000 0x7 0x0
+#define MX6Q_PAD_EIM_DA14__EIM_AD14               0x14c 0x460 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_DA14__IPU1_DI1_D1_CS         0x14c 0x460 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_DA14__GPIO3_IO14             0x14c 0x460 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_DA14__SRC_BOOT_CFG14         0x14c 0x460 0x000 0x7 0x0
+#define MX6Q_PAD_EIM_DA15__EIM_AD15               0x150 0x464 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_DA15__IPU1_DI1_PIN01         0x150 0x464 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_DA15__IPU1_DI1_PIN04         0x150 0x464 0x000 0x2 0x0
+#define MX6Q_PAD_EIM_DA15__GPIO3_IO15             0x150 0x464 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_DA15__SRC_BOOT_CFG15         0x150 0x464 0x000 0x7 0x0
+#define MX6Q_PAD_EIM_WAIT__EIM_WAIT_B             0x154 0x468 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_WAIT__EIM_DTACK_B            0x154 0x468 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_WAIT__GPIO5_IO00             0x154 0x468 0x000 0x5 0x0
+#define MX6Q_PAD_EIM_WAIT__SRC_BOOT_CFG25         0x154 0x468 0x000 0x7 0x0
+#define MX6Q_PAD_EIM_BCLK__EIM_BCLK               0x158 0x46c 0x000 0x0 0x0
+#define MX6Q_PAD_EIM_BCLK__IPU1_DI1_PIN16         0x158 0x46c 0x000 0x1 0x0
+#define MX6Q_PAD_EIM_BCLK__GPIO6_IO31             0x158 0x46c 0x000 0x5 0x0
+#define MX6Q_PAD_DI0_DISP_CLK__IPU1_DI0_DISP_CLK  0x15c 0x470 0x000 0x0 0x0
+#define MX6Q_PAD_DI0_DISP_CLK__IPU2_DI0_DISP_CLK  0x15c 0x470 0x000 0x1 0x0
+#define MX6Q_PAD_DI0_DISP_CLK__GPIO4_IO16         0x15c 0x470 0x000 0x5 0x0
+#define MX6Q_PAD_DI0_PIN15__IPU1_DI0_PIN15        0x160 0x474 0x000 0x0 0x0
+#define MX6Q_PAD_DI0_PIN15__IPU2_DI0_PIN15        0x160 0x474 0x000 0x1 0x0
+#define MX6Q_PAD_DI0_PIN15__AUD6_TXC              0x160 0x474 0x000 0x2 0x0
+#define MX6Q_PAD_DI0_PIN15__GPIO4_IO17            0x160 0x474 0x000 0x5 0x0
+#define MX6Q_PAD_DI0_PIN2__IPU1_DI0_PIN02         0x164 0x478 0x000 0x0 0x0
+#define MX6Q_PAD_DI0_PIN2__IPU2_DI0_PIN02         0x164 0x478 0x000 0x1 0x0
+#define MX6Q_PAD_DI0_PIN2__AUD6_TXD               0x164 0x478 0x000 0x2 0x0
+#define MX6Q_PAD_DI0_PIN2__GPIO4_IO18             0x164 0x478 0x000 0x5 0x0
+#define MX6Q_PAD_DI0_PIN3__IPU1_DI0_PIN03         0x168 0x47c 0x000 0x0 0x0
+#define MX6Q_PAD_DI0_PIN3__IPU2_DI0_PIN03         0x168 0x47c 0x000 0x1 0x0
+#define MX6Q_PAD_DI0_PIN3__AUD6_TXFS              0x168 0x47c 0x000 0x2 0x0
+#define MX6Q_PAD_DI0_PIN3__GPIO4_IO19             0x168 0x47c 0x000 0x5 0x0
+#define MX6Q_PAD_DI0_PIN4__IPU1_DI0_PIN04         0x16c 0x480 0x000 0x0 0x0
+#define MX6Q_PAD_DI0_PIN4__IPU2_DI0_PIN04         0x16c 0x480 0x000 0x1 0x0
+#define MX6Q_PAD_DI0_PIN4__AUD6_RXD               0x16c 0x480 0x000 0x2 0x0
+#define MX6Q_PAD_DI0_PIN4__SD1_WP                 0x16c 0x480 0x94c 0x3 0x0
+#define MX6Q_PAD_DI0_PIN4__GPIO4_IO20             0x16c 0x480 0x000 0x5 0x0
+#define MX6Q_PAD_DISP0_DAT0__IPU1_DISP0_DATA00    0x170 0x484 0x000 0x0 0x0
+#define MX6Q_PAD_DISP0_DAT0__IPU2_DISP0_DATA00    0x170 0x484 0x000 0x1 0x0
+#define MX6Q_PAD_DISP0_DAT0__ECSPI3_SCLK          0x170 0x484 0x000 0x2 0x0
+#define MX6Q_PAD_DISP0_DAT0__GPIO4_IO21           0x170 0x484 0x000 0x5 0x0
+#define MX6Q_PAD_DISP0_DAT1__IPU1_DISP0_DATA01    0x174 0x488 0x000 0x0 0x0
+#define MX6Q_PAD_DISP0_DAT1__IPU2_DISP0_DATA01    0x174 0x488 0x000 0x1 0x0
+#define MX6Q_PAD_DISP0_DAT1__ECSPI3_MOSI          0x174 0x488 0x000 0x2 0x0
+#define MX6Q_PAD_DISP0_DAT1__GPIO4_IO22           0x174 0x488 0x000 0x5 0x0
+#define MX6Q_PAD_DISP0_DAT2__IPU1_DISP0_DATA02    0x178 0x48c 0x000 0x0 0x0
+#define MX6Q_PAD_DISP0_DAT2__IPU2_DISP0_DATA02    0x178 0x48c 0x000 0x1 0x0
+#define MX6Q_PAD_DISP0_DAT2__ECSPI3_MISO          0x178 0x48c 0x000 0x2 0x0
+#define MX6Q_PAD_DISP0_DAT2__GPIO4_IO23           0x178 0x48c 0x000 0x5 0x0
+#define MX6Q_PAD_DISP0_DAT3__IPU1_DISP0_DATA03    0x17c 0x490 0x000 0x0 0x0
+#define MX6Q_PAD_DISP0_DAT3__IPU2_DISP0_DATA03    0x17c 0x490 0x000 0x1 0x0
+#define MX6Q_PAD_DISP0_DAT3__ECSPI3_SS0           0x17c 0x490 0x000 0x2 0x0
+#define MX6Q_PAD_DISP0_DAT3__GPIO4_IO24           0x17c 0x490 0x000 0x5 0x0
+#define MX6Q_PAD_DISP0_DAT4__IPU1_DISP0_DATA04    0x180 0x494 0x000 0x0 0x0
+#define MX6Q_PAD_DISP0_DAT4__IPU2_DISP0_DATA04    0x180 0x494 0x000 0x1 0x0
+#define MX6Q_PAD_DISP0_DAT4__ECSPI3_SS1           0x180 0x494 0x000 0x2 0x0
+#define MX6Q_PAD_DISP0_DAT4__GPIO4_IO25           0x180 0x494 0x000 0x5 0x0
+#define MX6Q_PAD_DISP0_DAT5__IPU1_DISP0_DATA05    0x184 0x498 0x000 0x0 0x0
+#define MX6Q_PAD_DISP0_DAT5__IPU2_DISP0_DATA05    0x184 0x498 0x000 0x1 0x0
+#define MX6Q_PAD_DISP0_DAT5__ECSPI3_SS2           0x184 0x498 0x000 0x2 0x0
+#define MX6Q_PAD_DISP0_DAT5__AUD6_RXFS            0x184 0x498 0x000 0x3 0x0
+#define MX6Q_PAD_DISP0_DAT5__GPIO4_IO26           0x184 0x498 0x000 0x5 0x0
+#define MX6Q_PAD_DISP0_DAT6__IPU1_DISP0_DATA06    0x188 0x49c 0x000 0x0 0x0
+#define MX6Q_PAD_DISP0_DAT6__IPU2_DISP0_DATA06    0x188 0x49c 0x000 0x1 0x0
+#define MX6Q_PAD_DISP0_DAT6__ECSPI3_SS3           0x188 0x49c 0x000 0x2 0x0
+#define MX6Q_PAD_DISP0_DAT6__AUD6_RXC             0x188 0x49c 0x000 0x3 0x0
+#define MX6Q_PAD_DISP0_DAT6__GPIO4_IO27           0x188 0x49c 0x000 0x5 0x0
+#define MX6Q_PAD_DISP0_DAT7__IPU1_DISP0_DATA07    0x18c 0x4a0 0x000 0x0 0x0
+#define MX6Q_PAD_DISP0_DAT7__IPU2_DISP0_DATA07    0x18c 0x4a0 0x000 0x1 0x0
+#define MX6Q_PAD_DISP0_DAT7__ECSPI3_RDY           0x18c 0x4a0 0x000 0x2 0x0
+#define MX6Q_PAD_DISP0_DAT7__GPIO4_IO28           0x18c 0x4a0 0x000 0x5 0x0
+#define MX6Q_PAD_DISP0_DAT8__IPU1_DISP0_DATA08    0x190 0x4a4 0x000 0x0 0x0
+#define MX6Q_PAD_DISP0_DAT8__IPU2_DISP0_DATA08    0x190 0x4a4 0x000 0x1 0x0
+#define MX6Q_PAD_DISP0_DAT8__PWM1_OUT             0x190 0x4a4 0x000 0x2 0x0
+#define MX6Q_PAD_DISP0_DAT8__WDOG1_B              0x190 0x4a4 0x000 0x3 0x0
+#define MX6Q_PAD_DISP0_DAT8__GPIO4_IO29           0x190 0x4a4 0x000 0x5 0x0
+#define MX6Q_PAD_DISP0_DAT9__IPU1_DISP0_DATA09    0x194 0x4a8 0x000 0x0 0x0
+#define MX6Q_PAD_DISP0_DAT9__IPU2_DISP0_DATA09    0x194 0x4a8 0x000 0x1 0x0
+#define MX6Q_PAD_DISP0_DAT9__PWM2_OUT             0x194 0x4a8 0x000 0x2 0x0
+#define MX6Q_PAD_DISP0_DAT9__WDOG2_B              0x194 0x4a8 0x000 0x3 0x0
+#define MX6Q_PAD_DISP0_DAT9__GPIO4_IO30           0x194 0x4a8 0x000 0x5 0x0
+#define MX6Q_PAD_DISP0_DAT10__IPU1_DISP0_DATA10   0x198 0x4ac 0x000 0x0 0x0
+#define MX6Q_PAD_DISP0_DAT10__IPU2_DISP0_DATA10   0x198 0x4ac 0x000 0x1 0x0
+#define MX6Q_PAD_DISP0_DAT10__GPIO4_IO31          0x198 0x4ac 0x000 0x5 0x0
+#define MX6Q_PAD_DISP0_DAT11__IPU1_DISP0_DATA11   0x19c 0x4b0 0x000 0x0 0x0
+#define MX6Q_PAD_DISP0_DAT11__IPU2_DISP0_DATA11   0x19c 0x4b0 0x000 0x1 0x0
+#define MX6Q_PAD_DISP0_DAT11__GPIO5_IO05          0x19c 0x4b0 0x000 0x5 0x0
+#define MX6Q_PAD_DISP0_DAT12__IPU1_DISP0_DATA12   0x1a0 0x4b4 0x000 0x0 0x0
+#define MX6Q_PAD_DISP0_DAT12__IPU2_DISP0_DATA12   0x1a0 0x4b4 0x000 0x1 0x0
+#define MX6Q_PAD_DISP0_DAT12__GPIO5_IO06          0x1a0 0x4b4 0x000 0x5 0x0
+#define MX6Q_PAD_DISP0_DAT13__IPU1_DISP0_DATA13   0x1a4 0x4b8 0x000 0x0 0x0
+#define MX6Q_PAD_DISP0_DAT13__IPU2_DISP0_DATA13   0x1a4 0x4b8 0x000 0x1 0x0
+#define MX6Q_PAD_DISP0_DAT13__AUD5_RXFS           0x1a4 0x4b8 0x7d8 0x3 0x1
+#define MX6Q_PAD_DISP0_DAT13__GPIO5_IO07          0x1a4 0x4b8 0x000 0x5 0x0
+#define MX6Q_PAD_DISP0_DAT14__IPU1_DISP0_DATA14   0x1a8 0x4bc 0x000 0x0 0x0
+#define MX6Q_PAD_DISP0_DAT14__IPU2_DISP0_DATA14   0x1a8 0x4bc 0x000 0x1 0x0
+#define MX6Q_PAD_DISP0_DAT14__AUD5_RXC            0x1a8 0x4bc 0x7d4 0x3 0x1
+#define MX6Q_PAD_DISP0_DAT14__GPIO5_IO08          0x1a8 0x4bc 0x000 0x5 0x0
+#define MX6Q_PAD_DISP0_DAT15__IPU1_DISP0_DATA15   0x1ac 0x4c0 0x000 0x0 0x0
+#define MX6Q_PAD_DISP0_DAT15__IPU2_DISP0_DATA15   0x1ac 0x4c0 0x000 0x1 0x0
+#define MX6Q_PAD_DISP0_DAT15__ECSPI1_SS1          0x1ac 0x4c0 0x804 0x2 0x1
+#define MX6Q_PAD_DISP0_DAT15__ECSPI2_SS1          0x1ac 0x4c0 0x820 0x3 0x1
+#define MX6Q_PAD_DISP0_DAT15__GPIO5_IO09          0x1ac 0x4c0 0x000 0x5 0x0
+#define MX6Q_PAD_DISP0_DAT16__IPU1_DISP0_DATA16   0x1b0 0x4c4 0x000 0x0 0x0
+#define MX6Q_PAD_DISP0_DAT16__IPU2_DISP0_DATA16   0x1b0 0x4c4 0x000 0x1 0x0
+#define MX6Q_PAD_DISP0_DAT16__ECSPI2_MOSI         0x1b0 0x4c4 0x818 0x2 0x1
+#define MX6Q_PAD_DISP0_DAT16__AUD5_TXC            0x1b0 0x4c4 0x7dc 0x3 0x0
+#define MX6Q_PAD_DISP0_DAT16__SDMA_EXT_EVENT0     0x1b0 0x4c4 0x90c 0x4 0x0
+#define MX6Q_PAD_DISP0_DAT16__GPIO5_IO10          0x1b0 0x4c4 0x000 0x5 0x0
+#define MX6Q_PAD_DISP0_DAT17__IPU1_DISP0_DATA17   0x1b4 0x4c8 0x000 0x0 0x0
+#define MX6Q_PAD_DISP0_DAT17__IPU2_DISP0_DATA17   0x1b4 0x4c8 0x000 0x1 0x0
+#define MX6Q_PAD_DISP0_DAT17__ECSPI2_MISO         0x1b4 0x4c8 0x814 0x2 0x1
+#define MX6Q_PAD_DISP0_DAT17__AUD5_TXD            0x1b4 0x4c8 0x7d0 0x3 0x0
+#define MX6Q_PAD_DISP0_DAT17__SDMA_EXT_EVENT1     0x1b4 0x4c8 0x910 0x4 0x0
+#define MX6Q_PAD_DISP0_DAT17__GPIO5_IO11          0x1b4 0x4c8 0x000 0x5 0x0
+#define MX6Q_PAD_DISP0_DAT18__IPU1_DISP0_DATA18   0x1b8 0x4cc 0x000 0x0 0x0
+#define MX6Q_PAD_DISP0_DAT18__IPU2_DISP0_DATA18   0x1b8 0x4cc 0x000 0x1 0x0
+#define MX6Q_PAD_DISP0_DAT18__ECSPI2_SS0          0x1b8 0x4cc 0x81c 0x2 0x1
+#define MX6Q_PAD_DISP0_DAT18__AUD5_TXFS           0x1b8 0x4cc 0x7e0 0x3 0x0
+#define MX6Q_PAD_DISP0_DAT18__AUD4_RXFS           0x1b8 0x4cc 0x7c0 0x4 0x0
+#define MX6Q_PAD_DISP0_DAT18__GPIO5_IO12          0x1b8 0x4cc 0x000 0x5 0x0
+#define MX6Q_PAD_DISP0_DAT18__EIM_CS2_B           0x1b8 0x4cc 0x000 0x7 0x0
+#define MX6Q_PAD_DISP0_DAT19__IPU1_DISP0_DATA19   0x1bc 0x4d0 0x000 0x0 0x0
+#define MX6Q_PAD_DISP0_DAT19__IPU2_DISP0_DATA19   0x1bc 0x4d0 0x000 0x1 0x0
+#define MX6Q_PAD_DISP0_DAT19__ECSPI2_SCLK         0x1bc 0x4d0 0x810 0x2 0x1
+#define MX6Q_PAD_DISP0_DAT19__AUD5_RXD            0x1bc 0x4d0 0x7cc 0x3 0x0
+#define MX6Q_PAD_DISP0_DAT19__AUD4_RXC            0x1bc 0x4d0 0x7bc 0x4 0x0
+#define MX6Q_PAD_DISP0_DAT19__GPIO5_IO13          0x1bc 0x4d0 0x000 0x5 0x0
+#define MX6Q_PAD_DISP0_DAT19__EIM_CS3_B           0x1bc 0x4d0 0x000 0x7 0x0
+#define MX6Q_PAD_DISP0_DAT20__IPU1_DISP0_DATA20   0x1c0 0x4d4 0x000 0x0 0x0
+#define MX6Q_PAD_DISP0_DAT20__IPU2_DISP0_DATA20   0x1c0 0x4d4 0x000 0x1 0x0
+#define MX6Q_PAD_DISP0_DAT20__ECSPI1_SCLK         0x1c0 0x4d4 0x7f4 0x2 0x1
+#define MX6Q_PAD_DISP0_DAT20__AUD4_TXC            0x1c0 0x4d4 0x7c4 0x3 0x0
+#define MX6Q_PAD_DISP0_DAT20__GPIO5_IO14          0x1c0 0x4d4 0x000 0x5 0x0
+#define MX6Q_PAD_DISP0_DAT21__IPU1_DISP0_DATA21   0x1c4 0x4d8 0x000 0x0 0x0
+#define MX6Q_PAD_DISP0_DAT21__IPU2_DISP0_DATA21   0x1c4 0x4d8 0x000 0x1 0x0
+#define MX6Q_PAD_DISP0_DAT21__ECSPI1_MOSI         0x1c4 0x4d8 0x7fc 0x2 0x1
+#define MX6Q_PAD_DISP0_DAT21__AUD4_TXD            0x1c4 0x4d8 0x7b8 0x3 0x1
+#define MX6Q_PAD_DISP0_DAT21__GPIO5_IO15          0x1c4 0x4d8 0x000 0x5 0x0
+#define MX6Q_PAD_DISP0_DAT22__IPU1_DISP0_DATA22   0x1c8 0x4dc 0x000 0x0 0x0
+#define MX6Q_PAD_DISP0_DAT22__IPU2_DISP0_DATA22   0x1c8 0x4dc 0x000 0x1 0x0
+#define MX6Q_PAD_DISP0_DAT22__ECSPI1_MISO         0x1c8 0x4dc 0x7f8 0x2 0x1
+#define MX6Q_PAD_DISP0_DAT22__AUD4_TXFS           0x1c8 0x4dc 0x7c8 0x3 0x1
+#define MX6Q_PAD_DISP0_DAT22__GPIO5_IO16          0x1c8 0x4dc 0x000 0x5 0x0
+#define MX6Q_PAD_DISP0_DAT23__IPU1_DISP0_DATA23   0x1cc 0x4e0 0x000 0x0 0x0
+#define MX6Q_PAD_DISP0_DAT23__IPU2_DISP0_DATA23   0x1cc 0x4e0 0x000 0x1 0x0
+#define MX6Q_PAD_DISP0_DAT23__ECSPI1_SS0          0x1cc 0x4e0 0x800 0x2 0x1
+#define MX6Q_PAD_DISP0_DAT23__AUD4_RXD            0x1cc 0x4e0 0x7b4 0x3 0x1
+#define MX6Q_PAD_DISP0_DAT23__GPIO5_IO17          0x1cc 0x4e0 0x000 0x5 0x0
+#define MX6Q_PAD_ENET_MDIO__ENET_MDIO             0x1d0 0x4e4 0x840 0x1 0x0
+#define MX6Q_PAD_ENET_MDIO__ESAI_RX_CLK           0x1d0 0x4e4 0x86c 0x2 0x0
+#define MX6Q_PAD_ENET_MDIO__ENET_1588_EVENT1_OUT  0x1d0 0x4e4 0x000 0x4 0x0
+#define MX6Q_PAD_ENET_MDIO__GPIO1_IO22            0x1d0 0x4e4 0x000 0x5 0x0
+#define MX6Q_PAD_ENET_MDIO__SPDIF_LOCK            0x1d0 0x4e4 0x000 0x6 0x0
+#define MX6Q_PAD_ENET_REF_CLK__ENET_TX_CLK        0x1d4 0x4e8 0x000 0x1 0x0
+#define MX6Q_PAD_ENET_REF_CLK__ESAI_RX_FS         0x1d4 0x4e8 0x85c 0x2 0x0
+#define MX6Q_PAD_ENET_REF_CLK__GPIO1_IO23         0x1d4 0x4e8 0x000 0x5 0x0
+#define MX6Q_PAD_ENET_REF_CLK__SPDIF_SR_CLK       0x1d4 0x4e8 0x000 0x6 0x0
+#define MX6Q_PAD_ENET_RX_ER__USB_OTG_ID           0x1d8 0x4ec 0x000 0x0 0x0
+#define MX6Q_PAD_ENET_RX_ER__ENET_RX_ER           0x1d8 0x4ec 0x000 0x1 0x0
+#define MX6Q_PAD_ENET_RX_ER__ESAI_RX_HF_CLK       0x1d8 0x4ec 0x864 0x2 0x0
+#define MX6Q_PAD_ENET_RX_ER__SPDIF_IN             0x1d8 0x4ec 0x914 0x3 0x1
+#define MX6Q_PAD_ENET_RX_ER__ENET_1588_EVENT2_OUT 0x1d8 0x4ec 0x000 0x4 0x0
+#define MX6Q_PAD_ENET_RX_ER__GPIO1_IO24           0x1d8 0x4ec 0x000 0x5 0x0
+#define MX6Q_PAD_ENET_CRS_DV__ENET_RX_EN          0x1dc 0x4f0 0x858 0x1 0x1
+#define MX6Q_PAD_ENET_CRS_DV__ESAI_TX_CLK         0x1dc 0x4f0 0x870 0x2 0x0
+#define MX6Q_PAD_ENET_CRS_DV__SPDIF_EXT_CLK       0x1dc 0x4f0 0x918 0x3 0x1
+#define MX6Q_PAD_ENET_CRS_DV__GPIO1_IO25          0x1dc 0x4f0 0x000 0x5 0x0
+#define MX6Q_PAD_ENET_RXD1__MLB_SIG               0x1e0 0x4f4 0x908 0x0 0x0
+#define MX6Q_PAD_ENET_RXD1__ENET_RX_DATA1         0x1e0 0x4f4 0x84c 0x1 0x1
+#define MX6Q_PAD_ENET_RXD1__ESAI_TX_FS            0x1e0 0x4f4 0x860 0x2 0x0
+#define MX6Q_PAD_ENET_RXD1__ENET_1588_EVENT3_OUT  0x1e0 0x4f4 0x000 0x4 0x0
+#define MX6Q_PAD_ENET_RXD1__GPIO1_IO26            0x1e0 0x4f4 0x000 0x5 0x0
+#define MX6Q_PAD_ENET_RXD0__ENET_RX_DATA0         0x1e4 0x4f8 0x848 0x1 0x1
+#define MX6Q_PAD_ENET_RXD0__ESAI_TX_HF_CLK        0x1e4 0x4f8 0x868 0x2 0x0
+#define MX6Q_PAD_ENET_RXD0__SPDIF_OUT             0x1e4 0x4f8 0x000 0x3 0x0
+#define MX6Q_PAD_ENET_RXD0__GPIO1_IO27            0x1e4 0x4f8 0x000 0x5 0x0
+#define MX6Q_PAD_ENET_TX_EN__ENET_TX_EN           0x1e8 0x4fc 0x000 0x1 0x0
+#define MX6Q_PAD_ENET_TX_EN__ESAI_TX3_RX2         0x1e8 0x4fc 0x880 0x2 0x0
+#define MX6Q_PAD_ENET_TX_EN__GPIO1_IO28           0x1e8 0x4fc 0x000 0x5 0x0
+#define MX6Q_PAD_ENET_TXD1__MLB_CLK               0x1ec 0x500 0x900 0x0 0x0
+#define MX6Q_PAD_ENET_TXD1__ENET_TX_DATA1         0x1ec 0x500 0x000 0x1 0x0
+#define MX6Q_PAD_ENET_TXD1__ESAI_TX2_RX3          0x1ec 0x500 0x87c 0x2 0x0
+#define MX6Q_PAD_ENET_TXD1__ENET_1588_EVENT0_IN   0x1ec 0x500 0x000 0x4 0x0
+#define MX6Q_PAD_ENET_TXD1__GPIO1_IO29            0x1ec 0x500 0x000 0x5 0x0
+#define MX6Q_PAD_ENET_TXD0__ENET_TX_DATA0         0x1f0 0x504 0x000 0x1 0x0
+#define MX6Q_PAD_ENET_TXD0__ESAI_TX4_RX1          0x1f0 0x504 0x884 0x2 0x0
+#define MX6Q_PAD_ENET_TXD0__GPIO1_IO30            0x1f0 0x504 0x000 0x5 0x0
+#define MX6Q_PAD_ENET_MDC__MLB_DATA               0x1f4 0x508 0x904 0x0 0x0
+#define MX6Q_PAD_ENET_MDC__ENET_MDC               0x1f4 0x508 0x000 0x1 0x0
+#define MX6Q_PAD_ENET_MDC__ESAI_TX5_RX0           0x1f4 0x508 0x888 0x2 0x0
+#define MX6Q_PAD_ENET_MDC__ENET_1588_EVENT1_IN    0x1f4 0x508 0x000 0x4 0x0
+#define MX6Q_PAD_ENET_MDC__GPIO1_IO31             0x1f4 0x508 0x000 0x5 0x0
+#define MX6Q_PAD_KEY_COL0__ECSPI1_SCLK            0x1f8 0x5c8 0x7f4 0x0 0x2
+#define MX6Q_PAD_KEY_COL0__ENET_RX_DATA3          0x1f8 0x5c8 0x854 0x1 0x1
+#define MX6Q_PAD_KEY_COL0__AUD5_TXC               0x1f8 0x5c8 0x7dc 0x2 0x1
+#define MX6Q_PAD_KEY_COL0__KEY_COL0               0x1f8 0x5c8 0x000 0x3 0x0
+#define MX6Q_PAD_KEY_COL0__UART4_TX_DATA          0x1f8 0x5c8 0x000 0x4 0x0
+#define MX6Q_PAD_KEY_COL0__UART4_RX_DATA          0x1f8 0x5c8 0x938 0x4 0x0
+#define MX6Q_PAD_KEY_COL0__GPIO4_IO06             0x1f8 0x5c8 0x000 0x5 0x0
+#define MX6Q_PAD_KEY_COL0__DCIC1_OUT              0x1f8 0x5c8 0x000 0x6 0x0
+#define MX6Q_PAD_KEY_ROW0__ECSPI1_MOSI            0x1fc 0x5cc 0x7fc 0x0 0x2
+#define MX6Q_PAD_KEY_ROW0__ENET_TX_DATA3          0x1fc 0x5cc 0x000 0x1 0x0
+#define MX6Q_PAD_KEY_ROW0__AUD5_TXD               0x1fc 0x5cc 0x7d0 0x2 0x1
+#define MX6Q_PAD_KEY_ROW0__KEY_ROW0               0x1fc 0x5cc 0x000 0x3 0x0
+#define MX6Q_PAD_KEY_ROW0__UART4_RX_DATA          0x1fc 0x5cc 0x938 0x4 0x1
+#define MX6Q_PAD_KEY_ROW0__UART4_TX_DATA          0x1fc 0x5cc 0x000 0x4 0x0
+#define MX6Q_PAD_KEY_ROW0__GPIO4_IO07             0x1fc 0x5cc 0x000 0x5 0x0
+#define MX6Q_PAD_KEY_ROW0__DCIC2_OUT              0x1fc 0x5cc 0x000 0x6 0x0
+#define MX6Q_PAD_KEY_COL1__ECSPI1_MISO            0x200 0x5d0 0x7f8 0x0 0x2
+#define MX6Q_PAD_KEY_COL1__ENET_MDIO              0x200 0x5d0 0x840 0x1 0x1
+#define MX6Q_PAD_KEY_COL1__AUD5_TXFS              0x200 0x5d0 0x7e0 0x2 0x1
+#define MX6Q_PAD_KEY_COL1__KEY_COL1               0x200 0x5d0 0x000 0x3 0x0
+#define MX6Q_PAD_KEY_COL1__UART5_TX_DATA          0x200 0x5d0 0x000 0x4 0x0
+#define MX6Q_PAD_KEY_COL1__UART5_RX_DATA          0x200 0x5d0 0x940 0x4 0x0
+#define MX6Q_PAD_KEY_COL1__GPIO4_IO08             0x200 0x5d0 0x000 0x5 0x0
+#define MX6Q_PAD_KEY_COL1__SD1_VSELECT            0x200 0x5d0 0x000 0x6 0x0
+#define MX6Q_PAD_KEY_ROW1__ECSPI1_SS0             0x204 0x5d4 0x800 0x0 0x2
+#define MX6Q_PAD_KEY_ROW1__ENET_COL               0x204 0x5d4 0x000 0x1 0x0
+#define MX6Q_PAD_KEY_ROW1__AUD5_RXD               0x204 0x5d4 0x7cc 0x2 0x1
+#define MX6Q_PAD_KEY_ROW1__KEY_ROW1               0x204 0x5d4 0x000 0x3 0x0
+#define MX6Q_PAD_KEY_ROW1__UART5_RX_DATA          0x204 0x5d4 0x940 0x4 0x1
+#define MX6Q_PAD_KEY_ROW1__UART5_TX_DATA          0x204 0x5d4 0x000 0x4 0x0
+#define MX6Q_PAD_KEY_ROW1__GPIO4_IO09             0x204 0x5d4 0x000 0x5 0x0
+#define MX6Q_PAD_KEY_ROW1__SD2_VSELECT            0x204 0x5d4 0x000 0x6 0x0
+#define MX6Q_PAD_KEY_COL2__ECSPI1_SS1             0x208 0x5d8 0x804 0x0 0x2
+#define MX6Q_PAD_KEY_COL2__ENET_RX_DATA2          0x208 0x5d8 0x850 0x1 0x1
+#define MX6Q_PAD_KEY_COL2__FLEXCAN1_TX            0x208 0x5d8 0x000 0x2 0x0
+#define MX6Q_PAD_KEY_COL2__KEY_COL2               0x208 0x5d8 0x000 0x3 0x0
+#define MX6Q_PAD_KEY_COL2__ENET_MDC               0x208 0x5d8 0x000 0x4 0x0
+#define MX6Q_PAD_KEY_COL2__GPIO4_IO10             0x208 0x5d8 0x000 0x5 0x0
+#define MX6Q_PAD_KEY_COL2__USB_H1_PWR_CTL_WAKE    0x208 0x5d8 0x000 0x6 0x0
+#define MX6Q_PAD_KEY_ROW2__ECSPI1_SS2             0x20c 0x5dc 0x808 0x0 0x1
+#define MX6Q_PAD_KEY_ROW2__ENET_TX_DATA2          0x20c 0x5dc 0x000 0x1 0x0
+#define MX6Q_PAD_KEY_ROW2__FLEXCAN1_RX            0x20c 0x5dc 0x7e4 0x2 0x0
+#define MX6Q_PAD_KEY_ROW2__KEY_ROW2               0x20c 0x5dc 0x000 0x3 0x0
+#define MX6Q_PAD_KEY_ROW2__SD2_VSELECT            0x20c 0x5dc 0x000 0x4 0x0
+#define MX6Q_PAD_KEY_ROW2__GPIO4_IO11             0x20c 0x5dc 0x000 0x5 0x0
+#define MX6Q_PAD_KEY_ROW2__HDMI_TX_CEC_LINE       0x20c 0x5dc 0x88c 0x6 0x1
+#define MX6Q_PAD_KEY_COL3__ECSPI1_SS3             0x210 0x5e0 0x80c 0x0 0x1
+#define MX6Q_PAD_KEY_COL3__ENET_CRS               0x210 0x5e0 0x000 0x1 0x0
+#define MX6Q_PAD_KEY_COL3__HDMI_TX_DDC_SCL        0x210 0x5e0 0x890 0x2 0x1
+#define MX6Q_PAD_KEY_COL3__KEY_COL3               0x210 0x5e0 0x000 0x3 0x0
+#define MX6Q_PAD_KEY_COL3__I2C2_SCL               0x210 0x5e0 0x8a0 0x4 0x1
+#define MX6Q_PAD_KEY_COL3__GPIO4_IO12             0x210 0x5e0 0x000 0x5 0x0
+#define MX6Q_PAD_KEY_COL3__SPDIF_IN               0x210 0x5e0 0x914 0x6 0x2
+#define MX6Q_PAD_KEY_ROW3__ASRC_EXT_CLK           0x214 0x5e4 0x7b0 0x1 0x0
+#define MX6Q_PAD_KEY_ROW3__HDMI_TX_DDC_SDA        0x214 0x5e4 0x894 0x2 0x1
+#define MX6Q_PAD_KEY_ROW3__KEY_ROW3               0x214 0x5e4 0x000 0x3 0x0
+#define MX6Q_PAD_KEY_ROW3__I2C2_SDA               0x214 0x5e4 0x8a4 0x4 0x1
+#define MX6Q_PAD_KEY_ROW3__GPIO4_IO13             0x214 0x5e4 0x000 0x5 0x0
+#define MX6Q_PAD_KEY_ROW3__SD1_VSELECT            0x214 0x5e4 0x000 0x6 0x0
+#define MX6Q_PAD_KEY_COL4__FLEXCAN2_TX            0x218 0x5e8 0x000 0x0 0x0
+#define MX6Q_PAD_KEY_COL4__IPU1_SISG4             0x218 0x5e8 0x000 0x1 0x0
+#define MX6Q_PAD_KEY_COL4__USB_OTG_OC             0x218 0x5e8 0x944 0x2 0x1
+#define MX6Q_PAD_KEY_COL4__KEY_COL4               0x218 0x5e8 0x000 0x3 0x0
+#define MX6Q_PAD_KEY_COL4__UART5_RTS_B            0x218 0x5e8 0x93c 0x4 0x0
+#define MX6Q_PAD_KEY_COL4__UART5_CTS_B            0x218 0x5e8 0x000 0x4 0x0
+#define MX6Q_PAD_KEY_COL4__GPIO4_IO14             0x218 0x5e8 0x000 0x5 0x0
+#define MX6Q_PAD_KEY_ROW4__FLEXCAN2_RX            0x21c 0x5ec 0x7e8 0x0 0x0
+#define MX6Q_PAD_KEY_ROW4__IPU1_SISG5             0x21c 0x5ec 0x000 0x1 0x0
+#define MX6Q_PAD_KEY_ROW4__USB_OTG_PWR            0x21c 0x5ec 0x000 0x2 0x0
+#define MX6Q_PAD_KEY_ROW4__KEY_ROW4               0x21c 0x5ec 0x000 0x3 0x0
+#define MX6Q_PAD_KEY_ROW4__UART5_CTS_B            0x21c 0x5ec 0x000 0x4 0x0
+#define MX6Q_PAD_KEY_ROW4__UART5_RTS_B            0x21c 0x5ec 0x93c 0x4 0x1
+#define MX6Q_PAD_KEY_ROW4__GPIO4_IO15             0x21c 0x5ec 0x000 0x5 0x0
+#define MX6Q_PAD_GPIO_0__CCM_CLKO1                0x220 0x5f0 0x000 0x0 0x0
+#define MX6Q_PAD_GPIO_0__KEY_COL5                 0x220 0x5f0 0x8e8 0x2 0x0
+#define MX6Q_PAD_GPIO_0__ASRC_EXT_CLK             0x220 0x5f0 0x7b0 0x3 0x1
+#define MX6Q_PAD_GPIO_0__EPIT1_OUT                0x220 0x5f0 0x000 0x4 0x0
+#define MX6Q_PAD_GPIO_0__GPIO1_IO00               0x220 0x5f0 0x000 0x5 0x0
+#define MX6Q_PAD_GPIO_0__USB_H1_PWR               0x220 0x5f0 0x000 0x6 0x0
+#define MX6Q_PAD_GPIO_0__SNVS_VIO_5               0x220 0x5f0 0x000 0x7 0x0
+#define MX6Q_PAD_GPIO_1__ESAI_RX_CLK              0x224 0x5f4 0x86c 0x0 0x1
+#define MX6Q_PAD_GPIO_1__WDOG2_B                  0x224 0x5f4 0x000 0x1 0x0
+#define MX6Q_PAD_GPIO_1__KEY_ROW5                 0x224 0x5f4 0x8f4 0x2 0x0
+#define MX6Q_PAD_GPIO_1__USB_OTG_ID               0x224 0x5f4 0x000 0x3 0x0
+#define MX6Q_PAD_GPIO_1__PWM2_OUT                 0x224 0x5f4 0x000 0x4 0x0
+#define MX6Q_PAD_GPIO_1__GPIO1_IO01               0x224 0x5f4 0x000 0x5 0x0
+#define MX6Q_PAD_GPIO_1__SD1_CD_B                 0x224 0x5f4 0x000 0x6 0x0
+#define MX6Q_PAD_GPIO_9__ESAI_RX_FS               0x228 0x5f8 0x85c 0x0 0x1
+#define MX6Q_PAD_GPIO_9__WDOG1_B                  0x228 0x5f8 0x000 0x1 0x0
+#define MX6Q_PAD_GPIO_9__KEY_COL6                 0x228 0x5f8 0x8ec 0x2 0x0
+#define MX6Q_PAD_GPIO_9__CCM_REF_EN_B             0x228 0x5f8 0x000 0x3 0x0
+#define MX6Q_PAD_GPIO_9__PWM1_OUT                 0x228 0x5f8 0x000 0x4 0x0
+#define MX6Q_PAD_GPIO_9__GPIO1_IO09               0x228 0x5f8 0x000 0x5 0x0
+#define MX6Q_PAD_GPIO_9__SD1_WP                   0x228 0x5f8 0x94c 0x6 0x1
+#define MX6Q_PAD_GPIO_3__ESAI_RX_HF_CLK           0x22c 0x5fc 0x864 0x0 0x1
+#define MX6Q_PAD_GPIO_3__I2C3_SCL                 0x22c 0x5fc 0x8a8 0x2 0x1
+#define MX6Q_PAD_GPIO_3__XTALOSC_REF_CLK_24M      0x22c 0x5fc 0x000 0x3 0x0
+#define MX6Q_PAD_GPIO_3__CCM_CLKO2                0x22c 0x5fc 0x000 0x4 0x0
+#define MX6Q_PAD_GPIO_3__GPIO1_IO03               0x22c 0x5fc 0x000 0x5 0x0
+#define MX6Q_PAD_GPIO_3__USB_H1_OC                0x22c 0x5fc 0x948 0x6 0x1
+#define MX6Q_PAD_GPIO_3__MLB_CLK                  0x22c 0x5fc 0x900 0x7 0x1
+#define MX6Q_PAD_GPIO_6__ESAI_TX_CLK              0x230 0x600 0x870 0x0 0x1
+#define MX6Q_PAD_GPIO_6__I2C3_SDA                 0x230 0x600 0x8ac 0x2 0x1
+#define MX6Q_PAD_GPIO_6__GPIO1_IO06               0x230 0x600 0x000 0x5 0x0
+#define MX6Q_PAD_GPIO_6__SD2_LCTL                 0x230 0x600 0x000 0x6 0x0
+#define MX6Q_PAD_GPIO_6__MLB_SIG                  0x230 0x600 0x908 0x7 0x1
+#define MX6Q_PAD_GPIO_2__ESAI_TX_FS               0x234 0x604 0x860 0x0 0x1
+#define MX6Q_PAD_GPIO_2__KEY_ROW6                 0x234 0x604 0x8f8 0x2 0x1
+#define MX6Q_PAD_GPIO_2__GPIO1_IO02               0x234 0x604 0x000 0x5 0x0
+#define MX6Q_PAD_GPIO_2__SD2_WP                   0x234 0x604 0x000 0x6 0x0
+#define MX6Q_PAD_GPIO_2__MLB_DATA                 0x234 0x604 0x904 0x7 0x1
+#define MX6Q_PAD_GPIO_4__ESAI_TX_HF_CLK           0x238 0x608 0x868 0x0 0x1
+#define MX6Q_PAD_GPIO_4__KEY_COL7                 0x238 0x608 0x8f0 0x2 0x1
+#define MX6Q_PAD_GPIO_4__GPIO1_IO04               0x238 0x608 0x000 0x5 0x0
+#define MX6Q_PAD_GPIO_4__SD2_CD_B                 0x238 0x608 0x000 0x6 0x0
+#define MX6Q_PAD_GPIO_5__ESAI_TX2_RX3             0x23c 0x60c 0x87c 0x0 0x1
+#define MX6Q_PAD_GPIO_5__KEY_ROW7                 0x23c 0x60c 0x8fc 0x2 0x1
+#define MX6Q_PAD_GPIO_5__CCM_CLKO1                0x23c 0x60c 0x000 0x3 0x0
+#define MX6Q_PAD_GPIO_5__GPIO1_IO05               0x23c 0x60c 0x000 0x5 0x0
+#define MX6Q_PAD_GPIO_5__I2C3_SCL                 0x23c 0x60c 0x8a8 0x6 0x2
+#define MX6Q_PAD_GPIO_5__ARM_EVENTI               0x23c 0x60c 0x000 0x7 0x0
+#define MX6Q_PAD_GPIO_7__ESAI_TX4_RX1             0x240 0x610 0x884 0x0 0x1
+#define MX6Q_PAD_GPIO_7__ECSPI5_RDY               0x240 0x610 0x000 0x1 0x0
+#define MX6Q_PAD_GPIO_7__EPIT1_OUT                0x240 0x610 0x000 0x2 0x0
+#define MX6Q_PAD_GPIO_7__FLEXCAN1_TX              0x240 0x610 0x000 0x3 0x0
+#define MX6Q_PAD_GPIO_7__UART2_TX_DATA            0x240 0x610 0x000 0x4 0x0
+#define MX6Q_PAD_GPIO_7__UART2_RX_DATA            0x240 0x610 0x928 0x4 0x2
+#define MX6Q_PAD_GPIO_7__GPIO1_IO07               0x240 0x610 0x000 0x5 0x0
+#define MX6Q_PAD_GPIO_7__SPDIF_LOCK               0x240 0x610 0x000 0x6 0x0
+#define MX6Q_PAD_GPIO_7__USB_OTG_HOST_MODE        0x240 0x610 0x000 0x7 0x0
+#define MX6Q_PAD_GPIO_8__ESAI_TX5_RX0             0x244 0x614 0x888 0x0 0x1
+#define MX6Q_PAD_GPIO_8__XTALOSC_REF_CLK_32K      0x244 0x614 0x000 0x1 0x0
+#define MX6Q_PAD_GPIO_8__EPIT2_OUT                0x244 0x614 0x000 0x2 0x0
+#define MX6Q_PAD_GPIO_8__FLEXCAN1_RX              0x244 0x614 0x7e4 0x3 0x1
+#define MX6Q_PAD_GPIO_8__UART2_RX_DATA            0x244 0x614 0x928 0x4 0x3
+#define MX6Q_PAD_GPIO_8__UART2_TX_DATA            0x244 0x614 0x000 0x4 0x0
+#define MX6Q_PAD_GPIO_8__GPIO1_IO08               0x244 0x614 0x000 0x5 0x0
+#define MX6Q_PAD_GPIO_8__SPDIF_SR_CLK             0x244 0x614 0x000 0x6 0x0
+#define MX6Q_PAD_GPIO_8__USB_OTG_PWR_CTL_WAKE     0x244 0x614 0x000 0x7 0x0
+#define MX6Q_PAD_GPIO_16__ESAI_TX3_RX2            0x248 0x618 0x880 0x0 0x1
+#define MX6Q_PAD_GPIO_16__ENET_1588_EVENT2_IN     0x248 0x618 0x000 0x1 0x0
+#define MX6Q_PAD_GPIO_16__ENET_REF_CLK            0x248 0x618 0x83c 0x2 0x1
+#define MX6Q_PAD_GPIO_16__SD1_LCTL                0x248 0x618 0x000 0x3 0x0
+#define MX6Q_PAD_GPIO_16__SPDIF_IN                0x248 0x618 0x914 0x4 0x3
+#define MX6Q_PAD_GPIO_16__GPIO7_IO11              0x248 0x618 0x000 0x5 0x0
+#define MX6Q_PAD_GPIO_16__I2C3_SDA                0x248 0x618 0x8ac 0x6 0x2
+#define MX6Q_PAD_GPIO_16__JTAG_DE_B               0x248 0x618 0x000 0x7 0x0
+#define MX6Q_PAD_GPIO_17__ESAI_TX0                0x24c 0x61c 0x874 0x0 0x0
+#define MX6Q_PAD_GPIO_17__ENET_1588_EVENT3_IN     0x24c 0x61c 0x000 0x1 0x0
+#define MX6Q_PAD_GPIO_17__CCM_PMIC_READY          0x24c 0x61c 0x7f0 0x2 0x1
+#define MX6Q_PAD_GPIO_17__SDMA_EXT_EVENT0         0x24c 0x61c 0x90c 0x3 0x1
+#define MX6Q_PAD_GPIO_17__SPDIF_OUT               0x24c 0x61c 0x000 0x4 0x0
+#define MX6Q_PAD_GPIO_17__GPIO7_IO12              0x24c 0x61c 0x000 0x5 0x0
+#define MX6Q_PAD_GPIO_18__ESAI_TX1                0x250 0x620 0x878 0x0 0x0
+#define MX6Q_PAD_GPIO_18__ENET_RX_CLK             0x250 0x620 0x844 0x1 0x1
+#define MX6Q_PAD_GPIO_18__SD3_VSELECT             0x250 0x620 0x000 0x2 0x0
+#define MX6Q_PAD_GPIO_18__SDMA_EXT_EVENT1         0x250 0x620 0x910 0x3 0x1
+#define MX6Q_PAD_GPIO_18__ASRC_EXT_CLK            0x250 0x620 0x7b0 0x4 0x2
+#define MX6Q_PAD_GPIO_18__GPIO7_IO13              0x250 0x620 0x000 0x5 0x0
+#define MX6Q_PAD_GPIO_18__SNVS_VIO_5_CTL          0x250 0x620 0x000 0x6 0x0
+#define MX6Q_PAD_GPIO_19__KEY_COL5                0x254 0x624 0x8e8 0x0 0x1
+#define MX6Q_PAD_GPIO_19__ENET_1588_EVENT0_OUT    0x254 0x624 0x000 0x1 0x0
+#define MX6Q_PAD_GPIO_19__SPDIF_OUT               0x254 0x624 0x000 0x2 0x0
+#define MX6Q_PAD_GPIO_19__CCM_CLKO1               0x254 0x624 0x000 0x3 0x0
+#define MX6Q_PAD_GPIO_19__ECSPI1_RDY              0x254 0x624 0x000 0x4 0x0
+#define MX6Q_PAD_GPIO_19__GPIO4_IO05              0x254 0x624 0x000 0x5 0x0
+#define MX6Q_PAD_GPIO_19__ENET_TX_ER              0x254 0x624 0x000 0x6 0x0
+#define MX6Q_PAD_CSI0_PIXCLK__IPU1_CSI0_PIXCLK    0x258 0x628 0x000 0x0 0x0
+#define MX6Q_PAD_CSI0_PIXCLK__GPIO5_IO18          0x258 0x628 0x000 0x5 0x0
+#define MX6Q_PAD_CSI0_PIXCLK__ARM_EVENTO          0x258 0x628 0x000 0x7 0x0
+#define MX6Q_PAD_CSI0_MCLK__IPU1_CSI0_HSYNC       0x25c 0x62c 0x000 0x0 0x0
+#define MX6Q_PAD_CSI0_MCLK__CCM_CLKO1             0x25c 0x62c 0x000 0x3 0x0
+#define MX6Q_PAD_CSI0_MCLK__GPIO5_IO19            0x25c 0x62c 0x000 0x5 0x0
+#define MX6Q_PAD_CSI0_MCLK__ARM_TRACE_CTL         0x25c 0x62c 0x000 0x7 0x0
+#define MX6Q_PAD_CSI0_DATA_EN__IPU1_CSI0_DATA_EN  0x260 0x630 0x000 0x0 0x0
+#define MX6Q_PAD_CSI0_DATA_EN__EIM_DATA00         0x260 0x630 0x000 0x1 0x0
+#define MX6Q_PAD_CSI0_DATA_EN__GPIO5_IO20         0x260 0x630 0x000 0x5 0x0
+#define MX6Q_PAD_CSI0_DATA_EN__ARM_TRACE_CLK      0x260 0x630 0x000 0x7 0x0
+#define MX6Q_PAD_CSI0_VSYNC__IPU1_CSI0_VSYNC      0x264 0x634 0x000 0x0 0x0
+#define MX6Q_PAD_CSI0_VSYNC__EIM_DATA01           0x264 0x634 0x000 0x1 0x0
+#define MX6Q_PAD_CSI0_VSYNC__GPIO5_IO21           0x264 0x634 0x000 0x5 0x0
+#define MX6Q_PAD_CSI0_VSYNC__ARM_TRACE00          0x264 0x634 0x000 0x7 0x0
+#define MX6Q_PAD_CSI0_DAT4__IPU1_CSI0_DATA04      0x268 0x638 0x000 0x0 0x0
+#define MX6Q_PAD_CSI0_DAT4__EIM_DATA02            0x268 0x638 0x000 0x1 0x0
+#define MX6Q_PAD_CSI0_DAT4__ECSPI1_SCLK           0x268 0x638 0x7f4 0x2 0x3
+#define MX6Q_PAD_CSI0_DAT4__KEY_COL5              0x268 0x638 0x8e8 0x3 0x2
+#define MX6Q_PAD_CSI0_DAT4__AUD3_TXC              0x268 0x638 0x000 0x4 0x0
+#define MX6Q_PAD_CSI0_DAT4__GPIO5_IO22            0x268 0x638 0x000 0x5 0x0
+#define MX6Q_PAD_CSI0_DAT4__ARM_TRACE01           0x268 0x638 0x000 0x7 0x0
+#define MX6Q_PAD_CSI0_DAT5__IPU1_CSI0_DATA05      0x26c 0x63c 0x000 0x0 0x0
+#define MX6Q_PAD_CSI0_DAT5__EIM_DATA03            0x26c 0x63c 0x000 0x1 0x0
+#define MX6Q_PAD_CSI0_DAT5__ECSPI1_MOSI           0x26c 0x63c 0x7fc 0x2 0x3
+#define MX6Q_PAD_CSI0_DAT5__KEY_ROW5              0x26c 0x63c 0x8f4 0x3 0x1
+#define MX6Q_PAD_CSI0_DAT5__AUD3_TXD              0x26c 0x63c 0x000 0x4 0x0
+#define MX6Q_PAD_CSI0_DAT5__GPIO5_IO23            0x26c 0x63c 0x000 0x5 0x0
+#define MX6Q_PAD_CSI0_DAT5__ARM_TRACE02           0x26c 0x63c 0x000 0x7 0x0
+#define MX6Q_PAD_CSI0_DAT6__IPU1_CSI0_DATA06      0x270 0x640 0x000 0x0 0x0
+#define MX6Q_PAD_CSI0_DAT6__EIM_DATA04            0x270 0x640 0x000 0x1 0x0
+#define MX6Q_PAD_CSI0_DAT6__ECSPI1_MISO           0x270 0x640 0x7f8 0x2 0x3
+#define MX6Q_PAD_CSI0_DAT6__KEY_COL6              0x270 0x640 0x8ec 0x3 0x1
+#define MX6Q_PAD_CSI0_DAT6__AUD3_TXFS             0x270 0x640 0x000 0x4 0x0
+#define MX6Q_PAD_CSI0_DAT6__GPIO5_IO24            0x270 0x640 0x000 0x5 0x0
+#define MX6Q_PAD_CSI0_DAT6__ARM_TRACE03           0x270 0x640 0x000 0x7 0x0
+#define MX6Q_PAD_CSI0_DAT7__IPU1_CSI0_DATA07      0x274 0x644 0x000 0x0 0x0
+#define MX6Q_PAD_CSI0_DAT7__EIM_DATA05            0x274 0x644 0x000 0x1 0x0
+#define MX6Q_PAD_CSI0_DAT7__ECSPI1_SS0            0x274 0x644 0x800 0x2 0x3
+#define MX6Q_PAD_CSI0_DAT7__KEY_ROW6              0x274 0x644 0x8f8 0x3 0x2
+#define MX6Q_PAD_CSI0_DAT7__AUD3_RXD              0x274 0x644 0x000 0x4 0x0
+#define MX6Q_PAD_CSI0_DAT7__GPIO5_IO25            0x274 0x644 0x000 0x5 0x0
+#define MX6Q_PAD_CSI0_DAT7__ARM_TRACE04           0x274 0x644 0x000 0x7 0x0
+#define MX6Q_PAD_CSI0_DAT8__IPU1_CSI0_DATA08      0x278 0x648 0x000 0x0 0x0
+#define MX6Q_PAD_CSI0_DAT8__EIM_DATA06            0x278 0x648 0x000 0x1 0x0
+#define MX6Q_PAD_CSI0_DAT8__ECSPI2_SCLK           0x278 0x648 0x810 0x2 0x2
+#define MX6Q_PAD_CSI0_DAT8__KEY_COL7              0x278 0x648 0x8f0 0x3 0x2
+#define MX6Q_PAD_CSI0_DAT8__I2C1_SDA              0x278 0x648 0x89c 0x4 0x1
+#define MX6Q_PAD_CSI0_DAT8__GPIO5_IO26            0x278 0x648 0x000 0x5 0x0
+#define MX6Q_PAD_CSI0_DAT8__ARM_TRACE05           0x278 0x648 0x000 0x7 0x0
+#define MX6Q_PAD_CSI0_DAT9__IPU1_CSI0_DATA09      0x27c 0x64c 0x000 0x0 0x0
+#define MX6Q_PAD_CSI0_DAT9__EIM_DATA07            0x27c 0x64c 0x000 0x1 0x0
+#define MX6Q_PAD_CSI0_DAT9__ECSPI2_MOSI           0x27c 0x64c 0x818 0x2 0x2
+#define MX6Q_PAD_CSI0_DAT9__KEY_ROW7              0x27c 0x64c 0x8fc 0x3 0x2
+#define MX6Q_PAD_CSI0_DAT9__I2C1_SCL              0x27c 0x64c 0x898 0x4 0x1
+#define MX6Q_PAD_CSI0_DAT9__GPIO5_IO27            0x27c 0x64c 0x000 0x5 0x0
+#define MX6Q_PAD_CSI0_DAT9__ARM_TRACE06           0x27c 0x64c 0x000 0x7 0x0
+#define MX6Q_PAD_CSI0_DAT10__IPU1_CSI0_DATA10     0x280 0x650 0x000 0x0 0x0
+#define MX6Q_PAD_CSI0_DAT10__AUD3_RXC             0x280 0x650 0x000 0x1 0x0
+#define MX6Q_PAD_CSI0_DAT10__ECSPI2_MISO          0x280 0x650 0x814 0x2 0x2
+#define MX6Q_PAD_CSI0_DAT10__UART1_TX_DATA        0x280 0x650 0x000 0x3 0x0
+#define MX6Q_PAD_CSI0_DAT10__UART1_RX_DATA        0x280 0x650 0x920 0x3 0x0
+#define MX6Q_PAD_CSI0_DAT10__GPIO5_IO28           0x280 0x650 0x000 0x5 0x0
+#define MX6Q_PAD_CSI0_DAT10__ARM_TRACE07          0x280 0x650 0x000 0x7 0x0
+#define MX6Q_PAD_CSI0_DAT11__IPU1_CSI0_DATA11     0x284 0x654 0x000 0x0 0x0
+#define MX6Q_PAD_CSI0_DAT11__AUD3_RXFS            0x284 0x654 0x000 0x1 0x0
+#define MX6Q_PAD_CSI0_DAT11__ECSPI2_SS0           0x284 0x654 0x81c 0x2 0x2
+#define MX6Q_PAD_CSI0_DAT11__UART1_RX_DATA        0x284 0x654 0x920 0x3 0x1
+#define MX6Q_PAD_CSI0_DAT11__UART1_TX_DATA        0x284 0x654 0x000 0x3 0x0
+#define MX6Q_PAD_CSI0_DAT11__GPIO5_IO29           0x284 0x654 0x000 0x5 0x0
+#define MX6Q_PAD_CSI0_DAT11__ARM_TRACE08          0x284 0x654 0x000 0x7 0x0
+#define MX6Q_PAD_CSI0_DAT12__IPU1_CSI0_DATA12     0x288 0x658 0x000 0x0 0x0
+#define MX6Q_PAD_CSI0_DAT12__EIM_DATA08           0x288 0x658 0x000 0x1 0x0
+#define MX6Q_PAD_CSI0_DAT12__UART4_TX_DATA        0x288 0x658 0x000 0x3 0x0
+#define MX6Q_PAD_CSI0_DAT12__UART4_RX_DATA        0x288 0x658 0x938 0x3 0x2
+#define MX6Q_PAD_CSI0_DAT12__GPIO5_IO30           0x288 0x658 0x000 0x5 0x0
+#define MX6Q_PAD_CSI0_DAT12__ARM_TRACE09          0x288 0x658 0x000 0x7 0x0
+#define MX6Q_PAD_CSI0_DAT13__IPU1_CSI0_DATA13     0x28c 0x65c 0x000 0x0 0x0
+#define MX6Q_PAD_CSI0_DAT13__EIM_DATA09           0x28c 0x65c 0x000 0x1 0x0
+#define MX6Q_PAD_CSI0_DAT13__UART4_RX_DATA        0x28c 0x65c 0x938 0x3 0x3
+#define MX6Q_PAD_CSI0_DAT13__UART4_TX_DATA        0x28c 0x65c 0x000 0x3 0x0
+#define MX6Q_PAD_CSI0_DAT13__GPIO5_IO31           0x28c 0x65c 0x000 0x5 0x0
+#define MX6Q_PAD_CSI0_DAT13__ARM_TRACE10          0x28c 0x65c 0x000 0x7 0x0
+#define MX6Q_PAD_CSI0_DAT14__IPU1_CSI0_DATA14     0x290 0x660 0x000 0x0 0x0
+#define MX6Q_PAD_CSI0_DAT14__EIM_DATA10           0x290 0x660 0x000 0x1 0x0
+#define MX6Q_PAD_CSI0_DAT14__UART5_TX_DATA        0x290 0x660 0x000 0x3 0x0
+#define MX6Q_PAD_CSI0_DAT14__UART5_RX_DATA        0x290 0x660 0x940 0x3 0x2
+#define MX6Q_PAD_CSI0_DAT14__GPIO6_IO00           0x290 0x660 0x000 0x5 0x0
+#define MX6Q_PAD_CSI0_DAT14__ARM_TRACE11          0x290 0x660 0x000 0x7 0x0
+#define MX6Q_PAD_CSI0_DAT15__IPU1_CSI0_DATA15     0x294 0x664 0x000 0x0 0x0
+#define MX6Q_PAD_CSI0_DAT15__EIM_DATA11           0x294 0x664 0x000 0x1 0x0
+#define MX6Q_PAD_CSI0_DAT15__UART5_RX_DATA        0x294 0x664 0x940 0x3 0x3
+#define MX6Q_PAD_CSI0_DAT15__UART5_TX_DATA        0x294 0x664 0x000 0x3 0x0
+#define MX6Q_PAD_CSI0_DAT15__GPIO6_IO01           0x294 0x664 0x000 0x5 0x0
+#define MX6Q_PAD_CSI0_DAT15__ARM_TRACE12          0x294 0x664 0x000 0x7 0x0
+#define MX6Q_PAD_CSI0_DAT16__IPU1_CSI0_DATA16     0x298 0x668 0x000 0x0 0x0
+#define MX6Q_PAD_CSI0_DAT16__EIM_DATA12           0x298 0x668 0x000 0x1 0x0
+#define MX6Q_PAD_CSI0_DAT16__UART4_RTS_B          0x298 0x668 0x934 0x3 0x0
+#define MX6Q_PAD_CSI0_DAT16__UART4_CTS_B          0x298 0x668 0x000 0x3 0x0
+#define MX6Q_PAD_CSI0_DAT16__GPIO6_IO02           0x298 0x668 0x000 0x5 0x0
+#define MX6Q_PAD_CSI0_DAT16__ARM_TRACE13          0x298 0x668 0x000 0x7 0x0
+#define MX6Q_PAD_CSI0_DAT17__IPU1_CSI0_DATA17     0x29c 0x66c 0x000 0x0 0x0
+#define MX6Q_PAD_CSI0_DAT17__EIM_DATA13           0x29c 0x66c 0x000 0x1 0x0
+#define MX6Q_PAD_CSI0_DAT17__UART4_CTS_B          0x29c 0x66c 0x000 0x3 0x0
+#define MX6Q_PAD_CSI0_DAT17__UART4_RTS_B          0x29c 0x66c 0x934 0x3 0x1
+#define MX6Q_PAD_CSI0_DAT17__GPIO6_IO03           0x29c 0x66c 0x000 0x5 0x0
+#define MX6Q_PAD_CSI0_DAT17__ARM_TRACE14          0x29c 0x66c 0x000 0x7 0x0
+#define MX6Q_PAD_CSI0_DAT18__IPU1_CSI0_DATA18     0x2a0 0x670 0x000 0x0 0x0
+#define MX6Q_PAD_CSI0_DAT18__EIM_DATA14           0x2a0 0x670 0x000 0x1 0x0
+#define MX6Q_PAD_CSI0_DAT18__UART5_RTS_B          0x2a0 0x670 0x93c 0x3 0x2
+#define MX6Q_PAD_CSI0_DAT18__UART5_CTS_B          0x2a0 0x670 0x000 0x3 0x0
+#define MX6Q_PAD_CSI0_DAT18__GPIO6_IO04           0x2a0 0x670 0x000 0x5 0x0
+#define MX6Q_PAD_CSI0_DAT18__ARM_TRACE15          0x2a0 0x670 0x000 0x7 0x0
+#define MX6Q_PAD_CSI0_DAT19__IPU1_CSI0_DATA19     0x2a4 0x674 0x000 0x0 0x0
+#define MX6Q_PAD_CSI0_DAT19__EIM_DATA15           0x2a4 0x674 0x000 0x1 0x0
+#define MX6Q_PAD_CSI0_DAT19__UART5_CTS_B          0x2a4 0x674 0x000 0x3 0x0
+#define MX6Q_PAD_CSI0_DAT19__UART5_RTS_B          0x2a4 0x674 0x93c 0x3 0x3
+#define MX6Q_PAD_CSI0_DAT19__GPIO6_IO05           0x2a4 0x674 0x000 0x5 0x0
+#define MX6Q_PAD_SD3_DAT7__SD3_DATA7              0x2a8 0x690 0x000 0x0 0x0
+#define MX6Q_PAD_SD3_DAT7__UART1_TX_DATA          0x2a8 0x690 0x000 0x1 0x0
+#define MX6Q_PAD_SD3_DAT7__UART1_RX_DATA          0x2a8 0x690 0x920 0x1 0x2
+#define MX6Q_PAD_SD3_DAT7__GPIO6_IO17             0x2a8 0x690 0x000 0x5 0x0
+#define MX6Q_PAD_SD3_DAT6__SD3_DATA6              0x2ac 0x694 0x000 0x0 0x0
+#define MX6Q_PAD_SD3_DAT6__UART1_RX_DATA          0x2ac 0x694 0x920 0x1 0x3
+#define MX6Q_PAD_SD3_DAT6__UART1_TX_DATA          0x2ac 0x694 0x000 0x1 0x0
+#define MX6Q_PAD_SD3_DAT6__GPIO6_IO18             0x2ac 0x694 0x000 0x5 0x0
+#define MX6Q_PAD_SD3_DAT5__SD3_DATA5              0x2b0 0x698 0x000 0x0 0x0
+#define MX6Q_PAD_SD3_DAT5__UART2_TX_DATA          0x2b0 0x698 0x000 0x1 0x0
+#define MX6Q_PAD_SD3_DAT5__UART2_RX_DATA          0x2b0 0x698 0x928 0x1 0x4
+#define MX6Q_PAD_SD3_DAT5__GPIO7_IO00             0x2b0 0x698 0x000 0x5 0x0
+#define MX6Q_PAD_SD3_DAT4__SD3_DATA4              0x2b4 0x69c 0x000 0x0 0x0
+#define MX6Q_PAD_SD3_DAT4__UART2_RX_DATA          0x2b4 0x69c 0x928 0x1 0x5
+#define MX6Q_PAD_SD3_DAT4__UART2_TX_DATA          0x2b4 0x69c 0x000 0x1 0x0
+#define MX6Q_PAD_SD3_DAT4__GPIO7_IO01             0x2b4 0x69c 0x000 0x5 0x0
+#define MX6Q_PAD_SD3_CMD__SD3_CMD                 0x2b8 0x6a0 0x000 0x0 0x0
+#define MX6Q_PAD_SD3_CMD__UART2_CTS_B             0x2b8 0x6a0 0x000 0x1 0x0
+#define MX6Q_PAD_SD3_CMD__UART2_RTS_B             0x2b8 0x6a0 0x924 0x1 0x2
+#define MX6Q_PAD_SD3_CMD__FLEXCAN1_TX             0x2b8 0x6a0 0x000 0x2 0x0
+#define MX6Q_PAD_SD3_CMD__GPIO7_IO02              0x2b8 0x6a0 0x000 0x5 0x0
+#define MX6Q_PAD_SD3_CLK__SD3_CLK                 0x2bc 0x6a4 0x000 0x0 0x0
+#define MX6Q_PAD_SD3_CLK__UART2_RTS_B             0x2bc 0x6a4 0x924 0x1 0x3
+#define MX6Q_PAD_SD3_CLK__UART2_CTS_B             0x2bc 0x6a4 0x000 0x1 0x0
+#define MX6Q_PAD_SD3_CLK__FLEXCAN1_RX             0x2bc 0x6a4 0x7e4 0x2 0x2
+#define MX6Q_PAD_SD3_CLK__GPIO7_IO03              0x2bc 0x6a4 0x000 0x5 0x0
+#define MX6Q_PAD_SD3_DAT0__SD3_DATA0              0x2c0 0x6a8 0x000 0x0 0x0
+#define MX6Q_PAD_SD3_DAT0__UART1_CTS_B            0x2c0 0x6a8 0x000 0x1 0x0
+#define MX6Q_PAD_SD3_DAT0__UART1_RTS_B            0x2c0 0x6a8 0x91c 0x1 0x2
+#define MX6Q_PAD_SD3_DAT0__FLEXCAN2_TX            0x2c0 0x6a8 0x000 0x2 0x0
+#define MX6Q_PAD_SD3_DAT0__GPIO7_IO04             0x2c0 0x6a8 0x000 0x5 0x0
+#define MX6Q_PAD_SD3_DAT1__SD3_DATA1              0x2c4 0x6ac 0x000 0x0 0x0
+#define MX6Q_PAD_SD3_DAT1__UART1_RTS_B            0x2c4 0x6ac 0x91c 0x1 0x3
+#define MX6Q_PAD_SD3_DAT1__UART1_CTS_B            0x2c4 0x6ac 0x000 0x1 0x0
+#define MX6Q_PAD_SD3_DAT1__FLEXCAN2_RX            0x2c4 0x6ac 0x7e8 0x2 0x1
+#define MX6Q_PAD_SD3_DAT1__GPIO7_IO05             0x2c4 0x6ac 0x000 0x5 0x0
+#define MX6Q_PAD_SD3_DAT2__SD3_DATA2              0x2c8 0x6b0 0x000 0x0 0x0
+#define MX6Q_PAD_SD3_DAT2__GPIO7_IO06             0x2c8 0x6b0 0x000 0x5 0x0
+#define MX6Q_PAD_SD3_DAT3__SD3_DATA3              0x2cc 0x6b4 0x000 0x0 0x0
+#define MX6Q_PAD_SD3_DAT3__UART3_CTS_B            0x2cc 0x6b4 0x000 0x1 0x0
+#define MX6Q_PAD_SD3_DAT3__UART3_RTS_B            0x2cc 0x6b4 0x92c 0x1 0x4
+#define MX6Q_PAD_SD3_DAT3__GPIO7_IO07             0x2cc 0x6b4 0x000 0x5 0x0
+#define MX6Q_PAD_SD3_RST__SD3_RESET               0x2d0 0x6b8 0x000 0x0 0x0
+#define MX6Q_PAD_SD3_RST__UART3_RTS_B             0x2d0 0x6b8 0x92c 0x1 0x5
+#define MX6Q_PAD_SD3_RST__UART3_CTS_B             0x2d0 0x6b8 0x000 0x1 0x0
+#define MX6Q_PAD_SD3_RST__GPIO7_IO08              0x2d0 0x6b8 0x000 0x5 0x0
+#define MX6Q_PAD_NANDF_CLE__NAND_CLE              0x2d4 0x6bc 0x000 0x0 0x0
+#define MX6Q_PAD_NANDF_CLE__IPU2_SISG4            0x2d4 0x6bc 0x000 0x1 0x0
+#define MX6Q_PAD_NANDF_CLE__GPIO6_IO07            0x2d4 0x6bc 0x000 0x5 0x0
+#define MX6Q_PAD_NANDF_ALE__NAND_ALE              0x2d8 0x6c0 0x000 0x0 0x0
+#define MX6Q_PAD_NANDF_ALE__SD4_RESET             0x2d8 0x6c0 0x000 0x1 0x0
+#define MX6Q_PAD_NANDF_ALE__GPIO6_IO08            0x2d8 0x6c0 0x000 0x5 0x0
+#define MX6Q_PAD_NANDF_WP_B__NAND_WP_B            0x2dc 0x6c4 0x000 0x0 0x0
+#define MX6Q_PAD_NANDF_WP_B__IPU2_SISG5           0x2dc 0x6c4 0x000 0x1 0x0
+#define MX6Q_PAD_NANDF_WP_B__GPIO6_IO09           0x2dc 0x6c4 0x000 0x5 0x0
+#define MX6Q_PAD_NANDF_RB0__NAND_READY_B          0x2e0 0x6c8 0x000 0x0 0x0
+#define MX6Q_PAD_NANDF_RB0__IPU2_DI0_PIN01        0x2e0 0x6c8 0x000 0x1 0x0
+#define MX6Q_PAD_NANDF_RB0__GPIO6_IO10            0x2e0 0x6c8 0x000 0x5 0x0
+#define MX6Q_PAD_NANDF_CS0__NAND_CE0_B            0x2e4 0x6cc 0x000 0x0 0x0
+#define MX6Q_PAD_NANDF_CS0__GPIO6_IO11            0x2e4 0x6cc 0x000 0x5 0x0
+#define MX6Q_PAD_NANDF_CS1__NAND_CE1_B            0x2e8 0x6d0 0x000 0x0 0x0
+#define MX6Q_PAD_NANDF_CS1__SD4_VSELECT           0x2e8 0x6d0 0x000 0x1 0x0
+#define MX6Q_PAD_NANDF_CS1__SD3_VSELECT           0x2e8 0x6d0 0x000 0x2 0x0
+#define MX6Q_PAD_NANDF_CS1__GPIO6_IO14            0x2e8 0x6d0 0x000 0x5 0x0
+#define MX6Q_PAD_NANDF_CS2__NAND_CE2_B            0x2ec 0x6d4 0x000 0x0 0x0
+#define MX6Q_PAD_NANDF_CS2__IPU1_SISG0            0x2ec 0x6d4 0x000 0x1 0x0
+#define MX6Q_PAD_NANDF_CS2__ESAI_TX0              0x2ec 0x6d4 0x874 0x2 0x1
+#define MX6Q_PAD_NANDF_CS2__EIM_CRE               0x2ec 0x6d4 0x000 0x3 0x0
+#define MX6Q_PAD_NANDF_CS2__CCM_CLKO2             0x2ec 0x6d4 0x000 0x4 0x0
+#define MX6Q_PAD_NANDF_CS2__GPIO6_IO15            0x2ec 0x6d4 0x000 0x5 0x0
+#define MX6Q_PAD_NANDF_CS2__IPU2_SISG0            0x2ec 0x6d4 0x000 0x6 0x0
+#define MX6Q_PAD_NANDF_CS3__NAND_CE3_B            0x2f0 0x6d8 0x000 0x0 0x0
+#define MX6Q_PAD_NANDF_CS3__IPU1_SISG1            0x2f0 0x6d8 0x000 0x1 0x0
+#define MX6Q_PAD_NANDF_CS3__ESAI_TX1              0x2f0 0x6d8 0x878 0x2 0x1
+#define MX6Q_PAD_NANDF_CS3__EIM_ADDR26            0x2f0 0x6d8 0x000 0x3 0x0
+#define MX6Q_PAD_NANDF_CS3__GPIO6_IO16            0x2f0 0x6d8 0x000 0x5 0x0
+#define MX6Q_PAD_NANDF_CS3__IPU2_SISG1            0x2f0 0x6d8 0x000 0x6 0x0
+#define MX6Q_PAD_SD4_CMD__SD4_CMD                 0x2f4 0x6dc 0x000 0x0 0x0
+#define MX6Q_PAD_SD4_CMD__NAND_RE_B               0x2f4 0x6dc 0x000 0x1 0x0
+#define MX6Q_PAD_SD4_CMD__UART3_TX_DATA           0x2f4 0x6dc 0x000 0x2 0x0
+#define MX6Q_PAD_SD4_CMD__UART3_RX_DATA           0x2f4 0x6dc 0x930 0x2 0x2
+#define MX6Q_PAD_SD4_CMD__GPIO7_IO09              0x2f4 0x6dc 0x000 0x5 0x0
+#define MX6Q_PAD_SD4_CLK__SD4_CLK                 0x2f8 0x6e0 0x000 0x0 0x0
+#define MX6Q_PAD_SD4_CLK__NAND_WE_B               0x2f8 0x6e0 0x000 0x1 0x0
+#define MX6Q_PAD_SD4_CLK__UART3_RX_DATA           0x2f8 0x6e0 0x930 0x2 0x3
+#define MX6Q_PAD_SD4_CLK__UART3_TX_DATA           0x2f8 0x6e0 0x000 0x2 0x0
+#define MX6Q_PAD_SD4_CLK__GPIO7_IO10              0x2f8 0x6e0 0x000 0x5 0x0
+#define MX6Q_PAD_NANDF_D0__NAND_DATA00            0x2fc 0x6e4 0x000 0x0 0x0
+#define MX6Q_PAD_NANDF_D0__SD1_DATA4              0x2fc 0x6e4 0x000 0x1 0x0
+#define MX6Q_PAD_NANDF_D0__GPIO2_IO00             0x2fc 0x6e4 0x000 0x5 0x0
+#define MX6Q_PAD_NANDF_D1__NAND_DATA01            0x300 0x6e8 0x000 0x0 0x0
+#define MX6Q_PAD_NANDF_D1__SD1_DATA5              0x300 0x6e8 0x000 0x1 0x0
+#define MX6Q_PAD_NANDF_D1__GPIO2_IO01             0x300 0x6e8 0x000 0x5 0x0
+#define MX6Q_PAD_NANDF_D2__NAND_DATA02            0x304 0x6ec 0x000 0x0 0x0
+#define MX6Q_PAD_NANDF_D2__SD1_DATA6              0x304 0x6ec 0x000 0x1 0x0
+#define MX6Q_PAD_NANDF_D2__GPIO2_IO02             0x304 0x6ec 0x000 0x5 0x0
+#define MX6Q_PAD_NANDF_D3__NAND_DATA03            0x308 0x6f0 0x000 0x0 0x0
+#define MX6Q_PAD_NANDF_D3__SD1_DATA7              0x308 0x6f0 0x000 0x1 0x0
+#define MX6Q_PAD_NANDF_D3__GPIO2_IO03             0x308 0x6f0 0x000 0x5 0x0
+#define MX6Q_PAD_NANDF_D4__NAND_DATA04            0x30c 0x6f4 0x000 0x0 0x0
+#define MX6Q_PAD_NANDF_D4__SD2_DATA4              0x30c 0x6f4 0x000 0x1 0x0
+#define MX6Q_PAD_NANDF_D4__GPIO2_IO04             0x30c 0x6f4 0x000 0x5 0x0
+#define MX6Q_PAD_NANDF_D5__NAND_DATA05            0x310 0x6f8 0x000 0x0 0x0
+#define MX6Q_PAD_NANDF_D5__SD2_DATA5              0x310 0x6f8 0x000 0x1 0x0
+#define MX6Q_PAD_NANDF_D5__GPIO2_IO05             0x310 0x6f8 0x000 0x5 0x0
+#define MX6Q_PAD_NANDF_D6__NAND_DATA06            0x314 0x6fc 0x000 0x0 0x0
+#define MX6Q_PAD_NANDF_D6__SD2_DATA6              0x314 0x6fc 0x000 0x1 0x0
+#define MX6Q_PAD_NANDF_D6__GPIO2_IO06             0x314 0x6fc 0x000 0x5 0x0
+#define MX6Q_PAD_NANDF_D7__NAND_DATA07            0x318 0x700 0x000 0x0 0x0
+#define MX6Q_PAD_NANDF_D7__SD2_DATA7              0x318 0x700 0x000 0x1 0x0
+#define MX6Q_PAD_NANDF_D7__GPIO2_IO07             0x318 0x700 0x000 0x5 0x0
+#define MX6Q_PAD_SD4_DAT0__SD4_DATA0              0x31c 0x704 0x000 0x1 0x0
+#define MX6Q_PAD_SD4_DAT0__NAND_DQS               0x31c 0x704 0x000 0x2 0x0
+#define MX6Q_PAD_SD4_DAT0__GPIO2_IO08             0x31c 0x704 0x000 0x5 0x0
+#define MX6Q_PAD_SD4_DAT1__SD4_DATA1              0x320 0x708 0x000 0x1 0x0
+#define MX6Q_PAD_SD4_DAT1__PWM3_OUT               0x320 0x708 0x000 0x2 0x0
+#define MX6Q_PAD_SD4_DAT1__GPIO2_IO09             0x320 0x708 0x000 0x5 0x0
+#define MX6Q_PAD_SD4_DAT2__SD4_DATA2              0x324 0x70c 0x000 0x1 0x0
+#define MX6Q_PAD_SD4_DAT2__PWM4_OUT               0x324 0x70c 0x000 0x2 0x0
+#define MX6Q_PAD_SD4_DAT2__GPIO2_IO10             0x324 0x70c 0x000 0x5 0x0
+#define MX6Q_PAD_SD4_DAT3__SD4_DATA3              0x328 0x710 0x000 0x1 0x0
+#define MX6Q_PAD_SD4_DAT3__GPIO2_IO11             0x328 0x710 0x000 0x5 0x0
+#define MX6Q_PAD_SD4_DAT4__SD4_DATA4              0x32c 0x714 0x000 0x1 0x0
+#define MX6Q_PAD_SD4_DAT4__UART2_RX_DATA          0x32c 0x714 0x928 0x2 0x6
+#define MX6Q_PAD_SD4_DAT4__UART2_TX_DATA          0x32c 0x714 0x000 0x2 0x0
+#define MX6Q_PAD_SD4_DAT4__GPIO2_IO12             0x32c 0x714 0x000 0x5 0x0
+#define MX6Q_PAD_SD4_DAT5__SD4_DATA5              0x330 0x718 0x000 0x1 0x0
+#define MX6Q_PAD_SD4_DAT5__UART2_RTS_B            0x330 0x718 0x924 0x2 0x4
+#define MX6Q_PAD_SD4_DAT5__UART2_CTS_B            0x330 0x718 0x000 0x2 0x0
+#define MX6Q_PAD_SD4_DAT5__GPIO2_IO13             0x330 0x718 0x000 0x5 0x0
+#define MX6Q_PAD_SD4_DAT6__SD4_DATA6              0x334 0x71c 0x000 0x1 0x0
+#define MX6Q_PAD_SD4_DAT6__UART2_CTS_B            0x334 0x71c 0x000 0x2 0x0
+#define MX6Q_PAD_SD4_DAT6__UART2_RTS_B            0x334 0x71c 0x924 0x2 0x5
+#define MX6Q_PAD_SD4_DAT6__GPIO2_IO14             0x334 0x71c 0x000 0x5 0x0
+#define MX6Q_PAD_SD4_DAT7__SD4_DATA7              0x338 0x720 0x000 0x1 0x0
+#define MX6Q_PAD_SD4_DAT7__UART2_TX_DATA          0x338 0x720 0x000 0x2 0x0
+#define MX6Q_PAD_SD4_DAT7__UART2_RX_DATA          0x338 0x720 0x928 0x2 0x7
+#define MX6Q_PAD_SD4_DAT7__GPIO2_IO15             0x338 0x720 0x000 0x5 0x0
+#define MX6Q_PAD_SD1_DAT1__SD1_DATA1              0x33c 0x724 0x000 0x0 0x0
+#define MX6Q_PAD_SD1_DAT1__ECSPI5_SS0             0x33c 0x724 0x834 0x1 0x1
+#define MX6Q_PAD_SD1_DAT1__PWM3_OUT               0x33c 0x724 0x000 0x2 0x0
+#define MX6Q_PAD_SD1_DAT1__GPT_CAPTURE2           0x33c 0x724 0x000 0x3 0x0
+#define MX6Q_PAD_SD1_DAT1__GPIO1_IO17             0x33c 0x724 0x000 0x5 0x0
+#define MX6Q_PAD_SD1_DAT0__SD1_DATA0              0x340 0x728 0x000 0x0 0x0
+#define MX6Q_PAD_SD1_DAT0__ECSPI5_MISO            0x340 0x728 0x82c 0x1 0x1
+#define MX6Q_PAD_SD1_DAT0__GPT_CAPTURE1           0x340 0x728 0x000 0x3 0x0
+#define MX6Q_PAD_SD1_DAT0__GPIO1_IO16             0x340 0x728 0x000 0x5 0x0
+#define MX6Q_PAD_SD1_DAT3__SD1_DATA3              0x344 0x72c 0x000 0x0 0x0
+#define MX6Q_PAD_SD1_DAT3__ECSPI5_SS2             0x344 0x72c 0x000 0x1 0x0
+#define MX6Q_PAD_SD1_DAT3__GPT_COMPARE3           0x344 0x72c 0x000 0x2 0x0
+#define MX6Q_PAD_SD1_DAT3__PWM1_OUT               0x344 0x72c 0x000 0x3 0x0
+#define MX6Q_PAD_SD1_DAT3__WDOG2_B                0x344 0x72c 0x000 0x4 0x0
+#define MX6Q_PAD_SD1_DAT3__GPIO1_IO21             0x344 0x72c 0x000 0x5 0x0
+#define MX6Q_PAD_SD1_DAT3__WDOG2_RESET_B_DEB      0x344 0x72c 0x000 0x6 0x0
+#define MX6Q_PAD_SD1_CMD__SD1_CMD                 0x348 0x730 0x000 0x0 0x0
+#define MX6Q_PAD_SD1_CMD__ECSPI5_MOSI             0x348 0x730 0x830 0x1 0x0
+#define MX6Q_PAD_SD1_CMD__PWM4_OUT                0x348 0x730 0x000 0x2 0x0
+#define MX6Q_PAD_SD1_CMD__GPT_COMPARE1            0x348 0x730 0x000 0x3 0x0
+#define MX6Q_PAD_SD1_CMD__GPIO1_IO18              0x348 0x730 0x000 0x5 0x0
+#define MX6Q_PAD_SD1_DAT2__SD1_DATA2              0x34c 0x734 0x000 0x0 0x0
+#define MX6Q_PAD_SD1_DAT2__ECSPI5_SS1             0x34c 0x734 0x838 0x1 0x1
+#define MX6Q_PAD_SD1_DAT2__GPT_COMPARE2           0x34c 0x734 0x000 0x2 0x0
+#define MX6Q_PAD_SD1_DAT2__PWM2_OUT               0x34c 0x734 0x000 0x3 0x0
+#define MX6Q_PAD_SD1_DAT2__WDOG1_B                0x34c 0x734 0x000 0x4 0x0
+#define MX6Q_PAD_SD1_DAT2__GPIO1_IO19             0x34c 0x734 0x000 0x5 0x0
+#define MX6Q_PAD_SD1_DAT2__WDOG1_RESET_B_DEB      0x34c 0x734 0x000 0x6 0x0
+#define MX6Q_PAD_SD1_CLK__SD1_CLK                 0x350 0x738 0x000 0x0 0x0
+#define MX6Q_PAD_SD1_CLK__ECSPI5_SCLK             0x350 0x738 0x828 0x1 0x0
+#define MX6Q_PAD_SD1_CLK__GPT_CLKIN               0x350 0x738 0x000 0x3 0x0
+#define MX6Q_PAD_SD1_CLK__GPIO1_IO20              0x350 0x738 0x000 0x5 0x0
+#define MX6Q_PAD_SD2_CLK__SD2_CLK                 0x354 0x73c 0x000 0x0 0x0
+#define MX6Q_PAD_SD2_CLK__ECSPI5_SCLK             0x354 0x73c 0x828 0x1 0x1
+#define MX6Q_PAD_SD2_CLK__KEY_COL5                0x354 0x73c 0x8e8 0x2 0x3
+#define MX6Q_PAD_SD2_CLK__AUD4_RXFS               0x354 0x73c 0x7c0 0x3 0x1
+#define MX6Q_PAD_SD2_CLK__GPIO1_IO10              0x354 0x73c 0x000 0x5 0x0
+#define MX6Q_PAD_SD2_CMD__SD2_CMD                 0x358 0x740 0x000 0x0 0x0
+#define MX6Q_PAD_SD2_CMD__ECSPI5_MOSI             0x358 0x740 0x830 0x1 0x1
+#define MX6Q_PAD_SD2_CMD__KEY_ROW5                0x358 0x740 0x8f4 0x2 0x2
+#define MX6Q_PAD_SD2_CMD__AUD4_RXC                0x358 0x740 0x7bc 0x3 0x1
+#define MX6Q_PAD_SD2_CMD__GPIO1_IO11              0x358 0x740 0x000 0x5 0x0
+#define MX6Q_PAD_SD2_DAT3__SD2_DATA3              0x35c 0x744 0x000 0x0 0x0
+#define MX6Q_PAD_SD2_DAT3__ECSPI5_SS3             0x35c 0x744 0x000 0x1 0x0
+#define MX6Q_PAD_SD2_DAT3__KEY_COL6               0x35c 0x744 0x8ec 0x2 0x2
+#define MX6Q_PAD_SD2_DAT3__AUD4_TXC               0x35c 0x744 0x7c4 0x3 0x1
+#define MX6Q_PAD_SD2_DAT3__GPIO1_IO12             0x35c 0x744 0x000 0x5 0x0
+
+#endif /* __DTS_IMX6Q_PINFUNC_H */
diff --git a/arch/arm/dts/imx6q.dtsi b/arch/arm/dts/imx6q.dtsi
new file mode 100644
index 0000000..21e6758
--- /dev/null
+++ b/arch/arm/dts/imx6q.dtsi
@@ -0,0 +1,358 @@
+
+/*
+ * Copyright 2013 Freescale Semiconductor, Inc.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ */
+
+#include "imx6qdl.dtsi"
+#include "imx6q-pinfunc.h"
+
+/ {
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu@0 {
+			compatible = "arm,cortex-a9";
+			reg = <0>;
+			next-level-cache = <&L2>;
+			operating-points = <
+				/* kHz    uV */
+				1200000 1275000
+				996000  1250000
+				792000  1150000
+				396000  950000
+			>;
+			clock-latency = <61036>; /* two CLK32 periods */
+			clocks = <&clks 104>, <&clks 6>, <&clks 16>,
+				 <&clks 17>, <&clks 170>;
+			clock-names = "arm", "pll2_pfd2_396m", "step",
+				      "pll1_sw", "pll1_sys";
+			arm-supply = <&reg_arm>;
+			pu-supply = <&reg_pu>;
+			soc-supply = <&reg_soc>;
+		};
+
+		cpu@1 {
+			compatible = "arm,cortex-a9";
+			reg = <1>;
+			next-level-cache = <&L2>;
+		};
+
+		cpu@2 {
+			compatible = "arm,cortex-a9";
+			reg = <2>;
+			next-level-cache = <&L2>;
+		};
+
+		cpu@3 {
+			compatible = "arm,cortex-a9";
+			reg = <3>;
+			next-level-cache = <&L2>;
+		};
+	};
+
+	soc {
+		aips-bus@02000000 { /* AIPS1 */
+			spba-bus@02000000 {
+				ecspi5: ecspi@02018000 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					compatible = "fsl,imx6q-ecspi", "fsl,imx51-ecspi";
+					reg = <0x02018000 0x4000>;
+					interrupts = <0 35 0x04>;
+					clocks = <&clks 116>, <&clks 116>;
+					clock-names = "ipg", "per";
+					status = "disabled";
+				};
+			};
+
+			iomuxc: iomuxc@020e0000 {
+				compatible = "fsl,imx6q-iomuxc";
+				reg = <0x020e0000 0x4000>;
+
+				/* shared pinctrl settings */
+				audmux {
+					pinctrl_audmux_1: audmux-1 {
+						fsl,pins = <
+							MX6Q_PAD_SD2_DAT0__AUD4_RXD  0x80000000
+							MX6Q_PAD_SD2_DAT3__AUD4_TXC  0x80000000
+							MX6Q_PAD_SD2_DAT2__AUD4_TXD  0x80000000
+							MX6Q_PAD_SD2_DAT1__AUD4_TXFS 0x80000000
+						>;
+					};
+
+					pinctrl_audmux_2: audmux-2 {
+						fsl,pins = <
+							MX6Q_PAD_CSI0_DAT7__AUD3_RXD  0x80000000
+							MX6Q_PAD_CSI0_DAT4__AUD3_TXC  0x80000000
+							MX6Q_PAD_CSI0_DAT5__AUD3_TXD  0x80000000
+							MX6Q_PAD_CSI0_DAT6__AUD3_TXFS 0x80000000
+						>;
+					};
+				};
+
+				ecspi1 {
+					pinctrl_ecspi1_1: ecspi1grp-1 {
+						fsl,pins = <
+							MX6Q_PAD_EIM_D17__ECSPI1_MISO 0x100b1
+							MX6Q_PAD_EIM_D18__ECSPI1_MOSI 0x100b1
+							MX6Q_PAD_EIM_D16__ECSPI1_SCLK 0x100b1
+						>;
+					};
+				};
+
+				ecspi3 {
+					pinctrl_ecspi3_1: ecspi3grp-1 {
+						fsl,pins = <
+							MX6Q_PAD_DISP0_DAT2__ECSPI3_MISO 0x100b1
+							MX6Q_PAD_DISP0_DAT1__ECSPI3_MOSI 0x100b1
+							MX6Q_PAD_DISP0_DAT0__ECSPI3_SCLK 0x100b1
+						>;
+					};
+				};
+
+				enet {
+					pinctrl_enet_1: enetgrp-1 {
+						fsl,pins = <
+							MX6Q_PAD_ENET_MDIO__ENET_MDIO       0x1b0b0
+							MX6Q_PAD_ENET_MDC__ENET_MDC         0x1b0b0
+							MX6Q_PAD_RGMII_TXC__RGMII_TXC       0x1b0b0
+							MX6Q_PAD_RGMII_TD0__RGMII_TD0       0x1b0b0
+							MX6Q_PAD_RGMII_TD1__RGMII_TD1       0x1b0b0
+							MX6Q_PAD_RGMII_TD2__RGMII_TD2       0x1b0b0
+							MX6Q_PAD_RGMII_TD3__RGMII_TD3       0x1b0b0
+							MX6Q_PAD_RGMII_TX_CTL__RGMII_TX_CTL 0x1b0b0
+							MX6Q_PAD_ENET_REF_CLK__ENET_TX_CLK  0x1b0b0
+							MX6Q_PAD_RGMII_RXC__RGMII_RXC       0x1b0b0
+							MX6Q_PAD_RGMII_RD0__RGMII_RD0       0x1b0b0
+							MX6Q_PAD_RGMII_RD1__RGMII_RD1       0x1b0b0
+							MX6Q_PAD_RGMII_RD2__RGMII_RD2       0x1b0b0
+							MX6Q_PAD_RGMII_RD3__RGMII_RD3       0x1b0b0
+							MX6Q_PAD_RGMII_RX_CTL__RGMII_RX_CTL 0x1b0b0
+							MX6Q_PAD_GPIO_16__ENET_REF_CLK      0x4001b0a8
+						>;
+					};
+
+					pinctrl_enet_2: enetgrp-2 {
+						fsl,pins = <
+							MX6Q_PAD_KEY_COL1__ENET_MDIO        0x1b0b0
+							MX6Q_PAD_KEY_COL2__ENET_MDC         0x1b0b0
+							MX6Q_PAD_RGMII_TXC__RGMII_TXC       0x1b0b0
+							MX6Q_PAD_RGMII_TD0__RGMII_TD0       0x1b0b0
+							MX6Q_PAD_RGMII_TD1__RGMII_TD1       0x1b0b0
+							MX6Q_PAD_RGMII_TD2__RGMII_TD2       0x1b0b0
+							MX6Q_PAD_RGMII_TD3__RGMII_TD3       0x1b0b0
+							MX6Q_PAD_RGMII_TX_CTL__RGMII_TX_CTL 0x1b0b0
+							MX6Q_PAD_ENET_REF_CLK__ENET_TX_CLK  0x1b0b0
+							MX6Q_PAD_RGMII_RXC__RGMII_RXC       0x1b0b0
+							MX6Q_PAD_RGMII_RD0__RGMII_RD0       0x1b0b0
+							MX6Q_PAD_RGMII_RD1__RGMII_RD1       0x1b0b0
+							MX6Q_PAD_RGMII_RD2__RGMII_RD2       0x1b0b0
+							MX6Q_PAD_RGMII_RD3__RGMII_RD3       0x1b0b0
+							MX6Q_PAD_RGMII_RX_CTL__RGMII_RX_CTL 0x1b0b0
+						>;
+					};
+				};
+
+				gpmi-nand {
+					pinctrl_gpmi_nand_1: gpmi-nand-1 {
+						fsl,pins = <
+							MX6Q_PAD_NANDF_CLE__NAND_CLE     0xb0b1
+							MX6Q_PAD_NANDF_ALE__NAND_ALE     0xb0b1
+							MX6Q_PAD_NANDF_WP_B__NAND_WP_B   0xb0b1
+							MX6Q_PAD_NANDF_RB0__NAND_READY_B 0xb000
+							MX6Q_PAD_NANDF_CS0__NAND_CE0_B   0xb0b1
+							MX6Q_PAD_NANDF_CS1__NAND_CE1_B   0xb0b1
+							MX6Q_PAD_NANDF_CS2__NAND_CE2_B   0xb0b1
+							MX6Q_PAD_NANDF_CS3__NAND_CE3_B   0xb0b1
+							MX6Q_PAD_SD4_CMD__NAND_RE_B      0xb0b1
+							MX6Q_PAD_SD4_CLK__NAND_WE_B      0xb0b1
+							MX6Q_PAD_NANDF_D0__NAND_DATA00   0xb0b1
+							MX6Q_PAD_NANDF_D1__NAND_DATA01   0xb0b1
+							MX6Q_PAD_NANDF_D2__NAND_DATA02   0xb0b1
+							MX6Q_PAD_NANDF_D3__NAND_DATA03   0xb0b1
+							MX6Q_PAD_NANDF_D4__NAND_DATA04   0xb0b1
+							MX6Q_PAD_NANDF_D5__NAND_DATA05   0xb0b1
+							MX6Q_PAD_NANDF_D6__NAND_DATA06   0xb0b1
+							MX6Q_PAD_NANDF_D7__NAND_DATA07   0xb0b1
+							MX6Q_PAD_SD4_DAT0__NAND_DQS      0x00b1
+						>;
+					};
+				};
+
+				i2c1 {
+					pinctrl_i2c1_1: i2c1grp-1 {
+						fsl,pins = <
+							MX6Q_PAD_EIM_D21__I2C1_SCL 0x4001b8b1
+							MX6Q_PAD_EIM_D28__I2C1_SDA 0x4001b8b1
+						>;
+					};
+				};
+
+				i2c2 {
+					pinctrl_i2c2_1: i2c2grp-1 {
+						fsl,pins = <
+							MX6Q_PAD_EIM_EB2__I2C2_SCL 0x4001b8b1
+							MX6Q_PAD_EIM_D16__I2C2_SDA 0x4001b8b1
+						>;
+					};
+				};
+
+				i2c3 {
+					pinctrl_i2c3_1: i2c3grp-1 {
+						fsl,pins = <
+							MX6Q_PAD_EIM_D17__I2C3_SCL 0x4001b8b1
+							MX6Q_PAD_EIM_D18__I2C3_SDA 0x4001b8b1
+						>;
+					};
+				};
+
+				uart1 {
+					pinctrl_uart1_1: uart1grp-1 {
+						fsl,pins = <
+							MX6Q_PAD_CSI0_DAT10__UART1_TX_DATA 0x1b0b1
+							MX6Q_PAD_CSI0_DAT11__UART1_RX_DATA 0x1b0b1
+						>;
+					};
+				};
+
+				uart2 {
+					pinctrl_uart2_1: uart2grp-1 {
+						fsl,pins = <
+							MX6Q_PAD_EIM_D26__UART2_TX_DATA 0x1b0b1
+							MX6Q_PAD_EIM_D27__UART2_RX_DATA 0x1b0b1
+						>;
+					};
+				};
+
+				uart4 {
+					pinctrl_uart4_1: uart4grp-1 {
+						fsl,pins = <
+							MX6Q_PAD_KEY_COL0__UART4_TX_DATA 0x1b0b1
+							MX6Q_PAD_KEY_ROW0__UART4_RX_DATA 0x1b0b1
+						>;
+					};
+				};
+
+				usbotg {
+					pinctrl_usbotg_1: usbotggrp-1 {
+						fsl,pins = <
+							MX6Q_PAD_GPIO_1__USB_OTG_ID 0x17059
+						>;
+					};
+
+					pinctrl_usbotg_2: usbotggrp-2 {
+						fsl,pins = <
+							MX6Q_PAD_ENET_RX_ER__USB_OTG_ID 0x17059
+						>;
+					};
+				};
+
+				usdhc2 {
+					pinctrl_usdhc2_1: usdhc2grp-1 {
+						fsl,pins = <
+							MX6Q_PAD_SD2_CMD__SD2_CMD    0x17059
+							MX6Q_PAD_SD2_CLK__SD2_CLK    0x10059
+							MX6Q_PAD_SD2_DAT0__SD2_DATA0 0x17059
+							MX6Q_PAD_SD2_DAT1__SD2_DATA1 0x17059
+							MX6Q_PAD_SD2_DAT2__SD2_DATA2 0x17059
+							MX6Q_PAD_SD2_DAT3__SD2_DATA3 0x17059
+							MX6Q_PAD_NANDF_D4__SD2_DATA4 0x17059
+							MX6Q_PAD_NANDF_D5__SD2_DATA5 0x17059
+							MX6Q_PAD_NANDF_D6__SD2_DATA6 0x17059
+							MX6Q_PAD_NANDF_D7__SD2_DATA7 0x17059
+						>;
+					};
+				};
+
+				usdhc3 {
+					pinctrl_usdhc3_1: usdhc3grp-1 {
+						fsl,pins = <
+							MX6Q_PAD_SD3_CMD__SD3_CMD    0x17059
+							MX6Q_PAD_SD3_CLK__SD3_CLK    0x10059
+							MX6Q_PAD_SD3_DAT0__SD3_DATA0 0x17059
+							MX6Q_PAD_SD3_DAT1__SD3_DATA1 0x17059
+							MX6Q_PAD_SD3_DAT2__SD3_DATA2 0x17059
+							MX6Q_PAD_SD3_DAT3__SD3_DATA3 0x17059
+							MX6Q_PAD_SD3_DAT4__SD3_DATA4 0x17059
+							MX6Q_PAD_SD3_DAT5__SD3_DATA5 0x17059
+							MX6Q_PAD_SD3_DAT6__SD3_DATA6 0x17059
+							MX6Q_PAD_SD3_DAT7__SD3_DATA7 0x17059
+						>;
+					};
+
+					pinctrl_usdhc3_2: usdhc3grp-2 {
+						fsl,pins = <
+							MX6Q_PAD_SD3_CMD__SD3_CMD    0x17059
+							MX6Q_PAD_SD3_CLK__SD3_CLK    0x10059
+							MX6Q_PAD_SD3_DAT0__SD3_DATA0 0x17059
+							MX6Q_PAD_SD3_DAT1__SD3_DATA1 0x17059
+							MX6Q_PAD_SD3_DAT2__SD3_DATA2 0x17059
+							MX6Q_PAD_SD3_DAT3__SD3_DATA3 0x17059
+						>;
+					};
+				};
+
+				usdhc4 {
+					pinctrl_usdhc4_1: usdhc4grp-1 {
+						fsl,pins = <
+							MX6Q_PAD_SD4_CMD__SD4_CMD    0x17059
+							MX6Q_PAD_SD4_CLK__SD4_CLK    0x10059
+							MX6Q_PAD_SD4_DAT0__SD4_DATA0 0x17059
+							MX6Q_PAD_SD4_DAT1__SD4_DATA1 0x17059
+							MX6Q_PAD_SD4_DAT2__SD4_DATA2 0x17059
+							MX6Q_PAD_SD4_DAT3__SD4_DATA3 0x17059
+							MX6Q_PAD_SD4_DAT4__SD4_DATA4 0x17059
+							MX6Q_PAD_SD4_DAT5__SD4_DATA5 0x17059
+							MX6Q_PAD_SD4_DAT6__SD4_DATA6 0x17059
+							MX6Q_PAD_SD4_DAT7__SD4_DATA7 0x17059
+						>;
+					};
+
+					pinctrl_usdhc4_2: usdhc4grp-2 {
+						fsl,pins = <
+							MX6Q_PAD_SD4_CMD__SD4_CMD    0x17059
+							MX6Q_PAD_SD4_CLK__SD4_CLK    0x10059
+							MX6Q_PAD_SD4_DAT0__SD4_DATA0 0x17059
+							MX6Q_PAD_SD4_DAT1__SD4_DATA1 0x17059
+							MX6Q_PAD_SD4_DAT2__SD4_DATA2 0x17059
+							MX6Q_PAD_SD4_DAT3__SD4_DATA3 0x17059
+						>;
+					};
+				};
+			};
+		};
+
+		ipu2: ipu@02800000 {
+			#crtc-cells = <1>;
+			compatible = "fsl,imx6q-ipu";
+			reg = <0x02800000 0x400000>;
+			interrupts = <0 8 0x4 0 7 0x4>;
+			clocks = <&clks 133>, <&clks 134>, <&clks 137>;
+			clock-names = "bus", "di0", "di1";
+			resets = <&src 4>;
+		};
+	};
+};
+
+&ldb {
+	clocks = <&clks 33>, <&clks 34>,
+		 <&clks 39>, <&clks 40>, <&clks 41>, <&clks 42>,
+		 <&clks 135>, <&clks 136>;
+	clock-names = "di0_pll", "di1_pll",
+		      "di0_sel", "di1_sel", "di2_sel", "di3_sel",
+		      "di0", "di1";
+
+	lvds-channel@0 {
+		crtcs = <&ipu1 0>, <&ipu1 1>, <&ipu2 0>, <&ipu2 1>;
+	};
+
+	lvds-channel@1 {
+		crtcs = <&ipu1 0>, <&ipu1 1>, <&ipu2 0>, <&ipu2 1>;
+	};
+};
diff --git a/arch/arm/dts/imx6qdl.dtsi b/arch/arm/dts/imx6qdl.dtsi
new file mode 100644
index 0000000..9e8296e
--- /dev/null
+++ b/arch/arm/dts/imx6qdl.dtsi
@@ -0,0 +1,836 @@
+/*
+ * Copyright 2011 Freescale Semiconductor, Inc.
+ * Copyright 2011 Linaro Ltd.
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+#include "skeleton.dtsi"
+
+/ {
+	aliases {
+		serial0 = &uart1;
+		serial1 = &uart2;
+		serial2 = &uart3;
+		serial3 = &uart4;
+		serial4 = &uart5;
+		gpio0 = &gpio1;
+		gpio1 = &gpio2;
+		gpio2 = &gpio3;
+		gpio3 = &gpio4;
+		gpio4 = &gpio5;
+		gpio5 = &gpio6;
+		gpio6 = &gpio7;
+	};
+
+	intc: interrupt-controller@00a01000 {
+		compatible = "arm,cortex-a9-gic";
+		#interrupt-cells = <3>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		interrupt-controller;
+		reg = <0x00a01000 0x1000>,
+		      <0x00a00100 0x100>;
+	};
+
+	clocks {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ckil {
+			compatible = "fsl,imx-ckil", "fixed-clock";
+			clock-frequency = <32768>;
+		};
+
+		ckih1 {
+			compatible = "fsl,imx-ckih1", "fixed-clock";
+			clock-frequency = <0>;
+		};
+
+		osc {
+			compatible = "fsl,imx-osc", "fixed-clock";
+			clock-frequency = <24000000>;
+		};
+	};
+
+	soc {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "simple-bus";
+		interrupt-parent = <&intc>;
+		ranges;
+
+		dma_apbh: dma-apbh@00110000 {
+			compatible = "fsl,imx6q-dma-apbh", "fsl,imx28-dma-apbh";
+			reg = <0x00110000 0x2000>;
+			interrupts = <0 13 0x04>, <0 13 0x04>, <0 13 0x04>, <0 13 0x04>;
+			interrupt-names = "gpmi0", "gpmi1", "gpmi2", "gpmi3";
+			#dma-cells = <1>;
+			dma-channels = <4>;
+			clocks = <&clks 106>;
+		};
+
+		gpmi: gpmi-nand@00112000 {
+			compatible = "fsl,imx6q-gpmi-nand";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			reg = <0x00112000 0x2000>, <0x00114000 0x2000>;
+			reg-names = "gpmi-nand", "bch";
+			interrupts = <0 13 0x04>, <0 15 0x04>;
+			interrupt-names = "gpmi-dma", "bch";
+			clocks = <&clks 152>, <&clks 153>, <&clks 151>,
+				 <&clks 150>, <&clks 149>;
+			clock-names = "gpmi_io", "gpmi_apb", "gpmi_bch",
+				      "gpmi_bch_apb", "per1_bch";
+			dmas = <&dma_apbh 0>;
+			dma-names = "rx-tx";
+			fsl,gpmi-dma-channel = <0>;
+			status = "disabled";
+		};
+
+		timer@00a00600 {
+			compatible = "arm,cortex-a9-twd-timer";
+			reg = <0x00a00600 0x20>;
+			interrupts = <1 13 0xf01>;
+			clocks = <&clks 15>;
+		};
+
+		L2: l2-cache@00a02000 {
+			compatible = "arm,pl310-cache";
+			reg = <0x00a02000 0x1000>;
+			interrupts = <0 92 0x04>;
+			cache-unified;
+			cache-level = <2>;
+		};
+
+		pmu {
+			compatible = "arm,cortex-a9-pmu";
+			interrupts = <0 94 0x04>;
+		};
+
+		aips-bus@02000000 { /* AIPS1 */
+			compatible = "fsl,aips-bus", "simple-bus";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			reg = <0x02000000 0x100000>;
+			ranges;
+
+			spba-bus@02000000 {
+				compatible = "fsl,spba-bus", "simple-bus";
+				#address-cells = <1>;
+				#size-cells = <1>;
+				reg = <0x02000000 0x40000>;
+				ranges;
+
+				spdif: spdif@02004000 {
+					reg = <0x02004000 0x4000>;
+					interrupts = <0 52 0x04>;
+				};
+
+				ecspi1: ecspi@02008000 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					compatible = "fsl,imx6q-ecspi", "fsl,imx51-ecspi";
+					reg = <0x02008000 0x4000>;
+					interrupts = <0 31 0x04>;
+					clocks = <&clks 112>, <&clks 112>;
+					clock-names = "ipg", "per";
+					status = "disabled";
+				};
+
+				ecspi2: ecspi@0200c000 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					compatible = "fsl,imx6q-ecspi", "fsl,imx51-ecspi";
+					reg = <0x0200c000 0x4000>;
+					interrupts = <0 32 0x04>;
+					clocks = <&clks 113>, <&clks 113>;
+					clock-names = "ipg", "per";
+					status = "disabled";
+				};
+
+				ecspi3: ecspi@02010000 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					compatible = "fsl,imx6q-ecspi", "fsl,imx51-ecspi";
+					reg = <0x02010000 0x4000>;
+					interrupts = <0 33 0x04>;
+					clocks = <&clks 114>, <&clks 114>;
+					clock-names = "ipg", "per";
+					status = "disabled";
+				};
+
+				ecspi4: ecspi@02014000 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					compatible = "fsl,imx6q-ecspi", "fsl,imx51-ecspi";
+					reg = <0x02014000 0x4000>;
+					interrupts = <0 34 0x04>;
+					clocks = <&clks 115>, <&clks 115>;
+					clock-names = "ipg", "per";
+					status = "disabled";
+				};
+
+				uart1: serial@02020000 {
+					compatible = "fsl,imx6q-uart", "fsl,imx21-uart";
+					reg = <0x02020000 0x4000>;
+					interrupts = <0 26 0x04>;
+					clocks = <&clks 160>, <&clks 161>;
+					clock-names = "ipg", "per";
+					status = "disabled";
+				};
+
+				esai: esai@02024000 {
+					reg = <0x02024000 0x4000>;
+					interrupts = <0 51 0x04>;
+				};
+
+				ssi1: ssi@02028000 {
+					compatible = "fsl,imx6q-ssi","fsl,imx21-ssi";
+					reg = <0x02028000 0x4000>;
+					interrupts = <0 46 0x04>;
+					clocks = <&clks 178>;
+					fsl,fifo-depth = <15>;
+					fsl,ssi-dma-events = <38 37>;
+					status = "disabled";
+				};
+
+				ssi2: ssi@0202c000 {
+					compatible = "fsl,imx6q-ssi","fsl,imx21-ssi";
+					reg = <0x0202c000 0x4000>;
+					interrupts = <0 47 0x04>;
+					clocks = <&clks 179>;
+					fsl,fifo-depth = <15>;
+					fsl,ssi-dma-events = <42 41>;
+					status = "disabled";
+				};
+
+				ssi3: ssi@02030000 {
+					compatible = "fsl,imx6q-ssi","fsl,imx21-ssi";
+					reg = <0x02030000 0x4000>;
+					interrupts = <0 48 0x04>;
+					clocks = <&clks 180>;
+					fsl,fifo-depth = <15>;
+					fsl,ssi-dma-events = <46 45>;
+					status = "disabled";
+				};
+
+				asrc: asrc@02034000 {
+					reg = <0x02034000 0x4000>;
+					interrupts = <0 50 0x04>;
+				};
+
+				spba@0203c000 {
+					reg = <0x0203c000 0x4000>;
+				};
+			};
+
+			vpu: vpu@02040000 {
+				reg = <0x02040000 0x3c000>;
+				interrupts = <0 3 0x04 0 12 0x04>;
+			};
+
+			aipstz@0207c000 { /* AIPSTZ1 */
+				reg = <0x0207c000 0x4000>;
+			};
+
+			pwm1: pwm@02080000 {
+				#pwm-cells = <2>;
+				compatible = "fsl,imx6q-pwm", "fsl,imx27-pwm";
+				reg = <0x02080000 0x4000>;
+				interrupts = <0 83 0x04>;
+				clocks = <&clks 62>, <&clks 145>;
+				clock-names = "ipg", "per";
+			};
+
+			pwm2: pwm@02084000 {
+				#pwm-cells = <2>;
+				compatible = "fsl,imx6q-pwm", "fsl,imx27-pwm";
+				reg = <0x02084000 0x4000>;
+				interrupts = <0 84 0x04>;
+				clocks = <&clks 62>, <&clks 146>;
+				clock-names = "ipg", "per";
+			};
+
+			pwm3: pwm@02088000 {
+				#pwm-cells = <2>;
+				compatible = "fsl,imx6q-pwm", "fsl,imx27-pwm";
+				reg = <0x02088000 0x4000>;
+				interrupts = <0 85 0x04>;
+				clocks = <&clks 62>, <&clks 147>;
+				clock-names = "ipg", "per";
+			};
+
+			pwm4: pwm@0208c000 {
+				#pwm-cells = <2>;
+				compatible = "fsl,imx6q-pwm", "fsl,imx27-pwm";
+				reg = <0x0208c000 0x4000>;
+				interrupts = <0 86 0x04>;
+				clocks = <&clks 62>, <&clks 148>;
+				clock-names = "ipg", "per";
+			};
+
+			can1: flexcan@02090000 {
+				reg = <0x02090000 0x4000>;
+				interrupts = <0 110 0x04>;
+			};
+
+			can2: flexcan@02094000 {
+				reg = <0x02094000 0x4000>;
+				interrupts = <0 111 0x04>;
+			};
+
+			gpt: gpt@02098000 {
+				compatible = "fsl,imx6q-gpt";
+				reg = <0x02098000 0x4000>;
+				interrupts = <0 55 0x04>;
+				clocks = <&clks 119>, <&clks 120>;
+				clock-names = "ipg", "per";
+			};
+
+			gpio1: gpio@0209c000 {
+				compatible = "fsl,imx6q-gpio", "fsl,imx35-gpio";
+				reg = <0x0209c000 0x4000>;
+				interrupts = <0 66 0x04 0 67 0x04>;
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+			};
+
+			gpio2: gpio@020a0000 {
+				compatible = "fsl,imx6q-gpio", "fsl,imx35-gpio";
+				reg = <0x020a0000 0x4000>;
+				interrupts = <0 68 0x04 0 69 0x04>;
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+			};
+
+			gpio3: gpio@020a4000 {
+				compatible = "fsl,imx6q-gpio", "fsl,imx35-gpio";
+				reg = <0x020a4000 0x4000>;
+				interrupts = <0 70 0x04 0 71 0x04>;
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+			};
+
+			gpio4: gpio@020a8000 {
+				compatible = "fsl,imx6q-gpio", "fsl,imx35-gpio";
+				reg = <0x020a8000 0x4000>;
+				interrupts = <0 72 0x04 0 73 0x04>;
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+			};
+
+			gpio5: gpio@020ac000 {
+				compatible = "fsl,imx6q-gpio", "fsl,imx35-gpio";
+				reg = <0x020ac000 0x4000>;
+				interrupts = <0 74 0x04 0 75 0x04>;
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+			};
+
+			gpio6: gpio@020b0000 {
+				compatible = "fsl,imx6q-gpio", "fsl,imx35-gpio";
+				reg = <0x020b0000 0x4000>;
+				interrupts = <0 76 0x04 0 77 0x04>;
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+			};
+
+			gpio7: gpio@020b4000 {
+				compatible = "fsl,imx6q-gpio", "fsl,imx35-gpio";
+				reg = <0x020b4000 0x4000>;
+				interrupts = <0 78 0x04 0 79 0x04>;
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+			};
+
+			kpp: kpp@020b8000 {
+				reg = <0x020b8000 0x4000>;
+				interrupts = <0 82 0x04>;
+			};
+
+			wdog1: wdog@020bc000 {
+				compatible = "fsl,imx6q-wdt", "fsl,imx21-wdt";
+				reg = <0x020bc000 0x4000>;
+				interrupts = <0 80 0x04>;
+				clocks = <&clks 0>;
+			};
+
+			wdog2: wdog@020c0000 {
+				compatible = "fsl,imx6q-wdt", "fsl,imx21-wdt";
+				reg = <0x020c0000 0x4000>;
+				interrupts = <0 81 0x04>;
+				clocks = <&clks 0>;
+				status = "disabled";
+			};
+
+			clks: ccm@020c4000 {
+				compatible = "fsl,imx6q-ccm";
+				reg = <0x020c4000 0x4000>;
+				interrupts = <0 87 0x04 0 88 0x04>;
+				#clock-cells = <1>;
+			};
+
+			anatop: anatop@020c8000 {
+				compatible = "fsl,imx6q-anatop", "syscon", "simple-bus";
+				reg = <0x020c8000 0x1000>;
+				interrupts = <0 49 0x04 0 54 0x04 0 127 0x04>;
+
+				regulator-1p1@110 {
+					compatible = "fsl,anatop-regulator";
+					regulator-name = "vdd1p1";
+					regulator-min-microvolt = <800000>;
+					regulator-max-microvolt = <1375000>;
+					regulator-always-on;
+					anatop-reg-offset = <0x110>;
+					anatop-vol-bit-shift = <8>;
+					anatop-vol-bit-width = <5>;
+					anatop-min-bit-val = <4>;
+					anatop-min-voltage = <800000>;
+					anatop-max-voltage = <1375000>;
+				};
+
+				regulator-3p0@120 {
+					compatible = "fsl,anatop-regulator";
+					regulator-name = "vdd3p0";
+					regulator-min-microvolt = <2800000>;
+					regulator-max-microvolt = <3150000>;
+					regulator-always-on;
+					anatop-reg-offset = <0x120>;
+					anatop-vol-bit-shift = <8>;
+					anatop-vol-bit-width = <5>;
+					anatop-min-bit-val = <0>;
+					anatop-min-voltage = <2625000>;
+					anatop-max-voltage = <3400000>;
+				};
+
+				regulator-2p5@130 {
+					compatible = "fsl,anatop-regulator";
+					regulator-name = "vdd2p5";
+					regulator-min-microvolt = <2000000>;
+					regulator-max-microvolt = <2750000>;
+					regulator-always-on;
+					anatop-reg-offset = <0x130>;
+					anatop-vol-bit-shift = <8>;
+					anatop-vol-bit-width = <5>;
+					anatop-min-bit-val = <0>;
+					anatop-min-voltage = <2000000>;
+					anatop-max-voltage = <2750000>;
+				};
+
+				reg_arm: regulator-vddcore@140 {
+					compatible = "fsl,anatop-regulator";
+					regulator-name = "cpu";
+					regulator-min-microvolt = <725000>;
+					regulator-max-microvolt = <1450000>;
+					regulator-always-on;
+					anatop-reg-offset = <0x140>;
+					anatop-vol-bit-shift = <0>;
+					anatop-vol-bit-width = <5>;
+					anatop-delay-reg-offset = <0x170>;
+					anatop-delay-bit-shift = <24>;
+					anatop-delay-bit-width = <2>;
+					anatop-min-bit-val = <1>;
+					anatop-min-voltage = <725000>;
+					anatop-max-voltage = <1450000>;
+				};
+
+				reg_pu: regulator-vddpu@140 {
+					compatible = "fsl,anatop-regulator";
+					regulator-name = "vddpu";
+					regulator-min-microvolt = <725000>;
+					regulator-max-microvolt = <1450000>;
+					regulator-always-on;
+					anatop-reg-offset = <0x140>;
+					anatop-vol-bit-shift = <9>;
+					anatop-vol-bit-width = <5>;
+					anatop-delay-reg-offset = <0x170>;
+					anatop-delay-bit-shift = <26>;
+					anatop-delay-bit-width = <2>;
+					anatop-min-bit-val = <1>;
+					anatop-min-voltage = <725000>;
+					anatop-max-voltage = <1450000>;
+				};
+
+				reg_soc: regulator-vddsoc@140 {
+					compatible = "fsl,anatop-regulator";
+					regulator-name = "vddsoc";
+					regulator-min-microvolt = <725000>;
+					regulator-max-microvolt = <1450000>;
+					regulator-always-on;
+					anatop-reg-offset = <0x140>;
+					anatop-vol-bit-shift = <18>;
+					anatop-vol-bit-width = <5>;
+					anatop-delay-reg-offset = <0x170>;
+					anatop-delay-bit-shift = <28>;
+					anatop-delay-bit-width = <2>;
+					anatop-min-bit-val = <1>;
+					anatop-min-voltage = <725000>;
+					anatop-max-voltage = <1450000>;
+				};
+			};
+
+			usbphy1: usbphy@020c9000 {
+				compatible = "fsl,imx6q-usbphy", "fsl,imx23-usbphy";
+				reg = <0x020c9000 0x1000>;
+				interrupts = <0 44 0x04>;
+				clocks = <&clks 182>;
+			};
+
+			usbphy2: usbphy@020ca000 {
+				compatible = "fsl,imx6q-usbphy", "fsl,imx23-usbphy";
+				reg = <0x020ca000 0x1000>;
+				interrupts = <0 45 0x04>;
+				clocks = <&clks 183>;
+			};
+
+			snvs@020cc000 {
+				compatible = "fsl,sec-v4.0-mon", "simple-bus";
+				#address-cells = <1>;
+				#size-cells = <1>;
+				ranges = <0 0x020cc000 0x4000>;
+
+				snvs-rtc-lp@34 {
+					compatible = "fsl,sec-v4.0-mon-rtc-lp";
+					reg = <0x34 0x58>;
+					interrupts = <0 19 0x04 0 20 0x04>;
+				};
+			};
+
+			epit1: epit@020d0000 { /* EPIT1 */
+				reg = <0x020d0000 0x4000>;
+				interrupts = <0 56 0x04>;
+			};
+
+			epit2: epit@020d4000 { /* EPIT2 */
+				reg = <0x020d4000 0x4000>;
+				interrupts = <0 57 0x04>;
+			};
+
+			src: src@020d8000 {
+				compatible = "fsl,imx6q-src", "fsl,imx51-src";
+				reg = <0x020d8000 0x4000>;
+				interrupts = <0 91 0x04 0 96 0x04>;
+				#reset-cells = <1>;
+			};
+
+			gpc: gpc@020dc000 {
+				compatible = "fsl,imx6q-gpc";
+				reg = <0x020dc000 0x4000>;
+				interrupts = <0 89 0x04 0 90 0x04>;
+			};
+
+			gpr: iomuxc-gpr@020e0000 {
+				compatible = "fsl,imx6q-iomuxc-gpr", "syscon";
+				reg = <0x020e0000 0x38>;
+			};
+
+			ldb: ldb@020e0008 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				compatible = "fsl,imx6q-ldb", "fsl,imx53-ldb";
+				gpr = <&gpr>;
+				status = "disabled";
+
+				lvds-channel@0 {
+					reg = <0>;
+					crtcs = <&ipu1 0>;
+					status = "disabled";
+				};
+
+				lvds-channel@1 {
+					reg = <1>;
+					crtcs = <&ipu1 1>;
+					status = "disabled";
+				};
+			};
+
+			dcic1: dcic@020e4000 {
+				reg = <0x020e4000 0x4000>;
+				interrupts = <0 124 0x04>;
+			};
+
+			dcic2: dcic@020e8000 {
+				reg = <0x020e8000 0x4000>;
+				interrupts = <0 125 0x04>;
+			};
+
+			sdma: sdma@020ec000 {
+				compatible = "fsl,imx6q-sdma", "fsl,imx35-sdma";
+				reg = <0x020ec000 0x4000>;
+				interrupts = <0 2 0x04>;
+				clocks = <&clks 155>, <&clks 155>;
+				clock-names = "ipg", "ahb";
+				fsl,sdma-ram-script-name = "imx/sdma/sdma-imx6q.bin";
+			};
+		};
+
+		aips-bus@02100000 { /* AIPS2 */
+			compatible = "fsl,aips-bus", "simple-bus";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			reg = <0x02100000 0x100000>;
+			ranges;
+
+			caam@02100000 {
+				reg = <0x02100000 0x40000>;
+				interrupts = <0 105 0x04 0 106 0x04>;
+			};
+
+			aipstz@0217c000 { /* AIPSTZ2 */
+				reg = <0x0217c000 0x4000>;
+			};
+
+			usbotg: usb@02184000 {
+				compatible = "fsl,imx6q-usb", "fsl,imx27-usb";
+				reg = <0x02184000 0x200>;
+				interrupts = <0 43 0x04>;
+				clocks = <&clks 162>;
+				fsl,usbphy = <&usbphy1>;
+				fsl,usbmisc = <&usbmisc 0>;
+				status = "disabled";
+			};
+
+			usbh1: usb@02184200 {
+				compatible = "fsl,imx6q-usb", "fsl,imx27-usb";
+				reg = <0x02184200 0x200>;
+				interrupts = <0 40 0x04>;
+				clocks = <&clks 162>;
+				fsl,usbphy = <&usbphy2>;
+				fsl,usbmisc = <&usbmisc 1>;
+				status = "disabled";
+			};
+
+			usbh2: usb@02184400 {
+				compatible = "fsl,imx6q-usb", "fsl,imx27-usb";
+				reg = <0x02184400 0x200>;
+				interrupts = <0 41 0x04>;
+				clocks = <&clks 162>;
+				fsl,usbmisc = <&usbmisc 2>;
+				status = "disabled";
+			};
+
+			usbh3: usb@02184600 {
+				compatible = "fsl,imx6q-usb", "fsl,imx27-usb";
+				reg = <0x02184600 0x200>;
+				interrupts = <0 42 0x04>;
+				clocks = <&clks 162>;
+				fsl,usbmisc = <&usbmisc 3>;
+				status = "disabled";
+			};
+
+			usbmisc: usbmisc: usbmisc@02184800 {
+				#index-cells = <1>;
+				compatible = "fsl,imx6q-usbmisc";
+				reg = <0x02184800 0x200>;
+				clocks = <&clks 162>;
+			};
+
+			fec: ethernet@02188000 {
+				compatible = "fsl,imx6q-fec";
+				reg = <0x02188000 0x4000>;
+				interrupts = <0 118 0x04 0 119 0x04>;
+				clocks = <&clks 117>, <&clks 117>, <&clks 190>;
+				clock-names = "ipg", "ahb", "ptp";
+				status = "disabled";
+			};
+
+			mlb@0218c000 {
+				reg = <0x0218c000 0x4000>;
+				interrupts = <0 53 0x04 0 117 0x04 0 126 0x04>;
+			};
+
+			usdhc1: usdhc@02190000 {
+				compatible = "fsl,imx6q-usdhc";
+				reg = <0x02190000 0x4000>;
+				interrupts = <0 22 0x04>;
+				clocks = <&clks 163>, <&clks 163>, <&clks 163>;
+				clock-names = "ipg", "ahb", "per";
+				bus-width = <4>;
+				status = "disabled";
+			};
+
+			usdhc2: usdhc@02194000 {
+				compatible = "fsl,imx6q-usdhc";
+				reg = <0x02194000 0x4000>;
+				interrupts = <0 23 0x04>;
+				clocks = <&clks 164>, <&clks 164>, <&clks 164>;
+				clock-names = "ipg", "ahb", "per";
+				bus-width = <4>;
+				status = "disabled";
+			};
+
+			usdhc3: usdhc@02198000 {
+				compatible = "fsl,imx6q-usdhc";
+				reg = <0x02198000 0x4000>;
+				interrupts = <0 24 0x04>;
+				clocks = <&clks 165>, <&clks 165>, <&clks 165>;
+				clock-names = "ipg", "ahb", "per";
+				bus-width = <4>;
+				status = "disabled";
+			};
+
+			usdhc4: usdhc@0219c000 {
+				compatible = "fsl,imx6q-usdhc";
+				reg = <0x0219c000 0x4000>;
+				interrupts = <0 25 0x04>;
+				clocks = <&clks 166>, <&clks 166>, <&clks 166>;
+				clock-names = "ipg", "ahb", "per";
+				bus-width = <4>;
+				status = "disabled";
+			};
+
+			i2c1: i2c@021a0000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				compatible = "fsl,imx6q-i2c", "fsl,imx21-i2c";
+				reg = <0x021a0000 0x4000>;
+				interrupts = <0 36 0x04>;
+				clocks = <&clks 125>;
+				status = "disabled";
+			};
+
+			i2c2: i2c@021a4000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				compatible = "fsl,imx6q-i2c", "fsl,imx21-i2c";
+				reg = <0x021a4000 0x4000>;
+				interrupts = <0 37 0x04>;
+				clocks = <&clks 126>;
+				status = "disabled";
+			};
+
+			i2c3: i2c@021a8000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				compatible = "fsl,imx6q-i2c", "fsl,imx21-i2c";
+				reg = <0x021a8000 0x4000>;
+				interrupts = <0 38 0x04>;
+				clocks = <&clks 127>;
+				status = "disabled";
+			};
+
+			romcp@021ac000 {
+				reg = <0x021ac000 0x4000>;
+			};
+
+			mmdc0: mmdc@021b0000 { /* MMDC0 */
+				compatible = "fsl,imx6q-mmdc";
+				reg = <0x021b0000 0x4000>;
+			};
+
+			mmdc1: mmdc@021b4000 { /* MMDC1 */
+				reg = <0x021b4000 0x4000>;
+			};
+
+			weim@021b8000 {
+				reg = <0x021b8000 0x4000>;
+				interrupts = <0 14 0x04>;
+			};
+
+			ocotp@021bc000 {
+				compatible = "fsl,imx6q-ocotp";
+				reg = <0x021bc000 0x4000>;
+			};
+
+			ocotp@021c0000 {
+				reg = <0x021c0000 0x4000>;
+				interrupts = <0 21 0x04>;
+			};
+
+			tzasc@021d0000 { /* TZASC1 */
+				reg = <0x021d0000 0x4000>;
+				interrupts = <0 108 0x04>;
+			};
+
+			tzasc@021d4000 { /* TZASC2 */
+				reg = <0x021d4000 0x4000>;
+				interrupts = <0 109 0x04>;
+			};
+
+			audmux: audmux@021d8000 {
+				compatible = "fsl,imx6q-audmux", "fsl,imx31-audmux";
+				reg = <0x021d8000 0x4000>;
+				status = "disabled";
+			};
+
+			mipi@021dc000 { /* MIPI-CSI */
+				reg = <0x021dc000 0x4000>;
+			};
+
+			mipi@021e0000 { /* MIPI-DSI */
+				reg = <0x021e0000 0x4000>;
+			};
+
+			vdoa@021e4000 {
+				reg = <0x021e4000 0x4000>;
+				interrupts = <0 18 0x04>;
+			};
+
+			uart2: serial@021e8000 {
+				compatible = "fsl,imx6q-uart", "fsl,imx21-uart";
+				reg = <0x021e8000 0x4000>;
+				interrupts = <0 27 0x04>;
+				clocks = <&clks 160>, <&clks 161>;
+				clock-names = "ipg", "per";
+				status = "disabled";
+			};
+
+			uart3: serial@021ec000 {
+				compatible = "fsl,imx6q-uart", "fsl,imx21-uart";
+				reg = <0x021ec000 0x4000>;
+				interrupts = <0 28 0x04>;
+				clocks = <&clks 160>, <&clks 161>;
+				clock-names = "ipg", "per";
+				status = "disabled";
+			};
+
+			uart4: serial@021f0000 {
+				compatible = "fsl,imx6q-uart", "fsl,imx21-uart";
+				reg = <0x021f0000 0x4000>;
+				interrupts = <0 29 0x04>;
+				clocks = <&clks 160>, <&clks 161>;
+				clock-names = "ipg", "per";
+				status = "disabled";
+			};
+
+			uart5: serial@021f4000 {
+				compatible = "fsl,imx6q-uart", "fsl,imx21-uart";
+				reg = <0x021f4000 0x4000>;
+				interrupts = <0 30 0x04>;
+				clocks = <&clks 160>, <&clks 161>;
+				clock-names = "ipg", "per";
+				status = "disabled";
+			};
+		};
+
+		ipu1: ipu@02400000 {
+			#crtc-cells = <1>;
+			compatible = "fsl,imx6q-ipu";
+			reg = <0x02400000 0x400000>;
+			interrupts = <0 6 0x4 0 5 0x4>;
+			clocks = <&clks 130>, <&clks 131>, <&clks 132>;
+			clock-names = "bus", "di0", "di1";
+			resets = <&src 2>;
+		};
+	};
+};
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
