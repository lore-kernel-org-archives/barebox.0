Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og119.obsmtp.com ([64.18.0.189])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOA6F-0001cy-As
 for barebox@lists.infradead.org; Thu, 13 Mar 2014 18:11:28 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Thu, 13 Mar 2014 18:10:01 +0000
Message-Id: <1394734204-8181-5-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1394734204-8181-1-git-send-email-renaud.barbier@ge.com>
References: <1394734204-8181-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 4/6] ppc: add Freescale P1022DS board support
To: barebox@lists.infradead.org

Add support for the Freescale P1022DS. Driver support is limited to:
 - I2C
 - Ethernet
 - Serial
 - NOR flash
 - PIXIS FPGA

System clock configuration is read from the FPGA but has only been
tested using a 133MHz system clock and 100MHz DDR clock.

Boot arguments are defined in the environment to boot over NFS with
a console configured at 115200 bauds.

Enabling branch prediction is moved from board support to the platform
support for all boards as it is a CPU feature.

Some the code is from U-Boot version git-be937b5.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/boards/freescale-p1022ds/Makefile     |   5 +
 arch/ppc/boards/freescale-p1022ds/config.h     |  55 ++++++++
 arch/ppc/boards/freescale-p1022ds/ddr.c        | 126 +++++++++++++++++
 arch/ppc/boards/freescale-p1022ds/env/bin/init |   2 +
 arch/ppc/boards/freescale-p1022ds/env/config   |   2 +
 arch/ppc/boards/freescale-p1022ds/ics307_clk.c |  46 +++++++
 arch/ppc/boards/freescale-p1022ds/law.c        |  27 ++++
 arch/ppc/boards/freescale-p1022ds/p1022ds.c    | 181 +++++++++++++++++++++++++
 arch/ppc/boards/freescale-p1022ds/p1022ds.h    |  14 ++
 arch/ppc/boards/freescale-p1022ds/tlb.c        |  59 ++++++++
 arch/ppc/boards/freescale-p2020rdb/config.h    |   2 -
 arch/ppc/boards/geip-da923rc/config.h          |   1 -
 arch/ppc/configs/p1022ds_defconfig             |  53 ++++++++
 arch/ppc/cpu-85xx/start.S                      |   2 +-
 arch/ppc/mach-mpc85xx/Kconfig                  |   4 +
 15 files changed, 575 insertions(+), 4 deletions(-)
 create mode 100644 arch/ppc/boards/freescale-p1022ds/Makefile
 create mode 100644 arch/ppc/boards/freescale-p1022ds/config.h
 create mode 100644 arch/ppc/boards/freescale-p1022ds/ddr.c
 create mode 100644 arch/ppc/boards/freescale-p1022ds/env/bin/init
 create mode 100644 arch/ppc/boards/freescale-p1022ds/env/config
 create mode 100644 arch/ppc/boards/freescale-p1022ds/ics307_clk.c
 create mode 100644 arch/ppc/boards/freescale-p1022ds/law.c
 create mode 100644 arch/ppc/boards/freescale-p1022ds/p1022ds.c
 create mode 100644 arch/ppc/boards/freescale-p1022ds/p1022ds.h
 create mode 100644 arch/ppc/boards/freescale-p1022ds/tlb.c
 create mode 100644 arch/ppc/configs/p1022ds_defconfig

