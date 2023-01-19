Delivery-date: Thu, 19 Jan 2023 16:58:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pIXJ0-00GdVD-US
	for lore@lore.pengutronix.de; Thu, 19 Jan 2023 16:58:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pIXIy-0005r6-2j
	for lore@pengutronix.de; Thu, 19 Jan 2023 16:58:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VVLpK8ozYeAJLScDHAvgdH7NstlsXvgGheXIWLQmsjk=; b=G43FTvDxDgiS8h2ebmzTznG6pN
	VA+E+VqYh8l14MP6/uML9harxOHueAlrDKcWTGvOJNhR9OJjvoiBs4Hf8i0kAZFkMuKO+qMruGAV0
	9aqxwy66VjkvA93K7SJAszbzS0CQYbSkv2hRZaBgrujW+llnVvvyha/47ZOasPA3GLo7NbERV5Rtl
	KhpbGqbI/2jZJZJKuARciKk25I3c6ouFrByABDyebhlZO/67nINX7q7xb6JBDDA9ww1GZt0HXnZAs
	ysaIZ8U5WifElS/05fW5aJvLPiTO4MNL5+0gJ9ND6/zi5jxUy94VuJkd8T4Gf5Mn6VOt2+yzDFTbD
	scJfTc8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIXHJ-005nUD-JW; Thu, 19 Jan 2023 15:56:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIXH6-005nPd-0D
	for barebox@lists.infradead.org; Thu, 19 Jan 2023 15:56:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pIXH4-0005Wm-LA; Thu, 19 Jan 2023 16:56:22 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1pIXH4-007B6Y-03; Thu, 19 Jan 2023 16:56:22 +0100
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1pIXH3-00DC90-2I; Thu, 19 Jan 2023 16:56:21 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org,
	johannes.schneider@leica-geosystems.com
Date: Thu, 19 Jan 2023 16:56:02 +0100
Message-Id: <20230119155602.3144835-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230119155602.3144835-1-m.felsch@pengutronix.de>
References: <20230119155602.3144835-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230119_075627_386113_1A80FD18 
X-CRM114-Status: GOOD (  21.68  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 2/2] ARM: i.MX8MM: add support for 8MMINILPD4-CPU2 board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Johannes Schneider <johannes.schneider@leica-geosystems.com>

This commit adds support for the 8MMINILPD4-CPU2 board. This board
replaced the ROHM BD71847 by the NXP PCA9450. The pbl PMIC configuration
is taken from upstream u-boot v2023.01.

Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
[m.felsch@penugtronix.de: Adapt commit message]
[m.felsch@pengutronix.de: Fix pmic configuration settings to align with u-boot]
[m.felsch@pengutronix.de: Add dedicated dts support]
[m.felsch@pengutronix.de: Include Ahmad's review feedback]
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Hi,

I pocked Johannes v2 [1] and added the review feedback from Ahmad.

[1] <20230111100111.677018-1-johannes.schneider@leica-geosystems.com>.

 arch/arm/boards/nxp-imx8mm-evk/board.c    |   5 +-
 arch/arm/boards/nxp-imx8mm-evk/lowlevel.c |  50 ++++++++-
 arch/arm/dts/Makefile                     |   2 +-
 arch/arm/dts/imx8mm-evkb.dts              | 122 ++++++++++++++++++++++
 4 files changed, 170 insertions(+), 9 deletions(-)
 create mode 100644 arch/arm/dts/imx8mm-evkb.dts

diff --git a/arch/arm/boards/nxp-imx8mm-evk/board.c b/arch/arm/boards/nxp-imx8mm-evk/board.c
index db694943e5..76d669f1a7 100644
--- a/arch/arm/boards/nxp-imx8mm-evk/board.c
+++ b/arch/arm/boards/nxp-imx8mm-evk/board.c
@@ -60,9 +60,8 @@ static int imx8mm_evk_probe(struct device_d *dev)
 }
 
 static const struct of_device_id imx8mm_evk_of_match[] = {
-	{
-		.compatible = "fsl,imx8mm-evk",
-	},
+	{ .compatible = "fsl,imx8mm-evk", },
+	{ .compatible = "fsl,imx8mm-evkb", },
 	{ /* sentinel */ }
 };
 
