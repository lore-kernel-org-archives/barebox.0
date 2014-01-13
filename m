Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W2VDk-00011a-1R
 for barebox@lists.infradead.org; Mon, 13 Jan 2014 00:17:39 +0000
Received: from tellur.localdomain (p57B5EF0F.dip0.t-ipconnect.de
 [87.181.239.15]) by lynxeye.de (Postfix) with ESMTPA id 764E718B4261
 for <barebox@lists.infradead.org>; Mon, 13 Jan 2014 01:16:37 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 13 Jan 2014 01:17:25 +0100
Message-Id: <1389572250-1482-4-git-send-email-dev@lynxeye.de>
In-Reply-To: <1389572250-1482-1-git-send-email-dev@lynxeye.de>
References: <1389572250-1482-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 4/9] ARM: imx6: update pin related DT headers
To: barebox@lists.infradead.org

Needed to be able to update other i.MX 6 DTs properly.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/imx6dl-pinfunc.h |  2 +
 arch/arm/dts/imx6q-pinfunc.h  | 10 +++--
 arch/arm/dts/imx6qdl-pingrp.h | 94 +++++++++++++++++++++++--------------------
 3 files changed, 58 insertions(+), 48 deletions(-)

diff --git a/arch/arm/dts/imx6dl-pinfunc.h b/arch/arm/dts/imx6dl-pinfunc.h
index b81a7a4..0ead323 100644
--- a/arch/arm/dts/imx6dl-pinfunc.h
+++ b/arch/arm/dts/imx6dl-pinfunc.h
@@ -755,6 +755,7 @@
 #define MX6QDL_PAD_GPIO_5__I2C3_SCL                 0x230 0x600 0x878 0x6 0x2
 #define MX6QDL_PAD_GPIO_5__ARM_EVENTI               0x230 0x600 0x000 0x7 0x0
 #define MX6QDL_PAD_GPIO_6__ESAI_TX_CLK              0x234 0x604 0x840 0x0 0x1
+#define MX6QDL_PAD_GPIO_6__ENET_IRQ		    0x234 0x604 0x03c 0x11 0xff000609
 #define MX6QDL_PAD_GPIO_6__I2C3_SDA                 0x234 0x604 0x87c 0x2 0x2
 #define MX6QDL_PAD_GPIO_6__GPIO1_IO06               0x234 0x604 0x000 0x5 0x0
 #define MX6QDL_PAD_GPIO_6__SD2_LCTL                 0x234 0x604 0x000 0x6 0x0
@@ -950,6 +951,7 @@
 #define MX6QDL_PAD_RGMII_TXC__GPIO6_IO19            0x2d8 0x6c0 0x000 0x5 0x0
 #define MX6QDL_PAD_RGMII_TXC__XTALOSC_REF_CLK_24M   0x2d8 0x6c0 0x000 0x7 0x0
 #define MX6QDL_PAD_SD1_CLK__SD1_CLK                 0x2dc 0x6c4 0x928 0x0 0x1
+#define MX6QDL_PAD_SD1_CLK__OSC32K_32K_OUT          0x2dc 0x6c4 0x000 0x2 0x0
 #define MX6QDL_PAD_SD1_CLK__GPT_CLKIN               0x2dc 0x6c4 0x000 0x3 0x0
 #define MX6QDL_PAD_SD1_CLK__GPIO1_IO20              0x2dc 0x6c4 0x000 0x5 0x0
 #define MX6QDL_PAD_SD1_CMD__SD1_CMD                 0x2e0 0x6c8 0x000 0x0 0x0
