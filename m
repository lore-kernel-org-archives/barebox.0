Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SCDjF-0005Ru-Sq
 for barebox@lists.infradead.org; Mon, 26 Mar 2012 17:29:18 +0000
Received: by lbol5 with SMTP id l5so4906206lbo.36
 for <barebox@lists.infradead.org>; Mon, 26 Mar 2012 10:29:11 -0700 (PDT)
From: esben.haabendal@gmail.com
Date: Mon, 26 Mar 2012 19:29:07 +0200
Message-Id: <1332782947-3407-5-git-send-email-esben.haabendal@gmail.com>
In-Reply-To: <1332782947-3407-1-git-send-email-esben.haabendal@gmail.com>
References: <1332782947-3407-1-git-send-email-esben.haabendal@gmail.com>
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
Subject: [PATCH 4/4] mxs: Add remaining i.MX28 iomux configurations
To: barebox@lists.infradead.org
Cc: Esben Haabendal <esben.haabendal@prevas.dk>

From: Esben Haabendal <esben.haabendal@gmail.com>

Signed-off-by: Esben Haabendal <esben.haabendal@prevas.dk>
---
 arch/arm/mach-mxs/include/mach/iomux-imx28.h |  124 ++++++++++++++++++++++++-
 1 files changed, 119 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-mxs/include/mach/iomux-imx28.h b/arch/arm/mach-mxs/include/mach/iomux-imx28.h
index 8eac71d..ea1c3d8 100644
--- a/arch/arm/mach-mxs/include/mach/iomux-imx28.h
+++ b/arch/arm/mach-mxs/include/mach/iomux-imx28.h
@@ -148,8 +148,16 @@
 #define LCD_ENABLE		(FUNC(0) | PORTF(1, 31) | SE | VE | BK)
 #define LCD_ENABLE_GPIO		(FUNC(3) | PORTF(1, 31) | SE | VE | BK)
 #define LCD_DOTCLK		(FUNC(0) | PORTF(1, 30) | SE | VE | BK)
+#define LCD_DOTCLK_SAIF1_MCLK	(FUNC(1) | PORTF(1, 30) | SE | VE | BK)
+#define LCD_DOTCLK_ETM_TCLK	(FUNC(2) | PORTF(1, 30) | SE | VE | BK)
+#define LCD_DOTCLK_GPIO		(FUNC(3) | PORTF(1, 30) | SE | VE | BK)
 #define LCD_HSYNC		(FUNC(0) | PORTF(1, 29) | SE | VE | BK)
+#define LCD_HSYNC_SAIF1_SDATA1	(FUNC(1) | PORTF(1, 29) | SE | VE | BK)
+#define LCD_HSYNC_ETM_TCTL	(FUNC(2) | PORTF(1, 29) | SE | VE | BK)
+#define LCD_HSYNC_GPIO		(FUNC(3) | PORTF(1, 29) | SE | VE | BK)
 #define LCD_VSYNC		(FUNC(0) | PORTF(1, 28) | SE | VE | BK)
+#define LCD_VSYNC_SAIF1_SDATA0	(FUNC(1) | PORTF(1, 28) | SE | VE | BK)
+#define LCD_VSYNC_GPIO		(FUNC(3) | PORTF(1, 28) | SE | VE | BK)
 #define LCD_CS			(FUNC(0) | PORTF(1, 27) | SE | VE | BK)
 #define LCD_CS_LCD_ENABLE	(FUNC(1) | PORTF(1, 27) | SE | VE | BK)
 #define LCD_CS_GPIO		(FUNC(3) | PORTF(1, 27) | SE | VE | BK)
@@ -165,13 +173,33 @@
 #define LCD_RD_E_ETM_TCTL	(FUNC(2) | PORTF(1, 24) | SE | VE | BK)
 #define LCD_RD_E_GPIO		(FUNC(3) | PORTF(1, 24) | SE | VE | BK)
 #define LCD_D23			(FUNC(0) | PORTF(1, 23) | SE | VE | BK)
