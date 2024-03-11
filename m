Delivery-date: Mon, 11 Mar 2024 17:12:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjiGA-001FSX-1e
	for lore@lore.pengutronix.de;
	Mon, 11 Mar 2024 17:12:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjiG8-0003T9-AT
	for lore@pengutronix.de; Mon, 11 Mar 2024 17:12:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iYK/lfDJ4s9KkhHIyZu4rhBz2oMNle94cv1kxrP7M3Q=; b=gPBnziL9CYDUjxSTMRiOISIiVd
	5rWGSRAStC6cCyp4SEn34SqvX3AwXoe7ENJ0j4Fajecck8I1rAYjcctvxUMQ7v0yC2j9Pry5xdJur
	m7oXEwjtTK48p7pxb0Q978trUNgV/ihPT4A2reY5a4OTfwaxYQ4AoY0qHhweaWiVe68K7SpgNheIp
	3HYCkkAXjaTGhVksr1Se3pt3neVu2AtzqJI0RdmAQ0O1x031Cv0jpUcR1oeRHbYOcN0raNIOohgdA
	kFuyCDuF342kNH3SX6Z4UXdIiYm2jpgGyL32HNG9k8lLO08IYy5ouO44u7aMLSrs73OUkLmH1JLQs
	CELQRlAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjiFX-00000002EeY-3iYW;
	Mon, 11 Mar 2024 16:11:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjiFK-00000002EWM-47Qk
	for barebox@lists.infradead.org;
	Mon, 11 Mar 2024 16:11:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rjiFI-0002QY-QA; Mon, 11 Mar 2024 17:11:24 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rjiFI-005kb4-Ao; Mon, 11 Mar 2024 17:11:24 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rjiFH-00EPUY-2K;
	Mon, 11 Mar 2024 17:11:24 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Mon, 11 Mar 2024 17:11:23 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240311-karo-imx8mp-som-board-upstreaming-v2-6-6ecda693adb2@pengutronix.de>
References: <20240311-karo-imx8mp-som-board-upstreaming-v2-0-6ecda693adb2@pengutronix.de>
In-Reply-To: <20240311-karo-imx8mp-som-board-upstreaming-v2-0-6ecda693adb2@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_091127_793915_728EE491 
X-CRM114-Status: GOOD (  20.81  )
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
Subject: [PATCH v2 6/6] arm: imx8mp: add karo electronics qsxp-ml81 som
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Marc Kleine-Budde <mkl@pengutronix.de>

The Ka-Ro QSXP is a i.MX8M Plus solder down system on module. This
commit adds support for the SOM on the QSBASE4 RDK.

[1]: https://www.karo-electronics.de/qsxp

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 arch/arm/boards/Makefile                           |   1 +
 arch/arm/boards/karo-qsxp-ml81/Makefile            |   4 +
 arch/arm/boards/karo-qsxp-ml81/board.c             |  35 +
 .../flash-header-karo-qsxp-ml81.imxcfg             |   9 +
 arch/arm/boards/karo-qsxp-ml81/lowlevel.c          | 102 +++
 arch/arm/boards/karo-qsxp-ml81/lowlevel.h          |   8 +
 arch/arm/boards/karo-qsxp-ml81/lpddr4-timing.c     | 872 +++++++++++++++++++++
 arch/arm/configs/imx_v8_defconfig                  |   1 +
 arch/arm/configs/multi_v8_defconfig                |   1 +
 arch/arm/dts/Makefile                              |   1 +
 arch/arm/mach-imx/Kconfig                          |  10 +
 images/Makefile.imx                                |   2 +
 12 files changed, 1046 insertions(+)

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index e597b02be6..dbec2bcc26 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -62,6 +62,7 @@ obj-$(CONFIG_MACH_HABA_KNX_LITE)		+= haba-knx/
 obj-$(CONFIG_MACH_IMX233_OLINUXINO)		+= imx233-olinuxino/
 obj-$(CONFIG_MACH_INNOCOMM_WB15)			+= innocomm-imx8mm-wb15/
 obj-$(CONFIG_MACH_KAMSTRUP_MX7_CONCENTRATOR)	+= kamstrup-mx7-concentrator/
+obj-$(CONFIG_MACH_KARO_QSXP_ML81)		+= karo-qsxp-ml81/
 obj-$(CONFIG_MACH_KONTRON_SAMX6I)		+= kontron-samx6i/
 obj-$(CONFIG_MACH_LENOVO_IX4_300D)		+= lenovo-ix4-300d/
 obj-$(CONFIG_MACH_LUBBOCK)			+= lubbock/
