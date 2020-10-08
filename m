Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kQT4x-0001js-Ae
 for barebox@lists.infradead.org; Thu, 08 Oct 2020 10:23:20 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu,  8 Oct 2020 12:23:14 +0200
Message-Id: <20201008102314.19573-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1] ARM: protonic: disable on-die termination to fix PHY
 bootstrapping
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, david@protonic.nl

If on-die termination is enabled, the RXC pin of iMX6 will be pulled
high. Since we already have an 10K pull-down on board, the RXC level on
PHY reset will be ~800mV, which is mostly interpreted as 1. On some
reboots we get 0 instead and kernel can't detect the PHY properly.

Since the default 0x020e07ac value is 0, it is sufficient to remove this
entry from the affected imxcfg files.

Since we get stable 0 on pin PHYADDR[2], the PHY address is changed from
4 to 0.

Fixes: 00adc1e33ef8 ("ARM: add imx6 based Protonic boads")
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/protonic-imx6/flash-header-prti6q.imxcfg  | 1 -
 arch/arm/boards/protonic-imx6/flash-header-vicut1q.imxcfg | 1 -
 arch/arm/boards/protonic-imx6/flash-header-vicutp.imxcfg  | 1 -
 arch/arm/dts/imx6q-prti6q.dts                             | 2 +-
 arch/arm/dts/imx6q-vicut1.dts                             | 2 +-
 5 files changed, 2 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/protonic-imx6/flash-header-prti6q.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-prti6q.imxcfg
index 68b7909f82..029edc248a 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-prti6q.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-prti6q.imxcfg
@@ -120,4 +120,3 @@ wm 32 0x020e0614 0x000130b0
 
 /* RGMII config */
 wm 32 0x020e0790 0x00080000 /* 1V2 DDR IO */
-wm 32 0x020e07ac 0x00000200 /* 60 Ohm ODT */
diff --git a/arch/arm/boards/protonic-imx6/flash-header-vicut1q.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-vicut1q.imxcfg
index a73a2c6fd0..f7e75b47bf 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-vicut1q.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-vicut1q.imxcfg
@@ -124,4 +124,3 @@ wm 32 0x020e0614 0x000130b0
 
 /* RGMII config */
 wm 32 0x020e0790 0x00080000 /* 1V2 DDR IO */
-wm 32 0x020e07ac 0x00000200 /* 60 Ohm ODT */
diff --git a/arch/arm/boards/protonic-imx6/flash-header-vicutp.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-vicutp.imxcfg
index 13887ade0b..e218279239 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-vicutp.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-vicutp.imxcfg
@@ -171,4 +171,3 @@ wm 32 0x020e0614 0x000130b0
 
 /* RGMII config */
 wm 32 0x020e0790 0x00080000 /* 1V2 DDR IO */
-wm 32 0x020e07ac 0x00000200 /* 60 Ohm ODT */
diff --git a/arch/arm/dts/imx6q-prti6q.dts b/arch/arm/dts/imx6q-prti6q.dts
index acdb7b22d9..21e24222a0 100644
--- a/arch/arm/dts/imx6q-prti6q.dts
+++ b/arch/arm/dts/imx6q-prti6q.dts
@@ -204,7 +204,7 @@
 
 		/* Microchip KSZ9031RNX PHY */
 		rgmii_phy: ethernet-phy@4 {
-			reg = <4>;
+			reg = <0>;
 			interrupts-extended = <&gpio1 28 IRQ_TYPE_LEVEL_LOW>;
 			reset-gpios = <&gpio1 25 GPIO_ACTIVE_LOW>;
 			reset-assert-us = <10000>;
diff --git a/arch/arm/dts/imx6q-vicut1.dts b/arch/arm/dts/imx6q-vicut1.dts
index 9747b3c62e..9d1d6fa550 100644
--- a/arch/arm/dts/imx6q-vicut1.dts
+++ b/arch/arm/dts/imx6q-vicut1.dts
@@ -29,7 +29,7 @@
 
 		/* Microchip KSZ9031RNX PHY */
 		rgmii_phy: ethernet-phy@4 {
-			reg = <4>;
+			reg = <0>;
 			interrupts-extended = <&gpio1 28 IRQ_TYPE_LEVEL_LOW>;
 			reset-gpios = <&gpio1 25 GPIO_ACTIVE_LOW>;
 			reset-assert-us = <10000>;
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