diff --git a/arch/ppc/boards/freescale-p1022ds/Makefile b/arch/ppc/boards/freescale-p1022ds/Makefile
new file mode 100644
index 0000000..e9b59d5
--- /dev/null
+++ b/arch/ppc/boards/freescale-p1022ds/Makefile
@@ -0,0 +1,5 @@
+obj-y	+= p1022ds.o
+obj-y	+= law.o
+obj-y	+= tlb.o
+obj-y	+= ddr.o
+obj-y	+= ics307_clk.o
diff --git a/arch/ppc/boards/freescale-p1022ds/config.h b/arch/ppc/boards/freescale-p1022ds/config.h
new file mode 100644
index 0000000..666b9ff
--- /dev/null
+++ b/arch/ppc/boards/freescale-p1022ds/config.h
@@ -0,0 +1,55 @@
+/*
+ * Copyright 2009-2011 Freescale Semiconductor, Inc.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.See the
+ * GNU General Public License for more details.
+ */
+
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#ifndef __ASSEMBLY__
+extern unsigned long ics307_clk_freq(unsigned int reg);
+#endif
+#define CFG_SYS_CLK_FREQ	ics307_clk_freq(25)
+#define CFG_DDR_CLK_FREQ	ics307_clk_freq(28)
+
+#define CFG_CHIP_SELECTS_PER_CTRL	 2
+
+/*
+ * Memory map
+ *
+ * 0x0000_0000	0x7fff_ffff	DDR		2G cacheable
+ *
+ * Localbus non-cacheable
+ * 0xe800_0000	0xefff_ffff	FLASH		128M non-cacheable
+ * 0xffdf_0000	0xffdf_0fff	PIXIS		4K Cacheable
+ * 0xffd0_0000	0xffd0_3fff	L1 for stack	16K Cacheable TLB0
+ */
+#define CFG_SDRAM_BASE		0x00000000
+
+#define CFG_CCSRBAR_DEFAULT	0xff700000
+#define CFG_CCSRBAR		0xffe00000
+#define CFG_CCSRBAR_PHYS	CFG_CCSRBAR
+#define CFG_IMMR		CFG_CCSRBAR
+
+#define CFG_INIT_RAM_ADDR	0xffd00000
+#define CFG_INIT_RAM_SIZE	0x00004000
+#define CFG_INIT_BI_SIZE	0x00000100
+#define CFG_INIT_SP_OFFSET	(CFG_INIT_RAM_SIZE - CFG_INIT_BI_SIZE)
+
+#define CFG_BOOT_BLOCK		0xe0000000
+#define CFG_BOOT_BLOCK_PHYS	CFG_BOOT_BLOCK
+#define CFG_FLASH_BASE		0xe8000000
+#define CFG_FLASH_BASE_PHYS	CFG_FLASH_BASE
+#define CFG_PIXIS_BASE		0xffdf0000
+#define CFG_PIXIS_BASE_PHYS	CFG_PIXIS_BASE
+
+#endif /* __CONFIG_H */
diff --git a/arch/ppc/boards/freescale-p1022ds/ddr.c b/arch/ppc/boards/freescale-p1022ds/ddr.c
new file mode 100644
index 0000000..1944518
--- /dev/null
+++ b/arch/ppc/boards/freescale-p1022ds/ddr.c
@@ -0,0 +1,126 @@
+/*
+ * Copyright 2010 Freescale Semiconductor, Inc.
+ * Authors: Srikanth Srinivasan <srikanth.srinivasan@freescale.com>
+ *          Timur Tabi <timur@freescale.com>
+ *
+ * SPDX-License-Identifier:	GPL-2.0+
+ */
+
+#include <common.h>
+#include <init.h>
+#include <mach/fsl_i2c.h>
+#include <mach/immap_85xx.h>
+#include <mach/clock.h>
+#include <asm/io.h>
+#include <asm/fsl_lbc.h>
+#include <asm/fsl_ddr_sdram.h>
+#include <asm/fsl_ddr_dimm_params.h>
+#include "p1022ds.h"
+
+static const u8 spd_addr = 0x51;
+
+int fsl_ddr_board_info(struct ddr_board_info_s *info)
+{
+	/*
+	 * Early mapping is needed to access the clock
+	 * parameters in the FPGA.
+	 */
+	p1022ds_lbc_early_init();
+
+	info->fsl_ddr_ver = 0;
+	info->ddr_base = IOMEM(MPC85xx_DDR_ADDR);
+	/* Actual number of chip select used */
+	info->cs_per_ctrl = CFG_CHIP_SELECTS_PER_CTRL;
+	info->dimm_slots_per_ctrl = 1;
+	info->i2c_bus = 1;
+	info->i2c_slave = 0x7f;
+	info->i2c_speed = 400000;
+	info->i2c_base = IOMEM(I2C2_BASE_ADDR);
+	info->spd_i2c_addr = &spd_addr;
+
+	return 0;
+}
+
+struct board_specific_parameters {
+	u32 n_ranks;
+	u32 datarate_mhz_high;
+	u32 clk_adjust;		/* Range: 0-8 */
+	u32 cpo;		/* Range: 2-31 */
+	u32 write_data_delay;	/* Range: 0-6 */
+	u32 force_2t;
+};
+
+/*
+ * This table contains all valid speeds we want to override with board
+ * specific parameters. datarate_mhz_high values need to be in ascending order
+ * for each n_ranks group.
+ */
+static const struct board_specific_parameters dimm0[] = {
+	/*
+	 * memory controller 0
+	 *   num|  hi|  clk| cpo|wrdata|2T
+	 * ranks| mhz|adjst|    | delay|
+	 */
+	{ 1, 549, 5, 31, 3, 0 },
+	{ 1, 850, 5, 31, 5, 0 },
+	{ 2, 549, 5, 31, 3, 0 },
+	{ 2, 850, 5, 31, 5, 0 },
+	{ }
+};
+
+void fsl_ddr_board_options(struct memctl_options_s *popts,
+		struct dimm_params_s *pdimm)
+{
+	const struct board_specific_parameters *pbsp, *pbsp_highest = NULL;
+	unsigned long ddr_freq;
+	uint32_t i;
+
+	for (i = 0; i < popts->board_info->cs_per_ctrl; i++) {
+		popts->cs_local_opts[i].odt_rd_cfg = 0;
+		popts->cs_local_opts[i].odt_wr_cfg = 1;
+		popts->cs_local_opts[i].odt_rtt_wr = DDR3_RTT_OFF;
+	}
+	popts->cs_local_opts[0].odt_rtt_norm = DDR3_RTT_40_OHM;
+	popts->cs_local_opts[1].odt_rtt_norm = DDR3_RTT_OFF;
+
+	pbsp = dimm0;
+
+	ddr_freq = fsl_get_ddr_freq(0) / 1000000;
+	/*
+	 * To have optimal parameters specific to the board, do a fine
+	 * adjustment of DDR parameters depending on the DDR data rate.
+	 */
+	while (pbsp->datarate_mhz_high) {
+		if (pbsp->n_ranks == pdimm->n_ranks) {
+			if (ddr_freq <= pbsp->datarate_mhz_high) {
+				popts->clk_adjust = pbsp->clk_adjust;
+				popts->cpo_override = pbsp->cpo;
+				popts->write_data_delay =
+					pbsp->write_data_delay;
+				popts->twoT_en = pbsp->force_2t;
+				goto found;
+			}
+			pbsp_highest = pbsp;
+		}
+		pbsp++;
+	}
+
+	/* Use highest parameters if none were found */
+	if (pbsp_highest) {
+		popts->clk_adjust = pbsp->clk_adjust;
+		popts->cpo_override = pbsp->cpo;
+		popts->write_data_delay = pbsp->write_data_delay;
+		popts->twoT_en = pbsp->force_2t;
+	}
+
+found:
+	popts->half_strength_driver_enable = 1;
+
+	/* Per AN4039, enable ZQ calibration. */
+	popts->zq_en = 1;
+
+	popts->auto_self_refresh_en = 1;
+	popts->sr_it = 0xb;
+
+	popts->dll_rst_dis = 1;
+}
diff --git a/arch/ppc/boards/freescale-p1022ds/env/bin/init b/arch/ppc/boards/freescale-p1022ds/env/bin/init
new file mode 100644
index 0000000..c0e04c1
--- /dev/null
+++ b/arch/ppc/boards/freescale-p1022ds/env/bin/init
@@ -0,0 +1,2 @@
+#!/bin/sh
+source /env/config
diff --git a/arch/ppc/boards/freescale-p1022ds/env/config b/arch/ppc/boards/freescale-p1022ds/env/config
new file mode 100644
index 0000000..bffd868
--- /dev/null
+++ b/arch/ppc/boards/freescale-p1022ds/env/config
@@ -0,0 +1,2 @@
+#!/bin/sh
+export bootargs="root=/dev/nfs rw ip=bootp console=ttyS0,115200"
\ No newline at end of file
diff --git a/arch/ppc/boards/freescale-p1022ds/ics307_clk.c b/arch/ppc/boards/freescale-p1022ds/ics307_clk.c
new file mode 100644
index 0000000..f7c5bbd
--- /dev/null
+++ b/arch/ppc/boards/freescale-p1022ds/ics307_clk.c
@@ -0,0 +1,46 @@
+/*
+ * Copyright 2010-2011 Freescale Semiconductor, Inc.
+ *
+ * SPDX-License-Identifier:	GPL-2.0+
+ */
+
+#include <common.h>
+#include <asm/io.h>
+
+/* decode S[0-2] to Output Divider (OD) */
+static u8 ics307_s_to_od[] = {
+	10, 2, 8, 4, 5, 7, 3, 6
+};
+
+/* Calculate frequency being generated by ICS307-02 clock chip. */
+unsigned long ics307_clk_freq(unsigned int reg)
+{
+	const unsigned long input_freq = 33333000;
+	void __iomem *fpga_base = IOMEM(CFG_PIXIS_BASE);
+	unsigned char cw0, cw1, cw2;
+	unsigned long vdw, rdw, od, freq;
+
+	cw0 = in_8(fpga_base + reg);
+	cw1 = in_8(fpga_base + reg + 1);
+	cw2 = in_8(fpga_base + reg + 2);
+	vdw = ((cw1 << 1) & 0x1fe) + ((cw2 >> 7) & 1);
+	rdw = cw2 & 0x7f;
+	od = ics307_s_to_od[cw0 & 0x7];
+	/*
+	 * CLK1 Freq = Input Frequency * 2 * (VDW + 8) / ((RDW + 2) * OD)
+	 *
+	 * cw0:  C1 C0 TTL F1 F0 S2 S1 S0
+	 * cw1:  V8 V7 V6 V5 V4 V3 V2 V1
+	 * cw2:  V0 R6 R5 R4 R3 R2 R1 R0
+	 *
+	 * R6:R0 = Reference Divider Word (RDW)
+	 * V8:V0 = VCO Divider Word (VDW)
+	 * S2:S0 = Output Divider Select (OD)
+	 * F1:F0 = Function of CLK2 Output
+	 * TTL = duty cycle
+	 * C1:C0 = internal load capacitance for crystal
+	 */
+	freq = input_freq * 2 * (vdw + 8) / ((rdw + 2) * od);
+
+	return freq;
+}
diff --git a/arch/ppc/boards/freescale-p1022ds/law.c b/arch/ppc/boards/freescale-p1022ds/law.c
new file mode 100644
index 0000000..167937a
--- /dev/null
+++ b/arch/ppc/boards/freescale-p1022ds/law.c
@@ -0,0 +1,27 @@
+/*
+ * Copyright 2009-2010 Freescale Semiconductor, Inc.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <asm/fsl_law.h>
+
+struct law_entry law_table[] = {
+	FSL_SET_LAW(CFG_BOOT_BLOCK_PHYS, LAW_SIZE_256M, LAW_TRGT_IF_LBC),
+	FSL_SET_LAW(CFG_PIXIS_BASE_PHYS, LAW_SIZE_4K, LAW_TRGT_IF_LBC),
+};
+
+int num_law_entries = ARRAY_SIZE(law_table);
diff --git a/arch/ppc/boards/freescale-p1022ds/p1022ds.c b/arch/ppc/boards/freescale-p1022ds/p1022ds.c
new file mode 100644
index 0000000..c800064
--- /dev/null
+++ b/arch/ppc/boards/freescale-p1022ds/p1022ds.c
@@ -0,0 +1,181 @@
+/*
+ * Copyright 2014 GE Intelligent Platforms, Inc.
+ * Copyright 2009-2011 Freescale Semiconductor, Inc.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <ns16550.h>
+#include <net.h>
+#include <types.h>
+#include <i2c/i2c.h>
+#include <partition.h>
+#include <memory.h>
+#include <asm/cache.h>
+#include <asm/fsl_ddr_sdram.h>
+#include <asm/fsl_law.h>
+#include <mach/mpc85xx.h>
+#include <mach/mmu.h>
+#include <mach/immap_85xx.h>
+#include <mach/gianfar.h>
+#include <mach/clock.h>
+#include <mach/early_udelay.h>
+
+/* Define attributes for eTSEC1 and eTSEC2 */
+static struct gfar_info_struct gfar_info[] = {
+	{
+		.phyaddr = 1,
+		.tbiana = 0,
+		.tbicr = 0,
+		.mdiobus_tbi = 0,
+	},
+	{
+		.phyaddr = 2,
+		.tbiana = 0,
+		.tbicr = 0,
+		.mdiobus_tbi = 0,
+	},
+};
+
+struct i2c_platform_data i2cplat[] = {
+	{ .bitrate = 400000, },
+	{ .bitrate = 400000, },
+};
+
+void p1022ds_lbc_early_init(void)
+{
+	void __iomem *gur = IOMEM(MPC85xx_GUTS_ADDR);
+	void __iomem *lbc = LBC_BASE_ADDR;
+
+	/* Set the local bus monitor timeout value to the maximum */
+	clrsetbits_be32(lbc + FSL_LBC_LBCR_OFFSET, 0xff0f, 0xf);
+	/* Set the pin muxing to enable ETSEC2. */
+	clrbits_be32(gur + MPC85xx_GUTS_PMUXCR2_OFFSET, 0x001f8000);
+	/* Set pmuxcr to allow both i2c1 and i2c2 */
+	setbits_be32(gur + MPC85xx_GUTS_PMUXCR_OFFSET, 0x1000);
+
+	/* Map the boot flash and FPGA */
+	fsl_set_lbc_br(0, BR_PHYS_ADDR(CFG_FLASH_BASE_PHYS) | BR_PS_16 | BR_V);
+	fsl_set_lbc_or(0, 0xf8000ff7);
+	fsl_set_lbc_br(2, BR_PHYS_ADDR(CFG_PIXIS_BASE_PHYS) | BR_PS_8 | BR_V);
+	fsl_set_lbc_or(2, 0xffff8ff7);
+}
+
+static void board_eth_init(void)
+{
+	struct i2c_adapter *adapter;
+	struct i2c_client client;
+	char mac[6];
+	int ret, ix;
+
+	adapter = i2c_get_adapter(1);
+	client.addr = 0x57;
+	client.adapter = adapter;
+
+	for (ix = 0; ix < 2; ix++) {
+		int mac_offset;
+
+		mac_offset = 0x42 + (sizeof(mac) * ix);
+		ret = i2c_read_reg(&client, mac_offset, mac, sizeof(mac));
+		if (ret != sizeof(mac))
+			pr_err("Fail to retrieve MAC address\n");
+		else
+			eth_register_ethaddr(ix, mac);
+	}
+
+	fsl_eth_init(1, &gfar_info[0]);
+	fsl_eth_init(2, &gfar_info[1]);
+}
+
+static int p1022ds_devices_init(void)
+{
+	add_cfi_flash_device(DEVICE_ID_DYNAMIC, CFG_FLASH_BASE, 128 << 20, 0);
+	devfs_add_partition("nor0", 0x7f80000, 0x80000, DEVFS_PARTITION_FIXED,
+				    "self0");
+	devfs_add_partition("nor0", 0x7f00000, 0x10000, DEVFS_PARTITION_FIXED,
+				    "env0");
+	add_generic_device("i2c-fsl", 0, NULL, I2C1_BASE_ADDR, 0x100,
+			IORESOURCE_MEM, &i2cplat[0]);
+	add_generic_device("i2c-fsl", 1, NULL, I2C2_BASE_ADDR, 0x100,
+			IORESOURCE_MEM, &i2cplat[1]);
+
+	board_eth_init();
+
+	return 0;
+}
+
+device_initcall(p1022ds_devices_init);
+
+static struct NS16550_plat serial_plat = {
+	.clock = 0,
+	.shift = 0,
+};
+
+static int p1022ds_console_init(void)
+{
+	barebox_set_model("Freescale P1022DS");
+	barebox_set_hostname("p1022ds");
+
+	serial_plat.clock = fsl_get_bus_freq(0);
+	add_ns16550_device(DEVICE_ID_DYNAMIC, CFG_IMMR + 0x4500, 16,
+			   IORESOURCE_MEM_8BIT, &serial_plat);
+	return 0;
+}
+
+console_initcall(p1022ds_console_init);
+
+static int p1022ds_mem_init(void)
+{
+	barebox_add_memory_bank("ram0", 0x0, fsl_get_effective_memsize());
+	return 0;
+}
+
+mem_initcall(p1022ds_mem_init);
+
+static int p1022ds_board_init_r(void)
+{
+	void __iomem *fpga = IOMEM(CFG_PIXIS_BASE);
+	const uint32_t flashbase = CFG_BOOT_BLOCK;
+	const u8 flash_esel = e500_find_tlb_idx((void *)flashbase, 1);
+
+	/* Enable SPI */
+	out_8(fpga + 8, (in_8(fpga + 8) & ~(0xc0)) | (0x80));
+
+	/* Map the NAND flash */
+	fsl_set_lbc_br(1, BR_PHYS_ADDR(0xff800000) | BR_PS_8 |
+			(2 << BR_DECC_SHIFT) | BR_MS_FCM | BR_V);
+	fsl_set_lbc_or(1, 0xffff8796);
+
+	/* Flush d-cache and invalidate i-cache of any FLASH data */
+	flush_dcache();
+	invalidate_icache();
+
+	/* invalidate existing TLB entry for flash */
+	e500_disable_tlb(flash_esel);
+
+	/*
+	 * Remap Boot flash region to caching-inhibited
+	 * so that flash can be erased properly.
+	 */
+	e500_set_tlb(1, flashbase, CFG_BOOT_BLOCK_PHYS,
+			MAS3_SX | MAS3_SW | MAS3_SR, MAS2_I | MAS2_G,
+			0, flash_esel, BOOKE_PAGESZ_256M, 1);
+
+	fsl_l2_cache_init();
+
+	return 0;
+}
+
+core_initcall(p1022ds_board_init_r);
diff --git a/arch/ppc/boards/freescale-p1022ds/p1022ds.h b/arch/ppc/boards/freescale-p1022ds/p1022ds.h
new file mode 100644
index 0000000..cbc2aca
--- /dev/null
+++ b/arch/ppc/boards/freescale-p1022ds/p1022ds.h
@@ -0,0 +1,14 @@
+/*
+ * Copyright 2014 GE Intelligent Platforms, Inc.
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
+void p1022ds_lbc_early_init(void);
diff --git a/arch/ppc/boards/freescale-p1022ds/tlb.c b/arch/ppc/boards/freescale-p1022ds/tlb.c
new file mode 100644
index 0000000..86ab43a
--- /dev/null
+++ b/arch/ppc/boards/freescale-p1022ds/tlb.c
@@ -0,0 +1,59 @@
+/*
+ * Copyright 2011 Freescale Semiconductor, Inc.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <mach/mmu.h>
+
+struct fsl_e_tlb_entry tlb_table[] = {
+	/* TLB 0 - for temp stack in cache */
+	FSL_SET_TLB_ENTRY(0, CFG_INIT_RAM_ADDR, CFG_INIT_RAM_ADDR,
+			  MAS3_SX | MAS3_SW | MAS3_SR, 0,
+			  0, 0, BOOKE_PAGESZ_4K, 0),
+	FSL_SET_TLB_ENTRY(0, CFG_INIT_RAM_ADDR + (4 * 1024),
+			  CFG_INIT_RAM_ADDR + (4 * 1024),
+			  MAS3_SX | MAS3_SW | MAS3_SR, 0,
+			  0, 0, BOOKE_PAGESZ_4K, 0),
+	FSL_SET_TLB_ENTRY(0, CFG_INIT_RAM_ADDR + (8 * 1024),
+			  CFG_INIT_RAM_ADDR + (8 * 1024),
+			  MAS3_SX | MAS3_SW | MAS3_SR, 0,
+			  0, 0, BOOKE_PAGESZ_4K, 0),
+	FSL_SET_TLB_ENTRY(0, CFG_INIT_RAM_ADDR + (12 * 1024),
+			  CFG_INIT_RAM_ADDR + (12 * 1024),
+			  MAS3_SX | MAS3_SW | MAS3_SR, 0,
+			  0, 0, BOOKE_PAGESZ_4K, 0),
+
+	/* TLB 1 */
+	/* *I*** - Covers boot page */
+	FSL_SET_TLB_ENTRY(1, 0xfffff000, 0xfffff000,
+			  MAS3_SX | MAS3_SW | MAS3_SR, MAS2_I | MAS2_G,
+			  0, 0, BOOKE_PAGESZ_4K, 1),
+
+	/* *I*G* - CCSRBAR */
+	FSL_SET_TLB_ENTRY(1, CFG_CCSRBAR, CFG_CCSRBAR_PHYS,
+			  MAS3_SX | MAS3_SW | MAS3_SR, MAS2_I | MAS2_G,
+			  0, 1, BOOKE_PAGESZ_1M, 1),
+
+	/* W**G* - Flash/promjet, localbus */
+	/* This will be changed to *I*G* after relocation to RAM. */
+	FSL_SET_TLB_ENTRY(1, CFG_BOOT_BLOCK, CFG_BOOT_BLOCK_PHYS,
+			  MAS3_SX | MAS3_SR, MAS2_M | MAS2_W | MAS2_G,
+			  0, 2, BOOKE_PAGESZ_256M, 1),
+
+	FSL_SET_TLB_ENTRY(1, CFG_PIXIS_BASE, CFG_PIXIS_BASE_PHYS,
+			  MAS3_SX | MAS3_SW | MAS3_SR, MAS2_I | MAS2_G,
+			  0, 7, BOOKE_PAGESZ_4K, 1),
+};
+
+int num_tlb_entries = ARRAY_SIZE(tlb_table);
diff --git a/arch/ppc/boards/freescale-p2020rdb/config.h b/arch/ppc/boards/freescale-p2020rdb/config.h
index c6d3216..e607ee7 100644
--- a/arch/ppc/boards/freescale-p2020rdb/config.h
+++ b/arch/ppc/boards/freescale-p2020rdb/config.h
@@ -30,8 +30,6 @@ extern unsigned long get_board_sys_clk(unsigned long dummy);
 #define CFG_SYS_CLK_FREQ	get_board_sys_clk(0)
 #define CFG_DDR_CLK_FREQ	66666666
 