diff --git a/arch/arm/dts/imx6q-pinfunc.h b/arch/arm/dts/imx6q-pinfunc.h
index c0e38a4..9fc6120 100644
--- a/arch/arm/dts/imx6q-pinfunc.h
+++ b/arch/arm/dts/imx6q-pinfunc.h
@@ -207,8 +207,8 @@
 #define MX6QDL_PAD_EIM_D29__ECSPI4_SS0              0x0c8 0x3dc 0x824 0x2 0x1
 #define MX6QDL_PAD_EIM_D29__UART2_RTS_B             0x0c8 0x3dc 0x924 0x4 0x1
 #define MX6QDL_PAD_EIM_D29__UART2_CTS_B             0x0c8 0x3dc 0x000 0x4 0x0
-#define MX6QDL_PAD_EIM_D29__UART2_DTE_RTS_B         0x0c4 0x3dc 0x000 0x4 0x0
-#define MX6QDL_PAD_EIM_D29__UART2_DTE_CTS_B         0x0c4 0x3dc 0x924 0x4 0x1
+#define MX6QDL_PAD_EIM_D29__UART2_DTE_RTS_B         0x0c8 0x3dc 0x000 0x4 0x0
+#define MX6QDL_PAD_EIM_D29__UART2_DTE_CTS_B         0x0c8 0x3dc 0x924 0x4 0x1
 #define MX6QDL_PAD_EIM_D29__GPIO3_IO29              0x0c8 0x3dc 0x000 0x5 0x0
 #define MX6QDL_PAD_EIM_D29__IPU2_CSI1_VSYNC         0x0c8 0x3dc 0x8e4 0x6 0x0
 #define MX6QDL_PAD_EIM_D29__IPU1_DI0_PIN14          0x0c8 0x3dc 0x000 0x7 0x0
@@ -536,7 +536,7 @@
 #define MX6QDL_PAD_ENET_REF_CLK__ESAI_RX_FS         0x1d4 0x4e8 0x85c 0x2 0x0
 #define MX6QDL_PAD_ENET_REF_CLK__GPIO1_IO23         0x1d4 0x4e8 0x000 0x5 0x0
 #define MX6QDL_PAD_ENET_REF_CLK__SPDIF_SR_CLK       0x1d4 0x4e8 0x000 0x6 0x0
-#define MX6QDL_PAD_ENET_RX_ER__USB_OTG_ID           0x1d8 0x4ec 0x000 0x0 0x0
+#define MX6QDL_PAD_ENET_RX_ER__USB_OTG_ID           0x1d8 0x4ec 0x004 0x0 0xff0d0100
 #define MX6QDL_PAD_ENET_RX_ER__ENET_RX_ER           0x1d8 0x4ec 0x000 0x1 0x0
 #define MX6QDL_PAD_ENET_RX_ER__ESAI_RX_HF_CLK       0x1d8 0x4ec 0x864 0x2 0x0
 #define MX6QDL_PAD_ENET_RX_ER__SPDIF_IN             0x1d8 0x4ec 0x914 0x3 0x1
@@ -654,7 +654,7 @@
 #define MX6QDL_PAD_GPIO_1__ESAI_RX_CLK              0x224 0x5f4 0x86c 0x0 0x1
 #define MX6QDL_PAD_GPIO_1__WDOG2_B                  0x224 0x5f4 0x000 0x1 0x0
 #define MX6QDL_PAD_GPIO_1__KEY_ROW5                 0x224 0x5f4 0x8f4 0x2 0x0
-#define MX6QDL_PAD_GPIO_1__USB_OTG_ID               0x224 0x5f4 0x000 0x3 0x0
+#define MX6QDL_PAD_GPIO_1__USB_OTG_ID               0x224 0x5f4 0x004 0x3 0xff0d0101
 #define MX6QDL_PAD_GPIO_1__PWM2_OUT                 0x224 0x5f4 0x000 0x4 0x0
 #define MX6QDL_PAD_GPIO_1__GPIO1_IO01               0x224 0x5f4 0x000 0x5 0x0
 #define MX6QDL_PAD_GPIO_1__SD1_CD_B                 0x224 0x5f4 0x000 0x6 0x0
