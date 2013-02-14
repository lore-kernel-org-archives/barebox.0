Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5umx-00052t-2M
 for barebox@lists.infradead.org; Thu, 14 Feb 2013 09:07:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 14 Feb 2013 10:07:23 +0100
Message-Id: <1360832847-22414-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1360832847-22414-1-git-send-email-s.hauer@pengutronix.de>
References: <1360832847-22414-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] ARM i.MX6: Fix HSIC pad definitions
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/iomux-mx6.h |   19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/iomux-mx6.h b/arch/arm/mach-imx/include/mach/iomux-mx6.h
index f50fd8a..57d1a3b 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx6.h
+++ b/arch/arm/mach-imx/include/mach/iomux-mx6.h
@@ -83,6 +83,9 @@
 		MX6_PAD_CTL_DSE_40ohm | MX6_PAD_CTL_HYS | \
 		MX6_PAD_CTL_ODE | MX6_PAD_CTL_SRE_FAST)
 
+#define MX6Q_USB_HSIC_PAD_CTRL	(MX6_PAD_CTL_HYS | MX6_PAD_CTL_PKE | MX6_PAD_CTL_PUE |	\
+				MX6_PAD_CTL_DSE_40ohm)
+
 #define MX6Q_HIGH_DRV (MX6_PAD_CTL_DSE_120ohm)
 
 #define _MX6Q_PAD_SD2_DAT1__USDHC2_DAT1                                        \
@@ -135,7 +138,7 @@
 		IOMUX_PAD(0x0368, 0x0054, 7, 0x0000, 0, 0)
 
 #define _MX6Q_PAD_RGMII_TXC__USBOH3_H2_DATA                                    \
-		IOMUX_PAD(0x036C, 0x0058, 0, 0x0000, 0, 0)
+		IOMUX_PAD(0x036C, 0x0058, IOMUX_CONFIG_SION, 0x0000, 0, 0)
 #define _MX6Q_PAD_RGMII_TXC__ENET_RGMII_TXC                                    \
 		IOMUX_PAD(0x036C, 0x0058, 1, 0x0000, 0, 0)
 #define _MX6Q_PAD_RGMII_TXC__SPDIF_SPDIF_EXTCLK                                \
@@ -188,7 +191,7 @@
 		IOMUX_PAD(0x037C, 0x0068, 6, 0x0000, 0, 0)
 
 #define _MX6Q_PAD_RGMII_RX_CTL__USBOH3_H3_DATA                                 \
-		IOMUX_PAD(0x0380, 0x006C, 0, 0x0000, 0, 0)
+		IOMUX_PAD(0x0380, 0x006C, IOMUX_CONFIG_SION, 0x0000, 0, 0)
 #define _MX6Q_PAD_RGMII_RX_CTL__ENET_RGMII_RX_CTL                              \
 		IOMUX_PAD(0x0380, 0x006C, 1, 0x0858, 0, 0)
 #define _MX6Q_PAD_RGMII_RX_CTL__GPIO_6_24                                      \
@@ -206,7 +209,7 @@
 		IOMUX_PAD(0x0384, 0x0070, 6, 0x0000, 0, 0)
 
 #define _MX6Q_PAD_RGMII_TX_CTL__USBOH3_H2_STROBE                               \
-		IOMUX_PAD(0x0388, 0x0074, 0, 0x0000, 0, 0)
+		IOMUX_PAD(0x0388, 0x0074, IOMUX_CONFIG_SION, 0x0000, 0, 0)
 #define _MX6Q_PAD_RGMII_TX_CTL__ENET_RGMII_TX_CTL                              \
 		IOMUX_PAD(0x0388, 0x0074, 1, 0x0000, 0, 0)
 #define _MX6Q_PAD_RGMII_TX_CTL__GPIO_6_26                                      \
@@ -246,7 +249,7 @@
 		IOMUX_PAD(0x0394, 0x0080, 6, 0x0000, 0, 0)
 
 #define _MX6Q_PAD_RGMII_RXC__USBOH3_H3_STROBE                                  \
