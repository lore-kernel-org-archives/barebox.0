Delivery-date: Wed, 12 Jun 2024 15:06:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHNgR-004pAA-2h
	for lore@lore.pengutronix.de;
	Wed, 12 Jun 2024 15:06:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHNgQ-0008Ch-Ky
	for lore@pengutronix.de; Wed, 12 Jun 2024 15:06:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5/zKC6xOPA/dtRCsmaszyX2Oz8fj2CLz08Q68jIiOOU=; b=RdQLxwON/X4e3OFWcJ1eaYR97g
	WgLovxiR4I4QNPsv7k3SfepDz2gaOewRQi8mIXOTyqmnfn16GBMGgsy3r9X8jcJL6GD7JJm52hhig
	YxbmXtAuFLpuvzINnnPtYGKqKSTy0FXyTaAsS04tdEiHvMoRwR5J+PkxhapB27WL3a1uNJbPwIB1/
	6UCzx3kXpcu07JHrsNmgAd5TVxrkCcCyN3bRyxNVzKK7+zws47NjM+MVo17bdKw614WoSKwO1Etij
	sBqKI9vSWmQfEwXctWfuNkzgEUGuj0kb6MxRS3GbcH6XXlVlrqvD/ED9LwFv8eXMBcYa/ymH8zhcf
	zOfkt2nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHNfB-0000000Cfl1-0ttb;
	Wed, 12 Jun 2024 13:05:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHNf6-0000000CfjM-20Qw
	for barebox@lists.infradead.org;
	Wed, 12 Jun 2024 13:05:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1sHNf5-0007yZ-9I; Wed, 12 Jun 2024 15:05:11 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1sHNf4-001nK6-T8; Wed, 12 Jun 2024 15:05:10 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1sHNf4-00FVuv-2l;
	Wed, 12 Jun 2024 15:05:10 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: David Jander <david@protonic.nl>
Date: Wed, 12 Jun 2024 15:05:09 +0200
Message-Id: <20240612130509.3697488-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240612130509.3697488-1-o.rempel@pengutronix.de>
References: <20240612130509.3697488-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_060512_864246_8E304E29 
X-CRM114-Status: GOOD (  18.99  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1 2/2] arm: boards: Add support for Protonic MECT1S board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: David Jander <david@protonic.nl>

Signed-off-by: David Jander <david@protonic.nl>
---
 arch/arm/boards/protonic-stm32mp1/board.c    |   5 +
 arch/arm/boards/protonic-stm32mp1/lowlevel.c |  15 +
 arch/arm/dts/Makefile                        |   3 +-
 arch/arm/dts/stm32mp151-mect1s.dts           | 322 +++++++++++++++++++
 arch/arm/mach-stm32mp/Kconfig                |   4 +-
 images/Makefile.stm32mp                      |   1 +
 6 files changed, 347 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/dts/stm32mp151-mect1s.dts

diff --git a/arch/arm/boards/protonic-stm32mp1/board.c b/arch/arm/boards/protonic-stm32mp1/board.c
index e8f47c6849..a919de36c2 100644
--- a/arch/arm/boards/protonic-stm32mp1/board.c
+++ b/arch/arm/boards/protonic-stm32mp1/board.c
@@ -117,11 +117,16 @@ static const struct prt_stm32_machine_data prt_stm32_mecio1 = {
 	.flags = PRT_STM32_BOOTSRC_SPI_NOR,
 };
 
+static const struct prt_stm32_machine_data prt_stm32_mect1s = {
+	.flags = PRT_STM32_BOOTSRC_SPI_NOR,
+};
+
 static const struct of_device_id prt_stm32_of_match[] = {
 	{ .compatible = "prt,prtt1a", .data = &prt_stm32_prtt1a },
 	{ .compatible = "prt,prtt1c", .data = &prt_stm32_prtt1c },
 	{ .compatible = "prt,prtt1s", .data = &prt_stm32_prtt1a },
 	{ .compatible = "prt,mecio1", .data = &prt_stm32_mecio1 },
+	{ .compatible = "prt,mect1s", .data = &prt_stm32_mect1s },
 	{ /* sentinel */ },
 };
 BAREBOX_DEEP_PROBE_ENABLE(prt_stm32_of_match);
diff --git a/arch/arm/boards/protonic-stm32mp1/lowlevel.c b/arch/arm/boards/protonic-stm32mp1/lowlevel.c
index 97d60b6ea4..2afa931126 100644
--- a/arch/arm/boards/protonic-stm32mp1/lowlevel.c
+++ b/arch/arm/boards/protonic-stm32mp1/lowlevel.c
@@ -9,6 +9,7 @@ extern char __dtb_z_stm32mp151_prtt1a_start[];
 extern char __dtb_z_stm32mp151_prtt1c_start[];
 extern char __dtb_z_stm32mp151_prtt1s_start[];
 extern char __dtb_z_stm32mp151_mecio1_start[];