@@ -673,6 +673,7 @@
 #define MX6QDL_PAD_GPIO_3__USB_H1_OC                0x22c 0x5fc 0x948 0x6 0x1
 #define MX6QDL_PAD_GPIO_3__MLB_CLK                  0x22c 0x5fc 0x900 0x7 0x1
 #define MX6QDL_PAD_GPIO_6__ESAI_TX_CLK              0x230 0x600 0x870 0x0 0x1
+#define MX6QDL_PAD_GPIO_6__ENET_IRQ		    0x230 0x600 0x03c 0x11 0xff000609
 #define MX6QDL_PAD_GPIO_6__I2C3_SDA                 0x230 0x600 0x8ac 0x2 0x1
 #define MX6QDL_PAD_GPIO_6__GPIO1_IO06               0x230 0x600 0x000 0x5 0x0
 #define MX6QDL_PAD_GPIO_6__SD2_LCTL                 0x230 0x600 0x000 0x6 0x0
@@ -1024,6 +1025,7 @@
 #define MX6QDL_PAD_SD1_DAT2__WDOG1_RESET_B_DEB      0x34c 0x734 0x000 0x6 0x0
 #define MX6QDL_PAD_SD1_CLK__SD1_CLK                 0x350 0x738 0x000 0x0 0x0
 #define MX6QDL_PAD_SD1_CLK__ECSPI5_SCLK             0x350 0x738 0x828 0x1 0x0
+#define MX6QDL_PAD_SD1_CLK__OSC32K_32K_OUT          0x350 0x738 0x000 0x2 0x0
 #define MX6QDL_PAD_SD1_CLK__GPT_CLKIN               0x350 0x738 0x000 0x3 0x0
 #define MX6QDL_PAD_SD1_CLK__GPIO1_IO20              0x350 0x738 0x000 0x5 0x0
 #define MX6QDL_PAD_SD2_CLK__SD2_CLK                 0x354 0x73c 0x000 0x0 0x0
diff --git a/arch/arm/dts/imx6qdl-pingrp.h b/arch/arm/dts/imx6qdl-pingrp.h
index 8d71b13..082f0df 100644
--- a/arch/arm/dts/imx6qdl-pingrp.h
+++ b/arch/arm/dts/imx6qdl-pingrp.h
@@ -32,6 +32,12 @@
 	MX6QDL_PAD_EIM_D25__AUD5_RXC			0x130b0 \
 	MX6QDL_PAD_DISP0_DAT19__AUD5_RXD		0x130b0
 
+#define MX6QDL_AUDMUX_PINGRP5 \
+	MX6QDL_PAD_KEY_ROW1__AUD5_RXD			0x130b0 \
+	MX6QDL_PAD_KEY_COL0__AUD5_TXC			0x130b0 \
+	MX6QDL_PAD_KEY_ROW0__AUD5_TXD			0x110b0 \
+	MX6QDL_PAD_KEY_COL1__AUD5_TXFS			0x130b0
+
 #define MX6QDL_ECSPI1_PINGRP1 \
 	MX6QDL_PAD_EIM_D17__ECSPI1_MISO			0x100b1 \
 	MX6QDL_PAD_EIM_D18__ECSPI1_MOSI			0x100b1 \
@@ -47,59 +53,59 @@
 	MX6QDL_PAD_DISP0_DAT1__ECSPI3_MOSI		0x100b1 \
 	MX6QDL_PAD_DISP0_DAT0__ECSPI3_SCLK		0x100b1
 
