Delivery-date: Wed, 29 Jan 2025 14:14:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1td7tV-005wKX-1s
	for lore@lore.pengutronix.de;
	Wed, 29 Jan 2025 14:14:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1td7tU-0007Tf-Jy
	for lore@pengutronix.de; Wed, 29 Jan 2025 14:14:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NDXCKhpgQgg7EEDCYuO6iD/j8bxdL1+8nXOraoQ0ygg=; b=WFDtZmNMI+xG+bXOjd3W2CXE2I
	8kP4HWd9TngTkXe4rC/7CKXjQvKZDlxECuVbOCj6P7vz+WmPrMRsAdxQePIVg/0zIvbUJKRbVtKww
	eBCGKVLu1QZKTzK5QYfWF8e4heRQ7v5AbfFjwSr0kHL9/r4/N3nffOE+pPJ/KsqbrvlgCd2kZey6C
	RtL3kQBd+0fd/jhCiUQl6iEHIsbtiNcS6mpkz2IAyDh08/FwV0ayIb+SjUoUBOfuSaNtKTKTK0Qgs
	1rTMminarbEKZ9mcIP6oDgmXNBnAt7Oib6UHDa7FEX2KybugQD0Ra9RqznTh+5iKkRGOJ/fsVU7zi
	MIcteH1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1td7ss-00000006zAE-0pWk;
	Wed, 29 Jan 2025 13:13:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1td7so-00000006z7e-1yvs
	for barebox@lists.infradead.org;
	Wed, 29 Jan 2025 13:13:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1td7sl-0007GT-Sz; Wed, 29 Jan 2025 14:13:27 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1td7sl-002TBk-1r;
	Wed, 29 Jan 2025 14:13:27 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1td7sl-00Caz4-1f;
	Wed, 29 Jan 2025 14:13:27 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Michiel Schelfhout <michiel.schelfhout@protonic.nl>,
	Robin van der Gracht <robin@protonic.nl>,
	Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 29 Jan 2025 14:13:24 +0100
Message-Id: <20250129131326.3002089-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250129_051330_829057_61535B58 
X-CRM114-Status: GOOD (  18.72  )
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
Subject: [PATCH v1 1/3] ARM: protonic-stm32mp1: Add support for Plymovent AMQ board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Michiel Schelfhout <michiel.schelfhout@protonic.nl>

Introduce support for the Plymovent AMQ, an air quality monitor based on
the Protonic STM32MP1 platform.

Signed-off-by: Michiel Schelfhout <michiel.schelfhout@protonic.nl>
Signed-off-by: Robin van der Gracht <robin@protonic.nl>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/protonic-stm32mp1/board.c    |   5 +
 arch/arm/boards/protonic-stm32mp1/lowlevel.c |  14 +
 arch/arm/dts/Makefile                        |   3 +-
 arch/arm/dts/stm32mp151c-plyaqm.dts          | 125 ++++
 arch/arm/dts/stm32mp151c-plyaqm.dtsi         | 689 +++++++++++++++++++
 images/Makefile.stm32mp                      |   1 +
 6 files changed, 836 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/dts/stm32mp151c-plyaqm.dts
 create mode 100644 arch/arm/dts/stm32mp151c-plyaqm.dtsi

diff --git a/arch/arm/boards/protonic-stm32mp1/board.c b/arch/arm/boards/protonic-stm32mp1/board.c
index a919de36c297..0b46dccb3247 100644
--- a/arch/arm/boards/protonic-stm32mp1/board.c
+++ b/arch/arm/boards/protonic-stm32mp1/board.c
@@ -121,12 +121,17 @@ static const struct prt_stm32_machine_data prt_stm32_mect1s = {
 	.flags = PRT_STM32_BOOTSRC_SPI_NOR,
 };
 
+static const struct prt_stm32_machine_data prt_stm32_plyaqm = {
+	.flags = PRT_STM32_BOOTSRC_SD | PRT_STM32_BOOTSRC_EMMC,
+};
+
 static const struct of_device_id prt_stm32_of_match[] = {
 	{ .compatible = "prt,prtt1a", .data = &prt_stm32_prtt1a },
 	{ .compatible = "prt,prtt1c", .data = &prt_stm32_prtt1c },
 	{ .compatible = "prt,prtt1s", .data = &prt_stm32_prtt1a },
 	{ .compatible = "prt,mecio1", .data = &prt_stm32_mecio1 },
 	{ .compatible = "prt,mect1s", .data = &prt_stm32_mect1s },
+	{ .compatible = "ply,plyaqm", .data = &prt_stm32_plyaqm },
 	{ /* sentinel */ },
 };
 BAREBOX_DEEP_PROBE_ENABLE(prt_stm32_of_match);
