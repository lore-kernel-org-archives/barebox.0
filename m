Delivery-date: Fri, 13 Feb 2026 09:20:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqoPZ-001Bbl-03
	for lore@lore.pengutronix.de;
	Fri, 13 Feb 2026 09:20:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqoPY-0006Zg-Kn
	for lore@pengutronix.de; Fri, 13 Feb 2026 09:20:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S1ie5jIZEI8Xt9NiUD/ayST3Y0K5awiMw1eHzALTRoo=; b=na1Q0NKTXaY6kxJ3noraoA45OA
	nlpqTMh9mTTx6eKFbCZgkmlauFBWHaM3W/8ew8GQiO63KjtzahEcNyZGDchg4V5vD6S5Y4cRAHjou
	lwQDlj4GCsheS3nLtWoH/uZ/QJAU39uVmttA8S23DnwgqNsTw49eTELFHHDr6pQzOCHGAp9Wg61KO
	4GlmaH8BicxP5/tkPI+yHhquj379BrIlj5KTJs/4h/TE+RytN92tT1n048IE5po5WfOgh6fdsG+/+
	bsTEv5d6mnwOUNNOZCdbIjRr2RyKOr4wvI/+BM/0N1i/LDwO6FI+WZMYI3rvWOY6auVul33VoLJeE
	wbON4avw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqoP3-00000003Ai9-00jp;
	Fri, 13 Feb 2026 08:19:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqoOz-00000003AfH-40Ho
	for barebox@lists.infradead.org;
	Fri, 13 Feb 2026 08:19:51 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vqoOx-0006MH-1L; Fri, 13 Feb 2026 09:19:47 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Fri, 13 Feb 2026 09:19:38 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260213-v2026-01-0-topic-tqma8mpxs-v1-2-44f2cc07cfef@pengutronix.de>
References: <20260213-v2026-01-0-topic-tqma8mpxs-v1-0-44f2cc07cfef@pengutronix.de>
In-Reply-To: <20260213-v2026-01-0-topic-tqma8mpxs-v1-0-44f2cc07cfef@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_001950_308999_4A476A81 
X-CRM114-Status: GOOD (  24.37  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] ARM: boards: tqma8mpxl: extend with support for xs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The TQMA8MPxS is another board from TQMA with the same processor, but a
different formfactor. Nevertheless they share a lot of code and can be
used from the same barebox resulting in the rename of tqma8mpxl to
tqma8mpxx.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 Documentation/migration-guides/migration-master.md |  10 ++
 arch/arm/boards/Makefile                           |   2 +-
 arch/arm/boards/tqma8mpxl/lowlevel.c               | 113 --------------
 arch/arm/boards/{tqma8mpxl => tqma8mpxx}/Makefile  |   0
 arch/arm/boards/{tqma8mpxl => tqma8mpxx}/board.c   |  17 +-
 .../flash-header-tqma8mpxx.imxcfg}                 |   0
 arch/arm/boards/tqma8mpxx/lowlevel.c               | 172 +++++++++++++++++++++
 .../{tqma8mpxl => tqma8mpxx}/lpddr4-timing.c       |   0
 arch/arm/configs/imx_v8_defconfig                  |   2 +-
 arch/arm/configs/multi_v8_defconfig                |   2 +-
 arch/arm/dts/Makefile                              |   2 +-
 arch/arm/dts/imx8mp-tqma8mpqs-mba8mpxs.dts         |  15 ++
 arch/arm/mach-imx/Kconfig                          |   5 +-
 images/Makefile.imx                                |   2 +-
 14 files changed, 214 insertions(+), 128 deletions(-)