diff --git a/arch/arm/boards/karo-qsxp-ml81/Makefile b/arch/arm/boards/karo-qsxp-ml81/Makefile
new file mode 100644
index 0000000000..10abebc539
--- /dev/null
+++ b/arch/arm/boards/karo-qsxp-ml81/Makefile
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+lwl-y += lowlevel.o lpddr4-timing.o
+obj-y += board.o
diff --git a/arch/arm/boards/karo-qsxp-ml81/board.c b/arch/arm/boards/karo-qsxp-ml81/board.c
new file mode 100644
index 0000000000..e9e3d46bf1
--- /dev/null
+++ b/arch/arm/boards/karo-qsxp-ml81/board.c
@@ -0,0 +1,35 @@
+// SPDX-License-Identifier: GPL-2.0
+// SPDX-FileCopyrightText: 2022 Ahmad Fatoum, Pengutronix
+
+#include <bootsource.h>
+#include <common.h>
+#include <deep-probe.h>
+#include <init.h>
+#include <mach/imx/bbu.h>
+
+static int karo_qsxp_ml81_probe(struct device *dev)
+{
+	int emmc_bbu_flag = 0;
+
+	if (bootsource_get() == BOOTSOURCE_MMC && bootsource_get_instance() == 2) {
+		of_device_enable_path("/chosen/environment-emmc");
+		emmc_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
+	}
+
+	imx8m_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc2", emmc_bbu_flag);
+
+	return 0;
+}
+
+static const struct of_device_id karo_qsxp_ml81_of_match[] = {
+	{ .compatible = "karo,imx8mp-qsxp-ml81-qsbase4" },
+	{ /* sentinel */ },
+};
+BAREBOX_DEEP_PROBE_ENABLE(karo_qsxp_ml81_of_match);
+
+static struct driver karo_qsxp_ml81_board_driver = {
+	.name = "board-karo-qsxp-ml81",
+	.probe = karo_qsxp_ml81_probe,
+	.of_compatible = DRV_OF_COMPAT(karo_qsxp_ml81_of_match),
+};
+coredevice_platform_driver(karo_qsxp_ml81_board_driver);
diff --git a/arch/arm/boards/karo-qsxp-ml81/flash-header-karo-qsxp-ml81.imxcfg b/arch/arm/boards/karo-qsxp-ml81/flash-header-karo-qsxp-ml81.imxcfg
new file mode 100644
index 0000000000..da0892e52d
--- /dev/null
+++ b/arch/arm/boards/karo-qsxp-ml81/flash-header-karo-qsxp-ml81.imxcfg
@@ -0,0 +1,9 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+soc imx8mp
+
+loadaddr 0x00920000
+max_load_size 0x3f000
+ivtofs 0x0
+
+#include <mach/imx/habv4-imx8-gencsf.h>
diff --git a/arch/arm/boards/karo-qsxp-ml81/lowlevel.c b/arch/arm/boards/karo-qsxp-ml81/lowlevel.c
new file mode 100644
index 0000000000..506a9c9930
--- /dev/null
+++ b/arch/arm/boards/karo-qsxp-ml81/lowlevel.c
@@ -0,0 +1,102 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <asm/barebox-arm.h>
+#include <common.h>
+#include <debug_ll.h>
+#include <mach/imx/atf.h>
+#include <mach/imx/debug_ll.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx8m-ccm-regs.h>
+#include <mach/imx/iomux-mx8mp.h>
+#include <mach/imx/xload.h>
+#include <mfd/pca9450.h>
+#include <pbl/i2c.h>
+#include <pbl/pmic.h>
+#include <soc/imx8m/ddr.h>
+
+#include "lowlevel.h"
+
+extern char __dtb_z_imx8mp_karo_qsxp_ml81_qsbase4_start[];
+
+#define UART_PAD_CTRL	MUX_PAD_CTRL(MX8MP_PAD_CTL_DSE6 | \
+				     MX8MP_PAD_CTL_FSEL)
+
+#define I2C_PAD_CTRL	MUX_PAD_CTRL(MX8MP_PAD_CTL_PE | \
+				     MX8MP_PAD_CTL_HYS | \
+				     MX8MP_PAD_CTL_PUE | \
+				     MX8MP_PAD_CTL_DSE6)
+
+static void setup_uart(void)
+{
+	void __iomem *uart = IOMEM(MX8M_UART2_BASE_ADDR);
+
+	imx8m_early_setup_uart_clock();
+
+	imx8mp_setup_pad(MX8MP_PAD_UART2_TXD__UART2_DCE_TX | UART_PAD_CTRL);
+	imx8m_uart_setup(uart);
+
+	pbl_set_putc(imx_uart_putc, uart);
+
+	putc_ll('>');
+}
+
+#define pca9450_mV_to_reg(mV)	(((mV) - 600) * 10 / 125)
+#define pca9450_reg_to_mV(val)	(((val) * 125 / 10) + 600)
+
+#define VDD_SOC_VAL	pca9450_mV_to_reg(950)
+#define VDD_SOC_SLP_VAL	pca9450_mV_to_reg(850)
+#define VDD_ARM_VAL	pca9450_mV_to_reg(950)
+#define VDD_DRAM_VAL	pca9450_mV_to_reg(950)
+
+static struct pmic_config pca9450_cfg[] = {
+	{ PCA9450_BUCK123_DVS, 0x29 },
+	{ PCA9450_BUCK1OUT_DVS0, VDD_SOC_VAL },
+	{ PCA9450_BUCK1OUT_DVS1, VDD_SOC_SLP_VAL },
+	{ PCA9450_BUCK2OUT_DVS0, VDD_ARM_VAL },
+	{ PCA9450_BUCK3OUT_DVS0, VDD_DRAM_VAL },
+	{ PCA9450_BUCK1CTRL, 0x59 },
+	{ PCA9450_RESET_CTRL, 0xA1 },
+};
+
+static void power_init_board(void)
+{
+	struct pbl_i2c *i2c;
+
+	imx8mp_setup_pad(MX8MP_PAD_I2C1_SCL__I2C1_SCL | I2C_PAD_CTRL);
+	imx8mp_setup_pad(MX8MP_PAD_I2C1_SDA__I2C1_SDA | I2C_PAD_CTRL);
+
+	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_I2C1);
+
+	i2c = imx8m_i2c_early_init(IOMEM(MX8MP_I2C1_BASE_ADDR));
+
+	pmic_configure(i2c, 0x25, pca9450_cfg, ARRAY_SIZE(pca9450_cfg));
+}
+
+ENTRY_FUNCTION(start_karo_qsxp_ml81, r0, r1, r2)
+{
+	imx8mp_cpu_lowlevel_init();
+
+	relocate_to_current_adr();
+	setup_c();
+
+	setup_uart();
+
+	/*
+	 * If we are in EL3 we are running for the first time out of OCRAM,
+	 * we'll need to initialize the DRAM and run TF-A (BL31). The TF-A
+	 * will then jump to DRAM in EL2
+	 */
+	if (current_el() == 3) {
+		imx8mp_early_clock_init();
+
+		power_init_board();
+
+		imx8mp_ddr_init(&karo_qsxp_ml81_dram_timing, DRAM_TYPE_LPDDR4);
+
+		imx8mp_load_and_start_image_via_tfa();
+	}
+
+	/* Standard entry we hit once we initialized both DDR and ATF */
+	imx8mp_barebox_entry(__dtb_z_imx8mp_karo_qsxp_ml81_qsbase4_start);
+}
diff --git a/arch/arm/boards/karo-qsxp-ml81/lowlevel.h b/arch/arm/boards/karo-qsxp-ml81/lowlevel.h
new file mode 100644
index 0000000000..37e5269653
--- /dev/null
+++ b/arch/arm/boards/karo-qsxp-ml81/lowlevel.h
@@ -0,0 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef KARO_QSXP_ML81_LOWLEVEL_H_
+#define KARO_QSXP_ML81_LOWLEVEL_H_
+
+extern struct dram_timing_info karo_qsxp_ml81_dram_timing;
+
+#endif
diff --git a/arch/arm/boards/karo-qsxp-ml81/lpddr4-timing.c b/arch/arm/boards/karo-qsxp-ml81/lpddr4-timing.c
new file mode 100644
index 0000000000..e151bcf01a
--- /dev/null
+++ b/arch/arm/boards/karo-qsxp-ml81/lpddr4-timing.c
@@ -0,0 +1,872 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright 2019 NXP
+ *
+ * Generated code from MX8M_DDR_tool
+ *
+ * Align with uboot version:
+ * imx_v2019.04_5.4.x and above version
+ */
+
+#include <common.h>
+#include <soc/imx8m/ddr.h>
+
+#include <soc/imx8m/lpddr4_define.h>
+
+#include "lowlevel.h"
+
+static struct dram_cfg_param ddr_ddrc_cfg[] = {
+	/** Initialize DDRC registers **/
+	{ 0x3d400304, 0x1 },
+	{ 0x3d400030, 0x1 },
+	{ 0x3d400000, 0xa1080020 },
+	{ 0x3d400020, 0x1203 },
+	{ 0x3d400024, 0x186a000 },
+	{ 0x3d400064, 0x6100e0 },
+	{ 0x3d400070, 0x7027f90 },
+	{ 0x3d400074, 0x790 },
+	{ 0x3d4000d0, 0xc003061c },
+	{ 0x3d4000d4, 0x9e0000 },
+	{ 0x3d4000dc, 0xd4002d },
+	{ 0x3d4000e0, 0x210000 },
+	{ 0x3d4000e8, 0x630048 },
+	{ 0x3d4000ec, 0x140025 },
+	{ 0x3d400100, 0x1a201b22 },
+	{ 0x3d400104, 0x60633 },
+	{ 0x3d40010c, 0xc0c000 },
+	{ 0x3d400110, 0xf04080f },
+	{ 0x3d400114, 0x2040c0c },
+	{ 0x3d400118, 0x1010007 },
+	{ 0x3d40011c, 0x401 },
+	{ 0x3d400130, 0x20600 },
+	{ 0x3d400134, 0xe100002 },
+	{ 0x3d400138, 0xe6 },
+	{ 0x3d400144, 0xa00050 },
+	{ 0x3d400180, 0x3200018 },
+	{ 0x3d400184, 0x28061a8 },
+	{ 0x3d400188, 0x0 },
+	{ 0x3d400190, 0x497820a },
+	{ 0x3d400194, 0x80303 },
+	{ 0x3d4001b4, 0x170a },
+	{ 0x3d4001a0, 0xe0400018 },
+	{ 0x3d4001a4, 0xdf00e4 },
+	{ 0x3d4001a8, 0x80000000 },
+	{ 0x3d4001b0, 0x11 },
+	{ 0x3d4001c0, 0x1 },
+	{ 0x3d4001c4, 0x1 },
+	{ 0x3d4000f4, 0xc99 },
+	{ 0x3d400108, 0x70e1617 },
+	{ 0x3d400200, 0x1f },
+	{ 0x3d40020c, 0x0 },
+	{ 0x3d400210, 0x1f1f },
+	{ 0x3d400204, 0x80808 },
+	{ 0x3d400214, 0x7070707 },
+	{ 0x3d400218, 0x7070707 },
+	{ 0x3d40021c, 0xf0f },
+	{ 0x3d400250, 0x1705 },
+	{ 0x3d400254, 0x2c },
+	{ 0x3d40025c, 0x4000030 },
+	{ 0x3d400264, 0x900093e7 },
+	{ 0x3d40026c, 0x2005574 },
+	{ 0x3d400400, 0x111 },
+	{ 0x3d400404, 0x72ff },
+	{ 0x3d400408, 0x72ff },
+	{ 0x3d400494, 0x2100e07 },
+	{ 0x3d400498, 0x620096 },
+	{ 0x3d40049c, 0x1100e07 },
+	{ 0x3d4004a0, 0xc8012c },
+	{ 0x3d400028, 0x0 },
+};
+
+/* PHY Initialize Configuration */
+static struct dram_cfg_param ddr_ddrphy_cfg[] = {
+	{ 0x100a0, 0x1 },
+	{ 0x100a1, 0x0 },
+	{ 0x100a2, 0x5 },
+	{ 0x100a3, 0x3 },
+	{ 0x100a4, 0x2 },
+	{ 0x100a5, 0x4 },
+	{ 0x100a6, 0x6 },
+	{ 0x100a7, 0x7 },
+	{ 0x110a0, 0x7 },
+	{ 0x110a1, 0x6 },
+	{ 0x110a2, 0x3 },
+	{ 0x110a3, 0x5 },
+	{ 0x110a4, 0x4 },
+	{ 0x110a5, 0x2 },
+	{ 0x110a6, 0x1 },
+	{ 0x110a7, 0x0 },
+	{ 0x120a0, 0x0 },
+	{ 0x120a1, 0x1 },
+	{ 0x120a2, 0x3 },
+	{ 0x120a3, 0x4 },
+	{ 0x120a4, 0x5 },
+	{ 0x120a5, 0x2 },
+	{ 0x120a6, 0x6 },
+	{ 0x120a7, 0x7 },
+	{ 0x130a0, 0x1 },
+	{ 0x130a1, 0x6 },
+	{ 0x130a2, 0x2 },
+	{ 0x130a3, 0x3 },
+	{ 0x130a4, 0x4 },
+	{ 0x130a5, 0x5 },
+	{ 0x130a6, 0x7 },
+	{ 0x130a7, 0x0 },
+	{ 0x1005f, 0x1ff },
+	{ 0x1015f, 0x1ff },
+	{ 0x1105f, 0x1ff },
+	{ 0x1115f, 0x1ff },
+	{ 0x1205f, 0x1ff },
+	{ 0x1215f, 0x1ff },
+	{ 0x1305f, 0x1ff },
+	{ 0x1315f, 0x1ff },
+	{ 0x55, 0x1ff },
+	{ 0x1055, 0x1ff },
+	{ 0x2055, 0x1ff },
+	{ 0x3055, 0x1ff },
+	{ 0x4055, 0x1ff },
+	{ 0x5055, 0x1ff },
+	{ 0x6055, 0x1ff },
+	{ 0x7055, 0x1ff },
+	{ 0x8055, 0x1ff },
+	{ 0x9055, 0x1ff },
+	{ 0x200c5, 0x19 },
+	{ 0x2002e, 0x2 },
+	{ 0x90204, 0x0 },
+	{ 0x20024, 0x1a3 },
+	{ 0x2003a, 0x2 },
+	{ 0x20056, 0x3 },
+	{ 0x1004d, 0x600 },
+	{ 0x1014d, 0x600 },
+	{ 0x1104d, 0x600 },
+	{ 0x1114d, 0x600 },
+	{ 0x1204d, 0x600 },
+	{ 0x1214d, 0x600 },
+	{ 0x1304d, 0x600 },
+	{ 0x1314d, 0x600 },
+	{ 0x10049, 0x69a },
+	{ 0x10149, 0x69a },
+	{ 0x11049, 0x69a },
+	{ 0x11149, 0x69a },
+	{ 0x12049, 0x69a },
+	{ 0x12149, 0x69a },
+	{ 0x13049, 0x69a },
+	{ 0x13149, 0x69a },
+	{ 0x43, 0x63 },
+	{ 0x1043, 0x63 },
+	{ 0x2043, 0x63 },
+	{ 0x3043, 0x63 },
+	{ 0x4043, 0x63 },
+	{ 0x5043, 0x63 },
+	{ 0x6043, 0x63 },
+	{ 0x7043, 0x63 },
+	{ 0x8043, 0x63 },
+	{ 0x9043, 0x63 },
+	{ 0x20018, 0x3 },
+	{ 0x20075, 0x4 },
+	{ 0x20050, 0x0 },
+	{ 0x20008, 0x320 },
+	{ 0x20088, 0x9 },
+	{ 0x200b2, 0x104 },
+	{ 0x10043, 0x5a1 },
+	{ 0x10143, 0x5a1 },
+	{ 0x11043, 0x5a1 },
+	{ 0x11143, 0x5a1 },
+	{ 0x12043, 0x5a1 },
+	{ 0x12143, 0x5a1 },
+	{ 0x13043, 0x5a1 },
+	{ 0x13143, 0x5a1 },
+	{ 0x200fa, 0x1 },
+	{ 0x20019, 0x1 },
+	{ 0x200f0, 0x0 },
+	{ 0x200f1, 0x0 },
+	{ 0x200f2, 0x4444 },
+	{ 0x200f3, 0x8888 },
+	{ 0x200f4, 0x5555 },
+	{ 0x200f5, 0x0 },
+	{ 0x200f6, 0x0 },
+	{ 0x200f7, 0xf000 },
+	{ 0x20025, 0x0 },
+	{ 0x2002d, 0x0 },
+	{ 0x2007d, 0x212 },
+	{ 0x2007c, 0x61 },
+	{ 0x1004a, 0x500 },
+	{ 0x1104a, 0x500 },
+	{ 0x1204a, 0x500 },
+	{ 0x1304a, 0x500 },
+	{ 0x2002c, 0x0 },
+};
+
+/* P0 message block parameter for training firmware */
+static struct dram_cfg_param ddr_fsp0_cfg[] = {
+	{ 0xd0000, 0x0 },
+	{ 0x54003, 0xc80 },
+	{ 0x54004, 0x2 },
+	{ 0x54005, 0x303c },
+	{ 0x54006, 0x14 },
+	{ 0x54008, 0x131f },
+	{ 0x54009, 0xc8 },
+	{ 0x5400b, 0x2 },
+	{ 0x5400f, 0x100 },
+	{ 0x54012, 0x110 },
+	{ 0x54019, 0x2dd4 },
+	{ 0x5401a, 0x21 },
+	{ 0x5401b, 0x4863 },
+	{ 0x5401c, 0x2500 },
+	{ 0x5401e, 0x14 },
+	{ 0x5401f, 0x2dd4 },
+	{ 0x54020, 0x21 },
+	{ 0x54021, 0x4863 },
+	{ 0x54022, 0x2500 },
+	{ 0x54024, 0x14 },
+	{ 0x5402b, 0x1000 },
+	{ 0x5402c, 0x1 },
+	{ 0x54032, 0xd400 },
+	{ 0x54033, 0x212d },
+	{ 0x54034, 0x6300 },
+	{ 0x54035, 0x48 },
+	{ 0x54036, 0x25 },
+	{ 0x54037, 0x1400 },
+	{ 0x54038, 0xd400 },
+	{ 0x54039, 0x212d },
+	{ 0x5403a, 0x6300 },
+	{ 0x5403b, 0x48 },
+	{ 0x5403c, 0x25 },
+	{ 0x5403d, 0x1400 },
+	{ 0xd0000, 0x1 },
+};
+
+/* P0 2D message block parameter for training firmware */
+static struct dram_cfg_param ddr_fsp0_2d_cfg[] = {
+	{ 0xd0000, 0x0 },
+	{ 0x54003, 0xc80 },
+	{ 0x54004, 0x2 },
+	{ 0x54005, 0x303c },
+	{ 0x54006, 0x14 },
+	{ 0x54008, 0x61 },
+	{ 0x54009, 0xc8 },
+	{ 0x5400b, 0x2 },
+	{ 0x5400f, 0x100 },
+	{ 0x54010, 0x1f7f },
+	{ 0x54012, 0x110 },
+	{ 0x54019, 0x2dd4 },
+	{ 0x5401a, 0x21 },
+	{ 0x5401b, 0x4863 },
+	{ 0x5401c, 0x2500 },
+	{ 0x5401e, 0x14 },
+	{ 0x5401f, 0x2dd4 },
+	{ 0x54020, 0x21 },
+	{ 0x54021, 0x4863 },
+	{ 0x54022, 0x2500 },
+	{ 0x54024, 0x14 },
+	{ 0x5402b, 0x1000 },
+	{ 0x5402c, 0x1 },
+	{ 0x54032, 0xd400 },
+	{ 0x54033, 0x212d },
+	{ 0x54034, 0x6300 },
+	{ 0x54035, 0x48 },
+	{ 0x54036, 0x25 },
+	{ 0x54037, 0x1400 },
+	{ 0x54038, 0xd400 },
+	{ 0x54039, 0x212d },
+	{ 0x5403a, 0x6300 },
+	{ 0x5403b, 0x48 },
+	{ 0x5403c, 0x25 },
+	{ 0x5403d, 0x1400 },
+	{ 0xd0000, 0x1 },
+};
+
+/* DRAM PHY init engine image */
+static struct dram_cfg_param ddr_phy_pie[] = {
+	{ 0xd0000, 0x0 },
+	{ 0x90000, 0x10 },
+	{ 0x90001, 0x400 },
+	{ 0x90002, 0x10e },
+	{ 0x90003, 0x0 },
+	{ 0x90004, 0x0 },
+	{ 0x90005, 0x8 },
+	{ 0x90029, 0xb },
+	{ 0x9002a, 0x480 },
+	{ 0x9002b, 0x109 },
+	{ 0x9002c, 0x8 },
+	{ 0x9002d, 0x448 },
+	{ 0x9002e, 0x139 },
+	{ 0x9002f, 0x8 },
+	{ 0x90030, 0x478 },
+	{ 0x90031, 0x109 },
+	{ 0x90032, 0x0 },
+	{ 0x90033, 0xe8 },
+	{ 0x90034, 0x109 },
+	{ 0x90035, 0x2 },
+	{ 0x90036, 0x10 },
+	{ 0x90037, 0x139 },
+	{ 0x90038, 0xb },
+	{ 0x90039, 0x7c0 },
+	{ 0x9003a, 0x139 },
+	{ 0x9003b, 0x44 },
+	{ 0x9003c, 0x633 },
+	{ 0x9003d, 0x159 },
+	{ 0x9003e, 0x14f },
+	{ 0x9003f, 0x630 },
+	{ 0x90040, 0x159 },
+	{ 0x90041, 0x47 },
+	{ 0x90042, 0x633 },
+	{ 0x90043, 0x149 },
+	{ 0x90044, 0x4f },
+	{ 0x90045, 0x633 },
+	{ 0x90046, 0x179 },
+	{ 0x90047, 0x8 },
+	{ 0x90048, 0xe0 },
+	{ 0x90049, 0x109 },
+	{ 0x9004a, 0x0 },
+	{ 0x9004b, 0x7c8 },
+	{ 0x9004c, 0x109 },
+	{ 0x9004d, 0x0 },
+	{ 0x9004e, 0x1 },
+	{ 0x9004f, 0x8 },
+	{ 0x90050, 0x0 },
+	{ 0x90051, 0x45a },
+	{ 0x90052, 0x9 },
+	{ 0x90053, 0x0 },
+	{ 0x90054, 0x448 },
+	{ 0x90055, 0x109 },
+	{ 0x90056, 0x40 },
+	{ 0x90057, 0x633 },
+	{ 0x90058, 0x179 },
+	{ 0x90059, 0x1 },
+	{ 0x9005a, 0x618 },
+	{ 0x9005b, 0x109 },
+	{ 0x9005c, 0x40c0 },
+	{ 0x9005d, 0x633 },
+	{ 0x9005e, 0x149 },
+	{ 0x9005f, 0x8 },
+	{ 0x90060, 0x4 },
+	{ 0x90061, 0x48 },
+	{ 0x90062, 0x4040 },
+	{ 0x90063, 0x633 },
+	{ 0x90064, 0x149 },
+	{ 0x90065, 0x0 },
+	{ 0x90066, 0x4 },
+	{ 0x90067, 0x48 },
+	{ 0x90068, 0x40 },
+	{ 0x90069, 0x633 },
+	{ 0x9006a, 0x149 },
+	{ 0x9006b, 0x10 },
+	{ 0x9006c, 0x4 },
+	{ 0x9006d, 0x18 },
+	{ 0x9006e, 0x0 },
+	{ 0x9006f, 0x4 },
+	{ 0x90070, 0x78 },
+	{ 0x90071, 0x549 },
+	{ 0x90072, 0x633 },
+	{ 0x90073, 0x159 },
+	{ 0x90074, 0xd49 },
+	{ 0x90075, 0x633 },
+	{ 0x90076, 0x159 },
+	{ 0x90077, 0x94a },
+	{ 0x90078, 0x633 },
+	{ 0x90079, 0x159 },
+	{ 0x9007a, 0x441 },
+	{ 0x9007b, 0x633 },
+	{ 0x9007c, 0x149 },
+	{ 0x9007d, 0x42 },
+	{ 0x9007e, 0x633 },
+	{ 0x9007f, 0x149 },
+	{ 0x90080, 0x1 },
+	{ 0x90081, 0x633 },
+	{ 0x90082, 0x149 },
+	{ 0x90083, 0x0 },
+	{ 0x90084, 0xe0 },
+	{ 0x90085, 0x109 },
+	{ 0x90086, 0xa },
+	{ 0x90087, 0x10 },
+	{ 0x90088, 0x109 },
+	{ 0x90089, 0x9 },
+	{ 0x9008a, 0x3c0 },
+	{ 0x9008b, 0x149 },
+	{ 0x9008c, 0x9 },
+	{ 0x9008d, 0x3c0 },
+	{ 0x9008e, 0x159 },
+	{ 0x9008f, 0x18 },
+	{ 0x90090, 0x10 },
+	{ 0x90091, 0x109 },
+	{ 0x90092, 0x0 },
+	{ 0x90093, 0x3c0 },
+	{ 0x90094, 0x109 },
+	{ 0x90095, 0x18 },
+	{ 0x90096, 0x4 },
+	{ 0x90097, 0x48 },
+	{ 0x90098, 0x18 },
+	{ 0x90099, 0x4 },
+	{ 0x9009a, 0x58 },
+	{ 0x9009b, 0xb },
+	{ 0x9009c, 0x10 },
+	{ 0x9009d, 0x109 },
+	{ 0x9009e, 0x1 },
+	{ 0x9009f, 0x10 },
+	{ 0x900a0, 0x109 },
+	{ 0x900a1, 0x5 },
+	{ 0x900a2, 0x7c0 },
+	{ 0x900a3, 0x109 },
+	{ 0x40000, 0x811 },
+	{ 0x40020, 0x880 },
+	{ 0x40040, 0x0 },
+	{ 0x40060, 0x0 },
+	{ 0x40001, 0x4008 },
+	{ 0x40021, 0x83 },
+	{ 0x40041, 0x4f },
+	{ 0x40061, 0x0 },
+	{ 0x40002, 0x4040 },
+	{ 0x40022, 0x83 },
+	{ 0x40042, 0x51 },
+	{ 0x40062, 0x0 },
+	{ 0x40003, 0x811 },
+	{ 0x40023, 0x880 },
+	{ 0x40043, 0x0 },
+	{ 0x40063, 0x0 },
+	{ 0x40004, 0x720 },
+	{ 0x40024, 0xf },
+	{ 0x40044, 0x1740 },
+	{ 0x40064, 0x0 },
+	{ 0x40005, 0x16 },
+	{ 0x40025, 0x83 },
+	{ 0x40045, 0x4b },
+	{ 0x40065, 0x0 },
+	{ 0x40006, 0x716 },
+	{ 0x40026, 0xf },
+	{ 0x40046, 0x2001 },
+	{ 0x40066, 0x0 },
+	{ 0x40007, 0x716 },
+	{ 0x40027, 0xf },
+	{ 0x40047, 0x2800 },
+	{ 0x40067, 0x0 },
+	{ 0x40008, 0x716 },
+	{ 0x40028, 0xf },
+	{ 0x40048, 0xf00 },
+	{ 0x40068, 0x0 },
+	{ 0x40009, 0x720 },
+	{ 0x40029, 0xf },
+	{ 0x40049, 0x1400 },
+	{ 0x40069, 0x0 },
+	{ 0x4000a, 0xe08 },
+	{ 0x4002a, 0xc15 },
+	{ 0x4004a, 0x0 },
+	{ 0x4006a, 0x0 },
+	{ 0x4000b, 0x625 },
+	{ 0x4002b, 0x15 },
+	{ 0x4004b, 0x0 },
+	{ 0x4006b, 0x0 },
+	{ 0x4000c, 0x4028 },
+	{ 0x4002c, 0x80 },
+	{ 0x4004c, 0x0 },
+	{ 0x4006c, 0x0 },
+	{ 0x4000d, 0xe08 },
+	{ 0x4002d, 0xc1a },
+	{ 0x4004d, 0x0 },
+	{ 0x4006d, 0x0 },
+	{ 0x4000e, 0x625 },
+	{ 0x4002e, 0x1a },
+	{ 0x4004e, 0x0 },
+	{ 0x4006e, 0x0 },
+	{ 0x4000f, 0x4040 },
+	{ 0x4002f, 0x80 },
+	{ 0x4004f, 0x0 },
+	{ 0x4006f, 0x0 },
+	{ 0x40010, 0x2604 },
+	{ 0x40030, 0x15 },
+	{ 0x40050, 0x0 },
+	{ 0x40070, 0x0 },
+	{ 0x40011, 0x708 },
+	{ 0x40031, 0x5 },
+	{ 0x40051, 0x0 },
+	{ 0x40071, 0x2002 },
+	{ 0x40012, 0x8 },
+	{ 0x40032, 0x80 },
+	{ 0x40052, 0x0 },
+	{ 0x40072, 0x0 },
+	{ 0x40013, 0x2604 },
+	{ 0x40033, 0x1a },
+	{ 0x40053, 0x0 },
+	{ 0x40073, 0x0 },
+	{ 0x40014, 0x708 },
+	{ 0x40034, 0xa },
+	{ 0x40054, 0x0 },
+	{ 0x40074, 0x2002 },
+	{ 0x40015, 0x4040 },
+	{ 0x40035, 0x80 },
+	{ 0x40055, 0x0 },
+	{ 0x40075, 0x0 },
+	{ 0x40016, 0x60a },
+	{ 0x40036, 0x15 },
+	{ 0x40056, 0x1200 },
+	{ 0x40076, 0x0 },
+	{ 0x40017, 0x61a },
+	{ 0x40037, 0x15 },
+	{ 0x40057, 0x1300 },
+	{ 0x40077, 0x0 },
+	{ 0x40018, 0x60a },
+	{ 0x40038, 0x1a },
+	{ 0x40058, 0x1200 },
+	{ 0x40078, 0x0 },
+	{ 0x40019, 0x642 },
+	{ 0x40039, 0x1a },
+	{ 0x40059, 0x1300 },
+	{ 0x40079, 0x0 },
+	{ 0x4001a, 0x4808 },
+	{ 0x4003a, 0x880 },
+	{ 0x4005a, 0x0 },
+	{ 0x4007a, 0x0 },
+	{ 0x900a4, 0x0 },
+	{ 0x900a5, 0x790 },
+	{ 0x900a6, 0x11a },
+	{ 0x900a7, 0x8 },
+	{ 0x900a8, 0x7aa },
+	{ 0x900a9, 0x2a },
+	{ 0x900aa, 0x10 },
+	{ 0x900ab, 0x7b2 },
+	{ 0x900ac, 0x2a },
+	{ 0x900ad, 0x0 },
+	{ 0x900ae, 0x7c8 },
+	{ 0x900af, 0x109 },
+	{ 0x900b0, 0x10 },
+	{ 0x900b1, 0x10 },
+	{ 0x900b2, 0x109 },
+	{ 0x900b3, 0x10 },
+	{ 0x900b4, 0x2a8 },
+	{ 0x900b5, 0x129 },
+	{ 0x900b6, 0x8 },
+	{ 0x900b7, 0x370 },
+	{ 0x900b8, 0x129 },
+	{ 0x900b9, 0xa },
+	{ 0x900ba, 0x3c8 },
+	{ 0x900bb, 0x1a9 },
+	{ 0x900bc, 0xc },
+	{ 0x900bd, 0x408 },
+	{ 0x900be, 0x199 },
+	{ 0x900bf, 0x14 },
+	{ 0x900c0, 0x790 },
+	{ 0x900c1, 0x11a },
+	{ 0x900c2, 0x8 },
+	{ 0x900c3, 0x4 },
+	{ 0x900c4, 0x18 },
+	{ 0x900c5, 0xe },
+	{ 0x900c6, 0x408 },
+	{ 0x900c7, 0x199 },
+	{ 0x900c8, 0x8 },
+	{ 0x900c9, 0x8568 },
+	{ 0x900ca, 0x108 },
+	{ 0x900cb, 0x18 },
+	{ 0x900cc, 0x790 },
+	{ 0x900cd, 0x16a },
+	{ 0x900ce, 0x8 },
+	{ 0x900cf, 0x1d8 },
+	{ 0x900d0, 0x169 },
+	{ 0x900d1, 0x10 },
+	{ 0x900d2, 0x8558 },
+	{ 0x900d3, 0x168 },
+	{ 0x900d4, 0x70 },
+	{ 0x900d5, 0x788 },
+	{ 0x900d6, 0x16a },
+	{ 0x900d7, 0x1ff8 },
+	{ 0x900d8, 0x85a8 },
+	{ 0x900d9, 0x1e8 },
+	{ 0x900da, 0x50 },
+	{ 0x900db, 0x798 },
+	{ 0x900dc, 0x16a },
+	{ 0x900dd, 0x60 },
+	{ 0x900de, 0x7a0 },
+	{ 0x900df, 0x16a },
+	{ 0x900e0, 0x8 },
+	{ 0x900e1, 0x8310 },
+	{ 0x900e2, 0x168 },
+	{ 0x900e3, 0x8 },
+	{ 0x900e4, 0xa310 },
+	{ 0x900e5, 0x168 },
+	{ 0x900e6, 0xa },
+	{ 0x900e7, 0x408 },
+	{ 0x900e8, 0x169 },
+	{ 0x900e9, 0x6e },
+	{ 0x900ea, 0x0 },
+	{ 0x900eb, 0x68 },
+	{ 0x900ec, 0x0 },
+	{ 0x900ed, 0x408 },
+	{ 0x900ee, 0x169 },
+	{ 0x900ef, 0x0 },
+	{ 0x900f0, 0x8310 },
+	{ 0x900f1, 0x168 },
+	{ 0x900f2, 0x0 },
+	{ 0x900f3, 0xa310 },
+	{ 0x900f4, 0x168 },
+	{ 0x900f5, 0x1ff8 },
+	{ 0x900f6, 0x85a8 },
+	{ 0x900f7, 0x1e8 },
+	{ 0x900f8, 0x68 },
+	{ 0x900f9, 0x798 },
+	{ 0x900fa, 0x16a },
+	{ 0x900fb, 0x78 },
+	{ 0x900fc, 0x7a0 },
+	{ 0x900fd, 0x16a },
+	{ 0x900fe, 0x68 },
+	{ 0x900ff, 0x790 },
+	{ 0x90100, 0x16a },
+	{ 0x90101, 0x8 },
+	{ 0x90102, 0x8b10 },
+	{ 0x90103, 0x168 },
+	{ 0x90104, 0x8 },
+	{ 0x90105, 0xab10 },
+	{ 0x90106, 0x168 },
+	{ 0x90107, 0xa },
+	{ 0x90108, 0x408 },
+	{ 0x90109, 0x169 },
+	{ 0x9010a, 0x58 },
+	{ 0x9010b, 0x0 },
+	{ 0x9010c, 0x68 },
+	{ 0x9010d, 0x0 },
+	{ 0x9010e, 0x408 },
+	{ 0x9010f, 0x169 },
+	{ 0x90110, 0x0 },
+	{ 0x90111, 0x8b10 },
+	{ 0x90112, 0x168 },
+	{ 0x90113, 0x1 },
+	{ 0x90114, 0xab10 },
+	{ 0x90115, 0x168 },
+	{ 0x90116, 0x0 },
+	{ 0x90117, 0x1d8 },
+	{ 0x90118, 0x169 },
+	{ 0x90119, 0x80 },
+	{ 0x9011a, 0x790 },
+	{ 0x9011b, 0x16a },
+	{ 0x9011c, 0x18 },
+	{ 0x9011d, 0x7aa },
+	{ 0x9011e, 0x6a },
+	{ 0x9011f, 0xa },
+	{ 0x90120, 0x0 },
+	{ 0x90121, 0x1e9 },
+	{ 0x90122, 0x8 },
+	{ 0x90123, 0x8080 },
+	{ 0x90124, 0x108 },
+	{ 0x90125, 0xf },
+	{ 0x90126, 0x408 },
+	{ 0x90127, 0x169 },
+	{ 0x90128, 0xc },
+	{ 0x90129, 0x0 },
+	{ 0x9012a, 0x68 },
+	{ 0x9012b, 0x9 },
+	{ 0x9012c, 0x0 },
+	{ 0x9012d, 0x1a9 },
+	{ 0x9012e, 0x0 },
+	{ 0x9012f, 0x408 },
+	{ 0x90130, 0x169 },
+	{ 0x90131, 0x0 },
+	{ 0x90132, 0x8080 },
+	{ 0x90133, 0x108 },
+	{ 0x90134, 0x8 },
+	{ 0x90135, 0x7aa },
+	{ 0x90136, 0x6a },
+	{ 0x90137, 0x0 },
+	{ 0x90138, 0x8568 },
+	{ 0x90139, 0x108 },
+	{ 0x9013a, 0xb7 },
+	{ 0x9013b, 0x790 },
+	{ 0x9013c, 0x16a },
+	{ 0x9013d, 0x1f },
+	{ 0x9013e, 0x0 },
+	{ 0x9013f, 0x68 },
+	{ 0x90140, 0x8 },
+	{ 0x90141, 0x8558 },
+	{ 0x90142, 0x168 },
+	{ 0x90143, 0xf },
+	{ 0x90144, 0x408 },
+	{ 0x90145, 0x169 },
+	{ 0x90146, 0xd },
+	{ 0x90147, 0x0 },
+	{ 0x90148, 0x68 },
+	{ 0x90149, 0x0 },
+	{ 0x9014a, 0x408 },
+	{ 0x9014b, 0x169 },
+	{ 0x9014c, 0x0 },
+	{ 0x9014d, 0x8558 },
+	{ 0x9014e, 0x168 },
+	{ 0x9014f, 0x8 },
+	{ 0x90150, 0x3c8 },
+	{ 0x90151, 0x1a9 },
+	{ 0x90152, 0x3 },
+	{ 0x90153, 0x370 },
+	{ 0x90154, 0x129 },
+	{ 0x90155, 0x20 },
+	{ 0x90156, 0x2aa },
+	{ 0x90157, 0x9 },
+	{ 0x90158, 0x8 },
+	{ 0x90159, 0xe8 },
+	{ 0x9015a, 0x109 },
+	{ 0x9015b, 0x0 },
+	{ 0x9015c, 0x8140 },
+	{ 0x9015d, 0x10c },
+	{ 0x9015e, 0x10 },
+	{ 0x9015f, 0x8138 },
+	{ 0x90160, 0x104 },
+	{ 0x90161, 0x8 },
+	{ 0x90162, 0x448 },
+	{ 0x90163, 0x109 },
+	{ 0x90164, 0xf },
+	{ 0x90165, 0x7c0 },
+	{ 0x90166, 0x109 },
+	{ 0x90167, 0x0 },
+	{ 0x90168, 0xe8 },
+	{ 0x90169, 0x109 },
+	{ 0x9016a, 0x47 },
+	{ 0x9016b, 0x630 },
+	{ 0x9016c, 0x109 },
+	{ 0x9016d, 0x8 },
+	{ 0x9016e, 0x618 },
+	{ 0x9016f, 0x109 },
+	{ 0x90170, 0x8 },
+	{ 0x90171, 0xe0 },
+	{ 0x90172, 0x109 },
+	{ 0x90173, 0x0 },
+	{ 0x90174, 0x7c8 },
+	{ 0x90175, 0x109 },
+	{ 0x90176, 0x8 },
+	{ 0x90177, 0x8140 },
+	{ 0x90178, 0x10c },
+	{ 0x90179, 0x0 },
+	{ 0x9017a, 0x478 },
+	{ 0x9017b, 0x109 },
+	{ 0x9017c, 0x0 },
+	{ 0x9017d, 0x1 },
+	{ 0x9017e, 0x8 },
+	{ 0x9017f, 0x8 },
+	{ 0x90180, 0x4 },
+	{ 0x90181, 0x0 },
+	{ 0x90006, 0x8 },
+	{ 0x90007, 0x7c8 },
+	{ 0x90008, 0x109 },
+	{ 0x90009, 0x0 },
+	{ 0x9000a, 0x400 },
+	{ 0x9000b, 0x106 },
+	{ 0xd00e7, 0x400 },
+	{ 0x90017, 0x0 },
+	{ 0x9001f, 0x29 },
+	{ 0x90026, 0x68 },
+	{ 0x400d0, 0x0 },
+	{ 0x400d1, 0x101 },
+	{ 0x400d2, 0x105 },
+	{ 0x400d3, 0x107 },
+	{ 0x400d4, 0x10f },
+	{ 0x400d5, 0x202 },
+	{ 0x400d6, 0x20a },
+	{ 0x400d7, 0x20b },
+	{ 0x2003a, 0x2 },
+	{ 0x200be, 0x3 },
+	{ 0x2000b, 0x384 },
+	{ 0x2000c, 0xc8 },
+	{ 0x2000d, 0x7d0 },
+	{ 0x2000e, 0x2c },
+	{ 0x9000c, 0x0 },
+	{ 0x9000d, 0x173 },
+	{ 0x9000e, 0x60 },
+	{ 0x9000f, 0x6110 },
+	{ 0x90010, 0x2152 },
+	{ 0x90011, 0xdfbd },
+	{ 0x90012, 0x2060 },
+	{ 0x90013, 0x6152 },
+	{ 0x20010, 0x5a },
+	{ 0x20011, 0x3 },
+	{ 0x40080, 0xe0 },
+	{ 0x40081, 0x12 },
+	{ 0x40082, 0xe0 },
+	{ 0x40083, 0x12 },
+	{ 0x40084, 0xe0 },
+	{ 0x40085, 0x12 },
+	{ 0x400fd, 0xf },
+	{ 0x10011, 0x1 },
+	{ 0x10012, 0x1 },
+	{ 0x10013, 0x180 },
+	{ 0x10018, 0x1 },
+	{ 0x10002, 0x6209 },
+	{ 0x100b2, 0x1 },
+	{ 0x101b4, 0x1 },
+	{ 0x102b4, 0x1 },
+	{ 0x103b4, 0x1 },
+	{ 0x104b4, 0x1 },
+	{ 0x105b4, 0x1 },
+	{ 0x106b4, 0x1 },
+	{ 0x107b4, 0x1 },
+	{ 0x108b4, 0x1 },
+	{ 0x11011, 0x1 },
+	{ 0x11012, 0x1 },
+	{ 0x11013, 0x180 },
+	{ 0x11018, 0x1 },
+	{ 0x11002, 0x6209 },
+	{ 0x110b2, 0x1 },
+	{ 0x111b4, 0x1 },
+	{ 0x112b4, 0x1 },
+	{ 0x113b4, 0x1 },
+	{ 0x114b4, 0x1 },
+	{ 0x115b4, 0x1 },
+	{ 0x116b4, 0x1 },
+	{ 0x117b4, 0x1 },
+	{ 0x118b4, 0x1 },
+	{ 0x12011, 0x1 },
+	{ 0x12012, 0x1 },
+	{ 0x12013, 0x180 },
+	{ 0x12018, 0x1 },
+	{ 0x12002, 0x6209 },
+	{ 0x120b2, 0x1 },
+	{ 0x121b4, 0x1 },
+	{ 0x122b4, 0x1 },
+	{ 0x123b4, 0x1 },
+	{ 0x124b4, 0x1 },
+	{ 0x125b4, 0x1 },
+	{ 0x126b4, 0x1 },
+	{ 0x127b4, 0x1 },
+	{ 0x128b4, 0x1 },
+	{ 0x13011, 0x1 },
+	{ 0x13012, 0x1 },
+	{ 0x13013, 0x180 },
+	{ 0x13018, 0x1 },
+	{ 0x13002, 0x6209 },
+	{ 0x130b2, 0x1 },
+	{ 0x131b4, 0x1 },
+	{ 0x132b4, 0x1 },
+	{ 0x133b4, 0x1 },
+	{ 0x134b4, 0x1 },
+	{ 0x135b4, 0x1 },
+	{ 0x136b4, 0x1 },
+	{ 0x137b4, 0x1 },
+	{ 0x138b4, 0x1 },
+	{ 0x20089, 0x1 },
+	{ 0x20088, 0x19 },
+	{ 0xc0080, 0x2 },
+	{ 0xd0000, 0x1 },
+};
+
+static struct dram_fsp_msg ddr_dram_fsp_msg[] = {
+	{
+		/* P0 3200mts 1D */
+		.drate = 3200,
+		.fw_type = FW_1D_IMAGE,
+		.fsp_cfg = ddr_fsp0_cfg,
+		.fsp_cfg_num = ARRAY_SIZE(ddr_fsp0_cfg),
+	},
+	{
+		/* P0 3200mts 2D */
+		.drate = 3200,
+		.fw_type = FW_2D_IMAGE,
+		.fsp_cfg = ddr_fsp0_2d_cfg,
+		.fsp_cfg_num = ARRAY_SIZE(ddr_fsp0_2d_cfg),
+	},
+};
+
+/* ddr timing config params */
+struct dram_timing_info karo_qsxp_ml81_dram_timing = {
+	.ddrc_cfg = ddr_ddrc_cfg,
+	.ddrc_cfg_num = ARRAY_SIZE(ddr_ddrc_cfg),
+	.ddrphy_cfg = ddr_ddrphy_cfg,
+	.ddrphy_cfg_num = ARRAY_SIZE(ddr_ddrphy_cfg),
+	.fsp_msg = ddr_dram_fsp_msg,
+	.fsp_msg_num = ARRAY_SIZE(ddr_dram_fsp_msg),
+	.ddrphy_pie = ddr_phy_pie,
+	.ddrphy_pie_num = ARRAY_SIZE(ddr_phy_pie),
+	.fsp_table = { 3200, },
+};
diff --git a/arch/arm/configs/imx_v8_defconfig b/arch/arm/configs/imx_v8_defconfig
index 834d18f0ed..33275b5362 100644
--- a/arch/arm/configs/imx_v8_defconfig
+++ b/arch/arm/configs/imx_v8_defconfig
@@ -1,5 +1,6 @@
 CONFIG_ARCH_IMX=y
 CONFIG_MACH_INNOCOMM_WB15=y