+#define LCD_D23_ENET1_1588_EVENT3_IN (FUNC(1) | PORTF(1, 23) | SE | VE | BK)
+#define LCD_D23_ETM_DA0		(FUNC(2) | PORTF(1, 23) | SE | VE | BK)
+#define LCD_D23_GPIO		(FUNC(3) | PORTF(1, 23) | SE | VE | BK)
 #define LCD_D22			(FUNC(0) | PORTF(1, 22) | SE | VE | BK)
+#define LCD_D22_ENET1_1588_EVENT3_OUT (FUNC(1) | PORTF(1, 22) | SE | VE | BK)
+#define LCD_D22_ETM_DA1		(FUNC(2) | PORTF(1, 22) | SE | VE | BK)
+#define LCD_D22_GPIO		(FUNC(3) | PORTF(1, 22) | SE | VE | BK)
 #define LCD_D21			(FUNC(0) | PORTF(1, 21) | SE | VE | BK)
+#define LCD_D21_ENET1_1588_EVENT2_IN (FUNC(1) | PORTF(1, 21) | SE | VE | BK)
+#define LCD_D21_ETM_DA2		(FUNC(2) | PORTF(1, 21) | SE | VE | BK)
+#define LCD_D21_GPIO		(FUNC(3) | PORTF(1, 21) | SE | VE | BK)
 #define LCD_D20			(FUNC(0) | PORTF(1, 20) | SE | VE | BK)
+#define LCD_D20_ENET1_1588_EVENT2_OUT (FUNC(1) | PORTF(1, 20) | SE | VE | BK)
+#define LCD_D20_ETM_DA3		(FUNC(2) | PORTF(1, 20) | SE | VE | BK)
+#define LCD_D20_GPIO		(FUNC(3) | PORTF(1, 20) | SE | VE | BK)
 #define LCD_D19			(FUNC(0) | PORTF(1, 19) | SE | VE | BK)
+#define LCD_D19_ETM_DA4		(FUNC(2) | PORTF(1, 19) | SE | VE | BK)
+#define LCD_D19_GPIO		(FUNC(3) | PORTF(1, 19) | SE | VE | BK)
 #define LCD_D18			(FUNC(0) | PORTF(1, 18) | SE | VE | BK)
+#define LCD_D18_ETM_DA5		(FUNC(2) | PORTF(1, 18) | SE | VE | BK)
+#define LCD_D18_GPIO		(FUNC(3) | PORTF(1, 18) | SE | VE | BK)
 #define LCD_D17			(FUNC(0) | PORTF(1, 17) | SE | VE | BK)
+#define LCD_D17_ETM_DA6		(FUNC(2) | PORTF(1, 17) | SE | VE | BK)
+#define LCD_D17_GPIO		(FUNC(3) | PORTF(1, 17) | SE | VE | BK)
 #define LCD_D16			(FUNC(0) | PORTF(1, 16) | SE | VE | BK)
+#define LCD_D16_ETM_DA7		(FUNC(2) | PORTF(1, 16) | SE | VE | BK)
+#define LCD_D16_GPIO		(FUNC(3) | PORTF(1, 16) | SE | VE | BK)
 #define LCD_D15			(FUNC(0) | PORTF(1, 15) | SE | VE | BK)
 #define LCD_D15_ETM_DA15	(FUNC(2) | PORTF(1, 15) | SE | VE | BK)
 #define LCD_D15_GPIO		(FUNC(3) | PORTF(1, 15) | SE | VE | BK)
@@ -225,12 +253,47 @@
 #define LCD_D0_ETM_DA0		(FUNC(2) | PORTF(1, 0) | SE | VE | BK)
 #define LCD_D0_GPIO		(FUNC(3) | PORTF(1, 0) | SE | VE | BK)
 
-/* TODO */
-
 /* Bank 2, GPIO pins 64 ... 95 */
