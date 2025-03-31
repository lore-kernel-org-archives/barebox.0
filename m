Delivery-date: Mon, 31 Mar 2025 14:31:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzEIK-006Z73-2e
	for lore@lore.pengutronix.de;
	Mon, 31 Mar 2025 14:31:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzEIJ-0005AB-JU
	for lore@pengutronix.de; Mon, 31 Mar 2025 14:31:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QkCqNaWt18/EIj4jYjV6NjY/s4gl2cwSZ3sczI9oZ3E=; b=YU1zG90qUDYiN6+6XwuSuNSPFl
	r9hR1sSefoR5clLyJEZhPK1tplOVWiOJ6msUpkdkJwN6oKyAru/iooqnLgT6TA+r3w9po2ihDpxRP
	ovHKsLCLCUUB65WxhivhHb1c6qT9/D7AiFv2HQmZVd2Cj7STqgAXYxYd7UhsCfP1bTOCbMbJDTRzO
	5UV/OpbeWfkEIcEZApvlgU2Fcy2/Bun7M3Qb1VjeYlKGQrSpQuwRR9p0hPRjZq5tTlLrrIFXhFXW8
	g/witPSwjUwCrfxlTRoZElO8FUlkyEzAnBa5Mbs7ekVN5Hhr9FhLLYPJ6nG2TvlSxykMmu12EbgDS
	hX5ag29A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzEHq-00000000LEg-1mFK;
	Mon, 31 Mar 2025 12:30:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzEHj-00000000L7Y-0CMi
	for barebox@lists.infradead.org;
	Mon, 31 Mar 2025 12:30:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1tzEHh-0004pw-To; Mon, 31 Mar 2025 14:30:33 +0200
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tzEHh-002asV-2C;
	Mon, 31 Mar 2025 14:30:33 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tzEHh-002dB9-1z;
	Mon, 31 Mar 2025 14:30:33 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: David Jander <david@protonic.nl>,
	Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 31 Mar 2025 14:30:29 +0200
Message-Id: <20250331123032.626219-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_053035_396213_AFD39825 
X-CRM114-Status: GOOD (  18.83  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 1/4] arm: boards: protonic-stm32mp13: Add support for MECT1S board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: David Jander <david@protonic.nl>

Introduce support for the Protonic MECT1S r1 board based on STM32MP133.

Signed-off-by: David Jander <david@protonic.nl>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/protonic-stm32mp13/board.c    |   5 +
 arch/arm/boards/protonic-stm32mp13/lowlevel.c |  14 +
 arch/arm/dts/Makefile                         |   4 +-
 arch/arm/dts/stm32mp133c-mect1s.dts           |  52 +++
 arch/arm/dts/stm32mp133c-mect1s.dtsi          | 360 ++++++++++++++++++
 images/Makefile.stm32mp                       |   1 +
 6 files changed, 435 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/dts/stm32mp133c-mect1s.dts
 create mode 100644 arch/arm/dts/stm32mp133c-mect1s.dtsi

diff --git a/arch/arm/boards/protonic-stm32mp13/board.c b/arch/arm/boards/protonic-stm32mp13/board.c
index ca035cc6773c..0173e3628dc3 100644
--- a/arch/arm/boards/protonic-stm32mp13/board.c
+++ b/arch/arm/boards/protonic-stm32mp13/board.c
@@ -273,8 +273,13 @@ static const struct prt_stm32_machine_data prt_stm32_prihmb = {
 	.flags = PRT_STM32_BOOTSRC_SD | PRT_STM32_BOOTSRC_EMMC,
 };
 
+static const struct prt_stm32_machine_data prt_stm32_mect1sr1 = {
+	.flags = PRT_STM32_BOOTSRC_SPI_NOR,
+};
+
 static const struct of_device_id prt_stm32_of_match[] = {
 	{ .compatible = "pri,prihmb", .data = &prt_stm32_prihmb },
+	{ .compatible = "prt,mect1sr1", .data = &prt_stm32_mect1sr1 },
 	{ /* sentinel */ },
 };
 BAREBOX_DEEP_PROBE_ENABLE(prt_stm32_of_match);
diff --git a/arch/arm/boards/protonic-stm32mp13/lowlevel.c b/arch/arm/boards/protonic-stm32mp13/lowlevel.c
index 9de02402f518..71e658934383 100644
--- a/arch/arm/boards/protonic-stm32mp13/lowlevel.c
+++ b/arch/arm/boards/protonic-stm32mp13/lowlevel.c
@@ -6,6 +6,7 @@
 #include <mach/stm32mp/entry.h>
 
 extern char __dtb_z_stm32mp133c_prihmb_start[];
