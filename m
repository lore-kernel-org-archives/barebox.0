Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XmPjt-0002G0-2K
 for barebox@lists.infradead.org; Thu, 06 Nov 2014 16:16:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Nov 2014 17:16:23 +0100
Message-Id: <1415290584-20203-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: i.MX6 GuF Santaro: Fix phy clock
To: barebox@lists.infradead.org

Use external phy clock so that the kernel configures GPR1 bit 21
correctly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx6q-guf-santaro.dts | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/dts/imx6q-guf-santaro.dts b/arch/arm/dts/imx6q-guf-santaro.dts
index 7978d80..98fb78f 100644
--- a/arch/arm/dts/imx6q-guf-santaro.dts
+++ b/arch/arm/dts/imx6q-guf-santaro.dts
@@ -51,6 +51,12 @@
 		power-supply = <&reg_backlight>;
 		status = "okay";
 	};
+
+	phyclk: phyclk {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <25000000>;
+	};
 };
 
 &fec {
@@ -58,6 +64,9 @@
 	pinctrl-0 = <&pinctrl_enet>;
 	phy-mode = "rmii";
 	status = "okay";
+	clocks = <&clks IMX6QDL_CLK_ENET>,
+		 <&clks IMX6QDL_CLK_ENET>,
+		 <&phyclk>;
 };
 
 &i2c1 {
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
