Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8gyB-0002ub-Uu
 for barebox@lists.infradead.org; Mon, 02 Mar 2020 09:02:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  2 Mar 2020 10:02:25 +0100
Message-Id: <20200302090225.8317-3-s.hauer@pengutronix.de>
In-Reply-To: <20200302090225.8317-1-s.hauer@pengutronix.de>
References: <20200302090225.8317-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/3] ARM: dts: Add missing #size/address-cells properties
To: Barebox List <barebox@lists.infradead.org>

Some boards lack the #address-cells/#size-cells properties for the i.MX6
GPMI nand controller. Add them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx6qdl-cm-fx6.dtsi | 2 ++
 arch/arm/dts/imx6qdl-tx6x.dtsi   | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/arm/dts/imx6qdl-cm-fx6.dtsi b/arch/arm/dts/imx6qdl-cm-fx6.dtsi
index 72d00f1b9e..3082acbe79 100644
--- a/arch/arm/dts/imx6qdl-cm-fx6.dtsi
+++ b/arch/arm/dts/imx6qdl-cm-fx6.dtsi
@@ -363,6 +363,8 @@
 
 /* nand */
 &gpmi {
+	#address-cells = <1>;
+	#size-cells = <1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_gpmi_nand>;
 	status = "okay";
diff --git a/arch/arm/dts/imx6qdl-tx6x.dtsi b/arch/arm/dts/imx6qdl-tx6x.dtsi
index ef0f935370..13102168f7 100644
--- a/arch/arm/dts/imx6qdl-tx6x.dtsi
+++ b/arch/arm/dts/imx6qdl-tx6x.dtsi
@@ -25,6 +25,8 @@
 };
 
 &gpmi {
+	#address-cells = <1>;
+	#size-cells = <1>;
 	status = "disabled";
 
 	partition@0 {
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