diff --git a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
index 6132df53ec..5861d8d8be 100644
--- a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
@@ -16,12 +16,11 @@
 #include <mach/iomux-mx8mm.h>
 #include <mach/imx8m-ccm-regs.h>
 #include <mfd/bd71837.h>
+#include <mfd/pca9450.h>
 #include <mach/xload.h>
 #include <soc/imx8m/ddr.h>
 #include <image-metadata.h>
 
-extern char __dtb_z_imx8mm_evk_start[];
-
 #define UART_PAD_CTRL	MUX_PAD_CTRL(PAD_CTL_DSE_3P3V_45_OHM)
 
 static void setup_uart(void)
@@ -38,6 +37,32 @@ static void setup_uart(void)
 	putc_ll('>');
 }
 
+static struct pmic_config pca9450_cfg[] = {
+	/* BUCKxOUT_DVS0/1 control BUCK123 output */
+	{ PCA9450_BUCK123_DVS, 0x29 },
+
+	/* Buck 1 DVS control through PMIC_STBY_REQ */
+	{ PCA9450_BUCK1CTRL, 0x59 },
+
+	/* Set DVS1 to 0.8v for suspend */
+	{ PCA9450_BUCK1OUT_DVS1, 0x10 },
+
+	/* increase VDD_DRAM to 0.95v for 3Ghz DDR */
+	{ PCA9450_BUCK3OUT_DVS0, 0x1c },
+
+	/*
+	 * VDD_DRAM needs off in suspend, set B1_ENMODE=10
+	 * (ON by PMIC_ON_REQ = H && PMIC_STBY_REQ = L)
+	 */
+	{ PCA9450_BUCK3CTRL, 0x4a },
+
+	/* set VDD_SNVS_0V8 from default 0.85V */
+	{ PCA9450_LDO2CTRL, 0xc0 },
+
+	/* set WDOG_B_CFG to cold reset */
+	{ PCA9450_RESET_CTRL, 0xa1 },
+};
+
 static struct pmic_config bd71837_cfg[] = {
 	/* decrease RESET key long push time from the default 10s to 10ms */
 	{ BD718XX_PWRONCONFIG1, 0x0 },
@@ -63,7 +88,10 @@ static void power_init_board(void)
 
 	i2c = imx8m_i2c_early_init(IOMEM(MX8MQ_I2C1_BASE_ADDR));
 
-	pmic_configure(i2c, 0x4b, bd71837_cfg, ARRAY_SIZE(bd71837_cfg));
+	if (i2c_dev_probe(i2c, 0x25, true) == 0)
+		pmic_configure(i2c, 0x25, pca9450_cfg, ARRAY_SIZE(pca9450_cfg));
+	else
+		pmic_configure(i2c, 0x4b, bd71837_cfg, ARRAY_SIZE(bd71837_cfg));
 }
 
 extern struct dram_timing_info imx8mm_evk_dram_timing;
