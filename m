Delivery-date: Wed, 06 Jul 2022 16:22:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o95vS-007nRL-WD
	for lore@lore.pengutronix.de; Wed, 06 Jul 2022 16:22:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o95vU-0007yR-Ms
	for lore@pengutronix.de; Wed, 06 Jul 2022 16:22:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WmaOh9s/OjC5B3p6M+HdONwN3ol87fHeiVlXxdWKLz4=; b=wnkUQnSI/xMj1J3mBgJ20667DT
	3PzQA5t58iEu6qP2oet7fVtl5MABVM7lN7YLc10XgAwrRtH9/n6m3IohWAyq9MLx8TUwdhk5DFupp
	2lFvSa2b7U0ZjOBi/4jvZtGmSfd6ZXll27QpMX20NabzzrdYk0Gy3KGCvWm2qL8sxfXEDQWwYPNgv
	m96Su9Z/42eo2OJq81exzhqtMkIqy9pBH3sKoUd/5AN1f/ULcqaTupjNnzbrqLLRj0j++zf3DvpYV
	tUH+UNNA3+BsxI7nsa70w/s9m2o5JpX0uPwtcW5zeUnkPj8ASMxzp45N/LF+XDvjKS1IQl4P/BpJ9
	ON+sQhkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o95uA-00Ab2T-6t; Wed, 06 Jul 2022 14:21:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o95tu-00AawB-NV
	for barebox@lists.infradead.org; Wed, 06 Jul 2022 14:21:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1o95tt-0007cV-IN
	for barebox@lists.infradead.org; Wed, 06 Jul 2022 16:21:09 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1o95tp-004mET-Am
	for barebox@lists.infradead.org; Wed, 06 Jul 2022 16:21:08 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1o95tr-009WdR-Kf
	for barebox@lists.infradead.org; Wed, 06 Jul 2022 16:21:07 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  6 Jul 2022 16:21:05 +0200
Message-Id: <20220706142105.2266956-5-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220706142105.2266956-1-m.felsch@pengutronix.de>
References: <20220706142105.2266956-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_072111_006254_8EA8F0D7 
X-CRM114-Status: GOOD (  23.97  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/4] ARM: i.MX8MN: pass along correct DT depending on variant
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

We support two different i.MX8MN variants of the i.MX8MN-EVK:
One with LPDDR4 and another with DDR4, each with a different PMIC.
The PMICs are at different i2c addresses, which allows us to
differentiate between the variants in PBL, but in barebox proper, we use
the same DT for both. Fix that, so we run with a device tree that
reflects the actual hardware. This allows us to apply the esdctl
quirk selectively too.

Tested on the DDR4 variant (Marco)

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
m.felsch@pengutronix.de: added deep-probe
m.felsch@pengutronix.de: rebased on next
Tested-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mn-evk/board.c    | 21 ++++--
 arch/arm/boards/nxp-imx8mn-evk/lowlevel.c | 13 +++-
 arch/arm/dts/Makefile                     |  2 +-
 arch/arm/dts/imx8mn-ddr4-evk.dts          |  6 ++
 arch/arm/dts/imx8mn-evk.dts               | 84 +----------------------
 arch/arm/dts/imx8mn-evk.dtsi              | 83 ++++++++++++++++++++++
 6 files changed, 117 insertions(+), 92 deletions(-)
 create mode 100644 arch/arm/dts/imx8mn-ddr4-evk.dts
 create mode 100644 arch/arm/dts/imx8mn-evk.dtsi

diff --git a/arch/arm/boards/nxp-imx8mn-evk/board.c b/arch/arm/boards/nxp-imx8mn-evk/board.c
index 3c478d5f70..3606dabe9d 100644
--- a/arch/arm/boards/nxp-imx8mn-evk/board.c
+++ b/arch/arm/boards/nxp-imx8mn-evk/board.c
@@ -5,6 +5,7 @@
 
 #include <bootsource.h>
 #include <common.h>
+#include <deep-probe.h>
 #include <init.h>
 #include <linux/phy.h>
 #include <linux/sizes.h>
@@ -30,14 +31,11 @@ static int ar8031_phy_fixup(struct phy_device *phydev)
 	return 0;
 }
 
