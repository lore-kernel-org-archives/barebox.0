Delivery-date: Tue, 01 Oct 2024 12:49:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1svaRn-004w8E-2z
	for lore@lore.pengutronix.de;
	Tue, 01 Oct 2024 12:49:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1svaRo-0007SQ-7V
	for lore@pengutronix.de; Tue, 01 Oct 2024 12:49:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CALH1KgqGVNXKx5S1w+reYI747blTGWVa4x32t0YtRU=; b=ewTf/njMq48LrF
	Z/Ht5fAGPpEu3Zdpwb/pflyJdNsQbcdwR8+kmz7H8JuXleGVBTV3W0+1wa5AnC7Xzf3ZLwWJYv0fs
	DfszMfUfjIMCO0LROdHi2QysjjJyduHP8o0GBsCrSway/CBvArnS7NFH3i8FXaqp54btzPTyHlrY4
	MG4fq8W4PUsVjKggkX9RXDn6SOV8h7UsJMvN3DiyJ7jejjcXojR6EumjNO/+nWyqT6WJcyqUb86n3
	VSU8Bs5lCANYoGGutzeKvI77zXW2gyv4cHT10Qyw4824p3yQA1hjtz4Q9kZHJef/lcqeqoQA81TRS
	hzWEK1QWy+YqqmZO2G/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svaRJ-00000002P8J-3e2g;
	Tue, 01 Oct 2024 10:49:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svaQ0-00000002Ozc-1zx8
	for barebox@lists.infradead.org;
	Tue, 01 Oct 2024 10:47:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svaPz-0006TG-72; Tue, 01 Oct 2024 12:47:47 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svaPy-002r5Q-O8; Tue, 01 Oct 2024 12:47:46 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svaPy-004U9y-25;
	Tue, 01 Oct 2024 12:47:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  1 Oct 2024 12:47:36 +0200
Message-Id: <20241001104738.1069237-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241001_034748_536995_D54B1EF3 
X-CRM114-Status: GOOD (  11.82  )
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
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] ARM: wolfvision PF5: Use upstream IO expander dtso
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

rk3568-wolfvision-pf5-io-expander-upstream.dtso has been merged in the
upstream dts files, so switch to using the upstream version.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 ...8-wolfvision-pf5-io-expander-upstream.dtso | 137 ------------------
 .../rk3568-wolfvision-pf5-io-expander.dtso    |   2 +-
 2 files changed, 1 insertion(+), 138 deletions(-)
 delete mode 100644 arch/arm/dts/rk3568-wolfvision-pf5-io-expander-upstream.dtso

diff --git a/arch/arm/dts/rk3568-wolfvision-pf5-io-expander-upstream.dtso b/arch/arm/dts/rk3568-wolfvision-pf5-io-expander-upstream.dtso
deleted file mode 100644
index ebcaeafc38..0000000000
--- a/arch/arm/dts/rk3568-wolfvision-pf5-io-expander-upstream.dtso
+++ /dev/null
@@ -1,137 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
-/*
- * Device tree overlay for the WolfVision PF5 IO Expander board.
- *
- * Copyright (C) 2024 WolfVision GmbH.
- */
-
-/dts-v1/;
-/plugin/;
-
-#include <dt-bindings/clock/rk3568-cru.h>
-#include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/interrupt-controller/irq.h>
-#include <dt-bindings/pinctrl/rockchip.h>
-
-&{/} {
-	gmac0_clkin: external-gmac0-clock {
-		compatible = "fixed-clock";
-		clock-frequency = <50000000>;
-		clock-output-names = "gmac0_clkin";
-		#clock-cells = <0>;
-	};
-
-	usb_host_vbus: usb-host-vbus-regulator {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio1 RK_PA3 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&usb_host_vbus_en>;
-		regulator-name = "usb_host_vbus";
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		vin-supply = <&vcc5v_in>;
-	};
-
-	vcc1v8_eth: vcc1v8-eth-regulator {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio0 RK_PC1 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&vcc1v8_eth_en>;
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-name = "1v8_eth";
-		regulator-min-microvolt = <1800000>;
-		regulator-max-microvolt = <1800000>;
-		vin-supply = <&vcc3v3_sys>;
-	};
-
-	vcc3v3_eth: vcc3v3-eth-regulator {
-		compatible = "regulator-fixed";
-		enable-active-low;
-		gpio = <&gpio0 RK_PC0 GPIO_ACTIVE_LOW>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&vcc3v3_eth_enn>;
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-name = "3v3_eth";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		vin-supply = <&vcc3v3_sys>;
-	};
-};
-
-&gmac0 {
-	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>,
-			  <&cru SCLK_GMAC0>;
-	assigned-clock-parents = <&cru SCLK_GMAC0_RMII_SPEED>,
-				 <&gmac0_clkin>;
-	clock_in_out = "input";
-	phy-handle = <&dp83826>;
-	phy-mode = "rmii";
-	phy-supply = <&vcc3v3_eth>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&gmac0_miim
-		     &gmac0_clkinout
-		     &gmac0_rx_er
-		     &gmac0_rx_bus2
-		     &gmac0_tx_bus2>;
-	status = "okay";
-};
-
-&mdio0 {
-	#address-cells = <1>;
-	#size-cells = <0>;
-
-	dp83826: ethernet-phy@0 {
-		compatible = "ethernet-phy-ieee802.3-c22";
-		reg = <0x0>;
-		interrupt-parent = <&gpio0>;
-		interrupts = <RK_PD3 IRQ_TYPE_EDGE_FALLING>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&eth_wake_intn &eth_phy_rstn>;
-		reset-assert-us = <1000>;
-		reset-deassert-us = <2000>;
-		reset-gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_LOW>;
-		wakeup-source;
-	};
-};
-
-&pinctrl {
-	ethernet {
-		eth_wake_intn: eth-wake-intn-pinctrl {
-			rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-
-		eth_phy_rstn: eth-phy-rstn-pinctrl {
-			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-
-		vcc1v8_eth_en: vcc1v8-eth-en-pinctrl {
-			rockchip,pins = <0 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-
-		vcc3v3_eth_enn: vcc3v3-eth-enn-pinctrl {
-			rockchip,pins = <0 RK_PC0 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
-	usb {
-		usb_host_vbus_en: usb-host-vbus-en-pinctrl {
-			rockchip,pins = <1 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-};
-
-&usb_host1_xhci {
-	maximum-speed = "high-speed";
-	phys = <&usb2phy0_host>;
-	phy-names = "usb2-phy";
-	status = "okay";
-};
-
-&usb2phy0_host {
-	phy-supply = <&usb_host_vbus>;
-	status = "okay";
-};
diff --git a/arch/arm/dts/rk3568-wolfvision-pf5-io-expander.dtso b/arch/arm/dts/rk3568-wolfvision-pf5-io-expander.dtso
index 37b48afd2d..5160a7ec1a 100644
--- a/arch/arm/dts/rk3568-wolfvision-pf5-io-expander.dtso
+++ b/arch/arm/dts/rk3568-wolfvision-pf5-io-expander.dtso
@@ -8,4 +8,4 @@
 /dts-v1/;
 /plugin/;
 
-#include "rk3568-wolfvision-pf5-io-expander-upstream.dtso"
+#include <arm64/rockchip/rk3568-wolfvision-pf5-io-expander.dtso>
-- 
2.39.5



