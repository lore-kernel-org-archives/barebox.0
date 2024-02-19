Delivery-date: Mon, 19 Feb 2024 14:34:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc3mo-00EZWV-2S
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 14:34:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc3mn-0002BX-Ig
	for lore@pengutronix.de; Mon, 19 Feb 2024 14:34:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7ut5meoCkfUbl9YHtpiIoIlTCljZFHtiOlpZ+hYJ+E4=; b=iAr9zyDIkkOWdCItaBxHOuJL/5
	CP8RB9NyirG6SVR27WuYr5684QDi5yOxBhyPoV/TXUn0dFgfgFX9cKRAyaCxm+Jk4YnM+b9Zl4Sm4
	rkQ+dBtI2fN0x70uZK+Jfr278Fd1cTvCBwsIhAk0JGqZDbdL57rRlgXZd1Q262UZFddqdwTrbUL9N
	urvAihtVT0jghp+bGOgL9HGgeJFtyFc6q64NRxKRGRrNXOUjrPjqZFEyhL5gbQ3aSa3CJ7ZnNLo8d
	F5FcS1aW4b7j2KQAGC4/WNciYLUiXWexZi9BCJQoksu46X3tkCs6dAn1ACrLdy9eigk0fg3R96yKD
	8l/uI1dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3mJ-0000000AdvO-0Vzp;
	Mon, 19 Feb 2024 13:33:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3mB-0000000AduQ-1pTr
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 13:33:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3mA-0001kN-8d; Mon, 19 Feb 2024 14:33:42 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3m9-001f0Z-SQ; Mon, 19 Feb 2024 14:33:41 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3m9-00GGso-2U;
	Mon, 19 Feb 2024 14:33:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 19 Feb 2024 14:33:40 +0100
Message-Id: <20240219133340.3873032-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_053343_840419_2766BC76 
X-CRM114-Status: GOOD (  18.30  )
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
Subject: [PATCH] ARM: Layerscape: TQMLS1046a: switch to upstream DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The existing DT was added alongside board support in v2019.05.0.
The board gained an upstream DT in Linux v6.7-rc1, which was pulled
as part of v2023.12.0. So let's drop our copy to avoid duplication.

This change will introduce user noticeable differences:

  - barebox compatible, which is also used to match kernel DT, changes
  - hostname changes as it's generated from DT compatible

This is deemed acceptable as it aligns us with the upstream DT.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/tqmls1046a/board.c            |   4 +-
 arch/arm/boards/tqmls1046a/lowlevel.c         |   4 +-
 arch/arm/dts/Makefile                         |   2 +-
 .../dts/fsl-ls1046a-tqmls1046a-mbls10xxa.dts  |  68 ++++
 arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts     | 364 ------------------
 arch/arm/dts/fsl-tqmls1046a.dtsi              |  54 ---
 6 files changed, 73 insertions(+), 423 deletions(-)
 create mode 100644 arch/arm/dts/fsl-ls1046a-tqmls1046a-mbls10xxa.dts
 delete mode 100644 arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts
 delete mode 100644 arch/arm/dts/fsl-tqmls1046a.dtsi

diff --git a/arch/arm/boards/tqmls1046a/board.c b/arch/arm/boards/tqmls1046a/board.c
index cc12b68bc469..36bcae6bc005 100644
--- a/arch/arm/boards/tqmls1046a/board.c
+++ b/arch/arm/boards/tqmls1046a/board.c
@@ -17,7 +17,7 @@ static int tqmls1046a_mem_init(void)
 {
 	int ret;
 
-	if (!of_machine_is_compatible("tqc,tqmls1046a"))
+	if (!of_machine_is_compatible("tq,ls1046a-tqmls1046a"))
 		return 0;
 
 	arm_add_mem_device("ram0", 0x80000000, SZ_2G);
@@ -36,7 +36,7 @@ static int tqmls1046a_postcore_init(void)
 	enum bootsource bootsource;
 	unsigned long sd_bbu_flags = 0, qspi_bbu_flags = 0;
 
-	if (!of_machine_is_compatible("tqc,tqmls1046a"))
+	if (!of_machine_is_compatible("tq,ls1046a-tqmls1046a"))
 		return 0;
 
 	defaultenv_append_directory(defaultenv_tqmls1046a);
diff --git a/arch/arm/boards/tqmls1046a/lowlevel.c b/arch/arm/boards/tqmls1046a/lowlevel.c
index 6a5ad1f83a37..4a1496078a61 100644
--- a/arch/arm/boards/tqmls1046a/lowlevel.c
+++ b/arch/arm/boards/tqmls1046a/lowlevel.c
@@ -90,7 +90,7 @@ static struct fsl_ddr_controller ddrc[] = {
 	},
 };
 
