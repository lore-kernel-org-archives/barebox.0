Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6Wgg-0007wu-Un
 for barebox@lists.infradead.org; Thu, 12 Apr 2018 07:30:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Apr 2018 09:30:06 +0200
Message-Id: <20180412073017.6750-6-s.hauer@pengutronix.de>
In-Reply-To: <20180412073017.6750-1-s.hauer@pengutronix.de>
References: <20180412073017.6750-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/16] ARM: dts: imx6qdl: phycore: Sync muxing with kernel
To: Barebox List <barebox@lists.infradead.org>
Cc: Stefan Riedmueller <s.riedmueller@phytec.de>

From: Christian Hemp <c.hemp@phytec.de>

Sync the USDCH drive strength muxing with kernel.
With this drive strength we saw no sd card errors.

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
Acked-by: Stefan Lengfeld <s.lengfeld@phytec.de>
Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
index 3a5b0dbf24..923c79c67b 100644
--- a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -205,12 +205,12 @@
 
 		pinctrl_usdhc1: usdhc1grp {
 			fsl,pins = <
-				MX6QDL_PAD_SD1_CMD__SD1_CMD		0x17059
-				MX6QDL_PAD_SD1_CLK__SD1_CLK		0x10059
-				MX6QDL_PAD_SD1_DAT0__SD1_DATA0		0x17059
-				MX6QDL_PAD_SD1_DAT1__SD1_DATA1		0x17059
-				MX6QDL_PAD_SD1_DAT2__SD1_DATA2		0x17059
-				MX6QDL_PAD_SD1_DAT3__SD1_DATA3		0x17059
+				MX6QDL_PAD_SD1_CMD__SD1_CMD		0x170f9
+				MX6QDL_PAD_SD1_CLK__SD1_CLK		0x100f9
+				MX6QDL_PAD_SD1_DAT0__SD1_DATA0		0x170f9
+				MX6QDL_PAD_SD1_DAT1__SD1_DATA1		0x170f9
+				MX6QDL_PAD_SD1_DAT2__SD1_DATA2		0x170f9
+				MX6QDL_PAD_SD1_DAT3__SD1_DATA3		0x170f9
 				MX6QDL_PAD_EIM_BCLK__GPIO6_IO31		0x80000000 /* CD */
 			>;
 		};
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
