Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hiIRt-0002ol-PL
 for barebox@lists.infradead.org; Tue, 02 Jul 2019 13:03:55 +0000
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Tue, 2 Jul 2019 15:03:50 +0200
Message-Id: <1562072630-54127-2-git-send-email-s.riedmueller@phytec.de>
In-Reply-To: <1562072630-54127-1-git-send-email-s.riedmueller@phytec.de>
References: <1562072630-54127-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: [PATCH 2/2] ARM: dts: imx6ul: phycore: Reduce eth drive strength
To: barebox@lists.infradead.org

Reduce the drive strength for the MDC, MDIO and TX pins of fec1 to improve
signal quality and EMC. Also disable internal pull ups on the MDC and
MDIO pins.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 arch/arm/dts/imx6ul-phytec-phycore-som.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi b/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi
index 0ec7eae1eff0..c7c657bcd409 100644
--- a/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi
@@ -159,16 +159,16 @@
 
 		pinctrl_enet1: enet1grp {
 			fsl,pins = <
-				MX6UL_PAD_GPIO1_IO07__ENET1_MDC		0x1b0b0
-				MX6UL_PAD_GPIO1_IO06__ENET1_MDIO	0x1b0b0
+				MX6UL_PAD_GPIO1_IO07__ENET1_MDC		0x10010
+				MX6UL_PAD_GPIO1_IO06__ENET1_MDIO	0x10010
 				MX6UL_PAD_ENET1_RX_EN__ENET1_RX_EN	0x1b0b0
 				MX6UL_PAD_ENET1_RX_ER__ENET1_RX_ER	0x1b0b0
 				MX6UL_PAD_ENET1_RX_DATA0__ENET1_RDATA00	0x1b0b0
 				MX6UL_PAD_ENET1_RX_DATA1__ENET1_RDATA01	0x1b0b0
-				MX6UL_PAD_ENET1_TX_EN__ENET1_TX_EN	0x1b0b0
-				MX6UL_PAD_ENET1_TX_DATA0__ENET1_TDATA00	0x1b0b0
-				MX6UL_PAD_ENET1_TX_DATA1__ENET1_TDATA01	0x1b0b0
-				MX6UL_PAD_ENET1_TX_CLK__ENET1_REF_CLK1	0x4001b031
+				MX6UL_PAD_ENET1_TX_EN__ENET1_TX_EN	0x1b010
+				MX6UL_PAD_ENET1_TX_DATA0__ENET1_TDATA00	0x1b010
+				MX6UL_PAD_ENET1_TX_DATA1__ENET1_TDATA01	0x1b010
+				MX6UL_PAD_ENET1_TX_CLK__ENET1_REF_CLK1	0x4001b010
 			>;
 		};
 
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
