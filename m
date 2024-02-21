Delivery-date: Wed, 21 Feb 2024 16:04:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rco8v-00HNpR-33
	for lore@lore.pengutronix.de;
	Wed, 21 Feb 2024 16:04:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rco8u-0005HC-7m
	for lore@pengutronix.de; Wed, 21 Feb 2024 16:04:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DfjlYDtc+yxBv+M50L4cXN1GUzWT5cnOqYOYABEHJvE=; b=aYmaJ5mZ0EPRSsjPpk/hbEEix3
	yPQBr/zaJt6UjAGG5k0FTh+eM3dgYQNkVgL9YzpxMrwkQMGvk8oFee6lVB27ZDvHwQRcKvKd8/2Ev
	1CtWugCy2msAepKrCzCcBYCT6YKcVlDJoM4X1DJfs9uuRqzCF7noEbIa5QwUG+xE+uupl0mMzlK9F
	qMLw64kxrnQ/VIT3Pwg4XAalQerCHlDvVi3fg0roD+cQSjAMUw6LU2jZpXzZad2O2oB+pIcnc2lAh
	uDAEaloJV/nPq+cCfl1KLDhFCipkJwa7D3E/V1TQ8ZfcV+trwOPuPG2fLsnvYUCh4YXE8BWDnOn1L
	PAmxxT+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rco8H-00000001OSe-0Luy;
	Wed, 21 Feb 2024 15:03:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rco86-00000001OMB-20Og
	for barebox@lists.infradead.org;
	Wed, 21 Feb 2024 15:03:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rco84-0004hP-Ua; Wed, 21 Feb 2024 16:03:24 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rco84-0023jI-HV; Wed, 21 Feb 2024 16:03:24 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rco84-00BYvn-1P;
	Wed, 21 Feb 2024 16:03:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 21 Feb 2024 16:03:23 +0100
Message-Id: <20240221150323.2715164-9-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240221150323.2715164-1-s.hauer@pengutronix.de>
References: <20240221150323.2715164-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_070326_863393_17333765 
X-CRM114-Status: GOOD (  25.56  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 8/8] ARM: tqma6ul: use upstream device trees
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The tqma6ul has several upstream device trees depending on the exact
board type. This removes the downstream device tree in favour for the
upstream device trees. The board type can be determined from an EEPROM
on the board. This patch also adds support for reading the EEPROM and
picking the right device tree for the board found.

The EEPROM has the board described as strings. I do not know the correct
strings for the boards I don't have, so right now only the device tree
for the "TQMa6UL2L-AB.0202" board is picked. A warning is printed when
an unknown board type is found, so this can be added as new board type
when found.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/tqma6ulx/board.c              |   7 +-
 arch/arm/boards/tqma6ulx/lowlevel.c           |  45 ++-
 arch/arm/dts/Makefile                         |   5 +-
 arch/arm/dts/imx6ul-mba6ulx.dtsi              | 333 ------------------
 ...mba6ulx.dts => imx6ul-tqma6ul-common.dtsi} |   5 -
 arch/arm/dts/imx6ul-tqma6ul2-mba6ulx.dts      |   4 +
 arch/arm/dts/imx6ul-tqma6ul2l-mba6ulx.dts     |   4 +
 arch/arm/dts/imx6ull-tqma6ull2-mba6ulx.dts    |   4 +
 arch/arm/dts/imx6ull-tqma6ull2l-mba6ulx.dts   |   4 +
 arch/arm/dts/tqma6ul-common.dtsi              | 191 ----------
 arch/arm/dts/tqma6ulx-common.dtsi             |  28 --
 arch/arm/mach-imx/Kconfig                     |   3 +
 12 files changed, 72 insertions(+), 561 deletions(-)
 delete mode 100644 arch/arm/dts/imx6ul-mba6ulx.dtsi
 rename arch/arm/dts/{imx6ul-mba6ulx.dts => imx6ul-tqma6ul-common.dtsi} (96%)
 create mode 100644 arch/arm/dts/imx6ul-tqma6ul2-mba6ulx.dts
 create mode 100644 arch/arm/dts/imx6ul-tqma6ul2l-mba6ulx.dts
 create mode 100644 arch/arm/dts/imx6ull-tqma6ull2-mba6ulx.dts
 create mode 100644 arch/arm/dts/imx6ull-tqma6ull2l-mba6ulx.dts
 delete mode 100644 arch/arm/dts/tqma6ul-common.dtsi
 delete mode 100644 arch/arm/dts/tqma6ulx-common.dtsi