diff --git a/Documentation/migration-guides/migration-master.md b/Documentation/migration-guides/migration-master.md
new file mode 100644
index 0000000000..0cf45d0713
--- /dev/null
+++ b/Documentation/migration-guides/migration-master.md
@@ -0,0 +1,10 @@
+:orphan:
+
+Boards
+------
+
+TQMA8MPxL
+^^^^^^^^^
+
+The config option has been renamed from MACH_TQ_MBA8MPXL to MACH_TQ_MBA8MPXX to
+accommodate the support for TQMA8MPxS boards with the same binary.
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index afc50051a2..ab4e74f592 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -75,7 +75,7 @@ obj-$(CONFIG_MACH_NXP_IMX8MN_EVK)		+= nxp-imx8mn-evk/
 obj-$(CONFIG_MACH_NXP_IMX8MP_EVK)		+= nxp-imx8mp-evk/
 obj-$(CONFIG_MACH_NXP_IMX93_FRDM)		+= nxp-imx93-frdm/
 obj-$(CONFIG_MACH_CONGATEC_QMX8P_SOM)		+= congatec-qmx8p/
-obj-$(CONFIG_MACH_TQ_MBA8MPXL)			+= tqma8mpxl/
+obj-$(CONFIG_MACH_TQ_MBA8MPXX)			+= tqma8mpxx/
 obj-$(CONFIG_MACH_PCA100)			+= phytec-phycard-imx27/
 obj-$(CONFIG_MACH_PCM038)			+= phytec-phycore-imx27/
 obj-$(CONFIG_MACH_PHYTEC_SOM_AM335X)		+= phytec-som-am335x/