-
-/* TODO */
-
+#define SSP3_D3			(FUNC(0) | PORTF(2, 27) | SE | VE | PE)
+#define SSP3_D3_AUART4_CTS	(FUNC(1) | PORTF(2, 27) | SE | VE | PE)
+#define SSP3_D3_ENET1_1588_EVENT1_IN (FUNC(2) | PORTF(2, 27) | SE | VE | PE)
+#define SSP3_D3_GPIO		(FUNC(3) | PORTF(2, 27) | SE | VE | PE)
+#define SSP3_D0			(FUNC(0) | PORTF(2, 26) | SE | VE | PE)
+#define SSP3_D0_AUART4_RTS	(FUNC(1) | PORTF(2, 26) | SE | VE | PE)
+#define SSP3_D0_ENET1_1588_EVENT1_OUT (FUNC(2) | PORTF(2, 26) | SE | VE | PE)
+#define SSP3_D0_GPIO		(FUNC(3) | PORTF(2, 26) | SE | VE | PE)
+#define SSP3_CMD		(FUNC(0) | PORTF(2, 25) | SE | VE | PE)
+#define SSP3_CMD_AUART4_RX	(FUNC(1) | PORTF(2, 25) | SE | VE | PE)
+#define SSP3_CMD_ENET1_1588_EVENT0_IN (FUNC(2) | PORTF(2, 25) | SE | VE | PE)
+#define SSP3_CMD_GPIO		(FUNC(3) | PORTF(2, 25) | SE | VE | PE)
+#define SSP3_SCK		(FUNC(0) | PORTF(2, 24) | SE | VE | PE)
+#define SSP3_SCK_AUART4_TX	(FUNC(1) | PORTF(2, 24) | SE | VE | PE)
+#define SSP3_SCK_ENET1_1588_EVENT0_OUT (FUNC(2) | PORTF(2, 24) | SE | VE | PE)
+#define SSP3_SCK_GPIO		(FUNC(3) | PORTF(2, 24) | SE | VE | PE)
+#define SSP2_D5			(FUNC(0) | PORTF(2, 21) | SE | VE | PE)
+#define SSP2_D5_SSP2_D2		(FUNC(1) | PORTF(2, 21) | SE | VE | PE)
+#define SSP2_D5_USB0_OC		(FUNC(2) | PORTF(2, 21) | SE | VE | PE)
+#define SSP2_D5_GPIO		(FUNC(3) | PORTF(2, 21) | SE | VE | PE)
+#define SSP2_D4			(FUNC(0) | PORTF(2, 20) | SE | VE | PE)
+#define SSP2_D4_SSP2_D1		(FUNC(1) | PORTF(2, 20) | SE | VE | PE)
+#define SSP2_D4_USB1_OC		(FUNC(2) | PORTF(2, 20) | SE | VE | PE)
+#define SSP2_D4_GPIO		(FUNC(3) | PORTF(2, 20) | SE | VE | PE)
+#define SSP2_D3			(FUNC(0) | PORTF(2, 19) | SE | VE | PE)
+#define SSP2_D3_AUART3_TX	(FUNC(1) | PORTF(2, 19) | SE | VE | PE)
+#define SSP2_D3_SAIF1_SDATA2	(FUNC(2) | PORTF(2, 19) | SE | VE | PE)
+#define SSP2_D3_GPIO		(FUNC(3) | PORTF(2, 19) | SE | VE | PE)
+#define SSP2_D0			(FUNC(0) | PORTF(2, 18) | SE | VE | PE)
+#define SSP2_D0_AUART3_RX	(FUNC(1) | PORTF(2, 18) | SE | VE | PE)
+#define SSP2_D0_SAIF1_SDATA1	(FUNC(2) | PORTF(2, 18) | SE | VE | PE)
+#define SSP2_D0_GPIO		(FUNC(3) | PORTF(2, 18) | SE | VE | PE)
+#define SSP2_CMD		(FUNC(0) | PORTF(2, 17) | SE | VE | PE)
+#define SSP2_CMD_AUART2_TX	(FUNC(1) | PORTF(2, 17) | SE | VE | PE)
+#define SSP2_CMD_SAIF0_SDATA2	(FUNC(2) | PORTF(2, 17) | SE | VE | PE)
+#define SSP2_CMD_GPIO		(FUNC(3) | PORTF(2, 17) | SE | VE | PE)
+#define SSP2_SCK		(FUNC(0) | PORTF(2, 16) | SE | VE | PE)
+#define SSP2_SCK_AUART2_RX	(FUNC(1) | PORTF(2, 16) | SE | VE | PE)
+#define SSP2_SCK_SAIF0_SDATA1	(FUNC(2) | PORTF(2, 16) | SE | VE | PE)
+#define SSP2_SCK_GPIO		(FUNC(3) | PORTF(2, 16) | SE | VE | PE)
 #define SSP1_D3			(FUNC(0) | PORTF(2, 15) | SE | VE | PE)
 #define SSP1_D3_SSP2_D7		(FUNC(1) | PORTF(2, 15) | SE | VE | PE)
 #define SSP1_D3_ENET_1588_EVENT3_IN (FUNC(2) | PORTF(4, 15) | SE | VE | PE)
