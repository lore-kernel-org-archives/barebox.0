Delivery-date: Thu, 05 Jun 2025 15:13:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNAPa-0041Ld-1T
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 15:13:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNAPV-0000wQ-Qa
	for lore@pengutronix.de; Thu, 05 Jun 2025 15:13:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o2spkGjI8yTykMj6bFmnc99Y+Qojs9DvW+c8/esw+mQ=; b=kzKRYBCh8SmD5FNz7abHuq+g1j
	FKQZsppPDzUEINz2Sx0GOMSQgxLO1yIXfIyUAQoZorrzfx+Jhm5NhW0BuJLYM6UxfF8i/5+CRj7as
	/2UH0aEdX+iE50eJ7JL5p9MIRxCz64y2b5jXP3PgIB9GNgHZ+BuReISTYwNK2tBhaikcu54A5jJWP
	fqyPIgWkcS+rg2t1ZY6/sQgW3dyrZs1LtmwdQdJrOYVg3Lev23Vihy+hdTSYwCSrVlzWjBZmZ9fod
	H/DV8VFLsi4WdVHD+HY1p70ENN+mnq7PRTXuBxgX4rWFzm22B/bd9SQJIIlar3XGVuTHqmPZHukni
	XufBtF9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAOr-0000000FZB9-3EPq;
	Thu, 05 Jun 2025 13:12:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAFD-0000000FXq4-3jvo
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 13:02:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uNAFC-00010C-P2; Thu, 05 Jun 2025 15:02:54 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uNAFC-001xiz-1s;
	Thu, 05 Jun 2025 15:02:54 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vS-0024bQ-1j;
	Thu, 05 Jun 2025 14:42:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 05 Jun 2025 14:42:45 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250605-arm-k3-am62l-v2-20-53257d4b2dd2@pengutronix.de>
References: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
In-Reply-To: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749127350; l=3930;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Hag377zy7erTTuZ+ey3fIgRASFpPxUCmFzPwX0h8b5o=;
 b=SyxLadDX3gSdI1w0GkqRCmUViaWq4LPAFTuPVevdTyechyKwsHfNNPXo5DLuy9XJ50ZFZS6qB
 0Br6RbPrzZoC8Qa61oslVgdKlz76pDr/9ri78oUKAmjoGWOjHYwXmU3
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_060255_944474_472E6095 
X-CRM114-Status: GOOD (  10.48  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 20/33] ARM: dts: am62l evm: Add ethernet ports
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The AM62l device trees are based on the upstream submission which
currently lack the ethernet ports. Add them from the downstream Linux
repository.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/k3-am62l3-evm.dts | 78 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 78 insertions(+)

diff --git a/arch/arm/dts/k3-am62l3-evm.dts b/arch/arm/dts/k3-am62l3-evm.dts
index 16efb60bf326018cd483cdeae35ed9538d24d522..4484279e8fcc0361fe73bf42b63a0663b71725b7 100644
--- a/arch/arm/dts/k3-am62l3-evm.dts
+++ b/arch/arm/dts/k3-am62l3-evm.dts
@@ -12,6 +12,7 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/leds/common.h>
+#include <dt-bindings/net/ti-dp83867.h>
 
 #include "k3-am62l3.dtsi"
 #include "k3-pinctrl.h"
@@ -105,6 +106,42 @@ eeprom@51 {
 	};
 };
 
+&cpsw3g {
+	pinctrl-names = "default";
+	pinctrl-0 = <&rgmii1_pins_default>,
+		    <&rgmii2_pins_default>;
+};
+
+&cpsw_port1 {
+	phy-mode = "rgmii-rxid";
+	phy-handle = <&cpsw3g_phy0>;
+};
+
+&cpsw_port2 {
+	phy-mode = "rgmii-rxid";
+	phy-handle = <&cpsw3g_phy1>;
+};
+
+&cpsw3g_mdio {
+	pinctrl-names = "default";
+	pinctrl-0 = <&mdio1_pins_default>;
+	status = "okay";
+
+	cpsw3g_phy0: ethernet-phy@0 {
+		reg = <0>;
+		ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
+		ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
+		ti,min-output-impedance;
+	};
+
+	cpsw3g_phy1: ethernet-phy@1 {
+		reg = <1>;
+		ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
+		ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
+		ti,min-output-impedance;
+	};
+};
+
 &i2c1 {
 	pinctrl-0 = <&i2c1_pins_default>;
 	pinctrl-names = "default";
@@ -201,6 +238,47 @@ AM62LX_IOPAD(0x01ec, PIN_INPUT_PULLUP, 0) /* (B4) MMC0_DAT7 */
 		bootph-all;
 	};
 
