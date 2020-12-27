Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kte4R-0003Rq-PX
 for barebox@lists.infradead.org; Sun, 27 Dec 2020 21:59:27 +0000
Received: from astat.fritz.box (a89-183-86-10.net-htp.de [89.183.86.10])
 by lynxeye.de (Postfix) with ESMTPA id ABB13E74260
 for <barebox@lists.infradead.org>; Sun, 27 Dec 2020 22:50:47 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 27 Dec 2020 22:50:42 +0100
Message-Id: <20201227215042.101009-5-dev@lynxeye.de>
In-Reply-To: <20201227215042.101009-1-dev@lynxeye.de>
References: <20201227215042.101009-1-dev@lynxeye.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/5] ARM: i.MX: add MNT Reform board support
To: barebox@lists.infradead.org

The MNT Reform is a DIY Laptop, built around a Boundarydevices i.MX8MQ SoM.
This adds a pretty minimal support, as there is no upstream DT yet. It also
does not properly abstract the SoM (power supply init in MNT Reform lowlevel
code and only single DRAM configuration supported), as there are a lot of
variants of the SoM and I'm only able to test the single one that will be
shipped with the Reform.

What has been tested to work:
- SD card
- eMMC
- Gigabit network
- NVMe storage

There is a quirk in the board support: the Nitrogen SoM only allows to
configure one of the BOOT_MODE straps, which means the choices for the boot
selection are only "boot from fuses", which means eMMC boot and
"serial boot". As serial boot isn't really useful on the device (requires
USB A<->A cable with VBUS protection), we rely on the BootROM fallback to
boot from SD card in this mode. The board support code thus treats the
bootsource "serial" as SD card boot.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/Makefile                      |    1 +
 arch/arm/boards/mnt-reform/Makefile           |    2 +
 arch/arm/boards/mnt-reform/board.c            |   40 +
 .../mnt-reform/flash-header-mnt-reform.imxcfg |    6 +
 arch/arm/boards/mnt-reform/lowlevel.c         |  187 +++
 arch/arm/boards/mnt-reform/lpddr4-timing.c    | 1012 +++++++++++++++++
 arch/arm/dts/Makefile                         |    1 +
 arch/arm/dts/imx8mq-mnt-reform2.dts           |  223 ++++
 arch/arm/mach-imx/Kconfig                     |    9 +
 images/Makefile.imx                           |    6 +
 10 files changed, 1487 insertions(+)
 create mode 100644 arch/arm/boards/mnt-reform/Makefile
 create mode 100644 arch/arm/boards/mnt-reform/board.c
 create mode 100644 arch/arm/boards/mnt-reform/flash-header-mnt-reform.imxcfg
 create mode 100644 arch/arm/boards/mnt-reform/lowlevel.c
 create mode 100644 arch/arm/boards/mnt-reform/lpddr4-timing.c
 create mode 100644 arch/arm/dts/imx8mq-mnt-reform2.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 81c228efd614..f8cdd90ed6e6 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -178,3 +178,4 @@ obj-$(CONFIG_MACH_ZII_IMX7D_DEV)		+= zii-imx7d-dev/
 obj-$(CONFIG_MACH_WAGO_PFC_AM35XX)		+= wago-pfc-am35xx/
 obj-$(CONFIG_MACH_LS1046ARDB)			+= ls1046ardb/
 obj-$(CONFIG_MACH_TQMLS1046A)			+= tqmls1046a/