+#define MX6QDL_ENET_PINGRP_RGMII(rx_pad, tx_pad) \
+	MX6QDL_PAD_RGMII_RXC__RGMII_RXC			rx_pad \
+	MX6QDL_PAD_RGMII_RD0__RGMII_RD0			rx_pad \
+	MX6QDL_PAD_RGMII_RD1__RGMII_RD1			rx_pad \
+	MX6QDL_PAD_RGMII_RD2__RGMII_RD2			rx_pad \
+	MX6QDL_PAD_RGMII_RD3__RGMII_RD3			rx_pad \
+	MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL		rx_pad \
+	MX6QDL_PAD_RGMII_TXC__RGMII_TXC			tx_pad \
+	MX6QDL_PAD_RGMII_TD0__RGMII_TD0			tx_pad \
+	MX6QDL_PAD_RGMII_TD1__RGMII_TD1			tx_pad \
+	MX6QDL_PAD_RGMII_TD2__RGMII_TD2			tx_pad \
+	MX6QDL_PAD_RGMII_TD3__RGMII_TD3			tx_pad \
+	MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL		tx_pad \
+	MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK		tx_pad
+
+#define MX6QDL_ENET_PINGRP_RGMII_MD(rx_pad, tx_pad)	\
+	MX6QDL_ENET_PINGRP_RGMII(rx_pad, tx_pad)	\
+	MX6QDL_PAD_ENET_MDIO__ENET_MDIO			tx_pad \
+	MX6QDL_PAD_ENET_MDC__ENET_MDC			tx_pad
+
 #define MX6QDL_ENET_PINGRP1 \
-	MX6QDL_PAD_ENET_MDIO__ENET_MDIO			0x1b0b0 \
-	MX6QDL_PAD_ENET_MDC__ENET_MDC			0x1b0b0 \
-	MX6QDL_PAD_RGMII_TXC__RGMII_TXC			0x1b0b0 \
-	MX6QDL_PAD_RGMII_TD0__RGMII_TD0			0x1b0b0 \
-	MX6QDL_PAD_RGMII_TD1__RGMII_TD1			0x1b0b0 \
-	MX6QDL_PAD_RGMII_TD2__RGMII_TD2			0x1b0b0 \
-	MX6QDL_PAD_RGMII_TD3__RGMII_TD3			0x1b0b0 \
-	MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL		0x1b0b0 \
-	MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK		0x1b0b0 \
-	MX6QDL_PAD_RGMII_RXC__RGMII_RXC			0x1b0b0 \
-	MX6QDL_PAD_RGMII_RD0__RGMII_RD0			0x1b0b0 \
-	MX6QDL_PAD_RGMII_RD1__RGMII_RD1			0x1b0b0 \
-	MX6QDL_PAD_RGMII_RD2__RGMII_RD2			0x1b0b0 \
-	MX6QDL_PAD_RGMII_RD3__RGMII_RD3			0x1b0b0 \
-	MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL		0x1b0b0 \
+	MX6QDL_ENET_PINGRP_RGMII_MD(0x1b0b0, 0x1b0b0)	\
 	MX6QDL_PAD_GPIO_16__ENET_REF_CLK		0x4001b0a8
 
 #define MX6QDL_ENET_PINGRP2 \
+	MX6QDL_ENET_PINGRP_RGMII(0x1b0b0, 0x1b0b0)		\
 	MX6QDL_PAD_KEY_COL1__ENET_MDIO			0x1b0b0 \
-	MX6QDL_PAD_KEY_COL2__ENET_MDC			0x1b0b0 \
-	MX6QDL_PAD_RGMII_TXC__RGMII_TXC			0x1b0b0 \
-	MX6QDL_PAD_RGMII_TD0__RGMII_TD0			0x1b0b0 \
-	MX6QDL_PAD_RGMII_TD1__RGMII_TD1			0x1b0b0 \
-	MX6QDL_PAD_RGMII_TD2__RGMII_TD2			0x1b0b0 \
-	MX6QDL_PAD_RGMII_TD3__RGMII_TD3			0x1b0b0 \
-	MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL		0x1b0b0 \
-	MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK		0x1b0b0 \
-	MX6QDL_PAD_RGMII_RXC__RGMII_RXC			0x1b0b0 \
-	MX6QDL_PAD_RGMII_RD0__RGMII_RD0			0x1b0b0 \
-	MX6QDL_PAD_RGMII_RD1__RGMII_RD1			0x1b0b0 \
-	MX6QDL_PAD_RGMII_RD2__RGMII_RD2			0x1b0b0 \
-	MX6QDL_PAD_RGMII_RD3__RGMII_RD3			0x1b0b0 \
-	MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL		0x1b0b0
+	MX6QDL_PAD_KEY_COL2__ENET_MDC			0x1b0b0
 
 #define MX6QDL_ENET_PINGRP3 \
