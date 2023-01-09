Delivery-date: Mon, 09 Jan 2023 14:11:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pErvr-006gKl-Az
	for lore@lore.pengutronix.de; Mon, 09 Jan 2023 14:11:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pErvk-0002BN-O1
	for lore@pengutronix.de; Mon, 09 Jan 2023 14:11:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z+SNcgGUzTTARzfNoqpfCut7Qsp8BE2p/6LzmTtIfNI=; b=fjznPKTiM5YW9NREP7+wS2OxOF
	6zceUUwRsD2okecuSa9ojSWxZOZZvAXRHGXd6WQvZkRf+V1bpmdworOYmiCDf31dEvAYkUR17fG/C
	sdNLDDpTBTdQYfP4ehhAAwrSd1bllOr6ANi1rfdbF1jnBE1qDDHDKK/yaOg2nVGxQuZ7hg49eo3zx
	EOqWfd2e+C49w7itKlcLZrBiP64d/t5QRtFvQLH6qvDVwBUD9QJGhwzvi/1prTX4u9XNbCLpNZgor
	qfSLOm7R7HQ3SpL3GIbYxgRco+p452WvIqj2/cbbIF8xygQAQtq5BdOh/q9ZH81V6j1o0TBraV/ub
	Y7j3C29w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEruC-001Rxe-ST; Mon, 09 Jan 2023 13:09:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pErtM-001RT8-M8
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 13:08:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pErt5-0000qg-9k; Mon, 09 Jan 2023 14:08:27 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pErt4-004qvn-JH; Mon, 09 Jan 2023 14:08:26 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pErt3-006zGx-H7; Mon, 09 Jan 2023 14:08:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Jan 2023 14:08:22 +0100
Message-Id: <20230109130822.1657470-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230109130822.1657470-1-a.fatoum@pengutronix.de>
References: <20230109130822.1657470-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_050845_119567_B852E11C 
X-CRM114-Status: GOOD (  21.98  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 11/11] ARM: at91: SAMA5D4: add Wifx L1 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Wifx L1 is a SAMA5D4 LoRaWAN gateway. It boots from NAND, but this
can be overridden by inserting a bootable SD-Card.

This first port only provides second-stage SD-Card support. It enables
use of UART, I2C/EEPROM, Ethernet and SD-Card. For NAND use on SAMA5D4,
an updated Linux driver was ported to barebox.
This will follow separately.

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/Makefile                |   1 +
 arch/arm/boards/sama5d4_wifx/Makefile   |   4 +
 arch/arm/boards/sama5d4_wifx/board.c    |  38 +++
 arch/arm/boards/sama5d4_wifx/lowlevel.c |  18 ++
 arch/arm/dts/Makefile                   |   1 +
 arch/arm/dts/at91-sama5d4_wifx_l1.dts   | 358 ++++++++++++++++++++++++
 arch/arm/dts/sama5d4.dtsi               |   9 +
 arch/arm/mach-at91/Kconfig              |   8 +
 images/Makefile.at91                    |   4 +
 9 files changed, 441 insertions(+)
 create mode 100644 arch/arm/boards/sama5d4_wifx/Makefile
 create mode 100644 arch/arm/boards/sama5d4_wifx/board.c
 create mode 100644 arch/arm/boards/sama5d4_wifx/lowlevel.c
 create mode 100644 arch/arm/dts/at91-sama5d4_wifx_l1.dts
 create mode 100644 arch/arm/dts/sama5d4.dtsi

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 0f4339ebed5d..f47aea6602a6 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -132,6 +132,7 @@ obj-$(CONFIG_MACH_SAMA5D3XEK)			+= sama5d3xek/
 obj-$(CONFIG_MACH_SAMA5D3_XPLAINED)		+= sama5d3_xplained/
 obj-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB)	+= microchip-ksz9477-evb/
 obj-$(CONFIG_MACH_SAMA5D4_XPLAINED)		+= sama5d4_xplained/
+obj-$(CONFIG_MACH_SAMA5D4_WIFX)			+= sama5d4_wifx/
 obj-$(CONFIG_MACH_SAMA5D4EK)			+= sama5d4ek/
 obj-$(CONFIG_MACH_SCB9328)			+= scb9328/
 obj-$(CONFIG_MACH_SEEED_ODYSSEY)		+= seeed-odyssey/
