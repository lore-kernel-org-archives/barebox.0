Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WiIoE-0000kL-MX
 for barebox@lists.infradead.org; Thu, 08 May 2014 07:32:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  8 May 2014 09:31:39 +0200
Message-Id: <1399534299-27051-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1399534299-27051-1-git-send-email-s.hauer@pengutronix.de>
References: <1399534299-27051-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] ARM: dts: i.MX51 babbage: overwrite upstream FEC iomux
 settings
To: barebox@lists.infradead.org

As of v3.15-rc4 these contain NO_PAD_CTRL settings which are not
suitable for an initial setup. Overwrite upstream settings until
these are fixed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx51-babbage.dts | 36 ++++++++++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm/dts/imx51-babbage.dts b/arch/arm/dts/imx51-babbage.dts
index 82b25d3..e258586 100644
--- a/arch/arm/dts/imx51-babbage.dts
+++ b/arch/arm/dts/imx51-babbage.dts
@@ -36,3 +36,39 @@
 &iim {
 	barebox,provide-mac-address = <&fec 1 9>;
 };
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	imx51-babbage {
+		pinctrl_fec: fecgrp {
+			/*
+			 * Overwrite upstream FEC iomux settings since these currently
+			 * have NO_PAD_CTRL instead of real settings. Remove this once
+			 * this is fixed upstream.
+			 */
+			fsl,pins = <
+				MX51_PAD_EIM_EB2__FEC_MDIO		0x000001f5
+				MX51_PAD_EIM_EB3__FEC_RDATA1		0x00000085
+				MX51_PAD_EIM_CS2__FEC_RDATA2		0x00000085
+				MX51_PAD_EIM_CS3__FEC_RDATA3		0x00000085
+				MX51_PAD_EIM_CS4__FEC_RX_ER		0x00000180
+				MX51_PAD_EIM_CS5__FEC_CRS		0x00000180
+				MX51_PAD_NANDF_RB2__FEC_COL		0x00000180
+				MX51_PAD_NANDF_RB3__FEC_RX_CLK		0x00000180
+				MX51_PAD_NANDF_D9__FEC_RDATA0		0x00002180
+				MX51_PAD_NANDF_D8__FEC_TDATA0		0x00002004
+				MX51_PAD_NANDF_CS2__FEC_TX_ER		0x00002004
+				MX51_PAD_NANDF_CS3__FEC_MDC		0x00002004
+				MX51_PAD_NANDF_CS4__FEC_TDATA1		0x00002004
+				MX51_PAD_NANDF_CS5__FEC_TDATA2		0x00002004
+				MX51_PAD_NANDF_CS6__FEC_TDATA3		0x00002004
+				MX51_PAD_NANDF_CS7__FEC_TX_EN		0x00002004
+				MX51_PAD_NANDF_RDY_INT__FEC_TX_CLK	0x00002180
+				MX51_PAD_NANDF_D11__FEC_RX_DV		0x000020a4
+				MX51_PAD_EIM_A20__GPIO2_14		0x00000085 /* Phy Reset */
+			>;
+		};
+	};
+};
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