@@ -282,9 +345,45 @@
 #define PWM4_GPIO		(FUNC(3) | PORTF(3, 29))
 #define PWM3			(FUNC(0) | PORTF(3, 28))
 #define PWM3_GPIO		(FUNC(3) | PORTF(3, 28))
+#define SPDIF_TX		(FUNC(0) | PORTF(3, 27) | SE | VE | BK)
+#define SPDIF_TX_ENET1_RX_ER	(FUNC(2) | PORTF(3, 27) | SE | VE | BK)
+#define SPDIF_TX_GPIO		(FUNC(3) | PORTF(3, 27) | SE | VE | BK)
+#define SAIF1_SDATA0		(FUNC(0) | PORTF(3, 26) | SE | VE | BK)
+#define SAIF1_SDATA0_PWM7	(FUNC(1) | PORTF(3, 26) | SE | VE | BK)
+#define SAIF1_SDATA0_SAIF0_SDATA1 (FUNC(2) | PORTF(3, 26) | SE | VE | BK)
+#define SAIF1_SDATA0_GPIO	(FUNC(3) | PORTF(3, 26) | SE | VE | BK)
+#define I2C0_SDA		(FUNC(0) | PORTF(3, 25) | SE | VE | BK)
+#define I2C0_SDA_TIMROT_ROTARYB	(FUNC(1) | PORTF(3, 25) | SE | VE | BK)
+#define I2C0_SDA_DUART_TX	(FUNC(2) | PORTF(3, 25) | SE | VE | BK)
+#define I2C0_SDA_GPIO		(FUNC(3) | PORTF(3, 25) | SE | VE | BK)
+#define I2C0_SCL		(FUNC(0) | PORTF(3, 24) | SE | VE | BK)
+#define I2C0_SCL_TIMROT_ROTARYA	(FUNC(1) | PORTF(3, 24) | SE | VE | BK)
+#define I2C0_SCL_DUART_RX	(FUNC(2) | PORTF(3, 24) | SE | VE | BK)
+#define I2C0_SCL_GPIO		(FUNC(3) | PORTF(3, 24) | SE | VE | BK)
+#define SAIF0_SDATA0		(FUNC(0) | PORTF(3, 23) | SE | VE | BK)
+#define SAIF0_SDATA0_PWM6	(FUNC(1) | PORTF(3, 23) | SE | VE | BK)
+#define SAIF0_SDATA0_AUART4_TX	(FUNC(2) | PORTF(3, 23) | SE | VE | BK)
+#define SAIF0_SDATA0_GPIO	(FUNC(3) | PORTF(3, 23) | SE | VE | BK)
+#define SAIF0_BITCLK		(FUNC(0) | PORTF(3, 22) | SE | VE | BK)
+#define SAIF0_BITCLK_PWM5	(FUNC(1) | PORTF(3, 22) | SE | VE | BK)
+#define SAIF0_BITCLK_AUART4_RX	(FUNC(2) | PORTF(3, 22) | SE | VE | BK)
+#define SAIF0_BITCLK_GPIO	(FUNC(3) | PORTF(3, 22) | SE | VE | BK)
+#define SAIF0_LRCLK		(FUNC(0) | PORTF(3, 21) | SE | VE | BK)
+#define SAIF0_LRCLK_PWM4	(FUNC(1) | PORTF(3, 21) | SE | VE | BK)
+#define SAIF0_LRCLK_AUART4_RTS	(FUNC(2) | PORTF(3, 21) | SE | VE | BK)
+#define SAIF0_LRCLK_GPIO	(FUNC(3) | PORTF(3, 21) | SE | VE | BK)
+#define SAIF0_MCLK		(FUNC(0) | PORTF(3, 20) | SE | VE | BK)
+#define SAIF0_MCLK_PWM3		(FUNC(1) | PORTF(3, 20) | SE | VE | BK)
+#define SAIF0_MCLK_AUART4_CTS	(FUNC(2) | PORTF(3, 20) | SE | VE | BK)
+#define SAIF0_MCLK_GPIO		(FUNC(3) | PORTF(3, 20) | SE | VE | BK)
 #define PWM2			(FUNC(0) | PORTF(3, 18))