diff --git a/arch/arm/boards/sama5d4_wifx/Makefile b/arch/arm/boards/sama5d4_wifx/Makefile
new file mode 100644
index 000000000000..5678718188b9
--- /dev/null
+++ b/arch/arm/boards/sama5d4_wifx/Makefile
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+lwl-y += lowlevel.o
+obj-y += board.o
diff --git a/arch/arm/boards/sama5d4_wifx/board.c b/arch/arm/boards/sama5d4_wifx/board.c
new file mode 100644
index 000000000000..028bedcfb05a
--- /dev/null
+++ b/arch/arm/boards/sama5d4_wifx/board.c
@@ -0,0 +1,38 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <deep-probe.h>
+#include <bootsource.h>
+#include <driver.h>
+#include <init.h>
+#include <bbu.h>
+#include <of.h>
+
+static int wifx_l1_probe(struct device *dev)
+{
+	int flags_sd = 0;
+
+	if (bootsource_get() == BOOTSOURCE_NAND) {
+		of_device_enable_path("/chosen/environment-nand");
+	} else {
+		of_device_enable_path("/chosen/environment-microsd");
+		flags_sd = BBU_HANDLER_FLAG_DEFAULT;
+	}
+
+	bbu_register_std_file_update("sd", flags_sd, "/mnt/mmc1.0/barebox.bin",
+				     filetype_arm_barebox);
+
+	return 0;
+}
+
+static const struct of_device_id wifx_l1_of_match[] = {
+	{ .compatible = "wifx,l1" },
+	{ /* sentinel */ },
+};
+BAREBOX_DEEP_PROBE_ENABLE(wifx_l1_of_match);
+
+static struct driver wifx_l1_board_driver = {
+	.name = "board-lxa-mc1",
+	.probe = wifx_l1_probe,
+	.of_compatible = wifx_l1_of_match,
+};
+device_platform_driver(wifx_l1_board_driver);
diff --git a/arch/arm/boards/sama5d4_wifx/lowlevel.c b/arch/arm/boards/sama5d4_wifx/lowlevel.c
new file mode 100644
index 000000000000..0c3529e65965
--- /dev/null
+++ b/arch/arm/boards/sama5d4_wifx/lowlevel.c
@@ -0,0 +1,18 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2022 Ahmad Fatoum, Pengutronix
+
+#include <debug_ll.h>
+#include <mach/barebox-arm.h>
+#include <mach/ddramc.h>
+
+SAMA5D4_ENTRY_FUNCTION(start_sama5d4_wifx_l1, r4)
+{
+	extern char __dtb_z_at91_sama5d4_wifx_l1_start[];
+	void *fdt;
+
+	putc_ll('>');
+
+	fdt = __dtb_z_at91_sama5d4_wifx_l1_start + get_runtime_offset();
+
+	sama5d4_barebox_entry(r4, fdt);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 5ceb97129fed..dca13df4ba6f 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -191,6 +191,7 @@ lwl-$(CONFIG_MACH_SAMA5D3_XPLAINED) += at91-sama5d3_xplained.dtb.o
 lwl-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += at91-microchip-ksz9477-evb.dtb.o
 lwl-$(CONFIG_MACH_SAMA5D27_SOM1) += at91-sama5d27_som1_ek.dtb.o
 lwl-$(CONFIG_MACH_SAMA5D27_GIANTBOARD) += at91-sama5d27_giantboard.dtb.o
+lwl-$(CONFIG_MACH_SAMA5D4_WIFX) += at91-sama5d4_wifx_l1.dtb.o
 lwl-$(CONFIG_MACH_AT91SAM9X5EK) += at91sam9x5ek.dtb.o
 lwl-$(CONFIG_MACH_XILINX_ZCU104) += zynqmp-zcu104-revA.dtb.o
 lwl-$(CONFIG_MACH_XILINX_ZCU106) += zynqmp-zcu106-revA.dtb.o
diff --git a/arch/arm/dts/at91-sama5d4_wifx_l1.dts b/arch/arm/dts/at91-sama5d4_wifx_l1.dts
new file mode 100644
index 000000000000..ea16ea21344c
--- /dev/null
+++ b/arch/arm/dts/at91-sama5d4_wifx_l1.dts
@@ -0,0 +1,358 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+// SPDX-FileCopyrightText: 2021 Wifx
+// SPDX-FileCopyrightText: 2021 Yannick Lanz <yannick.lanz@wifx.net>
+// SPDX-FileCopyrightText: 2022 Ahmad Fatoum, Pengutronix
+
+/dts-v1/;
+
+#include <arm/sama5d4.dtsi>
+#include "sama5d4.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	model = "Wifx L1";
+	compatible = "wifx,l1", "atmel,sama5d4", "atmel,sama5";
+
+	chosen {
+		stdout-path = &usart3;
+
+		environment-microsd {
+			compatible = "barebox,environment";
+			device-path = &mmc1;
+			file-path = "barebox.env";
+			status = "disabled";
+		};
+
+		environment-nand {
+			compatible = "barebox,environment";
+			device-path = &env_nand;
+			status = "disabled";
+		};
+	};
+
+	aliases {
+		rtc0 = &ds1339;
+		rtc1 = &rtc_internal;
+		serial1 = &usart1;
+		serial4 = &usart4;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		status = "okay";
+
+		status_internal {
+			gpios = <&pioE 15 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+
+	pps {
+	      compatible = "pps-gpio";
+	      pinctrl-names = "default";
+	      pinctrl-0 = <&pinctrl_gnss_pps>;
+
+	      gpios = <&pioC 24 GPIO_ACTIVE_HIGH>;
+	      /* assert-falling-edge; */
+	};
+
+	vddbu_2v_reg: regulator-vddbu-2v {
+		compatible = "regulator-fixed";
+		regulator-name = "VDDBU_2V";
+		regulator-min-microvolt = <2000000>;
+		regulator-max-microvolt = <2000000>;
+		regulator-boot-on;
+		regulator-always-on;
+	};
+};
+
+&slow_xtal {
+	clock-frequency = <32768>;
+};
+
+&main_xtal {
+	clock-frequency = <12000000>;
+};
+
+&spi0 {
+	status = "okay";
+	cs-gpios = <&pioC 3 GPIO_ACTIVE_HIGH>;
+
+	sx1302@0 {
+		compatible = "semtech,sx1301";
+		spi-max-frequency = <10000000>;
+		reg = <0>;
+	};
+};
+
+&i2c0 {
+	status = "okay";
+	clock-frequency = <100000>;
+	i2c-digital-filter;
+	i2c-analog-filter;
+};
+
+&i2c1 {
+	status = "okay";
+	clock-frequency = <400000>;
+	i2c-digital-filter;
+	i2c-analog-filter;
+
+	stts751: temp_sensor@38 {
+		compatible = "stts751";
+		reg = <0x38>;
+	};
+
+	m24c08: eeprom@54 {
+		compatible = "atmel,24c08";
+		reg = <0x54>;
+		pagesize = <16>;
+	};
+
+	mac_at24mac402: eeprom@58 {
+		compatible = "atmel,24mac402";
+		reg = <0x58>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		ethaddr: mac-address@9a {
+			reg = <0x9a 6>;
+		};
+	};
+
+	ds1339: rtc@68 {
+		compatible = "dallas,ds1339";
+		reg = <0x68>;
+		trickle-resistor-ohms = <250>;
+	};
+};
+
+&i2c2 {
+	status = "okay";
+	clock-frequency = <400000>;
+	i2c-digital-filter;
+	i2c-analog-filter;
+
+	ec@2a {
+		compatible = "wifx,wgw-ec-i2c";
+		reg = <0x2a>;
+
+		interrupt-parent = <&pioE>;
+		interrupts = <27 IRQ_TYPE_EDGE_RISING>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_mcu_irq &pinctrl_mcu_cpu_state>;
+
+		cpu-state-gpios = <&pioA 19 0>;
+
+		usb_typec: usbc {
+			compatible = "wifx,wgw-ec-usbc";
+			#trigger-source-cells = <0>;
+		};
+
+		leds {
+			compatible = "wifx,wgw-ec-leds";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			statusled {
+				reg = <0>;
+				label = "status";
+				max-brightness = <255>;
+				linux,default-trigger = "heartbeat";
+			};
+
+			serviceled {
+				reg = <1>;
+				label = "service";
+				max-brightness = <255>;
+				linux,default-trigger = "wgw-usbc-data-mode";
+				trigger-sources = <&usb_typec>;
+			};
+		};
+	};
+};
+
+&macb0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_macb0_rmii &pinctrl_macb0_phy_irq>;
+	phy-mode = "rmii";
+	phy-handle = <&phy0>;
+	nvmem-cells = <&ethaddr>;
+	nvmem-cell-names = "mac-address";
+	status = "okay";
+
+	phy0: ethernet-phy@1 {
+		interrupt-parent = <&pioA>;
+		interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
+		reg = <1>;
+	};
+};
+
+&mmc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_mmc1_clk_cmd_dat0 &pinctrl_mmc1_dat1_3 &pinctrl_mmc1_cd>;
+	status = "okay";
+
+	slot@0 {
+		reg = <0>;
+		bus-width = <4>;
+		cd-gpios = <&pioE 3 0>;
+	};
+};
+
+&usart1 {
+	atmel,use-dma-rx;
+	atmel,use-dma-tx;
+	pinctrl-0 = <&pinctrl_usart1>;
+	status = "okay";
+};
+
+&usart3 {
+	atmel,use-dma-rx;
+	atmel,use-dma-tx;
+	status = "okay";
+};
+
+&tcb0 {
+	timer@0 {
+		compatible = "atmel,tcb-timer";
+		reg = <0>;
+	};
+
+	timer@1 {
+		compatible = "atmel,tcb-timer";
+		reg = <1>;
+	};
+};
+
+/* disable unused TCBs */
+&tcb1 {
+	status = "disabled";
+};
+
+&tcb2 {
+	status = "disabled";
+};
+
+&watchdog {
+	status = "okay";
+};
+
+rtc_internal: &{/ahb/apb/rtc@fc0686b0} {
+	status = "okay";
+};
+
+&usb0 {
+	atmel,vbus-gpio = <&pioE 31 GPIO_ACTIVE_HIGH>;
+	atmel,id-gpio = <&pioD 11 GPIO_ACTIVE_HIGH>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usb_vbus>;
+	status = "okay";
+};
+
+&usb1 {
+	num-ports = <3>;
+	atmel,vbus-gpio = <0 0 0 >;
+	atmel,id-gpio = <&pioD 11 GPIO_ACTIVE_HIGH 0 0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usb_id>;
+	status = "okay";
+};
+
+&usb2 {
+	status = "okay";
+};
+
+&ebi {
+	pinctrl-0 = <&pinctrl_ebi_cs3 &pinctrl_ebi_nrd_nandoe
+			&pinctrl_ebi_nwe_nandwe &pinctrl_ebi_nandrdy
+			&pinctrl_ebi_data_0_7 &pinctrl_ebi_nand_addr>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&nand_controller {
+	status = "okay";
+	atmel,pmecc-cap = <4>;
+	atmel,pmecc-sector-size = <512>;
+
+	nand@3 {
+		reg = <0x3 0x0 0x2>;
+		atmel,rb = <0>;
+		nand-bus-width = <8>;
+		nand-ecc-mode = "hw";
+		nand-on-flash-bbt;
+		label = "atmel_nand";
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			at91bootstrap@0 {
+				label = "at91bootstrap";
+				reg = <0x0 0x40000>;
+			};
+
+			uboot@40000 {
+				label = "uboot";
+				reg = <0x40000 0xC0000>;
+			};
+
+			env_nand: uboot-env@100000 {
+				label = "uboot-env";
+				reg = <0x100000 0x80000>;
+			};
+
+			ubi@180000 {
+				label = "ubi";
+				reg = <0x180000 0x3FE00000>;
+			};
+		};
+	};
+};
+
+&pinctrl {
+	board {
+		pinctrl_mmc1_cd: mmc1_cd {
+			atmel,pins = <AT91_PIOE 3 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_UP_DEGLITCH>;
+		};
+		pinctrl_usb_vbus: usb_vbus {
+			atmel,pins = <AT91_PIOE 31 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_UP_DEGLITCH>;
+		};
+		pinctrl_usb_id: usb_id {
+			atmel,pins = <AT91_PIOD 11 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_UP_DEGLITCH>;
+		};
+		pinctrl_mcu_irq: mcu_irq_0 {
+			atmel,pins = <AT91_PIOE 27 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_UP_DEGLITCH>;
+		};
+		pinctrl_mcu_cpu_state: mcu_cpu_state {
+			atmel,pins = <AT91_PIOA 19 AT91_PERIPH_GPIO (AT91_PINCTRL_OUTPUT | AT91_PINCTRL_OUTPUT_VAL(1))>;
+		};
+		pinctrl_macb0_phy_irq: macb0_phy_irq_0 {
+			atmel,pins = <AT91_PIOA 4 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_UP_DEGLITCH>;
+		};
+		pinctrl_sx130x_rst: sx130x_rst {
+			atmel,pins = <AT91_PIOA 1 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_UP_DEGLITCH>;
+		};
+		pinctrl_rf_front_pwr_en: rf_front_pwr_en {
+			atmel,pins = <AT91_PIOA 1 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_UP_DEGLITCH>;
+		};
+
+		pinctrl_ext_rst: ext_rst {
+			atmel,pins = <AT91_PIOA 17 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_UP_DEGLITCH>;
+		};
+		pinctrl_ext_pwr_en: ext_pwr_en {
+			atmel,pins = <AT91_PIOD 18 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_DOWN>;
+		};
+		pinctrl_ext_boot_n: ext_boot_n {
+			atmel,pins = <AT91_PIOD 19 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_UP_DEGLITCH>;
+		};
+		pinctrl_ext_wake: ext_wake {
+			atmel,pins = <AT91_PIOA 5 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_UP_DEGLITCH>;
+		};
+		pinctrl_gnss_pps: gnss_pps {
+			atmel,pins = <AT91_PIOC 24 AT91_PERIPH_GPIO AT91_PINCTRL_DEGLITCH>;
+		};
+	};
+};
diff --git a/arch/arm/dts/sama5d4.dtsi b/arch/arm/dts/sama5d4.dtsi
new file mode 100644
index 000000000000..d7dbba667d14
--- /dev/null
+++ b/arch/arm/dts/sama5d4.dtsi
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/ {
+	aliases {
+		mmc0 = &mmc0;
+		mmc1 = &mmc1;
+	};
+};
+
+/delete-node/ &{/memory@20000000};
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 529512b6c0db..22ed71350cb1 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -640,6 +640,14 @@ config MACH_SAMA5D27_GIANTBOARD
 	help
 	  Select this if you are using the Groboards sama5d27 Giantboard
 