+	rgmii1_pins_default: rgmii1-default-pins {
+		pinctrl-single,pins = <
+			AM62LX_IOPAD(0x0138, PIN_INPUT, 0) /* (Y8) RGMII1_RD0 */
+			AM62LX_IOPAD(0x013c, PIN_INPUT, 0) /* (AA6) RGMII1_RD1 */
+			AM62LX_IOPAD(0x0140, PIN_INPUT, 0) /* (AA8) RGMII1_RD2 */
+			AM62LX_IOPAD(0x0144, PIN_INPUT, 0) /* (W8) RGMII1_RD3 */
+			AM62LX_IOPAD(0x0134, PIN_INPUT, 0) /* (Y7) RGMII1_RXC */
+			AM62LX_IOPAD(0x0130, PIN_INPUT, 0) /* (Y6) RGMII1_RX_CTL */
+			AM62LX_IOPAD(0x0120, PIN_OUTPUT, 0) /* (AC10) RGMII1_TD0 */
+			AM62LX_IOPAD(0x0124, PIN_OUTPUT, 0) /* (W13) RGMII1_TD1 */
+			AM62LX_IOPAD(0x0128, PIN_OUTPUT, 0) /* (Y11) RGMII1_TD2 */
+			AM62LX_IOPAD(0x012c, PIN_OUTPUT, 0) /* (AA11) RGMII1_TD3 */
+			AM62LX_IOPAD(0x011c, PIN_OUTPUT, 0) /* (W11) RGMII1_TXC */
+			AM62LX_IOPAD(0x0118, PIN_OUTPUT, 0) /* (AB11) RGMII1_TX_CTL */
+		>;
+	};
+
+	rgmii2_pins_default: rgmii2-default-pins {
+		pinctrl-single,pins = <
+			AM62LX_IOPAD(0x0170, PIN_INPUT, 0) /* (AB9) RGMII2_RD0 */
+			AM62LX_IOPAD(0x0174, PIN_INPUT, 0) /* (AC9) RGMII2_RD1 */
+			AM62LX_IOPAD(0x0178, PIN_INPUT, 0) /* (AB10) RGMII2_RD2 */
+			AM62LX_IOPAD(0x017c, PIN_INPUT, 0) /* (AB8) RGMII2_RD3 */
+			AM62LX_IOPAD(0x016c, PIN_INPUT, 0) /* (AC7) RGMII2_RXC */
+			AM62LX_IOPAD(0x0168, PIN_INPUT, 0) /* (AC8) RGMII2_RX_CTL */
+			AM62LX_IOPAD(0x0158, PIN_OUTPUT, 0) /* (AC12) RGMII2_TD0 */
+			AM62LX_IOPAD(0x015c, PIN_OUTPUT, 0) /* (AB13) RGMII2_TD1 */
+			AM62LX_IOPAD(0x0160, PIN_OUTPUT, 0) /* (AA12) RGMII2_TD2 */
+			AM62LX_IOPAD(0x0164, PIN_OUTPUT, 0) /* (AA13) RGMII2_TD3 */
+			AM62LX_IOPAD(0x0154, PIN_OUTPUT, 0) /* (Y13) RGMII2_TXC */
+			AM62LX_IOPAD(0x0150, PIN_OUTPUT, 0) /* (AB12) RGMII2_TX_CTL */
+		>;
+	};
+
+	mdio1_pins_default: mdio1-default-pins {
+		pinctrl-single,pins = <
+			AM62LX_IOPAD(0x014c, PIN_OUTPUT, 0) /* (AC15) MDIO0_MDC */
+			AM62LX_IOPAD(0x0148, PIN_INPUT, 0) /* (AC13) MDIO0_MDIO */
+		>;
+	};
+
 	mmc1_pins_default: mmc1-default-pins {
 		pinctrl-single,pins = <
 			AM62LX_IOPAD(0x0230, PIN_INPUT, 0)	 /* (Y3) MMC1_CMD */

-- 
2.39.5