-extern char __dtb_z_fsl_tqmls1046a_mbls10xxa_start[];
+extern char __dtb_z_fsl_ls1046a_tqmls1046a_mbls10xxa_start[];
 
 static noinline __noreturn void tqmls1046a_r_entry(void)
 {
@@ -98,7 +98,7 @@ static noinline __noreturn void tqmls1046a_r_entry(void)
 
 	if (get_pc() >= membase)
 		barebox_arm_entry(membase, 0x80000000 - SZ_64M,
-				  __dtb_z_fsl_tqmls1046a_mbls10xxa_start);
+				  __dtb_z_fsl_ls1046a_tqmls1046a_mbls10xxa_start);
 
 	arm_cpu_lowlevel_init();
 	ls1046a_init_lowlevel();
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 7e5de825f580..61ab64bec2b4 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -217,7 +217,7 @@ lwl-$(CONFIG_MACH_ZII_IMX7D_DEV) += imx7d-zii-rpu2.dtb.o imx7d-zii-rmu2.dtb.o
 lwl-$(CONFIG_MACH_WAGO_PFC_AM35XX) += am35xx-pfc-750_820x.dtb.o
 lwl-$(CONFIG_MACH_LS1028ARDB) += fsl-ls1028a-rdb.dtb.o
 lwl-$(CONFIG_MACH_LS1046ARDB) += fsl-ls1046a-rdb.dtb.o
-lwl-$(CONFIG_MACH_TQMLS1046A) += fsl-tqmls1046a-mbls10xxa.dtb.o
+lwl-$(CONFIG_MACH_TQMLS1046A) += fsl-ls1046a-tqmls1046a-mbls10xxa.dtb.o
 lwl-$(CONFIG_MACH_LS1021AIOT) += fsl-ls1021a-iot.dtb.o
 lwl-$(CONFIG_MACH_ZEDBOARD) += zynq-zed.dtb.o
 lwl-$(CONFIG_MACH_MNT_REFORM) += imx8mq-mnt-reform2.dtb.o
