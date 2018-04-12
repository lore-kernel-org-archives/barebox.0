Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6Wgg-0007wo-Ur
 for barebox@lists.infradead.org; Thu, 12 Apr 2018 07:30:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Apr 2018 09:30:14 +0200
Message-Id: <20180412073017.6750-14-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/16] ARM: dts: imx6: phyboard-mira: Enable usb host and usb
 otg port
To: Barebox List <barebox@lists.infradead.org>
Cc: Stefan Riedmueller <s.riedmueller@phytec.de>

From: Stefan Riedmueller <s.riedmueller@phytec.de>

Enable both USB ports (HOST and OTG) on the phyBOARD-Mira with i.MX
6Quad/Dual, i.MX 6Solo/DualLight and i.MX 6QuadPlus.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts | 8 ++++++++
 arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts | 8 ++++++++
 arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts  | 8 ++++++++
 arch/arm/dts/imx6q-phytec-phycore-som-nand.dts  | 8 ++++++++
 arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts | 8 ++++++++
 5 files changed, 40 insertions(+)

diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
index bffee5f154..7e4a5aba2a 100644
--- a/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
+++ b/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
@@ -41,6 +41,14 @@
 	status = "okay";
 };
 
+&usbh1 {
+	status = "okay";
+};
+
+&usbotg {
+	status = "okay";
+};
+
 &usdhc1 {
 	status = "okay";
 
diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
index 1b66fdabc6..ffcbdc2134 100644
--- a/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
+++ b/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
@@ -36,6 +36,14 @@
 	status = "okay";
 };
 
+&usbh1 {
+	status = "okay";
+};
+
+&usbotg {
+	status = "okay";
+};
+
 &usdhc1 {
 	status = "okay";
 
diff --git a/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts b/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
index ecc5aa38e1..6e12b26d38 100644
--- a/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
+++ b/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
@@ -40,6 +40,14 @@
 	status = "okay";
 };
 
+&usbh1 {
+	status = "okay";
+};
+
+&usbotg {
+	status = "okay";
+};
+
 &usdhc1 {
 	status = "okay";
 
diff --git a/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
index 9ad7eda740..d9e37b7fca 100644
--- a/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
+++ b/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
@@ -45,6 +45,14 @@
 	status = "okay";
 };
 
+&usbh1 {
+	status = "okay";
+};
+
+&usbotg {
+	status = "okay";
+};
+
 &usdhc1 {
 	status = "okay";
 
diff --git a/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts
index 031ee883ea..c2756142b5 100644
--- a/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts
+++ b/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts
@@ -43,6 +43,14 @@
 	status = "okay";
 };
 
+&usbh1 {
+	status = "okay";
+};
+
+&usbotg {
+	status = "okay";
+};
+
 &usdhc1 {
 	status = "okay";
 
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