-#define CFG_BTB			/* toggle branch predition */
-
 /*
  * Base addresses -- Note these are effective addresses where the
  * actual resources get mapped (not physical addresses)
diff --git a/arch/ppc/boards/geip-da923rc/config.h b/arch/ppc/boards/geip-da923rc/config.h
index 6e8684f..3895324 100644
--- a/arch/ppc/boards/geip-da923rc/config.h
+++ b/arch/ppc/boards/geip-da923rc/config.h
@@ -18,7 +18,6 @@
 #define __CONFIG_H
 
 #define CFG_SYS_CLK_FREQ	66666666
-#define CFG_BTB			/* toggle branch prediction */
 
 #define CFG_FLASH_CFI_WIDTH FLASH_CFI_16BIT
 #define CFG_CHIP_SELECTS_PER_CTRL   1
diff --git a/arch/ppc/configs/p1022ds_defconfig b/arch/ppc/configs/p1022ds_defconfig
new file mode 100644
index 0000000..878286b
--- /dev/null
+++ b/arch/ppc/configs/p1022ds_defconfig
@@ -0,0 +1,53 @@
+CONFIG_ARCH_MPC85XX=y
+CONFIG_P1022DS=y
+CONFIG_P1022=y
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_CMD_BOOTM_ZLIB=y
+CONFIG_CMD_BOOTM_BZLIB=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_ZLIB=y
+CONFIG_BZLIB=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=n
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/ppc/boards/freescale-p1022ds/env/"
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_FSL_ELBC=y
+CONFIG_DRIVER_CFI=y
+CONFIG_DRIVER_CFI_AMD=y
+CONFIG_DRIVER_CFI_INTEL=n
+CONFIG_DRIVER_CFI_BANK_WIDTH_1=n
+CONFIG_DRIVER_CFI_BANK_WIDTH_2=y
+CONFIG_DRIVER_CFI_BANK_WIDTH_4=n
+CONFIG_MTD=y
+CONFIG_MTD_WRITE=y
+CONFIG_MALLOC_SIZE=0x4000000
+CONFIG_BAUDRATE=115200
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_RELOCATABLE=y
+CONFIG_DRIVER_NET_GIANFAR=y
+CONFIG_NET=y
+CONFIG_NET_PING=y
+CONFIG_FS_TFTP=y
+CONFIG_NET_TFTP=y
+CONFIG_CMD_TFTP=y
+CONFIG_PING=y
+CONFIG_I2C=y
+CONFIG_I2C_IMX=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_EXPORT=y
+CONFIG_OFTREE=y
+CONFIG_CMD_OFTREE_PROBE=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_BAREBOX_UPDATE=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMTEST=y
diff --git a/arch/ppc/cpu-85xx/start.S b/arch/ppc/cpu-85xx/start.S
index 57f007b..514fd8c 100644
--- a/arch/ppc/cpu-85xx/start.S
+++ b/arch/ppc/cpu-85xx/start.S
@@ -172,7 +172,7 @@ _start_e500:
 	mtspr	HID1,r0
 
 	/* Enable Branch Prediction */
-#if defined(CFG_BTB)
+#if defined(CONFIG_BTB)
 	lis	r0,BUCSR_ENABLE@h
 	ori	r0,r0,BUCSR_ENABLE@l
 	mtspr	SPRN_BUCSR,r0
diff --git a/arch/ppc/mach-mpc85xx/Kconfig b/arch/ppc/mach-mpc85xx/Kconfig
index 74bad76..d02cf9b 100644
--- a/arch/ppc/mach-mpc85xx/Kconfig
+++ b/arch/ppc/mach-mpc85xx/Kconfig
@@ -3,6 +3,10 @@ if ARCH_MPC85XX
 config MMU
 	default y if CMD_MEMTEST
 
+config BTB
+	bool
+	default y if P2020RDB || P1022DS || DA923RC
+
 config TEXT_BASE
 	hex
 	default 0xeff80000 if P2020RDB
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
