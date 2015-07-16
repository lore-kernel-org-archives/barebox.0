Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFesV-0005kW-PQ
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 08:50:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 16 Jul 2015 10:50:28 +0200
Message-Id: <1437036628-29439-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1437036628-29439-1-git-send-email-s.hauer@pengutronix.de>
References: <1437036628-29439-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 11/11] ARM: initial cm-fx6 support
To: Barebox List <barebox@lists.infradead.org>

The cm-fx6 board is a module from Compulab with different i.MX6 SoCs.
This module is also found in the Utilite Mini Computer this patch
also adds support for.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/Makefile                           |   1 +
 arch/arm/boards/cm-fx6/Makefile                    |   3 +
 arch/arm/boards/cm-fx6/board.c                     |  74 ++++
 .../boards/cm-fx6/flash-header-mx6-cm-fx6.imxcfg   |   3 +
 arch/arm/boards/cm-fx6/lowlevel.c                  | 363 ++++++++++++++++
 arch/arm/configs/imx_v7_defconfig                  |   1 +
 arch/arm/dts/Makefile                              |   1 +
 arch/arm/dts/imx6q-cm-fx6.dts                      |  29 ++
 arch/arm/dts/imx6q-cm-fx6.dtsi                     |  99 +++++
 arch/arm/dts/imx6q-utilite.dts                     |  42 ++
 arch/arm/dts/imx6qdl-cm-fx6.dtsi                   | 463 +++++++++++++++++++++
 arch/arm/mach-imx/Kconfig                          |   4 +
 images/Makefile.imx                                |  10 +
 13 files changed, 1093 insertions(+)
 create mode 100644 arch/arm/boards/cm-fx6/Makefile
 create mode 100644 arch/arm/boards/cm-fx6/board.c
 create mode 100644 arch/arm/boards/cm-fx6/flash-header-mx6-cm-fx6.imxcfg
 create mode 100644 arch/arm/boards/cm-fx6/lowlevel.c
 create mode 100644 arch/arm/dts/imx6q-cm-fx6.dts
 create mode 100644 arch/arm/dts/imx6q-cm-fx6.dtsi
 create mode 100644 arch/arm/dts/imx6q-utilite.dts
 create mode 100644 arch/arm/dts/imx6qdl-cm-fx6.dtsi

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index d6fc17c..013229d 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -14,6 +14,7 @@ obj-$(CONFIG_MACH_AT91SAM9X5EK)			+= at91sam9x5ek/
 obj-$(CONFIG_MACH_BEAGLE)			+= beagle/
 obj-$(CONFIG_MACH_BEAGLEBONE)			+= beaglebone/
 obj-$(CONFIG_MACH_CANON_A1100)			+= canon-a1100/
+obj-$(CONFIG_MACH_CM_FX6)			+= cm-fx6/
 obj-$(CONFIG_MACH_NITROGEN6X)			+= boundarydevices-nitrogen6x/
 obj-$(CONFIG_MACH_CCMX51)			+= ccxmx51/
 obj-$(CONFIG_MACH_CFA10036)			+= crystalfontz-cfa10036/
