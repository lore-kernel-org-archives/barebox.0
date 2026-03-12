Delivery-date: Thu, 12 Mar 2026 12:35:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0eK6-00Anzh-22
	for lore@lore.pengutronix.de;
	Thu, 12 Mar 2026 12:35:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0eK4-0005fC-J4
	for lore@pengutronix.de; Thu, 12 Mar 2026 12:35:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IxcHPkWJY8cLPltoi9UIXjOMOzyENhAEjhtHNEgq2hY=; b=mYjGwRtDXvzj/Rvf7XmBRMoPCL
	MQCbZpr3mvdOyMA5+0g9+8oQvJVKaBzqqu9xmykFk90mSo9YDq3PMy2da3xS8tqKYT2jGrogS5NwP
	yriUBSLh1yCQ0f6tImdio5Lqlt8N+zlsUsbfDrwz+mn9is+HkDM67dJM+TAioxMbhVA7rLyVCqEP0
	m/LBKbtyQaIy8h4TEuderfQlhQelif1iNERhep0LC0ByROw6LTr9qha4rgSulR6ZJja/bXpPvB4Ua
	Psoh3VeGhi++nmZoIJvp+K8Jyd1NCyEuIoPDC1Nlv68s+b+o3kCTbDKJiEOoDN0e8IJ8XoDL7CcrB
	0TbNjUjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0eJS-0000000Dxkq-0hvU;
	Thu, 12 Mar 2026 11:34:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0eJQ-0000000Dxjp-3nSX
	for barebox@bombadil.infradead.org;
	Thu, 12 Mar 2026 11:34:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=IxcHPkWJY8cLPltoi9UIXjOMOzyENhAEjhtHNEgq2hY=; b=Gqqw0R+q4PzR2cOXXpaSz1oP+J
	Ej28MuXdDTSTBk4nQ5WW9uH7zOY0zwOfEKRpDgqu5yQAi9HWVvtYoXwUxgrZZOiaFSkPSUOuKQaiO
	g32qmdwNsspsFt7jLuDUZ8PFt9dZtIlIwHw+gA3KF+/5rzLly/EZV1kGiCWV3elFRaH/mRZBJpGAo
	yBaythnk7dJIqSfeqvnOqcC9mg7Jk6BGq2Lk6lfO2QhxiqIx1nRJUpqv+3hGnwKjSforU1WGsRllp
	U1zMdcq/WOJV9Cb5aWEMWkRcGRtOtVyN7FckV8aHk4LL6SNYMu8JM42Xiw3MKsnqPkVM3+I1myx5Y
	KGoytAGg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0eJN-000000011p6-0553
	for barebox@lists.infradead.org;
	Thu, 12 Mar 2026 11:34:43 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1w0eJM-0005Mw-2K; Thu, 12 Mar 2026 12:34:40 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Thu, 12 Mar 2026 12:34:32 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-v2026-01-0-topic-tqma8mpxs-v4-2-88472a13347d@pengutronix.de>
References: <20260312-v2026-01-0-topic-tqma8mpxs-v4-0-88472a13347d@pengutronix.de>
In-Reply-To: <20260312-v2026-01-0-topic-tqma8mpxs-v4-0-88472a13347d@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>, 
 Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_113441_289329_8D2F0A8C 
X-CRM114-Status: GOOD (  23.50  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v4 2/3] ARM: boards: tqma8mpxl: extend with support for xs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The TQMA8MPxS is another board from TQ with the same processor, but a
different formfactor. Nevertheless they share a lot of code and can be
used from the same barebox resulting in the rename of tqma8mpxl to
tqma8mpxx.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 arch/arm/boards/tqma8mpxx/board.c                  |    1 +
 arch/arm/boards/tqma8mpxx/lowlevel.c               |   97 +-
 arch/arm/dts/Makefile                              |    2 +-
 .../dts/imx8mp-tqma8mpqs-mb-smarc-2-upstream.dts   |  402 ++++++++
 arch/arm/dts/imx8mp-tqma8mpqs-mba8mpxs.dts         |   15 +
 arch/arm/dts/imx8mp-tqma8mpqs-upstream.dtsi        | 1075 ++++++++++++++++++++
 arch/arm/mach-imx/Kconfig                          |    3 +-
 7 files changed, 1574 insertions(+), 21 deletions(-)

diff --git a/arch/arm/boards/tqma8mpxx/board.c b/arch/arm/boards/tqma8mpxx/board.c
index b39cb048ef..34a7bd5f4f 100644
--- a/arch/arm/boards/tqma8mpxx/board.c
+++ b/arch/arm/boards/tqma8mpxx/board.c
@@ -45,6 +45,7 @@ static int tqma8mpxx_probe(struct device *dev)
 
 static const struct of_device_id tqma8mpxx_of_match[] = {
 	{ .compatible = "tq,imx8mp-tqma8mpql" },
+	{ .compatible = "tq,imx8mp-tqma8mpqs" },
 	{ /* sentinel */ },
 };
 BAREBOX_DEEP_PROBE_ENABLE(tqma8mpxx_of_match);
diff --git a/arch/arm/boards/tqma8mpxx/lowlevel.c b/arch/arm/boards/tqma8mpxx/lowlevel.c
index 75d2cd9241..7d8bae9c4d 100644
--- a/arch/arm/boards/tqma8mpxx/lowlevel.c
+++ b/arch/arm/boards/tqma8mpxx/lowlevel.c
@@ -21,6 +21,7 @@
 #include <pbl/i2c.h>
 #include <pbl/pmic.h>
 #include <soc/imx8m/ddr.h>
+#include <boards/tq/tq_eeprom.h>
 
 #define UART_PAD_CTRL   MUX_PAD_CTRL(MX8MP_PAD_CTL_DSE6 | \
 				     MX8MP_PAD_CTL_FSEL)
@@ -30,14 +31,12 @@
 				     MX8MP_PAD_CTL_PUE | \
 				     MX8MP_PAD_CTL_PE)
 
-static void setup_uart(void)
+static void setup_uart(void *uart, iomux_v3_cfg_t tx_pad, iomux_v3_cfg_t rx_pad)
 {
-	void __iomem *uart = IOMEM(MX8M_UART4_BASE_ADDR);
-
 	imx8m_early_setup_uart_clock();
 
-	imx8mp_setup_pad(MX8MP_PAD_UART4_TXD__UART4_DCE_TX | UART_PAD_CTRL);
-	imx8mp_setup_pad(MX8MP_PAD_UART4_RXD__UART4_DCE_RX | UART_PAD_CTRL);
+	imx8mp_setup_pad(tx_pad | UART_PAD_CTRL);
+	imx8mp_setup_pad(rx_pad | UART_PAD_CTRL);
 	imx8m_uart_setup(uart);
 
 	pbl_set_putc(imx_uart_putc, uart);
@@ -45,6 +44,26 @@ static void setup_uart(void)
 	putc_ll('>');
 }
 