-		IOMUX_PAD(0x0398, 0x0084, 0, 0x0000, 0, 0)
+		IOMUX_PAD(0x0398, 0x0084, IOMUX_CONFIG_SION, 0x0000, 0, 0)
 #define _MX6Q_PAD_RGMII_RXC__ENET_RGMII_RXC                                    \
 		IOMUX_PAD(0x0398, 0x0084, 1, 0x0844, 0, 0)
 #define _MX6Q_PAD_RGMII_RXC__GPIO_6_30                                         \
@@ -3695,7 +3698,7 @@
 #define  MX6Q_PAD_SD2_DAT0__DCIC2_DCIC_OUT                       (_MX6Q_PAD_SD2_DAT0__DCIC2_DCIC_OUT | MUX_PAD_CTRL(NO_PAD_CTRL))
 #define  MX6Q_PAD_SD2_DAT0__ANATOP_ANATOP_TESTO_2                (_MX6Q_PAD_SD2_DAT0__ANATOP_ANATOP_TESTO_2 | MUX_PAD_CTRL(NO_PAD_CTRL))
 
-#define  MX6Q_PAD_RGMII_TXC__USBOH3_H2_DATA                      (_MX6Q_PAD_RGMII_TXC__USBOH3_H2_DATA | MUX_PAD_CTRL(NO_PAD_CTRL))
+#define  MX6Q_PAD_RGMII_TXC__USBOH3_H2_DATA                      (_MX6Q_PAD_RGMII_TXC__USBOH3_H2_DATA | MUX_PAD_CTRL(MX6Q_USB_HSIC_PAD_CTRL))
 #define  MX6Q_PAD_RGMII_TXC__ENET_RGMII_TXC                      (_MX6Q_PAD_RGMII_TXC__ENET_RGMII_TXC | MUX_PAD_CTRL(MX6Q_ENET_PAD_CTRL))
 #define  MX6Q_PAD_RGMII_TXC__SPDIF_SPDIF_EXTCLK                  (_MX6Q_PAD_RGMII_TXC__SPDIF_SPDIF_EXTCLK | MUX_PAD_CTRL(NO_PAD_CTRL))
 #define  MX6Q_PAD_RGMII_TXC__GPIO_6_19                           (_MX6Q_PAD_RGMII_TXC__GPIO_6_19 | MUX_PAD_CTRL(NO_PAD_CTRL))
@@ -3724,7 +3727,7 @@
 #define  MX6Q_PAD_RGMII_TD3__GPIO_6_23                           (_MX6Q_PAD_RGMII_TD3__GPIO_6_23 | MUX_PAD_CTRL(NO_PAD_CTRL))
 #define  MX6Q_PAD_RGMII_TD3__MIPI_CORE_DPHY_TEST_IN_4            (_MX6Q_PAD_RGMII_TD3__MIPI_CORE_DPHY_TEST_IN_4 | MUX_PAD_CTRL(NO_PAD_CTRL))
 
-#define  MX6Q_PAD_RGMII_RX_CTL__USBOH3_H3_DATA                   (_MX6Q_PAD_RGMII_RX_CTL__USBOH3_H3_DATA | MUX_PAD_CTRL(NO_PAD_CTRL))
+#define  MX6Q_PAD_RGMII_RX_CTL__USBOH3_H3_DATA                   (_MX6Q_PAD_RGMII_RX_CTL__USBOH3_H3_DATA | MUX_PAD_CTRL(MX6Q_USB_HSIC_PAD_CTRL))
 #define  MX6Q_PAD_RGMII_RX_CTL__ENET_RGMII_RX_CTL                (_MX6Q_PAD_RGMII_RX_CTL__ENET_RGMII_RX_CTL | MUX_PAD_CTRL(MX6Q_ENET_PAD_CTRL))
 #define  MX6Q_PAD_RGMII_RX_CTL__GPIO_6_24                        (_MX6Q_PAD_RGMII_RX_CTL__GPIO_6_24 | MUX_PAD_CTRL(NO_PAD_CTRL))
 #define  MX6Q_PAD_RGMII_RX_CTL__MIPI_CORE_DPHY_TEST_IN_5         (_MX6Q_PAD_RGMII_RX_CTL__MIPI_CORE_DPHY_TEST_IN_5 | MUX_PAD_CTRL(NO_PAD_CTRL))