+#define PWM2_USB0_ID		(FUNC(1) | PORTF(3, 18))
+#define PWM2_USB1_OC		(FUNC(2) | PORTF(3, 18))
+#define PWM2_GPIO		(FUNC(3) | PORTF(3, 18))
 #define PWM1			(FUNC(0) | PORTF(3, 17))
+#define PWM1_I2C1_SDA		(FUNC(1) | PORTF(3, 17))
 #define PWM1_DUART_TX		(FUNC(2) | PORTF(3, 17))
+#define PWM1_GPIO		(FUNC(3) | PORTF(3, 17))
 #define PWM0			(FUNC(0) | PORTF(3, 16))
 #define PWM0_I2C1_SCL		(FUNC(1) | PORTF(3, 16))
 #define PWM0_DUART_RX		(FUNC(2) | PORTF(3, 16))
@@ -360,7 +459,13 @@
 #define ENET_CLK		(FUNC(0) | PORTF(4, 16) | SE | VE | BK)
 #define ENET_CLK_GPIO		(FUNC(3) | PORTF(4, 16) | SE | VE | BK)
 #define ENET0_CRS		(FUNC(0) | PORTF(4, 15) | SE | VE | BK)
+#define ENET0_CRS_ENET1_RX_EN	(FUNC(1) | PORTF(4, 15) | SE | VE | BK)
+#define ENET0_CRS_ENET0_1588_EVENT3_IN (FUNC(2) | PORTF(4, 15) | SE | VE | BK)
+#define ENET0_CRS_GPIO		(FUNC(3) | PORTF(4, 15) | SE | VE | BK)
 #define ENET0_COL		(FUNC(0) | PORTF(4, 14) | SE | VE | BK)
+#define ENET0_COL_ENET1_TX_EN	(FUNC(1) | PORTF(4, 14) | SE | VE | BK)
+#define ENET0_COL_1588_EVENT3_OUT (FUNC(2) | PORTF(4, 14) | SE | VE | BK)
+#define ENET0_COL_GPIO		(FUNC(3) | PORTF(4, 14) | SE | VE | BK)
 #define ENET0_RX_CLK		(FUNC(0) | PORTF(4, 13) | SE | VE | BK)
 #define ENET0_RX_CLK_RX_ER	(FUNC(1) | PORTF(4, 13) | SE | VE | BK)
 #define ENET0_RX_ENET0_1588_EVENT2_IN (FUNC(2) | PORTF(4, 13) | SE | VE | BK)