+config MACH_SAMA5D4_WIFX
+	bool "Wifx L1 LoRaWAN base station"
+	select SOC_SAMA5D4
+	select OFDEVICE
+	select COMMON_CLK_OF_PROVIDER
+	help
+	  Select this if you are using the SAMA5D4-based Wifx L1.
+
 endif
 
 comment "AT91 Board Options"
diff --git a/images/Makefile.at91 b/images/Makefile.at91
index 71cc959f5d05..c6a6fb697bfe 100644
--- a/images/Makefile.at91
+++ b/images/Makefile.at91
@@ -51,3 +51,7 @@ pblb-$(CONFIG_MACH_SKOV_ARM9CPU) += start_skov_arm9cpu
 FILE_barebox-skov-arm9cpu.img = start_skov_arm9cpu.pblb
 MAX_PBL_MEMORY_SIZE_start_skov_arm9cpu = 0x12000
 image-$(CONFIG_MACH_SKOV_ARM9CPU) += barebox-skov-arm9cpu.img
+
+pblb-$(CONFIG_MACH_SAMA5D4_WIFX) += start_sama5d4_wifx_l1
+FILE_barebox-wifx-l1.img = start_sama5d4_wifx_l1.pblb
+image-$(CONFIG_MACH_SAMA5D4_WIFX) += barebox-wifx-l1.img
-- 
2.30.2



