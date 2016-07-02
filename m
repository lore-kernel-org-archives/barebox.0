Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bJIgt-0002Dd-H0
 for barebox@lists.infradead.org; Sat, 02 Jul 2016 11:02:29 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Sat,  2 Jul 2016 13:00:11 +0200
Message-Id: <1467457212-8979-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH 1/2] ARM i.MX31 iomux: remove obvious duplicates
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

No need to define some of the iomux twice, remove the duplicates.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/mach-imx/include/mach/iomux-mx31.h | 31 -----------------------------
 1 file changed, 31 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/iomux-mx31.h b/arch/arm/mach-imx/include/mach/iomux-mx31.h
index 258ccee..0cad793 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx31.h
+++ b/arch/arm/mach-imx/include/mach/iomux-mx31.h
@@ -640,37 +640,6 @@ enum iomux_pins {
 #define MX31_PIN_USB_OC__GPIO1_30	IOMUX_MODE(MX31_PIN_USB_OC, IOMUX_CONFIG_GPIO)
 #define MX31_PIN_I2C_DAT__I2C1_SDA	IOMUX_MODE(MX31_PIN_I2C_DAT, IOMUX_CONFIG_FUNC)
 #define MX31_PIN_I2C_CLK__I2C1_SCL	IOMUX_MODE(MX31_PIN_I2C_CLK, IOMUX_CONFIG_FUNC)
-#define MX31_PIN_DCD_DTE1__I2C2_SDA	IOMUX_MODE(MX31_PIN_DCD_DTE1, IOMUX_CONFIG_ALT2)
-#define MX31_PIN_RI_DTE1__I2C2_SCL	IOMUX_MODE(MX31_PIN_RI_DTE1, IOMUX_CONFIG_ALT2)
-#define MX31_PIN_ATA_CS0__GPIO3_26	IOMUX_MODE(MX31_PIN_ATA_CS0, IOMUX_CONFIG_GPIO)
-#define MX31_PIN_ATA_CS1__GPIO3_27	IOMUX_MODE(MX31_PIN_ATA_CS1, IOMUX_CONFIG_GPIO)
-#define MX31_PIN_PC_PWRON__SD2_DATA3	IOMUX_MODE(MX31_PIN_PC_PWRON, IOMUX_CONFIG_ALT1)
-#define MX31_PIN_PC_VS1__SD2_DATA2	IOMUX_MODE(MX31_PIN_PC_VS1, IOMUX_CONFIG_ALT1)
-#define MX31_PIN_PC_READY__SD2_DATA1	IOMUX_MODE(MX31_PIN_PC_READY, IOMUX_CONFIG_ALT1)
-#define MX31_PIN_PC_WAIT_B__SD2_DATA0	IOMUX_MODE(MX31_PIN_PC_WAIT_B, IOMUX_CONFIG_ALT1)
-#define MX31_PIN_PC_CD2_B__SD2_CLK	IOMUX_MODE(MX31_PIN_PC_CD2_B, IOMUX_CONFIG_ALT1)
-#define MX31_PIN_PC_CD1_B__SD2_CMD	IOMUX_MODE(MX31_PIN_PC_CD1_B, IOMUX_CONFIG_ALT1)
-#define MX31_PIN_ATA_DIOR__GPIO3_28	IOMUX_MODE(MX31_PIN_ATA_DIOR, IOMUX_CONFIG_GPIO)
-#define MX31_PIN_ATA_DIOW__GPIO3_29	IOMUX_MODE(MX31_PIN_ATA_DIOW, IOMUX_CONFIG_GPIO)
-#define MX31_PIN_CSI_D4__CSI_D4		IOMUX_MODE(MX31_PIN_CSI_D4, IOMUX_CONFIG_FUNC)
-#define MX31_PIN_CSI_D5__CSI_D5		IOMUX_MODE(MX31_PIN_CSI_D5, IOMUX_CONFIG_FUNC)
-#define MX31_PIN_CSI_D6__CSI_D6		IOMUX_MODE(MX31_PIN_CSI_D6, IOMUX_CONFIG_FUNC)
-#define MX31_PIN_CSI_D7__CSI_D7		IOMUX_MODE(MX31_PIN_CSI_D7, IOMUX_CONFIG_FUNC)
-#define MX31_PIN_CSI_D8__CSI_D8		IOMUX_MODE(MX31_PIN_CSI_D8, IOMUX_CONFIG_FUNC)
-#define MX31_PIN_CSI_D9__CSI_D9		IOMUX_MODE(MX31_PIN_CSI_D9, IOMUX_CONFIG_FUNC)
-#define MX31_PIN_CSI_D10__CSI_D10	IOMUX_MODE(MX31_PIN_CSI_D10, IOMUX_CONFIG_FUNC)
-#define MX31_PIN_CSI_D11__CSI_D11	IOMUX_MODE(MX31_PIN_CSI_D11, IOMUX_CONFIG_FUNC)
-#define MX31_PIN_CSI_D12__CSI_D12	IOMUX_MODE(MX31_PIN_CSI_D12, IOMUX_CONFIG_FUNC)
-#define MX31_PIN_CSI_D13__CSI_D13	IOMUX_MODE(MX31_PIN_CSI_D13, IOMUX_CONFIG_FUNC)
-#define MX31_PIN_CSI_D14__CSI_D14	IOMUX_MODE(MX31_PIN_CSI_D14, IOMUX_CONFIG_FUNC)
-#define MX31_PIN_CSI_D15__CSI_D15	IOMUX_MODE(MX31_PIN_CSI_D15, IOMUX_CONFIG_FUNC)
-#define MX31_PIN_CSI_HSYNC__CSI_HSYNC	IOMUX_MODE(MX31_PIN_CSI_HSYNC, IOMUX_CONFIG_FUNC)
-#define MX31_PIN_CSI_MCLK__CSI_MCLK	IOMUX_MODE(MX31_PIN_CSI_MCLK, IOMUX_CONFIG_FUNC)
-#define MX31_PIN_CSI_PIXCLK__CSI_PIXCLK	IOMUX_MODE(MX31_PIN_CSI_PIXCLK, IOMUX_CONFIG_FUNC)
-#define MX31_PIN_CSI_VSYNC__CSI_VSYNC	IOMUX_MODE(MX31_PIN_CSI_VSYNC, IOMUX_CONFIG_FUNC)
-#define MX31_PIN_GPIO3_0__GPIO3_0	IOMUX_MODE(MX31_PIN_GPIO3_0, IOMUX_CONFIG_GPIO)
-#define MX31_PIN_GPIO3_1__GPIO3_1	IOMUX_MODE(MX31_PIN_GPIO3_1, IOMUX_CONFIG_GPIO)
-#define MX31_PIN_TXD2__GPIO1_28		IOMUX_MODE(MX31_PIN_TXD2, IOMUX_CONFIG_GPIO)
 #define MX31_PIN_GPIO1_0__GPIO1_0	IOMUX_MODE(MX31_PIN_GPIO1_0, IOMUX_CONFIG_GPIO)
 #define MX31_PIN_SVEN0__GPIO2_0		IOMUX_MODE(MX31_PIN_SVEN0, IOMUX_CONFIG_GPIO)
 #define MX31_PIN_STX0__GPIO2_1		IOMUX_MODE(MX31_PIN_STX0, IOMUX_CONFIG_GPIO)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