diff --git a/arch/arm/boards/tqma8mpxl/lowlevel.c b/arch/arm/boards/tqma8mpxl/lowlevel.c
deleted file mode 100644
index e0a0f17d3a..0000000000
--- a/arch/arm/boards/tqma8mpxl/lowlevel.c
+++ /dev/null
@@ -1,113 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-
-#include <io.h>
-#include <common.h>
-#include <firmware.h>
-#include <asm/mmu.h>
-#include <asm/cache.h>
-#include <asm/sections.h>
-#include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
-#include <linux/sizes.h>
-#include <mach/imx/atf.h>
-#include <mach/imx/xload.h>
-#include <mach/imx/esdctl.h>
-#include <mach/imx/generic.h>
-#include <mach/imx/imx8mp-regs.h>
-#include <mach/imx/iomux-mx8mp.h>
-#include <mach/imx/imx8m-ccm-regs.h>
-#include <mach/imx/debug_ll.h>
-#include <mfd/pca9450.h>
-#include <pbl/i2c.h>
-#include <pbl/pmic.h>
-#include <soc/imx8m/ddr.h>
-
-#define UART_PAD_CTRL   MUX_PAD_CTRL(MX8MP_PAD_CTL_DSE6 | \
-				     MX8MP_PAD_CTL_FSEL)
-
-#define I2C_PAD_CTRL	MUX_PAD_CTRL(MX8MP_PAD_CTL_DSE6 | \
-				     MX8MP_PAD_CTL_HYS | \
-				     MX8MP_PAD_CTL_PUE | \
-				     MX8MP_PAD_CTL_PE)
-
-static void setup_uart(void)
-{
-	void __iomem *uart = IOMEM(MX8M_UART4_BASE_ADDR);
-
-	imx8m_early_setup_uart_clock();
-
-	imx8mp_setup_pad(MX8MP_PAD_UART4_TXD__UART4_DCE_TX | UART_PAD_CTRL);
-	imx8mp_setup_pad(MX8MP_PAD_UART4_RXD__UART4_DCE_RX | UART_PAD_CTRL);
-	imx8m_uart_setup(uart);
-
-	pbl_set_putc(imx_uart_putc, uart);
-
-	putc_ll('>');
-}
-
-static struct pmic_config pca9450_cfg[] = {
-	/* BUCKxOUT_DVS0/1 control BUCK123 output */
-	{ PCA9450_BUCK123_DVS, 0x29 },
-	/*
-	 * increase VDD_SOC to typical value 0.95V before first
-	 * DRAM access, set DVS1 to 0.85v for suspend.
-	 * Enable DVS control through PMIC_STBY_REQ and
-	 * set B1_ENMODE=1 (ON by PMIC_ON_REQ=H)
-	 */
-	{ PCA9450_BUCK1OUT_DVS0, 0x1C },
-	{ PCA9450_BUCK1OUT_DVS1, 0x14 },
-	{ PCA9450_BUCK1CTRL, 0x59 },
-	/*
-	 * Kernel uses OD/OD freq for SOC
-	 * To avoid timing risk from SOC to ARM,increase VDD_ARM to OD
-	 * voltage 0.95v
-	 */
-	{ PCA9450_BUCK2OUT_DVS0, 0x1C },
-	/* set WDOG_B_CFG to cold reset */
-	{ PCA9450_RESET_CTRL, 0xA1 },
-};
-
-static void power_init_board(void)
-{
-	struct pbl_i2c *i2c;
-
-	imx8mp_setup_pad(MX8MP_PAD_I2C1_SCL__I2C1_SCL | I2C_PAD_CTRL);
-	imx8mp_setup_pad(MX8MP_PAD_I2C1_SDA__I2C1_SDA | I2C_PAD_CTRL);
-
-	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_I2C1);
-
-	i2c = imx8m_i2c_early_init(IOMEM(MX8MP_I2C1_BASE_ADDR));
-
-	pmic_configure(i2c, 0x25, pca9450_cfg, ARRAY_SIZE(pca9450_cfg));
-}
-
-static __noreturn noinline void tqma8mpxl_start(void)
-{
-	extern char __dtb_z_imx8mp_tqma8mpql_mba8mpxl_start[];
-
-	setup_uart();
-
-	if (current_el() == 3) {
-		extern struct dram_timing_info dram_timing_2gb_no_ecc;
-
-		imx8mp_early_clock_init();
-
-		power_init_board();
-
-		imx8mp_ddr_init(&dram_timing_2gb_no_ecc, DRAM_TYPE_LPDDR4);
-
-		imx8mp_load_and_start_image_via_tfa();
-	}
-
-	imx8mp_barebox_entry(__dtb_z_imx8mp_tqma8mpql_mba8mpxl_start);
-}
-
-ENTRY_FUNCTION(start_tqma8mpxl, x0, x1, x2)
-{
-	imx8mp_cpu_lowlevel_init();
-
-	relocate_to_current_adr();
-	setup_c();
-
-	tqma8mpxl_start();
-}
diff --git a/arch/arm/boards/tqma8mpxl/Makefile b/arch/arm/boards/tqma8mpxx/Makefile
similarity index 100%
rename from arch/arm/boards/tqma8mpxl/Makefile
rename to arch/arm/boards/tqma8mpxx/Makefile
diff --git a/arch/arm/boards/tqma8mpxl/board.c b/arch/arm/boards/tqma8mpxx/board.c
similarity index 74%
rename from arch/arm/boards/tqma8mpxl/board.c
rename to arch/arm/boards/tqma8mpxx/board.c
index 459e180a57..34a7bd5f4f 100644
--- a/arch/arm/boards/tqma8mpxl/board.c
+++ b/arch/arm/boards/tqma8mpxx/board.c
@@ -16,7 +16,7 @@
 #include <envfs.h>
 #include <string.h>
 
-static int tqma8mpxl_probe(struct device *dev)
+static int tqma8mpxx_probe(struct device *dev)
 {
 	const char *emmc, *sd;
 	int emmc_bbu_flag = 0;
@@ -43,15 +43,16 @@ static int tqma8mpxl_probe(struct device *dev)
 	return 0;
 }
 
