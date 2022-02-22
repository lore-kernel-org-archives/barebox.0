Delivery-date: Tue, 22 Feb 2022 11:57:33 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nMSrN-006lbS-9M
	for lore@lore.pengutronix.de; Tue, 22 Feb 2022 11:57:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nMSrK-00058J-Ah
	for lore@pengutronix.de; Tue, 22 Feb 2022 11:57:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m8AZVD9MqyPrLOG7optCsEazBUwyqOXTvtvSXkNPh10=; b=eZcDANaq6tpQLD
	0Z3WORhKCPM27ng1OtS4m17t0wwvspeEy0W1etRPZxwFw/XoPane3yqrBA9+19uYwZOkGoHC7ID1T
	konZvQUNQEZRf6IOv7Od8dePHBaHHB6dXTkK7zdtFH9EyKZxZgg+M3u+mM5xZxyW/9T1CdUjmFELf
	y2qgPjcnRhp2B+M4nyEkD7jlR/g0WuRVfT0REu7EcDt4P1xqKT2lHTkp3lmiSyLWdmhrodnEcQAdQ
	KNOejd9ScUfse1kdl77o92U6TnlKauj/KVdgOty1FnBOJSMeTAIvKK3cqR78NxbJOo/HDgM4NjO3r
	cP7I10o/qDVgaMht3jmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMSpp-009E7j-I0; Tue, 22 Feb 2022 10:55:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMSjC-009Aq1-6e
 for barebox@lists.infradead.org; Tue, 22 Feb 2022 10:49:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <jbe@pengutronix.de>) id 1nMSj7-0003ZH-CO
 for barebox@lists.infradead.org; Tue, 22 Feb 2022 11:49:01 +0100
Received: from [2a0a:edc0:0:900:1d::45] (helo=ginster)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <jbe@pengutronix.de>) id 1nMSj7-000bKK-CG
 for barebox@lists.infradead.org; Tue, 22 Feb 2022 11:49:00 +0100
Received: from jbe by ginster with local (Exim 4.94.2)
 (envelope-from <jbe@pengutronix.de>) id 1nMSj5-000BYo-PX
 for barebox@lists.infradead.org; Tue, 22 Feb 2022 11:48:59 +0100
From: Juergen Borleis <jbe@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 22 Feb 2022 11:48:58 +0100
Message-Id: <20220222104859.44391-2-jbe@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220222104859.44391-1-jbe@pengutronix.de>
References: <20220222104859.44391-1-jbe@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220222_024906_658499_38BB04BB 
X-CRM114-Status: GOOD (  14.41  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/3] ARM: webasto-marvel: add device tree shared with the
 kernel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 arch/arm/dts/Makefile                  |   1 +
 arch/arm/dts/imx6ul-webasto-marvel.dts | 583 +++++++++++++++++++++++++
 2 files changed, 584 insertions(+)
 create mode 100644 arch/arm/dts/imx6ul-webasto-marvel.dts

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index d419e83..352b8d8 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -158,6 +158,7 @@ lwl-$(CONFIG_MACH_VSCOM_BALTOS) += am335x-baltos-minimal.dtb.o
 lwl-$(CONFIG_MACH_WARP7) += imx7s-warp.dtb.o
 lwl-$(CONFIG_MACH_VF610_TWR) += vf610-twr.dtb.o
 lwl-$(CONFIG_MACH_WEBASTO_CCBV2) += imx6ul-webasto-ccbv2.dtb.o
+lwl-$(CONFIG_MACH_WEBASTO_CCBV2) += imx6ul-webasto-marvel.dtb.o
 lwl-$(CONFIG_MACH_ZII_RDU1) +=	\
 	imx51-zii-rdu1.dtb.o		\
 	imx51-zii-scu2-mezz.dtb.o	\