+static struct pbl_i2c *tqma_i2c1_init(void)
+{
+	imx8mp_setup_pad(MX8MP_PAD_I2C1_SCL__I2C1_SCL | I2C_PAD_CTRL);
+	imx8mp_setup_pad(MX8MP_PAD_I2C1_SDA__I2C1_SDA | I2C_PAD_CTRL);
+
+	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_I2C1);
+
+	return imx8m_i2c_early_init(IOMEM(MX8MP_I2C1_BASE_ADDR));
+}
+
+static struct pbl_i2c *tqma_i2c2_init(void)
+{
+	imx8mp_setup_pad(MX8MP_PAD_I2C2_SCL__I2C2_SCL | I2C_PAD_CTRL);
+	imx8mp_setup_pad(MX8MP_PAD_I2C2_SDA__I2C2_SDA | I2C_PAD_CTRL);
+
+	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_I2C2);
+
+	return imx8m_i2c_early_init(IOMEM(MX8MP_I2C2_BASE_ADDR));
+}
+
 static struct pmic_config pca9450_cfg[] = {
 	/* BUCKxOUT_DVS0/1 control BUCK123 output */
 	{ PCA9450_BUCK123_DVS, 0x29 },
@@ -67,39 +86,79 @@ static struct pmic_config pca9450_cfg[] = {
 	{ PCA9450_RESET_CTRL, 0xA1 },
 };
 
-static void power_init_board(void)
+static bool tqma_is_eeprom_valid(struct tq_eeprom *eeprom)
 {
-	struct pbl_i2c *i2c;
+	int ramsize;
 
-	imx8mp_setup_pad(MX8MP_PAD_I2C1_SCL__I2C1_SCL | I2C_PAD_CTRL);
-	imx8mp_setup_pad(MX8MP_PAD_I2C1_SDA__I2C1_SDA | I2C_PAD_CTRL);
-
-	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_I2C1);
-
-	i2c = imx8m_i2c_early_init(IOMEM(MX8MP_I2C1_BASE_ADDR));
-
-	pmic_configure(i2c, 0x25, pca9450_cfg, ARRAY_SIZE(pca9450_cfg));
+	if (!*eeprom->serial || !*eeprom->id)
+		return false;
+	ramsize = tq_vard_ramsize(&eeprom->vard) / (SZ_1G);
+	if (ramsize != 1 && ramsize != 2 && ramsize != 4 && ramsize != 8)
+		return false;
+	return true;
 }
 
-static __noreturn noinline void tqma8mpxx_start(void)
+static noinline void tqma8mpxx_start(void)
 {
 	extern char __dtb_z_imx8mp_tqma8mpql_mba8mpxl_start[];
+	extern char __dtb_z_imx8mp_tqma8mpqs_mba8mpxs_start[];
 
-	setup_uart();
+	struct tq_eeprom *eeprom;
+	struct pbl_i2c *i2c;
+	void *boarddata;
+
+	i2c = tqma_i2c1_init();
+
+	/**
+	 * The difference for the lowlevel code between xS and xL is:
+	 * PMIC: xS on i2c2, xL on i2C1
+	 * VARD: address 0x50 on xS, address 0x53 on xL.
+	 *       offset 0x1000 on xS, offset 0x0 on xL
+	 */
+
+	eeprom = pbl_tq_read_eeprom(i2c, 0x50, 0x1000 | I2C_ADDR_16_BIT);
+	if (tqma_is_eeprom_valid(eeprom)) {
+		/* found xS board */
+		i2c = tqma_i2c2_init();
+		boarddata = __dtb_z_imx8mp_tqma8mpqs_mba8mpxs_start;
+		setup_uart(IOMEM(MX8M_UART3_BASE_ADDR),
+			   MX8MP_PAD_SD1_DATA6__UART3_DCE_TX,
+			   MX8MP_PAD_SD1_DATA7__UART3_DCE_RX);
+	} else {
+		eeprom = pbl_tq_read_eeprom(i2c, 0x53, 0);
+		if (!tqma_is_eeprom_valid(eeprom))
+			panic("Could not read VARD!\n");
+
+		/* found xL board */
+		boarddata = __dtb_z_imx8mp_tqma8mpql_mba8mpxl_start;
+		setup_uart(IOMEM(MX8M_UART4_BASE_ADDR),
+			   MX8MP_PAD_UART4_TXD__UART4_DCE_TX,
+			   MX8MP_PAD_UART4_RXD__UART4_DCE_RX);
+
+	}
 
 	if (current_el() == 3) {
 		extern struct dram_timing_info dram_timing_2gb_no_ecc;
+		int ramsize;
+
+		ramsize = tq_vard_ramsize(&eeprom->vard) / (SZ_1G);
+		if (ramsize != 2)
+			panic("RAMsize other then 2GB is not supported at the moment.\n");
 
 		imx8mp_early_clock_init();
 
-		power_init_board();
+		pmic_configure(i2c, 0x25, pca9450_cfg, ARRAY_SIZE(pca9450_cfg));
 
 		imx8mp_ddr_init(&dram_timing_2gb_no_ecc, DRAM_TYPE_LPDDR4);
 
 		imx8mp_load_and_start_image_via_tfa();
 	}
 
-	imx8mp_barebox_entry(__dtb_z_imx8mp_tqma8mpql_mba8mpxl_start);
+	tq_vard_show(&eeprom->vard);
+	printf("Serial: %s\n", eeprom->id);
+	printf("ID:     %s\n", eeprom->serial);
+
+	imx8mp_barebox_entry(boarddata);
 }
 
 ENTRY_FUNCTION(start_tqma8mpxx, x0, x1, x2)
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 369f5c513b..8dbe020e5d 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -184,7 +184,7 @@ lwl-$(CONFIG_MACH_NXP_IMX8MP_EVK) += imx8mp-evk.dtb.o
 lwl-$(CONFIG_MACH_NXP_IMX8MQ_EVK) += imx8mq-evk.dtb.o
 lwl-$(CONFIG_MACH_NXP_IMX93_FRDM) += imx93-frdm.dtb.o
 lwl-$(CONFIG_MACH_INNOCOMM_WB15) += imx8mm-innocomm-wb15-evk.dtb.o
-lwl-$(CONFIG_MACH_TQ_MBA8MPXX) += imx8mp-tqma8mpql-mba8mpxl.dtb.o
+lwl-$(CONFIG_MACH_TQ_MBA8MPXX) += imx8mp-tqma8mpql-mba8mpxl.dtb.o imx8mp-tqma8mpqs-mba8mpxs.dtb.o
 lwl-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += tegra20-colibri-iris.dtb.o
 lwl-$(CONFIG_MACH_TORADEX_COLIBRI_IMX6) += imx6dl-colibri-iris.dtb.o
 lwl-$(CONFIG_MACH_TOSHIBA_AC100) += tegra20-paz00.dtb.o
