Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1avMM5-0001LX-Dr
 for barebox@lists.infradead.org; Wed, 27 Apr 2016 10:06:03 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 57FB1A004FF
 for <barebox@lists.infradead.org>; Wed, 27 Apr 2016 12:05:37 +0200 (CEST)
From: Stefan Christ <s.christ@phytec.de>
Date: Wed, 27 Apr 2016 12:04:49 +0200
Message-Id: <1461751489-13302-16-git-send-email-s.christ@phytec.de>
In-Reply-To: <1461751489-13302-1-git-send-email-s.christ@phytec.de>
References: <1461751489-13302-1-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH for next 15/15] ARM: phytec-som-imx6: add NOR for phycore-imx6
 emmc
To: barebox@lists.infradead.org

Enable NOR for phyCORE-i.MX6 DualLite and Quad eMMC variants.

Furthermore add an extra 'status = "disabled"' in the flash node.  It
has no functional effect, because the SPI bus node 'ecspi1' is disabled,
too.

Signed-off-by: Stefan Christ <s.christ@phytec.de>
---
 arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts | 8 ++++++++
 arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts  | 8 ++++++++
 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi    | 1 +
 3 files changed, 17 insertions(+)

diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
index 834aa2b..fc153a6 100644
--- a/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
+++ b/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
@@ -21,6 +21,10 @@
 	compatible = "phytec,imx6dl-pcm058-emmc", "fsl,imx6dl";
 };
 
+&ecspi1 {
+	status = "okay";
+};
+
 &eeprom {
 	status = "okay";
 };
@@ -42,6 +46,10 @@
 	};
 };
 
+&flash {
+	status = "okay";
+};
+
 &usdhc1 {
 	status = "okay";
 
diff --git a/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts b/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
index 116a18d..74bc09b 100644
--- a/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
+++ b/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
@@ -20,6 +20,10 @@
 	compatible = "phytec,imx6q-pcm058-emmc", "fsl,imx6q";
 };
 
+&ecspi1 {
+	status = "okay";
+};
+
 &eeprom {
 	status = "okay";
 };
@@ -41,6 +45,10 @@
 	};
 };
 
+&flash {
+	status = "okay";
+};
+
 &usdhc1 {
 	status = "okay";
 
diff --git a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
index 139150e..d446a5e 100644
--- a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -46,6 +46,7 @@
 		compatible = "m25p80";
 		spi-max-frequency = <20000000>;
 		reg = <0>;
+		status = "disabled";
 
 		#address-cells = <1>;
 		#size-cells = <1>;
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