diff --git a/arch/arm/boards/cm-fx6/Makefile b/arch/arm/boards/cm-fx6/Makefile
new file mode 100644
index 0000000..3a773bb
--- /dev/null
+++ b/arch/arm/boards/cm-fx6/Makefile
@@ -0,0 +1,3 @@
+obj-y += board.o
+extra-y += flash-header-mx6-cm-fx6.dcd.S flash-header-mx6-cm-fx6.dcd
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/cm-fx6/board.c b/arch/arm/boards/cm-fx6/board.c
new file mode 100644
index 0000000..a681dea
--- /dev/null
+++ b/arch/arm/boards/cm-fx6/board.c
@@ -0,0 +1,74 @@
+/*
+ * Copyright (C) 2015 Sascha Hauer, Pengutronix
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <environment.h>
+#include <mach/imx6-regs.h>
+#include <mach/bbu.h>
+#include <asm/armlinux.h>
+#include <linux/phy.h>
+#include <mach/generic.h>
+#include <linux/sizes.h>
+#include <mach/imx6.h>
+
+static int phy_fixup(struct phy_device *phydev)
+{
+	unsigned short val;
+
+	/* Ar8031 phy SmartEEE feature cause link status generates glitch,
+	 * which cause ethernet link down/up issue, so disable SmartEEE
+	 */
+	phy_write(phydev, 0xd, 0x3);
+	phy_write(phydev, 0xe, 0x805d);
+	phy_write(phydev, 0xd, 0x4003);
+	val = phy_read(phydev, 0xe);
+	val &= ~(0x1 << 8);
+	phy_write(phydev, 0xe, val);
+
+	/* To enable AR8031 ouput a 125MHz clk from CLK_25M */
+	phy_write(phydev, 0xd, 0x7);
+	phy_write(phydev, 0xe, 0x8016);
+	phy_write(phydev, 0xd, 0x4007);
+
+	val = phy_read(phydev, 0xe);
+	val &= 0xffe3;
+	val |= 0x18;
+	phy_write(phydev, 0xe, val);
+
+	/* introduce tx clock delay */
+	phy_write(phydev, 0x1d, 0x5);
+	val = phy_read(phydev, 0x1e);
+	val |= 0x0100;
+	phy_write(phydev, 0x1e, val);
+
+	return 0;
+}
+
+#define PHY_ID_AR8031	0x004dd074
+
+static int cm_fx6_devices_init(void)
+{
+	if (!of_machine_is_compatible("compulab,cm-fx6"))
+		return 0;
+
+	if (IS_ENABLED(CONFIG_PHYLIB))
+		phy_register_fixup_for_uid(PHY_ID_AR8031, 0xffffffff, phy_fixup);
+
+	imx6_bbu_internal_spi_i2c_register_handler("spiflash", "/dev/m25p0",
+		BBU_HANDLER_FLAG_DEFAULT);
+
+	return 0;
+}
+coredevice_initcall(cm_fx6_devices_init);
diff --git a/arch/arm/boards/cm-fx6/flash-header-mx6-cm-fx6.imxcfg b/arch/arm/boards/cm-fx6/flash-header-mx6-cm-fx6.imxcfg
new file mode 100644
index 0000000..400a870
--- /dev/null
+++ b/arch/arm/boards/cm-fx6/flash-header-mx6-cm-fx6.imxcfg
@@ -0,0 +1,3 @@
+soc imx6
+loadaddr 0x00907000
+dcdofs 0x400
diff --git a/arch/arm/boards/cm-fx6/lowlevel.c b/arch/arm/boards/cm-fx6/lowlevel.c
new file mode 100644
index 0000000..9c5c33c
--- /dev/null
+++ b/arch/arm/boards/cm-fx6/lowlevel.c
@@ -0,0 +1,363 @@
+#define pr_fmt(fmt) "cm-fx6: " fmt
+
+#include <common.h>
+#include <linux/sizes.h>
+#include <mach/generic.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <debug_ll.h>
+#include <io.h>
+#include <mach/imx6-mmdc.h>
+#include <mach/imx6-ddr-regs.h>
+#include <mach/imx6.h>
+#include <mach/xload.h>
+#include <mach/esdctl.h>
+
+enum ddr_config {
+	DDR_16BIT_256MB,
+	DDR_32BIT_512MB,
+	DDR_32BIT_1GB,
+	DDR_64BIT_1GB,
+	DDR_64BIT_2GB,
+	DDR_64BIT_4GB,
+	DDR_UNKNOWN,
+};
+
+static void __udelay(int us)
+{
+	volatile int i;
+
+	for (i = 0; i < us * 1000; i++);
+}
+
+/*
+ * Below DRAM_RESET[DDR_SEL] = 0 which is incorrect according to
+ * Freescale QRM, but this is exactly the value used by the automatic
+ * calibration script and it works also in all our tests, so we leave
+ * it as is at this point.
+ */
+#define CM_FX6_DDR_IOMUX_CFG \
+	.dram_sdqs0	= 0x00000038, \
+	.dram_sdqs1	= 0x00000038, \
+	.dram_sdqs2	= 0x00000038, \
+	.dram_sdqs3	= 0x00000038, \
+	.dram_sdqs4	= 0x00000038, \
+	.dram_sdqs5	= 0x00000038, \
+	.dram_sdqs6	= 0x00000038, \
+	.dram_sdqs7	= 0x00000038, \
+	.dram_dqm0	= 0x00000038, \
+	.dram_dqm1	= 0x00000038, \
+	.dram_dqm2	= 0x00000038, \
+	.dram_dqm3	= 0x00000038, \
+	.dram_dqm4	= 0x00000038, \
+	.dram_dqm5	= 0x00000038, \
+	.dram_dqm6	= 0x00000038, \
+	.dram_dqm7	= 0x00000038, \
+	.dram_cas	= 0x00000038, \
+	.dram_ras	= 0x00000038, \
+	.dram_sdclk_0	= 0x00000038, \
+	.dram_sdclk_1	= 0x00000038, \
+	.dram_sdcke0	= 0x00003000, \
+	.dram_sdcke1	= 0x00003000, \
+	.dram_reset	= 0x00000038, \
+	.dram_sdba2	= 0x00000000, \
+	.dram_sdodt0	= 0x00000038, \
+	.dram_sdodt1	= 0x00000038,
+
+#define CM_FX6_GPR_IOMUX_CFG \
+	.grp_b0ds	= 0x00000038, \
+	.grp_b1ds	= 0x00000038, \
+	.grp_b2ds	= 0x00000038, \
+	.grp_b3ds	= 0x00000038, \
+	.grp_b4ds	= 0x00000038, \
+	.grp_b5ds	= 0x00000038, \
+	.grp_b6ds	= 0x00000038, \
+	.grp_b7ds	= 0x00000038, \
+	.grp_addds	= 0x00000038, \
+	.grp_ddrmode_ctl = 0x00020000, \
+	.grp_ddrpke	= 0x00000000, \
+	.grp_ddrmode	= 0x00020000, \
+	.grp_ctlds	= 0x00000038, \
+	.grp_ddr_type	= 0x000C0000,
+
+static struct mx6sdl_iomux_ddr_regs ddr_iomux_s = { CM_FX6_DDR_IOMUX_CFG };
+static struct mx6sdl_iomux_grp_regs grp_iomux_s = { CM_FX6_GPR_IOMUX_CFG };
+static struct mx6dq_iomux_ddr_regs ddr_iomux_q = { CM_FX6_DDR_IOMUX_CFG };
+static struct mx6dq_iomux_grp_regs grp_iomux_q = { CM_FX6_GPR_IOMUX_CFG };
+
+static struct mx6_mmdc_calibration cm_fx6_calib_s = {
+	.p0_mpwldectrl0	= 0x005B0061,
+	.p0_mpwldectrl1	= 0x004F0055,
+	.p0_mpdgctrl0	= 0x0314030C,
+	.p0_mpdgctrl1	= 0x025C0268,
+	.p0_mprddlctl	= 0x42464646,
+	.p0_mpwrdlctl	= 0x36322C34,
+};
+
+static struct mx6_ddr_sysinfo cm_fx6_sysinfo_s = {
+	.cs1_mirror	= 1,
+	.cs_density	= 16,
+	.bi_on		= 1,
+	.rtt_nom	= 1,
+	.rtt_wr		= 0,
+	.ralat		= 5,
+	.walat		= 1,
+	.mif3_mode	= 3,
+	.rst_to_cke	= 0x23,
+	.sde_to_rst	= 0x10,
+};
+
+static struct mx6_ddr3_cfg cm_fx6_ddr3_cfg_s = {
+	.mem_speed	= 800,
+	.density	= 4,
+	.rowaddr	= 14,
+	.coladdr	= 10,
+	.pagesz		= 2,
+	.trcd		= 1800,
+	.trcmin		= 5200,
+	.trasmin	= 3600,
+	.SRT		= 0,
+};
+
+static void spl_mx6s_dram_init(enum ddr_config dram_config, bool reset)
+{
+	if (reset)
+		((struct mmdc_p_regs *)MX6_MMDC_P0_MDCTL)->mdmisc = 2;
+
+	switch (dram_config) {
+	case DDR_16BIT_256MB:
+		cm_fx6_sysinfo_s.dsize = 0;
+		cm_fx6_sysinfo_s.ncs = 1;
+		break;
+	case DDR_32BIT_512MB:
+		cm_fx6_sysinfo_s.dsize = 1;
+		cm_fx6_sysinfo_s.ncs = 1;
+		break;
+	case DDR_32BIT_1GB:
+		cm_fx6_sysinfo_s.dsize = 1;
+		cm_fx6_sysinfo_s.ncs = 2;
+		break;
+	default:
+		pr_err("Tried to setup invalid DDR configuration\n");
+		hang();
+	}
+
+	mx6_dram_cfg(&cm_fx6_sysinfo_s, &cm_fx6_calib_s, &cm_fx6_ddr3_cfg_s);
+	__udelay(100);
+}
+
+static struct mx6_mmdc_calibration cm_fx6_calib_q = {
+	.p0_mpwldectrl0	= 0x00630068,
+	.p0_mpwldectrl1	= 0x0068005D,
+	.p0_mpdgctrl0	= 0x04140428,
+	.p0_mpdgctrl1	= 0x037C037C,
+	.p0_mprddlctl	= 0x3C30303A,
+	.p0_mpwrdlctl	= 0x3A344038,
+	.p1_mpwldectrl0	= 0x0035004C,
+	.p1_mpwldectrl1	= 0x00170026,
+	.p1_mpdgctrl0	= 0x0374037C,
+	.p1_mpdgctrl1	= 0x0350032C,
+	.p1_mprddlctl	= 0x30322A3C,
+	.p1_mpwrdlctl	= 0x48304A3E,
+};
+
+static struct mx6_ddr_sysinfo cm_fx6_sysinfo_q = {
+	.cs_density	= 16,
+	.cs1_mirror	= 1,
+	.bi_on		= 1,
+	.rtt_nom	= 1,
+	.rtt_wr		= 0,
+	.ralat		= 5,
+	.walat		= 1,
+	.mif3_mode	= 3,
+	.rst_to_cke	= 0x23,
+	.sde_to_rst	= 0x10,
+};
+
+static struct mx6_ddr3_cfg cm_fx6_ddr3_cfg_q = {
+	.mem_speed	= 1066,
+	.density	= 4,
+	.rowaddr	= 14,
+	.coladdr	= 10,
+	.pagesz		= 2,
+	.trcd		= 1324,
+	.trcmin		= 59500,
+	.trasmin	= 9750,
+	.SRT		= 0,
+};
+
+static void spl_mx6q_dram_init(enum ddr_config dram_config, bool reset)
+{
+	if (reset)
+		((struct mmdc_p_regs *)MX6_MMDC_P0_MDCTL)->mdmisc = 2;
+
+	cm_fx6_ddr3_cfg_q.rowaddr = 14;
+	switch (dram_config) {
+	case DDR_16BIT_256MB:
+		cm_fx6_sysinfo_q.dsize = 0;
+		cm_fx6_sysinfo_q.ncs = 1;
+		break;
+	case DDR_32BIT_512MB:
+		cm_fx6_sysinfo_q.dsize = 1;
+		cm_fx6_sysinfo_q.ncs = 1;
+		break;
+	case DDR_64BIT_1GB:
+		cm_fx6_sysinfo_q.dsize = 2;
+		cm_fx6_sysinfo_q.ncs = 1;
+		break;
+	case DDR_64BIT_2GB:
+		cm_fx6_sysinfo_q.dsize = 2;
+		cm_fx6_sysinfo_q.ncs = 2;
+		break;
+	case DDR_64BIT_4GB:
+		cm_fx6_sysinfo_q.dsize = 2;
+		cm_fx6_sysinfo_q.ncs = 2;
+		cm_fx6_ddr3_cfg_q.rowaddr = 15;
+		break;
+	default:
+		pr_err("Tried to setup invalid DDR configuration\n");
+		hang();
+	}
+
+	mx6_dram_cfg(&cm_fx6_sysinfo_q, &cm_fx6_calib_q, &cm_fx6_ddr3_cfg_q);
+	__udelay(100);
+}
+
+static unsigned long cm_fx6_spl_dram_init(void)
+{
+	unsigned long bank1_size, bank2_size;
+	int cpu_type = __imx6_cpu_type();
+
+	if (cpu_type == IMX6_CPUTYPE_IMX6S) {
+		mx6sdl_dram_iocfg(64, &ddr_iomux_s, &grp_iomux_s);
+
+		spl_mx6s_dram_init(DDR_32BIT_1GB, false);
+		bank1_size = get_ram_size((long int *)0x10000000, 0x80000000);
+		bank2_size = get_ram_size((long int *)0x80000000, 0x80000000);
+		if (bank1_size == 0x20000000) {
+			if (bank2_size == 0x20000000)
+				return SZ_1G;
+
+			spl_mx6s_dram_init(DDR_32BIT_512MB, true);
+			return SZ_512M;
+		}
+
+		spl_mx6s_dram_init(DDR_16BIT_256MB, true);
+		bank1_size = get_ram_size((long int *)0x10000000, 0x80000000);
+		if (bank1_size == 0x10000000)
+			return SZ_256M;
+	} else if (cpu_type == IMX6_CPUTYPE_IMX6D || cpu_type == IMX6_CPUTYPE_IMX6Q) {
+		mx6dq_dram_iocfg(64, &ddr_iomux_q, &grp_iomux_q);
+
+		spl_mx6q_dram_init(DDR_64BIT_4GB, false);
+		bank1_size = get_ram_size((long int *)0x10000000, 0x80000000);
+		if (bank1_size == 0x80000000)
+			return SZ_2G;
+
+		if (bank1_size == 0x40000000) {
+			bank2_size = get_ram_size((long int *)0x80000000,
+								0x80000000);
+			if (bank2_size == 0x40000000) {
+				/* Don't do a full reset here */
+				spl_mx6q_dram_init(DDR_64BIT_2GB, false);
+				return SZ_2G;
+			} else {
+				spl_mx6q_dram_init(DDR_64BIT_1GB, true);
+				return SZ_1G;
+			}
+		}
+
+		spl_mx6q_dram_init(DDR_32BIT_512MB, true);
+		bank1_size = get_ram_size((long int *)0x10000000, 0x80000000);
+		if (bank1_size == 0x20000000)
+			return SZ_512M;
+
+		spl_mx6q_dram_init(DDR_16BIT_256MB, true);
+		bank1_size = get_ram_size((long int *)0x10000000, 0x80000000);
+		if (bank1_size == 0x10000000)
+			return SZ_256M;
+	}
+
+	return 0;
+}
+
+static inline void setup_uart(void)
+{
+	void __iomem *iomuxbase = (void *)MX6_IOMUXC_BASE_ADDR;
+
+	writel(0x4, iomuxbase + 0x01f8);
+
+	imx6_ungate_all_peripherals();
+	imx6_uart_setup_ll();
+
+	putc_ll('>');
+}
+
+static void cm_fx6_sdram_init(void)
+{
+	unsigned long sdram_size;
+
+	if (get_pc() > 0x10000000)
+		return;
+
+	sdram_size = cm_fx6_spl_dram_init();
+
+	pr_debug("SDRAM init finished. SDRAM size 0x%08lx\n", sdram_size);
+
+	imx6_spi_start_image(0);
+}
+
+extern char __dtb_imx6q_cm_fx6_start[];
+extern char __dtb_imx6dl_cm_fx6_start[];
+
+static noinline void cm_fx6_start(void)
+{
+	int cpu_type = __imx6_cpu_type();
+
+	cm_fx6_sdram_init();
+
+	if (cpu_type == IMX6_CPUTYPE_IMX6S)
+		imx6q_barebox_entry(__dtb_imx6dl_cm_fx6_start);
+	else
+		imx6q_barebox_entry(__dtb_imx6q_cm_fx6_start);
+}
+
+ENTRY_FUNCTION(start_imx6_cm_fx6, r0, r1, r2)
+{
+	arm_cpu_lowlevel_init();
+
+	setup_uart();
+	relocate_to_current_adr();
+	setup_c();
+	barrier();
+
+	cm_fx6_start();
+}
+
+extern char __dtb_imx6q_utilite_start[];
+extern char __dtb_imx6dl_utilite_value_start[];
+
+static noinline void utilite_start(void)
+{
+	int cpu_type = __imx6_cpu_type();
+
+	cm_fx6_sdram_init();
+
+	if (cpu_type == IMX6_CPUTYPE_IMX6S)
+		/* FIXME: This needs a specialized utilite value dts */
+		imx6q_barebox_entry(__dtb_imx6dl_cm_fx6_start);
+	else
+		imx6q_barebox_entry(__dtb_imx6q_utilite_start);
+}
+
+ENTRY_FUNCTION(start_imx6_utilite, r0, r1, r2)
+{
+	arm_cpu_lowlevel_init();
+
+	setup_uart();
+	relocate_to_current_adr();
+	setup_c();
+	barrier();
+
+	utilite_start();
+}
diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index 7dd6e6f..ec91460 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -24,6 +24,7 @@ CONFIG_MACH_EMBEST_RIOTBOARD=y
 CONFIG_MACH_UDOO=y
 CONFIG_MACH_VARISCITE_MX6=y
 CONFIG_MACH_GW_VENTANA=y