-static int nxp_imx8mn_evk_init(void)
+static int imx8mn_evk_probe(struct device_d *dev)
 {
 	int emmc_bbu_flag = 0;
 	int sd_bbu_flag = 0;
 
-	if (!of_machine_is_compatible("fsl,imx8mn-evk"))
-		return 0;
-
 	if (bootsource_get() == BOOTSOURCE_MMC) {
 		if (bootsource_get_instance() == 2) {
 			of_device_enable_path("/chosen/environment-emmc");
@@ -59,4 +57,17 @@ static int nxp_imx8mn_evk_init(void)
 
 	return 0;
 }
-coredevice_initcall(nxp_imx8mn_evk_init);
+
+static const struct of_device_id imx8mn_evk_of_match[] = {
+	{ .compatible = "fsl,imx8mn-evk" },
+	{ .compatible = "fsl,imx8mn-ddr4-evk" },
+	{ /* sentinel */ },
+};
+BAREBOX_DEEP_PROBE_ENABLE(imx8mn_evk_of_match);
+
+static struct driver_d imx8mn_evkboard_driver = {
+	.name = "board-imx8mn-evk",
+	.probe = imx8mn_evk_probe,
+	.of_compatible = DRV_OF_COMPAT(imx8mn_evk_of_match),
+};
+coredevice_platform_driver(imx8mn_evkboard_driver);
diff --git a/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
index de53213ebc..7fbe11a897 100644
--- a/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
@@ -22,8 +22,6 @@
 #include <mfd/bd71837.h>
 #include <soc/imx8m/ddr.h>
 
-extern char __dtb_z_imx8mn_evk_start[];
-
 static void setup_uart(void)
 {
 	void __iomem *uart = IOMEM(MX8M_UART2_BASE_ADDR);
@@ -211,14 +209,23 @@ static void start_atf(void)
  */
 static __noreturn noinline void nxp_imx8mn_evk_start(void)
 {
+	extern char __dtb_z_imx8mn_evk_start[], __dtb_z_imx8mn_ddr4_evk_start[];
+	void *fdt;
+
 	setup_uart();
 
 	start_atf();
 
+	/* Check if we configured DDR4 in EL3 */
+	if (readl(MX8M_DDRC_CTL_BASE_ADDR) & BIT(4))
+		fdt = __dtb_z_imx8mn_ddr4_evk_start;
+	else
+		fdt = __dtb_z_imx8mn_evk_start;
+
 	/*
 	 * Standard entry we hit once we initialized both DDR and ATF
 	 */
-	imx8mn_barebox_entry(__dtb_z_imx8mn_evk_start);
+	imx8mn_barebox_entry(fdt);
 }
 
 ENTRY_FUNCTION(start_nxp_imx8mn_evk, r0, r1, r2)
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 0c7e43e226..39ea93a077 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -140,7 +140,7 @@ lwl-$(CONFIG_MACH_TECHNEXION_WANDBOARD) += imx6q-wandboard.dtb.o imx6dl-wandboar
 lwl-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += imx6ul-pico-hobbit.dtb.o
 lwl-$(CONFIG_MACH_NXP_IMX6ULL_EVK) += imx6ull-14x14-evk.dtb.o
 lwl-$(CONFIG_MACH_NXP_IMX8MM_EVK) += imx8mm-evk.dtb.o
-lwl-$(CONFIG_MACH_NXP_IMX8MN_EVK) += imx8mn-evk.dtb.o
+lwl-$(CONFIG_MACH_NXP_IMX8MN_EVK) += imx8mn-evk.dtb.o imx8mn-ddr4-evk.dtb.o
 lwl-$(CONFIG_MACH_NXP_IMX8MP_EVK) += imx8mp-evk.dtb.o
 lwl-$(CONFIG_MACH_NXP_IMX8MQ_EVK) += imx8mq-evk.dtb.o
 lwl-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += tegra20-colibri-iris.dtb.o
diff --git a/arch/arm/dts/imx8mn-ddr4-evk.dts b/arch/arm/dts/imx8mn-ddr4-evk.dts
new file mode 100644
index 0000000000..6ebb4d15e4
--- /dev/null
+++ b/arch/arm/dts/imx8mn-ddr4-evk.dts
@@ -0,0 +1,6 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+
+/dts-v1/;
+
+#include <arm64/freescale/imx8mn-ddr4-evk.dts>
+#include "imx8mn-evk.dtsi"
diff --git a/arch/arm/dts/imx8mn-evk.dts b/arch/arm/dts/imx8mn-evk.dts
index 8a0e92b299..eb6e1312f4 100644
--- a/arch/arm/dts/imx8mn-evk.dts
+++ b/arch/arm/dts/imx8mn-evk.dts
@@ -1,88 +1,6 @@
 // SPDX-License-Identifier: (GPL-2.0 OR MIT)
-/*
- * Copyright 2017 NXP
- * Copyright (C) 2017 Pengutronix, Lucas Stach <kernel@pengutronix.de>
- */
 
 /dts-v1/;
 
 #include <arm64/freescale/imx8mn-evk.dts>
-
-/ {
-	chosen {
-		environment-sd {
-			compatible = "barebox,environment";
-			device-path = &usdhc2, "partname:barebox-environment";
-			status = "disabled";
-		};
-		environment-emmc {
-			compatible = "barebox,environment";
-			device-path = &usdhc3, "partname:barebox-environment";
-			status = "disabled";
-		};
-	};
-};
-
-&usdhc2 {
-	#address-cells = <1>;
-	#size-cells = <1>;
-
-	partition@0 {
-		label = "barebox";
-		reg = <0x0 0xe0000>;
-	};
-
-	partition@e0000 {
-		label = "barebox-environment";
-		reg = <0xe0000 0x20000>;
-	};
-};
-
-&usdhc3 {
-	#address-cells = <1>;
-	#size-cells = <1>;
-
-	partition@0 {
-		label = "barebox";
-		reg = <0x0 0xe0000>;
-	};
-
-	partition@e0000 {
-		label = "barebox-environment";
-		reg = <0xe0000 0x20000>;
-	};
-};
-
-&ocotp {
-	barebox,provide-mac-address = <&fec1 0x640>;
-};
-
-&iomuxc {
-	pinctrl_flexspi0: flexspi0grp {
-		fsl,pins = <
-		MX8MN_IOMUXC_NAND_ALE_QSPI_A_SCLK	0x1c4
-		MX8MN_IOMUXC_NAND_CE0_B_QSPI_A_SS0_B	0x84
-		MX8MN_IOMUXC_NAND_DATA00_QSPI_A_DATA0	0x84
-		MX8MN_IOMUXC_NAND_DATA01_QSPI_A_DATA1	0x84
-		MX8MN_IOMUXC_NAND_DATA02_QSPI_A_DATA2	0x84
-		MX8MN_IOMUXC_NAND_DATA03_QSPI_A_DATA3	0x84
-		>;
-	};
-};
-
-&flexspi {
-	status = "okay";
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_flexspi0>;
-
-	system_flash: flash@0 {
-		reg = <0>;
-		compatible = "jedec,spi-nor";
-		spi-max-frequency = <80000000>;
-		spi-tx-bus-width = <4>;
-		spi-rx-bus-width = <4>;
-		#address-cells = <1>;
-		#size-cells = <1>;
-	};
-};
-
+#include "imx8mn-evk.dtsi"
diff --git a/arch/arm/dts/imx8mn-evk.dtsi b/arch/arm/dts/imx8mn-evk.dtsi
new file mode 100644
index 0000000000..ceeb5f8b93
--- /dev/null
+++ b/arch/arm/dts/imx8mn-evk.dtsi
@@ -0,0 +1,83 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2017 NXP
+ * Copyright (C) 2017 Pengutronix, Lucas Stach <kernel@pengutronix.de>
+ */
+
+/ {
+	chosen {
+		environment-sd {
+			compatible = "barebox,environment";
+			device-path = &usdhc2, "partname:barebox-environment";
+			status = "disabled";
+		};
+		environment-emmc {
+			compatible = "barebox,environment";
+			device-path = &usdhc3, "partname:barebox-environment";
+			status = "disabled";
+		};
+	};
+};
+
+&usdhc2 {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0xe0000>;
+	};
+
+	partition@e0000 {
+		label = "barebox-environment";
+		reg = <0xe0000 0x20000>;
+	};
+};
+
+&usdhc3 {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0xe0000>;
+	};
+
+	partition@e0000 {
+		label = "barebox-environment";
+		reg = <0xe0000 0x20000>;
+	};
+};
+
+&ocotp {
+	barebox,provide-mac-address = <&fec1 0x640>;
+};
+
+&iomuxc {
+	pinctrl_flexspi0: flexspi0grp {
+		fsl,pins = <
+		MX8MN_IOMUXC_NAND_ALE_QSPI_A_SCLK	0x1c4
+		MX8MN_IOMUXC_NAND_CE0_B_QSPI_A_SS0_B	0x84
+		MX8MN_IOMUXC_NAND_DATA00_QSPI_A_DATA0	0x84
+		MX8MN_IOMUXC_NAND_DATA01_QSPI_A_DATA1	0x84
+		MX8MN_IOMUXC_NAND_DATA02_QSPI_A_DATA2	0x84
+		MX8MN_IOMUXC_NAND_DATA03_QSPI_A_DATA3	0x84
+		>;
+	};
+};
+
+&flexspi {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexspi0>;
+
+	system_flash: flash@0 {
+		reg = <0>;
+		compatible = "jedec,spi-nor";
+		spi-max-frequency = <80000000>;
+		spi-tx-bus-width = <4>;
+		spi-rx-bus-width = <4>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+	};
+};
-- 
2.30.2



