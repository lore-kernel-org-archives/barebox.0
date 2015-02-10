Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YL7bC-0004za-4m
 for barebox@lists.infradead.org; Tue, 10 Feb 2015 09:59:19 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1YL7ap-0004dC-PE
 for barebox@lists.infradead.org; Tue, 10 Feb 2015 10:58:55 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 10 Feb 2015 10:58:55 +0100
Message-Id: <1423562335-31000-2-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1423562335-31000-1-git-send-email-l.stach@pengutronix.de>
References: <1423562335-31000-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 2/2] arm: hummingboard: fix fallout from upstream DT usage
To: barebox@lists.infradead.org

This board was broken since the switch to use upstream DTs with v2014.07.
Fix it up by including the right upstream DT and delete some now
unneeded files.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/solidrun-microsom/board.c |  4 +--
 arch/arm/dts/imx6dl-hummingboard.dts      |  5 +--
 arch/arm/dts/imx6qdl-microsom-ar8035.dtsi | 58 -------------------------------
 arch/arm/dts/imx6qdl-microsom.dtsi        | 16 ---------
 4 files changed, 3 insertions(+), 80 deletions(-)
 delete mode 100644 arch/arm/dts/imx6qdl-microsom-ar8035.dtsi
 delete mode 100644 arch/arm/dts/imx6qdl-microsom.dtsi

diff --git a/arch/arm/boards/solidrun-microsom/board.c b/arch/arm/boards/solidrun-microsom/board.c
index 783ec53c1ddd..c231c1710372 100644
--- a/arch/arm/boards/solidrun-microsom/board.c
+++ b/arch/arm/boards/solidrun-microsom/board.c
@@ -63,7 +63,7 @@ static int ar8035_phy_fixup(struct phy_device *dev)
 
 static int hummingboard_device_init(void)
 {
-	if (!of_machine_is_compatible("solidrun,hummingboard"))
+	if (!of_machine_is_compatible("solidrun,hummingboard/dl"))
 		return 0;
 
 	phy_register_fixup_for_uid(0x004dd072, 0xffffffef, ar8035_phy_fixup);
@@ -80,7 +80,7 @@ device_initcall(hummingboard_device_init);
 
 static int hummingboard_late_init(void)
 {
-	if (!of_machine_is_compatible("solidrun,hummingboard"))
+	if (!of_machine_is_compatible("solidrun,hummingboard/dl"))
 		return 0;
 
 	imx6_bbu_internal_mmc_register_handler("sdcard", "/dev/mmc1.barebox",
diff --git a/arch/arm/dts/imx6dl-hummingboard.dts b/arch/arm/dts/imx6dl-hummingboard.dts
index 4599a549056b..7953fc1c34f4 100644
--- a/arch/arm/dts/imx6dl-hummingboard.dts
+++ b/arch/arm/dts/imx6dl-hummingboard.dts
@@ -4,11 +4,8 @@
  * The code contained herein is licensed under the GNU General Public
  * License version 2.
  */
-/dts-v1/;
 
-#include "imx6dl.dtsi"
-#include "imx6qdl-microsom.dtsi"
-#include "imx6qdl-microsom-ar8035.dtsi"
+#include <arm/imx6dl-hummingboard.dts>
 
 / {
 	chosen {
diff --git a/arch/arm/dts/imx6qdl-microsom-ar8035.dtsi b/arch/arm/dts/imx6qdl-microsom-ar8035.dtsi
deleted file mode 100644
index c1be487dfc62..000000000000
--- a/arch/arm/dts/imx6qdl-microsom-ar8035.dtsi
+++ /dev/null
@@ -1,58 +0,0 @@
-/*
- * Copyright 2013 Russell King
- *
- * The code contained herein is licensed under the GNU General Public
- * License version 2.
- *
- * This describes the hookup for an AR8035 to the IMX6 on the Cubox-i
- * MicroSOM.
- *
- * FIXME: we need to configure PLL_ENET to produce 25MHz, but there
- * doesn't seem to be a way to do that yet from DT.  (Writing 0x2000
- * to 0x020c80e0 phys will do this.)
- */
-&fec {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_microsom_enet_ar8035>;
-	phy-mode = "rgmii";
-	phy-reset-duration = <2>;
-	phy-reset-gpios = <&gpio4 15 0>;
-	status = "okay";
-};
-
-&iomuxc {
-	enet {
-		pinctrl_microsom_enet_ar8035: microsom-enet-ar8035 {
-			fsl,pins = <
-				MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x1b0b0
-				MX6QDL_PAD_ENET_MDC__ENET_MDC		0x1b0b0
-				/* AR8035 reset */
-				MX6QDL_PAD_KEY_ROW4__GPIO4_IO15		0x130b0
-				/* AR8035 interrupt */
-				MX6QDL_PAD_DI0_PIN2__GPIO4_IO18		0x80000000
-				/* GPIO16 -> AR8035 25MHz */
-				MX6QDL_PAD_GPIO_16__ENET_REF_CLK	0xc0000000
-				MX6QDL_PAD_RGMII_TXC__RGMII_TXC		0x80000000
-				MX6QDL_PAD_RGMII_TD0__RGMII_TD0		0x1b0b0
-				MX6QDL_PAD_RGMII_TD1__RGMII_TD1		0x1b0b0
-				MX6QDL_PAD_RGMII_TD2__RGMII_TD2		0x1b0b0
-				MX6QDL_PAD_RGMII_TD3__RGMII_TD3		0x1b0b0
-				MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL	0x1b0b0
-				/* AR8035 CLK_25M --> ENET_REF_CLK (V22) */
-				MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK	0x0a0b1
-				/* AR8035 pin strapping: IO voltage: pull up */
-				MX6QDL_PAD_RGMII_RXC__RGMII_RXC		0x1b0b0
-				/* AR8035 pin strapping: PHYADDR#0: pull down */
-				MX6QDL_PAD_RGMII_RD0__RGMII_RD0		0x130b0
-				/* AR8035 pin strapping: PHYADDR#1: pull down */
-				MX6QDL_PAD_RGMII_RD1__RGMII_RD1		0x130b0
-				/* AR8035 pin strapping: MODE#1: pull up */
-				MX6QDL_PAD_RGMII_RD2__RGMII_RD2		0x1b0b0
-				/* AR8035 pin strapping: MODE#3: pull up */
-				MX6QDL_PAD_RGMII_RD3__RGMII_RD3		0x1b0b0
-				/* AR8035 pin strapping: MODE#0: pull down */
-				MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL	0x130b0
-			>;
-		};
-	};
-};
diff --git a/arch/arm/dts/imx6qdl-microsom.dtsi b/arch/arm/dts/imx6qdl-microsom.dtsi
deleted file mode 100644
index 0bf618ecb83b..000000000000
--- a/arch/arm/dts/imx6qdl-microsom.dtsi
+++ /dev/null
@@ -1,16 +0,0 @@
-/*
- * Copyright 2013 Russell King
- *
- * The code contained herein is licensed under the GNU General Public
- * License version 2.
- */
-#include <arm/imx6qdl-microsom.dtsi>
-
-&usbotg {
-	phy_type = "utmi";
-};
-
-&usbh1 {
-	phy_type = "utmi";
-	dr_mode = "host";
-};
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
