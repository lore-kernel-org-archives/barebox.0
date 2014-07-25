Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx0b-00176a03.pphosted.com ([67.231.157.48])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XAhR4-0007YV-Kp
 for barebox@lists.infradead.org; Fri, 25 Jul 2014 15:29:37 +0000
Received: from pps.filterd (m0048300.ppops.net [127.0.0.1])
 by m0048300.ppops.net-00176a03. (8.14.7/8.14.7) with SMTP id s6PFNafU042860
 for <barebox@lists.infradead.org>; Fri, 25 Jul 2014 11:29:13 -0400
Received: from alpmlip13.e2k.ad.ge.com ([12.43.191.1])
 by m0048300.ppops.net-00176a03. with ESMTP id 1nbsd385bc-2
 (version=TLSv1/SSLv3 cipher=RC4-SHA bits=128 verify=NOT)
 for <barebox@lists.infradead.org>; Fri, 25 Jul 2014 11:29:13 -0400
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Fri, 25 Jul 2014 16:28:56 +0100
Message-Id: <1406302136-26747-5-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1406302136-26747-1-git-send-email-renaud.barbier@ge.com>
References: <1406302136-26747-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 4/4] ppc: minimal Freescale P1010RDB board support
To: barebox@lists.infradead.org

This is a limited board support for the Freescale P1010RDB.
The board boots from NOR and output the prompt to the serial port
at 115200 bauds. All 3 Ethernet ports are supported by the gianfar
driver. I2C devices are accessible on both bus and the memory is
initialised by the 85xx DDR driver.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/boards/freescale-p1010rdb/Makefile     |   4 +
 arch/ppc/boards/freescale-p1010rdb/config.h     |  58 +++++++
 arch/ppc/boards/freescale-p1010rdb/ddr.c        |  60 +++++++
 arch/ppc/boards/freescale-p1010rdb/env/bin/init |   2 +
 arch/ppc/boards/freescale-p1010rdb/env/config   |   2 +
 arch/ppc/boards/freescale-p1010rdb/law.c        |  24 +++
 arch/ppc/boards/freescale-p1010rdb/p1010rdb.c   | 209 ++++++++++++++++++++++++
 arch/ppc/boards/freescale-p1010rdb/p1010rdb.h   |  14 ++
 arch/ppc/boards/freescale-p1010rdb/tlb.c        |  59 +++++++
 arch/ppc/configs/p1010rdb_defconfig             |  55 +++++++
 10 files changed, 487 insertions(+)
 create mode 100644 arch/ppc/boards/freescale-p1010rdb/Makefile
 create mode 100644 arch/ppc/boards/freescale-p1010rdb/config.h
 create mode 100644 arch/ppc/boards/freescale-p1010rdb/ddr.c
 create mode 100644 arch/ppc/boards/freescale-p1010rdb/env/bin/init
 create mode 100644 arch/ppc/boards/freescale-p1010rdb/env/config
 create mode 100644 arch/ppc/boards/freescale-p1010rdb/law.c
 create mode 100644 arch/ppc/boards/freescale-p1010rdb/p1010rdb.c
 create mode 100644 arch/ppc/boards/freescale-p1010rdb/p1010rdb.h
 create mode 100644 arch/ppc/boards/freescale-p1010rdb/tlb.c
 create mode 100644 arch/ppc/configs/p1010rdb_defconfig

