Delivery-date: Mon, 11 Mar 2024 10:11:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjbgt-000put-1o
	for lore@lore.pengutronix.de;
	Mon, 11 Mar 2024 10:11:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjbgr-0001f3-Ob
	for lore@pengutronix.de; Mon, 11 Mar 2024 10:11:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=b4HiToQBDm7J6m1pQ+4PyDCJYXohxjvTa4KoQcGF+7A=; b=aCRfh1Llihqvi/1zwRMvP3Rh8e
	seUkRa6c49lR7qe6aY8/qPe58x1W1Luk/YEkd5iNifD4WCmS+/so117O6BxM5AvCo7CbRsNmPFohb
	hmlJ5j2/ssnirdV0xLxyeaDI0ebhFTd7Rau/7f1Ko5BCIxZbAmqYydkfUFFm5KZ4/hSB+OPm7FswV
	BjNYzbQtd6+xtV96TuyA2qv6EsepjXDOdRXq+p3Xti+7gO49v1Hroa2JcK/ybRSc79nF5YMIOfri+
	n378ak3hgKUlmAch97Grz+i8loV6G0OoYhjONDbV4ewFYTvw6C3gZjnBSDMsZCFt1LZiiv25mxeRz
	Xvw7HkiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjbg0-00000000kMh-2Z20;
	Mon, 11 Mar 2024 09:10:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjbfr-00000000kJW-39xk
	for barebox@lists.infradead.org;
	Mon, 11 Mar 2024 09:10:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rjbfi-0000gP-If; Mon, 11 Mar 2024 10:10:14 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rjbfi-005g4B-3Z; Mon, 11 Mar 2024 10:10:14 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rjbfh-00ANLu-1j;
	Mon, 11 Mar 2024 10:10:14 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Mon, 11 Mar 2024 10:10:11 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240311-karo-imx8mp-som-board-upstreaming-v1-4-7c77f9ba02e5@pengutronix.de>
References: <20240311-karo-imx8mp-som-board-upstreaming-v1-0-7c77f9ba02e5@pengutronix.de>
In-Reply-To: <20240311-karo-imx8mp-som-board-upstreaming-v1-0-7c77f9ba02e5@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_021024_156630_9A0F701B 
X-CRM114-Status: GOOD (  11.83  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/6] arm: dts: karo: import dts for karo-qsxp-ml81
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Marc Kleine-Budde <mkl@pengutronix.de>

This imports the device tree for the Ka-Ro QSXP, which is a i.MX8M Plus
solder down system on module. The sources have been adapted from the
offical Ka-Ro github[1], commit a49b38ec97854c0cd9cd83a9f4ae3b56e99a58b6.

[1]: https://github.com/karo-electronics/meta-karo-nxp.git

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 arch/arm/dts/imx8mp-karo-qsxp-ml81.dts | 160 +++++++++++++
 arch/arm/dts/imx8mp-karo.dtsi          | 407 +++++++++++++++++++++++++++++++++
 2 files changed, 567 insertions(+)