diff --git a/arch/arm/boards/tqma6ulx/board.c b/arch/arm/boards/tqma6ulx/board.c
index be0abe443e..378cadc018 100644
--- a/arch/arm/boards/tqma6ulx/board.c
+++ b/arch/arm/boards/tqma6ulx/board.c
@@ -40,7 +40,10 @@ static int mba6ulx_probe(struct device *dev)
 }
 
 static const struct of_device_id mba6ulx_of_match[] = {
-	{ .compatible = "tq,mba6ulx" },
+	{ .compatible = "tq,imx6ul-tqma6ul2l" },
+	{ .compatible = "tq,imx6ul-tqma6ul2" },
+	{ .compatible = "tq,imx6ull-tqma6ull2" },
+	{ .compatible = "tq,imx6ull-tqma6ull2l" },
 	{ /* sentinel */ },
 };
 MODULE_DEVICE_TABLE(of, mba6ulx_of_match);
@@ -51,3 +54,5 @@ static struct driver mba6ulx_board_driver = {
 	.of_compatible = mba6ulx_of_match,
 };
 device_platform_driver(mba6ulx_board_driver);
+
+BAREBOX_DEEP_PROBE_ENABLE(mba6ulx_of_match);
diff --git a/arch/arm/boards/tqma6ulx/lowlevel.c b/arch/arm/boards/tqma6ulx/lowlevel.c
index 052471a99c..eff38c336a 100644
--- a/arch/arm/boards/tqma6ulx/lowlevel.c
+++ b/arch/arm/boards/tqma6ulx/lowlevel.c
@@ -13,8 +13,13 @@
 #include <mach/imx/esdctl.h>
 #include <mach/imx/iomux-mx6ul.h>
 #include <asm/cache.h>
+#include <pbl/i2c.h>
+#include <boards/tq/tq_eeprom.h>
 
-extern char __dtb_z_imx6ul_mba6ulx_start[];
+extern char __dtb_z_imx6ul_tqma6ul2_mba6ulx_start[];
+extern char __dtb_z_imx6ul_tqma6ul2l_mba6ulx_start[];
+extern char __dtb_z_imx6ull_tqma6ull2_mba6ulx_start[];
+extern char __dtb_z_imx6ull_tqma6ull2l_mba6ulx_start[];
 
 static void setup_uart(void)
 {
@@ -30,11 +35,47 @@ static void setup_uart(void)
 
 }
 
+static void *read_eeprom(void)
+{
+	struct pbl_i2c *i2c;
+	struct tq_eeprom *eeprom;
+	void __iomem *iomux = (void *)MX6_IOMUXC_BASE_ADDR;
+	void *fdt = __dtb_z_imx6ul_tqma6ul2l_mba6ulx_start;
+
+	writel(0x12, iomux + 0x0094);
+	writel(0x0, iomux + 0x05bc);
+	writel(0x1b8b0, iomux + 0x0320);
+	writel(0x12, iomux + 0x0098);
+	writel(0x0, iomux + 0x05c0);
+	writel(0x1b8b0, iomux + 0x0324);
+
+	i2c = imx6_i2c_early_init(IOMEM(MX6_I2C4_BASE_ADDR));
+
+	eeprom = pbl_tq_read_eeprom(i2c, 0x50, I2C_ADDR_16_BIT);
+	if (!eeprom) {
+		pr_err("Cannot read EEPROM\n");
+		goto out;
+	}
+
+	pr_info("Board: %s\n", eeprom->id);
+
+	if (!strcmp(eeprom->id, "TQMa6UL2L-AB.0202"))
+		fdt = __dtb_z_imx6ul_tqma6ul2l_mba6ulx_start;
+	else
+		pr_err("Unknown board type\n");
+out:
+	return fdt;
+}
+
 static void noinline start_mba6ulx(void)
 {
+	void *fdt;
+
 	setup_uart();
 
-	imx6ul_barebox_entry(__dtb_z_imx6ul_mba6ulx_start);
+	fdt = read_eeprom();
+
+	imx6ul_barebox_entry(fdt);
 }
 
 ENTRY_FUNCTION(start_imx6ul_mba6ulx, r0, r1, r2)
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 7800231570..db40c45084 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -160,7 +160,10 @@ lwl-$(CONFIG_MACH_TQ_MBA8MPXL) += imx8mp-tqma8mpql-mba8mpxl.dtb.o
 lwl-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += tegra20-colibri-iris.dtb.o
 lwl-$(CONFIG_MACH_TOSHIBA_AC100) += tegra20-paz00.dtb.o
 lwl-$(CONFIG_MACH_TQMA53) += imx53-mba53.dtb.o