diff --git a/arch/arm/dts/imx8mp-tqma8mpqs-mb-smarc-2-upstream.dts b/arch/arm/dts/imx8mp-tqma8mpqs-mb-smarc-2-upstream.dts
new file mode 100644
index 0000000000..b32bf6f73d
--- /dev/null
+++ b/arch/arm/dts/imx8mp-tqma8mpqs-mb-smarc-2-upstream.dts
@@ -0,0 +1,402 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright 2025 TQ-Systems GmbH <linux@ew.tq-group.com>,
+ * D-82229 Seefeld, Germany.
+ * Author: Paul Gerber
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/phy/phy-imx8-pcie.h>
+#include "imx8mp-tqma8mpqs-upstream.dtsi"
+
+/ {
+	model = "TQ-Systems i.MX8MPlus TQMa8MPxS on MB-SMARC-2";
+	compatible = "tq,imx8mp-tqma8mpqs-mb-smarc-2", "tq,imx8mp-tqma8mpqs", "fsl,imx8mp";
+	chassis-type = "embedded";
+
+	chosen {
+		stdout-path = &uart3;
+	};
+
+	aliases {
+		ethernet0 = &eqos;
+		ethernet1 = &fec;
+		mmc0 = &usdhc3;
+		mmc1 = &usdhc2;
+		rtc0 = &pcf85063;
+		rtc1 = &snvs_rtc;
+		spi0 = &flexspi;
+		spi1 = &ecspi1;
+		spi2 = &ecspi2;
+		spi3 = &ecspi3;
+	};
+
+	backlight_lvds0: backlight-lvds0 {
+		compatible = "pwm-backlight";
+		pwms = <&pwm3 0 100000 0>;
+		brightness-levels = <0 4 8 16 32 64 128 255>;
+		default-brightness-level = <7>;
+		enable-gpios = <&expander0 0 GPIO_ACTIVE_HIGH>;
+		power-supply = <&reg_12v0>;
+		status = "disabled";
+	};
+
+	backlight_lvds1: backlight-lvds1 {
+		compatible = "pwm-backlight";
+		pwms = <&pwm2 0 100000 0>;
+		brightness-levels = <0 4 8 16 32 64 128 255>;
+		default-brightness-level = <7>;
+		enable-gpios = <&expander0 2 GPIO_ACTIVE_HIGH>;
+		power-supply = <&reg_12v0>;
+		status = "disabled";
+	};
+
+	hdmi-connector {
+		compatible = "hdmi-connector";
+		label = "X6";
+		type = "a";
+
+		port {
+			hdmi_connector_in: endpoint {
+				remote-endpoint = <&hdmi_tx_out>;
+			};
+		};
+	};
+
+	panel_lvds0: panel-lvds0 {
+		/*
+		 * Display is not fixed, so compatible has to be added from
+		 * DT overlay
+		 */
+		backlight = <&backlight_lvds0>;
+		power-supply = <&reg_lvds0>;
+		status = "disabled";
+
+		port {
+			panel_in_lvds0: endpoint {
+				remote-endpoint = <&ldb_lvds_ch0>;
+			};
+		};
+	};
+
+	panel_lvds1: panel-lvds1 {
+		/*
+		 * Display is not fixed, so compatible has to be added from
+		 * DT overlay
+		 */
+		backlight = <&backlight_lvds1>;
+		power-supply = <&reg_lvds1>;
+		status = "disabled";
+
+		port {
+			panel_in_lvds1: endpoint {
+				remote-endpoint = <&ldb_lvds_ch1>;
+			};
+		};
+	};
+
+	reg_1v8: regulator-1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "1V8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
+	};
+
+	reg_3v3: regulator-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+
+	reg_5v0: regulator-5v0 {
+		compatible = "regulator-fixed";
+		regulator-name = "VCC_5V0";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+	};
+
+	reg_12v0: regulator-12v0 {
+		compatible = "regulator-fixed";
+		regulator-name = "12V0";
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+		regulator-always-on;
+	};
+
+	reg_lvds0: regulator-lvds0 {
+		compatible = "regulator-fixed";
+		regulator-name = "LCD0_VDD_EN";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&expander0 1 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
+	reg_lvds1: regulator-lvds1 {
+		compatible = "regulator-fixed";
+		regulator-name = "LCD1_VDD_EN";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&expander0 3 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		/* global autoconfigured region for contiguous allocations */
+		linux,cma {
+			compatible = "shared-dma-pool";
+			reusable;
+			size = <0 0x38000000>;
+			alloc-ranges = <0 0x40000000 0 0x78000000>;
+			linux,cma-default;
+		};
+	};
+
+	sound {
+		compatible = "fsl,imx-audio-tlv320aic32x4";
+		model = "tqm-tlv320aic32";
+		audio-asrc = <&easrc>;
+		audio-cpu = <&sai5>;
+		audio-codec = <&tlv320aic3x04>;
+		audio-routing =
+			"IN3_L", "Mic Jack",
+			"Mic Jack", "Mic Bias",
+			"IN1_L", "Line In Jack",
+			"IN1_R", "Line In Jack",
+			"Line Out Jack", "LOL",
+			"Line Out Jack", "LOR";
+	};
+
+	usb-connector {
+		compatible = "gpio-usb-b-connector", "usb-b-connector";
+		type = "micro";
+		label = "X4";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_usbcon0>;
+		id-gpios = <&gpio1 10 GPIO_ACTIVE_HIGH>;
+
+		port {
+			usb_dr_connector: endpoint {
+				remote-endpoint = <&usb3_dwc>;
+			};
+		};
+	};
+};
+
+&dp_bridge {
+	status = "okay";
+};
+
+&easrc {
+	status = "okay";
+};
+
+&ecspi1 {
+	status = "okay";
+
+	spidev0_0: spidev0@0 {
+		compatible = "tq,testdev";
+		reg = <0>;
+		spi-max-frequency = <5000000>;
+	};
+
+	spidev0_1: spidev0@1 {
+		compatible = "tq,testdev";
+		reg = <1>;
+		spi-max-frequency = <5000000>;
+	};
+};
+
+&eqos {
+	status = "okay";
+};
+
+&ethphy0 {
+	leds {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		led@1 {
+			reg = <1>;
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_LAN;
+			function-enumerator = <0>;
+			default-state = "keep";
+		};
+
+		led@2 {
+			reg = <2>;
+			color = <LED_COLOR_ID_AMBER>;
+			function = LED_FUNCTION_LAN;
+			function-enumerator = <0>;
+			default-state = "keep";
+		};
+	};
+};
+
+&ethphy3 {
+	leds {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		led@1 {
+			reg = <1>;
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_LAN;
+			function-enumerator = <0>;
+			default-state = "keep";
+		};
+
+		led@2 {
+			reg = <2>;
+			color = <LED_COLOR_ID_AMBER>;
+			function = LED_FUNCTION_LAN;
+			function-enumerator = <0>;
+			default-state = "keep";
+		};
+	};
+};
+
+&fec {
+	status = "okay";
+};
+
+&flexcan1 {
+	xceiver-supply = <&reg_3v3>;
+	status = "okay";
+};
+
+&flexcan2 {
+	xceiver-supply = <&reg_3v3>;
+	status = "okay";
+};
+
+&hdmi_pvi {
+	status = "okay";
+};
+
+&hdmi_tx {
+	status = "okay";
+
+	ports {
+		port@1 {
+			hdmi_tx_out: endpoint {
+				remote-endpoint = <&hdmi_connector_in>;
+			};
+		};
+	};
+};
+
+&hdmi_tx_phy {
+	status = "okay";
+};
+
+&i2c1 {
+	tlv320aic3x04: audio-codec@18 {
+		compatible = "ti,tlv320aic32x4";
+		reg = <0x18>;
+		clock-names = "mclk";
+		clocks = <&audio_blk_ctrl IMX8MP_CLK_AUDIOMIX_SAI5_MCLK1>;
+		iov-supply = <&reg_1v8>;
+		ldoin-supply = <&reg_3v3>;
+	};
+
+	eeprom2: eeprom@57 {
+		compatible = "atmel,24c32";
+		reg = <0x57>;
+		pagesize = <32>;
+		vcc-supply = <&reg_3v3>;
+	};
+};
+
+&ldb_lvds_ch0 {
+	remote-endpoint = <&panel_in_lvds0>;
+};
+
+&ldb_lvds_ch1 {
+	remote-endpoint = <&panel_in_lvds1>;
+};
+
+&lcdif1 {
+	status = "okay";
+};
+
+&lcdif3 {
+	status = "okay";
+};
+
+&mipi_dsi {
+	status = "okay";
+};
+
+&pcie_phy {
+	fsl,clkreq-unsupported;
+	status = "okay";
+};
+
+&pcie {
+	status = "okay";
+};
+
+&reg_sdvmmc {
+	startup-delay-us = <100>;
+	off-on-delay-us = <200000>;
+	status = "okay";
+};
+
+&sai3 {
+	status = "okay";
+};
+
+&sai5 {
+	status = "okay";
+};
+
+&snvs_pwrkey {
+	status = "okay";
+};
+
+&uart1 {
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+};
+
+&uart4 {
+	status = "okay";
+};
+
+&usb3_0 {
+	status = "okay";
+};
+
+&usb_dwc3_0 {
+	status = "okay";
+
+	port {
+		usb3_dwc: endpoint {
+			remote-endpoint = <&usb_dr_connector>;
+		};
+	};
+};
+
+&usdhc2 {
+	cd-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
+	wp-gpios = <&gpio2 20 GPIO_ACTIVE_HIGH>;
+	vmmc-supply = <&reg_sdvmmc>;
+	no-mmc;
+	no-sdio;
+	status = "okay";
+};
diff --git a/arch/arm/dts/imx8mp-tqma8mpqs-mba8mpxs.dts b/arch/arm/dts/imx8mp-tqma8mpqs-mba8mpxs.dts
new file mode 100644
index 0000000000..9a417039f0
--- /dev/null
+++ b/arch/arm/dts/imx8mp-tqma8mpqs-mba8mpxs.dts
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright (C) 2026 Pengutronix, Fabian Pflug <kernel@pengutronix.de>
+ */
+
+/dts-v1/;
+
+#include "imx8mp-tqma8mpqs-mb-smarc-2-upstream.dts"
+#include "imx8mp.dtsi"
+
+&{pmic/regulators} {
+	barebox,allow-dummy-supply;
+};
+
+/delete-node/ &{/memory@40000000};
diff --git a/arch/arm/dts/imx8mp-tqma8mpqs-upstream.dtsi b/arch/arm/dts/imx8mp-tqma8mpqs-upstream.dtsi
new file mode 100644
index 0000000000..5ab8899589
--- /dev/null
+++ b/arch/arm/dts/imx8mp-tqma8mpqs-upstream.dtsi
@@ -0,0 +1,1075 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright 2025 TQ-Systems GmbH <linux@ew.tq-group.com>,
+ * D-82229 Seefeld, Germany.
+ * Author: Paul Gerber
+ */
+
+#include <dt-bindings/net/ti-dp83867.h>
+#include <arm64/freescale/imx8mp.dtsi>
+
+/ {
+	model = "TQ-Systems i.MX8MPlus TQMa8MPxS";
+	compatible = "tq,imx8mp-tqma8mpqs", "fsl,imx8mp";
+
+	clk_dp: clk-dp {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <26000000>;
+	};
+
+	clk_xtal25: clk-xtal25 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <25000000>;
+	};
+
+	memory@40000000 {
+		device_type = "memory";
+		reg = <0x0 0x40000000 0 0x80000000>;
+	};
+
+	reg_sdvmmc: regulator-sdvmmc {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_sdvmmc>;
+		regulator-name = "SDIO_PWR_EN";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&ldo5>;
+		status = "disabled";
+	};
+};
+
+&A53_0 {
+	cpu-supply = <&buck2>;
+};
+
+&ecspi1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi1>;
+	cs-gpios = <&gpio5 9 GPIO_ACTIVE_LOW>, <&gpio5 12 GPIO_ACTIVE_LOW>;
+};
+
+/* GBE0 */
+&eqos {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_eqos>;
+	phy-mode = "rgmii-id";
+	phy-handle = <&ethphy0>;
+
+	mdio {
+		compatible = "snps,dwmac-mdio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy0: ethernet-phy@0 {
+			pinctrl-names = "default";
+			pinctrl-0 = <&pinctrl_eqos_phy>;
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <0>;
+			ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_25_NS>;
+			ti,tx-internal-delay = <DP83867_RGMIIDCTL_2_25_NS>;
+			ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
+			ti,dp83867-rxctrl-strap-quirk;
+			ti,clk-output-sel = <DP83867_CLK_O_SEL_OFF>;
+			reset-gpios = <&expander0 6 GPIO_ACTIVE_LOW>;
+			reset-assert-us = <500000>;
+			reset-deassert-us = <50000>;
+			enet-phy-lane-no-swap;
+			interrupt-parent = <&gpio2>;
+			interrupts = <0 IRQ_TYPE_EDGE_FALLING>;
+		};
+
+		ethphy3: ethernet-phy@3 {
+			pinctrl-names = "default";
+			pinctrl-0 = <&pinctrl_fec_phy>;
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <3>;
+			ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_25_NS>;
+			ti,tx-internal-delay = <DP83867_RGMIIDCTL_2_25_NS>;
+			ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
+			ti,dp83867-rxctrl-strap-quirk;
+			ti,clk-output-sel = <DP83867_CLK_O_SEL_OFF>;
+			reset-gpios = <&expander0 7 GPIO_ACTIVE_LOW>;
+			reset-assert-us = <500000>;
+			reset-deassert-us = <50000>;
+			enet-phy-lane-no-swap;
+			interrupt-parent = <&gpio2>;
+			interrupts = <1 IRQ_TYPE_EDGE_FALLING>;
+		};
+	};
+};
+
+/* GBE1 */
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec>;
+	phy-mode = "rgmii-id";
+	phy-handle = <&ethphy3>;
+	fsl,magic-packet;
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
+&flexspi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexspi0>;
+	status = "okay";
+
+	flash0: flash@0 {
+		reg = <0>;
+		compatible = "jedec,spi-nor";
+		spi-max-frequency = <66666666>;
+		spi-tx-bus-width = <4>;
+		spi-rx-bus-width = <4>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+		};
+	};
+};
+
+&gpio1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpio1>;
+
+	gpio-line-names = "SLEEP", "BATLOW#", "", "LID",
+			  "", "GPIO10", "CHARGING#", "CHG_PRSNT#",
+			  "PMIC_IRQ#", "ESPI_CS1_ALERT#", "USB1_OTG_ID", "USB2_OTG_ID",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "";
+
+	pmic_irq_hog: pmic-irq-hog {
+		gpio-hog;
+		gpios = <8 0>;
+		input;
+		line-name = "PMIC_IRQ#";
+	};
+};
+
+&gpio2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hoggpio2>;
+
+	gpio-line-names = "", "", "", "",
+			  "", "", "", "",
+			  "", "", "PERST#", "PEWAKE#",
+			  "SDIO_CD#", "", "", "",
+			  "", "", "", "SDIO_PWR_EN",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "";
+
+	enet0-int-hog {
+		gpio-hog;
+		gpios = <0 0>;
+		input;
+		line-name = "ENET0_INT#";
+	};
+
+	enet1-int-hog {
+		gpio-hog;
+		gpios = <1 0>;
+		input;
+		line-name = "ENET_INT#";
+	};
+
+	perst-hog {
+		gpio-hog;
+		gpios = <10 0>;
+		output-high;
+		line-name = "PERST#";
+	};
+
+	pewake-hog {
+		gpio-hog;
+		gpios = <11 0>;
+		input;
+		line-name = "PEWAKE#";
+	};
+
+	rtc-int-hog {
+		gpio-hog;
+		gpios = <27 0>;
+		input;
+		line-name = "RTC_INT#";
+	};
+};
+
+&gpio3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpio3>;
+
+	gpio-line-names = "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "GPIO4",
+			  "GPIO3", "", "", "",
+			  "", "", "", "",
+			  "TEMP_EVENT#", "", "", "";
+
+	temp-event--hog {
+		gpio-hog;
+		gpios = <28 0>;
+		input;
+		line-name = "TEMP_EVENT#";
+	};
+};
+
+&gpio4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpio4>, <&pinctrl_sdp>, <&pinctrl_eepromwp>;
+
+	gpio-line-names = "", "GPIO8", "", "",
+			  "GPIO9", "ESPI_RST#", "", "",
+			  "", "", "", "",
+			  "", "", "GBE0_SDP_DIR", "",
+			  "GPIO7", "", "", "",
+			  "", "", "", "",
+			  "", "GPIO0", "GPIO1", "",
+			  "GPIO2", "GPIO6", "", "";
+
+	/* EEPROM write control */
+	sw_en_hog: sw-en-hog {
+		gpio-hog;
+		gpios = <5 0>;
+		output-high;
+		line-name = "SW_EN";
+	};
+};
+
+&gpio5 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpio5>;
+
+	gpio-line-names = "", "", "", "",
+			  "", "GPIO5", "", "",
+			  "", "", "GPIO12", "GPIO11",
+			  "", "GPIO13", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "";
+
+	dp-hpd-int-hog {
+		gpio-hog;
+		gpios = <21 0>;
+		input;
+		line-name = "DP_HPD_INT";
+	};
+};
+
+&hdmi_tx {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hdmi>;
+};
+
+&i2c1 {
+	clock-frequency = <384000>;
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	pinctrl-1 = <&pinctrl_i2c1_gpio>;
+	scl-gpios = <&gpio5 14 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio5 15 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	status = "okay";
+
+	eeprom0: eeprom@50 {
+		compatible = "atmel,24c64";
+		reg = <0x50>;
+		pagesize = <32>;
+		read-only;
+		vcc-supply = <&buck5>;
+	};
+
+	pcf85063: rtc@51 {
+		compatible = "nxp,pcf85063a";
+		reg = <0x51>;
+		quartz-load-femtofarads = <7000>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_pcf85063>;
+		interrupt-parent = <&gpio2>;
+		interrupts = <27 IRQ_TYPE_EDGE_FALLING>;
+	};
+
+	eeprom1: eeprom@54 {
+		compatible = "atmel,24c64";
+		reg = <0x54>;
+		pagesize = <32>;
+		vcc-supply = <&buck5>;
+	};
+
+	/* protectable identification memory (part of M24C64-D @50) */
+	eeprom@58 {
+		compatible = "atmel,24c64d-wl";
+		reg = <0x58>;
+		size = <32>;
+		pagesize = <32>;
+		vcc-supply = <&buck5>;
+	};
+
+	/* protectable identification memory (part of M24C64-D @54) */
+	eeprom@5c {
+		compatible = "atmel,24c64d-wl";
+		reg = <0x5c>;
+		size = <32>;
+		pagesize = <32>;
+		vcc-supply = <&buck5>;
+	};
+
+	pcieclk: clock-generator@6a {
+		compatible = "renesas,9fgv0241";
+		reg = <0x6a>;
+		clocks = <&clk_xtal25>;
+		#clock-cells = <1>;
+	};
+
+	imu@6b {
+		compatible = "st,ism330dhcx";
+		reg = <0x6b>;
+		vdd-supply = <&buck4>;
+		vddio-supply = <&buck4>;
+	};
+};
+
+&i2c2 {
+	clock-frequency = <384000>;
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	pinctrl-1 = <&pinctrl_i2c2_gpio>;
+	scl-gpios = <&gpio5 16 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio5 17 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	status = "okay";
+
+	pmic: pmic@25 {
+		reg = <0x25>;
+		compatible = "nxp,pca9450c";
+
+		/* PMIC PCA9450 PMIC_nINT GPIO1_IO08 */
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_pmic>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <8 IRQ_TYPE_LEVEL_LOW>;
+
+		regulators {
+			/* V_0V85_SOC: 0.85 .. 0.95 */
+			buck1: BUCK1 {
+				regulator-name = "BUCK1";
+				regulator-min-microvolt = <850000>;
+				regulator-max-microvolt = <950000>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <3125>;
+			};
+
+			/* VDD_ARM */
+			buck2: BUCK2 {
+				regulator-name = "BUCK2";
+				regulator-min-microvolt = <850000>;
+				regulator-max-microvolt = <1000000>;
+				regulator-boot-on;
+				regulator-always-on;
+				nxp,dvs-run-voltage = <950000>;
+				nxp,dvs-standby-voltage = <850000>;
+				regulator-ramp-delay = <3125>;
+			};
+
+			/* VCC3V3 -> VMMC, ... must not be changed */
+			buck4: BUCK4 {
+				regulator-name = "BUCK4";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			/* V_1V8 -> VQMMC, SPI-NOR, ... must not be changed */
+			buck5: BUCK5 {
+				regulator-name = "BUCK5";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			/* V_1V1 -> RAM, ... must not be changed */
+			buck6: BUCK6 {
+				regulator-name = "BUCK6";
+				regulator-min-microvolt = <1100000>;
+				regulator-max-microvolt = <1100000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			/* V_1V8_SNVS */
+			ldo1: LDO1 {
+				regulator-name = "LDO1";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			/* V_1V8_ANA */
+			ldo3: LDO3 {
+				regulator-name = "LDO3";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			/* unused */
+			ldo4: LDO4 {
+				regulator-name = "LDO4";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <3300000>;
+			};
+
+			/* VCC SD IO - switched using SD2 VSELECT */
+			ldo5: LDO5 {
+				regulator-name = "LDO5";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+			};
+		};
+	};
+
+	tmp1075: temperature-sensor@4a {
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_tmp1075>;
+		compatible = "ti,tmp1075";
+		reg = <0x4a>;
+		vs-supply = <&buck4>;
+	};
+
+	expander0: gpio@73 {
+		compatible = "nxp,pca9538";
+		reg = <0x73>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		vcc-supply = <&buck5>;
+		gpio-line-names = "LCD0_BKLT_EN", "LCD0_VDD_EN",
+				  "LCD1_BKLT_EN", "LCD1_VDD_EN",
+				  "DP_BRIDGE_EN", "HUB_RST#",
+				  "ENET0_RESET#", "ENET1_RESET#";
+	};
+};
+
+&i2c3 {
+	clock-frequency = <384000>;
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c3>;
+	pinctrl-1 = <&pinctrl_i2c3_gpio>;
+	scl-gpios = <&gpio5 18 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio5 19 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	status = "okay";
+
+	dp_bridge: dp-bridge@f {
+		compatible = "toshiba,tc9595", "toshiba,tc358767";
+		reg = <0xf>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_tc9595>;
+		clock-names = "ref";
+		clocks = <&clk_dp>;
+		reset-gpios = <&expander0 4 GPIO_ACTIVE_HIGH>;
+		toshiba,hpd-pin = <0>;
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				dsi_in: endpoint {
+					remote-endpoint = <&dsi_out>;
+					data-lanes = <1 2 3 4>;
+				};
+			};
+
+			port@2 {
+				reg = <2>;
+
+				endpoint {
+					toshiba,pre-emphasis = /bits/ 8 <1 1>;
+				};
+			};
+		};
+	};
+};
+
+&i2c4 {
+	clock-frequency = <384000>;
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c4>;
+	pinctrl-1 = <&pinctrl_i2c4_gpio>;
+	scl-gpios = <&gpio2 4 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio2 5 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	status = "okay";
+};
+
+&i2c6 {
+	clock-frequency = <384000>;
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c6>;
+	pinctrl-1 = <&pinctrl_i2c6_gpio>;
+	scl-gpios = <&gpio2 2 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio2 3 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	status = "okay";
+};
+
+&mipi_dsi {
+	samsung,burst-clock-frequency = <1000000000>;
+	samsung,esc-clock-frequency = <10000000>;
+
+	ports {
+		port@1 {
+			reg = <1>;
+
+			dsi_out: endpoint {
+				remote-endpoint = <&dsi_in>;
+				data-lanes = <1 2 3 4>;
+			};
+		};
+	};
+};
+
+&pcie_phy {
+	fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_INPUT>;
+	clock-names = "ref";
+	clocks = <&pcieclk 0>;
+};
+
+&pcie {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pcie>;
+	clocks = <&clk IMX8MP_CLK_HSIO_ROOT>,
+		 <&clk IMX8MP_CLK_HSIO_AXI>,
+		 <&clk IMX8MP_CLK_PCIE_ROOT>;
+	clock-names = "pcie", "pcie_bus", "pcie_aux";
+	assigned-clocks = <&clk IMX8MP_CLK_PCIE_AUX>;
+	assigned-clock-rates = <10000000>;
+	assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_50M>;
+};
+
+&pwm2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm2>;
+};
+
+&pwm3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm3>;
+};
+
+&sai3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_sai3>;
+	assigned-clocks = <&clk IMX8MP_CLK_SAI3>;
+	assigned-clock-parents = <&clk IMX8MP_AUDIO_PLL1_OUT>;
+	assigned-clock-rates = <12288000>;
+};
+
+&sai5 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_sai5>;
+	assigned-clocks = <&clk IMX8MP_CLK_SAI5>;
+	assigned-clock-parents = <&clk IMX8MP_AUDIO_PLL1_OUT>;
+	assigned-clock-rates = <12288000>;
+	fsl,sai-mclk-direction-output;
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	assigned-clocks = <&clk IMX8MP_CLK_UART1>;
+	assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_80M>;
+	uart-has-rtscts;
+};
+
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	assigned-clocks = <&clk IMX8MP_CLK_UART2>;
+	assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_80M>;
+	rts-gpios = <&gpio2 6 GPIO_ACTIVE_LOW>;
+	cts-gpios = <&gpio2 7 GPIO_ACTIVE_LOW>;
+};
+
+&uart3 {
+	/* console */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart3>;
+	status = "okay";
+};
+
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart4>;
+	assigned-clocks = <&clk IMX8MP_CLK_UART4>;
+	assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_80M>;
+};
+
+&usb3_phy0 {
+	vbus-supply = <&reg_5v0>;
+	status = "okay";
+};
+
+&usb3_phy1 {
+	vbus-supply = <&reg_5v0>;
+	status = "okay";
+};
+
+&usb3_0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usb0>;
+	fsl,over-current-active-low;
+	maximum-speed = "high-speed";
+};
+
+&usb3_1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usb1>;
+	fsl,over-current-active-low;
+	status = "okay";
+};
+
+&usb_dwc3_0 {
+	/* dual role is implemented, but not a full featured OTG */
+	hnp-disable;
+	srp-disable;
+	adp-disable;
+	maximum-speed = "high-speed";
+	dr_mode = "otg";
+	usb-role-switch;
+	role-switch-default-mode = "peripheral";
+};
+
+&usb_dwc3_1 {
+	dr_mode = "host";
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	hub_2_0: hub@1 {
+		compatible = "usb451,8142";
+		reg = <1>;
+		peer-hub = <&hub_3_0>;
+		reset-gpios = <&expander0 5 GPIO_ACTIVE_LOW>;
+		vdd-supply = <&reg_3v3>;
+	};
+
+	hub_3_0: hub@2 {
+		compatible = "usb451,8140";
+		reg = <2>;
+		peer-hub = <&hub_2_0>;
+		reset-gpios = <&expander0 5 GPIO_ACTIVE_LOW>;
+		vdd-supply = <&reg_3v3>;
+	};
+};
+
+&usdhc2 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
+	bus-width = <4>;
+	/* NOTE: CD / WP and VMMC support depends on mainboard */
+};
+
+&usdhc3 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc3>;
+	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
+	bus-width = <8>;
+	non-removable;
+	no-sdio;
+	no-sd;
+	vmmc-supply = <&buck4>;
+	vqmmc-supply = <&buck5>;
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
+	pinctrl_ecspi1: ecspi1grp {
+		fsl,pins = <MX8MP_IOMUXC_ECSPI1_MISO__ECSPI1_MISO	0x1c0>,
+			   <MX8MP_IOMUXC_ECSPI1_MOSI__ECSPI1_MOSI	0x1c0>,
+			   <MX8MP_IOMUXC_ECSPI1_SCLK__ECSPI1_SCLK	0x1c0>,
+			   <MX8MP_IOMUXC_ECSPI1_SS0__GPIO5_IO09		0x1c0>,
+			   <MX8MP_IOMUXC_ECSPI2_MISO__GPIO5_IO12	0x1c0>;
+	};
+
+	pinctrl_eepromwp: eepromwpgrp {
+		fsl,pins = <MX8MP_IOMUXC_SAI1_RXD3__GPIO4_IO05		0x00000144>;
+	};
+
+	pinctrl_eqos: eqosgrp {
+		fsl,pins = <MX8MP_IOMUXC_ENET_MDC__ENET_QOS_MDC				0x40000044>,
+			   <MX8MP_IOMUXC_ENET_MDIO__ENET_QOS_MDIO			0x40000044>,
+			   <MX8MP_IOMUXC_ENET_RD0__ENET_QOS_RGMII_RD0			0x90>,
+			   <MX8MP_IOMUXC_ENET_RD1__ENET_QOS_RGMII_RD1			0x90>,
+			   <MX8MP_IOMUXC_ENET_RD2__ENET_QOS_RGMII_RD2			0x90>,
+			   <MX8MP_IOMUXC_ENET_RD3__ENET_QOS_RGMII_RD3			0x90>,
+			   <MX8MP_IOMUXC_ENET_RXC__CCM_ENET_QOS_CLOCK_GENERATE_RX_CLK	0x90>,
+			   <MX8MP_IOMUXC_ENET_RX_CTL__ENET_QOS_RGMII_RX_CTL		0x90>,
+			   <MX8MP_IOMUXC_ENET_TD0__ENET_QOS_RGMII_TD0			0x12>,
+			   <MX8MP_IOMUXC_ENET_TD1__ENET_QOS_RGMII_TD1			0x12>,
+			   <MX8MP_IOMUXC_ENET_TD2__ENET_QOS_RGMII_TD2			0x12>,
+			   <MX8MP_IOMUXC_ENET_TD3__ENET_QOS_RGMII_TD3			0x12>,
+			   <MX8MP_IOMUXC_ENET_TX_CTL__ENET_QOS_RGMII_TX_CTL		0x12>,
+			   <MX8MP_IOMUXC_ENET_TXC__CCM_ENET_QOS_CLOCK_GENERATE_TX_CLK	0x14>;
+	};
+
+	pinctrl_eqos_event: eqosevtgrp {
+		fsl,pins = <MX8MP_IOMUXC_SAI2_MCLK__ENET_QOS_1588_EVENT3_IN	0x100>,
+			   <MX8MP_IOMUXC_SAI2_TXFS__ENET_QOS_1588_EVENT3_OUT	0x1c0>;
+	};
+
+	pinctrl_eqos_phy: eqosphygrp {
+		fsl,pins = <MX8MP_IOMUXC_SD1_CLK__GPIO2_IO00	0x1c0>;
+	};
+
+	pinctrl_fec: fecgrp {
+		fsl,pins = <MX8MP_IOMUXC_SAI1_RXD4__ENET1_RGMII_RD0	0x90>,
+			   <MX8MP_IOMUXC_SAI1_RXD5__ENET1_RGMII_RD1	0x90>,
+			   <MX8MP_IOMUXC_SAI1_RXD6__ENET1_RGMII_RD2	0x90>,
+			   <MX8MP_IOMUXC_SAI1_RXD7__ENET1_RGMII_RD3	0x90>,
+			   <MX8MP_IOMUXC_SAI1_TXC__ENET1_RGMII_RXC	0x90>,
+			   <MX8MP_IOMUXC_SAI1_TXFS__ENET1_RGMII_RX_CTL	0x90>,
+			   <MX8MP_IOMUXC_SAI1_TXD0__ENET1_RGMII_TD0	0x12>,
+			   <MX8MP_IOMUXC_SAI1_TXD1__ENET1_RGMII_TD1	0x12>,
+			   <MX8MP_IOMUXC_SAI1_TXD2__ENET1_RGMII_TD2	0x12>,
+			   <MX8MP_IOMUXC_SAI1_TXD3__ENET1_RGMII_TD3	0x12>,
+			   <MX8MP_IOMUXC_SAI1_TXD4__ENET1_RGMII_TX_CTL	0x12>,
+			   <MX8MP_IOMUXC_SAI1_TXD5__ENET1_RGMII_TXC	0x14>;
+	};
+
+	pinctrl_fec_event: fecevtgrp {
+		fsl,pins = <MX8MP_IOMUXC_SAI1_RXD1__ENET1_1588_EVENT1_OUT	0x100>,
+			   <MX8MP_IOMUXC_SAI1_RXD0__ENET1_1588_EVENT1_IN	0x1c0>;
+	};
+
+	pinctrl_fec_phy: fecphygrp {
+		fsl,pins = <MX8MP_IOMUXC_SD1_CMD__GPIO2_IO01	0x1c0>;
+	};
+
+	pinctrl_flexcan1: flexcan1grp {
+		fsl,pins = <MX8MP_IOMUXC_SAI5_RXD1__CAN1_TX	0x150>,
+			   <MX8MP_IOMUXC_SAI5_RXD2__CAN1_RX	0x150>;
+	};
+
+	pinctrl_flexcan2: flexcan2grp {
+		fsl,pins = <MX8MP_IOMUXC_SAI5_RXD3__CAN2_TX	0x150>,
+			   <MX8MP_IOMUXC_SAI5_MCLK__CAN2_RX	0x150>;
+	};
+
+	pinctrl_flexspi0: flexspi0grp {
+		fsl,pins = <MX8MP_IOMUXC_NAND_ALE__FLEXSPI_A_SCLK	0x142>,
+			   <MX8MP_IOMUXC_NAND_CE0_B__FLEXSPI_A_SS0_B	0x82>,
+			   <MX8MP_IOMUXC_NAND_DQS__FLEXSPI_A_DQS	0x40000010>,
+			   <MX8MP_IOMUXC_NAND_DATA00__FLEXSPI_A_DATA00	0x82>,
+			   <MX8MP_IOMUXC_NAND_DATA01__FLEXSPI_A_DATA01	0x82>,
+			   <MX8MP_IOMUXC_NAND_DATA02__FLEXSPI_A_DATA02	0x82>,
+			   <MX8MP_IOMUXC_NAND_DATA03__FLEXSPI_A_DATA03	0x82>;
+	};
+
+	pinctrl_sdp: gbegrp {
+		fsl,pins = <MX8MP_IOMUXC_SAI1_TXD6__GPIO4_IO18	0x10>,
+			   <MX8MP_IOMUXC_SAI1_TXD7__GPIO4_IO19	0x10>;
+	};
+
+	pinctrl_gpio1: gpio1grp {
+		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO00__GPIO1_IO00		0x10>,
+			   <MX8MP_IOMUXC_GPIO1_IO01__GPIO1_IO01		0x10>,
+			   <MX8MP_IOMUXC_GPIO1_IO03__GPIO1_IO03		0x10>,
+			   <MX8MP_IOMUXC_GPIO1_IO05__GPIO1_IO05		0x10>,
+			   <MX8MP_IOMUXC_GPIO1_IO06__GPIO1_IO06		0x10>,
+			   <MX8MP_IOMUXC_GPIO1_IO07__GPIO1_IO07		0x80>,
+			   <MX8MP_IOMUXC_GPIO1_IO09__GPIO1_IO09		0x80>;
+	};
+
+	pinctrl_gpio3: gpio3grp {
+		fsl,pins = <MX8MP_IOMUXC_SAI5_RXFS__GPIO3_IO19		0x10>,
+			   <MX8MP_IOMUXC_SAI5_RXC__GPIO3_IO20		0x10>;
+	};
+
+	pinctrl_gpio4: gpio4grp {
+		fsl,pins = <MX8MP_IOMUXC_SAI1_RXC__GPIO4_IO01		0x10>,
+			   <MX8MP_IOMUXC_SAI1_RXD2__GPIO4_IO04		0x10>,
+			   <MX8MP_IOMUXC_SAI1_RXD3__GPIO4_IO05		0x10>,
+			   <MX8MP_IOMUXC_SAI1_MCLK__GPIO4_IO20		0x10>,
+			   <MX8MP_IOMUXC_SAI2_TXC__GPIO4_IO25		0x10>,
+			   <MX8MP_IOMUXC_SAI2_TXD0__GPIO4_IO26		0x10>,
+			   <MX8MP_IOMUXC_SAI3_RXFS__GPIO4_IO28		0x10>,
+			   <MX8MP_IOMUXC_SAI3_RXC__GPIO4_IO29		0x10>;
+	};
+
+	pinctrl_gpio5: gpio5grp {
+		fsl,pins = <MX8MP_IOMUXC_SPDIF_EXT_CLK__GPIO5_IO05	0x10>,
+			   <MX8MP_IOMUXC_ECSPI2_SCLK__GPIO5_IO10	0x10>,
+			   <MX8MP_IOMUXC_ECSPI2_MOSI__GPIO5_IO11	0x10>,
+			   <MX8MP_IOMUXC_ECSPI2_SS0__GPIO5_IO13		0x10>;
+	};
+
+	pinctrl_hdmi: hdmigrp {
+		fsl,pins = <MX8MP_IOMUXC_HDMI_DDC_SCL__HDMIMIX_HDMI_SCL	0x400001c2>,
+			   <MX8MP_IOMUXC_HDMI_DDC_SDA__HDMIMIX_HDMI_SDA	0x400001c2>,
+			   <MX8MP_IOMUXC_HDMI_HPD__HDMIMIX_HDMI_HPD	0x40000010>;
+	};
+
+	pinctrl_hoggpio2: hoggpio2grp {
+		fsl,pins = <MX8MP_IOMUXC_SD1_STROBE__GPIO2_IO11		0x140>;
+	};
+
+	pinctrl_i2c1: i2c1grp {
+		fsl,pins = <MX8MP_IOMUXC_I2C1_SCL__I2C1_SCL		0x400001e2>,
+			   <MX8MP_IOMUXC_I2C1_SDA__I2C1_SDA		0x400001e2>;
+	};
+
+	pinctrl_i2c1_gpio: i2c1-gpiogrp {
+		fsl,pins = <MX8MP_IOMUXC_I2C1_SCL__GPIO5_IO14		0x400001e2>,
+			   <MX8MP_IOMUXC_I2C1_SDA__GPIO5_IO15		0x400001e2>;
+	};
+
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins = <MX8MP_IOMUXC_I2C2_SCL__I2C2_SCL		0x400001e2>,
+			   <MX8MP_IOMUXC_I2C2_SDA__I2C2_SDA		0x400001e2>;
+	};
+
+	pinctrl_i2c2_gpio: i2c2-gpiogrp {
+		fsl,pins = <MX8MP_IOMUXC_I2C2_SCL__GPIO5_IO16		0x400001e2>,
+			   <MX8MP_IOMUXC_I2C2_SDA__GPIO5_IO17		0x400001e2>;
+	};
+
+	pinctrl_i2c3: i2c3grp {
+		fsl,pins = <MX8MP_IOMUXC_I2C3_SCL__I2C3_SCL		0x400001e2>,
+			   <MX8MP_IOMUXC_I2C3_SDA__I2C3_SDA		0x400001e2>;
+	};
+
+	pinctrl_i2c3_gpio: i2c3-gpiogrp {
+		fsl,pins = <MX8MP_IOMUXC_I2C3_SCL__GPIO5_IO18		0x400001e2>,
+			   <MX8MP_IOMUXC_I2C3_SDA__GPIO5_IO19		0x400001e2>;
+	};
+
+	pinctrl_i2c4: i2c4grp {
+		fsl,pins = <MX8MP_IOMUXC_SD1_DATA2__I2C4_SCL		0x400001e2>,
+			   <MX8MP_IOMUXC_SD1_DATA3__I2C4_SDA		0x400001e2>;
+	};
+
+	pinctrl_i2c4_gpio: i2c4-gpiogrp {
+		fsl,pins = <MX8MP_IOMUXC_SD1_DATA2__GPIO2_IO04		0x400001e2>,
+			   <MX8MP_IOMUXC_SD1_DATA3__GPIO2_IO05		0x400001e2>;
+	};
+
+	pinctrl_i2c6: i2c6grp {
+		fsl,pins = <MX8MP_IOMUXC_SD1_DATA0__I2C6_SCL		0x400001e2>,
+			   <MX8MP_IOMUXC_SD1_DATA1__I2C6_SDA		0x400001e2>;
+	};
+
+	pinctrl_i2c6_gpio: i2c6-gpiogrp {
+		fsl,pins = <MX8MP_IOMUXC_SD1_DATA0__GPIO2_IO02		0x400001e2>,
+			   <MX8MP_IOMUXC_SD1_DATA1__GPIO2_IO03		0x400001e2>;
+	};
+
+	pinctrl_pcf85063: pcf85063grp {
+		fsl,pins = <MX8MP_IOMUXC_SAI1_RXFS__GPIO4_IO00		0x80>;
+	};
+
+	pinctrl_pcie: pciegrp {
+		fsl,pins = <MX8MP_IOMUXC_I2C4_SCL__PCIE_CLKREQ_B	0x60>,
+			   <MX8MP_IOMUXC_SD1_RESET_B__GPIO2_IO10	0x94>;
+	};
+
+	pinctrl_pmic: pmicirqgrp {
+		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO08__GPIO1_IO08		0x1c0>;
+	};
+
+	pinctrl_pwm2: pwm2grp {
+		fsl,pins = <MX8MP_IOMUXC_SPDIF_RX__PWM2_OUT		0x14>;
+	};
+
+	pinctrl_pwm3: pwm3grp {
+		fsl,pins = <MX8MP_IOMUXC_SPDIF_TX__PWM3_OUT		0x14>;
+	};
+
+	pinctrl_sai3: sai3grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SAI3_RXD__AUDIOMIX_SAI3_RX_DATA00	0x94
+			MX8MP_IOMUXC_SAI3_TXD__AUDIOMIX_SAI3_TX_DATA00	0x94
+			MX8MP_IOMUXC_SAI3_TXFS__AUDIOMIX_SAI3_TX_SYNC	0x94
+			MX8MP_IOMUXC_SAI3_TXC__AUDIOMIX_SAI3_TX_BCLK	0x94
+		>;
+	};
+
+	pinctrl_sai5: sai5grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SAI3_MCLK__AUDIOMIX_SAI5_MCLK	0x94
+			MX8MP_IOMUXC_SAI5_RXD0__AUDIOMIX_SAI5_RX_DATA00	0x94
+			MX8MP_IOMUXC_SAI2_RXD0__AUDIOMIX_SAI5_TX_DATA00	0x94
+			MX8MP_IOMUXC_SAI2_RXFS__AUDIOMIX_SAI5_TX_SYNC	0x94
+			MX8MP_IOMUXC_SAI2_RXC__AUDIOMIX_SAI5_TX_BCLK	0x94
+		>;
+	};
+
+	pinctrl_sdvmmc: sdvmmcgrp {
+		fsl,pins = <MX8MP_IOMUXC_SD2_RESET_B__GPIO2_IO19	0x10>;
+	};
+
+	pinctrl_tc9595: tc9595grp {
+		fsl,pins = <MX8MP_IOMUXC_I2C4_SDA__GPIO5_IO21		0x10>;
+	};
+
+	pinctrl_tmp1075: tmp1075grp {
+		fsl,pins = <MX8MP_IOMUXC_HDMI_CEC__GPIO3_IO28	0x140>;
+	};
+
+	/* DCE configuration */
+	pinctrl_uart1: uart1grp {
+		fsl,pins = <MX8MP_IOMUXC_UART1_TXD__UART1_DCE_TX	0x140>,
+			   <MX8MP_IOMUXC_UART1_RXD__UART1_DCE_RX	0x140>,
+			   <MX8MP_IOMUXC_UART3_RXD__UART1_DCE_CTS	0x140>,
+			   <MX8MP_IOMUXC_UART3_TXD__UART1_DCE_RTS	0x140>;
+	};
+
+	/* DCE configuration */
+	pinctrl_uart2: uart2grp {
+		fsl,pins = <MX8MP_IOMUXC_UART2_TXD__UART2_DCE_TX	0x140>,
+			   <MX8MP_IOMUXC_UART2_RXD__UART2_DCE_RX	0x140>,
+			   <MX8MP_IOMUXC_SD1_DATA4__GPIO2_IO06		0x140>,
+			   <MX8MP_IOMUXC_SD1_DATA5__GPIO2_IO07		0x140>;
+	};
+
+	pinctrl_uart3: uart3grp {
+		fsl,pins = <MX8MP_IOMUXC_SD1_DATA6__UART3_DCE_TX	0x140>,
+			   <MX8MP_IOMUXC_SD1_DATA7__UART3_DCE_RX	0x140>;
+	};
+
+	pinctrl_uart4: uart4grp {
+		fsl,pins = <MX8MP_IOMUXC_UART4_RXD__UART4_DCE_RX	0x140>,
+			   <MX8MP_IOMUXC_UART4_TXD__UART4_DCE_TX	0x140>;
+	};
+
+	pinctrl_usb0: usb0grp {
+		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO13__USB1_OTG_OC	0x1c0>,
+			   <MX8MP_IOMUXC_GPIO1_IO12__USB1_OTG_PWR	0x1c0>;
+	};
+
+	pinctrl_usb1: usb1grp {
+		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO15__USB2_OTG_OC	0x1c0>,
+			   <MX8MP_IOMUXC_GPIO1_IO14__USB2_OTG_PWR	0x1c0>;
+	};
+
+	pinctrl_usbcon0: usb0congrp {
+		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO10__GPIO1_IO10		0x1c0>;
+	};
+
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK		0x192>,
+			   <MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD		0x1d2>,
+			   <MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0	0x1d2>,
+			   <MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1	0x1d2>,
+			   <MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2	0x1d2>,
+			   <MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3	0x1d2>,
+			   <MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT	0xc0>;
+	};
+
+	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
+		fsl,pins = <MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK		0x194>,
+			   <MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD		0x1d4>,
+			   <MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0	0x1d4>,
+			   <MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1	0x1d4>,
+			   <MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2	0x1d4>,
+			   <MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3	0x1d4>,
+			   <MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT	0xc0>;
+	};
+
+	pinctrl_usdhc2_200mhz: usdhc2-200mhzgrp {
+		fsl,pins = <MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK		0x194>,
+			   <MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD		0x1d4>,
+			   <MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0	0x1d4>,
+			   <MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1	0x1d4>,
+			   <MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2	0x1d4>,
+			   <MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3	0x1d4>,
+			   <MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT	0xc0>;
+	};
+
+	pinctrl_usdhc2_gpio: usdhc2-gpiogrp {
+		fsl,pins = <MX8MP_IOMUXC_SD2_CD_B__GPIO2_IO12		0x1c0>,
+			   <MX8MP_IOMUXC_SD2_WP__GPIO2_IO20		0x1c0>;
+	};
+
+	pinctrl_usdhc3: usdhc3grp {
+		fsl,pins = <MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK		0x194>,
+			   <MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD		0x1d4>,
+			   <MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7		0x1d4>,
+			   <MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE	0x84>,
+			   <MX8MP_IOMUXC_NAND_READY_B__USDHC3_RESET_B	0x84>;
+	};
+
+	pinctrl_usdhc3_100mhz: usdhc3-100mhzgrp {
+		fsl,pins = <MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK		0x194>,
+			   <MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD		0x1d4>,
+			   <MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7		0x1d4>,
+			   <MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE	0x84>,
+			   <MX8MP_IOMUXC_NAND_READY_B__USDHC3_RESET_B	0x84>;
+	};
+
+	pinctrl_usdhc3_200mhz: usdhc3-200mhzgrp {
+		fsl,pins = <MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK		0x194>,
+			   <MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD		0x1d4>,
+			   <MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6	0x1d4>,
+			   <MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7		0x1d4>,
+			   <MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE	0x84>,
+			   <MX8MP_IOMUXC_NAND_READY_B__USDHC3_RESET_B	0x84>;
+	};
+
+	pinctrl_wdog: wdoggrp {
+		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO02__WDOG1_WDOG_B	0x1c4>;
+	};
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index bdf3d3926e..1e88c533f3 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -743,11 +743,12 @@ config MACH_SKOV_IMX8MP
 	select I2C_IMX_EARLY
 
 config MACH_TQ_MBA8MPXX
-	bool "TQ i.MX8MP Dual/Quad on MBa8MPxL Board"
+	bool "TQ i.MX8MP Dual/Quad on MBa8MPxL or MBa8MPxS Board"
 	select ARCH_IMX8MP
 	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
 	select FIRMWARE_IMX8MP_ATF
 	select ARM_SMCCC
+	select BOARD_TQ
 	select MCI_IMX_ESDHC_PBL
 	select IMX8M_DRAM
 	select I2C_IMX_EARLY

-- 
2.47.3