+extern char __dtb_z_stm32mp151_mect1s_start[];
 
 static void setup_uart(void)
 {
@@ -71,3 +72,17 @@ ENTRY_FUNCTION(start_mecio1, r0, r1, r2)
 
 	stm32mp1_barebox_entry(fdt);
 }
+
+ENTRY_FUNCTION(start_mect1s, r0, r1, r2)
+{
+	void *fdt;
+
+	stm32mp_cpu_lowlevel_init();
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		setup_uart();
+
+	fdt = __dtb_z_stm32mp151_mect1s_start + get_runtime_offset();
+
+	stm32mp1_barebox_entry(fdt);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 37158ce0df..68585e1e4b 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -112,7 +112,8 @@ lwl-$(CONFIG_MACH_PROTONIC_STM32MP1) += \
 	stm32mp151-prtt1a.dtb.o \
 	stm32mp151-prtt1c.dtb.o \
 	stm32mp151-prtt1s.dtb.o \
-	stm32mp151-mecio1.dtb.o
+	stm32mp151-mecio1.dtb.o \
+	stm32mp151-mect1s.dtb.o
 lwl-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
 lwl-$(CONFIG_MACH_RADXA_ROCK3) += rk3568-rock-3a.dtb.o
 lwl-$(CONFIG_MACH_RADXA_ROCK5) += rk3588-rock-5b.dtb.o
diff --git a/arch/arm/dts/stm32mp151-mect1s.dts b/arch/arm/dts/stm32mp151-mect1s.dts
new file mode 100644
index 0000000000..4d0e31d189
--- /dev/null
+++ b/arch/arm/dts/stm32mp151-mect1s.dts
@@ -0,0 +1,322 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
+/*
+ * Copyright (C) Protonic Holland
+ * Author: David Jander <david@protonic.nl>
+ */
+/dts-v1/;
+
+#include "arm/st/stm32mp151.dtsi"
+#include "arm/st/stm32mp15xc.dtsi"
+#include "arm/st/stm32mp15-pinctrl.dtsi"
+#include "arm/st/stm32mp15xxaa-pinctrl.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+#include "stm32mp151.dtsi"
+
+/ {
+	model = "Protonic MECT1S";
+	compatible = "prt,mect1s", "st,stm32mp151";
+
+	chosen {
+		stdout-path = "serial0:1500000n8";
+	};
+
+	aliases {
+		serial0 = &uart4;
+		ethernet0 = &ethernet0;
+	};
+
+	v3v3: fixed-regulator-v3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "v3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+
+	v5v: fixed-regulator-v5v {
+		compatible = "regulator-fixed";
+		regulator-name = "v5v";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+	};
+
+	clock_sja1105: clock-sja1105 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <25000000>;
+	};
+
+	led {
+		compatible = "gpio-leds";
+
+		led-0 {
+			label = "debug:red";
+			gpios = <&gpioa 13 GPIO_ACTIVE_LOW>;
+		};
+
+		led-1 {
+			label = "debug:green";
+			gpios = <&gpioa 14 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+
+	spi_gpio: spi-gpio-0 {
+		compatible = "spi-gpio";
+		gpio-sck = <&gpioi 1 GPIO_ACTIVE_HIGH>;
+		gpio-mosi = <&gpioi 3 GPIO_ACTIVE_HIGH>;
+		gpio-miso = <&gpioi 2 GPIO_ACTIVE_HIGH>;
+		cs-gpios = <&gpioj 3 GPIO_ACTIVE_LOW>;
+		num-chipselects = <1>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
+};
+
+&clk_hse {
+	clock-frequency = <24000000>;
+};
+
+&clk_lse {
+	status = "disabled";
+};
+
+&qspi {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&qspi_clk_pins_a
+		     &qspi_bk1_pins_a
+		     &qspi_cs1_pins_a>;
+	pinctrl-1 = <&qspi_clk_sleep_pins_a
+		     &qspi_bk1_sleep_pins_a
+		     &qspi_cs1_sleep_pins_a>;
+	status = "okay";
+
+	flash@0 {
+		compatible = "spi-nor";
+		reg = <0>;
+		spi-rx-bus-width = <4>;
+		spi-max-frequency = <104000000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+	};
+};
+
+&qspi_bk1_pins_a {
+	pins1 {
+		bias-pull-up;
+		drive-push-pull;
+		slew-rate = <1>;
+	};
+};
+
+&ethernet0 {
+	status = "okay";
+	pinctrl-0 = <&ethernet0_rgmii_pins_x>;
+	pinctrl-1 = <&ethernet0_rgmii_sleep_pins_x>;
+	pinctrl-names = "default", "sleep";
+	phy-mode = "rgmii";
+	st,eth-clk-sel;
+
+	fixed-link {
+		speed = <1000>;
+		full-duplex;
+	};
+
+	mdio0: mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		compatible = "snps,dwmac-mdio";
+	};
+};
+
+&mdio0 {
+	/* All this DP83TG720R PHYs can't be probed before switch@0 is
+	 * probed so we need to use compatible with PHYid
+	 */
+	/* TI DP83TG720R */
+	t1_phy0: ethernet-phy@8 {
+		compatible = "ethernet-phy-id2000.a284";
+		reg = <8>;
+		interrupts-extended = <&gpioi 5 IRQ_TYPE_LEVEL_LOW>;
+		reset-gpios = <&gpioh 13 GPIO_ACTIVE_LOW>;
+		reset-assert-us = <10>;
+		reset-deassert-us = <35>;
+	};
+
+	/* TI DP83TG720R */
+	t1_phy1: ethernet-phy@c {
+		compatible = "ethernet-phy-id2000.a284";
+		reg = <12>;
+		interrupts-extended = <&gpioj 0 IRQ_TYPE_LEVEL_LOW>;
+		reset-gpios = <&gpioh 14 GPIO_ACTIVE_LOW>;
+		reset-assert-us = <10>;
+		reset-deassert-us = <35>;
+	};
+
+	/* TI DP83TG720R */
+	t1_phy2: ethernet-phy@4 {
+		compatible = "ethernet-phy-id2000.a284";
+		reg = <4>;
+		interrupts-extended = <&gpioi 7 IRQ_TYPE_LEVEL_LOW>;
+		reset-gpios = <&gpioh 15 GPIO_ACTIVE_LOW>;
+		reset-assert-us = <10>;
+		reset-deassert-us = <35>;
+	};
+
+	/* TI DP83TG720R */
+	t1_phy3: ethernet-phy@d {
+		compatible = "ethernet-phy-id2000.a284";
+		reg = <13>;
+		interrupts-extended = <&gpioi 15 IRQ_TYPE_LEVEL_LOW>;
+		reset-gpios = <&gpioi 13 GPIO_ACTIVE_LOW>;
+		reset-assert-us = <10000>;
+		reset-deassert-us = <1000>;
+	};
+};
+
+&spi_gpio {
+	switch@0 {
+		compatible = "nxp,sja1105q";
+		reg = <0>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		spi-max-frequency = <1000000>;
+		spi-rx-delay-us = <1>;
+		spi-tx-delay-us = <1>;
+		spi-cpha;
+
+		reset-gpios = <&gpioi 0 GPIO_ACTIVE_LOW>;
+
+		clocks = <&clock_sja1105>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				label = "t10";
+				phy-mode = "rgmii-id";
+				phy-handle = <&t1_phy0>;
+			};
+
+			port@1 {
+				reg = <1>;
+				label = "t11";
+				phy-mode = "rgmii-id";
+				phy-handle = <&t1_phy1>;
+			};
+
+			port@2 {
+				reg = <2>;
+				label = "t12";
+				phy-mode = "rgmii-id";
+				phy-handle = <&t1_phy2>;
+			};
+
+			port@3 {
+				reg = <3>;
+				label = "t13";
+				phy-mode = "rgmii-id";
+				phy-handle = <&t1_phy3>;
+			};
+
+			port@4 {
+				reg = <4>;
+				label = "cpu";
+				ethernet = <&ethernet0>;
+				phy-mode = "rgmii-id";
+				rx-internal-delay-ps = <2000>;
+				tx-internal-delay-ps = <2000>;
+
+				fixed-link {
+					speed = <1000>;
+					full-duplex;
+				};
+			};
+		};
+	};
+};
+
+&usbotg_hs {
+	dr_mode = "host";
+	pinctrl-0 = <&usbotg_hs_pins_a>;
+	pinctrl-names = "default";
+	phys = <&usbphyc_port1 0>;
+	phy-names = "usb2-phy";
+	vbus-supply = <&v5v>;
+	status = "okay";
+};
+
+&usbphyc {
+	status = "okay";
+};
+
+&usbphyc_port1 {
+	phy-supply = <&v3v3>;
+};
+
+&uart4 {
+	pinctrl-names = "default", "sleep", "idle";
+	pinctrl-0 = <&uart4_pins_a>;
+	pinctrl-1 = <&uart4_sleep_pins_a>;
+	pinctrl-2 = <&uart4_idle_pins_a>;
+	/delete-property/dmas;
+	/delete-property/dma-names;
+	status = "okay";
+};
+
+&pinctrl {
+	ethernet0_rgmii_pins_x: rgmii-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('G', 5, AF11)>, /* ETH_RGMII_CLK125 */
+				 <STM32_PINMUX('G', 4, AF11)>, /* ETH_RGMII_GTX_CLK */
+				 <STM32_PINMUX('B', 12, AF11)>, /* ETH_RGMII_TXD0 */
+				 <STM32_PINMUX('B', 13, AF11)>, /* ETH_RGMII_TXD1 */
+				 <STM32_PINMUX('C', 2, AF11)>, /* ETH_RGMII_TXD2 */
+				 <STM32_PINMUX('B', 8, AF11)>, /* ETH_RGMII_TXD3 */
+				 <STM32_PINMUX('B', 11, AF11)>, /* ETH_RGMII_TX_CTL */
+				 <STM32_PINMUX('C', 1, AF11)>; /* ETH_MDC */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <3>;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('A', 2, AF11)>; /* ETH_MDIO */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+		pins3 {
+			pinmux = <STM32_PINMUX('C', 4, AF11)>, /* ETH_RGMII_RXD0 */
+				 <STM32_PINMUX('C', 5, AF11)>, /* ETH_RGMII_RXD1 */
+				 <STM32_PINMUX('H', 6, AF11)>, /* ETH_RGMII_RXD2 */
+				 <STM32_PINMUX('H', 7, AF11)>, /* ETH_RGMII_RXD3 */
+				 <STM32_PINMUX('A', 1, AF11)>, /* ETH_RGMII_RX_CLK */
+				 <STM32_PINMUX('A', 7, AF11)>; /* ETH_RGMII_RX_CTL */
+			bias-disable;
+		};
+	};
+
+	ethernet0_rgmii_sleep_pins_x: rgmii-sleep-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('G', 5, ANALOG)>, /* ETH_RGMII_CLK125 */
+				 <STM32_PINMUX('G', 4, ANALOG)>, /* ETH_RGMII_GTX_CLK */
+				 <STM32_PINMUX('B', 12, ANALOG)>, /* ETH_RGMII_TXD0 */
+				 <STM32_PINMUX('B', 13, ANALOG)>, /* ETH_RGMII_TXD1 */
+				 <STM32_PINMUX('C', 2, ANALOG)>, /* ETH_RGMII_TXD2 */
+				 <STM32_PINMUX('B', 8, ANALOG)>, /* ETH_RGMII_TXD3 */
+				 <STM32_PINMUX('B', 11, ANALOG)>, /* ETH_RGMII_TX_CTL */
+				 <STM32_PINMUX('A', 2, ANALOG)>, /* ETH_MDIO */
+				 <STM32_PINMUX('C', 1, ANALOG)>, /* ETH_MDC */
+				 <STM32_PINMUX('C', 4, ANALOG)>, /* ETH_RGMII_RXD0 */
+				 <STM32_PINMUX('C', 5, ANALOG)>, /* ETH_RGMII_RXD1 */
+				 <STM32_PINMUX('H', 6, ANALOG)>, /* ETH_RGMII_RXD2 */
+				 <STM32_PINMUX('H', 7, ANALOG)>, /* ETH_RGMII_RXD3 */
+				 <STM32_PINMUX('A', 1, ANALOG)>, /* ETH_RGMII_RX_CLK */
+				 <STM32_PINMUX('A', 7, ANALOG)>; /* ETH_RGMII_RX_CTL */
+		};
+	};
+};
diff --git a/arch/arm/mach-stm32mp/Kconfig b/arch/arm/mach-stm32mp/Kconfig
index d9db74a576..5d60c79967 100644
--- a/arch/arm/mach-stm32mp/Kconfig
+++ b/arch/arm/mach-stm32mp/Kconfig
@@ -43,10 +43,10 @@ config MACH_STM32MP15X_EV1
 
 config MACH_PROTONIC_STM32MP1
 	select ARCH_STM32MP157
-	bool "Protonic PRTT1L/MECIOx family of boards"
+	bool "Protonic PRTT1L/MECIOx/MECT1S family of boards"
 	help
 	  Builds all barebox-*.stm32 that can be deployed as SSBL
-	  on the respective PRTT1L/MECIOx family board
+	  on the respective PRTT1L/MECIOx/MECT1S family board
 
 config MACH_PHYTEC_PHYCORE_STM32MP1
 	select ARCH_STM32MP157
diff --git a/images/Makefile.stm32mp b/images/Makefile.stm32mp
index 663c08a741..cb01eb2555 100644
--- a/images/Makefile.stm32mp
+++ b/images/Makefile.stm32mp
@@ -39,6 +39,7 @@ $(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP1, start_prtt1a, prtt1a)
 $(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP1, start_prtt1s, prtt1s)
 $(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP1, start_prtt1c, prtt1c)
 $(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP1, start_mecio1, mecio1)
+$(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP1, start_mect1s, mect1s)
 
 $(call build_stm32mp_image, CONFIG_MACH_SEEED_ODYSSEY, start_stm32mp157c_seeed_odyssey, stm32mp157c-seeed-odyssey)
 
-- 
2.39.2