diff --git a/arch/arm/boards/protonic-stm32mp1/lowlevel.c b/arch/arm/boards/protonic-stm32mp1/lowlevel.c
index 2afa931126ed..3c145cfa21ce 100644
--- a/arch/arm/boards/protonic-stm32mp1/lowlevel.c
+++ b/arch/arm/boards/protonic-stm32mp1/lowlevel.c
@@ -10,6 +10,7 @@ extern char __dtb_z_stm32mp151_prtt1c_start[];
 extern char __dtb_z_stm32mp151_prtt1s_start[];
 extern char __dtb_z_stm32mp151_mecio1_start[];
 extern char __dtb_z_stm32mp151_mect1s_start[];
+extern char __dtb_z_stm32mp151c_plyaqm_start[];
 
 static void setup_uart(void)
 {
@@ -86,3 +87,16 @@ ENTRY_FUNCTION(start_mect1s, r0, r1, r2)
 
 	stm32mp1_barebox_entry(fdt);
 }
+
+ENTRY_FUNCTION(start_stm32mp151c_plyaqm, r0, r1, r2)
+{
+	void *fdt;
+
+	stm32mp_cpu_lowlevel_init();
+
+	setup_uart();
+
+	fdt = __dtb_z_stm32mp151c_plyaqm_start + get_runtime_offset();
+
+	stm32mp1_barebox_entry(fdt);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index d2de01927824..d64b72d6d9ad 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -115,7 +115,8 @@ lwl-$(CONFIG_MACH_PROTONIC_STM32MP1) += \
 	stm32mp151-prtt1c.dtb.o \
 	stm32mp151-prtt1s.dtb.o \
 	stm32mp151-mecio1.dtb.o \
-	stm32mp151-mect1s.dtb.o
+	stm32mp151-mect1s.dtb.o \
+	stm32mp151c-plyaqm.dtb.o
 lwl-$(CONFIG_MACH_PROTONIC_STM32MP13) += stm32mp133c-prihmb.dtb.o
 lwl-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
 lwl-$(CONFIG_MACH_RADXA_ROCK3) += rk3568-rock-3a.dtb.o
diff --git a/arch/arm/dts/stm32mp151c-plyaqm.dts b/arch/arm/dts/stm32mp151c-plyaqm.dts
new file mode 100644
index 000000000000..7806ed723132
--- /dev/null
+++ b/arch/arm/dts/stm32mp151c-plyaqm.dts
@@ -0,0 +1,125 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-3-Clause)
+/dts-v1/;
+
+#include "stm32mp151c-plyaqm.dtsi"
+#include "stm32mp151.dtsi"
+
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#endif
+
+/ {
+	aliases {
+		state = &state_emmc;
+	};
+
+	chosen {
+		environment-emmc {
+			compatible = "barebox,environment";
+			device-path = &sdmmc2, "partname:barebox-environment";
+			status = "disabled";
+		};
+	};
+
+	state_emmc: state {
+		magic = <0x72766467>;
+		compatible = "barebox,state";
+		backend-type = "raw";
+		backend = <&state_backend_emmc>;
+		backend-stridesize = <0x400>;
+
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		bootstate {
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			last_chosen {
+				reg = <0x0 0x4>;
+				type = "uint32";
+			};
+
+			system0 {
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				remaining_attempts {
+					reg = <0x50 0x4>;
+					type = "uint32";
+					default = <3>;
+				};
+
+				priority {
+					reg = <0x54 0x4>;
+					type = "uint32";
+					default = <21>;
+				};
+			};
+
+			system1 {
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				remaining_attempts {
+					reg = <0x100 0x4>;
+					type = "uint32";
+					default = <3>;
+				};
+
+				priority {
+					reg = <0x104 0x4>;
+					type = "uint32";
+					default = <20>;
+				};
+			};
+		};
+	};
+};
+
+&sdmmc1 {
+	status = "disabled";
+};
+
+&sdmmc2 {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	bb_env: partition@40000 {
+		label = "barebox-environment";
+		reg = <0x40000 0x80000>;
+	};
+
+	state_backend_emmc: partition@c0000 {
+		label = "state";
+		reg = <0xf0000 0x10000>;
+	};
+};
+
+&sdmmc3 {
+	status = "disabled";
+};
+
+&uart7 {
+	status = "disabled";
+};
+
+&spi2 {
+	status = "disabled";
+};
+
+&i2c1 {
+	status = "disabled";
+};
+
+&i2c6 {
+	status = "disabled";
+};
+
+&i2s1 {
+	status = "disabled";
+};
+
+&timers5 {
+	status = "disabled";
+};
diff --git a/arch/arm/dts/stm32mp151c-plyaqm.dtsi b/arch/arm/dts/stm32mp151c-plyaqm.dtsi
new file mode 100644
index 000000000000..c69d445199ed
--- /dev/null
+++ b/arch/arm/dts/stm32mp151c-plyaqm.dtsi
@@ -0,0 +1,689 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
+/dts-v1/;
+
+// this file will be dropped after kernel upstreaming is done
+
+#include <arm/st/stm32mp151.dtsi>
+#include <arm/st/stm32mp15xc.dtsi>
+#include <arm/st/stm32mp15-pinctrl.dtsi>
+#include <arm/st/stm32mp15xxad-pinctrl.dtsi>
+#include <arm/st/stm32mp15-scmi.dtsi>
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	model = "Plymovent AQM board";
+	compatible = "ply,plyaqm", "st,stm32mp151";
+
+	aliases {
+		ethernet0 = &ethernet0;
+		serial0 = &uart4;
+		serial1 = &uart7;
+	};
+
+	reserved-memory {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		optee@cfd00000 {
+			reg = <0xcfd00000 0x300000>;
+			no-map;
+		};
+	};
+
+	v3v3: fixed-regulator-v3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "v3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	wifi_pwrseq: wifi-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		reset-gpios = <&gpioe 12 GPIO_ACTIVE_LOW>; /* WLAN_REG_ON */
+	};
+
+	firmware {
+		optee: optee {
+			compatible = "linaro,optee-tz";
+			method = "smc";
+		};
+	};
+
+	sound {
+		compatible = "audio-graph-card";
+		label = "STM32MP15";
+		dais = <&i2s1_port>;
+		status = "okay";
+	};
+
+	codec:codec{
+		compatible = "invensense,ics43432";
+		clocks = <&i2s1>;
+		clock-names = "MCLK";
+		status = "okay";
+
+		codec_port: port {
+			codec_endpoint: endpoint {
+				remote-endpoint = <&i2s1_endpoint>;
+				dai-format = "i2s";
+			};
+		};
+	};
+};
+
+&cpu0 {
+	clocks = <&scmi_clk CK_SCMI_MPU>;
+};
+
+&cryp1 {
+	clocks = <&scmi_clk CK_SCMI_CRYP1>;
+	resets = <&scmi_reset RST_SCMI_CRYP1>;
+};
+
+&gpioz {
+	clocks = <&scmi_clk CK_SCMI_GPIOZ>;
+};
+
+&hash1 {
+	clocks = <&scmi_clk CK_SCMI_HASH1>;
+	resets = <&scmi_reset RST_SCMI_HASH1>;
+};
+
+&i2c4 {
+	clocks = <&scmi_clk CK_SCMI_I2C4>;
+	resets = <&scmi_reset RST_SCMI_I2C4>;
+};
+
+&mdma1 {
+	resets = <&scmi_reset RST_SCMI_MDMA>;
+};
+
+&m4_rproc {
+	/delete-property/ st,syscfg-holdboot;
+	resets = <&scmi_reset RST_SCMI_MCU>,
+		 <&scmi_reset RST_SCMI_MCU_HOLD_BOOT>;
+	reset-names =  "mcu_rst", "hold_boot";
+};
+
+&rcc {
+	compatible = "st,stm32mp1-rcc-secure", "syscon";
+	clock-names = "hse", "hsi", "csi", "lse", "lsi";
+	clocks = <&scmi_clk CK_SCMI_HSE>,
+		 <&scmi_clk CK_SCMI_HSI>,
+		 <&scmi_clk CK_SCMI_CSI>,
+		 <&scmi_clk CK_SCMI_LSE>,
+		 <&scmi_clk CK_SCMI_LSI>;
+};
+
+&rng1 {
+	clocks = <&scmi_clk CK_SCMI_RNG1>;
+	resets = <&scmi_reset RST_SCMI_RNG1>;
+};
+
+&rtc {
+	clocks = <&scmi_clk CK_SCMI_RTCAPB>, <&scmi_clk CK_SCMI_RTC>;
+};
+
+&gpioa {
+	gpio-line-names =
+		"", "", "", "", "", "", "", "",
+		"", "", "", "", "", "HWID_PL_N", "HWID_CP", "";
+};
+
+&gpiob {
+	gpio-line-names =
+		"", "", "", "", "", "", "LED_LATCH", "",
+		"", "RELAY1_EN", "", "", "", "", "", "";
+};
+
+&gpioc {
+	gpio-line-names =
+		"", "", "", "", "", "", "", "",
+		"", "", "", "", "", "HWID_Q7", "", "";
+};
+
+&gpioe {
+	gpio-line-names =
+		"", "", "", "", "RELAY2_EN", "", "", "",
+		"", "", "", "", "", "", "", "";
+};
+
+&gpiog {
+	gpio-line-names =
+		"", "", "", "", "", "", "", "SW1",
+		"", "", "", "", "", "", "", "";
+};
+
+&cryp1 {
+	status = "okay";
+};
+
+&iwdg2 {
+	clocks = <&rcc IWDG2>, <&scmi_clk CK_SCMI_LSI>;
+	status = "okay";
+};
+
+&ethernet0 {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&ethernet0_rmii_aqm_pins_a>;
+	pinctrl-1 = <&ethernet0_rmii_sleep_aqm_pins_a>;
+	phy-mode = "rmii";
+	max-speed = <100>;
+	phy-handle = <&ethphy0>;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		compatible = "snps,dwmac-mdio";
+
+		/* KSZ8081RNA PHY */
+		ethphy0: ethernet-phy@0 {
+			reg = <0>;
+			interrupts-extended = <&gpiob 0 IRQ_TYPE_LEVEL_LOW>;
+			reset-gpios = <&gpiob 1 GPIO_ACTIVE_LOW>;
+			reset-assert-us = <10000>;
+			reset-deassert-us = <300>;
+		};
+	};
+};
+
+&uart4 {
+	pinctrl-names = "default", "sleep", "idle";
+	pinctrl-0 = <&uart4_aqm_pins_a>;
+	pinctrl-1 = <&uart4_idle_aqm_pins_a>;
+	pinctrl-2 = <&uart4_sleep_aqm_pins_a>;
+	/delete-property/dmas;
+	/delete-property/dma-names;
+	status = "okay";
+};
+
+&uart7{
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart7_aqm_pins_a>;
+	uart-has-rtscts;
+	status = "okay";
+
+	bluetooth {
+		shutdown-gpios = <&gpioe 11 GPIO_ACTIVE_HIGH>; /* BT_REG_ON */
+		compatible = "brcm,bcm43438-bt";
+		max-speed = <4000000>;
+		vbat-supply = <&v3v3>;
+		vddio-supply = <&v3v3>;
+		interrupt-parent = <&gpiog>;
+		interrupts = <12 IRQ_TYPE_EDGE_RISING>; /* BT_HOST_WAKE */
+		interrupt-names = "host-wake";
+	};
+};
+
+/* SD card without Card-detect */
+&sdmmc1 {
+	pinctrl-names = "default", "opendrain", "sleep";
+	pinctrl-0 = <&sdmmc1_b4_pins_a>;
+	pinctrl-1 = <&sdmmc1_b4_od_pins_a>;
+	pinctrl-2 = <&sdmmc1_b4_sleep_pins_a>;
+	broken-cd;
+	no-sdio;
+	no-1-8-v;
+	st,neg-edge;
+	bus-width = <4>;
+	vmmc-supply = <&v3v3>;
+	status = "okay";
+};
+
+/* EMMC */
+&sdmmc2 {
+	pinctrl-names = "default", "opendrain", "sleep";
+	pinctrl-0 = <&sdmmc2_b4_aqm_pins_a>;
+	pinctrl-1 = <&sdmmc2_b4_od_aqm_pins_a>;
+	pinctrl-2 = <&sdmmc2_b4_sleep_aqm_pins_a>;
+	non-removable;
+	no-sd;
+	no-sdio;
+	no-1-8-v;
+	st,neg-edge;
+	bus-width = <8>;
+	vmmc-supply = <&v3v3>;
+	status = "okay";
+};
+
+/* Wifi */
+&sdmmc3 {
+	pinctrl-names = "default", "opendrain", "sleep";
+	pinctrl-0 = <&sdmmc3_b4_aqm_pins_a>;
+	pinctrl-1 = <&sdmmc3_b4_od_aqm_pins_a>;
+	pinctrl-2 = <&sdmmc3_b4_sleep_aqm_pins_a>;
+	non-removable;
+	st,neg-edge;
+	bus-width = <4>;
+	vmmc-supply = <&v3v3>;
+	mmc-pwrseq = <&wifi_pwrseq>;
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	brcmf: wifi@1 {
+		reg = <1>;
+		compatible = "brcm,bcm4329-fmac";
+	};
+};
+
+&spi2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi2_aqm_pins_a>;
+	status = "disabled";
+
+	spidev@0 {
+		compatible = "dh,dhcom-board"; /* Needed for spidev in userspace */
+		reg = <0>;
+		spi-max-frequency = <4000000>;
+	};
+};
+
+&i2c1 {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&i2c1_aqm_pins_a>;
+	pinctrl-1 = <&i2c1_sleep_aqm_pins_a>;
+	i2c-scl-rising-time-ns = <185>;
+	i2c-scl-falling-time-ns = <20>;
+	status = "okay";
+	/delete-property/dmas;
+	/delete-property/dma-names;
+
+	/* CYPD3177 USB PD controller 0x08 */
+};
+
+&i2c6 {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&i2c6_aqm_pins_a>;
+	pinctrl-1 = <&i2c6_sleep_aqm_pins_a>;
+	i2c-scl-rising-time-ns = <185>;
+	i2c-scl-falling-time-ns = <20>;
+	clocks = <&scmi_clk CK_SCMI_I2C6>;
+	resets = <&scmi_reset RST_SCMI_I2C6>;
+	status = "okay";
+	/delete-property/dmas;
+	/delete-property/dma-names;
+
+	pm-sensor@69 {
+		compatible = "sensirion,sps30";
+		reg = <0x69>;
+	};
+
+	co2-sensor@62 {
+		compatible = "sensirion,scd41";
+		reg = <0x62>;
+	};
+
+	pressure-sensor@47 {
+		compatible = "bosch,bmp580";
+		reg = <0x47>;
+	};
+
+	/* Used for ZMOD4410 in userspace */
+};
+
+&i2s1{
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&i2s1_aqm_pins>;
+	pinctrl-1 = <&i2s1_sleep_aqm_pins>;
+	clocks = <&rcc SPI1>, <&rcc SPI1_K>, <&rcc PLL3_Q>, <&rcc PLL3_R>;
+	clock-names = "pclk", "i2sclk", "x8k", "x11k";
+	#clock-cells = <0>; /* Set I2S2 as master clock provider */
+	status = "okay";
+
+	i2s1_port: port {
+		i2s1_endpoint: endpoint {
+			format = "i2s";
+			mclk-fs = <256>;
+			remote-endpoint = <&codec_endpoint>;
+		};
+	};
+};
+
+&i2s1{
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&i2s1_aqm_pins>;
+	pinctrl-1 = <&i2s1_sleep_aqm_pins>;
+	clocks = <&rcc SPI1>, <&rcc SPI1_K>, <&rcc PLL3_Q>, <&rcc PLL3_R>;
+	clock-names = "pclk", "i2sclk", "x8k", "x11k";
+	#clock-cells = <0>; /* Set I2S2 as master clock provider */
+	status = "okay";
+
+	i2s1_port: port {
+		i2s1_endpoint: endpoint {
+			format = "i2s";
+			mclk-fs = <256>;
+			remote-endpoint = <&codec_endpoint>;
+		};
+	};
+};
+
+&timers5 {
+	status = "okay";
+	/delete-property/dmas;
+	/delete-property/dma-names;
+
+	pwm1: pwm {
+		pinctrl-0 = <&pwm1_aqm_pins_a>;
+		pinctrl-1 = <&pwm1_sleep_aqm_pins_a>;
+		pinctrl-names = "default", "sleep";
+		status = "okay";
+	};
+};
+
+&pinctrl {
+	ethernet0_rmii_aqm_pins_a: rmii-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('B', 12, AF11)>, /* ETH1_RMII_TXD0 */
+				 <STM32_PINMUX('B', 13, AF11)>, /* ETH1_RMII_TXD1 */
+				 <STM32_PINMUX('B', 11, AF11)>, /* ETH1_RMII_TX_EN */
+				 <STM32_PINMUX('A', 1, AF11)>, /* ETH1_RMII_REF_CLK */
+				 <STM32_PINMUX('A', 2, AF11)>, /* ETH1_MDIO */
+				 <STM32_PINMUX('C', 1, AF11)>; /* ETH1_MDC */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <2>;
+		};
+
+		pins2 {
+			pinmux = <STM32_PINMUX('C', 4, AF11)>, /* ETH1_RMII_RXD0 */
+				 <STM32_PINMUX('C', 5, AF11)>, /* ETH1_RMII_RXD1 */
+				 <STM32_PINMUX('A', 7, AF11)>; /* ETH1_RMII_CRS_DV */
+			bias-disable;
+		};
+	};
+
+	ethernet0_rmii_sleep_aqm_pins_a: rmii-sleep-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('B', 12, ANALOG)>, /* ETH1_RMII_TXD0 */
+				 <STM32_PINMUX('B', 13, ANALOG)>, /* ETH1_RMII_TXD1 */
+				 <STM32_PINMUX('B', 11, ANALOG)>, /* ETH1_RMII_TX_EN */
+				 <STM32_PINMUX('A', 2, ANALOG)>, /* ETH1_MDIO */
+				 <STM32_PINMUX('C', 1, ANALOG)>, /* ETH1_MDC */
+				 <STM32_PINMUX('C', 4, ANALOG)>, /* ETH1_RMII_RXD0 */
+				 <STM32_PINMUX('C', 5, ANALOG)>, /* ETH1_RMII_RXD1 */
+				 <STM32_PINMUX('A', 1, ANALOG)>, /* ETH1_RMII_REF_CLK */
+				 <STM32_PINMUX('A', 7, ANALOG)>; /* ETH1_RMII_CRS_DV */
+		};
+	};
+
+	/* i2c1 pins redefined because they differ from stm32mp15-pinctrl.dtsi */
+	i2c1_aqm_pins_a: i2c1-0 {
+		pins {
+			pinmux = <STM32_PINMUX('D', 12, AF5)>, /* I2C1_SCL */
+				 <STM32_PINMUX('D', 13, AF5)>; /* I2C1_SDA */
+			bias-disable;
+			drive-open-drain;
+			slew-rate = <0>;
+		};
+	};
+
+	i2c1_sleep_aqm_pins_a: i2c1-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('D', 12, ANALOG)>, /* I2C1_SCL */
+				 <STM32_PINMUX('D', 13, ANALOG)>; /* I2C1_SDA */
+		};
+	};
+
+	/* i2c6 pins redefined because they differ from stm32mp15-pinctrl.dtsi */
+	i2c6_aqm_pins_a: i2c6-0 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 11, AF2)>, /* I2C6_SCL */
+				 <STM32_PINMUX('A', 12, AF2)>; /* I2C6_SDA */
+			bias-disable;
+			drive-open-drain;
+			slew-rate = <0>;
+		};
+	};
+
+	i2c6_sleep_aqm_pins_a: i2c6-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 11, ANALOG)>, /* I2C6_SCL */
+				 <STM32_PINMUX('A', 12, ANALOG)>; /* I2C6_SDA */
+		};
+	};
+
+	i2s1_aqm_pins: i2s1-0 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 6, AF5)>, /* I2S2_SDI */
+				 <STM32_PINMUX('A', 4, AF5)>, /* I2S2_WS */
+				 <STM32_PINMUX('A', 5, AF5)>; /* I2S2_CK */
+			slew-rate = <0>;
+			drive-push-pull;
+			bias-disable;
+		};
+	};
+
+	i2s1_sleep_aqm_pins: i2s1-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 6, ANALOG)>, /* I2S2_SDI */
+				 <STM32_PINMUX('A', 4, ANALOG)>, /* I2S2_WS */
+				 <STM32_PINMUX('A', 5, ANALOG)>; /* I2S2_CK */
+		};
+	};
+
+	pwm1_aqm_pins_a: pwm1-0 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 0, AF2)>; /* TIM5_CH1 */
+			bias-pull-down;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+	};
+
+	pwm1_sleep_aqm_pins_a: pwm1-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 0, ANALOG)>;
+		};
+	};
+
+	rtc_aqm_pins_mx: rtc_mx-0 {
+		pins {
+			pinmux = <STM32_PINMUX('I', 8, ANALOG)>; /* RTC_LSCO */
+		};
+	};
+
+	rtc_sleep_aqm_pins_mx: rtc_sleep_mx-0 {
+		pins {
+			pinmux = <STM32_PINMUX('I', 8, ANALOG)>; /* RTC_LSCO */
+		};
+	};
+
+	/* SDMMC1 pins same as stm32mp15-pinctrl.dtsi */
+
+	sdmmc2_b4_sleep_aqm_pins_a: sdmmc2-b4-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('B', 14, ANALOG)>, /* SDMMC2_D0 */
+				 <STM32_PINMUX('B', 7, ANALOG)>, /* SDMMC2_D1 */
+				 <STM32_PINMUX('B', 3, ANALOG)>, /* SDMMC2_D2 */
+				 <STM32_PINMUX('B', 4, ANALOG)>, /* SDMMC2_D3 */
+				 <STM32_PINMUX('A', 8, ANALOG)>, /* SDMMC2_D4 */
+				 <STM32_PINMUX('A', 9, ANALOG)>, /* SDMMC2_D5 */
+				 <STM32_PINMUX('C', 6, ANALOG)>, /* SDMMC2_D6 */
+				 <STM32_PINMUX('C', 7, ANALOG)>, /* SDMMC2_D7 */
+				 <STM32_PINMUX('E', 3, ANALOG)>, /* SDMMC2_CK */
+				 <STM32_PINMUX('G', 6, ANALOG)>; /* SDMMC2_CMD */
+		};
+	};
+
+	sdmmc2_b4_aqm_pins_a: sdmmc2-b4-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('B', 14, AF9)>, /* SDMMC2_D0 */
+				 <STM32_PINMUX('B', 7, AF10)>, /* SDMMC2_D1 */
+				 <STM32_PINMUX('B', 3, AF9)>, /* SDMMC2_D2 */
+				 <STM32_PINMUX('B', 4, AF9)>, /* SDMMC2_D3 */
+				 <STM32_PINMUX('A', 8, AF9)>, /* SDMMC2_D4 */
+				 <STM32_PINMUX('A', 9, AF10)>, /* SDMMC2_D5 */
+				 <STM32_PINMUX('C', 6, AF10)>, /* SDMMC2_D6 */
+				 <STM32_PINMUX('C', 7, AF10)>, /* SDMMC2_D7 */
+				 <STM32_PINMUX('G', 6, AF10)>; /* SDMMC2_CMD */
+			slew-rate = <1>;
+			drive-push-pull;
+			bias-pull-up;
+		};
+
+		pins2 {
+			pinmux = <STM32_PINMUX('E', 3, AF9)>; /* SDMMC2_CK */
+			slew-rate = <2>;
+			drive-push-pull;
+			bias-pull-up;
+		};
+	};
+
+	sdmmc2_b4_od_aqm_pins_a: sdmmc2-b4-od-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('B', 14, AF9)>, /* SDMMC2_D0 */
+				 <STM32_PINMUX('B', 7, AF10)>, /* SDMMC2_D1 */
+				 <STM32_PINMUX('B', 3, AF9)>, /* SDMMC2_D2 */
+				 <STM32_PINMUX('B', 4, AF9)>, /* SDMMC2_D3 */
+				 <STM32_PINMUX('A', 8, AF9)>, /* SDMMC2_D4 */
+				 <STM32_PINMUX('A', 9, AF10)>, /* SDMMC2_D5 */
+				 <STM32_PINMUX('C', 6, AF10)>, /* SDMMC2_D6 */
+				 <STM32_PINMUX('C', 7, AF10)>; /* SDMMC2_D7 */
+			slew-rate = <1>;
+			drive-push-pull;
+			bias-pull-up;
+		};
+
+		pins2 {
+			pinmux = <STM32_PINMUX('E', 3, AF9)>; /* SDMMC2_CK */
+			slew-rate = <2>;
+			drive-push-pull;
+			bias-pull-up;
+		};
+
+		pins3 {
+			pinmux = <STM32_PINMUX('G', 6, AF10)>; /* SDMMC2_CMD */
+			slew-rate = <1>;
+			drive-open-drain;
+			bias-pull-up;
+		};
+	};
+
+	sdmmc3_b4_aqm_pins_a: sdmmc3-b4-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('D', 1, AF10)>, /* SDMMC3_D0 */
+				 <STM32_PINMUX('D', 4, AF10)>, /* SDMMC3_D1 */
+				 <STM32_PINMUX('D', 5, AF10)>, /* SDMMC3_D2 */
+				 <STM32_PINMUX('D', 7, AF10)>, /* SDMMC3_D3 */
+				 <STM32_PINMUX('D', 0, AF10)>; /* SDMMC3_CMD */
+			slew-rate = <1>;
+			drive-push-pull;
+			bias-pull-up;
+		};
+
+		pins2 {
+			pinmux = <STM32_PINMUX('G', 15, AF10)>; /* SDMMC3_CK */
+			slew-rate = <2>;
+			drive-push-pull;
+			bias-pull-up;
+		};
+	};
+
+	sdmmc3_b4_od_aqm_pins_a: sdmmc3-b4-od-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('D', 1, AF10)>, /* SDMMC3_D0 */
+				 <STM32_PINMUX('D', 4, AF10)>, /* SDMMC3_D1 */
+				 <STM32_PINMUX('D', 5, AF10)>, /* SDMMC3_D2 */
+				 <STM32_PINMUX('D', 7, AF10)>; /* SDMMC3_D3 */
+			slew-rate = <1>;
+			drive-push-pull;
+			bias-pull-up;
+		};
+
+		pins2 {
+			pinmux = <STM32_PINMUX('G', 15, AF10)>; /* SDMMC3_CK */
+			slew-rate = <2>;
+			drive-push-pull;
+			bias-pull-up;
+		};
+
+		pins3 {
+			pinmux = <STM32_PINMUX('D', 0, AF10)>; /* SDMMC3_CMD */
+			slew-rate = <1>;
+			drive-open-drain;
+			bias-pull-up;
+		};
+	};
+
+	sdmmc3_b4_sleep_aqm_pins_a: sdmmc3-b4-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('D', 1, ANALOG)>, /* SDMMC3_D0 */
+				 <STM32_PINMUX('D', 4, ANALOG)>, /* SDMMC3_D1 */
+				 <STM32_PINMUX('D', 5, ANALOG)>, /* SDMMC3_D2 */
+				 <STM32_PINMUX('D', 7, ANALOG)>, /* SDMMC3_D3 */
+				 <STM32_PINMUX('G', 15, ANALOG)>, /* SDMMC3_CK */
+				 <STM32_PINMUX('D', 0, ANALOG)>; /* SDMMC3_CMD */
+		};
+	};
+
+	/* spi2 pins redefined because they differ from stm32mp15-pinctrl.dtsi */
+	spi2_aqm_pins_a: spi2-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('B', 10, AF5)>, /* SPI2_SCK */
+				 <STM32_PINMUX('C', 3, AF5)>; /* SPI2_MOSI */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+
+		pins2 {
+			pinmux = <STM32_PINMUX('C', 2, AF5)>; /* SPI2_MISO */
+			bias-disable;
+		};
+	};
+
+	uart4_aqm_pins_a: uart4-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('G', 11, AF6)>; /* UART4_TX */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+
+		pins2 {
+			pinmux = <STM32_PINMUX('B', 8, AF8)>; /* UART4_RX */
+			bias-disable;
+		};
+	};
+
+	uart4_idle_aqm_pins_a: uart4-idle-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('G', 11, ANALOG)>; /* UART4_TX */
+		};
+
+		pins2 {
+			pinmux = <STM32_PINMUX('B', 8, AF8)>; /* UART4_RX */
+			bias-disable;
+		};
+	};
+
+	uart4_sleep_aqm_pins_a: uart4-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('G', 11, ANALOG)>, /* UART4_TX */
+				 <STM32_PINMUX('B', 2, ANALOG)>; /* UART4_RX */
+		};
+	};
+
+	uart7_aqm_pins_a: uart7-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('F', 7, AF7)>, /* UART7_TX */
+				 <STM32_PINMUX('F', 8, AF7)>; /* UART7_RTS */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+
+		pins2 {
+			pinmux = <STM32_PINMUX('E', 7, AF7)>, /* UART7_RX */
+				 <STM32_PINMUX('F', 9, AF7)>; /* UART7_CTS */
+			bias-disable;
+		};
+	};
+};
diff --git a/images/Makefile.stm32mp b/images/Makefile.stm32mp
index 8c41b8b74567..ba18714c69d8 100644
--- a/images/Makefile.stm32mp
+++ b/images/Makefile.stm32mp
@@ -40,6 +40,7 @@ $(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP1, start_prtt1s, prtt1s)
 $(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP1, start_prtt1c, prtt1c)
 $(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP1, start_mecio1, mecio1)
 $(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP1, start_mect1s, mect1s)
+$(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP1, start_stm32mp151c_plyaqm, stm32mp151c-plyaqm)
 $(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP13, start_stm32mp133c_prihmb, stm32mp133c-prihmb)
 
 $(call build_stm32mp_image, CONFIG_MACH_SEEED_ODYSSEY, start_stm32mp157c_seeed_odyssey, stm32mp157c-seeed-odyssey)
-- 
2.39.5