-	MX6QDL_PAD_ENET_MDIO__ENET_MDIO			0x1b0b0 \
-	MX6QDL_PAD_ENET_MDC__ENET_MDC			0x1b0b0 \
-	MX6QDL_PAD_RGMII_TXC__RGMII_TXC			0x1b0b0 \
-	MX6QDL_PAD_RGMII_TD0__RGMII_TD0			0x1b0b0 \
-	MX6QDL_PAD_RGMII_TD1__RGMII_TD1			0x1b0b0 \
-	MX6QDL_PAD_RGMII_TD2__RGMII_TD2			0x1b0b0 \
-	MX6QDL_PAD_RGMII_TD3__RGMII_TD3			0x1b0b0 \
-	MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL		0x1b0b0 \
-	MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK		0x1b0b0 \
-	MX6QDL_PAD_RGMII_RXC__RGMII_RXC			0x1b0b0 \
-	MX6QDL_PAD_RGMII_RD0__RGMII_RD0			0x1b0b0 \
-	MX6QDL_PAD_RGMII_RD1__RGMII_RD1			0x1b0b0 \
-	MX6QDL_PAD_RGMII_RD2__RGMII_RD2			0x1b0b0 \
-	MX6QDL_PAD_RGMII_RD3__RGMII_RD3			0x1b0b0 \
-	MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL		0x1b0b0 \
+	MX6QDL_ENET_PINGRP_RGMII_MD(0x1b0b0, 0x1b0b0)	\
 	MX6QDL_PAD_ENET_TX_EN__ENET_TX_EN		0x1b0b0
 
+#define MX6QDL_ENET_PINGRP4 \
+	MX6QDL_PAD_ENET_MDC__ENET_MDC			0x1b0b0	\
+	MX6QDL_PAD_ENET_MDIO__ENET_MDIO			0x1b0b0	\
+	MX6QDL_PAD_ENET_RXD0__ENET_RX_DATA0		0x1b0b0	\
+	MX6QDL_PAD_ENET_RXD1__ENET_RX_DATA1		0x1b0b0	\
+	MX6QDL_PAD_ENET_RX_ER__ENET_RX_ER		0x1b0b0	\
+	MX6QDL_PAD_ENET_TX_EN__ENET_TX_EN		0x1b0b0	\
+	MX6QDL_PAD_ENET_TXD0__ENET_TX_DATA0		0x1b0b0	\
+	MX6QDL_PAD_ENET_TXD1__ENET_TX_DATA1		0x1b0b0	\
+	MX6QDL_PAD_ENET_CRS_DV__ENET_RX_EN		0x1b0b0
+
+#define MX6QDL_ENET_PINGRP1_GPIO6	MX6QDL_ENET_PINGRP1 \
+	MX6QDL_PAD_GPIO_6__ENET_IRQ	0x000b1
+
+#define MX6QDL_ENET_PINGRP2_GPIO6	MX6QDL_ENET_PINGRP2 \
+	MX6QDL_PAD_GPIO_6__ENET_IRQ	0x000b1
+
+#define MX6QDL_ENET_PINGRP3_GPIO6	MX6QDL_ENET_PINGRP3 \
+	MX6QDL_PAD_GPIO_6__ENET_IRQ	0x000b1
+
 #define MX6QDL_ESAI_PINGRP1 \
 	MX6QDL_PAD_ENET_RXD0__ESAI_TX_HF_CLK		0x1b030 \
 	MX6QDL_PAD_ENET_CRS_DV__ESAI_TX_CLK		0x1b030 \
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
