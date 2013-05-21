Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UejKr-0005N3-RJ
 for barebox@lists.infradead.org; Tue, 21 May 2013 09:58:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 21 May 2013 11:57:42 +0200
Message-Id: <1369130267-8094-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369130267-8094-1-git-send-email-s.hauer@pengutronix.de>
References: <1369130267-8094-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/10] ARM: i.MX51: Fixup fec pads in dts
To: barebox@lists.infradead.org

The Kernel dts relies on reset default pad settings for the FEC.
Add correct pad settings.

Also, add missing MX51_PAD_NANDF_D11__FEC_RX_DV.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx51.dtsi | 35 ++++++++++++++++++-----------------
 1 file changed, 18 insertions(+), 17 deletions(-)

diff --git a/arch/arm/dts/imx51.dtsi b/arch/arm/dts/imx51.dtsi
index af953f2..02c132d 100644
--- a/arch/arm/dts/imx51.dtsi
+++ b/arch/arm/dts/imx51.dtsi
@@ -292,23 +292,24 @@
 				fec {
 					pinctrl_fec_1: fecgrp-1 {
 						fsl,pins = <
-							MX51_PAD_EIM_EB2__FEC_MDIO	   0x80000000
-							MX51_PAD_EIM_EB3__FEC_RDATA1	   0x80000000
-							MX51_PAD_EIM_CS2__FEC_RDATA2	   0x80000000
-							MX51_PAD_EIM_CS3__FEC_RDATA3	   0x80000000
-							MX51_PAD_EIM_CS4__FEC_RX_ER	   0x80000000
-							MX51_PAD_EIM_CS5__FEC_CRS	   0x80000000
-							MX51_PAD_NANDF_RB2__FEC_COL	   0x80000000
-							MX51_PAD_NANDF_RB3__FEC_RX_CLK	   0x80000000
-							MX51_PAD_NANDF_D9__FEC_RDATA0	   0x80000000
-							MX51_PAD_NANDF_D8__FEC_TDATA0	   0x80000000
-							MX51_PAD_NANDF_CS2__FEC_TX_ER	   0x80000000
-							MX51_PAD_NANDF_CS3__FEC_MDC	   0x80000000
-							MX51_PAD_NANDF_CS4__FEC_TDATA1	   0x80000000
-							MX51_PAD_NANDF_CS5__FEC_TDATA2	   0x80000000
-							MX51_PAD_NANDF_CS6__FEC_TDATA3	   0x80000000
-							MX51_PAD_NANDF_CS7__FEC_TX_EN	   0x80000000
-							MX51_PAD_NANDF_RDY_INT__FEC_TX_CLK 0x80000000
+							MX51_PAD_EIM_EB2__FEC_MDIO	   0x000001f5
+							MX51_PAD_EIM_EB3__FEC_RDATA1	   0x00000085
+							MX51_PAD_EIM_CS2__FEC_RDATA2	   0x00000085
+							MX51_PAD_EIM_CS3__FEC_RDATA3	   0x00000085
+							MX51_PAD_EIM_CS4__FEC_RX_ER	   0x00000180
+							MX51_PAD_EIM_CS5__FEC_CRS	   0x00000180
+							MX51_PAD_NANDF_RB2__FEC_COL	   0x00000180
+							MX51_PAD_NANDF_RB3__FEC_RX_CLK	   0x00000180
+							MX51_PAD_NANDF_D9__FEC_RDATA0	   0x00002180
+							MX51_PAD_NANDF_D8__FEC_TDATA0	   0x00002004
+							MX51_PAD_NANDF_CS2__FEC_TX_ER	   0x00002004
+							MX51_PAD_NANDF_CS3__FEC_MDC	   0x00002004
+							MX51_PAD_NANDF_CS4__FEC_TDATA1	   0x00002004
+							MX51_PAD_NANDF_CS5__FEC_TDATA2	   0x00002004
+							MX51_PAD_NANDF_CS6__FEC_TDATA3	   0x00002004
+							MX51_PAD_NANDF_CS7__FEC_TX_EN	   0x00002004
+							MX51_PAD_NANDF_RDY_INT__FEC_TX_CLK 0x00002180
+							MX51_PAD_NANDF_D11__FEC_RX_DV      0x000020a4
 						>;
 					};
 
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
