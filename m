Delivery-date: Thu, 05 Jun 2025 14:45:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN9yg-0040zy-2M
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 14:45:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN9yd-0005wD-Ch
	for lore@pengutronix.de; Thu, 05 Jun 2025 14:45:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pWe4DLYUDvaJhvC6Wp9obh0+NxnWgLkLwFbMvpUYYt0=; b=xpUHhUGXOfQvpqIu2OLksuzGgH
	8hXqKJkhN7vYcg3r+DJHrCoMjEiOGbgIjMqM9rUXcsEEJW9fPBOyVVUqJlubff9Q9zzg/j2wOPbhd
	UXj3UnFReh+pzkoCdTodcOcg5V/EBLEAjzN21N4VK3b1VzyAPh1h6zbo8eJtvH/pA+S9GNLbGqLWq
	40fOpVQEPunUbjo9J1YRwUZaTZnuhdcE6t1U66LjKhtqR+BSVBw++Ob2qhE6kRpF24tFUwAsSlRot
	REdK1X+eVW63vheZNz5L50z6opgP16Pb+rPTU17MXTFULSSZJK2nE/qHSR7XiUQ4X/vfePAIpmOgK
	u252AZJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN9y1-0000000FVO0-31QZ;
	Thu, 05 Jun 2025 12:45:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN9vU-0000000FV3P-0MU1
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 12:42:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vS-0003Mu-TN; Thu, 05 Jun 2025 14:42:30 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vS-001xgQ-1q;
	Thu, 05 Jun 2025 14:42:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vS-0024bQ-1T;
	Thu, 05 Jun 2025 14:42:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 05 Jun 2025 14:42:29 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250605-arm-k3-am62l-v2-4-53257d4b2dd2@pengutronix.de>
References: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
In-Reply-To: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749127350; l=41099;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=FuazK16oOSFrvnu02/XjpL1BZLWbzDavNtCtVtozpUA=;
 b=feTrU6cKUkThfJf+HNp88PLSeIl2Yr+oc4RJinw+DIbD63QJ0MGmPPIlGTCiXLkRYFZEAkirj
 fX/mptrOpmkAsHgTPruBTh5fB/6zAwUjCKyvwvE2Y4WTXO1Tptry4DO
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_054232_632222_DBDE6A4D 
X-CRM114-Status: GOOD (  11.86  )
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
Subject: [PATCH v2 04/33] ARM: dts: add k3-am62l dts(i) files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The device trees are taken from [1]. Until these are upstream we have to
live with a local copy.

[1] https://lore.kernel.org/all/20250507-am62lx-v5-0-4b57ea878e62@ti.com/

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/k3-am62l-main.dtsi    | 673 +++++++++++++++++++++++++++++++++++++
 arch/arm/dts/k3-am62l-thermal.dtsi |  25 ++
 arch/arm/dts/k3-am62l-wakeup.dtsi  | 133 ++++++++
 arch/arm/dts/k3-am62l.dtsi         | 121 +++++++
 arch/arm/dts/k3-am62l3-evm.dts     | 294 ++++++++++++++++
 arch/arm/dts/k3-am62l3.dtsi        |  67 ++++
 arch/arm/dts/k3-pinctrl.h          |   7 +
 7 files changed, 1320 insertions(+)