+CONFIG_MACH_CM_FX6=y
 CONFIG_IMX_IIM=y
 CONFIG_IMX_IIM_FUSE_BLOW=y
 CONFIG_IMX_OCOTP=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 06c29c8..c072616 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -9,6 +9,7 @@ obj- += dummy.o
 
 pbl-dtb-$(CONFIG_MACH_AFI_GF) += am335x-afi-gf.dtb.o
 pbl-dtb-$(CONFIG_MACH_BEAGLEBONE) += am335x-bone.dtb.o am335x-boneblack.dtb.o am335x-bone-common.dtb.o
+pbl-dtb-$(CONFIG_MACH_CM_FX6) += imx6dl-cm-fx6.dtb.o imx6q-cm-fx6.dtb.o imx6q-utilite.dtb.o
 pbl-dtb-$(CONFIG_MACH_DFI_FS700_M60) += imx6q-dfi-fs700-m60-6q.dtb.o imx6dl-dfi-fs700-m60-6s.dtb.o
 pbl-dtb-$(CONFIG_MACH_DUCKBILL) += imx28-duckbill.dtb.o
 pbl-dtb-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK) += imx51-genesi-efika-sb.dtb.o
diff --git a/arch/arm/dts/imx6q-cm-fx6.dts b/arch/arm/dts/imx6q-cm-fx6.dts
new file mode 100644
index 0000000..5f01e34
--- /dev/null
+++ b/arch/arm/dts/imx6q-cm-fx6.dts
@@ -0,0 +1,29 @@
+/*
+ * Copyright 2014 CompuLab Ltd.
+ *
+ * Author: Valentin Raevsky <valentin@compulab.co.il>
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+/dts-v1/;
+#include <arm/imx6q.dtsi>
+#include "imx6q-cm-fx6.dtsi"
+
+/ {
+	model = "CompuLab CM-FX6";
+	compatible = "compulab,cm-fx6", "fsl,imx6q";
+
+	chosen {
+		stdout-path = &uart4;
+	};
+};
+
+&sata {
+	status = "okay";
+};
diff --git a/arch/arm/dts/imx6q-cm-fx6.dtsi b/arch/arm/dts/imx6q-cm-fx6.dtsi
new file mode 100644
index 0000000..b53efdd
--- /dev/null
+++ b/arch/arm/dts/imx6q-cm-fx6.dtsi
@@ -0,0 +1,99 @@
+/*
+ * Copyright 2014 CompuLab Ltd.
+ *
+ * Author: Valentin Raevsky <valentin@compulab.co.il>
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+#include "imx6qdl-cm-fx6.dtsi"
+
+/ {
+	regulators {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		reg_sata_ldo_en: sata_ldo_en {
+			compatible = "regulator-fixed";
+			regulator-name = "cm_fx6_sata_ldo_en";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			gpio = <&gpio2 16 0>;
+			startup-delay-us = <100>;
+			regulator-boot-on;
+			enable-active-high;
+		};
+
+		reg_sata_phy_slp: sata_phy_slp {
+			compatible = "regulator-fixed";
+			regulator-name = "cm_fx6_sata_phy_slp";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			gpio = <&gpio3 23 0>;
+			startup-delay-us = <100>;
+			enable-active-high;
+			regulator-boot-on;
+			vin-supply = <&reg_sata_ldo_en>;
+		};
+
+		reg_sata_nrstdly: sata_nrstdly {
+			compatible = "regulator-fixed";
+			regulator-name = "cm_fx6_sata_nrstdly";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			gpio = <&gpio6 6 0>;
+			startup-delay-us = <100>;
+			enable-active-high;
+			regulator-boot-on;
+			vin-supply = <&reg_sata_phy_slp>;
+		};
+
+		reg_sata_pwren: sata_pwren {
+			compatible = "regulator-fixed";
+			regulator-name = "cm_fx6_sata_pwren";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			gpio = <&gpio1 28 0>;
+			startup-delay-us = <100>;
+			enable-active-high;
+			regulator-boot-on;
+			vin-supply = <&reg_sata_nrstdly>;
+		};
+
+		reg_sata_nstandby1: sata_nstandby1 {
+			compatible = "regulator-fixed";
+			regulator-name = "cm_fx6_sata_nstandby1";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			gpio = <&gpio3 20 0>;
+			startup-delay-us = <100>;
+			enable-active-high;
+			regulator-boot-on;
+			vin-supply = <&reg_sata_pwren>;
+		};
+
+		reg_sata_nstandby2: sata_nstandby2 {
+			compatible = "regulator-fixed";
+			regulator-name = "cm_fx6_sata_nstandby2";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			gpio = <&gpio5 2 0>;
+			startup-delay-us = <100>;
+			enable-active-high;
+			regulator-boot-on;
+			vin-supply = <&reg_sata_nstandby1>;
+		};
+
+	};
+};
+
+/* sata */
+&sata {
+	status = "okay";
+};
diff --git a/arch/arm/dts/imx6q-utilite.dts b/arch/arm/dts/imx6q-utilite.dts
new file mode 100644
index 0000000..f7ee57c
--- /dev/null
+++ b/arch/arm/dts/imx6q-utilite.dts
@@ -0,0 +1,42 @@
+/dts-v1/;
+#include <arm/imx6q.dtsi>
+#include "imx6q-cm-fx6.dtsi"
+
+/ {
+	model = "CompuLab Utilite";
+	compatible = "compulab,utilite", "compulab,cm-fx6", "fsl,imx6q";
+
+	chosen {
+		stdout-path = &uart4;
+	};
+};
+
+&iomuxc {
+	pinctrl_usdhc3: usdhc3grp {
+		fsl,pins = <
+			MX6QDL_PAD_SD3_CMD__SD3_CMD             0x17059
+			MX6QDL_PAD_SD3_CLK__SD3_CLK             0x10059
+			MX6QDL_PAD_SD3_DAT0__SD3_DATA0          0x17059
+			MX6QDL_PAD_SD3_DAT1__SD3_DATA1          0x17059
+			MX6QDL_PAD_SD3_DAT2__SD3_DATA2          0x17059
+			MX6QDL_PAD_SD3_DAT3__SD3_DATA3          0x17059
+		>;
+	};
+};
+
+&usdhc3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc3>;
+	status = "okay";
+};
+
+&hdmi {
+	status = "okay";
+	ddc-i2c-bus = <&i2c2>;
+};
+
+&i2c2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	status = "okay";
+};
diff --git a/arch/arm/dts/imx6qdl-cm-fx6.dtsi b/arch/arm/dts/imx6qdl-cm-fx6.dtsi
new file mode 100644
index 0000000..5b9b2c3
--- /dev/null
+++ b/arch/arm/dts/imx6qdl-cm-fx6.dtsi
@@ -0,0 +1,463 @@
+/*
+ * Copyright 2014 CompuLab Ltd.
+ *
+ * Author: Valentin Raevsky <valentin@compulab.co.il>
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+/ {
+	barebox_environment {
+		compatible = "barebox,environment";
+		device-path = &barebox_env;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		heartbeat-led {
+			label = "Heartbeat";
+			gpios = <&gpio2 31 0>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+
+	/* regulator for usb otg */
+	reg_usb_otg_vbus: usb_otg_vbus {
+		compatible = "regulator-fixed";
+		regulator-name = "usb_otg_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio3 22 0>;
+		enable-active-high;
+	};
+
+	/* regulator1 for pcie power-on-gpio */
+	pcie_power_on_gpio: regulator-pcie-power-on-gpio {
+		compatible = "regulator-fixed";
+		regulator-name = "regulator-pcie-power-on-gpio";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio2 24 0>;
+		enable-active-high;
+	};
+
+	/* regulator for usb hub1 */
+	reg_usb_h1_vbus: usb_h1_vbus {
+		compatible = "regulator-fixed";
+		regulator-name = "usb_h1_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio7 8 0>;
+		enable-active-high;
+	};
+
+	/* regulator1 for wifi/bt */
+	awnh387_npoweron: regulator-awnh387-npoweron {
+		compatible = "regulator-fixed";
+		regulator-name = "regulator-awnh387-npoweron";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio7 12 0>;
+		enable-active-high;
+	};
+
+	/* regulator2 for wifi/bt */
+	awnh387_wifi_nreset: regulator-awnh387-wifi-nreset {
+		compatible = "regulator-fixed";
+		regulator-name = "regulator-awnh387-wifi-nreset";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio6 16 0>;
+		startup-delay-us = <10000>;
+	};
+
+	tsc2046reg: tsc2046-reg {
+		compatible = "regulator-fixed";
+		regulator-name = "tsc2046-reg";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	hog {
+		pinctrl_hog: hoggrp {
+			fsl,pins = <
+				/* SATA PWR */
+				MX6QDL_PAD_ENET_TX_EN__GPIO1_IO28 0x80000000
+				MX6QDL_PAD_EIM_A22__GPIO2_IO16 0x80000000
+				MX6QDL_PAD_EIM_D20__GPIO3_IO20 0x80000000
+				MX6QDL_PAD_EIM_A25__GPIO5_IO02 0x80000000
+				/* SATA CTRL */
+				MX6QDL_PAD_ENET_TXD0__GPIO1_IO30 0x80000000
+				MX6QDL_PAD_EIM_D29__GPIO3_IO29 0x80000000
+				MX6QDL_PAD_EIM_A23__GPIO6_IO06 0x80000000
+				MX6QDL_PAD_EIM_D23__GPIO3_IO23 0x80000000
+				/* POWER_BUTTON */
+				MX6QDL_PAD_ENET_TXD1__GPIO1_IO29 0x80000000
+			>;
+		};
+	};
+
+	imx6q-cm-fx6 {
+		/* pins for eth0 */
+		pinctrl_enet: enetgrp {
+			fsl,pins = <
+				MX6QDL_PAD_RGMII_RXC__RGMII_RXC      0x1b0b0
+				MX6QDL_PAD_RGMII_RD0__RGMII_RD0      0x1b0b0
+				MX6QDL_PAD_RGMII_RD1__RGMII_RD1      0x1b0b0
+				MX6QDL_PAD_RGMII_RD2__RGMII_RD2      0x1b0b0
+				MX6QDL_PAD_RGMII_RD3__RGMII_RD3      0x1b0b0
+				MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL   0x1b0b0
+				MX6QDL_PAD_RGMII_TXC__RGMII_TXC      0x1b0b0
+				MX6QDL_PAD_RGMII_TD0__RGMII_TD0      0x1b0b0
+				MX6QDL_PAD_RGMII_TD1__RGMII_TD1      0x1b0b0
+				MX6QDL_PAD_RGMII_TD2__RGMII_TD2      0x1b0b0
+				MX6QDL_PAD_RGMII_TD3__RGMII_TD3      0x1b0b0
+				MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL   0x1b0b0
+				MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK   0x1b0b0
+				MX6QDL_PAD_ENET_MDIO__ENET_MDIO      0x1b0b0
+				MX6QDL_PAD_ENET_MDC__ENET_MDC      0x1b0b0
+			>;
+		};
+
+		pinctrl_ipu1_lcd: ipu1grp-lcd {
+			fsl,pins = <
+				MX6QDL_PAD_DI0_DISP_CLK__IPU1_DI0_DISP_CLK 0x38
+				MX6QDL_PAD_DI0_PIN15__IPU1_DI0_PIN15       0x38
+				MX6QDL_PAD_DI0_PIN2__IPU1_DI0_PIN02        0x38
+				MX6QDL_PAD_DI0_PIN3__IPU1_DI0_PIN03        0x38
+				MX6QDL_PAD_DI0_PIN4__IPU1_DI0_PIN04        0x80000028
+				MX6QDL_PAD_DISP0_DAT0__IPU1_DISP0_DATA00   0x38
+				MX6QDL_PAD_DISP0_DAT1__IPU1_DISP0_DATA01   0x38
+				MX6QDL_PAD_DISP0_DAT2__IPU1_DISP0_DATA02   0x38
+				MX6QDL_PAD_DISP0_DAT3__IPU1_DISP0_DATA03   0x38
+				MX6QDL_PAD_DISP0_DAT4__IPU1_DISP0_DATA04   0x38
+				MX6QDL_PAD_DISP0_DAT5__IPU1_DISP0_DATA05   0x38
+				MX6QDL_PAD_DISP0_DAT6__IPU1_DISP0_DATA06   0x38
+				MX6QDL_PAD_DISP0_DAT7__IPU1_DISP0_DATA07   0x38
+				MX6QDL_PAD_DISP0_DAT8__IPU1_DISP0_DATA08   0x38
+				MX6QDL_PAD_DISP0_DAT9__IPU1_DISP0_DATA09   0x38
+				MX6QDL_PAD_DISP0_DAT10__IPU1_DISP0_DATA10  0x38
+				MX6QDL_PAD_DISP0_DAT11__IPU1_DISP0_DATA11  0x38
+				MX6QDL_PAD_DISP0_DAT12__IPU1_DISP0_DATA12  0x38
+				MX6QDL_PAD_DISP0_DAT13__IPU1_DISP0_DATA13  0x38
+				MX6QDL_PAD_DISP0_DAT14__IPU1_DISP0_DATA14  0x38
+				MX6QDL_PAD_DISP0_DAT15__IPU1_DISP0_DATA15  0x38
+				MX6QDL_PAD_DISP0_DAT16__IPU1_DISP0_DATA16  0x38
+				MX6QDL_PAD_DISP0_DAT17__IPU1_DISP0_DATA17  0x38
+				MX6QDL_PAD_DISP0_DAT18__IPU1_DISP0_DATA18  0x38
+				MX6QDL_PAD_DISP0_DAT19__IPU1_DISP0_DATA19  0x38
+				MX6QDL_PAD_DISP0_DAT20__IPU1_DISP0_DATA20  0x38
+				MX6QDL_PAD_DISP0_DAT21__IPU1_DISP0_DATA21  0x38
+				MX6QDL_PAD_DISP0_DAT22__IPU1_DISP0_DATA22  0x38
+				MX6QDL_PAD_DISP0_DAT23__IPU1_DISP0_DATA23  0x38
+			>;
+		};
+
+		/* pins for spi */
+		pinctrl_ecspi1: ecspi1grp {
+			fsl,pins = <
+				MX6QDL_PAD_EIM_D16__ECSPI1_SCLK      0x100b1
+				MX6QDL_PAD_EIM_D17__ECSPI1_MISO      0x100b1
+				MX6QDL_PAD_EIM_D18__ECSPI1_MOSI      0x100b1
+				MX6QDL_PAD_EIM_EB2__GPIO2_IO30      0x100b1
+				MX6QDL_PAD_EIM_D19__GPIO3_IO19      0x100b1
+			>;
+		};
+
+		/* pins for nand */
+		pinctrl_gpmi_nand: gpminandgrp {
+			fsl,pins = <
+				MX6QDL_PAD_NANDF_CLE__NAND_CLE      0xb0b1
+				MX6QDL_PAD_NANDF_ALE__NAND_ALE      0xb0b1
+				MX6QDL_PAD_NANDF_WP_B__NAND_WP_B   0xb0b1
+				MX6QDL_PAD_NANDF_RB0__NAND_READY_B   0xb000
+				MX6QDL_PAD_NANDF_CS0__NAND_CE0_B   0xb0b1
+				MX6QDL_PAD_NANDF_CS1__NAND_CE1_B   0xb0b1
+				MX6QDL_PAD_SD4_CMD__NAND_RE_B      0xb0b1
+				MX6QDL_PAD_SD4_CLK__NAND_WE_B      0xb0b1
+				MX6QDL_PAD_NANDF_D0__NAND_DATA00   0xb0b1
+				MX6QDL_PAD_NANDF_D1__NAND_DATA01   0xb0b1
+				MX6QDL_PAD_NANDF_D2__NAND_DATA02   0xb0b1
+				MX6QDL_PAD_NANDF_D3__NAND_DATA03   0xb0b1
+				MX6QDL_PAD_NANDF_D4__NAND_DATA04   0xb0b1
+				MX6QDL_PAD_NANDF_D5__NAND_DATA05   0xb0b1
+				MX6QDL_PAD_NANDF_D6__NAND_DATA06   0xb0b1
+				MX6QDL_PAD_NANDF_D7__NAND_DATA07   0xb0b1
+				MX6QDL_PAD_SD4_DAT0__NAND_DQS      0x00b1
+			>;
+		};
+
+		/* pins for i2c2 */
+		pinctrl_i2c2: i2c2grp {
+			fsl,pins = <
+				MX6QDL_PAD_KEY_COL3__I2C2_SCL 0x4001b8b1
+				MX6QDL_PAD_KEY_ROW3__I2C2_SDA 0x4001b8b1
+			>;
+		};
+
+		/* pins for i2c3 */
+		pinctrl_i2c3: i2c3grp {
+			fsl,pins = <
+				MX6QDL_PAD_GPIO_3__I2C3_SCL 0x4001b8b1
+				MX6QDL_PAD_GPIO_6__I2C3_SDA 0x4001b8b1
+			>;
+		};
+
+		/* pins for console */
+		pinctrl_uart4: uart4grp {
+			fsl,pins = <
+				MX6QDL_PAD_KEY_COL0__UART4_TX_DATA   0x1b0b1
+				MX6QDL_PAD_KEY_ROW0__UART4_RX_DATA   0x1b0b1
+			>;
+		};
+
+		/* pins for usb hub1 */
+		pinctrl_usbh1: usbh1grp {
+			fsl,pins = <
+				MX6QDL_PAD_SD3_RST__GPIO7_IO08 0x80000000
+			>;
+		};
+
+		/* pins for usb otg */
+		pinctrl_usbotg: usbotggrp {
+			fsl,pins = <
+				MX6QDL_PAD_ENET_RX_ER__USB_OTG_ID 0x17059
+				MX6QDL_PAD_EIM_D22__GPIO3_IO22 0x80000000
+			>;
+		};
+
+		/* pins for wifi/bt */
+		pinctrl_usdhc1: usdhc1grp {
+			fsl,pins = <
+				MX6QDL_PAD_SD1_CMD__SD1_CMD    0x17071
+				MX6QDL_PAD_SD1_CLK__SD1_CLK    0x10071
+				MX6QDL_PAD_SD1_DAT0__SD1_DATA0 0x17071
+				MX6QDL_PAD_SD1_DAT1__SD1_DATA1 0x17071
+				MX6QDL_PAD_SD1_DAT2__SD1_DATA2 0x17071
+				MX6QDL_PAD_SD1_DAT3__SD1_DATA3 0x17071
+			>;
+		};
+
+		/* pins for wifi/bt */
+		pinctrl_mrvl1: mrvl1grp {
+			fsl,pins = <
+				/* WIFI_PWR_RST */
+				MX6QDL_PAD_GPIO_17__GPIO7_IO12	0x80000000
+				MX6QDL_PAD_NANDF_CS3__GPIO6_IO16 0x80000000
+			>;
+		};
+
+		/* pins for tsc2046 pendown */
+		pinctrl_tsc2046: tsc2046grp {
+			fsl,pins = <
+				 /* tsc2046 PENDOWN */
+				MX6QDL_PAD_SD4_DAT7__GPIO2_IO15 0x80000000
+			>;
+		};
+
+		/* pins for pcie */
+		pinctrl_pcie: pciegrp {
+			fsl,pins = <
+				MX6QDL_PAD_ENET_RXD1__GPIO1_IO26 0x80000000
+				MX6QDL_PAD_EIM_CS1__GPIO2_IO24 0x80000000
+			>;
+		};
+
+		/* pins for spdif */
+		pinctrl_spdif: spdifgrp {
+			fsl,pins = <
+				MX6QDL_PAD_GPIO_16__SPDIF_IN  0x1b0b0
+				MX6QDL_PAD_GPIO_19__SPDIF_OUT 0x1b0b0
+			>;
+		};
+
+		/* pins for audmux */
+		pinctrl_audmux: audmuxgrp {
+			fsl,pins = <
+				MX6QDL_PAD_SD2_CMD__AUD4_RXC   0x17059
+				MX6QDL_PAD_SD2_DAT0__AUD4_RXD  0x17059
+				MX6QDL_PAD_SD2_DAT3__AUD4_TXC  0x17059
+				MX6QDL_PAD_SD2_DAT2__AUD4_TXD  0x17059
+				MX6QDL_PAD_SD2_DAT1__AUD4_TXFS 0x17059
+				/* master mode pin */
+				MX6QDL_PAD_GPIO_5__CCM_CLKO1	0x17059
+			>;
+		};
+	};
+};
+
+/* spi */
+&ecspi1 {
+	fsl,spi-num-chipselects = <2>;
+	cs-gpios = <&gpio2 30 0>, <&gpio3 19 0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi1>;
+	status = "okay";
+
+	flash: m25p80@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "st,m25px16", "st,m25p";
+		spi-max-frequency = <20000000>;
+		reg = <0>;
+
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0x100000>;
+		};
+
+		barebox_env: partition@100000 {
+			label = "barebox-environment";
+			reg = <0x100000 0x40000>;
+		};
+
+		partition@140000 {
+			label = "reserved";
+			reg = <0x140000 0x0>;
+		};
+	};
+
+	/* touch controller */
+	touch:	tsc2046@1 {
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_tsc2046>;
+
+		compatible = "ti,tsc2046";
+		vcc-supply = <&tsc2046reg>;
+
+		reg = <1>;	/* CS1 */
+		spi-max-frequency = <1500000>;
+
+		interrupt-parent = <&gpio2>;
+		interrupts = <15 0>;
+		pendown-gpio = <&gpio2 15 0>;
+
+		ti,x-min = /bits/ 16 <0x0>;
+		ti,x-max = /bits/ 16 <0x0fff>;
+		ti,y-min = /bits/ 16 <0x0>;
+		ti,y-max = /bits/ 16 <0x0fff>;
+
+		ti,x-plate-ohms = /bits/ 16 <180>;
+		ti,pressure-max = /bits/ 16 <255>;
+
+		ti,debounce-max = /bits/ 16 <30>;
+		ti,debounce-tol = /bits/ 16 <10>;
+		ti,debounce-rep = /bits/ 16 <1>;
+
+		linux,wakeup;
+	};
+};
+
+/* eth0 */
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet>;
+	phy-mode = "rgmii";
+	status = "okay";
+};
+
+/* nand */
+&gpmi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpmi_nand>;
+	status = "okay";
+
+	partition@0 {
+		label = "linux";
+		reg = <0x0 0x800000>;
+	};
+
+	partition@800000 {
+		label = "rootfs";
+		reg = < 0x800000 0x0>;
+	};
+};
+
+/* i2c3 */
+&i2c3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c3>;
+	status = "okay";
+
+	eeprom@50 {
+		compatible = "at24,24c02";
+		reg = <0x50>;
+		pagesize = <16>;
+	};
+
+	codec: wm8731@1a {
+		compatible = "wlf,wm8731";
+		reg = <0x1a>;
+		clocks = <&clks 173>, <&clks 158>, <&clks 201>, <&clks 200>;
+		clock-names = "pll4", "imx-ssi.1", "cko", "cko2";
+	};
+};
+
+&pcie {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pcie>;
+	reset-gpio = <&gpio1 26 0>;
+	vdd-supply = <&pcie_power_on_gpio>;
+	status = "okay";
+};
+
+/* console */
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart4>;
+	status = "okay";
+};
+
+/* usb otg */
+&usbotg {
+	vbus-supply = <&reg_usb_otg_vbus>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usbotg>;
+	dr_mode = "otg";
+	status = "okay";
+};
+
+/* usb hub1 */
+&usbh1 {
+	vbus-supply = <&reg_usb_h1_vbus>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usbh1>;
+	status = "okay";
+};
+
+/* wifi/bt */
+&usdhc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc1>, <&pinctrl_mrvl1>;
+	non-removable;
+	vmmc-supply = <&awnh387_npoweron>;
+	vmmc_aux-supply = <&awnh387_wifi_nreset>;
+	status = "okay";
+};
+
+&ssi2 {
+	fsl,mode = "i2s-master";
+	status = "okay";
+};
+
+&spdif {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_spdif>;
+	status = "okay";
+};
+
+&audmux {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_audmux>;
+	status = "okay";
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index f8f6004..f643948 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -344,6 +344,10 @@ config MACH_GW_VENTANA
 	select I2C
 	select I2C_IMX
 
+config MACH_CM_FX6
+	bool "CM FX6"
+	select ARCH_IMX6
+
 endif
 
 # ----------------------------------------------------------
diff --git a/images/Makefile.imx b/images/Makefile.imx
index cdbae8c..78895f9 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -227,6 +227,16 @@ CFG_start_imx6_udoo.pblx.imximg = $(board)/udoo/flash-header-mx6-udoo.imxcfg
 FILE_barebox-udoo-imx6q.img = start_imx6_udoo.pblx.imximg
 image-$(CONFIG_MACH_UDOO) += barebox-udoo-imx6q.img
 
+pblx-$(CONFIG_MACH_CM_FX6) += start_imx6_cm_fx6
+CFG_start_imx6_cm_fx6.imx-sram-img = $(board)/cm-fx6/flash-header-mx6-cm-fx6.imxcfg
+FILE_barebox-cm-fx6.img = start_imx6_cm_fx6.imx-sram-img
+image-$(CONFIG_MACH_CM_FX6) += barebox-cm-fx6.img
+
+pblx-$(CONFIG_MACH_CM_FX6) += start_imx6_utilite
+CFG_start_imx6_utilite.imx-sram-img = $(board)/cm-fx6/flash-header-mx6-cm-fx6.imxcfg
+FILE_barebox-utilite.img = start_imx6_utilite.imx-sram-img
+image-$(CONFIG_MACH_CM_FX6) += barebox-utilite.img
+
 pblx-$(CONFIG_MACH_VARISCITE_MX6) += start_variscite_custom
 CFG_start_variscite_custom.pblx.imximg = $(board)/variscite-mx6/flash-header-variscite.imxcfg
 FILE_barebox-variscite-custom.img = start_variscite_custom.pblx.imximg
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
