Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZtWQY-0003uf-Rc
 for barebox@lists.infradead.org; Tue, 03 Nov 2015 07:54:48 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 1367BA0017A
 for <barebox@lists.infradead.org>; Tue,  3 Nov 2015 08:54:42 +0100 (CET)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Tue, 3 Nov 2015 08:51:47 +0100
Message-Id: <1446537108-15386-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 1/2] dts: phyFLEX-AM335x: Disable second ethernet interface
To: barebox@lists.infradead.org

There are phyFLEX modules with only the first eth phy mounted.
As barebox only supports the first interface anyway, disable
the second interface for now.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/dts/am335x-phytec-phyflex-som.dtsi | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/am335x-phytec-phyflex-som.dtsi b/arch/arm/dts/am335x-phytec-phyflex-som.dtsi
index 6d488fa..c60943c 100644
--- a/arch/arm/dts/am335x-phytec-phyflex-som.dtsi
+++ b/arch/arm/dts/am335x-phytec-phyflex-som.dtsi
@@ -224,12 +224,13 @@
 	phy_id = <&davinci_mdio>, <2>;
 	phy-mode = "rmii";
 	dual_emac_res_vlan = <2>;
+	status = "disabled";
 };
 
 &mac {
 	pinctrl-names = "default";
-	pinctrl-0 = <&emac_rgmii1_pins &emac_rmii2_pins>;
-	dual_emac;
+	slaves = <1>;
+	pinctrl-0 = <&emac_rgmii1_pins>;
 	status = "okay";
 };
 
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