diff --git a/arch/arm/dts/imx8mp-karo-qsxp-ml81.dts b/arch/arm/dts/imx8mp-karo-qsxp-ml81.dts
new file mode 100644
index 0000000000..f64a279e66
--- /dev/null
+++ b/arch/arm/dts/imx8mp-karo-qsxp-ml81.dts
@@ -0,0 +1,160 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright (C) 2020 Lothar Waßmann <LW@KARO-electronics.de>
+ *
+ */
+
+/dts-v1/;
+
+#include "imx8mp-karo.dtsi"
+
+/ {
+	model = "Ka-Ro electronics QSXP-ML81 (NXP i.MX8MP) module";
+	compatible = "karo,imx8mp-qsxp-ml81", "fsl,imx8mp";
+
+	reg_3v3_etn: regulator-3v3-etn {
+		compatible = "regulator-fixed";
+		regulator-name = "3v3-etn";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&ldo5_reg>;
+	};
+
+	chosen {
+		environment-emmc {
+			compatible = "barebox,environment";
+			device-path = &env_emmc;
+			status = "disabled";
+		};
+	};
+
+	aliases {
+		state = &state_emmc;
+	};
+
+	state_emmc: state {
+		compatible = "barebox,state";
+		magic = <0xabff4b1f>;
+		backend-type = "raw";
+		backend = <&usdhc3>;
+		backend-storage-type="direct";
+		/*
+		 * barebox-state partition size: 1 MiB
+		 * nr. of redundant copies:      4
+		 * ==> max. stride size: 1 MiB / 4 = 256 KiB = 262144 Byte
+		 *
+		 * stride size:     262144 Byte
+		 * raw-header:     -    16 Byte
+		 * direct-storage: -     8 Byte
+		 *                 ------------
+		 * max state size:  262120 Byte
+		 *                  ===========
+		 */
+		backend-stridesize = <0x40000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		bootstate {
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			system0 {
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				remaining_attempts@0 {
+					reg = <0x0 0x4>;
+					type = "uint32";
+					default = <2>;
+				};
+
+				priority@4 {
+					reg = <0x4 0x4>;
+					type= "uint32";
+					default = <21>;
+				};
+			};
+
+			system1 {
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				remaining_attempts@8 {
+					reg = <0x8 0x4>;
+					type = "uint32";
+					default = <2>;
+				};
+
+				priority@c {
+					reg = <0xc 0x4>;
+					type= "uint32";
+					default = <20>;
+				};
+			};
+
+			last_chosen@10 {
+				reg = <0x10 0x4>;
+				type = "uint32";
+			};
+		};
+	};
+};
+
+&usdhc3 {
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <2>;
+		#size-cells = <2>;
+
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0x0 0x0 0x100000>;
+		};
+
+		env_emmc: partition@100000 {
+			label = "dt-barebox-environment";
+			reg = <0x0 0x100000 0x0 0x100000>;
+		};
+	};
+};
+
+&flexcan1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexcan1>;
+};
+
+&flexcan2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexcan2>;
+};
+
+&i2c3 {
+	status = "okay";
+};
+
+&i2c4 {
+	status = "okay";
+};
+
+&ldo5_reg {
+	regulator-min-microvolt = <3300000>;
+	regulator-max-microvolt = <3300000>;
+	regulator-boot-on;
+	regulator-always-on;
+};
+
+&iomuxc {
+	pinctrl_flexcan1: flexcan1grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SPDIF_RX__CAN1_RX 0x140
+			MX8MP_IOMUXC_SPDIF_TX__CAN1_TX 0x140
+		>;
+	};
+
+	pinctrl_flexcan2: flexcan2grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SAI5_MCLK__CAN2_RX 0x140
+			MX8MP_IOMUXC_SAI5_RXD3__CAN2_TX 0x140
+		>;
+	};
+};
diff --git a/arch/arm/dts/imx8mp-karo.dtsi b/arch/arm/dts/imx8mp-karo.dtsi
new file mode 100644
index 0000000000..7e679362ac
--- /dev/null
+++ b/arch/arm/dts/imx8mp-karo.dtsi
@@ -0,0 +1,407 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright (C) 2020 Lothar Waßmann <LW@KARO-electronics.de>
+ *
+ */
+
+#include <arm64/freescale/imx8mp.dtsi>
+#include "imx8mp.dtsi"
+
+/ {
+	chosen {
+		stdout-path = &uart2;
+	};
+};
+
+&A53_0 {
+	cpu-supply = <&reg_vdd_arm>;
+};
+
+&A53_1 {
+	cpu-supply = <&reg_vdd_arm>;
+};
+
+&A53_2 {
+	cpu-supply = <&reg_vdd_arm>;
+};
+
+&A53_3 {
+	cpu-supply = <&reg_vdd_arm>;
+};
+
+&i2c1 {
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	pinctrl-1 = <&pinctrl_i2c1_gpio>;
+	clock-frequency = <400000>;
+	scl-gpios = <&gpio5 14 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio5 15 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	status = "okay";
+
+	pmic@25 {
+		reg = <0x25>;
+		compatible = "nxp,pca9450c";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_pmic>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <3 IRQ_TYPE_EDGE_FALLING>;
+		status = "okay";
+
+		regulators {
+			reg_vdd_soc: BUCK1 {
+				regulator-name = "vdd-soc";
+				regulator-min-microvolt = <805000>;
+				regulator-max-microvolt = <900000>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <3125>;
+			};
+
+			reg_vdd_arm: BUCK2 {
+				regulator-name = "vdd-core";
+				regulator-min-microvolt = <805000>;
+				regulator-max-microvolt = <950000>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <3125>;
+				nxp,dvs-run-voltage = <950000>;
+				nxp,dvs-standby-voltage = <850000>;
+			};
+
+			reg_vdd_3v3: BUCK4 {
+				regulator-name = "3v3";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			reg_nvcc_nand: BUCK5 {
+				regulator-name = "nvcc-nand";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			reg_nvcc_dram: BUCK6 {
+				regulator-name = "nvcc-dram";
+				regulator-min-microvolt = <1100000>;
+				regulator-max-microvolt = <1100000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			reg_snvs_1v8: LDO1 {
+				regulator-name = "snvs-1v8";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo2_reg: LDO2 {
+				regulator-name = "LDO2";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1150000>;
+				regulator-always-on;
+			};
+
+			reg_vdda_1v8: LDO3 {
+				regulator-name = "vdda-1v8";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo4_reg: LDO4 {
+				regulator-name = "LDO4";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <3300000>;
+			};
+
+			ldo5_reg: LDO5 {
+				regulator-name = "LDO5";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+			};
+		};
+	};
+};
+
+&i2c2 {
+	clock-frequency = <400000>;
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	pinctrl-1 = <&pinctrl_i2c2_gpio>;
+	sda-gpios = <&gpio5 17 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	scl-gpios = <&gpio5 16 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	status = "okay";
+};
+
+&i2c3 {
+	clock-frequency = <400000>;
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c3>;
+	pinctrl-1 = <&pinctrl_i2c3_gpio>;
+	sda-gpios = <&gpio5 19 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	scl-gpios = <&gpio5 18 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+};
+
+&i2c4 {
+	clock-frequency = <400000>;
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c4>;
+	pinctrl-1 = <&pinctrl_i2c4_gpio>;
+	sda-gpios = <&gpio5 21 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	scl-gpios = <&gpio5 20 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>, <&pinctrl_uart1_rtscts>;
+	uart-has-rtscts;
+	status = "okay";
+};
+
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	dmas = <&sdma1 24 4 0>, <&sdma1 25 4 0>;
+	dma-names = "rx", "tx";
+	status = "okay";
+};
+
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart4>;
+	status = "okay";
+};
+
+&usb3_0 {
+	status = "okay";
+};
+
+&usb3_1 {
+	status = "okay";
+};
+
+&usb_dwc3_0 {
+	dr_mode = "peripheral";
+	hnp-disable;
+	srp-disable;
+	adp-disable;
+	status = "okay";
+};
+
+&usb3_phy0 {
+	status = "okay";
+};
+
+&usb3_phy1 {
+	status = "okay";
+};
+
+&usb_dwc3_1 {
+	dr_mode = "host";
+	status = "okay";
+};
+
+&usdhc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc2 &pinctrl_usdhc2_cd>;
+	bus-width = <4>;
+	vmmc-supply = <&reg_vdd_3v3>;
+	vqmmc-supply = <&reg_vdd_3v3>;
+	voltage-ranges = <3300 3300>;
+	no-1-8-v;
+	fsl,wp-controller;
+};
+
+&usdhc3 { /* eMMC */
+	assigned-clocks = <&clk IMX8MP_CLK_USDHC3>;
+	assigned-clock-rates = <400000000>;
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc3>;
+	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
+	bus-width = <8>;
+	no-sd;
+	no-sdio;
+	vmmc-supply = <&reg_vdd_3v3>;
+	vqmmc-supply = <&reg_nvcc_nand>;
+	voltage-ranges = <3300 3300>;
+	non-removable;
+	status = "okay";
+};
+
+&wdog1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_wdog>;
+	fsl,ext-reset-output;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl_i2c1: i2c1grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_I2C1_SCL__I2C1_SCL			0x400001c2
+			MX8MP_IOMUXC_I2C1_SDA__I2C1_SDA			0x400001c2
+		>;
+	};
+
+	pinctrl_i2c1_gpio: i2c1-gpiogrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_I2C1_SCL__GPIO5_IO14		0x400001c2
+			MX8MP_IOMUXC_I2C1_SDA__GPIO5_IO15		0x400001c2
+		>;
+	};
+
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_I2C2_SCL__I2C2_SCL			0x400001c2
+			MX8MP_IOMUXC_I2C2_SDA__I2C2_SDA			0x400001c2
+		>;
+	};
+
+	pinctrl_i2c2_gpio: i2c2-gpiogrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_I2C2_SCL__GPIO5_IO16		0x400001c2
+			MX8MP_IOMUXC_I2C2_SDA__GPIO5_IO17		0x400001c2
+		>;
+	};
+
+	pinctrl_i2c3: i2c3grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_I2C3_SCL__I2C3_SCL			0x400001c2
+			MX8MP_IOMUXC_I2C3_SDA__I2C3_SDA			0x400001c2
+		>;
+	};
+
+	pinctrl_i2c3_gpio: i2c3-gpiogrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_I2C3_SCL__GPIO5_IO18		0x400001c2
+			MX8MP_IOMUXC_I2C3_SDA__GPIO5_IO19		0x400001c2
+		>;
+	};
+
+	pinctrl_i2c4: i2c4grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_I2C4_SCL__I2C4_SCL			0x400001c2
+			MX8MP_IOMUXC_I2C4_SDA__I2C4_SDA			0x400001c2
+		>;
+	};
+
+	pinctrl_i2c4_gpio: i2c4-gpiogrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_I2C4_SCL__GPIO5_IO20		0x400001c2
+			MX8MP_IOMUXC_I2C4_SDA__GPIO5_IO21		0x400001c2
+		>;
+	};
+
+	pinctrl_pmic: pmicgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_GPIO1_IO03__GPIO1_IO03		0x1c0
+		>;
+	};
+
+	pinctrl_uart1: uart1grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_UART1_RXD__UART1_DCE_RX		0x140
+			MX8MP_IOMUXC_UART1_TXD__UART1_DCE_TX		0x140
+		>;
+	};
+
+	pinctrl_uart1_rtscts: uart1-rtsctsgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_UART3_TXD__UART1_DCE_RTS		0x140
+			MX8MP_IOMUXC_UART3_RXD__UART1_DCE_CTS		0x140
+		>;
+	};
+
+	pinctrl_uart2: uart2grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_UART2_RXD__UART2_DCE_RX		0x140
+			MX8MP_IOMUXC_UART2_TXD__UART2_DCE_TX		0x140
+		>;
+	};
+
+	pinctrl_uart4: uart4grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_UART4_RXD__UART4_DCE_RX		0x140
+			MX8MP_IOMUXC_UART4_TXD__UART4_DCE_TX		0x140
+		>;
+	};
+
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK		0x190
+			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD		0x1d0
+			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0		0x1d0
+			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1		0x1d0
+			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2		0x1d0
+			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3		0x1d0
+		>;
+	};
+
+	pinctrl_usdhc2_cd: usdhc2-cdgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD2_CD_B__GPIO2_IO12		0x1c0
+		>;
+	};
+
+	pinctrl_usdhc3: usdhc3grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK		0x190
+			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD		0x1d0
+			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0		0x1d0
+			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1		0x1d0
+			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2		0x1d0
+			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3		0x1d0
+			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4		0x1d0
+			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5		0x1d0
+			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6		0x1d0
+			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7		0x1d0
+			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE		0x190
+		>;
+	};
+
+	pinctrl_usdhc3_100mhz: usdhc3-100mhzgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK		0x194
+			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD		0x1d4
+			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0		0x1d4
+			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1		0x1d4
+			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2		0x1d4
+			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3		0x1d4
+			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4		0x1d4
+			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5		0x1d4
+			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6		0x1d4
+			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7		0x1d4
+			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE		0x194
+		>;
+	};
+
+	pinctrl_usdhc3_200mhz: usdhc3-200mhzgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK		0x196
+			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD		0x1d6
+			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0		0x1d6
+			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1		0x1d6
+			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2		0x1d6
+			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3		0x1d6
+			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4		0x1d6
+			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5		0x1d6
+			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6		0x1d6
+			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7		0x1d6
+			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE		0x196
+		>;
+	};
+
+	pinctrl_wdog: wdoggrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_GPIO1_IO02__WDOG1_WDOG_B		0xc6
+		>;
+	};
+};

-- 
2.39.2



