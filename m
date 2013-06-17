Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UoVsG-00020R-4d
 for barebox@lists.infradead.org; Mon, 17 Jun 2013 09:37:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Jun 2013 11:36:54 +0200
Message-Id: <1371461816-18004-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] ARM: i.MX51: Add USBH1 and USBH2 pinmux entries
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx51.dtsi | 39 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/arm/dts/imx51.dtsi b/arch/arm/dts/imx51.dtsi
index a900287..fcbc8be 100644
--- a/arch/arm/dts/imx51.dtsi
+++ b/arch/arm/dts/imx51.dtsi
@@ -537,6 +537,45 @@
 					};
 				};
 
+				usbh1 {
+					pinctrl_usbh1_1: usbh1grp-1 {
+						fsl,pins = <
+							MX51_PAD_USBH1_DATA0__USBH1_DATA0 0x1e5
+							MX51_PAD_USBH1_DATA1__USBH1_DATA1 0x1e5
+							MX51_PAD_USBH1_DATA2__USBH1_DATA2 0x1e5
+							MX51_PAD_USBH1_DATA3__USBH1_DATA3 0x1e5
+							MX51_PAD_USBH1_DATA4__USBH1_DATA4 0x1e5
+							MX51_PAD_USBH1_DATA5__USBH1_DATA5 0x1e5
+							MX51_PAD_USBH1_DATA6__USBH1_DATA6 0x1e5
+							MX51_PAD_USBH1_DATA7__USBH1_DATA7 0x1e5
+							MX51_PAD_USBH1_CLK__USBH1_CLK 0x1e5
+							MX51_PAD_USBH1_DIR__USBH1_DIR 0x1e5
+							MX51_PAD_USBH1_NXT__USBH1_NXT 0x1e5
+							MX51_PAD_USBH1_STP__USBH1_STP 0x1e5
+						>;
+					};
+				};
+
+
+				usbh2 {
+					pinctrl_usbh2_1: usbh2grp-1 {
+						fsl,pins = <
+							MX51_PAD_EIM_D16__USBH2_DATA0 0x1e5
+							MX51_PAD_EIM_D17__USBH2_DATA1 0x1e5
+							MX51_PAD_EIM_D18__USBH2_DATA2 0x1e5
+							MX51_PAD_EIM_D19__USBH2_DATA3 0x1e5
+							MX51_PAD_EIM_D20__USBH2_DATA4 0x1e5
+							MX51_PAD_EIM_D21__USBH2_DATA5 0x1e5
+							MX51_PAD_EIM_D22__USBH2_DATA6 0x1e5
+							MX51_PAD_EIM_D23__USBH2_DATA7 0x1e5
+							MX51_PAD_EIM_A24__USBH2_CLK 0x1e5
+							MX51_PAD_EIM_A25__USBH2_DIR 0x1e5
+							MX51_PAD_EIM_A27__USBH2_NXT 0x1e5
+							MX51_PAD_EIM_A26__USBH2_STP 0x1e5
+						>;
+					};
+				};
+
 				kpp {
 					pinctrl_kpp_1: kppgrp-1 {
 						fsl,pins = <
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
