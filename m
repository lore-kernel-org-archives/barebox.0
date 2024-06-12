Delivery-date: Wed, 12 Jun 2024 15:05:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHNfg-004p9a-2k
	for lore@lore.pengutronix.de;
	Wed, 12 Jun 2024 15:05:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHNff-00085M-OA
	for lore@pengutronix.de; Wed, 12 Jun 2024 15:05:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RvflGaKpZbzaROjN9j0Hyeh3FYpPXOOeKZs7RQe/z+A=; b=LNt0y8KQBEOhit/622jTULVcKG
	Cj2zAE6clPlZI6Drmcq9pEW1tlRl+jluxzpt4bjlts+4pm70rfn2LWM5lvefrWUafffnqnojLW2D6
	VoFYnBYtvvUjXxSNts5gPDAMOEqyCTWWBmfwnJWemCU3y9m28XcYX7DoIPNnoN7irFaIQ6aykWANy
	cmqtjNEu0AfSPBZO9ERROKmP/Ie67U9mPolds8sANrWsRXsVwALltXXHJQ5oKi01T96IBwQybYeIC
	Lto4lYd5xAvzPpR31P2qliqSC0yLs7ABhXqgHYDzmLAV2+rfstmaQHfhNCpa6e9aPuXTDrHVTrDoa
	7dN24cUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHNf9-0000000Cfko-2Ecx;
	Wed, 12 Jun 2024 13:05:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHNf6-0000000CfjL-218d
	for barebox@lists.infradead.org;
	Wed, 12 Jun 2024 13:05:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1sHNf5-0007yY-85; Wed, 12 Jun 2024 15:05:11 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1sHNf4-001nK5-Rl; Wed, 12 Jun 2024 15:05:10 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1sHNf4-00FVur-2d;
	Wed, 12 Jun 2024 15:05:10 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: David Jander <david@protonic.nl>
Date: Wed, 12 Jun 2024 15:05:08 +0200
Message-Id: <20240612130509.3697488-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_060512_704332_07717EDA 
X-CRM114-Status: GOOD (  16.92  )
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
Subject: [PATCH v1 1/2] arm: boards: Add support for Protonic MECIO1 board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: David Jander <david@protonic.nl>

Signed-off-by: David Jander <david@protonic.nl>
---
 arch/arm/boards/protonic-stm32mp1/board.c    |   5 +
 arch/arm/boards/protonic-stm32mp1/lowlevel.c |  15 ++
 arch/arm/dts/Makefile                        |   3 +-
 arch/arm/dts/stm32mp151-mecio1.dts           | 214 +++++++++++++++++++
 arch/arm/mach-stm32mp/Kconfig                |   6 +-
 images/Makefile.stm32mp                      |   1 +
 6 files changed, 240 insertions(+), 4 deletions(-)
 create mode 100644 arch/arm/dts/stm32mp151-mecio1.dts

diff --git a/arch/arm/boards/protonic-stm32mp1/board.c b/arch/arm/boards/protonic-stm32mp1/board.c
index 68297debab..e8f47c6849 100644
--- a/arch/arm/boards/protonic-stm32mp1/board.c
+++ b/arch/arm/boards/protonic-stm32mp1/board.c
@@ -113,10 +113,15 @@ static const struct prt_stm32_machine_data prt_stm32_prtt1c = {
 	.flags = PRT_STM32_BOOTSRC_SD | PRT_STM32_BOOTSRC_EMMC,
 };
 
+static const struct prt_stm32_machine_data prt_stm32_mecio1 = {
+	.flags = PRT_STM32_BOOTSRC_SPI_NOR,
+};
+
 static const struct of_device_id prt_stm32_of_match[] = {
 	{ .compatible = "prt,prtt1a", .data = &prt_stm32_prtt1a },
 	{ .compatible = "prt,prtt1c", .data = &prt_stm32_prtt1c },
 	{ .compatible = "prt,prtt1s", .data = &prt_stm32_prtt1a },
+	{ .compatible = "prt,mecio1", .data = &prt_stm32_mecio1 },
 	{ /* sentinel */ },
 };
 BAREBOX_DEEP_PROBE_ENABLE(prt_stm32_of_match);
diff --git a/arch/arm/boards/protonic-stm32mp1/lowlevel.c b/arch/arm/boards/protonic-stm32mp1/lowlevel.c
index 2fd7f8ba8b..97d60b6ea4 100644
--- a/arch/arm/boards/protonic-stm32mp1/lowlevel.c
+++ b/arch/arm/boards/protonic-stm32mp1/lowlevel.c
@@ -8,6 +8,7 @@
 extern char __dtb_z_stm32mp151_prtt1a_start[];
 extern char __dtb_z_stm32mp151_prtt1c_start[];
 extern char __dtb_z_stm32mp151_prtt1s_start[];
+extern char __dtb_z_stm32mp151_mecio1_start[];
 
 static void setup_uart(void)
 {
@@ -56,3 +57,17 @@ ENTRY_FUNCTION(start_prtt1s, r0, r1, r2)
 
 	stm32mp1_barebox_entry(fdt);
 }