@@ -102,14 +130,26 @@ static void start_atf(void)
  */
 static __noreturn noinline void nxp_imx8mm_evk_start(void)
 {
+	extern char __dtb_z_imx8mm_evk_start[], __dtb_z_imx8mm_evkb_start[];
+	struct pbl_i2c *i2c;
+	void *fdt;
+
 	setup_uart();
 
 	start_atf();
 
 	/*
-	 * Standard entry we hit once we initialized both DDR and ATF
+	 * Standard entry we hit once we initialized both DDR and ATF. I2C pad
+	 * and clock setup already done during power_init_board().
 	 */
-	imx8mm_barebox_entry(__dtb_z_imx8mm_evk_start);
+	i2c = imx8m_i2c_early_init(IOMEM(MX8MQ_I2C1_BASE_ADDR));
+
+	if (i2c_dev_probe(i2c, 0x25, true) == 0)
+		fdt = __dtb_z_imx8mm_evkb_start;
+	else
+		fdt = __dtb_z_imx8mm_evk_start;
+
+	imx8mm_barebox_entry(fdt);
 }
 
 ENTRY_FUNCTION(start_nxp_imx8mm_evk, r0, r1, r2)
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 5ceb97129f..b6131bf072 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -141,7 +141,7 @@ lwl-$(CONFIG_MACH_SCB9328) += imx1-scb9328.dtb.o
 lwl-$(CONFIG_MACH_TECHNEXION_WANDBOARD) += imx6q-wandboard.dtb.o imx6dl-wandboard.dtb.o
 lwl-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += imx6ul-pico-hobbit.dtb.o
 lwl-$(CONFIG_MACH_NXP_IMX6ULL_EVK) += imx6ull-14x14-evk.dtb.o
-lwl-$(CONFIG_MACH_NXP_IMX8MM_EVK) += imx8mm-evk.dtb.o
+lwl-$(CONFIG_MACH_NXP_IMX8MM_EVK) += imx8mm-evk.dtb.o imx8mm-evkb.dtb.o
 lwl-$(CONFIG_MACH_NXP_IMX8MN_EVK) += imx8mn-evk.dtb.o imx8mn-ddr4-evk.dtb.o
 lwl-$(CONFIG_MACH_NXP_IMX8MP_EVK) += imx8mp-evk.dtb.o
 lwl-$(CONFIG_MACH_NXP_IMX8MQ_EVK) += imx8mq-evk.dtb.o
diff --git a/arch/arm/dts/imx8mm-evkb.dts b/arch/arm/dts/imx8mm-evkb.dts
new file mode 100644
index 0000000000..b7d3be7a84
--- /dev/null
+++ b/arch/arm/dts/imx8mm-evkb.dts
@@ -0,0 +1,122 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2017 NXP
+ * Copyright (C) 2017 Pengutronix, Lucas Stach <kernel@pengutronix.de>
+ * Copyright (C) 2023 Pengutronix, Marco Felsch <kernel@pengutronix.de>
+ */
+
+/dts-v1/;
+
+#include <arm64/freescale/imx8mm-evk.dts>
+#include "imx8mm.dtsi"
+#include "imx8mm-evk.dtsi"
+
+/ {
+	model = "FSL i.MX8MM EVKB";
+	compatible = "fsl,imx8mm-evkb", "fsl,imx8mm";
+};
+
+&i2c1 {
+	/delete-node/ pmic@4b;
+
+	pmic@25 {
+		compatible = "nxp,pca9450a";
+		reg = <0x25>;
+		pinctrl-0 = <&pinctrl_pmic>;
+		pinctrl-names = "default";
+		interrupt-parent = <&gpio1>;
+		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
+
+		regulators {
+			buck1_reg: BUCK1 {
+				regulator-name = "BUCK1";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <2187500>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <3125>;
+				nxp,dvs-run-voltage = <820000>;
+				nxp,dvs-standby-voltage = <800000>;
+			};
+
+			buck2_reg: BUCK2 {
+				regulator-name = "BUCK2";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <2187500>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <3125>;
+			};
+
+			buck3_reg: BUCK3 {
+				regulator-name = "BUCK3";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <2187500>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck4_reg: BUCK4 {
+				regulator-name = "BUCK4";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck5_reg: BUCK5 {
+				regulator-name = "BUCK5";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck6_reg: BUCK6 {
+				regulator-name = "BUCK6";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo1_reg: LDO1 {
+				regulator-name = "LDO1";
+				regulator-min-microvolt = <1600000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo2_reg: LDO2 {
+				regulator-name = "LDO2";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1150000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo3_reg: LDO3 {
+				regulator-name = "LDO3";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo4_reg: LDO4 {
+				regulator-name = "LDO4";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
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
-- 
2.30.2