diff --git a/arch/arm/dts/imx6ul-webasto-marvel.dts b/arch/arm/dts/imx6ul-webasto-marvel.dts
new file mode 100644
index 0000000..690f368
--- /dev/null
+++ b/arch/arm/dts/imx6ul-webasto-marvel.dts
@@ -0,0 +1,583 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright (C) 2019, Webasto SE
+ * Author: Johannes Eigner <johannes.eigner@webasto.com>
+ *
+ * Description of the Marvel B1, MK3 Comboard
+ */
+
+/dts-v1/;
+
+#include <arm/imx6ul.dtsi>
+
+/ {
+	model = "Webasto common communication board Marvel MK3";
+	compatible = "webasto,imx6ul-marvel-b1", "webasto,imx6ul-marvel", "fsl,imx6ul";
+
+	chosen {
+		stdout-path = &uart7;
+		environment {
+			compatible = "barebox,environment";
+			device-path = &environment_emmc;
+		};
+	};
+
+	aliases {
+		state = &state_emmc;
+	};
+
+	reserved-memory {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		dt-overlay@84000000 {
+			reg = <0x84000000 0x100000>;
+			no-map;
+		};
+	};
+
+	state_emmc: state {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "barebox,state";
+		magic = <0x290cf8c6>;
+		backend-type = "raw";
+		backend = <&backend_state_emmc>;
+		backend-stridesize = <0x200>;
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
+					default = <3>;
+				};
+
+				priority@4 {
+					reg = <0x4 0x4>;
+					type = "uint32";
+					default = <20>;
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
+					default = <3>;
+				};
+
+				priority@c {
+					reg = <0xc 0x4>;
+					type = "uint32";
+					default = <21>;
+				};
+			};
+
+			last_chosen@10 {
+				reg = <0x10 0x4>;
+				type = "uint32";
+			};
+		};
+	};
+
+	transceiver1_en: regulator-can1phy {
+		compatible = "regulator-fixed";
+		regulator-name = "can-transceiver1";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctl_can1phy>;
+		vin-supply = <&swbst_reg>;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio3 19 GPIO_ACTIVE_LOW>;
+	};
+
+	reg_4v: regulator-4v {
+		compatible = "regulator-fixed";
+		regulator-name = "V_+4V";
+		regulator-min-microvolt = <4000000>;
+		regulator-max-microvolt = <4000000>;
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
+	reg_wl18xx_vmmc: regulator-wl18xx {
+		compatible = "regulator-fixed";
+		regulator-name = "wl1837";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_wifi_reg>;
+		vin-supply = <&reg_4v>;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio4 22 GPIO_ACTIVE_HIGH>;
+		startup-delay-us = <70000>;
+		enable-active-high;
+	};
+
+	reg_dp83822_en: regulator-dp83822 {
+		compatible = "regulator-fixed";
+		regulator-name = "dp83822";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_phy_reg>;
+		vin-supply = <&vcc_eth>;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		gpio = <&gpio1 8 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+};
+
+&asrc {
+	status = "disabled";
+};
+
+&can1 {
+	xceiver-supply = <&transceiver1_en>; /* CAN side */
+	vdd-supply = <&vgen1_reg>; /* I/O side */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctl_can1>;
+};
+
+&fec1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet1>;
+	phy-mode = "rmii";
+	phy-supply = <&reg_dp83822_en>;
+	phy-handle = <&dp83822i>;
+	phy-reset-gpios = <&gpio1 9 GPIO_ACTIVE_LOW>;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		dp83822i: ethernet-phy@1 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <1>;
+			clocks = <&clks IMX6UL_CLK_ENET_REF>;
+			clock-names = "rmii-ref";
+		};
+	};
+};
+
+&gpio4 {
+	gpio-line-names = "", "", "", "", "", "", "", "",
+		     "", "", "", "", "", "", "", "",
+		     "", "", "", "", "", "", "", "",
+		     "", "", "MODEM_STATUS", "MODEM_CTRL", "";
+};
+
+&i2c2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	clock-frequency = <100000>;
+	status = "okay";
+
+	pmic: mc34pf3000@8 {
+		compatible = "fsl,pfuze3000";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctl_pmic_irq>;
+		interrupts-extended = <&gpio1 29 IRQ_TYPE_LEVEL_LOW>;
+		reg = <0x08>;
+		regulators {
+			sw1a_reg: sw1a {
+				regulator-name = "V_+3V3_SW1A";
+				vin-supply = <&reg_4v>;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <6250>;
+			};
+			vdd_soc_in: sw1b {
+				regulator-name = "V_+1V4_SW1B";
+				vin-supply = <&reg_4v>;
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <1475000>;
+				regulator-ramp-delay = <6250>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+			sw2_reg: sw2 {
+				regulator-name = "V_+3V3_SW2";
+				vin-supply = <&reg_4v>;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+			vcc_ddr3: sw3 {
+				regulator-name = "V_+1V35_SW3";
+				vin-supply = <&reg_4v>;
+				regulator-min-microvolt = <1350000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+			swbst_reg: swbst {
+				regulator-name = "V_+5V0_SWBST";
+				vin-supply = <&reg_4v>;
+				regulator-min-microvolt = <5000000>;
+				regulator-max-microvolt = <5150000>;
+				regulator-boot-on;
+				regulator-always-on; /* due to hardware requirements */
+			};
+			vdd_snvs: vsnvs {
+				regulator-name = "V_+3V0_SNVS";
+				vin-supply = <&reg_4v>;
+				regulator-min-microvolt = <1000000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+			vrefddr: vrefddr {
+				regulator-name = "V_+0V675_VREFDDR";
+				vin-supply = <&vcc_ddr3>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+			/* 3V3 Supply: i.MX6 modules */
+			vgen1_reg: vldo1 {
+				regulator-name = "V_+3V3_LDO1";
+				vin-supply = <&reg_4v>;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+			vgen2_reg: vldo2 {
+				/* not connected */
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1550000>;
+			};
+			vgen3_reg: vccsd {
+				regulator-min-microvolt = <2850000>;
+				regulator-max-microvolt = <3300000>;
+			};
+			vdd_high_in: v33 {
+				regulator-name = "V_+3V3_V33";
+				vin-supply = <&reg_4v>;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+			vcc_eth: vldo3 {
+				regulator-name = "V_+1V8_LDO3";
+				vin-supply = <&reg_4v>;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+			vgen6_reg: vldo4 {
+				regulator-name = "V_+1V8_LDO4";
+				vin-supply = <&reg_4v>;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+		};
+	};
+};
+
+&iomuxc {
+	pinctrl_cm_ctrlreg: cmcontrolgrp {
+		fsl,pins = <
+			/* 1.8 V level for all */
+			MX6UL_PAD_CSI_DATA05__GPIO4_IO26	0x10000 /* STATUS */
+			MX6UL_PAD_CSI_DATA06__GPIO4_IO27	0x03008 /* ON/OFF/RESET */
+		>;
+	};
+
+	pinctrl_phy_reg: phyreggrp {
+		fsl,pins = <
+			/* high = phy enabled */
+			MX6UL_PAD_GPIO1_IO08__GPIO1_IO08	0x13030
+		>;
+	};
+
+	pinctrl_enet1: enet1grp {
+		fsl,pins = <
+			/* Note: 1.8 V */
+			MX6UL_PAD_GPIO1_IO06__ENET1_MDIO	0x1b0b0
+			MX6UL_PAD_GPIO1_IO07__ENET1_MDC		0x1b0b0
+			MX6UL_PAD_ENET1_RX_EN__ENET1_RX_EN	0x1b0b0
+			MX6UL_PAD_ENET1_RX_ER__ENET1_RX_ER	0x1b0b0
+			MX6UL_PAD_ENET1_RX_DATA0__ENET1_RDATA00	0x1b0b0
+			MX6UL_PAD_ENET1_RX_DATA1__ENET1_RDATA01	0x1b0b0
+			MX6UL_PAD_ENET1_TX_EN__ENET1_TX_EN	0x1b0b0
+			MX6UL_PAD_ENET1_TX_DATA0__ENET1_TDATA00	0x1b0b0
+			MX6UL_PAD_ENET1_TX_DATA1__ENET1_TDATA01	0x1b0b0
+			MX6UL_PAD_ENET1_TX_CLK__ENET1_REF_CLK1	0x4001b031
+			MX6UL_PAD_GPIO1_IO09__GPIO1_IO09	0x13030
+		>;
+	};
+
+	pinctl_pmic_irq: pmicgrp {
+		fsl,pins = <
+			/* 1.8 V level */
+			MX6UL_PAD_UART4_RX_DATA__GPIO1_IO29	0x10000
+		>;
+	};
+
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins = <
+			/* 1.8 V level for all */
+			MX6UL_PAD_UART5_TX_DATA__I2C2_SCL	0x4001b8b0
+			MX6UL_PAD_UART5_RX_DATA__I2C2_SDA	0x4001b8b0
+		>;
+	};
+
+	pinctrl_uart6: uart6grp {
+		fsl,pins = <
+			/* 1.8 V level for all */
+			MX6UL_PAD_CSI_MCLK__UART6_DCE_TX	0x1b0b0
+			MX6UL_PAD_CSI_PIXCLK__UART6_DCE_RX	0x1b0b0
+			MX6UL_PAD_CSI_VSYNC__UART6_DCE_RTS	0x1b0b0
+			MX6UL_PAD_CSI_HSYNC__UART6_DCE_CTS	0x1b0b0
+			MX6UL_PAD_ENET2_TX_DATA0__GPIO2_IO11	0x10030
+		>;
+	};
+
+	pinctrl_uart7: uart7grp {
+		fsl,pins = <
+			/* 3.3 V level for all */
+			MX6UL_PAD_LCD_DATA16__UART7_DCE_TX	0x0b0b0
+			MX6UL_PAD_LCD_DATA17__UART7_DCE_RX	0x1b0b0
+		>;
+	};
+
+	pinctrl_wifi_reg: wifigrp {
+		fsl,pins = <
+			/* 1.8 V level for all */
+			MX6UL_PAD_CSI_DATA01__GPIO4_IO22	0x10030
+			MX6UL_PAD_GPIO1_IO03__OSC32K_32K_OUT	0x00010
+		>;
+	};
+
+	pinctrl_wifi_irq: wifiirqgrp {
+		fsl,pins = <
+			/* 1.8 V level */
+			MX6UL_PAD_CSI_DATA00__GPIO4_IO21	0x17000
+		>;
+	};
+
+	pinctrl_usdhc1: usdhc1grp {
+		fsl,pins = <
+			/* 1.8 V level for all */
+			MX6UL_PAD_SD1_CMD__USDHC1_CMD		0x10059
+			MX6UL_PAD_SD1_CLK__USDHC1_CLK		0x10059
+			MX6UL_PAD_SD1_DATA0__USDHC1_DATA0	0x10059
+			MX6UL_PAD_SD1_DATA1__USDHC1_DATA1	0x10059
+			MX6UL_PAD_SD1_DATA2__USDHC1_DATA2	0x10059
+			MX6UL_PAD_SD1_DATA3__USDHC1_DATA3	0x10059
+		>;
+	};
+
+	pinctrl_usdhc2: usdhc2grp_slow {
+		fsl,pins = <
+			/* 3.3 V level for all, *no* external PU */
+			MX6UL_PAD_NAND_RE_B__USDHC2_CLK		0x10079
+			MX6UL_PAD_NAND_WE_B__USDHC2_CMD		0x17029
+			MX6UL_PAD_NAND_DATA00__USDHC2_DATA0	0x17029
+			MX6UL_PAD_NAND_DATA01__USDHC2_DATA1	0x17029
+			MX6UL_PAD_NAND_DATA02__USDHC2_DATA2	0x17029
+			MX6UL_PAD_NAND_DATA03__USDHC2_DATA3	0x17029
+			MX6UL_PAD_NAND_DATA04__USDHC2_DATA4	0x17029
+			MX6UL_PAD_NAND_DATA05__USDHC2_DATA5	0x17029
+			MX6UL_PAD_NAND_DATA06__USDHC2_DATA6	0x17029
+			MX6UL_PAD_NAND_DATA07__USDHC2_DATA7	0x17029
+			MX6UL_PAD_NAND_ALE__USDHC2_RESET_B	0x00008
+		>;
+	};
+
+	pinctrl_usdhc2_100MHZ: usdhc2grp_100m {
+		fsl,pins = <
+			/* 3.3 V level for all, *no* external PU */
+			MX6UL_PAD_NAND_RE_B__USDHC2_CLK		0x100e9
+			MX6UL_PAD_NAND_WE_B__USDHC2_CMD		0x1b0a9
+			MX6UL_PAD_NAND_DATA00__USDHC2_DATA0	0x1b0a9
+			MX6UL_PAD_NAND_DATA01__USDHC2_DATA1	0x1b0a9
+			MX6UL_PAD_NAND_DATA02__USDHC2_DATA2	0x1b0a9
+			MX6UL_PAD_NAND_DATA03__USDHC2_DATA3	0x1b0a9
+			MX6UL_PAD_NAND_DATA04__USDHC2_DATA4	0x1b0a9
+			MX6UL_PAD_NAND_DATA05__USDHC2_DATA5	0x1b0a9
+			MX6UL_PAD_NAND_DATA06__USDHC2_DATA6	0x1b0a9
+			MX6UL_PAD_NAND_DATA07__USDHC2_DATA7	0x1b0a9
+			MX6UL_PAD_NAND_ALE__USDHC2_RESET_B	0x00008
+		>;
+	};
+
+	pinctrl_usdhc2_200MHZ: usdhc2grp_200m {
+		fsl,pins = <
+			/* 3.3 V level for all, *no* external PU */
+			MX6UL_PAD_NAND_RE_B__USDHC2_CLK		0x100e9
+			MX6UL_PAD_NAND_WE_B__USDHC2_CMD		0x1b0e9
+			MX6UL_PAD_NAND_DATA00__USDHC2_DATA0	0x1b0e9
+			MX6UL_PAD_NAND_DATA01__USDHC2_DATA1	0x1b0e9
+			MX6UL_PAD_NAND_DATA02__USDHC2_DATA2	0x1b0e9
+			MX6UL_PAD_NAND_DATA03__USDHC2_DATA3	0x1b0e9
+			MX6UL_PAD_NAND_DATA04__USDHC2_DATA4	0x1b0e9
+			MX6UL_PAD_NAND_DATA05__USDHC2_DATA5	0x1b0e9
+			MX6UL_PAD_NAND_DATA06__USDHC2_DATA6	0x1b0e9
+			MX6UL_PAD_NAND_DATA07__USDHC2_DATA7	0x1b0e9
+			MX6UL_PAD_NAND_ALE__USDHC2_RESET_B	0x00008
+		>;
+	};
+
+	pinctrl_wdog: wdoggrp {
+		fsl,pins = <
+			MX6UL_PAD_GPIO1_IO01__WDOG1_WDOG_B	0x00b0
+		>;
+	};
+
+	pinctl_can1phy: can1phygrp {
+		fsl,pins = <
+			/* 3.3 V level */
+			MX6UL_PAD_LCD_DATA14__GPIO3_IO19	0x00008
+		>;
+	};
+
+	pinctl_can1: can1grp {
+		fsl,pins = <
+			/* 3.3 V level for all */
+			MX6UL_PAD_LCD_DATA08__FLEXCAN1_TX	0x00009
+			MX6UL_PAD_LCD_DATA09__FLEXCAN1_RX	0x17000
+		>;
+	};
+};
+
+&ocotp {
+	barebox,provide-mac-address = <&fec1 0x620>;
+};
+
+&reg_arm {
+	vin-supply = <&vdd_soc_in>;
+	regulator-allow-bypass;
+};
+
+&reg_soc {
+	vin-supply = <&vdd_soc_in>;
+	regulator-allow-bypass;
+};
+
+&uart6 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart6>;
+	uart-has-rtscts;
+	bluetooth {
+		compatible = "ti,wl1837-st";
+		enable-gpios = <&gpio2 11 GPIO_ACTIVE_HIGH>;
+		vin-supply = <&reg_4v>;
+	};
+};
+
+&uart7 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart7>;
+	status = "okay";
+};
+
+&usbotg1 {
+	/* Micro-USB-plug */
+	dr_mode = "peripheral";
+	status = "okay";
+};
+
+&usbotg2 {
+	/* Modem (e.g. internal only) */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_cm_ctrlreg>;
+	vbus-supply = <&swbst_reg>;
+	dr_mode = "host";
+	disable-over-current;
+};
+
+&usdhc1 {
+	/* SDIO (WIFI/BT) */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc1>;
+	bus-width = <4>;
+	vmmc-supply = <&reg_wl18xx_vmmc>;
+	vqmmc-supply = <&vgen6_reg>;
+	non-removable;
+	no-sd;
+	no-mmc;
+	keep-power-in-suspend;
+	cap-power-off-card;
+	max-frequency = <25000000>;
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	wlcore: wlcore@2 {
+		compatible = "ti,wl1837";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_wifi_irq>;
+		reg = <2>;
+		interrupts-extended = <&gpio4 21 IRQ_TYPE_LEVEL_HIGH>;
+		tcxo-clock-frequency = <26000000>;
+	};
+};
+
+&usdhc2 {
+	/* eMMC */
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	pinctrl-1 = <&pinctrl_usdhc2_100MHZ>;
+	pinctrl-2 = <&pinctrl_usdhc2_200MHZ>;
+	bus-width = <8>;
+	vmmc-supply = <&sw1a_reg>;
+	vqmmc-supply = <&vgen1_reg>;
+	no-1-8-v;
+	non-removable;
+	no-sd;
+	no-sdio;
+	keep-power-in-suspend;
+	cap-mmc-hw-reset;
+	status = "okay";
+	/* bootloader specific */
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0x100000>;
+		};
+
+		environment_emmc: partition@100000 {
+			label = "barebox-environment";
+			reg = <0x100000 0x100000>;
+		};
+
+		backend_state_emmc: partition@200000 {
+			label = "barebox-state";
+			reg = <0x200000 0x100000>;
+		};
+	};
+};
+
+&wdog1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_wdog>;
+	fsl,ext-reset-output;
+	status = "okay";
+};
+
+/* include the FIT public key for verifying on demand */
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#endif
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

