Delivery-date: Tue, 16 Sep 2025 12:12:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uySg6-003eUL-1j
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 12:12:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uySg5-0003MZ-I6
	for lore@pengutronix.de; Tue, 16 Sep 2025 12:12:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZGJjip7dh3MRvrCKVZU0pWKKfazWu2sYH34f7PTbhCo=; b=KRkeWMwIsgk0gqz3s8e9zgp1eg
	4a5cmmR6fk3pFKuYQVlb9RoIX9dWuvC2GY2hzKifB6IhamvsslW6HeM2EBVWGFx8GjHiMs8SbXuNh
	G1EP3FSojZGuvzFL6bAAIqKDz4Iwg7Gvcz9bTSbXDEgJoCVh4V6vvEF7OlnypKh+EpK/RFTaWH0n/
	N+aLoWo7OMWSBOMGABXj+cZHinMM4cnriARd0Q4yd5afXMdV3wtigxcwVAMUat6uaEaZjOUSSnZIR
	Uk+qxuIZ7vRf2LiECaIGNNo5p5eSFFX0iNwZ7N2T7kWqTlQtYZjmH+nykj0929qSkgyZ+vcAKgOni
	QxrLw2jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uySfb-00000007Thq-2KPC;
	Tue, 16 Sep 2025 10:12:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uySfY-00000007Th6-1f6J
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 10:12:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uySfW-0003Hj-Qg; Tue, 16 Sep 2025 12:12:14 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uySfW-001Zbl-23;
	Tue, 16 Sep 2025 12:12:14 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uySfW-00000003CPR-2Bjn;
	Tue, 16 Sep 2025 12:12:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 16 Sep 2025 12:12:13 +0200
