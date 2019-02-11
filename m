Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtDKE-0008Qw-1g
 for barebox@lists.infradead.org; Mon, 11 Feb 2019 15:16:54 +0000
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 11 Feb 2019 16:16:40 +0100
Message-Id: <1549898200-32688-8-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1549898200-32688-1-git-send-email-t.remmet@phytec.de>
References: <1549898200-32688-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 7/7] arm: dts: am335x-phytec: Use phy-handle instead of phy_id
To: barebox@lists.infradead.org

Update am335x-phytec som device trees and use phy-handle instead of phy_id.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/dts/am335x-phytec-phycard-som.dtsi |  7 ++++++-
 arch/arm/dts/am335x-phytec-phycore-som.dtsi |  7 ++++++-
 arch/arm/dts/am335x-phytec-phyflex-som.dtsi | 12 ++++++++++--
 3 files changed, 22 insertions(+), 4 deletions(-)

diff --git a/arch/arm/dts/am335x-phytec-phycard-som.dtsi b/arch/arm/dts/am335x-phytec-phycard-som.dtsi
index 6a0442916bcb..2320ca18070f 100644
--- a/arch/arm/dts/am335x-phytec-phycard-som.dtsi
+++ b/arch/arm/dts/am335x-phytec-phycard-som.dtsi
@@ -122,6 +122,10 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&davinci_mdio_default>;
 	status = "okay";
+
+	phy0: ethernet-phy@0 {
+		reg = <0>;
+	};
 };
 
 &phy_sel {
@@ -129,8 +133,9 @@
 };
 
 &cpsw_emac0 {
-	phy_id = <&davinci_mdio>, <0>;
+	phy-handle = <&phy0>;
 	phy-mode = "rmii";
+	dual_emac_res_vlan = <1>;
 };
 
 &mac {
diff --git a/arch/arm/dts/am335x-phytec-phycore-som.dtsi b/arch/arm/dts/am335x-phytec-phycore-som.dtsi
index cb2d30a15ccd..0601f5ab7ba5 100644
--- a/arch/arm/dts/am335x-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/am335x-phytec-phycore-som.dtsi
@@ -244,6 +244,10 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&davinci_mdio_default>;
 	status = "okay";
+
+	phy0: ethernet-phy@0 {
+		reg = <0>;
+	};
 };
 
 &phy_sel {
@@ -251,8 +255,9 @@
 };
 
 &cpsw_emac0 {
-	phy_id = <&davinci_mdio>, <0>;
+	phy-handle = <&phy0>;
 	phy-mode = "rmii";
+	dual_emac_res_vlan = <1>;
 };
 
 &mac {
diff --git a/arch/arm/dts/am335x-phytec-phyflex-som.dtsi b/arch/arm/dts/am335x-phytec-phyflex-som.dtsi
index 465d3fa16cd7..4d0a91398843 100644
--- a/arch/arm/dts/am335x-phytec-phyflex-som.dtsi
+++ b/arch/arm/dts/am335x-phytec-phyflex-som.dtsi
@@ -197,6 +197,14 @@
 	pinctrl-names = "default", "sleep";
 	pinctrl-0 = <&davinci_mdio_default>;
 	status = "okay";
+
+	phy0: ethernet-phy@0 {
+		reg = <1>;
+	};
+
+	phy1: ethernet-phy@1 {
+		reg = <2>;
+	};
 };
 
 &phy_sel {
@@ -204,7 +212,7 @@
 };
 
 &cpsw_emac0 {
-	phy_id = <&davinci_mdio>, <1>;
+	phy-handle = <&phy0>;
 	phy-mode = "rgmii";
 	dual_emac_res_vlan = <1>;
 
@@ -221,7 +229,7 @@
 };
 
 &cpsw_emac1 {
-	phy_id = <&davinci_mdio>, <2>;
+	phy-handle = <&phy1>;
 	phy-mode = "rmii";
 	dual_emac_res_vlan = <2>;
 	status = "disabled";
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