diff --git a/arch/ppc/boards/freescale-p1010rdb/Makefile b/arch/ppc/boards/freescale-p1010rdb/Makefile
new file mode 100644
index 0000000..2a51091
--- /dev/null
+++ b/arch/ppc/boards/freescale-p1010rdb/Makefile
@@ -0,0 +1,4 @@
+obj-y	+= p1010rdb.o
+obj-y	+= law.o
+obj-y	+= tlb.o
+obj-y	+= ddr.o
\ No newline at end of file
diff --git a/arch/ppc/boards/freescale-p1010rdb/config.h b/arch/ppc/boards/freescale-p1010rdb/config.h
new file mode 100644
index 0000000..4f67183
--- /dev/null
+++ b/arch/ppc/boards/freescale-p1010rdb/config.h
@@ -0,0 +1,58 @@
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
+#define CFG_SYS_CLK_FREQ	66666666
+#define CFG_DDR_CLK_FREQ	66666666
+
+#define CFG_CHIP_SELECTS_PER_CTRL 1
+
+/*
+ * Memory map
+ *
+ * 0x0000_0000	0x3fff_ffff	DDR		1G cacheable
+ *
+ * Localbus non-cacheable
+ * 0xee0_0000	0xefff_ffff	FLASH		32M non-cacheable
+ * 0xffb0_0000	0xffb0_0fff	PIXIS		4K Cacheable
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
+#define CFG_FLASH_BASE		0xee000000
+#define CFG_FLASH_BASE_PHYS	CFG_FLASH_BASE
+#define CFG_CPLD_BASE		0xffb00000
+#define CFG_CPLD_BASE_PHYS	CFG_CPLD_BASE
+
+#define CFG_IFC_CSPR0	(CSPR_PHYS_ADDR(CFG_FLASH_BASE_PHYS) | \
+			CSPR_PORT_SIZE_16 | CSPR_MSEL_NOR | \
+			CSPR_V)
+#define CFG_IFC_CSOR0	CSOR_NOR_ADM_SHIFT(7)
+#define CFG_IFC_AMASK0	IFC_AMASK(32*1024*1024)
+
+#endif /* __CONFIG_H */
diff --git a/arch/ppc/boards/freescale-p1010rdb/ddr.c b/arch/ppc/boards/freescale-p1010rdb/ddr.c
new file mode 100644
index 0000000..18069f4
--- /dev/null
+++ b/arch/ppc/boards/freescale-p1010rdb/ddr.c
@@ -0,0 +1,60 @@
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
+#include <asm/processor.h>
+#include <asm/fsl_lbc.h>
+#include <asm/fsl_ddr_sdram.h>
+#include <asm/fsl_ddr_dimm_params.h>
+#include "p1010rdb.h"
+
+static const u8 spd_addr = 0x52;
+
+int fsl_ddr_board_info(struct ddr_board_info_s *info)
+{
+	p1010rdb_early_init();
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
+void fsl_ddr_board_options(struct memctl_options_s *popts,
+		struct dimm_params_s *pdimm)
+{
+	popts->cs_local_opts[0].odt_rd_cfg = FSL_DDR_ODT_NEVER;
+	popts->cs_local_opts[0].odt_wr_cfg = FSL_DDR_ODT_CS;
+	popts->cs_local_opts[0].odt_rtt_norm = DDR3_RTT_40_OHM;
+	popts->cs_local_opts[0].odt_rtt_wr = DDR3_RTT_OFF;
+
+	popts->clk_adjust = 6;
+	popts->cpo_override = 0x1f;
+	popts->write_data_delay = 2;
+	/* Write leveling override */
+	popts->wrlvl_en = 1;
+	popts->wrlvl_override = 1;
+	popts->wrlvl_sample = 0xf;
+	popts->wrlvl_start = 0x8;
+	popts->trwt_override = 1;
+	popts->trwt = 0;
+	popts->dll_rst_dis = 1;
+}
diff --git a/arch/ppc/boards/freescale-p1010rdb/env/bin/init b/arch/ppc/boards/freescale-p1010rdb/env/bin/init
new file mode 100644
index 0000000..c0e04c1
--- /dev/null
+++ b/arch/ppc/boards/freescale-p1010rdb/env/bin/init
@@ -0,0 +1,2 @@
+#!/bin/sh
+source /env/config
diff --git a/arch/ppc/boards/freescale-p1010rdb/env/config b/arch/ppc/boards/freescale-p1010rdb/env/config
new file mode 100644
index 0000000..bffd868
--- /dev/null
+++ b/arch/ppc/boards/freescale-p1010rdb/env/config
@@ -0,0 +1,2 @@
+#!/bin/sh
+export bootargs="root=/dev/nfs rw ip=bootp console=ttyS0,115200"
\ No newline at end of file
diff --git a/arch/ppc/boards/freescale-p1010rdb/law.c b/arch/ppc/boards/freescale-p1010rdb/law.c
new file mode 100644
index 0000000..6edfbc2
--- /dev/null
+++ b/arch/ppc/boards/freescale-p1010rdb/law.c
@@ -0,0 +1,24 @@
+/*
+ * Copyright 2009-2010 Freescale Semiconductor, Inc.
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
+	FSL_SET_LAW(CFG_BOOT_BLOCK_PHYS, LAW_SIZE_256M, LAW_TRGT_IF_IFC),
+	FSL_SET_LAW(CFG_CPLD_BASE_PHYS, LAW_SIZE_128K, LAW_TRGT_IF_IFC),
+};
+
+int num_law_entries = ARRAY_SIZE(law_table);
diff --git a/arch/ppc/boards/freescale-p1010rdb/p1010rdb.c b/arch/ppc/boards/freescale-p1010rdb/p1010rdb.c
new file mode 100644
index 0000000..5bae584
--- /dev/null
+++ b/arch/ppc/boards/freescale-p1010rdb/p1010rdb.c
@@ -0,0 +1,209 @@
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
+#include <asm/fsl_ifc.h>
+#include <mach/mpc85xx.h>
+#include <mach/mmu.h>
+#include <mach/immap_85xx.h>
+#include <mach/gianfar.h>
+#include <mach/clock.h>
+#include <mach/gpio.h>
+#include <mach/early_udelay.h>
+#include <of.h>
+
+static struct gfar_info_struct gfar_info[] = {
+	{
+		.phyaddr = 1,
+		.tbiana = 0,
+		.tbicr = 0,
+		.mdiobus_tbi = 0,
+	},
+	{
+		.phyaddr = 0,
+		.tbiana = 0x1a0,
+		.tbicr = 0x9140,
+		.mdiobus_tbi = 1,
+	},
+	{
+		.phyaddr = 2,
+		.tbiana = 0x1a0,
+		.tbicr = 0x9140,
+		.mdiobus_tbi = 2,
+	},
+};
+
+struct i2c_platform_data i2cplat[] = {
+	{ .bitrate = 400000, },
+	{ .bitrate = 400000, },
+};
+
+void p1010rdb_early_init(void)
+{
+	void __iomem *ifc = IFC_BASE_ADDR;
+	void __iomem *gur = IOMEM(MPC85xx_GUTS_ADDR);
+
+	/* Clock configuration to access CPLD using IFC(GPCM) */
+	setbits_be32(ifc + FSL_IFC_GCR_OFFSET,
+			1 << IFC_GCR_TBCTL_TRN_TIME_SHIFT);
+
+	/* Erratum A003549 */
+	setbits_be32(gur + MPC85xx_GUTS_PMUXCR_OFFSET,
+			MPC85xx_PMUXCR_LCLK_IFC_CS3);
+
+	/* Update CS0 timings to access boot flash */
+	set_ifc_ftim(IFC_CS0, IFC_FTIM0, FTIM0_NOR_TACSE(0x4) |
+			FTIM0_NOR_TEADC(0x5) | FTIM0_NOR_TEAHC(0x5));
+	set_ifc_ftim(IFC_CS0, IFC_FTIM1, FTIM1_NOR_TACO(0x1e) |
+			FTIM1_NOR_TRAD_NOR(0x0f));
+	set_ifc_ftim(IFC_CS0, IFC_FTIM2, FTIM2_NOR_TCS(0x4) |
+			FTIM2_NOR_TCH(0x4) |  FTIM2_NOR_TWP(0x1c));
+	set_ifc_ftim(IFC_CS0, IFC_FTIM3, 0);
+
+	/* Map the CPLD */
+	set_ifc_cspr(IFC_CS3, CSPR_PHYS_ADDR(CFG_CPLD_BASE_PHYS) |
+			CSPR_PORT_SIZE_8 | CSPR_MSEL_GPCM | CSPR_V);
+	set_ifc_csor(IFC_CS3, 0);
+	set_ifc_amask(IFC_CS3, IFC_AMASK(64*1024));
+	set_ifc_ftim(IFC_CS3, IFC_FTIM0, FTIM0_GPCM_TACSE(0xe) |
+			FTIM0_GPCM_TEADC(0x0e) | FTIM0_GPCM_TEAHC(0x0e));
+	set_ifc_ftim(IFC_CS3, IFC_FTIM1, FTIM1_GPCM_TACO(0x1e) |
+			FTIM1_GPCM_TRAD(0x0f));
+	set_ifc_ftim(IFC_CS3, IFC_FTIM2, FTIM2_GPCM_TCS(0xe) |
+			FTIM2_GPCM_TCH(0) |  FTIM2_GPCM_TWP(0x1f));
+	set_ifc_ftim(IFC_CS3, IFC_FTIM3, 0);
+
+	/*  PCIe reset through GPIO 4 */
+	gpio_direction_output(4, 1);
+}
+
+static void board_eth_init(void)
+{
+	fsl_eth_init(1, &gfar_info[0]);
+	fsl_eth_init(2, &gfar_info[1]);
+	fsl_eth_init(3, &gfar_info[2]);
+}
+
+static int p1010rdb_devices_init(void)
+{
+	add_cfi_flash_device(DEVICE_ID_DYNAMIC, CFG_FLASH_BASE, 32 << 20, 0);
+	devfs_add_partition("nor0", 0x1f80000, 0x80000, DEVFS_PARTITION_FIXED,
+				    "self0");
+	devfs_add_partition("nor0", 0x1f60000, 0x10000, DEVFS_PARTITION_FIXED,
+				    "env0");
+	add_generic_device("i2c-fsl", 0, NULL, I2C1_BASE_ADDR, 0x100,
+			IORESOURCE_MEM, &i2cplat[0]);
+	add_generic_device("i2c-fsl", 1, NULL, I2C2_BASE_ADDR, 0x100,
+			IORESOURCE_MEM, &i2cplat[1]);
+	board_eth_init();
+
+	return 0;
+}
+
+device_initcall(p1010rdb_devices_init);
+
+static struct NS16550_plat serial_plat = {
+	.clock = 0,
+	.shift = 0,
+};
+
+static int p1010rdb_console_init(void)
+{
+	barebox_set_model("Freescale P1010RDB");
+	barebox_set_hostname("p1010rdb");
+
+	serial_plat.clock = fsl_get_bus_freq(0);
+	add_ns16550_device(1, CFG_IMMR + 0x4500, 16,
+			   IORESOURCE_MEM | IORESOURCE_MEM_8BIT, &serial_plat);
+	return 0;
+}
+
+console_initcall(p1010rdb_console_init);
+
+static int p1010rdb_mem_init(void)
+{
+	barebox_add_memory_bank("ram0", 0x0, fsl_get_effective_memsize());
+	return 0;
+}
+
+mem_initcall(p1010rdb_mem_init);
+
+static int p1010rdb_board_init_r(void)
+{
+	const uint32_t flashbase = CFG_BOOT_BLOCK;
+	const u8 flash_esel = e500_find_tlb_idx((void *)flashbase, 1);
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
+core_initcall(p1010rdb_board_init_r);
+
+static int fdt_board_setup(struct device_node *blob, void *unused)
+{
+	struct device_node *node;
+
+	node = of_find_compatible_node(blob, NULL, "fsl,esdhc");
+	if (node)
+		of_delete_node(node);
+
+	node = of_find_compatible_node(blob, NULL, "fsl,starlite-tdm");
+	if (node)
+		of_delete_node(node);
+
+	node = of_find_compatible_node(blob, NULL, "fsl,p1010-flexcan");
+	if (node)
+		of_delete_node(node);
+
+	node = of_find_compatible_node(blob, NULL, "fsl,p1010-flexcan");
+	if (node)
+		of_delete_node(node);
+
+	return 0;
+}
+
+static int of_register_p1010rdb_fixup(void)
+{
+	return of_register_fixup(fdt_board_setup, NULL);
+}
+late_initcall(of_register_p1010rdb_fixup);
diff --git a/arch/ppc/boards/freescale-p1010rdb/p1010rdb.h b/arch/ppc/boards/freescale-p1010rdb/p1010rdb.h
new file mode 100644
index 0000000..f325ff4
--- /dev/null
+++ b/arch/ppc/boards/freescale-p1010rdb/p1010rdb.h
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
+void p1010rdb_early_init(void);
diff --git a/arch/ppc/boards/freescale-p1010rdb/tlb.c b/arch/ppc/boards/freescale-p1010rdb/tlb.c
new file mode 100644
index 0000000..23ef0f2
--- /dev/null
+++ b/arch/ppc/boards/freescale-p1010rdb/tlb.c
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
+	/* W**G* - Flash, localbus */
+	/* This will be changed to *I*G* after relocation to RAM. */
+	FSL_SET_TLB_ENTRY(1, CFG_BOOT_BLOCK, CFG_BOOT_BLOCK_PHYS,
+			  MAS3_SX | MAS3_SR, MAS2_M | MAS2_W | MAS2_G,
+			  0, 2, BOOKE_PAGESZ_256M, 1),
+
+	FSL_SET_TLB_ENTRY(1, CFG_CPLD_BASE, CFG_CPLD_BASE_PHYS,
+			  MAS3_SX | MAS3_SW | MAS3_SR, MAS2_I | MAS2_G,
+			  0, 6, BOOKE_PAGESZ_128K, 1),
+};
+
+int num_tlb_entries = ARRAY_SIZE(tlb_table);
diff --git a/arch/ppc/configs/p1010rdb_defconfig b/arch/ppc/configs/p1010rdb_defconfig
new file mode 100644
index 0000000..d193940
--- /dev/null
+++ b/arch/ppc/configs/p1010rdb_defconfig
@@ -0,0 +1,55 @@
+CONFIG_ARCH_MPC85XX=y
+CONFIG_P1010RDB=y
+CONFIG_P101010=y
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_BOOTM_ZLIB=y
+CONFIG_CMD_BOOTM_BZLIB=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_ZLIB=y
+CONFIG_BZLIB=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_GO=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=n
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/ppc/boards/freescale-p1010rdb/env/"
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_DRIVER_CFI=y
+CONFIG_DRIVER_CFI_AMD=y
+CONFIG_DRIVER_CFI_INTEL=y
+CONFIG_DRIVER_CFI_BANK_WIDTH_1=n
+CONFIG_DRIVER_CFI_BANK_WIDTH_2=y
+CONFIG_DRIVER_CFI_BANK_WIDTH_4=n
+CONFIG_CFI_BUFFER_WRITE=y
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
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