Message-ID: <20250916101213.762678-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250916_031216_586994_D9212EC2 
X-CRM114-Status: GOOD (  10.57  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: am62l: Update SCMI clock ids
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This updates the SCMI clock ids to the ones used in recent TI TFA as
of 229d03adf ("PENDING: feat(ti): add missing scmi pds")

The SCMI clock ids have been refactored as a result of the issues raised
in [1] and [2]

[1] https://lore.kernel.org/aCcSG5ah12N0yOwi@pengutronix.de
[2] https://review.trustedfirmware.org/c/TF-A/trusted-firmware-a/+/34834

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/k3-am62l-main.dtsi   | 60 +++++++++++++++----------------
 arch/arm/dts/k3-am62l-wakeup.dtsi |  6 ++--
 2 files changed, 33 insertions(+), 33 deletions(-)

diff --git a/arch/arm/dts/k3-am62l-main.dtsi b/arch/arm/dts/k3-am62l-main.dtsi
index f1f67c1cc4..cd9506aee7 100644
--- a/arch/arm/dts/k3-am62l-main.dtsi
+++ b/arch/arm/dts/k3-am62l-main.dtsi
@@ -86,7 +86,7 @@ timer0: timer@2400000 {
 		compatible = "ti,am654-timer";
 		reg = <0x00 0x2400000 0x00 0x400>;
 		interrupts = <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&scmi_clk 47>;
+		clocks = <&scmi_clk 58>;
 		clock-names = "fck";
 		power-domains = <&scmi_pds 15>;
 		ti,timer-pwm;
@@ -96,7 +96,7 @@ timer1: timer@2410000 {
 		compatible = "ti,am654-timer";
 		reg = <0x00 0x2410000 0x00 0x400>;
 		interrupts = <GIC_SPI 171 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&scmi_clk 61>;
+		clocks = <&scmi_clk 63>;
 		clock-names = "fck";
 		power-domains = <&scmi_pds 16>;
 		ti,timer-pwm;
@@ -106,7 +106,7 @@ timer2: timer@2420000 {
 		compatible = "ti,am654-timer";
 		reg = <0x00 0x2420000 0x00 0x400>;
 		interrupts = <GIC_SPI 172 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&scmi_clk 66>;
+		clocks = <&scmi_clk 77>;
 		clock-names = "fck";
 		power-domains = <&scmi_pds 17>;
 		ti,timer-pwm;
@@ -116,7 +116,7 @@ timer3: timer@2430000 {
 		compatible = "ti,am654-timer";
 		reg = <0x00 0x2430000 0x00 0x400>;
 		interrupts = <GIC_SPI 173 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&scmi_clk 80>;
+		clocks = <&scmi_clk 82>;
 		clock-names = "fck";
 		power-domains = <&scmi_pds 18>;
 		ti,timer-pwm;
@@ -214,19 +214,19 @@ epwm_tbclk: clock-controller@1e9100 {
 	rti0: watchdog@e000000 {
 		compatible = "ti,am62l-rti-wdt";
 		reg = <0x00 0x0e000000 0x00 0x100>;
-		clocks = <&scmi_clk 273>;
+		clocks = <&scmi_clk 277>;
 		power-domains = <&scmi_pds 60>;
-		assigned-clocks = <&scmi_clk 273>;
-		assigned-clock-parents = <&scmi_clk 275>;
+		assigned-clocks = <&scmi_clk 277>;
+		assigned-clock-parents = <&scmi_clk 274>;
 	};
 
 	rti1: watchdog@e010000 {
 		compatible = "ti,am62l-rti-wdt";
 		reg = <0x00 0x0e010000 0x00 0x100>;
-		clocks = <&scmi_clk 279>;
+		clocks = <&scmi_clk 283>;
 		power-domains = <&scmi_pds 61>;
-		assigned-clocks = <&scmi_clk 279>;
-		assigned-clock-parents = <&scmi_clk 281>;
+		assigned-clocks = <&scmi_clk 283>;
+		assigned-clock-parents = <&scmi_clk 280>;
 	};
 
 	fss: bus@fc00000 {
@@ -242,8 +242,8 @@ ospi0: spi@fc40000 {
 			reg = <0x00 0x0fc40000 0x00 0x100>,
 			      <0x05 0x00000000 0x01 0x00000000>;
 			interrupts = <GIC_SPI 240 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&scmi_clk 134>;
-			assigned-clocks = <&scmi_clk 134>;
+			clocks = <&scmi_clk 136>;
+			assigned-clocks = <&scmi_clk 136>;
 			assigned-clock-rates = <166666666>;
 			power-domains = <&scmi_pds 32>;
 			#size-cells = <0>;
@@ -259,7 +259,7 @@ usbss0: dwc3-usb@f900000 {
 		compatible = "ti,am62-usb";
 		reg = <0x00 0x0f900000 0x00 0x800>,
 		      <0x00 0x0f908000 0x00 0x400>;
-		clocks = <&scmi_clk 329>;
+		clocks = <&scmi_clk 331>;
 		clock-names = "ref";
 		power-domains = <&scmi_pds 95>;
 		#address-cells = <2>;
@@ -286,7 +286,7 @@ usbss1: dwc3-usb@f910000 {
 		compatible = "ti,am62-usb";
 		reg = <0x00 0x0f910000 0x00 0x800>,
 		      <0x00 0x0f918000 0x00 0x400>;
-		clocks = <&scmi_clk 336>;
+		clocks = <&scmi_clk 338>;
 		clock-names = "ref";
 		power-domains = <&scmi_pds 96>;
 		#address-cells = <2>;
@@ -314,9 +314,9 @@ sdhci0: mmc@fa10000 {
 		      <0x00 0xfa18000 0x00 0x400>;
 		interrupts = <GIC_SPI 239 IRQ_TYPE_LEVEL_HIGH>;
 		power-domains = <&scmi_pds 28>;
-		clocks = <&scmi_clk 122>, <&scmi_clk 123>;
+		clocks = <&scmi_clk 122>, <&scmi_clk 125>;
 		clock-names = "clk_ahb", "clk_xin";
-		assigned-clocks = <&scmi_clk 123>;
+		assigned-clocks = <&scmi_clk 125>;
 		assigned-clock-parents = <&scmi_clk 124>;
 		bus-width = <8>;
 		ti,clkbuf-sel = <0x7>;
@@ -331,9 +331,9 @@ sdhci1: mmc@fa00000 {
 		      <0x00 0x0fa08000 0x00 0x400>;
 		interrupts = <GIC_SPI 237 IRQ_TYPE_LEVEL_HIGH>;
 		power-domains = <&scmi_pds 26>;
-		clocks = <&scmi_clk 106>, <&scmi_clk 107>;
+		clocks = <&scmi_clk 106>, <&scmi_clk 109>;
 		clock-names = "clk_ahb", "clk_xin";
-		assigned-clocks = <&scmi_clk 107>;
+		assigned-clocks = <&scmi_clk 109>;
 		assigned-clock-parents = <&scmi_clk 108>;
 		bus-width = <4>;
 		ti,clkbuf-sel = <0x7>;
@@ -348,9 +348,9 @@ sdhci2: mmc@fa20000 {
 		      <0x00 0x0fa28000 0x00 0x400>;
 		interrupts = <GIC_SPI 238 IRQ_TYPE_LEVEL_HIGH>;
 		power-domains = <&scmi_pds 27>;
-		clocks = <&scmi_clk 114>, <&scmi_clk 115>;
+		clocks = <&scmi_clk 114>, <&scmi_clk 117>;
 		clock-names = "clk_ahb", "clk_xin";
-		assigned-clocks = <&scmi_clk 115>;
+		assigned-clocks = <&scmi_clk 117>;
 		assigned-clock-parents = <&scmi_clk 116>;
 		bus-width = <4>;
 		ti,clkbuf-sel = <0x7>;
@@ -413,7 +413,7 @@ mcan0: can@20701000 {
 		      <0x00 0x20708000 0x00 0x8000>;
 		reg-names = "m_can", "message_ram";
 		power-domains = <&scmi_pds 47>;
-		clocks = <&scmi_clk 179>, <&scmi_clk 174>;
+		clocks = <&scmi_clk 179>, <&scmi_clk 178>;
 		clock-names = "hclk", "cclk";
 		interrupts = <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>;
@@ -428,7 +428,7 @@ mcan1: can@20711000 {
 		      <0x00 0x20718000 0x00 0x8000>;
 		reg-names = "m_can", "message_ram";
 		power-domains = <&scmi_pds 48>;
-		clocks = <&scmi_clk 185>, <&scmi_clk 180>;
+		clocks = <&scmi_clk 185>, <&scmi_clk 184>;
 		clock-names = "hclk", "cclk";
 		interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
@@ -443,7 +443,7 @@ mcan2: can@20721000 {
 		      <0x00 0x20728000 0x00 0x8000>;
 		reg-names = "m_can", "message_ram";
 		power-domains = <&scmi_pds 49>;
-		clocks = <&scmi_clk 191>, <&scmi_clk 186>;
+		clocks = <&scmi_clk 191>, <&scmi_clk 190>;
 		clock-names = "hclk", "cclk";
 		interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>;
@@ -598,9 +598,9 @@ tscadc0: tscadc@28001000 {
 		reg = <0x00 0x28001000 0x00 0x1000>;
 		interrupts = <GIC_SPI 253 IRQ_TYPE_LEVEL_HIGH>;
 		power-domains = <&scmi_pds 0>;
-		clocks = <&scmi_clk 0>;
-		assigned-clocks = <&scmi_clk 0>;
-		assigned-clock-parents = <&scmi_clk 3>;
+		clocks = <&scmi_clk 4>;
+		assigned-clocks = <&scmi_clk 4>;
+		assigned-clock-parents = <&scmi_clk 2>;
 		assigned-clock-rates = <60000000>;
 		clock-names = "fck";
 		status = "disabled";
@@ -614,11 +614,11 @@ adc {
 	dphy_tx0: phy@301c0000 {
 		compatible = "ti,j721e-dphy";
 		reg = <0x0 0x301c0000 0x0 0x1000>;
-		clocks = <&scmi_clk 348>, <&scmi_clk 341>;
+		clocks = <&scmi_clk 348>, <&scmi_clk 343>;
 		clock-names = "psm", "pll_ref";
 		power-domains = <&scmi_pds 86>;
-		assigned-clocks = <&scmi_clk 341>;
-		assigned-clock-parents = <&scmi_clk 342>;
+		assigned-clocks = <&scmi_clk 343>;
+		assigned-clock-parents = <&scmi_clk 341>;
 		assigned-clock-rates = <25000000>;
 		#phy-cells = <0>;
 		status = "disabled";
@@ -643,7 +643,7 @@ gpmc0: memory-controller@3b000000 {
 		reg = <0x00 0x3b000000 0x00 0x400>,
 		      <0x00 0x50000000 0x00 0x8000000>;
 		power-domains = <&scmi_pds 37>;
-		clocks = <&scmi_clk 147>;
+		clocks = <&scmi_clk 149>;
 		clock-names = "fck";
 		reg-names = "cfg", "data";
 		interrupts = <GIC_SPI 244 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm/dts/k3-am62l-wakeup.dtsi b/arch/arm/dts/k3-am62l-wakeup.dtsi
index 272110daab..89170d5f04 100644
--- a/arch/arm/dts/k3-am62l-wakeup.dtsi
+++ b/arch/arm/dts/k3-am62l-wakeup.dtsi
@@ -43,7 +43,7 @@ wkup_gpio0: gpio@4201000 {
 		interrupt-controller;
 		#interrupt-cells = <2>;
 		power-domains = <&scmi_pds 36>;
-		clocks = <&scmi_clk 142>;
+		clocks = <&scmi_clk 146>;
 		clock-names = "gpio";
 		ti,ngpio = <7>;
 		ti,davinci-gpio-unbanked = <0>;
@@ -54,7 +54,7 @@ wkup_timer0: timer@2b100000 {
 		compatible = "ti,am654-timer";
 		reg = <0x00 0x2b100000 0x00 0x400>;
 		interrupts = <GIC_SPI 190 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&scmi_clk 85>;
+		clocks = <&scmi_clk 93>;
 		clock-names = "fck";
 		power-domains = <&scmi_pds 19>;
 		ti,timer-pwm;
@@ -64,7 +64,7 @@ wkup_timer1: timer@2b110000 {
 		compatible = "ti,am654-timer";
 		reg = <0x00 0x2b110000 0x00 0x400>;
 		interrupts = <GIC_SPI 191 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&scmi_clk 96>;
+		clocks = <&scmi_clk 98>;
 		clock-names = "fck";
 		power-domains = <&scmi_pds 20>;
 		ti,timer-pwm;
-- 
2.47.3