+obj-$(CONFIG_MACH_MNT_REFORM)			+= mnt-reform/
diff --git a/arch/arm/boards/mnt-reform/Makefile b/arch/arm/boards/mnt-reform/Makefile
new file mode 100644
index 000000000000..a3da88fbe68f
--- /dev/null
+++ b/arch/arm/boards/mnt-reform/Makefile
@@ -0,0 +1,2 @@
+obj-y += board.o
+lwl-y += lowlevel.o lpddr4-timing.o
\ No newline at end of file
diff --git a/arch/arm/boards/mnt-reform/board.c b/arch/arm/boards/mnt-reform/board.c
new file mode 100644
index 000000000000..e2d628586a50
--- /dev/null
+++ b/arch/arm/boards/mnt-reform/board.c
@@ -0,0 +1,40 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2020 Lucas Stach <dev@lynxeye.de>
+ */
+
+#include <bootsource.h>
+#include <common.h>
+#include <init.h>
+#include <mach/bbu.h>
+
+static int mnt_reform_probe(struct device_d *dev)
+{
+	int emmc_bbu_flag = 0;
+	int sd_bbu_flag = 0;
+
+	if (bootsource_get() == BOOTSOURCE_MMC) {
+		of_device_enable_path("/chosen/environment-emmc");
+		emmc_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
+	} else {
+		of_device_enable_path("/chosen/environment-sd");
+		sd_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
+	}
+
+	imx8m_bbu_internal_mmc_register_handler("SD", "/dev/mmc1.barebox", sd_bbu_flag);
+	imx8m_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc0", emmc_bbu_flag);
+
+	return 0;
+}
+
+static const struct of_device_id mnt_reform_of_match[] = {
+	{ .compatible = "mnt,reform2"},
+	{ /* sentinel */ },
+};
+
+static struct driver_d mnt_reform_board_driver = {
+	.name = "board-mnt-reform",
+	.probe = mnt_reform_probe,
+	.of_compatible = DRV_OF_COMPAT(mnt_reform_of_match),
+};
+device_platform_driver(mnt_reform_board_driver);
diff --git a/arch/arm/boards/mnt-reform/flash-header-mnt-reform.imxcfg b/arch/arm/boards/mnt-reform/flash-header-mnt-reform.imxcfg
new file mode 100644
index 000000000000..80ce03e22c3a
--- /dev/null
+++ b/arch/arm/boards/mnt-reform/flash-header-mnt-reform.imxcfg
@@ -0,0 +1,6 @@
+soc imx8mq
+
+loadaddr 0x007E1000
+max_load_size 0x3F000
+ivtofs 0x400
+#include <mach/habv4-imx8-gencsf.h>
diff --git a/arch/arm/boards/mnt-reform/lowlevel.c b/arch/arm/boards/mnt-reform/lowlevel.c
new file mode 100644
index 000000000000..268dfb611aa8
--- /dev/null
+++ b/arch/arm/boards/mnt-reform/lowlevel.c
@@ -0,0 +1,187 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2020 Lucas Stach <dev@lynxeye.de>
+ */
+
+#include <asm/barebox-arm.h>
+#include <common.h>
+#include <debug_ll.h>
+#include <firmware.h>
+#include <i2c/i2c-early.h>
+#include <mach/atf.h>
+#include <mach/esdctl.h>
+#include <mach/generic.h>
+#include <mach/imx-gpio.h>
+#include <mach/imx8m-ccm-regs.h>
+#include <mach/imx8mq-regs.h>
+#include <mach/iomux-mx8mq.h>
+#include <mach/xload.h>
+#include <soc/imx8m/ddr.h>
+
+extern char __dtb_imx8mq_mnt_reform2_start[];
+
+#define UART_PAD_CTRL	MUX_PAD_CTRL(MX8MQ_PAD_CTL_DSE_65R)
+
+static void mnt_reform_setup_uart(void)
+{
+	void __iomem *uart = IOMEM(MX8M_UART1_BASE_ADDR);
+
+	imx8m_early_setup_uart_clock();
+
+	imx8mq_setup_pad(IMX8MQ_PAD_UART1_TXD__UART1_TX | UART_PAD_CTRL);
+	imx8m_uart_setup(uart);
+
+	pbl_set_putc(imx_uart_putc, uart);
+
+	putc_ll('>');
+}
+
+static void i2c_mux_set(void *i2c, u8 channel)
+{
+	int ret;
+	u8 buf[1];
+	struct i2c_msg msgs[] = {
+		{
+			.addr = 0x70,
+			.buf = buf,
+			.len = 1,
+		},
+	};
+
+	buf[0] = 1 << channel;
+
+	ret = i2c_fsl_xfer(i2c, msgs, ARRAY_SIZE(msgs));
+	if (ret != 1)
+		pr_err("failed to set i2c mux\n");
+}
+
+static void i2c_regulator_set_voltage(void *i2c, u8 reg, u8 voffs)
+{
+	int ret;
+	u8 buf[2];
+	struct i2c_msg msgs[] = {
+		{
+			.addr = 0x60,
+			.buf = buf,
+			.len = 2,
+		},
+	};
+
+	buf[0] = reg;
+	buf[1] = 0x80 + voffs;
+
+	ret = i2c_fsl_xfer(i2c, msgs, ARRAY_SIZE(msgs));
+	if (ret != 1)
+		pr_err("failed to set voltage\n");
+}
+
+#define I2C_PAD_CTRL	MUX_PAD_CTRL(MX8MQ_PAD_CTL_DSE_45R | \
+				     MX8MQ_PAD_CTL_HYS | \
+				     MX8MQ_PAD_CTL_PUE)
+
+static void mnt_reform_init_power(void)
+{
+	void *i2c;
+
+	imx8mq_setup_pad(IMX8MQ_PAD_I2C1_SCL__I2C1_SCL | I2C_PAD_CTRL);
+	imx8mq_setup_pad(IMX8MQ_PAD_I2C1_SDA__I2C1_SDA | I2C_PAD_CTRL);
+	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_I2C1);
+
+	i2c = imx8m_i2c_early_init(IOMEM(MX8MQ_I2C1_BASE_ADDR));
+
+	/* de-assert i2c mux reset */
+	imx8m_gpio_direction_output(IOMEM(MX8MQ_GPIO1_BASE_ADDR), 4, 1);
+	/* ARM/DRAM_CORE VSEL */
+	imx8m_gpio_direction_output(IOMEM(MX8MQ_GPIO3_BASE_ADDR), 24, 0);
+	/* DRAM VSEL */
+	imx8m_gpio_direction_output(IOMEM(MX8MQ_GPIO2_BASE_ADDR), 11, 0);
+	/* SOC/GPU/VPU VSEL */
+	imx8m_gpio_direction_output(IOMEM(MX8MQ_GPIO2_BASE_ADDR), 20, 0);
+
+	/* enable I2C1A, ARM/DRAM */
+	i2c_mux_set(i2c, 0);
+	/* .6 + .40 = 1.00V */
+	i2c_regulator_set_voltage(i2c, 0, 40);
+	i2c_regulator_set_voltage(i2c, 1, 40);
+
+	/* enable I2C1B, DRAM 1.1V */
+	i2c_mux_set(i2c, 1);
+	/* .6 + .50 = 1.10V */
+	i2c_regulator_set_voltage(i2c, 0, 50);
+	i2c_regulator_set_voltage(i2c, 1, 50);
+
+	/* enable I2C1C, SOC/GPU/VPU */
+	i2c_mux_set(i2c, 2);
+	/*.6 + .30 = .90V */
+	i2c_regulator_set_voltage(i2c, 0, 30);
+	i2c_regulator_set_voltage(i2c, 1, 30);
+
+	/* enable I2C1D */
+	i2c_mux_set(i2c, 3);
+}
+
+extern struct dram_timing_info mnt_reform_dram_timing;
+
+static __noreturn noinline void mnt_reform_start(void)
+{
+	/*
+	 * If we are in EL3 we are running for the first time and need to
+	 * initialize the power supplies, DRAM and run TF-A (BL31).
+	 * The TF-A will then jump to DRAM in EL2.
+	 */
+	if (current_el() == 3) {
+		size_t bl31_size;
+		const u8 *bl31;
+		enum bootsource src;
+		int instance;
+
+		mnt_reform_setup_uart();
+
+		mnt_reform_init_power();
+
+		imx8mq_ddr_init(&mnt_reform_dram_timing);
+
+		imx8mq_get_boot_source(&src, &instance);
+		switch (src) {
+		case BOOTSOURCE_MMC:
+			imx8m_esdhc_load_image(instance, false);
+			break;
+		case BOOTSOURCE_SERIAL:
+			imx8m_esdhc_load_image(1, false);
+			break;
+		default:
+			printf("Unhandled bootsource BOOTSOURCE_%d\n", src);
+			hang();
+		}
+
+		/*
+		 * On completion the TF-A will jump to MX8M_ATF_BL33_BASE_ADDR
+		 * in EL2. Copy the image there, but replace the PBL part of
+		 * that image with ourselves. On a high assurance boot only the
+		 * currently running code is validated and contains the checksum
+		 * for the piggy data, so we need to ensure that we are running
+		 * the same code in DRAM.
+		 */
+		memcpy((void *)MX8M_ATF_BL33_BASE_ADDR,
+		       __image_start, barebox_pbl_size);
+
+		get_builtin_firmware(imx8mq_bl31_bin, &bl31, &bl31_size);
+
+		imx8mq_atf_load_bl31(bl31, bl31_size);
+	}
+
+	/*
+	 * Standard entry we hit once we initialized both DDR and ATF
+	 */
+	imx8mq_barebox_entry(__dtb_imx8mq_mnt_reform2_start);
+}
+
+ENTRY_FUNCTION(start_mnt_reform, r0, r1, r2)
+{
+	imx8mq_cpu_lowlevel_init();
+
+	relocate_to_current_adr();
+	setup_c();
+
+	mnt_reform_start();
+}
diff --git a/arch/arm/boards/mnt-reform/lpddr4-timing.c b/arch/arm/boards/mnt-reform/lpddr4-timing.c
new file mode 100644
index 000000000000..0b5853000d03
--- /dev/null
+++ b/arch/arm/boards/mnt-reform/lpddr4-timing.c
@@ -0,0 +1,1012 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2019 NXP
+ */
+
+#include <common.h>
+#include <soc/imx8m/ddr.h>
+#include <soc/imx8m/lpddr4_define.h>
+
+static struct dram_cfg_param mnt_reform_lpddr4_ddrc_cfg[] = {
+	/** Initialize DDRC registers **/
+	{ DDRC_DBG1(0), 1 },
+	/* selfref_en=1, SDRAM enter self-refresh state */
+	{ DDRC_PWRCTL(0), 1 },
+	{ DDRC_MSTR(0), 0xa0080020 | (LPDDR4_CS << 24) },
+	{ DDRC_MSTR2(0), 0 },
+	{ DDRC_DERATEEN(0), 0x0203 },
+	{ DDRC_DERATEINT(0), 0x0003e800 },
+	{ DDRC_RFSHTMG(0), 0x006100e0 },
+	{ DDRC_INIT0(0), 0xc003061c },
+	{ DDRC_INIT1(0), 0x009e0000 },
+	{ DDRC_INIT3(0), 0x00d4002d },
+	{ DDRC_INIT4(0), ((LPDDR4_MR3 << 16) | 8) },
+	{ DDRC_INIT6(0), 0x0066004a },
+	{ DDRC_INIT7(0), 0x0016004a },
+	{ DDRC_DRAMTMG0(0), 0x1a201b22 },
+	{ DDRC_DRAMTMG1(0), 0x00060633 },
+	{ DDRC_DRAMTMG3(0), 0x00c0c000 },
+	{ DDRC_DRAMTMG4(0), 0x0f04080f },
+	{ DDRC_DRAMTMG5(0), 0x02040c0c },
+	{ DDRC_DRAMTMG6(0), 0x01010007 },
+	{ DDRC_DRAMTMG7(0), 0x0401 },
+	{ DDRC_DRAMTMG12(0), 0x00020600 },
+	{ DDRC_DRAMTMG13(0), 0x0c100002 },
+	{ DDRC_DRAMTMG14(0), 0xe6 },
+	{ DDRC_DRAMTMG17(0), 0x00a00050 },
+	{ DDRC_ZQCTL0(0), 0xc3200018 },
+	{ DDRC_ZQCTL1(0), 0x028061a8 },
+	{ DDRC_ZQCTL2(0), 0 },
+	{ DDRC_DFITMG0(0), 0x0497820a },
+	{ DDRC_DFITMG1(0), 0x00080303 },
+	{ DDRC_DFIUPD0(0), 0xe0400018 },
+	{ DDRC_DFIUPD1(0), 0x00df00e4 },
+	{ DDRC_DFIUPD2(0), 0x80000000 },
+	{ DDRC_DFIMISC(0), 0x11 },
+	{ DDRC_DFITMG2(0), 0x170a },
+	{ DDRC_DBICTL(0), 1 },
+	{ DDRC_DFIPHYMSTR(0), 1 },
+	{ DDRC_RANKCTL(0), 0x0639 },
+	{ DDRC_DRAMTMG2(0), 0x070e1617 },
+
+	/* address mapping */
+	{ DDRC_ADDRMAP0(0), 0x00000017 },
+	{ DDRC_ADDRMAP3(0), 0 },
+	/* addrmap_col_b10 and addrmap_col_b11 set to de-activated (5-bit width) */
+	{ DDRC_ADDRMAP4(0), 0x1f1f },
+	/* bank interleave */
+	/* addrmap_bank_b2, addrmap_bank_b1, addrmap_bank_b0 */
+	{ DDRC_ADDRMAP1(0), 0x00080808 },
+	/* addrmap_row_b11, addrmap_row_b10_b2, addrmap_row_b1, addrmap_row_b0 */
+	{ DDRC_ADDRMAP5(0), 0x07070707 },
+	/* addrmap_row_b15, addrmap_row_b14, addrmap_row_b13, addrmap_row_b12 */
+	{ DDRC_ADDRMAP6(0), 0x07070707 },
+	{ DDRC_ADDRMAP7(0), 0x0f0f },
+	{ DDRC_FREQ1_DERATEEN(0), 1 },
+	{ DDRC_FREQ1_DERATEINT(0), 0xd0c0 },
+	{ DDRC_FREQ1_RFSHCTL0(0), 0x0020d040 },
+	{ DDRC_FREQ1_RFSHTMG(0), 0x0014002f },
+	{ DDRC_FREQ1_INIT3(0), 0x00940009 },
+	{ DDRC_FREQ1_INIT4(0), ((LPDDR4_MR3 << 16) | 8) },
+	{ DDRC_FREQ1_INIT6(0), 0x0066004a },
+	{ DDRC_FREQ1_INIT7(0), 0x0016004a },
+	{ DDRC_FREQ1_DRAMTMG0(0), 0x0b070508 },
+	{ DDRC_FREQ1_DRAMTMG1(0), 0x0003040b },
+	{ DDRC_FREQ1_DRAMTMG2(0), 0x0305090c },
+	{ DDRC_FREQ1_DRAMTMG3(0), 0x00505000 },
+	{ DDRC_FREQ1_DRAMTMG4(0), 0x04040204 },
+	{ DDRC_FREQ1_DRAMTMG5(0), 0x02030303 },
+	{ DDRC_FREQ1_DRAMTMG6(0), 0x01010004 },
+	{ DDRC_FREQ1_DRAMTMG7(0), 0x0301 },
+	{ DDRC_FREQ1_DRAMTMG12(0), 0x00020300 },
+	{ DDRC_FREQ1_DRAMTMG13(0), 0x0a100002 },
+	{ DDRC_FREQ1_DRAMTMG14(0), 0x31 },
+	{ DDRC_FREQ1_DRAMTMG17(0), 0x00220011 },
+	{ DDRC_FREQ1_ZQCTL0(0), 0xc0a70006 },
+	{ DDRC_FREQ1_DFITMG0(0), 0x03858202 },
+	{ DDRC_FREQ1_DFITMG1(0), 0x00080303 },
+	{ DDRC_FREQ1_DFITMG2(0), 0x0502 },
+	{ DDRC_ODTMAP(0), 0 },
+	{ DDRC_SCHED(0), 0x29001505 },
+	{ DDRC_SCHED1(0), 0x2c },
+	{ DDRC_PERFHPR1(0), 0x5900575b },
+	{ DDRC_PERFLPR1(0), 0x90000096 },
+	{ DDRC_PERFWR1(0), 0x1000012c },
+	{ DDRC_DBG0(0), 0x16 },
+	{ DDRC_DBG1(0), 0 },
+	{ DDRC_DBGCMD(0), 0 },
+	{ DDRC_SWCTL(0), 1 },
+	{ DDRC_POISONCFG(0), 0x11 },
+	{ DDRC_PCCFG(0), 0x0111 },
+	{ DDRC_PCFGR_0(0), 0x10f3 },
+	{ DDRC_PCFGW_0(0), 0x72ff },
+	{ DDRC_PCTRL_0(0), 1 },
+	{ DDRC_PCFGQOS0_0(0), 0x0e00 },
+	{ DDRC_PCFGQOS1_0(0), 0x0062ffff },
+	{ DDRC_PCFGWQOS0_0(0), 0x0e00 },
+	{ DDRC_PCFGWQOS1_0(0), 0xffff },
+};
+
+/* PHY Initialize Configuration */
+static struct dram_cfg_param mnt_reform_lpddr4_ddrphy_cfg[] = {
+	{ 0x100a0, 0 },
+	{ 0x100a1, 1 },
+	{ 0x100a2, 2 },
+	{ 0x100a3, 3 },
+	{ 0x100a4, 4 },
+	{ 0x100a5, 5 },
+	{ 0x100a6, 6 },
+	{ 0x100a7, 7 },
+	{ 0x110a0, 0 },
+	{ 0x110a1, 1 },
+	{ 0x110a2, 2 },
+	{ 0x110a3, 3 },
+	{ 0x110a4, 4 },
+	{ 0x110a5, 5 },
+	{ 0x110a6, 6 },
+	{ 0x110a7, 7 },
+	{ 0x120a0, 0 },
+	{ 0x120a1, 1 },
+	{ 0x120a2, 2 },
+	{ 0x120a3, 3 },
+	{ 0x120a4, 4 },
+	{ 0x120a5, 5 },
+	{ 0x120a6, 6 },
+	{ 0x120a7, 7 },
+	{ 0x130a0, 0 },
+	{ 0x130a1, 1 },
+	{ 0x130a2, 2 },
+	{ 0x130a3, 3 },
+	{ 0x130a4, 4 },
+	{ 0x130a5, 5 },
+	{ 0x130a6, 6 },
+	{ 0x130a7, 7 },
+	{ 0x1005f, 0x01ff },
+	{ 0x1015f, 0x01ff },
+	{ 0x1105f, 0x01ff },
+	{ 0x1115f, 0x01ff },
+	{ 0x1205f, 0x01ff },
+	{ 0x1215f, 0x01ff },
+	{ 0x1305f, 0x01ff },
+	{ 0x1315f, 0x01ff },
+	{ 0x11005f, 0x01ff },
+	{ 0x11015f, 0x01ff },
+	{ 0x11105f, 0x01ff },
+	{ 0x11115f, 0x01ff },
+	{ 0x11205f, 0x01ff },
+	{ 0x11215f, 0x01ff },
+	{ 0x11305f, 0x01ff },
+	{ 0x11315f, 0x01ff },
+	{ 0x0055, 0x01ff },
+	{ 0x1055, 0x01ff },
+	{ 0x2055, 0x01ff },
+	{ 0x3055, 0x01ff },
+	{ 0x4055, 0x01ff },
+	{ 0x5055, 0x01ff },
+	{ 0x6055, 0x01ff },
+	{ 0x7055, 0x01ff },
+	{ 0x8055, 0x01ff },
+	{ 0x9055, 0x01ff },
+	{ 0x200c5, 0x19 },
+	{ 0x1200c5, 7 },
+	{ 0x2002e, 2 },
+	{ 0x12002e, 1 },
+	{ 0x90204, 0 },
+	{ 0x190204, 0 },
+	{ 0x20024, 0x01ab },
+	{ 0x2003a, 0 },
+	{ 0x120024, 0x01ab },
+	{ 0x2003a, 0 },
+	{ 0x20056, 3 },
+	{ 0x120056, 3 },
+	{ 0x1004d, 0x0e00 },
+	{ 0x1014d, 0x0e00 },
+	{ 0x1104d, 0x0e00 },
+	{ 0x1114d, 0x0e00 },
+	{ 0x1204d, 0x0e00 },
+	{ 0x1214d, 0x0e00 },
+	{ 0x1304d, 0x0e00 },
+	{ 0x1314d, 0x0e00 },
+	{ 0x11004d, 0x0e00 },
+	{ 0x11014d, 0x0e00 },
+	{ 0x11104d, 0x0e00 },
+	{ 0x11114d, 0x0e00 },
+	{ 0x11204d, 0x0e00 },
+	{ 0x11214d, 0x0e00 },
+	{ 0x11304d, 0x0e00 },
+	{ 0x11314d, 0x0e00 },
+	{ 0x10049, 0x0eba },
+	{ 0x10149, 0x0eba },
+	{ 0x11049, 0x0eba },
+	{ 0x11149, 0x0eba },
+	{ 0x12049, 0x0eba },
+	{ 0x12149, 0x0eba },
+	{ 0x13049, 0x0eba },
+	{ 0x13149, 0x0eba },
+	{ 0x110049, 0x0eba },
+	{ 0x110149, 0x0eba },
+	{ 0x111049, 0x0eba },
+	{ 0x111149, 0x0eba },
+	{ 0x112049, 0x0eba },
+	{ 0x112149, 0x0eba },
+	{ 0x113049, 0x0eba },
+	{ 0x113149, 0x0eba },
+	{ 0x0043, 0x63 },
+	{ 0x1043, 0x63 },
+	{ 0x2043, 0x63 },
+	{ 0x3043, 0x63 },
+	{ 0x4043, 0x63 },
+	{ 0x5043, 0x63 },
+	{ 0x6043, 0x63 },
+	{ 0x7043, 0x63 },
+	{ 0x8043, 0x63 },
+	{ 0x9043, 0x63 },
+	{ 0x20018, 3 },
+	{ 0x20075, 4 },
+	{ 0x20050, 0 },
+	{ 0x20008, 0x0320 },
+	{ 0x120008, 0xa7 },
+	{ 0x20088, 9 },
+	{ 0x200b2, 0xdc },
+	{ 0x10043, 0x05a1 },
+	{ 0x10143, 0x05a1 },
+	{ 0x11043, 0x05a1 },
+	{ 0x11143, 0x05a1 },
+	{ 0x12043, 0x05a1 },
+	{ 0x12143, 0x05a1 },
+	{ 0x13043, 0x05a1 },
+	{ 0x13143, 0x05a1 },
+	{ 0x1200b2, 0xdc },
+	{ 0x110043, 0x05a1 },
+	{ 0x110143, 0x05a1 },
+	{ 0x111043, 0x05a1 },
+	{ 0x111143, 0x05a1 },
+	{ 0x112043, 0x05a1 },
+	{ 0x112143, 0x05a1 },
+	{ 0x113043, 0x05a1 },
+	{ 0x113143, 0x05a1 },
+	{ 0x200fa, 1 },
+	{ 0x1200fa, 1 },
+	{ 0x20019, 1 },
+	{ 0x120019, 1 },
+	{ 0x200f0, 0 },
+	{ 0x200f1, 0 },
+	{ 0x200f2, 0x4444 },
+	{ 0x200f3, 0x8888 },
+	{ 0x200f4, 0x5555 },
+	{ 0x200f5, 0 },
+	{ 0x200f6, 0 },
+	{ 0x200f7, 0xf000 },
+	{ 0x20025, 0 },
+	{ 0x2002d, 0 },
+	{ 0x12002d, 0 },
+	{ 0x200c7, 0x80 },
+	{ 0x1200c7, 0x80 },
+	{ 0x200ca, 0x0106 },
+	{ 0x1200ca, 0x0106 },
+	{ 0x20110, 2 },
+	{ 0x20111, 3 },
+	{ 0x20112, 4 },
+	{ 0x20113, 5 },
+	{ 0x20114, 0 },
+	{ 0x20115, 1 },
+};
+
+/* P0 message block parameter for training firmware */
+static struct dram_cfg_param lpddr4_fsp0_cfg[] = {
+	{ 0xd0000, 0 },
+	{ 0x54003, 0x0c80 },
+	{ 0x54004, 2 },
+	{ 0x54005, 0x2228 },
+	{ 0x54006, LPDDR4_PHY_VREF_VALUE },
+	{ 0x54008, 0x131f },
+	{ 0x54009, LPDDR4_HDT_CTL_3200_1D },
+	{ 0x5400b, 2 },
+	{ 0x54012, 0x10 | (LPDDR4_CS << 8) },
+	{ 0x54019, 0x2dd4 },
+	{ 0x5401a, 0x31 },
+	{ 0x5401b, 0x4a66 },
+	{ 0x5401c, 0x4a08 },
+	{ 0x5401e, 0x16 },
+	{ 0x5401f, 0x2dd4 },
+	{ 0x54020, 0x31 },
+	{ 0x54021, 0x4a66 },
+	{ 0x54022, 0x4a08 },
+	{ 0x54024, 0x16 },
+	{ 0x5402b, 0x1000 },
+	{ 0x5402c, LPDDR4_CS },
+	{ 0x54032, 0xd400 },
+	{ 0x54033, 0x312d },
+	{ 0x54034, 0x6600 },
+	{ 0x54035, 0x084a },
+	{ 0x54036, 0x4a },
+	{ 0x54037, 0x1600 },
+	{ 0x54038, 0xd400 },
+	{ 0x54039, 0x312d },
+	{ 0x5403a, 0x6600 },
+	{ 0x5403b, 0x084a },
+	{ 0x5403c, 0x4a },
+	{ 0x5403d, 0x1600 },
+	{ 0xd0000, 1 },
+};
+
+
+/* P1 message block parameter for training firmware */
+static struct dram_cfg_param lpddr4_fsp1_cfg[] = {
+	{ 0xd0000, 0 },
+	{ 0x54002, 1 },
+	{ 0x54003, 0x029c },
+	{ 0x54004, 2 },
+	{ 0x54005, 0x2228 },
+	{ 0x54006, LPDDR4_PHY_VREF_VALUE },
+	{ 0x54008, 0x121f },
+	{ 0x54009, LPDDR4_HDT_CTL_3200_1D },
+	{ 0x5400b, 2 },
+	{ 0x54012, 0x10 | (LPDDR4_CS << 8) },
+	{ 0x54019, 0x0994 },
+	{ 0x5401a, 0x31 },
+	{ 0x5401b, 0x4a66 },
+	{ 0x5401c, 0x4a08 },
+	{ 0x5401e, 0x16 },
+	{ 0x5401f, 0x0994 },
+	{ 0x54020, 0x31 },
+	{ 0x54021, 0x4a66 },
+	{ 0x54022, 0x4a08 },
+	{ 0x54024, 0x16 },
+	{ 0x5402b, 0x1000 },
+	{ 0x5402c, LPDDR4_CS },
+	{ 0x54032, 0x9400 },
+	{ 0x54033, 0x3109 },
+	{ 0x54034, 0x6600 },
+	{ 0x54035, 0x084a },
+	{ 0x54036, 0x4a },
+	{ 0x54037, 0x1600 },
+	{ 0x54038, 0x9400 },
+	{ 0x54039, 0x3109 },
+	{ 0x5403a, 0x6600 },
+	{ 0x5403b, 0x084a },
+	{ 0x5403c, 0x4a },
+	{ 0x5403d, 0x1600 },
+	{ 0xd0000, 1 },
+};
+
+
+/* P0 2D message block parameter for training firmware */
+static struct dram_cfg_param lpddr4_fsp0_2d_cfg[] = {
+	{ 0xd0000, 0 },
+	{ 0x54003, 0x0c80 },
+	{ 0x54004, 2 },
+	{ 0x54005, 0x2228 },
+	{ 0x54006, LPDDR4_PHY_VREF_VALUE },
+	{ 0x54008, 0x61 },
+	{ 0x54009, LPDDR4_HDT_CTL_3200_1D },
+	{ 0x5400b, 2 },
+	{ 0x5400d, 0x0100 },
+	{ 0x5400f, 0x0100 },
+	{ 0x54010, 0x1f7f },
+	{ 0x54012, 0x10 | (LPDDR4_CS << 8) },
+	{ 0x54019, 0x2dd4 },
+	{ 0x5401a, 0x31 },
+	{ 0x5401b, 0x4a66 },
+	{ 0x5401c, 0x4a08 },
+	{ 0x5401e, 0x16 },
+	{ 0x5401f, 0x2dd4 },
+	{ 0x54020, 0x31 },
+	{ 0x54021, 0x4a66 },
+	{ 0x54022, 0x4a08 },
+	{ 0x54024, 0x16 },
+	{ 0x5402b, 0x1000 },
+	{ 0x5402c, LPDDR4_CS },
+	{ 0x54032, 0xd400 },
+	{ 0x54033, 0x312d },
+	{ 0x54034, 0x6600 },
+	{ 0x54035, 0x084a },
+	{ 0x54036, 0x4a },
+	{ 0x54037, 0x1600 },
+	{ 0x54038, 0xd400 },
+	{ 0x54039, 0x312d },
+	{ 0x5403a, 0x6600 },
+	{ 0x5403b, 0x084a },
+	{ 0x5403c, 0x4a },
+	{ 0x5403d, 0x1600 },
+	{ 0xd0000, 1 },
+};
+
+/* DRAM PHY init engine image */
+static struct dram_cfg_param mnt_reform_lpddr4_phy_pie[] = {
+	{ 0xd0000, 0 },
+	{ 0x90000, 0x10 },
+	{ 0x90001, 0x0400 },
+	{ 0x90002, 0x010e },
+	{ 0x90003, 0 },
+	{ 0x90004, 0 },
+	{ 0x90005, 8 },
+	{ 0x90029, 0x0b },
+	{ 0x9002a, 0x0480 },
+	{ 0x9002b, 0x0109 },
+	{ 0x9002c, 8 },
+	{ 0x9002d, 0x0448 },
+	{ 0x9002e, 0x0139 },
+	{ 0x9002f, 8 },
+	{ 0x90030, 0x0478 },
+	{ 0x90031, 0x0109 },
+	{ 0x90032, 0 },
+	{ 0x90033, 0xe8 },
+	{ 0x90034, 0x0109 },
+	{ 0x90035, 2 },
+	{ 0x90036, 0x10 },
+	{ 0x90037, 0x0139 },
+	{ 0x90038, 0x0f },
+	{ 0x90039, 0x07c0 },
+	{ 0x9003a, 0x0139 },
+	{ 0x9003b, 0x44 },
+	{ 0x9003c, 0x0630 },
+	{ 0x9003d, 0x0159 },
+	{ 0x9003e, 0x014f },
+	{ 0x9003f, 0x0630 },
+	{ 0x90040, 0x0159 },
+	{ 0x90041, 0x47 },
+	{ 0x90042, 0x0630 },
+	{ 0x90043, 0x0149 },
+	{ 0x90044, 0x4f },
+	{ 0x90045, 0x0630 },
+	{ 0x90046, 0x0179 },
+	{ 0x90047, 8 },
+	{ 0x90048, 0xe0 },
+	{ 0x90049, 0x0109 },
+	{ 0x9004a, 0 },
+	{ 0x9004b, 0x07c8 },
+	{ 0x9004c, 0x0109 },
+	{ 0x9004d, 0 },
+	{ 0x9004e, 1 },
+	{ 0x9004f, 8 },
+	{ 0x90050, 0 },
+	{ 0x90051, 0x045a },
+	{ 0x90052, 9 },
+	{ 0x90053, 0 },
+	{ 0x90054, 0x0448 },
+	{ 0x90055, 0x0109 },
+	{ 0x90056, 0x40 },
+	{ 0x90057, 0x0630 },
+	{ 0x90058, 0x0179 },
+	{ 0x90059, 1 },
+	{ 0x9005a, 0x0618 },
+	{ 0x9005b, 0x0109 },
+	{ 0x9005c, 0x40c0 },
+	{ 0x9005d, 0x0630 },
+	{ 0x9005e, 0x0149 },
+	{ 0x9005f, 8 },
+	{ 0x90060, 4 },
+	{ 0x90061, 0x48 },
+	{ 0x90062, 0x4040 },
+	{ 0x90063, 0x0630 },
+	{ 0x90064, 0x0149 },
+	{ 0x90065, 0 },
+	{ 0x90066, 4 },
+	{ 0x90067, 0x48 },
+	{ 0x90068, 0x40 },
+	{ 0x90069, 0x0630 },
+	{ 0x9006a, 0x0149 },
+	{ 0x9006b, 0x10 },
+	{ 0x9006c, 4 },
+	{ 0x9006d, 0x18 },
+	{ 0x9006e, 0 },
+	{ 0x9006f, 4 },
+	{ 0x90070, 0x78 },
+	{ 0x90071, 0x0549 },
+	{ 0x90072, 0x0630 },
+	{ 0x90073, 0x0159 },
+	{ 0x90074, 0x0d49 },
+	{ 0x90075, 0x0630 },
+	{ 0x90076, 0x0159 },
+	{ 0x90077, 0x094a },
+	{ 0x90078, 0x0630 },
+	{ 0x90079, 0x0159 },
+	{ 0x9007a, 0x0441 },
+	{ 0x9007b, 0x0630 },
+	{ 0x9007c, 0x0149 },
+	{ 0x9007d, 0x42 },
+	{ 0x9007e, 0x0630 },
+	{ 0x9007f, 0x0149 },
+	{ 0x90080, 1 },
+	{ 0x90081, 0x0630 },
+	{ 0x90082, 0x0149 },
+	{ 0x90083, 0 },
+	{ 0x90084, 0xe0 },
+	{ 0x90085, 0x0109 },
+	{ 0x90086, 0x0a },
+	{ 0x90087, 0x10 },
+	{ 0x90088, 0x0109 },
+	{ 0x90089, 9 },
+	{ 0x9008a, 0x03c0 },
+	{ 0x9008b, 0x0149 },
+	{ 0x9008c, 9 },
+	{ 0x9008d, 0x03c0 },
+	{ 0x9008e, 0x0159 },
+	{ 0x9008f, 0x18 },
+	{ 0x90090, 0x10 },
+	{ 0x90091, 0x0109 },
+	{ 0x90092, 0 },
+	{ 0x90093, 0x03c0 },
+	{ 0x90094, 0x0109 },
+	{ 0x90095, 0x18 },
+	{ 0x90096, 4 },
+	{ 0x90097, 0x48 },
+	{ 0x90098, 0x18 },
+	{ 0x90099, 4 },
+	{ 0x9009a, 0x58 },
+	{ 0x9009b, 0x0a },
+	{ 0x9009c, 0x10 },
+	{ 0x9009d, 0x0109 },
+	{ 0x9009e, 2 },
+	{ 0x9009f, 0x10 },
+	{ 0x900a0, 0x0109 },
+	{ 0x900a1, 5 },
+	{ 0x900a2, 0x07c0 },
+	{ 0x900a3, 0x0109 },
+	{ 0x900a4, 0x10 },
+	{ 0x900a5, 0x10 },
+	{ 0x900a6, 0x0109 },
+	{ 0x40000, 0x0811 },
+	{ 0x40020, 0x0880 },
+	{ 0x40040, 0 },
+	{ 0x40060, 0 },
+	{ 0x40001, 0x4008 },
+	{ 0x40021, 0x83 },
+	{ 0x40041, 0x4f },
+	{ 0x40061, 0 },
+	{ 0x40002, 0x4040 },
+	{ 0x40022, 0x83 },
+	{ 0x40042, 0x51 },
+	{ 0x40062, 0 },
+	{ 0x40003, 0x0811 },
+	{ 0x40023, 0x0880 },
+	{ 0x40043, 0 },
+	{ 0x40063, 0 },
+	{ 0x40004, 0x0720 },
+	{ 0x40024, 0x0f },
+	{ 0x40044, 0x1740 },
+	{ 0x40064, 0 },
+	{ 0x40005, 0x16 },
+	{ 0x40025, 0x83 },
+	{ 0x40045, 0x4b },
+	{ 0x40065, 0 },
+	{ 0x40006, 0x0716 },
+	{ 0x40026, 0x0f },
+	{ 0x40046, 0x2001 },
+	{ 0x40066, 0 },
+	{ 0x40007, 0x0716 },
+	{ 0x40027, 0x0f },
+	{ 0x40047, 0x2800 },
+	{ 0x40067, 0 },
+	{ 0x40008, 0x0716 },
+	{ 0x40028, 0x0f },
+	{ 0x40048, 0x0f00 },
+	{ 0x40068, 0 },
+	{ 0x40009, 0x0720 },
+	{ 0x40029, 0x0f },
+	{ 0x40049, 0x1400 },
+	{ 0x40069, 0 },
+	{ 0x4000a, 0x0e08 },
+	{ 0x4002a, 0x0c15 },
+	{ 0x4004a, 0 },
+	{ 0x4006a, 0 },
+	{ 0x4000b, 0x0623 },
+	{ 0x4002b, 0x15 },
+	{ 0x4004b, 0 },
+	{ 0x4006b, 0 },
+	{ 0x4000c, 0x4028 },
+	{ 0x4002c, 0x80 },
+	{ 0x4004c, 0 },
+	{ 0x4006c, 0 },
+	{ 0x4000d, 0x0e08 },
+	{ 0x4002d, 0x0c1a },
+	{ 0x4004d, 0 },
+	{ 0x4006d, 0 },
+	{ 0x4000e, 0x0623 },
+	{ 0x4002e, 0x1a },
+	{ 0x4004e, 0 },
+	{ 0x4006e, 0 },
+	{ 0x4000f, 0x4040 },
+	{ 0x4002f, 0x80 },
+	{ 0x4004f, 0 },
+	{ 0x4006f, 0 },
+	{ 0x40010, 0x2604 },
+	{ 0x40030, 0x15 },
+	{ 0x40050, 0 },
+	{ 0x40070, 0 },
+	{ 0x40011, 0x0708 },
+	{ 0x40031, 5 },
+	{ 0x40051, 0 },
+	{ 0x40071, 0x2002 },
+	{ 0x40012, 8 },
+	{ 0x40032, 0x80 },
+	{ 0x40052, 0 },
+	{ 0x40072, 0 },
+	{ 0x40013, 0x2604 },
+	{ 0x40033, 0x1a },
+	{ 0x40053, 0 },
+	{ 0x40073, 0 },
+	{ 0x40014, 0x0708 },
+	{ 0x40034, 0x0a },
+	{ 0x40054, 0 },
+	{ 0x40074, 0x2002 },
+	{ 0x40015, 0x4040 },
+	{ 0x40035, 0x80 },
+	{ 0x40055, 0 },
+	{ 0x40075, 0 },
+	{ 0x40016, 0x060a },
+	{ 0x40036, 0x15 },
+	{ 0x40056, 0x1200 },
+	{ 0x40076, 0 },
+	{ 0x40017, 0x061a },
+	{ 0x40037, 0x15 },
+	{ 0x40057, 0x1300 },
+	{ 0x40077, 0 },
+	{ 0x40018, 0x060a },
+	{ 0x40038, 0x1a },
+	{ 0x40058, 0x1200 },
+	{ 0x40078, 0 },
+	{ 0x40019, 0x0642 },
+	{ 0x40039, 0x1a },
+	{ 0x40059, 0x1300 },
+	{ 0x40079, 0 },
+	{ 0x4001a, 0x4808 },
+	{ 0x4003a, 0x0880 },
+	{ 0x4005a, 0 },
+	{ 0x4007a, 0 },
+	{ 0x900a7, 0 },
+	{ 0x900a8, 0x0790 },
+	{ 0x900a9, 0x011a },
+	{ 0x900aa, 8 },
+	{ 0x900ab, 0x07aa },
+	{ 0x900ac, 0x2a },
+	{ 0x900ad, 0x10 },
+	{ 0x900ae, 0x07b2 },
+	{ 0x900af, 0x2a },
+	{ 0x900b0, 0 },
+	{ 0x900b1, 0x07c8 },
+	{ 0x900b2, 0x0109 },
+	{ 0x900b3, 0x10 },
+	{ 0x900b4, 0x02a8 },
+	{ 0x900b5, 0x0129 },
+	{ 0x900b6, 8 },
+	{ 0x900b7, 0x0370 },
+	{ 0x900b8, 0x0129 },
+	{ 0x900b9, 0x0a },
+	{ 0x900ba, 0x03c8 },
+	{ 0x900bb, 0x01a9 },
+	{ 0x900bc, 0x0c },
+	{ 0x900bd, 0x0408 },
+	{ 0x900be, 0x0199 },
+	{ 0x900bf, 0x14 },
+	{ 0x900c0, 0x0790 },
+	{ 0x900c1, 0x011a },
+	{ 0x900c2, 8 },
+	{ 0x900c3, 4 },
+	{ 0x900c4, 0x18 },
+	{ 0x900c5, 0x0e },
+	{ 0x900c6, 0x0408 },
+	{ 0x900c7, 0x0199 },
+	{ 0x900c8, 8 },
+	{ 0x900c9, 0x8568 },
+	{ 0x900ca, 0x0108 },
+	{ 0x900cb, 0x18 },
+	{ 0x900cc, 0x0790 },
+	{ 0x900cd, 0x016a },
+	{ 0x900ce, 8 },
+	{ 0x900cf, 0x01d8 },
+	{ 0x900d0, 0x0169 },
+	{ 0x900d1, 0x10 },
+	{ 0x900d2, 0x8558 },
+	{ 0x900d3, 0x0168 },
+	{ 0x900d4, 0x70 },
+	{ 0x900d5, 0x0788 },
+	{ 0x900d6, 0x016a },
+	{ 0x900d7, 0x1ff8 },
+	{ 0x900d8, 0x85a8 },
+	{ 0x900d9, 0x01e8 },
+	{ 0x900da, 0x50 },
+	{ 0x900db, 0x0798 },
+	{ 0x900dc, 0x016a },
+	{ 0x900dd, 0x60 },
+	{ 0x900de, 0x07a0 },
+	{ 0x900df, 0x016a },
+	{ 0x900e0, 8 },
+	{ 0x900e1, 0x8310 },
+	{ 0x900e2, 0x0168 },
+	{ 0x900e3, 8 },
+	{ 0x900e4, 0xa310 },
+	{ 0x900e5, 0x0168 },
+	{ 0x900e6, 0x0a },
+	{ 0x900e7, 0x0408 },
+	{ 0x900e8, 0x0169 },
+	{ 0x900e9, 0x6e },
+	{ 0x900ea, 0 },
+	{ 0x900eb, 0x68 },
+	{ 0x900ec, 0 },
+	{ 0x900ed, 0x0408 },
+	{ 0x900ee, 0x0169 },
+	{ 0x900ef, 0 },
+	{ 0x900f0, 0x8310 },
+	{ 0x900f1, 0x0168 },
+	{ 0x900f2, 0 },
+	{ 0x900f3, 0xa310 },
+	{ 0x900f4, 0x0168 },
+	{ 0x900f5, 0x1ff8 },
+	{ 0x900f6, 0x85a8 },
+	{ 0x900f7, 0x01e8 },
+	{ 0x900f8, 0x68 },
+	{ 0x900f9, 0x0798 },
+	{ 0x900fa, 0x016a },
+	{ 0x900fb, 0x78 },
+	{ 0x900fc, 0x07a0 },
+	{ 0x900fd, 0x016a },
+	{ 0x900fe, 0x68 },
+	{ 0x900ff, 0x0790 },
+	{ 0x90100, 0x016a },
+	{ 0x90101, 8 },
+	{ 0x90102, 0x8b10 },
+	{ 0x90103, 0x0168 },
+	{ 0x90104, 8 },
+	{ 0x90105, 0xab10 },
+	{ 0x90106, 0x0168 },
+	{ 0x90107, 0x0a },
+	{ 0x90108, 0x0408 },
+	{ 0x90109, 0x0169 },
+	{ 0x9010a, 0x58 },
+	{ 0x9010b, 0 },
+	{ 0x9010c, 0x68 },
+	{ 0x9010d, 0 },
+	{ 0x9010e, 0x0408 },
+	{ 0x9010f, 0x0169 },
+	{ 0x90110, 0 },
+	{ 0x90111, 0x8b10 },
+	{ 0x90112, 0x0168 },
+	{ 0x90113, 0 },
+	{ 0x90114, 0xab10 },
+	{ 0x90115, 0x0168 },
+	{ 0x90116, 0 },
+	{ 0x90117, 0x01d8 },
+	{ 0x90118, 0x0169 },
+	{ 0x90119, 0x80 },
+	{ 0x9011a, 0x0790 },
+	{ 0x9011b, 0x016a },
+	{ 0x9011c, 0x18 },
+	{ 0x9011d, 0x07aa },
+	{ 0x9011e, 0x6a },
+	{ 0x9011f, 0x0a },
+	{ 0x90120, 0 },
+	{ 0x90121, 0x01e9 },
+	{ 0x90122, 8 },
+	{ 0x90123, 0x8080 },
+	{ 0x90124, 0x0108 },
+	{ 0x90125, 0x0f },
+	{ 0x90126, 0x0408 },
+	{ 0x90127, 0x0169 },
+	{ 0x90128, 0x0c },
+	{ 0x90129, 0 },
+	{ 0x9012a, 0x68 },
+	{ 0x9012b, 9 },
+	{ 0x9012c, 0 },
+	{ 0x9012d, 0x01a9 },
+	{ 0x9012e, 0 },
+	{ 0x9012f, 0x0408 },
+	{ 0x90130, 0x0169 },
+	{ 0x90131, 0 },
+	{ 0x90132, 0x8080 },
+	{ 0x90133, 0x0108 },
+	{ 0x90134, 8 },
+	{ 0x90135, 0x07aa },
+	{ 0x90136, 0x6a },
+	{ 0x90137, 0 },
+	{ 0x90138, 0x8568 },
+	{ 0x90139, 0x0108 },
+	{ 0x9013a, 0xb7 },
+	{ 0x9013b, 0x0790 },
+	{ 0x9013c, 0x016a },
+	{ 0x9013d, 0x1f },
+	{ 0x9013e, 0 },
+	{ 0x9013f, 0x68 },
+	{ 0x90140, 8 },
+	{ 0x90141, 0x8558 },
+	{ 0x90142, 0x0168 },
+	{ 0x90143, 0x0f },
+	{ 0x90144, 0x0408 },
+	{ 0x90145, 0x0169 },
+	{ 0x90146, 0x0c },
+	{ 0x90147, 0 },
+	{ 0x90148, 0x68 },
+	{ 0x90149, 0 },
+	{ 0x9014a, 0x0408 },
+	{ 0x9014b, 0x0169 },
+	{ 0x9014c, 0 },
+	{ 0x9014d, 0x8558 },
+	{ 0x9014e, 0x0168 },
+	{ 0x9014f, 8 },
+	{ 0x90150, 0x03c8 },
+	{ 0x90151, 0x01a9 },
+	{ 0x90152, 3 },
+	{ 0x90153, 0x0370 },
+	{ 0x90154, 0x0129 },
+	{ 0x90155, 0x20 },
+	{ 0x90156, 0x02aa },
+	{ 0x90157, 9 },
+	{ 0x90158, 0 },
+	{ 0x90159, 0x0400 },
+	{ 0x9015a, 0x010e },
+	{ 0x9015b, 8 },
+	{ 0x9015c, 0xe8 },
+	{ 0x9015d, 0x0109 },
+	{ 0x9015e, 0 },
+	{ 0x9015f, 0x8140 },
+	{ 0x90160, 0x010c },
+	{ 0x90161, 0x10 },
+	{ 0x90162, 0x8138 },
+	{ 0x90163, 0x010c },
+	{ 0x90164, 8 },
+	{ 0x90165, 0x07c8 },
+	{ 0x90166, 0x0101 },
+	{ 0x90167, 8 },
+	{ 0x90168, 0 },
+	{ 0x90169, 8 },
+	{ 0x9016a, 8 },
+	{ 0x9016b, 0x0448 },
+	{ 0x9016c, 0x0109 },
+	{ 0x9016d, 0x0f },
+	{ 0x9016e, 0x07c0 },
+	{ 0x9016f, 0x0109 },
+	{ 0x90170, 0 },
+	{ 0x90171, 0xe8 },
+	{ 0x90172, 0x0109 },
+	{ 0x90173, 0x47 },
+	{ 0x90174, 0x0630 },
+	{ 0x90175, 0x0109 },
+	{ 0x90176, 8 },
+	{ 0x90177, 0x0618 },
+	{ 0x90178, 0x0109 },
+	{ 0x90179, 8 },
+	{ 0x9017a, 0xe0 },
+	{ 0x9017b, 0x0109 },
+	{ 0x9017c, 0 },
+	{ 0x9017d, 0x07c8 },
+	{ 0x9017e, 0x0109 },
+	{ 0x9017f, 8 },
+	{ 0x90180, 0x8140 },
+	{ 0x90181, 0x010c },
+	{ 0x90182, 0 },
+	{ 0x90183, 1 },
+	{ 0x90184, 8 },
+	{ 0x90185, 8 },
+	{ 0x90186, 4 },
+	{ 0x90187, 8 },
+	{ 0x90188, 8 },
+	{ 0x90189, 0x07c8 },
+	{ 0x9018a, 0x0101 },
+	{ 0x90006, 0 },
+	{ 0x90007, 0 },
+	{ 0x90008, 8 },
+	{ 0x90009, 0 },
+	{ 0x9000a, 0 },
+	{ 0x9000b, 0 },
+	{ 0xd00e7, 0x0400 },
+	{ 0x90017, 0 },
+	{ 0x9001f, 0x2a },
+	{ 0x90026, 0x6a },
+	{ 0x400d0, 0 },
+	{ 0x400d1, 0x0101 },
+	{ 0x400d2, 0x0105 },
+	{ 0x400d3, 0x0107 },
+	{ 0x400d4, 0x010f },
+	{ 0x400d5, 0x0202 },
+	{ 0x400d6, 0x020a },
+	{ 0x400d7, 0x020b },
+	{ 0x2003a, 2 },
+	{ 0x2000b, 0x64 },
+	{ 0x2000c, 0xc8 },
+	{ 0x2000d, 0x07d0 },
+	{ 0x2000e, 0x2c },
+	{ 0x12000b, 0x14 },
+	{ 0x12000c, 0x29 },
+	{ 0x12000d, 0x01a1 },
+	{ 0x12000e, 0x10 },
+	{ 0x9000c, 0 },
+	{ 0x9000d, 0x0173 },
+	{ 0x9000e, 0x60 },
+	{ 0x9000f, 0x6110 },
+	{ 0x90010, 0x2152 },
+	{ 0x90011, 0xdfbd },
+	{ 0x90012, 0x60 },
+	{ 0x90013, 0x6152 },
+	{ 0x20010, 0x5a },
+	{ 0x20011, 3 },
+	{ 0x40080, 0xe0 },
+	{ 0x40081, 0x12 },
+	{ 0x40082, 0xe0 },
+	{ 0x40083, 0x12 },
+	{ 0x40084, 0xe0 },
+	{ 0x40085, 0x12 },
+	{ 0x140080, 0xe0 },
+	{ 0x140081, 0x12 },
+	{ 0x140082, 0xe0 },
+	{ 0x140083, 0x12 },
+	{ 0x140084, 0xe0 },
+	{ 0x140085, 0x12 },
+	{ 0x400fd, 0x0f },
+	{ 0x10011, 1 },
+	{ 0x10012, 1 },
+	{ 0x10013, 0x0180 },
+	{ 0x10018, 1 },
+	{ 0x10002, 0x6209 },
+	{ 0x100b2, 1 },
+	{ 0x101b4, 1 },
+	{ 0x102b4, 1 },
+	{ 0x103b4, 1 },
+	{ 0x104b4, 1 },
+	{ 0x105b4, 1 },
+	{ 0x106b4, 1 },
+	{ 0x107b4, 1 },
+	{ 0x108b4, 1 },
+	{ 0x11011, 1 },
+	{ 0x11012, 1 },
+	{ 0x11013, 0x0180 },
+	{ 0x11018, 1 },
+	{ 0x11002, 0x6209 },
+	{ 0x110b2, 1 },
+	{ 0x111b4, 1 },
+	{ 0x112b4, 1 },
+	{ 0x113b4, 1 },
+	{ 0x114b4, 1 },
+	{ 0x115b4, 1 },
+	{ 0x116b4, 1 },
+	{ 0x117b4, 1 },
+	{ 0x118b4, 1 },
+	{ 0x12011, 1 },
+	{ 0x12012, 1 },
+	{ 0x12013, 0x0180 },
+	{ 0x12018, 1 },
+	{ 0x12002, 0x6209 },
+	{ 0x120b2, 1 },
+	{ 0x121b4, 1 },
+	{ 0x122b4, 1 },
+	{ 0x123b4, 1 },
+	{ 0x124b4, 1 },
+	{ 0x125b4, 1 },
+	{ 0x126b4, 1 },
+	{ 0x127b4, 1 },
+	{ 0x128b4, 1 },
+	{ 0x13011, 1 },
+	{ 0x13012, 1 },
+	{ 0x13013, 0x0180 },
+	{ 0x13018, 1 },
+	{ 0x13002, 0x6209 },
+	{ 0x130b2, 1 },
+	{ 0x131b4, 1 },
+	{ 0x132b4, 1 },
+	{ 0x133b4, 1 },
+	{ 0x134b4, 1 },
+	{ 0x135b4, 1 },
+	{ 0x136b4, 1 },
+	{ 0x137b4, 1 },
+	{ 0x138b4, 1 },
+	{ 0x2003a, 2 },
+	{ 0xc0080, 2 },
+	{ 0xd0000, 1 }
+};
+
+static struct dram_fsp_msg mnt_reform_lpddr4_dram_fsp_msg[] = {
+	{
+		/* P0 3200mts 1D */
+		.drate = 3200,
+		.fw_type = FW_1D_IMAGE,
+		.fsp_cfg = lpddr4_fsp0_cfg,
+		.fsp_cfg_num = ARRAY_SIZE(lpddr4_fsp0_cfg),
+	},
+	{
+		/* P1 667mts 1D */
+		.drate = 667,
+		.fw_type = FW_1D_IMAGE,
+		.fsp_cfg = lpddr4_fsp1_cfg,
+		.fsp_cfg_num = ARRAY_SIZE(lpddr4_fsp1_cfg),
+	},
+	{
+		/* P0 3200mts 2D */
+		.drate = 3200,
+		.fw_type = FW_2D_IMAGE,
+		.fsp_cfg = lpddr4_fsp0_2d_cfg,
+		.fsp_cfg_num = ARRAY_SIZE(lpddr4_fsp0_2d_cfg),
+	},
+};
+
+/* ddr timing config params */
+struct dram_timing_info mnt_reform_dram_timing = {
+	.ddrc_cfg = mnt_reform_lpddr4_ddrc_cfg,
+	.ddrc_cfg_num = ARRAY_SIZE(mnt_reform_lpddr4_ddrc_cfg),
+	.ddrphy_cfg = mnt_reform_lpddr4_ddrphy_cfg,
+	.ddrphy_cfg_num = ARRAY_SIZE(mnt_reform_lpddr4_ddrphy_cfg),
+	.fsp_msg = mnt_reform_lpddr4_dram_fsp_msg,
+	.fsp_msg_num = ARRAY_SIZE(mnt_reform_lpddr4_dram_fsp_msg),
+	.ddrphy_pie = mnt_reform_lpddr4_phy_pie,
+	.ddrphy_pie_num = ARRAY_SIZE(mnt_reform_lpddr4_phy_pie),
+	.fsp_table = { 3200, 667, },
+};
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index a1e0bb6a4168..63bd73dfaa5d 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -169,5 +169,6 @@ lwl-$(CONFIG_MACH_WAGO_PFC_AM35XX) += am35xx-pfc-750_820x.dtb.o
 lwl-$(CONFIG_MACH_LS1046ARDB) += fsl-ls1046a-rdb.dtb.o
 lwl-$(CONFIG_MACH_TQMLS1046A) += fsl-tqmls1046a-mbls10xxa.dtb.o
 lwl-$(CONFIG_MACH_ZEDBOARD) += zynq-zed.dtb.o