+extern char __dtb_z_stm32mp133c_mect1s_start[];
 
 ENTRY_FUNCTION(start_stm32mp133c_prihmb, r0, r1, r2)
 {
@@ -20,3 +21,16 @@ ENTRY_FUNCTION(start_stm32mp133c_prihmb, r0, r1, r2)
 
 	stm32mp1_barebox_entry(fdt);
 }
+
+ENTRY_FUNCTION(start_stm32mp133c_mect1s, r0, r1, r2)
+{
+	void *fdt;
+
+	stm32mp_cpu_lowlevel_init();
+
+	putc_ll('>');
+
+	fdt = __dtb_z_stm32mp133c_mect1s_start + get_runtime_offset();
+
+	stm32mp1_barebox_entry(fdt);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index b3ff2e738b48..3922e0fb5c86 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -118,7 +118,9 @@ lwl-$(CONFIG_MACH_PROTONIC_STM32MP1) += \
 	stm32mp151-mecio1.dtb.o \
 	stm32mp151-mect1s.dtb.o \
 	stm32mp151c-plyaqm.dtb.o
-lwl-$(CONFIG_MACH_PROTONIC_STM32MP13) += stm32mp133c-prihmb.dtb.o
+lwl-$(CONFIG_MACH_PROTONIC_STM32MP13) += \
+	stm32mp133c-mect1s.dtb.o \
+	stm32mp133c-prihmb.dtb.o
 lwl-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
 lwl-$(CONFIG_MACH_RADXA_ROCK3) += rk3568-rock-3a.dtb.o
 lwl-$(CONFIG_MACH_RADXA_ROCK5) += rk3588-rock-5b.dtb.o
diff --git a/arch/arm/dts/stm32mp133c-mect1s.dts b/arch/arm/dts/stm32mp133c-mect1s.dts
new file mode 100644
index 000000000000..9cc971b5d4ca
--- /dev/null
+++ b/arch/arm/dts/stm32mp133c-mect1s.dts
@@ -0,0 +1,52 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-3-Clause)
+// SPDX-FileCopyrightText: 2025 David Jander, Protonic Holland
+/dts-v1/;
+
+#include "stm32mp133c-mect1s.dtsi"
+#include "stm32mp131.dtsi"
+
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#endif
+
+/ {
+	chosen {
+		stdout-path = "serial0:1500000n8";
+
+		environment-qspi {
+			compatible = "barebox,environment";
+			device-path = &barebox_env;
+			status = "disabled";
+		};
+	};
+};
+
+&qspi {
+	flash@0 {
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			tf-a@0 {
+				label = "tf-a-primary";
+				reg = <0x000000 0x40000>; /* 256 KiB */
+			};
+
+			tf-a@40000 {
+				label = "tf-a-secondary";
+				reg = <0x40000 0x40000>; /* 256 KiB */
+			};
+
+			barebox@80000 {
+				label = "barebox-fip";
+				reg = <0x80000 0x170000>;
+			};
+
+			barebox_env: barebox-env@1F0000 {
+				label = "barebox-environment";
+				reg = <0x1f0000 0x10000>; /* 64 KiB */
+			};
+		};
+	};
+};
diff --git a/arch/arm/dts/stm32mp133c-mect1s.dtsi b/arch/arm/dts/stm32mp133c-mect1s.dtsi
new file mode 100644
index 000000000000..ca179a636374
--- /dev/null
+++ b/arch/arm/dts/stm32mp133c-mect1s.dtsi
@@ -0,0 +1,360 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/regulator/st,stm32mp13-regulator.h>
+#include <arm/st/stm32mp133.dtsi>
+#include <arm/st/stm32mp131.dtsi>
+#include <arm/st/stm32mp13xc.dtsi>
+#include <arm/st/stm32mp13-pinctrl.dtsi>
+
+/ {
+	model = "Protonic MECT1S r1 board";
+	compatible = "prt,mect1sr1", "st,stm32mp133";
+
+	aliases {
+		mdio-gpio0 = &mdio0;
+		ethernet0 = &ethernet1;
+		serial0 = &uart4;
+	};
+
+	memory@c0000000 {
+		device_type = "memory";
+		reg = <0xc0000000 0x10000000>;
+	};
+
+	reserved-memory {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		optee@ce000000 {
+			reg = <0xce000000 0x02000000>;
+			no-map;
+		};
+	};
+
+	chosen {
+		stdout-path = "serial0:1500000n8";
+	};
+
+	clock_sja1105: clock-sja1105 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <25000000>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led-green {
+			function = LED_FUNCTION_HEARTBEAT;
+			gpios = <&gpioa 14 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "heartbeat";
+			default-state = "off";
+		};
+	};
+
+	reg_3v3: regulator-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+
+	spi_gpio: spi-gpio-0 {
+		compatible = "spi-gpio";
+		sck-gpios = <&gpiob 10 GPIO_ACTIVE_HIGH>;
+		mosi-gpios = <&gpioa 8 GPIO_ACTIVE_HIGH>;
+		miso-gpios = <&gpiob 5 GPIO_ACTIVE_HIGH>;
+		cs-gpios = <&gpioa 11 GPIO_ACTIVE_LOW>;
+		num-chipselects = <1>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
+};
+
+&iwdg2 {
+	timeout-sec = <32>;
+	status = "okay";
+};
+
+&ethernet1 {
+	status = "okay";
+	pinctrl-0 = <&ethernet0_rgmii_pins_x>;
+	pinctrl-1 = <&ethernet0_rgmii_sleep_pins_x>;
+	pinctrl-names = "default", "sleep";
+	phy-mode = "rmii";
+	max-speed = <100>;
+	st,eth-clk-sel;
+
+	fixed-link {
+		speed = <100>;
+		full-duplex;
+	};
+
+	mdio0: mdio {
+		 #address-cells = <1>;
+		 #size-cells = <0>;
+		 compatible = "snps,dwmac-mdio";
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
+		interrupts-extended = <&gpioc 10 IRQ_TYPE_LEVEL_LOW>;
+		reset-gpios = <&gpiof 0 GPIO_ACTIVE_LOW>;
+		reset-assert-us = <10>;
+		reset-deassert-us = <35>;
+	};
+
+	/* TI DP83TG720R */
+	t1_phy1: ethernet-phy@c {
+		compatible = "ethernet-phy-id2000.a284";
+		reg = <12>;
+		interrupts-extended = <&gpioa 4 IRQ_TYPE_LEVEL_LOW>;
+		reset-gpios = <&gpioa 3 GPIO_ACTIVE_LOW>;
+		reset-assert-us = <10>;
+		reset-deassert-us = <35>;
+	};
+
+	/* TI DP83TG720R */
+	t1_phy2: ethernet-phy@4 {
+		compatible = "ethernet-phy-id2000.a284";
+		reg = <4>;
+		interrupts-extended = <&gpiog 12 IRQ_TYPE_LEVEL_LOW>;
+		reset-gpios = <&gpioa 0 GPIO_ACTIVE_LOW>;
+		reset-assert-us = <10>;
+		reset-deassert-us = <35>;
+	};
+
+	/* TI DP83TG720R */
+	t1_phy3: ethernet-phy@d {
+		compatible = "ethernet-phy-id2000.a284";
+		reg = <13>;
+		interrupts-extended = <&gpiog 3 IRQ_TYPE_LEVEL_LOW>;
+		reset-gpios = <&gpiod 7 GPIO_ACTIVE_LOW>;
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
+		reset-gpios = <&gpioa 10 GPIO_ACTIVE_LOW>;
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
+				ethernet = <&ethernet1>;
+				phy-mode = "rmii";
+
+				/* RGMII mode is not working properly, using
+				 * RMII instead. */
+				fixed-link {
+					speed = <100>;
+					full-duplex;
+				};
+			};
+		};
+	};
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
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-rx-bus-width = <4>;
+		spi-max-frequency = <1000000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+	};
+};
+
+&{qspi_bk1_pins_a/pins} {
+	/delete-property/ bias-disable;
+	bias-pull-up;
+	drive-push-pull;
+	slew-rate = <1>;
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
+&usbh_ehci {
+	status = "okay";
+};
+
+&usbotg_hs {
+	phys = <&usbphyc_port1 0>;
+	phy-names = "usb2-phy";
+	status = "okay";
+	dr_mode = "host";
+	g-tx-fifo-size = <128 128 128 16>;
+};
+
+&usbphyc {
+	status = "okay";
+};
+
+&usbphyc_port1 {
+	phy-supply = <&reg_3v3>;
+	st,current-boost-microamp = <1000>;
+	st,decrease-hs-slew-rate;
+	st,tune-hs-dc-level = <2>;
+	st,enable-hs-rftime-reduction;
+	st,trim-hs-current = <11>;
+	st,trim-hs-impedance = <2>;
+	st,tune-squelch-level = <1>;
+	st,enable-hs-rx-gain-eq;
+	st,no-hs-ftime-ctrl;
+	st,no-lsfs-sc;
+};
+
+&pinctrl {
+	ethernet0_rgmii_pins_x: rgmii-0 {
+		pins1 {
+			/* ETH_RGMII_CLK125 */
+			pinmux = <STM32_PINMUX('F', 7, AF10)>,
+				/* ETH_RGMII_GTX_CLK */
+				<STM32_PINMUX('C', 1, AF11)>,
+				/* ETH_RGMII_TXD0 */
+				<STM32_PINMUX('G', 13, AF11)>,
+				/* ETH_RGMII_TXD1 */
+				<STM32_PINMUX('G', 14, AF11)>,
+				/* ETH_RGMII_TXD2 */
+				<STM32_PINMUX('C', 2, AF11)>,
+				/* ETH_RGMII_TXD3 */
+				<STM32_PINMUX('E', 5, AF10)>,
+				/* ETH_RGMII_TX_CTL */
+				<STM32_PINMUX('B', 11, AF11)>,
+				/* ETH_MDIO */
+				<STM32_PINMUX('A', 2, AF11)>,
+				/* ETH_MDC */
+				<STM32_PINMUX('G', 2, AF11)>;
+
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <3>;
+		};
+
+		pins2 {
+			/* ETH_RGMII_RXD0 */
+			pinmux = <STM32_PINMUX('C', 4, AF11)>,
+				/* ETH_RGMII_RXD1 */
+				<STM32_PINMUX('C', 5, AF11)>,
+				/* ETH_RGMII_RXD2 */
+				<STM32_PINMUX('B', 0, AF11)>,
+				/* ETH_RGMII_RXD3 */
+				<STM32_PINMUX('B', 1, AF11)>,
+				/* ETH_RGMII_RX_CLK */
+				<STM32_PINMUX('A', 1, AF11)>,
+				/* ETH_RGMII_RX_CTL */
+				<STM32_PINMUX('A', 7, AF11)>;
+
+			bias-disable;
+		};
+	};
+
+	ethernet0_rgmii_sleep_pins_x: rgmii-sleep-0 {
+		pins1 {
+			/* ETH_RGMII_CLK125 */
+			pinmux = <STM32_PINMUX('F', 7, ANALOG)>,
+				/* ETH_RGMII_GTX_CLK */
+				<STM32_PINMUX('C', 1, ANALOG)>,
+				/* ETH_RGMII_TXD0 */
+				<STM32_PINMUX('G', 13, ANALOG)>,
+				/* ETH_RGMII_TXD1 */
+				<STM32_PINMUX('G', 14, ANALOG)>,
+				/* ETH_RGMII_TXD2 */
+				<STM32_PINMUX('C', 2, ANALOG)>,
+				/* ETH_RGMII_TXD3 */
+				<STM32_PINMUX('E', 5, ANALOG)>,
+				/* ETH_RGMII_TX_CTL */
+				<STM32_PINMUX('B', 11, ANALOG)>,
+				/* ETH_MDIO */
+				<STM32_PINMUX('A', 2, ANALOG)>,
+				/* ETH_MDC */
+				<STM32_PINMUX('G', 2, ANALOG)>,
+				/* ETH_RGMII_RXD0 */
+				<STM32_PINMUX('C', 4, ANALOG)>,
+				/* ETH_RGMII_RXD1 */
+				<STM32_PINMUX('C', 5, ANALOG)>,
+				/* ETH_RGMII_RXD2 */
+				<STM32_PINMUX('B', 0, ANALOG)>,
+				/* ETH_RGMII_RXD3 */
+				<STM32_PINMUX('B', 2, ANALOG)>,
+				/* ETH_RGMII_RX_CLK */
+				<STM32_PINMUX('A', 1, ANALOG)>,
+				/* ETH_RGMII_RX_CTL */
+				<STM32_PINMUX('A', 7, ANALOG)>;
+		};
+	};
+};
diff --git a/images/Makefile.stm32mp b/images/Makefile.stm32mp
index ba18714c69d8..4727bb093783 100644
--- a/images/Makefile.stm32mp
+++ b/images/Makefile.stm32mp
@@ -42,6 +42,7 @@ $(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP1, start_mecio1, mecio1)
 $(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP1, start_mect1s, mect1s)
 $(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP1, start_stm32mp151c_plyaqm, stm32mp151c-plyaqm)
 $(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP13, start_stm32mp133c_prihmb, stm32mp133c-prihmb)
+$(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP13, start_stm32mp133c_mect1s, stm32mp133c-mect1s)
 
 $(call build_stm32mp_image, CONFIG_MACH_SEEED_ODYSSEY, start_stm32mp157c_seeed_odyssey, stm32mp157c-seeed-odyssey)
 
-- 
2.39.5