-lwl-$(CONFIG_MACH_TQMA6UL) += imx6ul-mba6ulx.dtb.o
+lwl-$(CONFIG_MACH_TQMA6UL) += imx6ul-tqma6ul2-mba6ulx.dtb.o \
+			      imx6ul-tqma6ul2l-mba6ulx.dtb.o \
+			      imx6ull-tqma6ull2-mba6ulx.dtb.o \
+			      imx6ull-tqma6ull2l-mba6ulx.dtb.o
 lwl-$(CONFIG_MACH_TQMA6X) += imx6dl-mba6x.dtb.o imx6q-mba6x.dtb.o
 lwl-$(CONFIG_MACH_TX25) += imx25-karo-tx25.dtb.o
 lwl-$(CONFIG_MACH_TX6X) += imx6dl-tx6u.dtb.o
diff --git a/arch/arm/dts/imx6ul-mba6ulx.dtsi b/arch/arm/dts/imx6ul-mba6ulx.dtsi
deleted file mode 100644
index da73248084..0000000000
--- a/arch/arm/dts/imx6ul-mba6ulx.dtsi
+++ /dev/null
@@ -1,333 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
-/*
- * Copyright 2016 TQ Systems GmbH
- * Author: Marco Felsch
- */
-
-/dts-v1/;
-
-#include <dt-bindings/input/input.h>
-#include "imx6ul-tqma6ulx.dtsi"
-
-/ {
-	model = "TQ TQMa6ULx SoM on MBa6ULx";
-	compatible = "tq,mba6ulx", "tq,imx6ul-tqma6ul2l", "fsl,imx6ul";
-
-	chosen {
-		stdout-path = &uart1;
-	};
-
-	reg_mba6ul_3v3: regulator-mba6ul-3v3 {
-		compatible = "regulator-fixed";
-		regulator-name = "supply-mba6ul-3v3";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		regulator-always-on;
-	};
-
-	reg_mba6ul_5v0: regulator-mba6ul-5v0 {
-		compatible = "regulator-fixed";
-		regulator-name = "supply-mba6ul-5v0";
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		regulator-always-on;
-	};
-
-	reg_otg2vbus_5v0: regulator-otg2-vbus-5v0 {
-		compatible = "regulator-fixed";
-		gpio = <&gpio3 21 GPIO_ACTIVE_HIGH>;
-		enable-active-high;
-		regulator-name = "otg2-vbus-supply-5v0";
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		vin-supply = <&reg_mba6ul_5v0>;
-	};
-
-	reg_otg1vbus_5v0: regulator-otg1-vbus-5v0 {
-		compatible = "regulator-fixed";
-		gpio = <&gpio1 4 GPIO_ACTIVE_HIGH>;
-		enable-active-high;
-		regulator-name = "otg1-vbus-supply-5v0";
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		vin-supply = <&reg_mba6ul_5v0>;
-	};
-
-	reg_fec_3v3: regulator-fec-3v3 {
-		compatible = "regulator-fixed";
-		regulator-name = "fec-3v3";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		regulator-always-on;
-		vin-supply = <&reg_mba6ul_3v3>;
-	};
-
-	reg_mpcie: regulator-mpcie-1v5 {
-		compatible = "regulator-fixed";
-		pinctrl-names = "default";
-		regulator-name = "mpcie-1v5";
-		/* gpio = <&gpio1 3 GPIO_ACTIVE_HIGH>; */
-		enable-active-high;
-		regulator-min-microvolt = <1500000>;
-		regulator-max-microvolt = <1500000>;
-		vin-supply = <&reg_mba6ul_3v3>;
-	};
-};
-
-&fec1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_enet1>;
-	phy-mode = "rmii";
-	phy-handle = <&ethphy0>;
-	phy-supply = <&reg_fec_3v3>;
-	phy-reset-gpios = <&gpio3 9 GPIO_ACTIVE_LOW>;
-	phy-reset-duration = <26>;
-	status = "okay";
-};
-
-&fec2 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_enet2>;
-	phy-mode = "rmii";
-	phy-handle = <&ethphy1>;
-	phy-supply = <&reg_fec_3v3>;
-	phy-reset-gpios = <&gpio3 10 GPIO_ACTIVE_HIGH>;
-	phy-reset-duration = <26>;
-	status = "okay";
-
-	mdio {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		ethphy0: ethernet-phy@0 {
-			compatible = "ethernet-phy-ieee802.3-c22";
-			max-speed = <100>;
-			reg = <0>;
-			/* ToDo: check if following 2 lines are required */
-			clocks = <&clks IMX6UL_CLK_ENET_REF>;
-			clock-names = "rmii-ref";
-		};
-
-		ethphy1: ethernet-phy@1 {
-			compatible = "ethernet-phy-ieee802.3-c22";
-			max-speed = <100>;
-			reg = <1>;
-			/* ToDo: check if following 2 lines are required */
-			clocks = <&clks IMX6UL_CLK_ENET2_REF>;
-			clock-names = "rmii-ref";
-		};
-	};
-};
-
-&i2c3 {
-	clock-frequency = <100000>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c3>;
-	status = "okay";
-
-	expander_io: gpio-expander@20 {
-		compatible = "nxp,pca9554";
-		reg = <0x20>;
-		gpio-controller;
-		#gpio-cells = <2>;
-		status = "okay";
-	};
-
-	expander_in: gpio-expander@21 {
-		compatible = "nxp,pca9554";
-		reg = <0x21>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_expander_irq>;
-		interrupt-parent = <&gpio5>;
-		interrupts = <8 IRQ_TYPE_LEVEL_LOW>;
-		interrupt-controller;
-		#interrupt-cells = <2>;
-		gpio-controller;
-		#gpio-cells = <2>;
-		status = "okay";
-	};
-
-	expander_out: gpio-expander@22 {
-		compatible = "nxp,pca9554";
-		reg = <0x22>;
-		gpio-controller;
-		#gpio-cells = <2>;
-		status = "okay";
-	};
-
-
-	/* NXP SE97BTP with temperature sensor + eeprom */
-	jc42_1b: eeprom-temperature-sensor@1b {
-		compatible = "nxp,se97", "jedec,jc-42.4-temp";
-		reg = <0x1b>;
-		status = "okay";
-	};
-
-	se97_53: eeprom-temperature-sensor@53 {
-		compatible = "nxp,spd";
-		reg = <0x53>;
-		pagesize = <16>;
-		status = "okay";
-	};
-
-};
-
-
-&iomuxc {
-	pinctrl-names = "default";
-
-	pinctrl_i2c3: i2c3grp {
-		fsl,pins = <
-			MX6UL_PAD_LCD_DATA00__I2C3_SDA	0x4001b8b0
-			MX6UL_PAD_LCD_DATA01__I2C3_SCL	0x4001b8b0
-		>;
-	};
-
-	pinctrl_enet1: enet1grp {
-		fsl,pins = <
-			MX6UL_PAD_ENET1_RX_EN__ENET1_RX_EN	0x1b0b0
-			MX6UL_PAD_ENET1_RX_ER__ENET1_RX_ER	0x1b0b0
-			MX6UL_PAD_ENET1_RX_DATA0__ENET1_RDATA00	0x1b0b0
-			MX6UL_PAD_ENET1_RX_DATA1__ENET1_RDATA01	0x1b0b0
-			MX6UL_PAD_ENET1_TX_DATA0__ENET1_TDATA00	0x1b0b0
-			MX6UL_PAD_ENET1_TX_DATA1__ENET1_TDATA01	0x1b0b0
-			MX6UL_PAD_ENET1_TX_EN__ENET1_TX_EN	0x1b0b0
-			MX6UL_PAD_ENET1_TX_CLK__ENET1_REF_CLK1	0x4001b0a8
-		>;
-	};
-
-	pinctrl_enet2: enet2grp {
-		fsl,pins = <
-			MX6UL_PAD_ENET2_RX_EN__ENET2_RX_EN	0x1b0b0
-			MX6UL_PAD_ENET2_RX_ER__ENET2_RX_ER	0x1b0b0
-			MX6UL_PAD_ENET2_RX_DATA0__ENET2_RDATA00	0x1b0b0
-			MX6UL_PAD_ENET2_RX_DATA1__ENET2_RDATA01	0x1b0b0
-			MX6UL_PAD_ENET2_TX_DATA0__ENET2_TDATA00	0x1b0a0
-			MX6UL_PAD_ENET2_TX_DATA1__ENET2_TDATA01	0x1b0a0
-			MX6UL_PAD_ENET2_TX_EN__ENET2_TX_EN	0x1b0b0
-			MX6UL_PAD_ENET2_TX_CLK__ENET2_REF_CLK2	0x4001b0a8
-			/* mdio */
-			MX6UL_PAD_GPIO1_IO07__ENET2_MDC		0x1b0b0
-			MX6UL_PAD_GPIO1_IO06__ENET2_MDIO	0x1b0b0
-		>;
-	};
-
-	pinctrl_expander_irq: expanderirqgrp {
-		fsl,pins = <
-			MX6UL_PAD_SNVS_TAMPER8__GPIO5_IO08	0x1b0b1
-		>;
-	};
-
-	pinctrl_uart1: uart1grp {
-		fsl,pins = <
-			MX6UL_PAD_UART1_TX_DATA__UART1_DCE_TX	0x1b0b1
-			MX6UL_PAD_UART1_RX_DATA__UART1_DCE_RX	0x1b0b1
-		>;
-	};
-
-	pinctrl_usb_otg1: usbotg1grp {
-		fsl,pins = <
-			MX6UL_PAD_GPIO1_IO00__ANATOP_OTG1_ID	0x00017059
-			MX6UL_PAD_GPIO1_IO01__USB_OTG1_OC	0x0001b0b0
-			/* PWR */
-			MX6UL_PAD_GPIO1_IO04__GPIO1_IO04	0x0001b099
-		>;
-	};
-
-	pinctrl_usb_otg2: usbotg2grp {
-		fsl,pins = <
-			/* reset */
-			MX6UL_PAD_LCD_DATA16__GPIO3_IO21	0x0001b099
-		>;
-	};
-
-	pinctrl_usdhc1: usdhc1grp {
-		fsl,pins = <
-			MX6UL_PAD_SD1_CLK__USDHC1_CLK		0x00017069
-			MX6UL_PAD_SD1_CMD__USDHC1_CMD		0x00017059
-			MX6UL_PAD_SD1_DATA0__USDHC1_DATA0	0x00017059
-			MX6UL_PAD_SD1_DATA1__USDHC1_DATA1	0x00017059
-			MX6UL_PAD_SD1_DATA2__USDHC1_DATA2	0x00017059
-			MX6UL_PAD_SD1_DATA3__USDHC1_DATA3	0x00017059
-			/* CD */
-			MX6UL_PAD_UART1_RTS_B__GPIO1_IO19		0x0001b099
-		>;
-	};
-
-	pinctrl_usdhc1_100mhz: usdhc1grp100mhz {
-		fsl,pins = <
-			MX6UL_PAD_SD1_CLK__USDHC1_CLK		0x00017069
-			MX6UL_PAD_SD1_CMD__USDHC1_CMD		0x000170b9
-			MX6UL_PAD_SD1_DATA0__USDHC1_DATA0	0x000170b9
-			MX6UL_PAD_SD1_DATA1__USDHC1_DATA1	0x000170b9
-			MX6UL_PAD_SD1_DATA2__USDHC1_DATA2	0x000170b9
-			MX6UL_PAD_SD1_DATA3__USDHC1_DATA3	0x000170b9
-			/* CD */
-			MX6UL_PAD_UART1_RTS_B__GPIO1_IO19		0x0001b099
-		>;
-	};
-
-	pinctrl_usdhc1_200mhz: usdhc1grp200mhz {
-		fsl,pins = <
-			MX6UL_PAD_SD1_CLK__USDHC1_CLK		0x00017069
-			MX6UL_PAD_SD1_CMD__USDHC1_CMD		0x000170f9
-			MX6UL_PAD_SD1_DATA0__USDHC1_DATA0	0x000170f9
-			MX6UL_PAD_SD1_DATA1__USDHC1_DATA1	0x000170f9
-			MX6UL_PAD_SD1_DATA2__USDHC1_DATA2	0x000170f9
-			MX6UL_PAD_SD1_DATA3__USDHC1_DATA3	0x000170f9
-			/* CD */
-			MX6UL_PAD_UART1_RTS_B__GPIO1_IO19		0x0001b099
-		>;
-	};
-
-	pinctrl_wdog1: wdog1grp {
-		fsl,pins = <
-			MX6UL_PAD_GPIO1_IO08__WDOG1_WDOG_B	0x0001b099
-		>;
-	};
-};
-
-&uart1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart1>;
-	status = "okay";
-};
-
-/* otg-port */
-&usbotg1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usb_otg1>;
-	vbus-supply = <&reg_otg1vbus_5v0>;
-	dr_mode = "otg";
-	status = "okay";
-};
-
-/* 7-port usb hub */
-/* id, pwr, oc pins not connected */
-&usbotg2 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usb_otg2>;
-	disable-over-current;
-	vbus-supply = <&reg_otg2vbus_5v0>;
-	dr_mode = "host";
-	status = "okay";
-};
-
-&usdhc1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usdhc1>;
-	cd-gpios = <&gpio1 19 GPIO_ACTIVE_LOW>;
-	disable-wp;
-	bus-width = <4>;
-	vmmc-supply = <&reg_mba6ul_3v3>;
-	vqmmc-supply = <&reg_vccsd>;
-	no-1-8-v;
-	status = "okay";
-};
-
-&wdog1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_wdog1>;
-	fsl,ext-reset-output;
-	status = "okay";
-};
diff --git a/arch/arm/dts/imx6ul-mba6ulx.dts b/arch/arm/dts/imx6ul-tqma6ul-common.dtsi
similarity index 96%
rename from arch/arm/dts/imx6ul-mba6ulx.dts
rename to arch/arm/dts/imx6ul-tqma6ul-common.dtsi
index e2ed694ff9..64f1ee253c 100644
--- a/arch/arm/dts/imx6ul-mba6ulx.dts
+++ b/arch/arm/dts/imx6ul-tqma6ul-common.dtsi
@@ -1,14 +1,9 @@
-
 // SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
 /*
  * Copyright 2021 Pengutronix e.K.
  * Author: Rouven Czerwinski
  */
 