+lwl-$(CONFIG_MACH_MNT_REFORM) += imx8mq-mnt-reform2.dtb.o
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.lzo
diff --git a/arch/arm/dts/imx8mq-mnt-reform2.dts b/arch/arm/dts/imx8mq-mnt-reform2.dts
new file mode 100644
index 000000000000..4e80e00dd143
--- /dev/null
+++ b/arch/arm/dts/imx8mq-mnt-reform2.dts
@@ -0,0 +1,223 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2019-2020 MNT Research GmbH
+ * Copyright 2020 Lucas Stach <dev@lynxeye.de>
+ */
+
+/dts-v1/;
+
+#include <arm64/freescale/imx8mq.dtsi>
+#include "imx8mq.dtsi"
+#include "imx8mq-ddrc.dtsi"
+
+/ {
+	model = "MNT Reform2";
+	compatible = "mnt,reform2", "fsl,imx8mq";
+
+	chosen {
+		stdout-path = &uart1;
+
+		environment-emmc {
+			compatible = "barebox,environment";
+			device-path = &usdhc1, "partname:barebox-environment";
+			status = "disabled";
+		};
+
+		environment-sd {
+			compatible = "barebox,environment";
+			device-path = &usdhc2, "partname:barebox-environment";
+			status = "disabled";
+		};
+	};
+
+	pcie1_refclk: pcie1-refclk {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <100000000>;
+	};
+};
+
+&fec1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec1>;
+	phy-mode = "rgmii-id";
+	phy-handle = <&ethphy0>;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy0: ethernet-phy@4 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <4>;
+			interrupts = <&gpio1 11 IRQ_TYPE_LEVEL_LOW>;
+			reset-gpios = <&gpio1 9 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
+&ocotp {
+	barebox,provide-mac-address = <&fec1 0x640>;
+};
+
+&pcie1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pcie1>;
+	reset-gpio = <&gpio3 23 GPIO_ACTIVE_LOW>;
+	clocks = <&clk IMX8MQ_CLK_PCIE2_ROOT>,
+		 <&clk IMX8MQ_CLK_PCIE2_AUX>,
+		 <&clk IMX8MQ_CLK_PCIE2_PHY>,
+		 <&pcie1_refclk>;
+	clock-names = "pcie", "pcie_aux", "pcie_phy", "pcie_bus";
+	status = "okay";
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
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
+&usb_dwc3_0 {
+	status = "okay";
+	dr_mode = "host";
+};
+
+&usb_dwc3_1 {
+	status = "okay";
+	dr_mode = "host";
+};
+
+&usdhc1 {
+	assigned-clocks = <&clk IMX8MQ_CLK_USDHC1>;
+	assigned-clock-rates = <400000000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc1>;
+	bus-width = <8>;
+	no-mmc-hs400;
+	non-removable;
+	no-sd;
+	no-sdio;
+	status = "okay";
+
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
+&usdhc2 {
+	assigned-clocks = <&clk IMX8MQ_CLK_USDHC2>;
+	assigned-clock-rates = <200000000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	bus-width = <4>;
+	no-1-8-v;
+	status = "okay";
+
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
+&wdog1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_wdog>;
+	fsl,ext-reset-output;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl_fec1: fec1grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_ENET_MDC_ENET1_MDC			0x3
+			MX8MQ_IOMUXC_ENET_MDIO_ENET1_MDIO		0x23
+			MX8MQ_IOMUXC_ENET_TX_CTL_ENET1_RGMII_TX_CTL	0x1f
+			MX8MQ_IOMUXC_ENET_TXC_ENET1_RGMII_TXC		0x1f
+			MX8MQ_IOMUXC_ENET_TD0_ENET1_RGMII_TD0		0x1f
+			MX8MQ_IOMUXC_ENET_TD1_ENET1_RGMII_TD1		0x1f
+			MX8MQ_IOMUXC_ENET_TD2_ENET1_RGMII_TD2		0x1f
+			MX8MQ_IOMUXC_ENET_TD3_ENET1_RGMII_TD3		0x1f
+			MX8MQ_IOMUXC_ENET_RX_CTL_ENET1_RGMII_RX_CTL	0x91
+			MX8MQ_IOMUXC_ENET_RXC_ENET1_RGMII_RXC		0xd1
+			MX8MQ_IOMUXC_ENET_RD0_ENET1_RGMII_RD0		0x91
+			MX8MQ_IOMUXC_ENET_RD1_ENET1_RGMII_RD1		0x91
+			MX8MQ_IOMUXC_ENET_RD2_ENET1_RGMII_RD2		0x91
+			MX8MQ_IOMUXC_ENET_RD3_ENET1_RGMII_RD3		0xd1
+			MX8MQ_IOMUXC_GPIO1_IO09_GPIO1_IO9		0x1
+			MX8MQ_IOMUXC_GPIO1_IO11_GPIO1_IO11		0x1
+		>;
+	};
+
+	pinctrl_pcie1: pcie1grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SAI5_RXD2_GPIO3_IO23		0x16
+		>;
+	};
+
+	pinctrl_uart1: uart1grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_UART1_RXD_UART1_DCE_RX		0x45
+			MX8MQ_IOMUXC_UART1_TXD_UART1_DCE_TX		0x45
+		>;
+	};
+
+	pinctrl_usdhc1: usdhc1grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SD1_CLK_USDHC1_CLK			0x83
+			MX8MQ_IOMUXC_SD1_CMD_USDHC1_CMD			0xc3
+			MX8MQ_IOMUXC_SD1_DATA0_USDHC1_DATA0		0xc3
+			MX8MQ_IOMUXC_SD1_DATA1_USDHC1_DATA1		0xc3
+			MX8MQ_IOMUXC_SD1_DATA2_USDHC1_DATA2		0xc3
+			MX8MQ_IOMUXC_SD1_DATA3_USDHC1_DATA3		0xc3
+			MX8MQ_IOMUXC_SD1_DATA4_USDHC1_DATA4		0xc3
+			MX8MQ_IOMUXC_SD1_DATA5_USDHC1_DATA5		0xc3
+			MX8MQ_IOMUXC_SD1_DATA6_USDHC1_DATA6		0xc3
+			MX8MQ_IOMUXC_SD1_DATA7_USDHC1_DATA7		0xc3
+			MX8MQ_IOMUXC_SD1_RESET_B_GPIO2_IO10		0x41
+		>;
+	};
+
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SD2_CLK_USDHC2_CLK			0x03
+			MX8MQ_IOMUXC_SD2_CMD_USDHC2_CMD			0xc3
+			MX8MQ_IOMUXC_SD2_DATA0_USDHC2_DATA0		0xc3
+			MX8MQ_IOMUXC_SD2_DATA1_USDHC2_DATA1		0xc3
+			MX8MQ_IOMUXC_SD2_DATA2_USDHC2_DATA2		0xc3
+			MX8MQ_IOMUXC_SD2_DATA3_USDHC2_DATA3		0xc
+		>;
+	};
+
+	pinctrl_wdog: wdog1grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_GPIO1_IO02_WDOG1_WDOG_B		0xc6
+		>;
+	};
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index dd49537fd560..3f8012c73211 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -583,6 +583,15 @@ config MACH_WEBASTO_CCBV2
 	select ARCH_IMX6UL
 	select ARM_USE_COMPRESSED_DTB
 
