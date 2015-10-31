Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22a.google.com ([2a00:1450:4010:c07::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZsWA7-0004yM-MS
 for barebox@lists.infradead.org; Sat, 31 Oct 2015 13:25:41 +0000
Received: by lfbf136 with SMTP id f136so31839120lfb.0
 for <barebox@lists.infradead.org>; Sat, 31 Oct 2015 06:25:18 -0700 (PDT)
From: Anton Bondarenko <anton.bondarenko.sama@gmail.com>
Date: Sat, 31 Oct 2015 14:25:09 +0100
Message-Id: <1446297909-2001-4-git-send-email-anton.bondarenko.sama@gmail.com>
In-Reply-To: <1446297909-2001-1-git-send-email-anton.bondarenko.sama@gmail.com>
References: <1446297909-2001-1-git-send-email-anton.bondarenko.sama@gmail.com>
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
Subject: [PATCH 3/3] embedsky-e9: cleanup and reorder DTS nodes
To: s.hauer@pengutronix.de, barebox@lists.infradead.org

Removed duplicate ldb node. Removed disabled nodes

Signed-off-by: Anton Bondarenko <anton.bondarenko.sama@gmail.com>
---
 arch/arm/dts/imx6q-embedsky-e9.dtsi | 77 ++++++++++++++++---------------------
 1 file changed, 33 insertions(+), 44 deletions(-)

diff --git a/arch/arm/dts/imx6q-embedsky-e9.dtsi b/arch/arm/dts/imx6q-embedsky-e9.dtsi
index f117cae..e4d9c12 100644
--- a/arch/arm/dts/imx6q-embedsky-e9.dtsi
+++ b/arch/arm/dts/imx6q-embedsky-e9.dtsi
@@ -91,41 +91,6 @@
 
 };
 
-&audmux {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_audmux>;
-	status = "okay";
-};
-
-&fec {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_enet>;
-	phy-mode = "rgmii";
-	phy-supply=<&reg_3p3v>;
-	status = "okay";
-};
-
-&i2c1 {
-	clock-frequency = <100000>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c1>;
-	status = "okay";
-
-};
-
-&i2c2 {
-	clock-frequency = <100000>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c2>;
-	status = "okay";
-};
-
-&i2c3 {
-	clock-frequency = <100000>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c3>;
-	status = "okay";
-};
 
 &iomuxc {
 	pinctrl-names = "default";
@@ -302,7 +267,39 @@
 	};
 };
 
-&ldb {
+&audmux {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_audmux>;
+	status = "okay";
+};
+
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet>;
+	phy-mode = "rgmii";
+	phy-supply=<&reg_3p3v>;
+	status = "okay";
+};
+
+&i2c1 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+
+};
+
+&i2c2 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	status = "okay";
+};
+
+&i2c3 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c3>;
 	status = "okay";
 };
 
@@ -382,11 +379,3 @@
 &sata {
 	status = "okay";
 };
-
-&usdhc3 {
-	status = "disabled";
-};
-
-&ecspi1 {
-	status = "disabled";
-};
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