@@ -370,20 +475,29 @@
 #define ENET0_TXD3_ENET0_1588_EVENT1_IN (FUNC(2) | PORTF(4, 12) | SE | VE | BK)
 #define ENET0_TXD3_GPIO		(FUNC(3) | PORTF(4, 12) | SE | VE | BK)
 #define ENET0_TXD2		(FUNC(0) | PORTF(4, 11) | SE | VE | BK)
+#define ENET0_TXD2_ENET1_TXD0	(FUNC(1) | PORTF(4, 11) | SE | VE | BK)
+#define ENET0_TXD2_ENET0_1588_EVENT1_OUT (FUNC(2) | PORTF(4, 11) | SE | VE | BK)
 #define ENET0_TXD2_GPIO		(FUNC(3) | PORTF(4, 11) | SE | VE | BK)
 #define ENET0_RXD3		(FUNC(0) | PORTF(4, 10) | SE | VE | BK)
 #define ENET0_RXD3_ENET1_RXD1	(FUNC(1) | PORTF(4, 10) | SE | VE | BK)
 #define ENET0_RXD3_ENET0_1588_EVENT0_IN (FUNC(2) | PORTF(4, 10) | SE | VE | BK)
 #define ENET0_RXD3_GPIO		(FUNC(3) | PORTF(4, 10) | SE | VE | BK)
 #define ENET0_RXD2		(FUNC(0) | PORTF(4, 9) | SE | VE | BK)
+#define ENET0_RXD2_ENET1_RXD0	(FUNC(1) | PORTF(4, 9) | SE | VE | BK)
+#define ENET0_RXD2_ENET0_1588_EVENT0_OUT (FUNC(2) | PORTF(4, 9) | SE | VE | BK)
 #define ENET0_RXD2_GPIO		(FUNC(3) | PORTF(4, 9) | SE | VE | BK)
 #define ENET0_TXD1		(FUNC(0) | PORTF(4, 8) | SE | VE | PE)
+#define ENET0_TXD1_GPMI_READY7	(FUNC(1) | PORTF(4, 8) | SE | VE | PE)
 #define ENET0_TXD1_GPIO		(FUNC(3) | PORTF(4, 8) | SE | VE | PE)
 #define ENET0_TXD0		(FUNC(0) | PORTF(4, 7) | SE | VE | PE)
+#define ENET0_TXD0_GPMI_READY6	(FUNC(1) | PORTF(4, 7) | SE | VE | PE)
 #define ENET0_TXD0_GPIO		(FUNC(3) | PORTF(4, 7) | SE | VE | PE)
 #define ENET0_TX_EN		(FUNC(0) | PORTF(4, 6) | SE | VE | PE)
+#define ENET0_TX_EN_GPMI_READY5	(FUNC(1) | PORTF(4, 6) | SE | VE | PE)
 #define ENET0_TX_EN_GPIO	(FUNC(3) | PORTF(4, 6) | SE | VE | PE)
 #define ENET0_TX_CLK		(FUNC(0) | PORTF(4, 5) | SE | VE | BK)
+#define ENET0_TX_CLK_HSADC_TRIGGER (FUNC(1) | PORTF(4, 5) | SE | VE | BK)
+#define ENET0_TX_CLK_ENET0_1588_EVENT2_OUT (FUNC(2) | PORTF(4, 5) | SE | VE | BK)
 #define ENET0_TX_CLK_GPIO	(FUNC(3) | PORTF(4, 5) | SE | VE | BK)
 #define ENET0_RXD1		(FUNC(0) | PORTF(4, 4) | SE | VE | PE)
 #define ENET0_RXD1_GPMI_READY4	(FUNC(1) | PORTF(4, 4) | SE | VE | PE)
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