diff --git a/arch/arm/dts/k3-am62l-main.dtsi b/arch/arm/dts/k3-am62l-main.dtsi
new file mode 100644
index 0000000000000000000000000000000000000000..f6fbaaede8c36ac0aab92bef7763202bb0ab30dc
--- /dev/null
+++ b/arch/arm/dts/k3-am62l-main.dtsi
@@ -0,0 +1,673 @@
+// SPDX-License-Identifier: GPL-2.0-only or MIT
+/*
+ * Device Tree file for the AM62L main domain peripherals
+ * Copyright (C) 2025 Texas Instruments Incorporated - https://www.ti.com/
+ *
+ * Technical Reference Manual: https://www.ti.com/lit/pdf/sprujb4
+ */
+
+&cbass_main {
+	gic500: interrupt-controller@1800000 {
+		compatible = "arm,gic-v3";
+		reg = <0x00 0x01800000 0x00 0x10000>,	/* GICD */
+		      <0x00 0x01840000 0x00 0xc0000>,	/* GICR */
+		      <0x01 0x00000000 0x00 0x2000>,    /* GICC */
+		      <0x01 0x00010000 0x00 0x1000>,    /* GICH */
+		      <0x01 0x00020000 0x00 0x2000>;    /* GICV */
+		ranges;
+		#address-cells = <2>;
+		#size-cells = <2>;
+		#interrupt-cells = <3>;
+		interrupt-controller;
+		/*
+		 * vcpumntirq:
+		 * virtual CPU interface maintenance interrupt
+		 */
+		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
+
+		gic_its: msi-controller@1820000 {
+			compatible = "arm,gic-v3-its";
+			reg = <0x00 0x01820000 0x00 0x10000>;
+			socionext,synquacer-pre-its = <0x1000000 0x400000>;
+			msi-controller;
+			#msi-cells = <1>;
+		};
+	};
+
+	gpio0: gpio@600000 {
+		compatible = "ti,am64-gpio", "ti,keystone-gpio";
+		reg = <0x00 0x00600000 0x00 0x100>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-parent = <&gic500>;
+		interrupts = <GIC_SPI 260 IRQ_TYPE_EDGE_RISING>,
+			     <GIC_SPI 261 IRQ_TYPE_EDGE_RISING>,
+			     <GIC_SPI 262 IRQ_TYPE_EDGE_RISING>,
+			     <GIC_SPI 263 IRQ_TYPE_EDGE_RISING>,
+			     <GIC_SPI 264 IRQ_TYPE_EDGE_RISING>,
+			     <GIC_SPI 265 IRQ_TYPE_EDGE_RISING>,
+			     <GIC_SPI 266 IRQ_TYPE_EDGE_RISING>,
+			     <GIC_SPI 267 IRQ_TYPE_EDGE_RISING>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		power-domains = <&scmi_pds 34>;
+		clocks = <&scmi_clk 140>;
+		clock-names = "gpio";
+		ti,ngpio = <126>;
+		ti,davinci-gpio-unbanked = <0>;
+		status = "disabled";
+	};
+
+	gpio2: gpio@610000 {
+		compatible = "ti,am64-gpio", "ti,keystone-gpio";
+		reg = <0x00 0x00610000 0x00 0x100>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-parent = <&gic500>;
+		interrupts = <GIC_SPI 280 IRQ_TYPE_EDGE_RISING>,
+			     <GIC_SPI 281 IRQ_TYPE_EDGE_RISING>,
+			     <GIC_SPI 282 IRQ_TYPE_EDGE_RISING>,
+			     <GIC_SPI 283 IRQ_TYPE_EDGE_RISING>,
+			     <GIC_SPI 284 IRQ_TYPE_EDGE_RISING>,
+			     <GIC_SPI 285 IRQ_TYPE_EDGE_RISING>,
+			     <GIC_SPI 286 IRQ_TYPE_EDGE_RISING>,
+			     <GIC_SPI 287 IRQ_TYPE_EDGE_RISING>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		power-domains = <&scmi_pds 35>;
+		clocks = <&scmi_clk 141>;
+		clock-names = "gpio";
+		ti,ngpio = <79>;
+		ti,davinci-gpio-unbanked = <0>;
+		status = "disabled";
+	};
+
+	timer0: timer@2400000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x2400000 0x00 0x400>;
+		interrupts = <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&scmi_clk 47>;
+		clock-names = "fck";
+		power-domains = <&scmi_pds 15>;
+		ti,timer-pwm;
+	};
+
+	timer1: timer@2410000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x2410000 0x00 0x400>;
+		interrupts = <GIC_SPI 171 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&scmi_clk 61>;
+		clock-names = "fck";
+		power-domains = <&scmi_pds 16>;
+		ti,timer-pwm;
+	};
+
+	timer2: timer@2420000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x2420000 0x00 0x400>;
+		interrupts = <GIC_SPI 172 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&scmi_clk 66>;
+		clock-names = "fck";
+		power-domains = <&scmi_pds 17>;
+		ti,timer-pwm;
+	};
+
+	timer3: timer@2430000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x2430000 0x00 0x400>;
+		interrupts = <GIC_SPI 173 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&scmi_clk 80>;
+		clock-names = "fck";
+		power-domains = <&scmi_pds 18>;
+		ti,timer-pwm;
+	};
+
+	uart0: serial@2800000 {
+		compatible = "ti,am64-uart", "ti,am654-uart";
+		reg = <0x00 0x02800000 0x00 0x100>;
+		interrupts = <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>;
+		power-domains = <&scmi_pds 89>;
+		clocks = <&scmi_clk 358>;
+		clock-names = "fclk";
+		status = "disabled";
+	};
+
+	uart1: serial@2810000 {
+		compatible = "ti,am64-uart", "ti,am654-uart";
+		reg = <0x00 0x02810000 0x00 0x100>;
+		interrupts = <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>;
+		power-domains = <&scmi_pds 77>;
+		clocks = <&scmi_clk 312>;
+		clock-names = "fclk";
+		status = "disabled";
+	};
+
+	uart2: serial@2820000 {
+		compatible = "ti,am64-uart", "ti,am654-uart";
+		reg = <0x00 0x02820000 0x00 0x100>;
+		interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
+		power-domains = <&scmi_pds 78>;
+		clocks = <&scmi_clk 314>;
+		clock-names = "fclk";
+		status = "disabled";
+	};
+
+	uart3: serial@2830000 {
+		compatible = "ti,am64-uart", "ti,am654-uart";
+		reg = <0x00 0x02830000 0x00 0x100>;
+		interrupts = <GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH>;
+		power-domains = <&scmi_pds 79>;
+		clocks = <&scmi_clk 316>;
+		clock-names = "fclk";
+		status = "disabled";
+	};
+
+	uart4: serial@2840000 {
+		compatible = "ti,am64-uart", "ti,am654-uart";
+		reg = <0x00 0x02840000 0x00 0x100>;
+		interrupts = <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>;
+		power-domains = <&scmi_pds 80>;
+		clocks = <&scmi_clk 318>;
+		clock-names = "fclk";
+		status = "disabled";
+	};
+
+	uart5: serial@2850000 {
+		compatible = "ti,am64-uart", "ti,am654-uart";
+		reg = <0x00 0x02850000 0x00 0x100>;
+		interrupts = <GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH>;
+		power-domains = <&scmi_pds 81>;
+		clocks = <&scmi_clk 320>;
+		clock-names = "fclk";
+		status = "disabled";
+	};
+
+	uart6: serial@2860000 {
+		compatible = "ti,am64-uart", "ti,am654-uart";
+		reg = <0x00 0x02860000 0x00 0x100>;
+		interrupts = <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>;
+		power-domains = <&scmi_pds 82>;
+		clocks = <&scmi_clk 322>;
+		clock-names = "fclk";
+		status = "disabled";
+	};
+
+	conf: syscon@9000000 {
+		compatible = "syscon", "simple-mfd";
+		ranges = <0x0 0x00 0x09000000 0x400000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		phy_gmii_sel: phy@1be000 {
+			compatible = "ti,am654-phy-gmii-sel";
+			reg = <0x1be000 0x8>;
+			#phy-cells = <1>;
+		};
+
+		epwm_tbclk: clock-controller@1e9100 {
+			compatible = "ti,am62-epwm-tbclk";
+			reg = <0x1e9100 0x4>;
+			#clock-cells = <1>;
+		};
+	};
+
+	rti0: watchdog@e000000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x0e000000 0x00 0x100>;
+		clocks = <&scmi_clk 273>;
+		power-domains = <&scmi_pds 60>;
+		assigned-clocks = <&scmi_clk 273>;
+		assigned-clock-parents = <&scmi_clk 1>;
+	};
+
+	rti1: watchdog@e010000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x0e010000 0x00 0x100>;
+		clocks = <&scmi_clk 279>;
+		power-domains = <&scmi_pds 61>;
+		assigned-clocks = <&scmi_clk 279>;
+		assigned-clock-parents = <&scmi_clk 1>;
+	};
+
+	fss: bus@fc00000 {
+		compatible = "simple-bus";
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges = <0x00 0x0fc00000 0x00 0x100>, // FSS Control
+			 <0x00 0x0fc40000 0x00 0x100>, // OSPI0 Control
+			 <0x05 0x00000000 0x01 0x00000000>; // OSPI0 Memory
+
+		ospi0: spi@fc40000 {
+			compatible = "ti,am654-ospi", "cdns,qspi-nor";
+			reg = <0x00 0x0fc40000 0x00 0x100>,
+			      <0x05 0x00000000 0x01 0x00000000>;
+			interrupts = <GIC_SPI 240 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&scmi_clk 134>;
+			assigned-clocks = <&scmi_clk 134>;
+			assigned-clock-rates = <166666666>;
+			power-domains = <&scmi_pds 32>;
+			#size-cells = <0>;
+			cdns,fifo-depth = <256>;
+			cdns,fifo-width = <4>;
+			cdns,trigger-address = <0x0>;
+			cdns,phase-detect-selector = <2>;
+			status = "disabled";
+		};
+	};
+
+	usbss0: dwc3-usb@f900000 {
+		compatible = "ti,am62-usb";
+		reg = <0x00 0x0f900000 0x00 0x800>,
+		      <0x00 0x0f908000 0x00 0x400>;
+		clocks = <&scmi_clk 329>;
+		clock-names = "ref";
+		power-domains = <&scmi_pds 95>;
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+		ti,syscon-phy-pll-refclk = <&wkup_conf 0x45000>;
+		status = "disabled";
+
+		usb0: usb@31000000 {
+			compatible = "snps,dwc3";
+			reg = <0x00 0x31000000 0x00 0x50000>;
+			interrupts = <GIC_SPI 215 IRQ_TYPE_LEVEL_HIGH>, /* irq.0 */
+				     <GIC_SPI 215 IRQ_TYPE_LEVEL_HIGH>; /* irq.0 */
+			interrupt-names = "host", "peripheral";
+			maximum-speed = "high-speed";
+			dr_mode = "otg";
+			snps,usb2-gadget-lpm-disable;
+			snps,usb2-lpm-disable;
+			bootph-all;
+		};
+	};
+
+	usbss1: dwc3-usb@f910000 {
+		compatible = "ti,am62-usb";
+		reg = <0x00 0x0f910000 0x00 0x800>,
+		      <0x00 0x0f918000 0x00 0x400>;
+		clocks = <&scmi_clk 336>;
+		clock-names = "ref";
+		power-domains = <&scmi_pds 96>;
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ti,syscon-phy-pll-refclk = <&wkup_conf 0x45004>;
+		ranges;
+		status = "disabled";
+
+		usb1: usb@31100000 {
+			compatible = "snps,dwc3";
+			reg = <0x00 0x31100000 0x00 0x50000>;
+			interrupts = <GIC_SPI 225 IRQ_TYPE_LEVEL_HIGH>, /* irq.0 */
+				     <GIC_SPI 225 IRQ_TYPE_LEVEL_HIGH>; /* irq.0 */
+			interrupt-names = "host", "peripheral";
+			maximum-speed = "high-speed";
+			dr_mode = "otg";
+			snps,usb2-gadget-lpm-disable;
+			snps,usb2-lpm-disable;
+		};
+	};
+
+	sdhci0: mmc@fa10000 {
+		compatible = "ti,am62-sdhci";
+		reg = <0x00 0xfa10000 0x00 0x1000>,
+		      <0x00 0xfa18000 0x00 0x400>;
+		interrupts = <GIC_SPI 239 IRQ_TYPE_LEVEL_HIGH>;
+		power-domains = <&scmi_pds 28>;
+		clocks = <&scmi_clk 122>, <&scmi_clk 123>;
+		clock-names = "clk_ahb", "clk_xin";
+		assigned-clocks = <&scmi_clk 123>;
+		assigned-clock-parents = <&scmi_clk 0>;
+		bus-width = <8>;
+		ti,clkbuf-sel = <0x7>;
+		ti,otap-del-sel-legacy = <0x0>;
+		ti,itap-del-sel-legacy = <0x0>;
+		status = "disabled";
+	};
+
+	sdhci1: mmc@fa00000 {
+		compatible = "ti,am62-sdhci";
+		reg = <0x00 0x0fa00000 0x00 0x1000>,
+		      <0x00 0x0fa08000 0x00 0x400>;
+		interrupts = <GIC_SPI 237 IRQ_TYPE_LEVEL_HIGH>;
+		power-domains = <&scmi_pds 26>;
+		clocks = <&scmi_clk 106>, <&scmi_clk 107>;
+		clock-names = "clk_ahb", "clk_xin";
+		assigned-clocks = <&scmi_clk 107>;
+		assigned-clock-parents = <&scmi_clk 0>;
+		bus-width = <4>;
+		ti,clkbuf-sel = <0x7>;
+		ti,otap-del-sel-legacy = <0x0>;
+		ti,itap-del-sel-legacy = <0x0>;
+		status = "disabled";
+	};
+
+	sdhci2: mmc@fa20000 {
+		compatible = "ti,am62-sdhci";
+		reg = <0x00 0x0fa20000 0x00 0x1000>,
+		      <0x00 0x0fa28000 0x00 0x400>;
+		interrupts = <GIC_SPI 238 IRQ_TYPE_LEVEL_HIGH>;
+		power-domains = <&scmi_pds 27>;
+		clocks = <&scmi_clk 114>, <&scmi_clk 115>;
+		clock-names = "clk_ahb", "clk_xin";
+		assigned-clocks = <&scmi_clk 115>;
+		assigned-clock-parents = <&scmi_clk 0>;
+		bus-width = <4>;
+		ti,clkbuf-sel = <0x7>;
+		ti,otap-del-sel-legacy = <0x0>;
+		ti,itap-del-sel-legacy = <0x0>;
+		status = "disabled";
+	};
+
+	i2c0: i2c@20000000 {
+		compatible = "ti,am64-i2c", "ti,omap4-i2c";
+		reg = <0x00 0x20000000 0x00 0x100>;
+		interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
+		power-domains = <&scmi_pds 53>;
+		clocks = <&scmi_clk 246>;
+		clock-names = "fck";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
+	i2c1: i2c@20010000 {
+		compatible = "ti,am64-i2c", "ti,omap4-i2c";
+		reg = <0x00 0x20010000 0x00 0x100>;
+		interrupts = <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>;
+		power-domains = <&scmi_pds 54>;
+		clocks = <&scmi_clk 250>;
+		clock-names = "fck";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
+	i2c2: i2c@20020000 {
+		compatible = "ti,am64-i2c", "ti,omap4-i2c";
+		reg = <0x00 0x20020000 0x00 0x100>;
+		interrupts = <GIC_SPI 66 IRQ_TYPE_LEVEL_HIGH>;
+		power-domains = <&scmi_pds 55>;
+		clocks = <&scmi_clk 254>;
+		clock-names = "fck";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
+	i2c3: i2c@20030000 {
+		compatible = "ti,am64-i2c", "ti,omap4-i2c";
+		reg = <0x00 0x20030000 0x00 0x100>;
+		interrupts = <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>;
+		power-domains = <&scmi_pds 56>;
+		clocks = <&scmi_clk 258>;
+		clock-names = "fck";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
+	mcan0: can@20701000 {
+		compatible = "bosch,m_can";
+		reg = <0x00 0x20701000 0x00 0x200>,
+		      <0x00 0x20708000 0x00 0x8000>;
+		reg-names = "m_can", "message_ram";
+		power-domains = <&scmi_pds 47>;
+		clocks = <&scmi_clk 179>, <&scmi_clk 174>;
+		clock-names = "hclk", "cclk";
+		interrupts = <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "int0", "int1";
+		bosch,mram-cfg = <0x0 128 64 64 64 64 32 32>;
+		status = "disabled";
+	};
+
+	mcan1: can@20711000 {
+		compatible = "bosch,m_can";
+		reg = <0x00 0x20711000 0x00 0x200>,
+		      <0x00 0x20718000 0x00 0x8000>;
+		reg-names = "m_can", "message_ram";
+		power-domains = <&scmi_pds 48>;
+		clocks = <&scmi_clk 185>, <&scmi_clk 180>;
+		clock-names = "hclk", "cclk";
+		interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "int0", "int1";
+		bosch,mram-cfg = <0x0 128 64 64 64 64 32 32>;
+		status = "disabled";
+	};
+
+	mcan2: can@20721000 {
+		compatible = "bosch,m_can";
+		reg = <0x00 0x20721000 0x00 0x200>,
+		      <0x00 0x20728000 0x00 0x8000>;
+		reg-names = "m_can", "message_ram";
+		power-domains = <&scmi_pds 49>;
+		clocks = <&scmi_clk 191>, <&scmi_clk 186>;
+		clock-names = "hclk", "cclk";
+		interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "int0", "int1";
+		bosch,mram-cfg = <0x0 128 64 64 64 64 32 32>;
+		status = "disabled";
+	};
+
+	spi0: spi@20100000 {
+		compatible = "ti,am654-mcspi", "ti,omap4-mcspi";
+		reg = <0x00 0x20100000 0x00 0x400>;
+		interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
+		power-domains = <&scmi_pds 72>;
+		clocks = <&scmi_clk 299>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
+	spi1: spi@20110000 {
+		compatible = "ti,am654-mcspi","ti,omap4-mcspi";
+		reg = <0x00 0x20110000 0x00 0x400>;
+		interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
+		power-domains = <&scmi_pds 73>;
+		clocks = <&scmi_clk 302>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
+	spi2: spi@20120000 {
+		compatible = "ti,am654-mcspi","ti,omap4-mcspi";
+		reg = <0x00 0x20120000 0x00 0x400>;
+		interrupts = <GIC_SPI 82 IRQ_TYPE_LEVEL_HIGH>;
+		power-domains = <&scmi_pds 74>;
+		clocks = <&scmi_clk 305>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
+	spi3: spi@20130000 {
+		compatible = "ti,am654-mcspi","ti,omap4-mcspi";
+		reg = <0x00 0x20130000 0x00 0x400>;
+		interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
+		power-domains = <&scmi_pds 75>;
+		clocks = <&scmi_clk 308>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
+	epwm0: pwm@23000000 {
+		compatible = "ti,am64-epwm", "ti,am3352-ehrpwm";
+		#pwm-cells = <3>;
+		reg = <0x00 0x23000000 0x00 0x100>;
+		power-domains = <&scmi_pds 40>;
+		clocks = <&epwm_tbclk 0>, <&scmi_clk 164>;
+		clock-names = "tbclk", "fck";
+		status = "disabled";
+	};
+
+	epwm1: pwm@23010000 {
+		compatible = "ti,am64-epwm", "ti,am3352-ehrpwm";
+		#pwm-cells = <3>;
+		reg = <0x00 0x23010000 0x00 0x100>;
+		power-domains = <&scmi_pds 41>;
+		clocks = <&epwm_tbclk 1>, <&scmi_clk 165>;
+		clock-names = "tbclk", "fck";
+		status = "disabled";
+	};
+
+	epwm2: pwm@23020000 {
+		compatible = "ti,am64-epwm", "ti,am3352-ehrpwm";
+		#pwm-cells = <3>;
+		reg = <0x00 0x23020000 0x00 0x100>;
+		power-domains = <&scmi_pds 42>;
+		clocks = <&epwm_tbclk 2>, <&scmi_clk 166>;
+		clock-names = "tbclk", "fck";
+		status = "disabled";
+	};
+
+	ecap0: pwm@23100000 {
+		compatible = "ti,am3352-ecap";
+		reg = <0x00 0x23100000 0x00 0x100>;
+		power-domains = <&scmi_pds 22>;
+		clocks = <&scmi_clk 99>;
+		clock-names = "fck";
+		#pwm-cells = <3>;
+		status = "disabled";
+	};
+
+	ecap1: pwm@23110000 {
+		compatible = "ti,am3352-ecap";
+		reg = <0x00 0x23110000 0x00 0x100>;
+		power-domains = <&scmi_pds 23>;
+		clocks = <&scmi_clk 100>;
+		clock-names = "fck";
+		#pwm-cells = <3>;
+		status = "disabled";
+	};
+
+	ecap2: pwm@23120000 {
+		compatible = "ti,am3352-ecap";
+		reg = <0x00 0x23120000 0x00 0x100>;
+		power-domains = <&scmi_pds 24>;
+		clocks = <&scmi_clk 101>;
+		clock-names = "fck";
+		#pwm-cells = <3>;
+		status = "disabled";
+	};
+
+	eqep0: counter@23200000 {
+		compatible = "ti,am62-eqep";
+		reg = <0x00 0x23200000 0x00 0x100>;
+		power-domains = <&scmi_pds 29>;
+		clocks = <&scmi_clk 127>;
+		interrupts = <GIC_SPI 162 IRQ_TYPE_EDGE_RISING>;
+		status = "disabled";
+	};
+
+	eqep1: counter@23210000 {
+		compatible = "ti,am62-eqep";
+		reg = <0x00 0x23210000 0x00 0x100>;
+		power-domains = <&scmi_pds 30>;
+		clocks = <&scmi_clk 128>;
+		interrupts = <GIC_SPI 163 IRQ_TYPE_EDGE_RISING>;
+		status = "disabled";
+	};
+
+	eqep2: counter@23220000 {
+		compatible = "ti,am62-eqep";
+		reg = <0x00 0x23220000 0x00 0x100>;
+		power-domains = <&scmi_pds 31>;
+		clocks = <&scmi_clk 129>;
+		interrupts = <GIC_SPI 164 IRQ_TYPE_EDGE_RISING>;
+		status = "disabled";
+	};
+
+	elm0: ecc@25010000 {
+		compatible = "ti,am64-elm";
+		reg = <0x00 0x25010000 0x00 0x2000>;
+		interrupts = <GIC_SPI 243 IRQ_TYPE_LEVEL_HIGH>;
+		power-domains = <&scmi_pds 25>;
+		clocks = <&scmi_clk 102>;
+		clock-names = "fck";
+		status = "disabled";
+	};
+
+	tscadc0: tscadc@28001000 {
+		compatible = "ti,am654-tscadc", "ti,am3359-tscadc";
+		reg = <0x00 0x28001000 0x00 0x1000>;
+		interrupts = <GIC_SPI 253 IRQ_TYPE_LEVEL_HIGH>;
+		power-domains = <&scmi_pds 0>;
+		clocks = <&scmi_clk 0>;
+		assigned-clocks = <&scmi_clk 0>;
+		assigned-clock-parents = <&scmi_clk 2>;
+		assigned-clock-rates = <60000000>;
+		clock-names = "fck";
+		status = "disabled";
+
+		adc {
+			compatible = "ti,am654-adc", "ti,am3359-adc";
+			#io-channel-cells = <1>;
+		};
+	};
+
+	dphy_tx0: phy@301c0000 {
+		compatible = "ti,j721e-dphy";
+		reg = <0x0 0x301c0000 0x0 0x1000>;
+		clocks = <&scmi_clk 348>, <&scmi_clk 341>;
+		clock-names = "psm", "pll_ref";
+		power-domains = <&scmi_pds 86>;
+		assigned-clocks = <&scmi_clk 341>;
+		assigned-clock-parents = <&scmi_clk 0>;
+		assigned-clock-rates = <25000000>;
+		#phy-cells = <0>;
+		status = "disabled";
+	};
+
+	dsi0: dsi@30500000 {
+		compatible = "ti,j721e-dsi";
+		reg = <0x0 0x30500000 0x0 0x100000>,
+		      <0x0 0x30270000 0x0 0x100>;
+		clocks = <&scmi_clk 155>, <&scmi_clk 158>;
+		clock-names = "dsi_p_clk", "dsi_sys_clk";
+		power-domains = <&scmi_pds 38>;
+		interrupt-parent = <&gic500>;
+		interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
+		phys = <&dphy_tx0>;
+		phy-names = "dphy";
+		status = "disabled";
+	};
+
+	gpmc0: memory-controller@3b000000 {
+		compatible = "ti,am64-gpmc";
+		reg = <0x00 0x3b000000 0x00 0x400>,
+		      <0x00 0x50000000 0x00 0x8000000>;
+		power-domains = <&scmi_pds 37>;
+		clocks = <&scmi_clk 147>;
+		clock-names = "fck";
+		reg-names = "cfg", "data";
+		interrupts = <GIC_SPI 244 IRQ_TYPE_LEVEL_HIGH>;
+		gpmc,num-cs = <3>;
+		gpmc,num-waitpins = <2>;
+		interrupt-controller;
+		gpio-controller;
+		#interrupt-cells = <2>;
+		#address-cells = <2>;
+		#size-cells = <1>;
+		#gpio-cells = <2>;
+		status = "disabled";
+	};
+
+	oc_sram: sram@70800000 {
+		compatible = "mmio-sram";
+		reg = <0x00 0x70800000 0x00 0x10000>;
+		ranges = <0x0 0x00 0x70800000 0x10000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		scmi_shmem: sram@0 {
+			compatible = "arm,scmi-shmem";
+			reg = <0x0 0x100>;
+		};
+	};
+};
diff --git a/arch/arm/dts/k3-am62l-thermal.dtsi b/arch/arm/dts/k3-am62l-thermal.dtsi
new file mode 100644
index 0000000000000000000000000000000000000000..55a83eaa88c943deb767a26e8fbe2d7f88a7c04c
--- /dev/null
+++ b/arch/arm/dts/k3-am62l-thermal.dtsi
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: GPL-2.0-only OR MIT
+/*
+ * Thermal limits for the AM62L
+ * Copyright (C) 2025 Texas Instruments Incorporated - https://www.ti.com/
+ *
+ * Technical Reference Manual: https://www.ti.com/lit/pdf/sprujb4
+ */
+
+#include <dt-bindings/thermal/thermal.h>
+
+thermal_zones: thermal-zones {
+	main0_thermal: main0-thermal {
+		polling-delay-passive = <250>;  /* milliSeconds */
+		polling-delay = <500>;          /* milliSeconds */
+		thermal-sensors = <&wkup_vtm0 0>;
+
+		trips {
+			main0_crit: main0-crit {
+				temperature = <105000>; /* milliCelsius */
+				hysteresis = <2000>;    /* milliCelsius */
+				type = "critical";
+			};
+		};
+	};
+};
diff --git a/arch/arm/dts/k3-am62l-wakeup.dtsi b/arch/arm/dts/k3-am62l-wakeup.dtsi
new file mode 100644
index 0000000000000000000000000000000000000000..1e4ca8ec7babe78ca60106f0d06e4d8e2953bac8
--- /dev/null
+++ b/arch/arm/dts/k3-am62l-wakeup.dtsi
@@ -0,0 +1,133 @@
+// SPDX-License-Identifier: GPL-2.0-only or MIT
+/*
+ * Device Tree file for the AM62L wakeup domain peripherals
+ * Copyright (C) 2025 Texas Instruments Incorporated - https://www.ti.com/
+ *
+ * Technical Reference Manual: https://www.ti.com/lit/pdf/sprujb4
+ */
+
+#include <dt-bindings/bus/ti-sysc.h>
+
+&cbass_wakeup {
+	wkup_vtm0: temperature-sensor@b00000 {
+		compatible = "ti,j7200-vtm";
+		reg = <0x00 0xb00000 0x00 0x400>,
+		      <0x00 0xb01000 0x00 0x400>;
+		power-domains = <&scmi_pds 46>;
+		#thermal-sensor-cells = <1>;
+	};
+
+	pmx0: pinctrl@4084000 {
+		compatible = "pinctrl-single";
+		reg = <0x00 0x4084000 0x00 0x8000>;
+		pinctrl-single,register-width = <32>;
+		pinctrl-single,function-mask = <0xffffffff>;
+		#pinctrl-cells = <1>;
+		bootph-all;
+	};
+
+	wkup_gpio0: gpio@4201000 {
+		compatible = "ti,am64-gpio", "ti,keystone-gpio";
+		reg = <0x00 0x04201000 0x00 0x100>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-parent = <&gic500>;
+		interrupts = <GIC_SPI 276 IRQ_TYPE_EDGE_RISING>,
+			     <GIC_SPI 704 IRQ_TYPE_EDGE_RISING>,
+			     <GIC_SPI 705 IRQ_TYPE_EDGE_RISING>,
+			     <GIC_SPI 706 IRQ_TYPE_EDGE_RISING>,
+			     <GIC_SPI 707 IRQ_TYPE_EDGE_RISING>,
+			     <GIC_SPI 708 IRQ_TYPE_EDGE_RISING>,
+			     <GIC_SPI 709 IRQ_TYPE_EDGE_RISING>,
+			     <GIC_SPI 710 IRQ_TYPE_EDGE_RISING>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		power-domains = <&scmi_pds 36>;
+		clocks = <&scmi_clk 142>;
+		clock-names = "gpio";
+		ti,ngpio = <7>;
+		ti,davinci-gpio-unbanked = <0>;
+		status = "disabled";
+	};
+
+	wkup_timer0: timer@2b100000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x2b100000 0x00 0x400>;
+		interrupts = <GIC_SPI 190 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&scmi_clk 85>;
+		clock-names = "fck";
+		power-domains = <&scmi_pds 19>;
+		ti,timer-pwm;
+	};
+
+	wkup_timer1: timer@2b110000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x2b110000 0x00 0x400>;
+		interrupts = <GIC_SPI 191 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&scmi_clk 96>;
+		clock-names = "fck";
+		power-domains = <&scmi_pds 20>;
+		ti,timer-pwm;
+	};
+
+	wkup_i2c0: i2c@2b200000 {
+		compatible = "ti,am64-i2c", "ti,omap4-i2c";
+		reg = <0x00 0x2b200000 0x00 0x100>;
+		interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		power-domains = <&scmi_pds 57>;
+		clocks = <&scmi_clk 262>;
+		clock-names = "fck";
+		status = "disabled";
+	};
+
+	target-module@2b300050 {
+		compatible = "ti,sysc-omap2", "ti,sysc";
+		reg = <0x00 0x2b300050 0x00 0x4>,
+		      <0x00 0x2b300054 0x00 0x4>,
+		      <0x00 0x2b300058 0x00 0x4>;
+		reg-names = "rev", "sysc", "syss";
+		ranges = <0x0 0x00 0x2b300000 0x100000>;
+		power-domains = <&scmi_pds 83>;
+		clocks = <&scmi_clk 324>;
+		clock-names = "fck";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ti,sysc-mask = <(SYSC_OMAP2_ENAWAKEUP |
+				 SYSC_OMAP2_SOFTRESET |
+				 SYSC_OMAP2_AUTOIDLE)>;
+		ti,sysc-sidle = <SYSC_IDLE_FORCE>,
+				<SYSC_IDLE_NO>,
+				<SYSC_IDLE_SMART>,
+				<SYSC_IDLE_SMART_WKUP>;
+		ti,syss-mask = <1>;
+		ti,no-reset-on-init;
+		status = "disabled";
+
+		wkup_uart0: serial@0 {
+			compatible = "ti,am64-uart", "ti,am654-uart";
+			reg = <0x0 0x100>;
+			interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&scmi_clk 324>;
+			assigned-clocks = <&scmi_clk 324>;
+			assigned-clock-rates = <48000000>;
+			clock-names = "fck";
+			status = "disabled";
+		};
+	};
+
+	wkup_conf: syscon@43000000 {
+		compatible = "syscon", "simple-mfd";
+		reg = <0x00 0x43000000 0x00 0x20000>;
+		ranges = <0x0 0x00 0x43000000 0x20000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		chipid: chipid@14 {
+			compatible = "ti,am654-chipid";
+			reg = <0x14 0x4>;
+			bootph-all;
+		};
+	};
+};
diff --git a/arch/arm/dts/k3-am62l.dtsi b/arch/arm/dts/k3-am62l.dtsi
new file mode 100644
index 0000000000000000000000000000000000000000..19e73a2267503caca1cc7969700931a5a594e3aa
--- /dev/null
+++ b/arch/arm/dts/k3-am62l.dtsi
@@ -0,0 +1,121 @@
+// SPDX-License-Identifier: GPL-2.0-only or MIT
+/*
+ * Device Tree Source for AM62L SoC Family
+ * Copyright (C) 2025 Texas Instruments Incorporated - https://www.ti.com/
+ *
+ * Technical Reference Manual: https://www.ti.com/lit/pdf/sprujb4
+ */
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+
+#include "k3-pinctrl.h"
+
+/ {
+	model = "Texas Instruments K3 AM62L3 SoC";
+	compatible = "ti,am62l3";
+	interrupt-parent = <&gic500>;
+	#address-cells = <2>;
+	#size-cells = <2>;
+
+	firmware {
+		optee {
+			compatible = "linaro,optee-tz";
+			method = "smc";
+		};
+
+		psci: psci {
+			compatible = "arm,psci-1.0";
+			method = "smc";
+		};
+
+		scmi: scmi {
+			compatible = "arm,scmi-smc";
+			arm,smc-id = <0x82004000>;
+			shmem = <&scmi_shmem>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			scmi_clk: protocol@14 {
+				reg = <0x14>;
+				#clock-cells = <1>;
+				bootph-all;
+			};
+
+			scmi_pds: protocol@11 {
+				reg = <0x11>;
+				#power-domain-cells = <1>;
+				bootph-all;
+			};
+		};
+	};
+
+	a53_timer0: timer-cl0-cpu0 {
+		compatible = "arm,armv8-timer";
+		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>, /* cntpsirq */
+			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>, /* cntpnsirq */
+			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>, /* cntvirq */
+			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>; /* cnthpirq */
+	};
+
+	pmu: pmu {
+		compatible = "arm,cortex-a53-pmu";
+		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
+	};
+
+	cbass_main: bus@f0000 {
+		compatible = "simple-bus";
+		ranges = <0x00 0x00600000 0x00 0x00600000 0x00 0x00010100>, /* GPIO */
+			 <0x00 0x01000000 0x00 0x01000000 0x00 0x01b28400>, /* First Peripheral Window */
+			 <0x00 0x00a40000 0x00 0x00a40000 0x00 0x00000400>, /* Timesync Router */
+			 <0x00 0x08000000 0x00 0x08000000 0x00 0x00200000>, /* CPSW */
+			 <0x00 0x09000000 0x00 0x09000000 0x00 0x00400000>, /* CTRL MMRs */
+			 <0x00 0x0e000000 0x00 0x0e000000 0x00 0x1a001400>, /* Second Peripheral Window */
+			 <0x00 0x301c0000 0x00 0x301c0000 0x00 0x00001000>, /* DPHY-TX */
+			 <0x00 0x30200000 0x00 0x30200000 0x00 0x0000b000>, /* DSS */
+			 <0x00 0x30270000 0x00 0x30270000 0x00 0x00390000>, /* DSI Wrapper */
+			 <0x00 0x30500000 0x00 0x30500000 0x00 0x00100000>, /* DSI Config */
+			 <0x00 0x31000000 0x00 0x31000000 0x00 0x00050000>, /* USB0 DWC3 Core Window */
+			 <0x00 0x31100000 0x00 0x31100000 0x00 0x00050000>, /* USB1 DWC3 Core Window */
+			 <0x00 0x3b000000 0x00 0x3b000000 0x00 0x00000400>, /* GPMC0 */
+			 <0x00 0x45810000 0x00 0x45810000 0x00 0x03170000>, /* DMSS */
+			 <0x00 0x50000000 0x00 0x50000000 0x00 0x08000000>, /* GPMC DATA */
+			 <0x00 0x60000000 0x00 0x60000000 0x00 0x08000000>, /* FSS DAT1 */
+			 <0x00 0x70800000 0x00 0x70800000 0x00 0x00018000>, /* OCSRAM */
+			 <0x01 0x00000000 0x01 0x00000000 0x00 0x00310000>, /* A53 PERIPHBASE */
+			 <0x04 0x00000000 0x04 0x00000000 0x01 0x00000000>, /* FSS DAT0 */
+			 <0x05 0x00000000 0x05 0x00000000 0x01 0x00000000>, /* FSS DAT3 */
+
+			 /* Wakeup Domain Range */
+			 <0x00 0x00a80000 0x00 0x00a80000 0x00 0x00034000>, /* GTC */
+			 <0x00 0x00b00000 0x00 0x00b00000 0x00 0x00001400>, /* VTM */
+			 <0x00 0x04080000 0x00 0x04080000 0x00 0x00008000>, /* PDGCFG */
+			 <0x00 0x04201000 0x00 0x04201000 0x00 0x00000100>, /* GPIO */
+			 <0x00 0x2b100000 0x00 0x2b100000 0x00 0x00100100>, /* Wakeup Peripheral Window */
+			 <0x00 0x40800000 0x00 0x40800000 0x00 0x00014000>, /* DMA */
+			 <0x00 0x43000000 0x00 0x43000000 0x00 0x00080000>; /* CTRL MMRs */
+		#address-cells = <2>;
+		#size-cells = <2>;
+
+		cbass_wakeup:  bus@43000000 {
+			compatible = "simple-bus";
+			 ranges = <0x00 0x00a80000 0x00 0x00a80000 0x00 0x00034000>, /* GTC */
+				  <0x00 0x00b00000 0x00 0x00b00000 0x00 0x00001400>, /* VTM */
+				  <0x00 0x04080000 0x00 0x04080000 0x00 0x00008000>, /* PDGCFG */
+				  <0x00 0x04201000 0x00 0x04201000 0x00 0x00000100>, /* GPIO */
+				  <0x00 0x2b100000 0x00 0x2b100000 0x00 0x00100100>, /* Wakeup Peripheral Window */
+				  <0x00 0x40800000 0x00 0x40800000 0x00 0x00014000>, /* DMA */
+				  <0x00 0x43000000 0x00 0x43000000 0x00 0x00080000>; /* CTRL MMRs */
+			#address-cells = <2>;
+			#size-cells = <2>;
+			bootph-all;
+		};
+	};
+
+	#include "k3-am62l-thermal.dtsi"
+};
+
+/* Now include peripherals for each bus segment */
+#include "k3-am62l-main.dtsi"
+#include "k3-am62l-wakeup.dtsi"
diff --git a/arch/arm/dts/k3-am62l3-evm.dts b/arch/arm/dts/k3-am62l3-evm.dts
new file mode 100644
index 0000000000000000000000000000000000000000..16efb60bf326018cd483cdeae35ed9538d24d522
--- /dev/null
+++ b/arch/arm/dts/k3-am62l3-evm.dts
@@ -0,0 +1,294 @@
+// SPDX-License-Identifier: GPL-2.0-only or MIT
+/*
+ * Device Tree file for the AM62L3 Evaluation Module
+ * Copyright (C) 2025 Texas Instruments Incorporated - https://www.ti.com/
+ *
+ * Technical Reference Manual: https://www.ti.com/lit/pdf/sprujb4
+ * Data Sheet: https://www.ti.com/lit/pdf/sprspa1
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
+
+#include "k3-am62l3.dtsi"
+#include "k3-pinctrl.h"
+
+/ {
+	compatible = "ti,am62l3-evm", "ti,am62l3";
+	model = "Texas Instruments AM62L3 Evaluation Module";
+
+	chosen {
+		stdout-path = &uart0;
+	};
+
+	gpio_keys: gpio-keys {
+		compatible = "gpio-keys";
+		autorepeat;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usr_btn_pins_default>;
+
+		usr: button-usr {
+			label = "User Key";
+			linux,code = <BTN_0>;
+			gpios = <&gpio0 90 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&usr_led_pins_default>;
+
+		led-0 {
+			label = "am62-sk:green:heartbeat";
+			gpios = <&gpio0 123 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+			function = LED_FUNCTION_HEARTBEAT;
+			default-state = "on";
+		};
+	};
+
+	memory@80000000 {
+		reg = <0x00000000 0x80000000 0x00000000 0x80000000>;
+		device_type = "memory";
+		bootph-all;
+	};
+
+	vcc_1v8: regulator-3 {
+		/* output of TPS6282518DMQ */
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_1v8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc_3v3_sys>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vcc_3v3_sys: regulator-1 {
+		/* output of LM61460-Q1 */
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_3v3_sys";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vmain_pd>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vmain_pd: regulator-0 {
+		/* TPS65988 PD CONTROLLER OUTPUT */
+		bootph-all;
+		compatible = "regulator-fixed";
+		regulator-name = "vmain_pd";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+};
+
+&i2c0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c0_pins_default>;
+	clock-frequency = <400000>;
+	status = "okay";
+	bootph-all;
+
+	eeprom@51 {
+		/* AT24C512C-MAHM-T or M24512-DFMC6TG */
+		compatible = "atmel,24c512";
+		reg = <0x51>;
+	};
+};
+
+&i2c1 {
+	pinctrl-0 = <&i2c1_pins_default>;
+	pinctrl-names = "default";
+	clock-frequency = <100000>;
+	status = "okay";
+	bootph-all;
+
+	exp1: gpio@22 {
+		compatible = "ti,tca6424";
+		reg = <0x22>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		gpio-line-names = "", "",
+			"UART1_FET_SEL", "MMC1_SD_EN",
+			"VPP_EN", "EXP_PS_3V3_EN",
+			"UART1_FET_BUF_EN", "",
+			"DSI_GPIO0", "DSI_GPIO1",
+			"", "BT_UART_WAKE_SOC_3V3",
+			"USB_TYPEA_OC_INDICATION", "",
+			"", "WLAN_ALERTn",
+			"HDMI_INTn", "TEST_GPIO2",
+			"MCASP0_FET_EN", "MCASP0_BUF_BT_EN",
+			"MCASP0_FET_SEL", "DSI_EDID",
+			"PD_I2C_IRQ", "IO_EXP_TEST_LED";
+
+		interrupt-parent = <&gpio0>;
+		interrupts = <91 IRQ_TYPE_EDGE_FALLING>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+
+		pinctrl-0 = <&gpio0_ioexp_intr_pins_default>;
+		pinctrl-names = "default";
+		bootph-all;
+	};
+
+	exp2: gpio@23 {
+		compatible = "ti,tca6424";
+		reg = <0x23>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		gpio-line-names = "BT_EN_SOC", "VOUT0_FET_SEL0",
+			"", "",
+			"", "",
+			"", "",
+			"WL_LT_EN", "EXP_PS_5V0_EN",
+			"TP45", "TP48",
+			"TP46", "TP49",
+			"TP47", "TP50",
+			"GPIO_QSPI_NAND_RSTn", "GPIO_HDMI_RSTn",
+			"GPIO_CPSW1_RST", "GPIO_CPSW2_RST",
+			"", "GPIO_AUD_RSTn",
+			"GPIO_eMMC_RSTn", "SoC_WLAN_SDIO_RST";
+
+		bootph-all;
+	};
+};
+
+&pmx0 {
+	gpio0_ioexp_intr_pins_default: gpio0-ioexp-intr-default-pins {
+		pinctrl-single,pins = <
+			AM62LX_IOPAD(0x01b0, PIN_INPUT, 7)	 /* (B12) SPI0_D1.GPIO0_91 */
+		>;
+		bootph-all;
+	};
+
+	i2c0_pins_default: i2c0-default-pins {
+		pinctrl-single,pins = <
+			AM62LX_IOPAD(0x01cc, PIN_INPUT_PULLUP, 0) /* (B7) I2C0_SCL */
+			AM62LX_IOPAD(0x01d0, PIN_INPUT_PULLUP, 0) /* (A7) I2C0_SDA */
+		>;
+		bootph-all;
+	};
+
+	i2c1_pins_default: i2c1-default-pins {
+		pinctrl-single,pins = <
+			AM62LX_IOPAD(0x01d4, PIN_INPUT_PULLUP, 0) /* (D7) I2C1_SCL */
+			AM62LX_IOPAD(0x01d8, PIN_INPUT_PULLUP, 0) /* (A6) I2C1_SDA */
+		>;
+	};
+
+	mmc0_pins_default: mmc0-default-pins {
+		pinctrl-single,pins = <
+			AM62LX_IOPAD(0x0214, PIN_INPUT_PULLUP, 0) /* (D2) MMC0_CMD */
+			AM62LX_IOPAD(0x020c, PIN_OUTPUT, 0)	 /* (B2) MMC0_CLK */
+			AM62LX_IOPAD(0x0208, PIN_INPUT_PULLUP, 0) /* (D3) MMC0_DAT0 */
+			AM62LX_IOPAD(0x0204, PIN_INPUT_PULLUP, 0) /* (D4) MMC0_DAT1 */
+			AM62LX_IOPAD(0x0200, PIN_INPUT_PULLUP, 0) /* (C1) MMC0_DAT2 */
+			AM62LX_IOPAD(0x01fc, PIN_INPUT_PULLUP, 0) /* (C2) MMC0_DAT3 */
+			AM62LX_IOPAD(0x01f8, PIN_INPUT_PULLUP, 0) /* (C4) MMC0_DAT4 */
+			AM62LX_IOPAD(0x01f4, PIN_INPUT_PULLUP, 0) /* (B3) MMC0_DAT5 */
+			AM62LX_IOPAD(0x01f0, PIN_INPUT_PULLUP, 0) /* (A3) MMC0_DAT6 */
+			AM62LX_IOPAD(0x01ec, PIN_INPUT_PULLUP, 0) /* (B4) MMC0_DAT7 */
+		>;
+		bootph-all;
+	};
+
+	mmc1_pins_default: mmc1-default-pins {
+		pinctrl-single,pins = <
+			AM62LX_IOPAD(0x0230, PIN_INPUT, 0)	 /* (Y3) MMC1_CMD */
+			AM62LX_IOPAD(0x0228, PIN_OUTPUT, 0)	 /* (Y2) MMC1_CLK */
+			AM62LX_IOPAD(0x0224, PIN_INPUT, 0)	 /* (AA1) MMC1_DAT0 */
+			AM62LX_IOPAD(0x0220, PIN_INPUT_PULLUP, 0) /* (Y4) MMC1_DAT1 */
+			AM62LX_IOPAD(0x021c, PIN_INPUT_PULLUP, 0) /* (AA2) MMC1_DAT2 */
+			AM62LX_IOPAD(0x0218, PIN_INPUT_PULLUP, 0) /* (AB2) MMC1_DAT3 */
+			AM62LX_IOPAD(0x0234, PIN_INPUT, 0)	 /* (B6) MMC1_SDCD */
+		>;
+		bootph-all;
+	};
+
+	uart0_pins_default: uart0-default-pins {
+		pinctrl-single,pins = <
+			AM62LX_IOPAD(0x01b4, PIN_INPUT, 0)	 /* (D13) UART0_RXD */
+			AM62LX_IOPAD(0x01b8, PIN_OUTPUT, 0)	 /* (C13) UART0_TXD */
+		>;
+		bootph-all;
+	};
+
+	uart1_pins_default: uart1-default-pins {
+		pinctrl-single,pins = <
+			AM62LX_IOPAD(0x0180, PIN_INPUT, 2)	 /* (A8) MCASP0_AXR3.UART1_CTSn */
+			AM62LX_IOPAD(0x0184, PIN_OUTPUT, 2)	 /* (B10) MCASP0_AXR2.UART1_RTSn */
+			AM62LX_IOPAD(0x0198, PIN_INPUT, 2)	 /* (C11) MCASP0_AFSR.UART1_RXD */
+			AM62LX_IOPAD(0x019c, PIN_OUTPUT, 2)	 /* (A12) MCASP0_ACLKR.UART1_TXD */
+		>;
+		bootph-all;
+	};
+
+	usb1_default_pins: usb1-default-pins {
+		pinctrl-single,pins = <
+			AM62LX_IOPAD(0x0248, PIN_INPUT | PIN_DS_PULLUD_ENABLE | PIN_DS_PULL_UP, 0) /* (A5) USB1_DRVVBUS */
+		>;
+	};
+
+	usr_btn_pins_default: usr-btn-default-pins {
+		pinctrl-single,pins = <
+			AM62LX_IOPAD(0x01ac, PIN_INPUT, 7)	 /* (E12) SPI0_D0.GPIO0_90 */
+		>;
+	};
+
+	usr_led_pins_default: usr-led-default-pins {
+		pinctrl-single,pins = <
+			AM62LX_IOPAD(0x0238, PIN_OUTPUT, 7)	 /* (D24) MMC1_SDWP.GPIO0_123 */
+		>;
+	};
+};
+
+&sdhci0 {
+	/* eMMC */
+	pinctrl-0 = <&mmc0_pins_default>;
+	pinctrl-names = "default";
+	non-removable;
+	status = "okay";
+	bootph-all;
+};
+
+&sdhci1 {
+	/* SD/MMC */
+	pinctrl-0 = <&mmc1_pins_default>;
+	pinctrl-names = "default";
+	status = "okay";
+	bootph-all;
+};
+
+&uart0 {
+	pinctrl-0 = <&uart0_pins_default>;
+	pinctrl-names = "default";
+	status = "okay";
+	bootph-all;
+};
+
+&uart1 {
+	pinctrl-0 = <&uart1_pins_default>;
+	pinctrl-names = "default";
+	status = "okay";
+	bootph-all;
+};
+
+&usb1 {
+	pinctrl-0 = <&usb1_default_pins>;
+	pinctrl-names = "default";
+	dr_mode = "host";
+};
+
+&usbss1 {
+	ti,vbus-divider;
+	status = "okay";
+};
diff --git a/arch/arm/dts/k3-am62l3.dtsi b/arch/arm/dts/k3-am62l3.dtsi
new file mode 100644
index 0000000000000000000000000000000000000000..da220b85151227c63f59b2b8ec48ae2ebb37e7bf
--- /dev/null
+++ b/arch/arm/dts/k3-am62l3.dtsi
@@ -0,0 +1,67 @@
+// SPDX-License-Identifier: GPL-2.0-only or MIT
+/*
+ * Device Tree file for the AM62L3 SoC family (Dual Core A53)
+ * Copyright (C) 2025 Texas Instruments Incorporated - https://www.ti.com/
+ *
+ * Technical Reference Manual: https://www.ti.com/lit/pdf/sprujb4
+ */
+
+/dts-v1/;
+
+#include "k3-am62l.dtsi"
+
+/ {
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu-map {
+			cluster0: cluster0 {
+				core0 {
+					cpu = <&cpu0>;
+				};
+
+				core1 {
+					cpu = <&cpu1>;
+				};
+			};
+		};
+
+		cpu0: cpu@0 {
+			compatible = "arm,cortex-a53";
+			reg = <0x000>;
+			device_type = "cpu";
+			enable-method = "psci";
+			i-cache-size = <0x8000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <128>;
+			next-level-cache = <&l2_0>;
+		};
+
+		cpu1: cpu@1 {
+			compatible = "arm,cortex-a53";
+			reg = <0x001>;
+			device_type = "cpu";
+			enable-method = "psci";
+			i-cache-size = <0x8000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <128>;
+			next-level-cache = <&l2_0>;
+		};
+	};
+
+	l2_0: l2-cache0 {
+		compatible = "cache";
+		cache-unified;
+		cache-level = <2>;
+		cache-size = <0x40000>;
+		cache-line-size = <64>;
+		cache-sets = <256>;
+	};
+};
diff --git a/arch/arm/dts/k3-pinctrl.h b/arch/arm/dts/k3-pinctrl.h
new file mode 100644
index 0000000000000000000000000000000000000000..5f23f4d9c7f83bfa188da2056f28c7ddd06d7afe
--- /dev/null
+++ b/arch/arm/dts/k3-pinctrl.h
@@ -0,0 +1,7 @@
+#ifndef __DTS_TI_K3_PINCTRL_BAREBOX_H
+#define __DTS_TI_K3_PINCTRL_BAREBOX_H
+
+#include <arm64/ti/k3-pinctrl.h>
+#define AM62LX_IOPAD(pa, val, muxmode)         (((pa) & 0x1fff)) ((val) | (muxmode))
+
+#endif /* __DTS_TI_K3_PINCTRL_BAREBOX_H */

-- 
2.39.5