-static const struct of_device_id tqma8mpxl_of_match[] = {
+static const struct of_device_id tqma8mpxx_of_match[] = {
 	{ .compatible = "tq,imx8mp-tqma8mpql" },
+	{ .compatible = "tq,imx8mp-tqma8mpqs" },
 	{ /* sentinel */ },
 };
-BAREBOX_DEEP_PROBE_ENABLE(tqma8mpxl_of_match);
+BAREBOX_DEEP_PROBE_ENABLE(tqma8mpxx_of_match);
 
-static struct driver tqma8mpxl_board_driver = {
-	.name = "board-tqma8mpxl",
-	.probe = tqma8mpxl_probe,
-	.of_compatible = DRV_OF_COMPAT(tqma8mpxl_of_match),
+static struct driver tqma8mpxx_board_driver = {
+	.name = "board-tqma8mpxx",
+	.probe = tqma8mpxx_probe,
+	.of_compatible = DRV_OF_COMPAT(tqma8mpxx_of_match),
 };
-device_platform_driver(tqma8mpxl_board_driver);
+device_platform_driver(tqma8mpxx_board_driver);
diff --git a/arch/arm/boards/tqma8mpxl/flash-header-tqma8mpxl.imxcfg b/arch/arm/boards/tqma8mpxx/flash-header-tqma8mpxx.imxcfg
similarity index 100%
rename from arch/arm/boards/tqma8mpxl/flash-header-tqma8mpxl.imxcfg
rename to arch/arm/boards/tqma8mpxx/flash-header-tqma8mpxx.imxcfg
diff --git a/arch/arm/boards/tqma8mpxx/lowlevel.c b/arch/arm/boards/tqma8mpxx/lowlevel.c
new file mode 100644
index 0000000000..7d8bae9c4d
--- /dev/null
+++ b/arch/arm/boards/tqma8mpxx/lowlevel.c
@@ -0,0 +1,172 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <io.h>
+#include <common.h>
+#include <firmware.h>
+#include <asm/mmu.h>
+#include <asm/cache.h>
+#include <asm/sections.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+#include <linux/sizes.h>
+#include <mach/imx/atf.h>
+#include <mach/imx/xload.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx8mp-regs.h>
+#include <mach/imx/iomux-mx8mp.h>
+#include <mach/imx/imx8m-ccm-regs.h>
+#include <mach/imx/debug_ll.h>
+#include <mfd/pca9450.h>
+#include <pbl/i2c.h>
+#include <pbl/pmic.h>
+#include <soc/imx8m/ddr.h>
+#include <boards/tq/tq_eeprom.h>
+
+#define UART_PAD_CTRL   MUX_PAD_CTRL(MX8MP_PAD_CTL_DSE6 | \
+				     MX8MP_PAD_CTL_FSEL)
+
+#define I2C_PAD_CTRL	MUX_PAD_CTRL(MX8MP_PAD_CTL_DSE6 | \
+				     MX8MP_PAD_CTL_HYS | \
+				     MX8MP_PAD_CTL_PUE | \
+				     MX8MP_PAD_CTL_PE)
+
+static void setup_uart(void *uart, iomux_v3_cfg_t tx_pad, iomux_v3_cfg_t rx_pad)
+{
+	imx8m_early_setup_uart_clock();
+
+	imx8mp_setup_pad(tx_pad | UART_PAD_CTRL);
+	imx8mp_setup_pad(rx_pad | UART_PAD_CTRL);
+	imx8m_uart_setup(uart);
+
+	pbl_set_putc(imx_uart_putc, uart);
+
+	putc_ll('>');
+}
+
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
+static struct pmic_config pca9450_cfg[] = {
+	/* BUCKxOUT_DVS0/1 control BUCK123 output */
+	{ PCA9450_BUCK123_DVS, 0x29 },
+	/*
+	 * increase VDD_SOC to typical value 0.95V before first
+	 * DRAM access, set DVS1 to 0.85v for suspend.
+	 * Enable DVS control through PMIC_STBY_REQ and
+	 * set B1_ENMODE=1 (ON by PMIC_ON_REQ=H)
+	 */
+	{ PCA9450_BUCK1OUT_DVS0, 0x1C },
+	{ PCA9450_BUCK1OUT_DVS1, 0x14 },
+	{ PCA9450_BUCK1CTRL, 0x59 },
+	/*
+	 * Kernel uses OD/OD freq for SOC
+	 * To avoid timing risk from SOC to ARM,increase VDD_ARM to OD
+	 * voltage 0.95v
+	 */
+	{ PCA9450_BUCK2OUT_DVS0, 0x1C },
+	/* set WDOG_B_CFG to cold reset */
+	{ PCA9450_RESET_CTRL, 0xA1 },
+};
+
+static bool tqma_is_eeprom_valid(struct tq_eeprom *eeprom)
+{
+	int ramsize;
+
+	if (!*eeprom->serial || !*eeprom->id)
+		return false;
+	ramsize = tq_vard_ramsize(&eeprom->vard) / (SZ_1G);
+	if (ramsize != 1 && ramsize != 2 && ramsize != 4 && ramsize != 8)
+		return false;
+	return true;
+}
+
+static noinline void tqma8mpxx_start(void)
+{
+	extern char __dtb_z_imx8mp_tqma8mpql_mba8mpxl_start[];
+	extern char __dtb_z_imx8mp_tqma8mpqs_mba8mpxs_start[];
+
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
+
+	if (current_el() == 3) {
+		extern struct dram_timing_info dram_timing_2gb_no_ecc;
+		int ramsize;
+
+		ramsize = tq_vard_ramsize(&eeprom->vard) / (SZ_1G);
+		if (ramsize != 2)
+			panic("RAMsize other then 2GB is not supported at the moment.\n");
+
+		imx8mp_early_clock_init();
+
+		pmic_configure(i2c, 0x25, pca9450_cfg, ARRAY_SIZE(pca9450_cfg));
+
+		imx8mp_ddr_init(&dram_timing_2gb_no_ecc, DRAM_TYPE_LPDDR4);
+
+		imx8mp_load_and_start_image_via_tfa();
+	}
+
+	tq_vard_show(&eeprom->vard);
+	printf("Serial: %s\n", eeprom->id);
+	printf("ID:     %s\n", eeprom->serial);
+
+	imx8mp_barebox_entry(boarddata);
+}
+
+ENTRY_FUNCTION(start_tqma8mpxx, x0, x1, x2)
+{
+	imx8mp_cpu_lowlevel_init();
+
+	relocate_to_current_adr();
+	setup_c();
+
+	tqma8mpxx_start();
+}
diff --git a/arch/arm/boards/tqma8mpxl/lpddr4-timing.c b/arch/arm/boards/tqma8mpxx/lpddr4-timing.c
similarity index 100%
rename from arch/arm/boards/tqma8mpxl/lpddr4-timing.c
rename to arch/arm/boards/tqma8mpxx/lpddr4-timing.c
diff --git a/arch/arm/configs/imx_v8_defconfig b/arch/arm/configs/imx_v8_defconfig
index af071e4d83..e080a7db9b 100644
--- a/arch/arm/configs/imx_v8_defconfig
+++ b/arch/arm/configs/imx_v8_defconfig
@@ -12,7 +12,7 @@ CONFIG_MACH_PHYTEC_SOM_IMX8MQ=y
 CONFIG_MACH_POLYHEX_DEBIX=y
 CONFIG_MACH_PROTONIC_IMX8M=y
 CONFIG_MACH_SKOV_IMX8MP=y