+CONFIG_MACH_KARO_QSXP_ML81=y
 CONFIG_MACH_MNT_REFORM=y
 CONFIG_MACH_NXP_IMX8MM_EVK=y
 CONFIG_MACH_NXP_IMX8MN_EVK=y
diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index 95431bb2b4..d646d9aae6 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -5,6 +5,7 @@ CONFIG_ARCH_LAYERSCAPE=y
 CONFIG_ARCH_ROCKCHIP=y
 CONFIG_ARCH_ZYNQMP=y
 CONFIG_MACH_INNOCOMM_WB15=y
+CONFIG_MACH_KARO_QSXP_ML81=y
 CONFIG_MACH_MNT_REFORM=y
 CONFIG_MACH_NXP_IMX8MM_EVK=y
 CONFIG_MACH_NXP_IMX8MN_EVK=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 67bc1e0b16..60562baff9 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -36,6 +36,7 @@ lwl-$(CONFIG_MACH_GUF_SANTARO) += imx6q-guf-santaro.dtb.o
 lwl-$(CONFIG_MACH_GUF_VINCELL) += imx53-guf-vincell.dtb.o imx53-guf-vincell-lt.dtb.o
 lwl-$(CONFIG_MACH_GW_VENTANA) += imx6q-gw54xx.dtb.o
 lwl-$(CONFIG_MACH_KAMSTRUP_MX7_CONCENTRATOR) += imx7d-flex-concentrator-mfg.dtb.o
