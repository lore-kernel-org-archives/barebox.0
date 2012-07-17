Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from moutng.kundenserver.de ([212.227.17.10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Sr4QA-0000Yc-AY
 for barebox@lists.infradead.org; Tue, 17 Jul 2012 09:50:30 +0000
From: Christian Kapeller <christian.kapeller@cmotion.eu>
Date: Tue, 17 Jul 2012 11:49:59 +0200
Message-Id: <1342518599-9558-1-git-send-email-christian.kapeller@cmotion.eu>
In-Reply-To: <20120716142152.GL30009@pengutronix.de>
References: <20120716142152.GL30009@pengutronix.de>
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
Subject: [PATCH] imx51: fix pad definition used for fec communication.
To: barebox@lists.infradead.org

Using the existing configuration, on the Ka-Ro i.MX51 board fec is reporting all
kind of error conditions for ethernet reception.

Define FEC_RDATAn signals consistently.
Don't use hysteresis feature on any pins interfacing a mii phy chip.
Don't use NO_PAD_CTRL value for used pads.

Signed-off-by: Christian Kapeller <christian.kapeller@cmotion.eu>
---
 arch/arm/mach-imx/include/mach/iomux-mx51.h |   20 ++++++++++----------
 1 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/iomux-mx51.h b/arch/arm/mach-imx/include/mach/iomux-mx51.h
index 36c8989..f94c5a5 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx51.h
+++ b/arch/arm/mach-imx/include/mach/iomux-mx51.h
@@ -187,7 +187,7 @@
 #define MX51_PAD_EIM_EB3__AUD5_RXC		IOMUX_PAD(0x46c, 0x0d8, 6, 0x8dc, 0, NO_PAD_CTRL)
 #define MX51_PAD_EIM_EB3__CSI1_D3		IOMUX_PAD(0x46c, 0x0d8, 5, __NA_, 0, NO_PAD_CTRL)
 #define MX51_PAD_EIM_EB3__EIM_EB3		IOMUX_PAD(0x46c, 0x0d8, 0, __NA_, 0, NO_PAD_CTRL)
-#define MX51_PAD_EIM_EB3__FEC_RDATA1		IOMUX_PAD(0x46c, 0x0d8, 3, 0x95c, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_EB3__FEC_RDATA1		IOMUX_PAD(0x46c, 0x0d8, 3, 0x95c, 0, MX51_PAD_CTRL_5)
 #define MX51_PAD_EIM_EB3__GPIO2_23		IOMUX_PAD(0x46c, 0x0d8, 1, __NA_, 0, MX51_GPIO_PAD_CTRL)
 #define MX51_PAD_EIM_EB3__GPT_CMPOUT2		IOMUX_PAD(0x46c, 0x0d8, 7, __NA_, 0, NO_PAD_CTRL)
 #define MX51_PAD_EIM_OE__EIM_OE			IOMUX_PAD(0x470, 0x0dc, 0, __NA_, 0, NO_PAD_CTRL)
@@ -199,26 +199,26 @@
 #define MX51_PAD_EIM_CS2__AUD5_TXD		IOMUX_PAD(0x47c, 0x0e8, 6, 0x8d8, 1, NO_PAD_CTRL)
 #define MX51_PAD_EIM_CS2__CSI1_D4		IOMUX_PAD(0x47c, 0x0e8, 5, __NA_, 0, NO_PAD_CTRL)
 #define MX51_PAD_EIM_CS2__EIM_CS2		IOMUX_PAD(0x47c, 0x0e8, 0, __NA_, 0, NO_PAD_CTRL)
-#define MX51_PAD_EIM_CS2__FEC_RDATA2		IOMUX_PAD(0x47c, 0x0e8, 3, 0x960, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_CS2__FEC_RDATA2		IOMUX_PAD(0x47c, 0x0e8, 3, 0x960, 0, MX51_PAD_CTRL_5)
 #define MX51_PAD_EIM_CS2__GPIO2_27		IOMUX_PAD(0x47c, 0x0e8, 1, __NA_, 0, MX51_GPIO_PAD_CTRL)
 #define MX51_PAD_EIM_CS2__USBOTG_STP		IOMUX_PAD(0x47c, 0x0e8, 2, __NA_, 0, NO_PAD_CTRL)
 #define MX51_PAD_EIM_CS3__AUD5_RXD		IOMUX_PAD(0x480, 0x0ec, 6, 0x8d4, 1, NO_PAD_CTRL)
 #define MX51_PAD_EIM_CS3__CSI1_D5		IOMUX_PAD(0x480, 0x0ec, 5, __NA_, 0, NO_PAD_CTRL)
 #define MX51_PAD_EIM_CS3__EIM_CS3		IOMUX_PAD(0x480, 0x0ec, 0, __NA_, 0, NO_PAD_CTRL)
-#define MX51_PAD_EIM_CS3__FEC_RDATA3		IOMUX_PAD(0x480, 0x0ec, 3, 0x964, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_CS3__FEC_RDATA3		IOMUX_PAD(0x480, 0x0ec, 3, 0x964, 0, MX51_PAD_CTRL_5)
 #define MX51_PAD_EIM_CS3__GPIO2_28		IOMUX_PAD(0x480, 0x0ec, 1, __NA_, 0, MX51_GPIO_PAD_CTRL)
 #define MX51_PAD_EIM_CS3__USBOTG_NXT		IOMUX_PAD(0x480, 0x0ec, 2, __NA_, 0, NO_PAD_CTRL)
 #define MX51_PAD_EIM_CS4__AUD5_TXC		IOMUX_PAD(0x484, 0x0f0, 6, 0x8e4, 1, NO_PAD_CTRL)
 #define MX51_PAD_EIM_CS4__CSI1_D6		IOMUX_PAD(0x484, 0x0f0, 5, __NA_, 0, NO_PAD_CTRL)
 #define MX51_PAD_EIM_CS4__EIM_CS4		IOMUX_PAD(0x484, 0x0f0, 0, __NA_, 0, NO_PAD_CTRL)
-#define MX51_PAD_EIM_CS4__FEC_RX_ER		IOMUX_PAD(0x484, 0x0f0, 3, 0x970, 0, MX51_PAD_CTRL_2)
+#define MX51_PAD_EIM_CS4__FEC_RX_ER		IOMUX_PAD(0x484, 0x0f0, 3, 0x970, 0, MX51_PAD_CTRL_5)
 #define MX51_PAD_EIM_CS4__GPIO2_29		IOMUX_PAD(0x484, 0x0f0, 1, __NA_, 0, MX51_GPIO_PAD_CTRL)
 #define MX51_PAD_EIM_CS4__USBOTG_CLK		IOMUX_PAD(0x484, 0x0f0, 2, __NA_, 0, NO_PAD_CTRL)
 #define MX51_PAD_EIM_CS5__AUD5_TXFS		IOMUX_PAD(0x488, 0x0f4, 6, 0x8e8, 1, NO_PAD_CTRL)
 #define MX51_PAD_EIM_CS5__CSI1_D7		IOMUX_PAD(0x488, 0x0f4, 5, __NA_, 0, NO_PAD_CTRL)
 #define MX51_PAD_EIM_CS5__DISP1_EXT_CLK		IOMUX_PAD(0x488, 0x0f4, 4, 0x904, 0, NO_PAD_CTRL)
 #define MX51_PAD_EIM_CS5__EIM_CS5		IOMUX_PAD(0x488, 0x0f4, 0, __NA_, 0, NO_PAD_CTRL)
-#define MX51_PAD_EIM_CS5__FEC_CRS		IOMUX_PAD(0x488, 0x0f4, 3, 0x950, 0, MX51_PAD_CTRL_2)
+#define MX51_PAD_EIM_CS5__FEC_CRS		IOMUX_PAD(0x488, 0x0f4, 3, 0x950, 0, MX51_PAD_CTRL_5)
 #define MX51_PAD_EIM_CS5__GPIO2_30		IOMUX_PAD(0x488, 0x0f4, 1, __NA_, 0, MX51_GPIO_PAD_CTRL)
 #define MX51_PAD_EIM_CS5__USBOTG_DIR		IOMUX_PAD(0x488, 0x0f4, 2, __NA_, 0, NO_PAD_CTRL)
 #define MX51_PAD_EIM_DTACK__EIM_DTACK		IOMUX_PAD(0x48c, 0x0f8, 0, __NA_, 0, NO_PAD_CTRL)
@@ -259,14 +259,14 @@
 #define MX51_PAD_NANDF_RB1__SD4_CMD		IOMUX_PAD(0x4fc, 0x120, 0x15, __NA_, 0, MX51_SDHCI_PAD_CTRL)
 #define MX51_PAD_NANDF_RB2__DISP2_WAIT		IOMUX_PAD(0x500, 0x124, 5, 0x9a8, 0, NO_PAD_CTRL)
 #define MX51_PAD_NANDF_RB2__ECSPI2_SCLK		IOMUX_PAD(0x500, 0x124, 2, __NA_, 0, MX51_ECSPI_PAD_CTRL)
-#define MX51_PAD_NANDF_RB2__FEC_COL		IOMUX_PAD(0x500, 0x124, 1, 0x94c, 0, MX51_PAD_CTRL_2)
+#define MX51_PAD_NANDF_RB2__FEC_COL		IOMUX_PAD(0x500, 0x124, 1, 0x94c, 0, MX51_PAD_CTRL_5)
 #define MX51_PAD_NANDF_RB2__GPIO3_10		IOMUX_PAD(0x500, 0x124, 3, __NA_, 0, MX51_GPIO_PAD_CTRL)
 #define MX51_PAD_NANDF_RB2__NANDF_RB2		IOMUX_PAD(0x500, 0x124, 0, __NA_, 0, NO_PAD_CTRL)
 #define MX51_PAD_NANDF_RB2__USBH3_H3_DP		IOMUX_PAD(0x500, 0x124, 0x17, __NA_, 0, NO_PAD_CTRL)
 #define MX51_PAD_NANDF_RB2__USBH3_NXT		IOMUX_PAD(0x500, 0x124, 6, 0xa20, 0, NO_PAD_CTRL)
 #define MX51_PAD_NANDF_RB3__DISP1_WAIT		IOMUX_PAD(0x504, 0x128, 5, __NA_, 0, NO_PAD_CTRL)
 #define MX51_PAD_NANDF_RB3__ECSPI2_MISO		IOMUX_PAD(0x504, 0x128, 2, __NA_, 0, MX51_ECSPI_PAD_CTRL)
-#define MX51_PAD_NANDF_RB3__FEC_RX_CLK		IOMUX_PAD(0x504, 0x128, 1, 0x968, 0, MX51_PAD_CTRL_2)
+#define MX51_PAD_NANDF_RB3__FEC_RX_CLK		IOMUX_PAD(0x504, 0x128, 1, 0x968, 0, MX51_PAD_CTRL_5)
 #define MX51_PAD_NANDF_RB3__GPIO3_11		IOMUX_PAD(0x504, 0x128, 3, __NA_, 0, MX51_GPIO_PAD_CTRL)
 #define MX51_PAD_NANDF_RB3__NANDF_RB3		IOMUX_PAD(0x504, 0x128, 0, __NA_, 0, NO_PAD_CTRL)
 #define MX51_PAD_NANDF_RB3__USBH3_CLK		IOMUX_PAD(0x504, 0x128, 6, 0x9f8, 0, NO_PAD_CTRL)
@@ -313,7 +313,7 @@
 #define MX51_PAD_NANDF_CS7__NANDF_CS7		IOMUX_PAD(0x534, 0x14c, 0, __NA_, 0, NO_PAD_CTRL)
 #define MX51_PAD_NANDF_CS7__SD3_CLK		IOMUX_PAD(0x534, 0x14c, 5, __NA_, 0, MX51_SDHCI_PAD_CTRL | PAD_CTL_HYS)
 #define MX51_PAD_NANDF_RDY_INT__ECSPI2_SS0	IOMUX_PAD(0x538, 0x150, 2, __NA_, 0, MX51_ECSPI_PAD_CTRL)
-#define MX51_PAD_NANDF_RDY_INT__FEC_TX_CLK	IOMUX_PAD(0x538, 0x150, 1, 0x974, 0, MX51_PAD_CTRL_4)
+#define MX51_PAD_NANDF_RDY_INT__FEC_TX_CLK	IOMUX_PAD(0x538, 0x150, 1, 0x974, 0, MX51_PAD_CTRL_5)
 #define MX51_PAD_NANDF_RDY_INT__GPIO3_24	IOMUX_PAD(0x538, 0x150, 3, __NA_, 0, MX51_GPIO_PAD_CTRL)
 #define MX51_PAD_NANDF_RDY_INT__NANDF_RDY_INT	IOMUX_PAD(0x538, 0x150, 0, 0x938, 0, NO_PAD_CTRL)
 #define MX51_PAD_NANDF_RDY_INT__SD3_CMD		IOMUX_PAD(0x538, 0x150, 0x15, __NA_, 0, MX51_SDHCI_PAD_CTRL)
@@ -337,7 +337,7 @@
 #define MX51_PAD_NANDF_D12__NANDF_D12		IOMUX_PAD(0x548, 0x160, 0, __NA_, 0, NO_PAD_CTRL)
 #define MX51_PAD_NANDF_D12__PATA_DATA12		IOMUX_PAD(0x548, 0x160, 1, __NA_, 0, NO_PAD_CTRL)
 #define MX51_PAD_NANDF_D12__SD3_DAT4		IOMUX_PAD(0x548, 0x160, 5, __NA_, 0, NO_PAD_CTRL)
-#define MX51_PAD_NANDF_D11__FEC_RX_DV		IOMUX_PAD(0x54c, 0x164, 2, 0x96c, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_D11__FEC_RX_DV		IOMUX_PAD(0x54c, 0x164, 2, 0x96c, 0, MX51_PAD_CTRL_5)
 #define MX51_PAD_NANDF_D11__GPIO3_29		IOMUX_PAD(0x54c, 0x164, 3, __NA_, 0, MX51_GPIO_PAD_CTRL)
 #define MX51_PAD_NANDF_D11__NANDF_D11		IOMUX_PAD(0x54c, 0x164, 0, __NA_, 0, NO_PAD_CTRL)
 #define MX51_PAD_NANDF_D11__PATA_DATA11		IOMUX_PAD(0x54c, 0x164, 1, __NA_, 0, NO_PAD_CTRL)
@@ -346,7 +346,7 @@
 #define MX51_PAD_NANDF_D10__NANDF_D10		IOMUX_PAD(0x550, 0x168, 0, __NA_, 0, NO_PAD_CTRL)
 #define MX51_PAD_NANDF_D10__PATA_DATA10		IOMUX_PAD(0x550, 0x168, 1, __NA_, 0, NO_PAD_CTRL)
 #define MX51_PAD_NANDF_D10__SD3_DATA2		IOMUX_PAD(0x550, 0x168, 5, 0x944, 1, NO_PAD_CTRL)
-#define MX51_PAD_NANDF_D9__FEC_RDATA0		IOMUX_PAD(0x554, 0x16c, 0x12, 0x958, 0, MX51_PAD_CTRL_4)
+#define MX51_PAD_NANDF_D9__FEC_RDATA0		IOMUX_PAD(0x554, 0x16c, 0x2, 0x958, 0, MX51_PAD_CTRL_5)
 #define MX51_PAD_NANDF_D9__GPIO3_31		IOMUX_PAD(0x554, 0x16c, 3, __NA_, 0, MX51_GPIO_PAD_CTRL)
 #define MX51_PAD_NANDF_D9__NANDF_D9		IOMUX_PAD(0x554, 0x16c, 0, __NA_, 0, NO_PAD_CTRL)
 #define MX51_PAD_NANDF_D9__PATA_DATA9		IOMUX_PAD(0x554, 0x16c, 1, __NA_, 0, NO_PAD_CTRL)
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