+
+ENTRY_FUNCTION(start_mecio1, r0, r1, r2)
+{
+	void *fdt;
+
+	stm32mp_cpu_lowlevel_init();
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		setup_uart();
+
+	fdt = __dtb_z_stm32mp151_mecio1_start + get_runtime_offset();
+
+	stm32mp1_barebox_entry(fdt);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 40d61ce8db..37158ce0df 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -111,7 +111,8 @@ lwl-$(CONFIG_MACH_PROTONIC_MECSBC) += rk3568-mecsbc.dtb.o
 lwl-$(CONFIG_MACH_PROTONIC_STM32MP1) += \
 	stm32mp151-prtt1a.dtb.o \
 	stm32mp151-prtt1c.dtb.o \
-	stm32mp151-prtt1s.dtb.o
+	stm32mp151-prtt1s.dtb.o \
+	stm32mp151-mecio1.dtb.o
 lwl-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
 lwl-$(CONFIG_MACH_RADXA_ROCK3) += rk3568-rock-3a.dtb.o
 lwl-$(CONFIG_MACH_RADXA_ROCK5) += rk3588-rock-5b.dtb.o
diff --git a/arch/arm/dts/stm32mp151-mecio1.dts b/arch/arm/dts/stm32mp151-mecio1.dts
new file mode 100644
index 0000000000..6b50bdd4ef
--- /dev/null
+++ b/arch/arm/dts/stm32mp151-mecio1.dts
@@ -0,0 +1,214 @@
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
+/ {
+	model = "Protonic MECIO1";
+	compatible = "prt,mecio1", "st,stm32mp151";
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
+	led {
+		compatible = "gpio-leds";
+
+		led-0 {
+			label = "debug:red";
+			gpios = <&gpioa 13 GPIO_ACTIVE_HIGH>;
+		};
+
+		led-1 {
+			label = "debug:green";
+			gpios = <&gpioa 14 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+};
+
+&clk_hse {
+	clock-frequency = <25000000>;
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
+	phy-mode = "rgmii-id";
+	phy-handle = <&phy0>;
+	assigned-clocks = <&rcc ETHCK_K>, <&rcc PLL3_Q>;
+	assigned-clock-parents = <&rcc PLL3_Q>;
+	assigned-clock-rates = <125000000>; /* Clock PLL4 to 750Mhz in ATF/U-Boot */
+	st,eth-clk-sel;
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		compatible = "snps,dwmac-mdio";
+
+		phy0: ethernet-phy@8 {
+			reg = <8>;
+			interrupts-extended = <&gpiog 7 IRQ_TYPE_LEVEL_LOW>;
+			reset-gpios = <&gpiog 10 GPIO_ACTIVE_LOW>;
+			reset-assert-us = <10>;
+			reset-deassert-us = <35>;
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
+&uart4_pins_a {
+	pins1 {
+		pinmux = <STM32_PINMUX('B', 9, AF8)>; /* UART4_TX */
+		bias-disable;
+		drive-push-pull;
+		slew-rate = <0>;
+	};
+	pins2 {
+		pinmux = <STM32_PINMUX('B', 2, AF8)>; /* UART4_RX */
+		bias-pull-up;
+	};
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
index 524d282a1d..d9db74a576 100644
--- a/arch/arm/mach-stm32mp/Kconfig
+++ b/arch/arm/mach-stm32mp/Kconfig
@@ -43,10 +43,10 @@ config MACH_STM32MP15X_EV1
 
 config MACH_PROTONIC_STM32MP1
 	select ARCH_STM32MP157
-	bool "Protonic PRTT1L family of boards"
+	bool "Protonic PRTT1L/MECIOx family of boards"
 	help
-	  Builds all barebox-prtt1*.stm32 that can be deployed as SSBL
-	  on the respective PRTT1L family board
+	  Builds all barebox-*.stm32 that can be deployed as SSBL
+	  on the respective PRTT1L/MECIOx family board
 
 config MACH_PHYTEC_PHYCORE_STM32MP1
 	select ARCH_STM32MP157
diff --git a/images/Makefile.stm32mp b/images/Makefile.stm32mp
index cc70aee923..663c08a741 100644
--- a/images/Makefile.stm32mp
+++ b/images/Makefile.stm32mp
@@ -38,6 +38,7 @@ $(call build_stm32mp_image, CONFIG_MACH_LXA_MC1, start_stm32mp157c_lxa_mc1, stm3
 $(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP1, start_prtt1a, prtt1a)
 $(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP1, start_prtt1s, prtt1s)
 $(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP1, start_prtt1c, prtt1c)
+$(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP1, start_mecio1, mecio1)
 
 $(call build_stm32mp_image, CONFIG_MACH_SEEED_ODYSSEY, start_stm32mp157c_seeed_odyssey, stm32mp157c-seeed-odyssey)
 
-- 
2.39.2



