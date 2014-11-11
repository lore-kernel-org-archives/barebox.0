Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XoCdp-0006ks-Ba
 for barebox@lists.infradead.org; Tue, 11 Nov 2014 14:41:58 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 0D57FA004B5
 for <barebox@lists.infradead.org>; Tue, 11 Nov 2014 15:41:44 +0100 (CET)
From: Christian Hemp <c.hemp@phytec.de>
Date: Tue, 11 Nov 2014 15:40:57 +0100
Message-Id: <1415716859-19077-2-git-send-email-c.hemp@phytec.de>
In-Reply-To: <1415716859-19077-1-git-send-email-c.hemp@phytec.de>
References: <1415716859-19077-1-git-send-email-c.hemp@phytec.de>
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
Subject: [PATCH 2/4] ARM:pfla02: Move ethernet phy timings to dts
To: barebox@lists.infradead.org

Move the ethernet phy timinigs to phyFLEX-i.MX6 devicetree.

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 arch/arm/boards/phytec-phyflex-imx6/board.c | 10 ----------
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi     | 13 +++++++++++++
 2 files changed, 13 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boards/phytec-phyflex-imx6/board.c b/arch/arm/boards/phytec-phyflex-imx6/board.c
index 09a5c79..1551460 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/board.c
+++ b/arch/arm/boards/phytec-phyflex-imx6/board.c
@@ -63,13 +63,6 @@ static void phyflex_err006282_workaround(void)
 	gpio_direction_input(MX6_PHYFLEX_ERR006282);
 }
 
-static int ksz9031rn_phy_fixup(struct phy_device *dev)
-{
-	phy_write_mmd_indirect(dev, 8, 2, 0x039F);
-
-	return 0;
-}
-
 static int phytec_pfla02_init(void)
 {
 	if (!of_machine_is_compatible("phytec,imx6q-pfla02") &&
@@ -79,9 +72,6 @@ static int phytec_pfla02_init(void)
 
 	phyflex_err006282_workaround();
 
-	phy_register_fixup_for_uid(PHY_ID_KSZ9031, MICREL_PHY_ID_MASK,
-					   ksz9031rn_phy_fixup);
-
 	imx6_bbu_nand_register_handler("nand", BBU_HANDLER_FLAG_DEFAULT);
 
 	switch (bootsource_get()) {
diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
index 5c7bcee..32ce088 100644
--- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
@@ -62,9 +62,22 @@
 &fec {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_enet>;
+	phy-handle = <&ethphy>;
 	phy-mode = "rgmii";
 	phy-reset-gpios = <&gpio3 23 0>;
 	status = "disabled";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy: ethernet-phy@3 {
+			reg = <3>;
+
+			txc-skew-ps = <1680>;
+			rxc-skew-ps = <1860>;
+		};
+	};
 };
 
 &gpmi {
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