-/dts-v1/;
-
-#include "imx6ul-mba6ulx.dtsi"
-
 / {
 	chosen {
 		environment-sd {
diff --git a/arch/arm/dts/imx6ul-tqma6ul2-mba6ulx.dts b/arch/arm/dts/imx6ul-tqma6ul2-mba6ulx.dts
new file mode 100644
index 0000000000..2d49c0e763
--- /dev/null
+++ b/arch/arm/dts/imx6ul-tqma6ul2-mba6ulx.dts
@@ -0,0 +1,4 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+
+#include <arm/nxp/imx/imx6ul-tqma6ul2l-mba6ulx.dts>
+#include "imx6ul-tqma6ul-common.dtsi"
diff --git a/arch/arm/dts/imx6ul-tqma6ul2l-mba6ulx.dts b/arch/arm/dts/imx6ul-tqma6ul2l-mba6ulx.dts
new file mode 100644
index 0000000000..2d49c0e763
--- /dev/null
+++ b/arch/arm/dts/imx6ul-tqma6ul2l-mba6ulx.dts
@@ -0,0 +1,4 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+
+#include <arm/nxp/imx/imx6ul-tqma6ul2l-mba6ulx.dts>
+#include "imx6ul-tqma6ul-common.dtsi"
diff --git a/arch/arm/dts/imx6ull-tqma6ull2-mba6ulx.dts b/arch/arm/dts/imx6ull-tqma6ull2-mba6ulx.dts
new file mode 100644
index 0000000000..20eb7a7c1d
--- /dev/null
+++ b/arch/arm/dts/imx6ull-tqma6ull2-mba6ulx.dts
@@ -0,0 +1,4 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+
+#include <arm/nxp/imx/imx6ull-tqma6ull2-mba6ulx.dts>
+#include "imx6ul-tqma6ul-common.dtsi"
diff --git a/arch/arm/dts/imx6ull-tqma6ull2l-mba6ulx.dts b/arch/arm/dts/imx6ull-tqma6ull2l-mba6ulx.dts
new file mode 100644
index 0000000000..58df3349c7
--- /dev/null
+++ b/arch/arm/dts/imx6ull-tqma6ull2l-mba6ulx.dts
@@ -0,0 +1,4 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+
+#include <arm/nxp/imx/imx6ull-tqma6ull2l-mba6ulx.dts>
+#include "imx6ul-tqma6ul-common.dtsi"
diff --git a/arch/arm/dts/tqma6ul-common.dtsi b/arch/arm/dts/tqma6ul-common.dtsi
deleted file mode 100644
index 92b295891c..0000000000
--- a/arch/arm/dts/tqma6ul-common.dtsi
+++ /dev/null
@@ -1,191 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
-/*
- * Copyright 2018 TQ Systems GmbH
- * Author: Markus Niebel <Markus.Niebel@tq-group.com>
- */
-
-&cpu0 {
-	arm-supply = <&reg_arm>;
-	soc-supply = <&reg_soc>;
-};
-
-&i2c4 {
-	clock-frequency = <100000>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c4>;
-	status = "okay";
-
-	pfuze3000: pmic@8 {
-		compatible = "fsl,pfuze3000";
-		reg = <0x08>;
-
-		regulators {
-			reg_sw1a: sw1a {
-				regulator-min-microvolt = <700000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-boot-on;
-				regulator-ramp-delay = <6250>;
-				/* not used */
-			};
-
-			reg_sw1b_core: sw1b {
-				regulator-min-microvolt = <700000>;
-				regulator-max-microvolt = <1475000>;
-				regulator-boot-on;
-				regulator-always-on;
-				regulator-ramp-delay = <6250>;
-			};
-
-			reg_sw2: sw2 {
-				regulator-min-microvolt = <2500000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-boot-on;
-			};
-
-			reg_sw3_ddr: sw3 {
-				regulator-min-microvolt = <900000>;
-				regulator-max-microvolt = <1650000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			reg_swbst: swbst {
-				regulator-min-microvolt = <5000000>;
-				regulator-max-microvolt = <5150000>;
-				/* not used */
-			};
-
-			reg_snvs_3v0: vsnvs {
-				regulator-min-microvolt = <1000000>;
-				regulator-max-microvolt = <3000000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			reg_vrefddr: vrefddr {
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			reg_vccsd: vccsd {
-				regulator-min-microvolt = <2850000>;
-				regulator-max-microvolt = <3300000>;
-			};
-
-			reg_v33_3v3: v33 {
-				regulator-min-microvolt = <2850000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-always-on;
-			};
-
-			reg_vldo1_3v3: vldo1 {
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-boot-on;
-				/* not used */
-			};
-
-			reg_vldo2: vldo2 {
-				regulator-min-microvolt = <800000>;
-				regulator-max-microvolt = <1550000>;
-				regulator-boot-on;
-				/* not used */
-			};
-
-			reg_vldo3: vldo3 {
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-boot-on;
-				/* not used */
-			};
-
-			reg_vldo4: vldo4 {
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-				regulator-fixed;
-				regulator-always-on;
-			};
-		};
-	};
-
-	jc42_1a: eeprom-temperature-sensor@1a {
-		compatible = "nxp,se97", "jedec,jc-42.4-temp";
-		reg = <0x1a>;
-		status = "okay";
-	};
-
-	m24c64_50: eeprom@50 {
-		compatible = "atmel,24c64";
-		reg = <0x50>;
-		pagesize = <32>;
-		status = "okay";
-	};
-
-	m24c02_52: eeprom@52 {
-		compatible = "atmel,24c02";
-		reg = <0x52>;
-		pagesize = <16>;
-		status = "okay";
-	};
-
-	rtc1: rtc@68 {
-		compatible = "dallas,ds1339";
-		reg = <0x68>;
-		status = "okay";
-	};
-};
-
-&iomuxc {
-	pinctrl_i2c4: i2c4grp {
-		fsl,pins = <
-			MX6UL_PAD_UART2_TX_DATA__I2C4_SCL	0x4001b8b0
-			MX6UL_PAD_UART2_RX_DATA__I2C4_SDA	0x4001b8b0
-		>;
-	};
-
-	/*
-	 * currently not used, potentially dangerous if used on
-	 * baseboard
-	 */
-	pinctrl_pmic: pmic {
-		fsl,pins = <
-			/* PMIC irq */
-			MX6UL_PAD_CSI_DATA03__GPIO4_IO24	0x1b099
-		>;
-	};
-};
-
-&qspi {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_qspi>;
-	status = "okay";
-
-	flash0: spinor@0 {
-		#address-cells = <1>;
-		#size-cells = <1>;
-		compatible = "jedec,spi-nor";
-		spi-max-frequency = <33000000>;
-		spi-rx-bus-width = <4>;
-		spi-tx-bus-width = <4>;
-		reg = <0>;
-	};
-};
-
-&snvs_rtc {
-	status = "disabled";
-};
-
-/* eMMC */
-&usdhc2 {
-	pinctrl-names = "default", "state_100mhz" , "state_200mhz";
-	pinctrl-0 = <&pinctrl_usdhc2>;
-	pinctrl-1 = <&pinctrl_usdhc2_100mhz>;
-	pinctrl-2 = <&pinctrl_usdhc2_200mhz>;
-
-	bus-width = <8>;
-	disable-wp;
-	non-removable;
-	no-sdio;
-	no-sd;
-	status = "okay";
-};
diff --git a/arch/arm/dts/tqma6ulx-common.dtsi b/arch/arm/dts/tqma6ulx-common.dtsi
deleted file mode 100644
index 3e398d25ad..0000000000
--- a/arch/arm/dts/tqma6ulx-common.dtsi
+++ /dev/null
@@ -1,28 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
-/*
- * Copyright 2018 TQ Systems GmbH
- * Author: Markus Niebel <Markus.Niebel@tq-group.com>
- */
-
-&iomuxc {
-	pinctrl_qspi: qspigrp {
-		fsl,pins = <
-			MX6UL_PAD_NAND_WP_B__QSPI_A_SCLK      0x70b9
-			MX6UL_PAD_NAND_READY_B__QSPI_A_DATA00 0x70b9
-			MX6UL_PAD_NAND_CE0_B__QSPI_A_DATA01   0x70b9
-			MX6UL_PAD_NAND_CE1_B__QSPI_A_DATA02   0x70b9
-			MX6UL_PAD_NAND_CLE__QSPI_A_DATA03     0x70b9
-			MX6UL_PAD_NAND_DQS__QSPI_A_SS0_B      0x70a1
-		>;
-	};
-};
-
-&reg_sw2 {
-	regulator-always-on;
-};
-
-/* eMMC */
-&usdhc2 {
-	vmmc-supply = <&reg_sw2>;
-	vqmmc-supply = <&reg_vldo4>;
-};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index f7b1d88dd6..d585aa0485 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -500,6 +500,9 @@ config MACH_TQMA6UL
 	bool "TQ tqma6ul on mba6ulx"
 	select ARCH_IMX6UL
 	select ARM_USE_COMPRESSED_DTB
+	select BOARD_TQ
+	select I2C
+	select I2C_IMX_EARLY
 
 config MACH_VARISCITE_MX6
 	bool "Variscite i.MX6 Quad SOM"
-- 
2.39.2