-CONFIG_MACH_TQ_MBA8MPXL=y
+CONFIG_MACH_TQ_MBA8MPXX=y
 CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP=y
 CONFIG_MACH_ZII_IMX8MQ_DEV=y
 CONFIG_MACH_PHYTEC_PHYCORE_IMX93=y
diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index 6fe8ab3463..1553c47fab 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -21,7 +21,7 @@ CONFIG_MACH_PHYTEC_SOM_IMX8MQ=y
 CONFIG_MACH_POLYHEX_DEBIX=y
 CONFIG_MACH_PROTONIC_IMX8M=y
 CONFIG_MACH_SKOV_IMX8MP=y
-CONFIG_MACH_TQ_MBA8MPXL=y
+CONFIG_MACH_TQ_MBA8MPXX=y
 CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP=y
 CONFIG_MACH_ZII_IMX8MQ_DEV=y
 CONFIG_MACH_PHYTEC_PHYCORE_IMX93=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index dd7482aa05..8dbe020e5d 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -184,7 +184,7 @@ lwl-$(CONFIG_MACH_NXP_IMX8MP_EVK) += imx8mp-evk.dtb.o
 lwl-$(CONFIG_MACH_NXP_IMX8MQ_EVK) += imx8mq-evk.dtb.o
 lwl-$(CONFIG_MACH_NXP_IMX93_FRDM) += imx93-frdm.dtb.o
 lwl-$(CONFIG_MACH_INNOCOMM_WB15) += imx8mm-innocomm-wb15-evk.dtb.o
