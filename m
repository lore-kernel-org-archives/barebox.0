Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOITu-0005qn-N4
 for barebox@lists.infradead.org; Wed, 08 May 2019 09:03:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  8 May 2019 11:03:02 +0200
Message-Id: <20190508090307.17729-6-s.hauer@pengutronix.de>
In-Reply-To: <20190508090307.17729-1-s.hauer@pengutronix.de>
References: <20190508090307.17729-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/10] ARM: Layerscape: TQMLS1046a: Update device tree files
 from tq repository
To: Barebox List <barebox@lists.infradead.org>

Update TQMLS1046a device tree files from TQ repository as of rocko.TQMLS1046A.BSP.SW.0002

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts | 67 +++++++++++++++--------
 arch/arm/dts/fsl-tqmls1046a.dtsi          |  4 +-
 2 files changed, 46 insertions(+), 25 deletions(-)

diff --git a/arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts b/arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts
index f21479eef8..d783d50baf 100644
--- a/arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts
+++ b/arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts
@@ -20,6 +20,12 @@
 		serial0 = &duart0;
 		serial1 = &duart1;
 		mmc0 = &esdhc;
+		qsgmii_s1_p1 = &qsgmii1_phy1;
+		qsgmii_s1_p2 = &qsgmii1_phy2;
+		qsgmii_s2_p1 = &qsgmii2_phy1;
+		qsgmii_s2_p2 = &qsgmii2_phy2;
+		qsgmii_s2_p3 = &qsgmii2_phy3;
+		qsgmii_s2_p4 = &qsgmii2_phy4;
 	};
 
 	chosen {
@@ -66,6 +72,14 @@
 	status = "okay";
 };
 
+&esdhc {
+	mmc-hs200-1_8v;
+	sd-uhs-sdr104;
+	sd-uhs-sdr50;
+	sd-uhs-sdr25;
+	sd-uhs-sdr12;
+};
+
 &i2c3 {
 	status = "okay";
 
@@ -132,43 +146,40 @@
 &fman0 {
 	status = "okay";
 
-	ethernet@e0000 {
-		status = "disabled";
+	ethernet@e0000 { /* EMAC.1 */
+		phy-connection-type = "sgmii";
+
 	};
 
-	ethernet@e2000 {
-		phy-handle = <&qsgmii1_phy2>;
+	ethernet@e2000 { /* EMAC.2 */
 		phy-connection-type = "sgmii";
 	};
 
-	ethernet@e4000 {
+	ethernet@e4000 { /* EMAC.3 */
 		phy-handle = <&rgmii_phy1>;
 		phy-connection-type = "rgmii";
 		phy-mode = "rgmii-id";
 	};
 
-	ethernet@e6000 {
+	ethernet@e6000 { /* EMAC.4 */
 		phy-handle = <&rgmii_phy2>;
 		phy-connection-type = "rgmii";
 		phy-mode = "rgmii-id";
 	};
 
-	ethernet@e8000 {
-		status = "disabled";
+	ethernet@e8000 { /* EMAC.5 */
+		phy-connection-type = "sgmii";
 	};
 
-	ethernet@ea000 {
-		phy-handle = <&qsgmii2_phy2>;
+	ethernet@ea000 { /* EMAC.6 */
 		phy-connection-type = "sgmii";
 	};
 
-	ethernet@f0000 {
-		phy-handle = <&qsgmii1_phy1>;
+	ethernet@f0000 { /* EMAC.9 */
 		phy-connection-type = "sgmii";
 	};
 
-	ethernet@f2000 {
-		phy-handle = <&qsgmii2_phy1>;
+	ethernet@f2000 { /* EMAC.10 */
 		phy-connection-type = "sgmii";
 	};
 
@@ -212,6 +223,13 @@
 			ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_8_B_NIB>;
 		};
 
+		rgmii_phy2: ethernet-phy@0c {
+			reg = <0x0c>;
+			ti,rx-internal-delay = <DP83867_RGMIIDCTL_1_50_NS>;
+			ti,tx-internal-delay = <DP83867_RGMIIDCTL_1_50_NS>;
+			ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_8_B_NIB>;
+		};
+
 		qsgmii1_phy1: ethernet-phy@1c {
 			reg = <0x1c>;
 		};
@@ -219,15 +237,6 @@
 		qsgmii1_phy2: ethernet-phy@1d {
 			reg = <0x1d>;
 		};
-	};
-
-	mdio@fd000 {
-		rgmii_phy2: ethernet-phy@0c {
-			reg = <0x0c>;
-			ti,rx-internal-delay = <DP83867_RGMIIDCTL_1_50_NS>;
-			ti,tx-internal-delay = <DP83867_RGMIIDCTL_1_50_NS>;
-			ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_8_B_NIB>;
-		};
 
 		qsgmii2_phy1: ethernet-phy@00 {
 			reg = <0x00>;
@@ -236,5 +245,17 @@
 		qsgmii2_phy2: ethernet-phy@01 {
 			reg = <0x01>;
 		};
+
+		qsgmii2_phy3: ethernet-phy@02 {
+			reg = <0x02>;
+		};
+
+		qsgmii2_phy4: ethernet-phy@03 {
+			reg = <0x03>;
+		};
+	};
+
+	mdio@fd000 {
+		status = "disabled";
 	};
 };
diff --git a/arch/arm/dts/fsl-tqmls1046a.dtsi b/arch/arm/dts/fsl-tqmls1046a.dtsi
index 4717e66857..0ea2612cbf 100644
--- a/arch/arm/dts/fsl-tqmls1046a.dtsi
+++ b/arch/arm/dts/fsl-tqmls1046a.dtsi
@@ -40,15 +40,15 @@
 		#address-cells = <1>;
 		#size-cells = <1>;
 		compatible = "jedec,spi-nor";
-		spi-max-frequency = <108000000>;
+		spi-max-frequency = <62500000>;
 		reg = <0>;
 	};
 
 	qflash1: mx66u51235f@1 {
 		#address-cells = <1>;
 		#size-cells = <1>;
-		spi-max-frequency = <108000000>;
 		compatible = "jedec,spi-nor";
+		spi-max-frequency = <62500000>;
 		reg = <1>;
 	};
 };
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