+config MACH_MNT_REFORM
+	bool "MNT Reform"
+	select ARCH_IMX8MQ
+	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
+	select FIRMWARE_IMX8MQ_ATF
+	select ARM_SMCCC
+	select MCI_IMX_ESDHC_PBL
+	select I2C_IMX_EARLY
+
 endif
 
 # ----------------------------------------------------------
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 514db326bb8a..b892ec0196c4 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -432,3 +432,9 @@ CFG_start_phytec_phycore_imx8mq.pblb.imximg = $(board)/phytec-som-imx8mq/flash-h
 MAX_PBL_MEMORY_SIZE_start_phytec_phycore_imx8mq = 0x3f000
 FILE_barebox-phytec-phycore-imx8mq.img = start_phytec_phycore_imx8mq.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX8MQ) += barebox-phytec-phycore-imx8mq.img
+
+pblb-$(CONFIG_MACH_MNT_REFORM) += start_mnt_reform
+CFG_start_mnt_reform.pblb.imximg = $(board)/mnt-reform/flash-header-mnt-reform.imxcfg
+MAX_PBL_MEMORY_SIZE_start_mnt_reform = 0x3f000
+FILE_barebox-mnt-reform.img = start_mnt_reform.pblb.imximg
+image-$(CONFIG_MACH_MNT_REFORM) += barebox-mnt-reform.img
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