-lwl-$(CONFIG_MACH_TQ_MBA8MPXL) += imx8mp-tqma8mpql-mba8mpxl.dtb.o
+lwl-$(CONFIG_MACH_TQ_MBA8MPXX) += imx8mp-tqma8mpql-mba8mpxl.dtb.o imx8mp-tqma8mpqs-mba8mpxs.dtb.o
 lwl-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += tegra20-colibri-iris.dtb.o
 lwl-$(CONFIG_MACH_TORADEX_COLIBRI_IMX6) += imx6dl-colibri-iris.dtb.o
 lwl-$(CONFIG_MACH_TOSHIBA_AC100) += tegra20-paz00.dtb.o
diff --git a/arch/arm/dts/imx8mp-tqma8mpqs-mba8mpxs.dts b/arch/arm/dts/imx8mp-tqma8mpqs-mba8mpxs.dts
new file mode 100644
index 0000000000..a3018af7a5
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
+#include <arm64/freescale/imx8mp-tqma8mpqs-mb-smarc-2.dts>
+#include "imx8mp.dtsi"
+
+&{pmic/regulators} {
+	barebox,allow-dummy-supply;
+};
+
+/delete-node/ &{/memory@40000000};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index eb947e67fb..1e88c533f3 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -742,12 +742,13 @@ config MACH_SKOV_IMX8MP
 	select IMX8M_DRAM
 	select I2C_IMX_EARLY
 
-config MACH_TQ_MBA8MPXL
-	bool "TQ i.MX8MP Dual/Quad on MBa8MPxL Board"
+config MACH_TQ_MBA8MPXX
+	bool "TQ i.MX8MP Dual/Quad on MBa8MPxL or MBa8MPxS Board"
 	select ARCH_IMX8MP
 	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
 	select FIRMWARE_IMX8MP_ATF
 	select ARM_SMCCC
+	select BOARD_TQ
 	select MCI_IMX_ESDHC_PBL
 	select IMX8M_DRAM
 	select I2C_IMX_EARLY
diff --git a/images/Makefile.imx b/images/Makefile.imx
index f66c0af6a4..0699f43fd7 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -505,7 +505,7 @@ $(call build_imx8m_habv4img, CONFIG_MACH_KARO_QSXP_ML81, start_karo_qsxp_ml81, k
 
 $(call build_imx8m_habv4img, CONFIG_MACH_SKOV_IMX8MP, start_skov_imx8mp, skov-imx8mp/flash-header-skov-imx8mp, skov-imx8mp)
 
-$(call build_imx8m_habv4img, CONFIG_MACH_TQ_MBA8MPXL, start_tqma8mpxl, tqma8mpxl/flash-header-tqma8mpxl, tqma8mpxl)
+$(call build_imx8m_habv4img, CONFIG_MACH_TQ_MBA8MPXX, start_tqma8mpxx, tqma8mpxx/flash-header-tqma8mpxx, tqma8mpxx)
 
 $(call build_imx8m_habv4img, CONFIG_MACH_POLYHEX_DEBIX, start_polyhex_debix, polyhex-debix/flash-header-polyhex-debix, polyhex-debix)
 

-- 
2.47.3