@@ -3734,7 +3737,7 @@
 #define  MX6Q_PAD_RGMII_RD0__GPIO_6_25                           (_MX6Q_PAD_RGMII_RD0__GPIO_6_25 | MUX_PAD_CTRL(NO_PAD_CTRL))
 #define  MX6Q_PAD_RGMII_RD0__MIPI_CORE_DPHY_TEST_IN_6            (_MX6Q_PAD_RGMII_RD0__MIPI_CORE_DPHY_TEST_IN_6 | MUX_PAD_CTRL(NO_PAD_CTRL))
 
-#define  MX6Q_PAD_RGMII_TX_CTL__USBOH3_H2_STROBE                 (_MX6Q_PAD_RGMII_TX_CTL__USBOH3_H2_STROBE | MUX_PAD_CTRL(NO_PAD_CTRL))
+#define  MX6Q_PAD_RGMII_TX_CTL__USBOH3_H2_STROBE                 (_MX6Q_PAD_RGMII_TX_CTL__USBOH3_H2_STROBE | MUX_PAD_CTRL(MX6Q_USB_HSIC_PAD_CTRL))
 #define  MX6Q_PAD_RGMII_TX_CTL__ENET_RGMII_TX_CTL                (_MX6Q_PAD_RGMII_TX_CTL__ENET_RGMII_TX_CTL | MUX_PAD_CTRL(MX6Q_ENET_PAD_CTRL))
 #define  MX6Q_PAD_RGMII_TX_CTL__GPIO_6_26                        (_MX6Q_PAD_RGMII_TX_CTL__GPIO_6_26 | MUX_PAD_CTRL(NO_PAD_CTRL))
 #define  MX6Q_PAD_RGMII_TX_CTL__MIPI_CORE_DPHY_TEST_IN_7         (_MX6Q_PAD_RGMII_TX_CTL__MIPI_CORE_DPHY_TEST_IN_7 | MUX_PAD_CTRL(NO_PAD_CTRL))
@@ -3756,7 +3759,7 @@
 #define  MX6Q_PAD_RGMII_RD3__GPIO_6_29                           (_MX6Q_PAD_RGMII_RD3__GPIO_6_29 | MUX_PAD_CTRL(NO_PAD_CTRL))
 #define  MX6Q_PAD_RGMII_RD3__MIPI_CORE_DPHY_TEST_IN_10           (_MX6Q_PAD_RGMII_RD3__MIPI_CORE_DPHY_TEST_IN_10 | MUX_PAD_CTRL(NO_PAD_CTRL))
 
-#define  MX6Q_PAD_RGMII_RXC__USBOH3_H3_STROBE                    (_MX6Q_PAD_RGMII_RXC__USBOH3_H3_STROBE | MUX_PAD_CTRL(NO_PAD_CTRL))
+#define  MX6Q_PAD_RGMII_RXC__USBOH3_H3_STROBE                    (_MX6Q_PAD_RGMII_RXC__USBOH3_H3_STROBE | MUX_PAD_CTRL(MX6Q_USB_HSIC_PAD_CTRL))
 #define  MX6Q_PAD_RGMII_RXC__ENET_RGMII_RXC                      (_MX6Q_PAD_RGMII_RXC__ENET_RGMII_RXC | MUX_PAD_CTRL(MX6Q_ENET_PAD_CTRL))
 #define  MX6Q_PAD_RGMII_RXC__GPIO_6_30                           (_MX6Q_PAD_RGMII_RXC__GPIO_6_30 | MUX_PAD_CTRL(NO_PAD_CTRL))
 #define  MX6Q_PAD_RGMII_RXC__MIPI_CORE_DPHY_TEST_IN_11           (_MX6Q_PAD_RGMII_RXC__MIPI_CORE_DPHY_TEST_IN_11 | MUX_PAD_CTRL(NO_PAD_CTRL))
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