diff --git a/arch/arm/dts/fsl-ls1046a-tqmls1046a-mbls10xxa.dts b/arch/arm/dts/fsl-ls1046a-tqmls1046a-mbls10xxa.dts
new file mode 100644
index 000000000000..787a85394c8a
--- /dev/null
+++ b/arch/arm/dts/fsl-ls1046a-tqmls1046a-mbls10xxa.dts
@@ -0,0 +1,68 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Device Tree file for TQMLS1046A SoM on MBLS10xxA from TQ
+ */
+
+/dts-v1/;
+
+#include <arm64/freescale/fsl-ls1046a-tqmls1046a-mbls10xxa.dts>
+#include "fsl-ls1046a.dtsi"
+
+/ {
+	chosen {
+		environment-sd {
+			compatible = "barebox,environment";
+			device-path = &environment_sd;
+			status = "disabled";
+		};
+
+		environment-qspi {
+			compatible = "barebox,environment";
+			device-path = &environment_qspi;
+			status = "disabled";
+		};
+	};
+};
+
+&esdhc {
+	partitions {
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		compatible = "fixed-partitions";
+
+		partition@1000 {
+			label = "barebox";
+			reg = <0x1000 0xdf000>;
+		};
+
+		environment_sd: partition@e0000 {
+			label = "barebox-environment";
+			reg = <0xe0000 0x20000>;
+		};
+	};
+};
+
+&qflash0 {
+	partitions {
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		compatible = "fixed-partitions";
+
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0x200000>;
+		};
+
+		environment_qspi: partition@200000 {
+			label = "barebox-environment";
+			reg = <0x200000 0x80000>;
+		};
+
+		partition@280000 {
+			label = "data";
+			reg = <0x280000 0x0>;
+		};
+	};
+};
diff --git a/arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts b/arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts
deleted file mode 100644
index 650e89bffe8a..000000000000
--- a/arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts
+++ /dev/null
@@ -1,364 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
-/*
- * Device Tree Include file for TQMLS1046A SoM on MBLS10xxA from TQ
- *
- * Copyright 2018 TQ-Systems GmbH
- */
-
-/dts-v1/;
-
-#include <dt-bindings/input/input.h>
-#include <dt-bindings/gpio/gpio.h>
-
-#include "fsl-tqmls1046a.dtsi"
-#include "fsl-ls1046a.dtsi"
-
-/ {
-	model = "TQ TQMLS1046A SoM on MBLS10xxA board";
-	compatible = "tqc,tqmls1046a", "fsl,ls1046a";
-
-	aliases {
-		serial0 = &duart0;
-		serial1 = &duart1;
-		qspiflash0 = &qflash0;
-		qspiflash1 = &qflash1;
-		qsgmii_s1_p1 = &qsgmii1_phy1;
-		qsgmii_s1_p2 = &qsgmii1_phy2;
-		qsgmii_s2_p1 = &qsgmii2_phy1;
-		qsgmii_s2_p2 = &qsgmii2_phy2;
-		qsgmii_s2_p3 = &qsgmii2_phy3;
-		qsgmii_s2_p4 = &qsgmii2_phy4;
-	};
-
-	chosen {
-		stdout-path = "serial1:115200n8";
-
-		environment-sd {
-			compatible = "barebox,environment";
-			device-path = &environment_sd;
-			status = "disabled";
-		};
-
-		environment-qspi {
-			compatible = "barebox,environment";
-			device-path = &environment_qspi;
-			status = "disabled";
-		};
-	};
-
-	gpio-keys-polled {
-		compatible = "gpio-keys-polled";
-		gpio-keys,name = "gpio-keys";
-		poll-interval = <100>;
-		autorepeat;
-
-		button0 {
-			label = "button0";
-			gpios = <&gpioexp3 5 GPIO_ACTIVE_LOW>;
-			linux,code = <KEY_F1>;
-		};
-
-		button1 {
-			label = "button1";
-			gpios = <&gpioexp3 6 GPIO_ACTIVE_LOW>;
-			linux,code = <KEY_F2>;
-		};
-	};
-
-	leds {
-		compatible = "gpio-leds";
-
-		user {
-			gpios = <&gpioexp3 13 GPIO_ACTIVE_LOW>;
-			label = "led:user";
-			linux,default-trigger = "heartbeat";
-		};
-	};
-
-};
-
-&esdhc {
-	partitions {
-		#address-cells = <1>;
-		#size-cells = <1>;
-
-		compatible = "fixed-partitions";
-
-		partition@1000 {
-			label = "barebox";
-			reg = <0x1000 0xdf000>;
-		};
-
-		environment_sd: partition@e0000 {
-			label = "barebox-environment";
-			reg = <0xe0000 0x20000>;
-		};
-	};
-};
-
-&duart0 {
-	status = "okay";
-};
-
-&duart1 {
-	status = "okay";
-};
-
-&esdhc {
-	mmc-hs200-1_8v;
-	sd-uhs-sdr104;
-	sd-uhs-sdr50;
-	sd-uhs-sdr25;
-	sd-uhs-sdr12;
-};
-
-&i2c3 {
-	status = "okay";
-
-	i2c-mux@70 {
-		compatible = "nxp,pca9544";
-		reg = <0x70>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		i2c@0 {
-			#address-cells = <1>;
-			#size-cells = <0>;
-			reg = <0x0>;
-
-			gpioexp1: pca9555@20 {
-				compatible = "nxp,pca9555";
-				reg = <0x20>;
-				gpio-controller;
-				#gpio-cells = <2>;
-				gpio-line-names = "sd1_3_lane_a_mux",
-						  "sd1_2_lane_b_mux",
-						  "sd1_0_lane_d_mux",
-						  "sd2_1_lane_b_mux",
-						  "sd2_3_lane_d_mux1",
-						  "sd2_3_lane_d_mux2",
-						  "sd_mux_shdn",
-						  "sd1_ref_clk2_sel",
-						  "mpcie1_disable_n",
-						  "mpcie1_wake_n",
-						  "mpcie2_disable_n",
-						  "mpcie2_wake_n",
-						  "prsnt_n",
-						  "pcie_pwr_en",
-						  "dcdc_pwr_en",
-						  "dcdc_pgood_1v8";
-			};
-
-			gpioexp2: pca9555@21 {
-				compatible = "nxp,pca9555";
-				reg = <0x21>;
-				gpio-controller;
-				#gpio-cells = <2>;
-				gpio-line-names = "xfi1_tx_dis",
-						  "xfi1_tx_fault",
-						  "xfi1_moddef_det",
-						  "xfi1_rx_loss",
-						  "retimer1_loss",
-						  "xfi1_ensmb",
-						  "qsgmii1_clk_sel0",
-						  "qsgmii_phy1_config3",
-						  "xfi2_tx_fault",
-						  "xfi2_tx_dis",
-						  "xfi2_moddef_det",
-						  "xfi2_rx_loss",
-						  "retimer2_loss",
-						  "xfi2_ensmb",
-						  "qsgmii2_clk_sel0",
-						  "qsgmii_phy2_config3";
-			};
-
-			gpioexp3: pca9555@22 {
-				compatible = "nxp,pca9555";
-				reg = <0x22>;
-				gpio-controller;
-				#gpio-cells = <2>;
-				gpio-line-names = "ec1_phy_pwdn",
-						  "ec2_phy_pwdn",
-						  "usb_c_pwron",
-						  "usb_en_oc_3v3_n",
-						  "usb_h_grst_n",
-						  "gpio_button0",
-						  "gpio_button1",
-						  "sda_pwr_en",
-						  "qsgmii_phy1_int_n",
-						  "qsgmii_phy2_int_n",
-						  "spi_clko_sof",
-						  "spi_int",
-						  "can_sel",
-						  "led_n",
-						  "pcie_rst_3v3_n",
-						  "pcie_wake_3v3_n";
-			};
-		};
-
-		i2c@1 {
-			#address-cells = <1>;
-			#size-cells = <0>;
-			reg = <0x1>;
-		};
-
-		i2c@2 {
-			#address-cells = <1>;
-			#size-cells = <0>;
-			reg = <0x2>;
-		};
-
-		i2c@3 {
-			#address-cells = <1>;
-			#size-cells = <0>;
-			reg = <0x3>;
-		};
-	};
-};
-
-&usb1 {
-	dr_mode = "otg";
-};
-
-#include <arm64/freescale/fsl-ls1046-post.dtsi>
-#include <dt-bindings/net/ti-dp83867.h>
-
-&fman0 {
-	status = "okay";
-};
-
-&enet0 { /* EMAC.1 */
-	phy-connection-type = "sgmii";
-};
-
-&enet1 { /* EMAC.2 */
-	phy-connection-type = "sgmii";
-};
-
-&enet2 { /* EMAC.3 */
-	phy-handle = <&rgmii_phy1>;
-	phy-connection-type = "rgmii";
-	phy-mode = "rgmii-id";
-};
-
-&enet3 { /* EMAC.4 */
-	phy-handle = <&rgmii_phy2>;
-	phy-connection-type = "rgmii";
-	phy-mode = "rgmii-id";
-};
-
-&enet4 { /* EMAC.5 */
-	phy-connection-type = "sgmii";
-};
-
-&enet5 { /* EMAC.6 */
-	phy-connection-type = "sgmii";
-};
-
-&enet6 { /* EMAC.9 */
-	phy-connection-type = "sgmii";
-};
-
-&enet7 { /* EMAC.10 */
-	phy-connection-type = "sgmii";
-};
-
-&{fman0/mdio@e1000} {
-	status = "disabled";
-};
-
-&{fman0/mdio@e3000} {
-	status = "disabled";
-};
-
-&{fman0/mdio@e5000} {
-	status = "disabled";
-};
-
-&{fman0/mdio@e7000} {
-	status = "disabled";
-};
-
-&{fman0/mdio@e9000} {
-	status = "disabled";
-};
-
-&{fman0/mdio@eb000} {
-	status = "disabled";
-};
-
-&{fman0/mdio@f1000} {
-	status = "disabled";
-};
-
-&{fman0/mdio@f3000} {
-	status = "disabled";
-};
-
-&mdio0 {
-	rgmii_phy1: ethernet-phy@0e {
-		reg = <0x0e>;
-		ti,rx-internal-delay = <DP83867_RGMIIDCTL_1_50_NS>;
-		ti,tx-internal-delay = <DP83867_RGMIIDCTL_1_50_NS>;
-		ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_8_B_NIB>;
-	};
-
-	rgmii_phy2: ethernet-phy@0c {
-		reg = <0x0c>;
-		ti,rx-internal-delay = <DP83867_RGMIIDCTL_1_50_NS>;
-		ti,tx-internal-delay = <DP83867_RGMIIDCTL_1_50_NS>;
-		ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_8_B_NIB>;
-	};
-
-	qsgmii1_phy1: ethernet-phy@1c {
-		reg = <0x1c>;
-	};
-
-	qsgmii1_phy2: ethernet-phy@1d {
-		reg = <0x1d>;
-	};
-
-	qsgmii2_phy1: ethernet-phy@00 {
-		reg = <0x00>;
-	};
-
-	qsgmii2_phy2: ethernet-phy@01 {
-		reg = <0x01>;
-	};
-
-	qsgmii2_phy3: ethernet-phy@02 {
-		reg = <0x02>;
-	};
-
-	qsgmii2_phy4: ethernet-phy@03 {
-		reg = <0x03>;
-	};
-};
-
-&xmdio0 {
-	status = "disabled";
-};
-
-&qflash0 {
-	partitions {
-		#address-cells = <1>;
-		#size-cells = <1>;
-
-		compatible = "fixed-partitions";
-
-		partition@0 {
-			label = "barebox";
-			reg = <0x0 0x200000>;
-		};
-
-		environment_qspi: partition@200000 {
-			label = "barebox-environment";
-			reg = <0x200000 0x80000>;
-		};
-
-		partition@280000 {
-			label = "data";
-			reg = <0x280000 0x0>;
-		};
-	};
-};
diff --git a/arch/arm/dts/fsl-tqmls1046a.dtsi b/arch/arm/dts/fsl-tqmls1046a.dtsi
deleted file mode 100644
index 0ea2612cbf34..000000000000
--- a/arch/arm/dts/fsl-tqmls1046a.dtsi
+++ /dev/null
@@ -1,54 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
-/*
- * Device Tree Include file for LS1046A based SoM of TQ
- *
- * Copyright 2018 TQ-Systems GmbH
- */
-
-#include <arm64/freescale/fsl-ls1046a.dtsi>
-
-&i2c0 {
-	status = "okay";
-
-	temp-sensor@18 {
-		compatible = "jc42";
-		reg = <0x18>;
-	};
-
-	eeprom@50 {
-		compatible = "atmel,24c02";
-		reg = <0x50>;
-	};
-
-	rtc@51 {
-		compatible = "nxp,pcf85063";
-		reg = <0x51>;
-	};
-
-	eeprom@57 {
-		compatible = "atmel,24c256";
-		reg = <0x57>;
-	};
-};
-
-&qspi {
-	num-cs = <2>;
-	bus-num = <0>;
-	status = "okay";
-
-	qflash0: mx66u51235f@0 {
-		#address-cells = <1>;
-		#size-cells = <1>;
-		compatible = "jedec,spi-nor";
-		spi-max-frequency = <62500000>;
-		reg = <0>;
-	};
-
-	qflash1: mx66u51235f@1 {
-		#address-cells = <1>;
-		#size-cells = <1>;
-		compatible = "jedec,spi-nor";
-		spi-max-frequency = <62500000>;
-		reg = <1>;
-	};
-};
-- 
2.39.2