+lwl-$(CONFIG_MACH_KARO_QSXP_ML81) += imx8mp-karo-qsxp-ml81-qsbase4.dtb.o
 lwl-$(CONFIG_MACH_KONTRON_SAMX6I) += imx6q-samx6i.dtb.o \
 					imx6dl-samx6i.dtb.o
 lwl-$(CONFIG_MACH_LENOVO_IX4_300D) += armada-xp-lenovo-ix4-300d-bb.dtb.o
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index c455179dee..325b602114 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -606,6 +606,16 @@ config MACH_INNOCOMM_WB15
 	select USB_GADGET_DRIVER_ARC_PBL
 	imply AT803X_PHY
 
+config MACH_KARO_QSXP_ML81
+	bool "Karo QSXP ML81 (i.MX8MP) SOM on QSBASE4 Board"
+	select ARCH_IMX8MP
+	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
+	select FIRMWARE_IMX8MP_ATF
+	select ARM_SMCCC
+	select MCI_IMX_ESDHC_PBL
+	select IMX8M_DRAM
+	select I2C_IMX_EARLY
+
 config MACH_MNT_REFORM
 	bool "MNT Reform"
 	select ARCH_IMX8MQ
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 1b85112ff2..ee7edd02d3 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -472,6 +472,8 @@ $(call build_imx8m_habv4img, CONFIG_MACH_NXP_IMX8MN_EVK, start_nxp_imx8mn_evk, n
 # ----------------------- i.MX8mp based boards --------------------------
 $(call build_imx8m_habv4img, CONFIG_MACH_NXP_IMX8MP_EVK, start_nxp_imx8mp_evk, nxp-imx8mp-evk/flash-header-imx8mp-evk, nxp-imx8mp-evk)
 
+$(call build_imx8m_habv4img, CONFIG_MACH_KARO_QSXP_ML81, start_karo_qsxp_ml81, karo-qsxp-ml81/flash-header-karo-qsxp-ml81, karo-qsxp-ml81)
+
 $(call build_imx8m_habv4img, CONFIG_MACH_SKOV_IMX8MP, start_skov_imx8mp, skov-imx8mp/flash-header-skov-imx8mp, skov-imx8mp)
 
 $(call build_imx8m_habv4img, CONFIG_MACH_TQ_MBA8MPXL, start_tqma8mpxl, tqma8mpxl/flash-header-tqma8mpxl, tqma8mpxl)

-- 
2.39.2



