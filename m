Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr820120.outbound.protection.outlook.com
 ([40.107.82.120] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hG0pb-0004Zf-GP
 for barebox@lists.infradead.org; Mon, 15 Apr 2019 12:35:32 +0000
From: "Barbier, Renaud" <renaud.barbier@abaco.com>
Date: Mon, 15 Apr 2019 12:35:23 +0000
Message-ID: <1555331684-25431-2-git-send-email-renaud.barbier@abaco.com>
References: <1555331684-25431-1-git-send-email-renaud.barbier@abaco.com>
In-Reply-To: <1555331684-25431-1-git-send-email-renaud.barbier@abaco.com>
Content-Language: en-US
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
Subject: [PATCH 1/2] owc: directories and files renaming
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: "Barbier, Renaud" <renaud.barbier@abaco.com>

As the company changed name to  Abaco Systems Inc, we have
a contractual requirement to remove GE references. Start by
renaming files and directories using a neutral name.

Signed-off-by: Renaud Barbier <renaud.barbier@abaco.com>
---
 arch/ppc/boards/geip-da923rc/Makefile              |    7 -
 arch/ppc/boards/geip-da923rc/config.h              |   53 -----
 arch/ppc/boards/geip-da923rc/da923rc.c             |  218 --------------------
 arch/ppc/boards/geip-da923rc/ddr.c                 |  169 ---------------
 .../geip-da923rc/defaultenv-geip-da923rc/bin/boot  |    9 -
 .../geip-da923rc/defaultenv-geip-da923rc/bin/init  |   26 ---
 .../geip-da923rc/defaultenv-geip-da923rc/config    |    4 -
 arch/ppc/boards/geip-da923rc/law.c                 |   24 ---
 arch/ppc/boards/geip-da923rc/nand.c                |   94 ---------
 arch/ppc/boards/geip-da923rc/product_data.c        |   83 --------
 arch/ppc/boards/geip-da923rc/product_data.h        |   62 ------
 arch/ppc/boards/geip-da923rc/tlb.c                 |   69 ------
 arch/ppc/boards/owc-da923rc/Makefile               |    7 +
 arch/ppc/boards/owc-da923rc/config.h               |   53 +++++
 arch/ppc/boards/owc-da923rc/da923rc.c              |  218 ++++++++++++++++++++
 arch/ppc/boards/owc-da923rc/ddr.c                  |  169 +++++++++++++++
 .../owc-da923rc/defaultenv-owc-da923rc/bin/boot    |    9 +
 .../owc-da923rc/defaultenv-owc-da923rc/bin/init    |   26 +++
 .../owc-da923rc/defaultenv-owc-da923rc/config      |    4 +
 arch/ppc/boards/owc-da923rc/law.c                  |   24 +++
 arch/ppc/boards/owc-da923rc/nand.c                 |   94 +++++++++
 arch/ppc/boards/owc-da923rc/product_data.c         |   83 ++++++++
 arch/ppc/boards/owc-da923rc/product_data.h         |   62 ++++++
 arch/ppc/boards/owc-da923rc/tlb.c                  |   69 ++++++
 arch/ppc/configs/da923rc_defconfig                 |   51 -----
 arch/ppc/configs/owc_da923rc_defconfig             |   51 +++++
 26 files changed, 869 insertions(+), 869 deletions(-)
 delete mode 100644 arch/ppc/boards/geip-da923rc/Makefile
 delete mode 100644 arch/ppc/boards/geip-da923rc/config.h
 delete mode 100644 arch/ppc/boards/geip-da923rc/da923rc.c
 delete mode 100644 arch/ppc/boards/geip-da923rc/ddr.c
 delete mode 100644 arch/ppc/boards/geip-da923rc/defaultenv-geip-da923rc/bin/boot
 delete mode 100644 arch/ppc/boards/geip-da923rc/defaultenv-geip-da923rc/bin/init
 delete mode 100644 arch/ppc/boards/geip-da923rc/defaultenv-geip-da923rc/config
 delete mode 100644 arch/ppc/boards/geip-da923rc/law.c
 delete mode 100644 arch/ppc/boards/geip-da923rc/nand.c
 delete mode 100644 arch/ppc/boards/geip-da923rc/product_data.c
 delete mode 100644 arch/ppc/boards/geip-da923rc/product_data.h
 delete mode 100644 arch/ppc/boards/geip-da923rc/tlb.c
 create mode 100644 arch/ppc/boards/owc-da923rc/Makefile
 create mode 100644 arch/ppc/boards/owc-da923rc/config.h
 create mode 100644 arch/ppc/boards/owc-da923rc/da923rc.c
 create mode 100644 arch/ppc/boards/owc-da923rc/ddr.c
 create mode 100644 arch/ppc/boards/owc-da923rc/defaultenv-owc-da923rc/bin/boot
 create mode 100644 arch/ppc/boards/owc-da923rc/defaultenv-owc-da923rc/bin/init
 create mode 100644 arch/ppc/boards/owc-da923rc/defaultenv-owc-da923rc/config
 create mode 100644 arch/ppc/boards/owc-da923rc/law.c
 create mode 100644 arch/ppc/boards/owc-da923rc/nand.c
 create mode 100644 arch/ppc/boards/owc-da923rc/product_data.c
 create mode 100644 arch/ppc/boards/owc-da923rc/product_data.h
 create mode 100644 arch/ppc/boards/owc-da923rc/tlb.c
 delete mode 100644 arch/ppc/configs/da923rc_defconfig
 create mode 100644 arch/ppc/configs/owc_da923rc_defconfig

diff --git a/arch/ppc/boards/geip-da923rc/Makefile b/arch/ppc/boards/geip-da923rc/Makefile
deleted file mode 100644
index 7177bfa..0000000
--- a/arch/ppc/boards/geip-da923rc/Makefile
+++ /dev/null
@@ -1,7 +0,0 @@
-obj-y += da923rc.o
-obj-y += tlb.o
-obj-y += law.o
-obj-y += ddr.o
-obj-y += nand.o
-obj-y += product_data.o
-bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-geip-da923rc
diff --git a/arch/ppc/boards/geip-da923rc/config.h b/arch/ppc/boards/geip-da923rc/config.h
deleted file mode 100644
index 3895324..0000000
--- a/arch/ppc/boards/geip-da923rc/config.h
+++ /dev/null
@@ -1,53 +0,0 @@
-/*
- * Copyright 2013 GE Intelligent Platforms, Inc.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * DA923RC board configuration file.
- */
-
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#define CFG_SYS_CLK_FREQ	66666666
-
-#define CFG_FLASH_CFI_WIDTH FLASH_CFI_16BIT
-#define CFG_CHIP_SELECTS_PER_CTRL   1
-
-/*
- * Memory map
- *
- * 0x0000_0000	0x1fff_ffff	DDR		512MB Cacheable
- * 0xe000_0000	0xe00f_ffff	CCSR		1M non-cacheable
- * 0xf400_0000	0xf400_3fff	L1 for stack	4K Cacheable TLB0
- *
- */
-#define CFG_SDRAM_BASE		0x00000000
-
-#define CFG_CCSRBAR_DEFAULT	0xff700000
-#define CFG_CCSRBAR		0xe0000000
-#define CFG_CCSRBAR_PHYS	CFG_CCSRBAR
-#define CFG_IMMR		CFG_CCSRBAR
-
-/* Initial memory for global storage and stack.  */
-#define CFG_INIT_RAM_ADDR	0xf4000000
-#define CFG_INIT_RAM_SIZE	0x00004000
-#define CFG_INIT_BI_SIZE	0x100
-#define CFG_INIT_SP_OFFSET	(CFG_INIT_RAM_SIZE - CFG_INIT_BI_SIZE)
-
-#define BOOT_BLOCK		0xfc000000
-
-#define BOARD_TYPE_UNKNOWN	-1
-#define BOARD_TYPE_NONE		0
-#define BOARD_TYPE_DA923	1
-#define BOARD_TYPE_GBX460	2
-
-#endif /* __CONFIG_H */
diff --git a/arch/ppc/boards/geip-da923rc/da923rc.c b/arch/ppc/boards/geip-da923rc/da923rc.c
deleted file mode 100644
index 6ec4ee2..0000000
--- a/arch/ppc/boards/geip-da923rc/da923rc.c
+++ /dev/null
@@ -1,218 +0,0 @@
-/*
- * Copyright 2013 GE Intelligent Platforms, Inc.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * GEIP DA923RC/GBX460 board support.
- */
-
-#include <common.h>
-#include <console.h>
-#include <init.h>
-#include <memory.h>
-#include <driver.h>
-#include <asm/io.h>
-#include <net.h>
-#include <gpio.h>
-#include <envfs.h>
-#include <platform_data/serial-ns16550.h>
-#include <partition.h>
-#include <environment.h>
-#include <i2c/i2c.h>
-#include <asm/fsl_ddr_sdram.h>
-#include <asm/cache.h>
-#include <mach/mmu.h>
-#include <mach/mpc85xx.h>
-#include <mach/immap_85xx.h>
-#include <mach/gianfar.h>
-#include <mach/gpio.h>
-#include <mach/clock.h>
-#include <mach/fsl_i2c.h>
-#include "product_data.h"
-
-static struct gfar_info_struct gfar_info[] = {
-	{
-	 .phyaddr = 7,
-	 .tbiana = 0,
-	 .tbicr = 0,
-	 .mdiobus_tbi = 0,
-	 },
-};
-
-struct i2c_platform_data i2cplat[] = {
-	{
-	 .bitrate = 400000,
-	 },
-	{
-	 .bitrate = 400000,
-	 },
-};
-
-static struct board_info binfo;
-
-static int board_eth_init(void)
-{
-	void __iomem *gur = IOMEM(MPC85xx_GUTS_ADDR);
-	struct ge_product_data product;
-	int st;
-
-	/* Toggle eth0 reset pin */
-	gpio_set_value(4, 0);
-	udelay(5);
-	gpio_set_value(4, 1);
-
-	/* Disable eTSEC3 */
-	out_be32(gur + MPC85xx_DEVDISR_OFFSET,
-		 in_be32(gur + MPC85xx_DEVDISR_OFFSET) &
-		 ~MPC85xx_DEVDISR_TSEC3);
-
-	st = ge_get_product_data(&product);
-	if (((product.v2.mac.count > 0) && (product.v2.mac.count <= MAX_MAC))
-	    && (st == 0))
-		eth_register_ethaddr(0, (const char *)&product.v2.mac.mac[0]);
-
-	fsl_eth_init(1, &gfar_info[0]);
-
-	return 0;
-}
-
-static int da923rc_devices_init(void)
-{
-	add_cfi_flash_device(0, 0xfe000000, 32 << 20, 0);
-	devfs_add_partition("nor0", 0x0, 0x8000, DEVFS_PARTITION_FIXED, "env0");
-	devfs_add_partition("nor0", 0x1f80000, 8 << 16, DEVFS_PARTITION_FIXED,
-			    "self0");
-	add_generic_device("i2c-fsl", 0, NULL, I2C1_BASE_ADDR, 0x100,
-			   IORESOURCE_MEM, &i2cplat[0]);
-	add_generic_device("i2c-fsl", 1, NULL, I2C2_BASE_ADDR, 0x100,
-			   IORESOURCE_MEM, &i2cplat[1]);
-
-	board_eth_init();
-
-	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
-		defaultenv_append_directory(defaultenv_geip_da923rc);
-
-	return 0;
-}
-
-device_initcall(da923rc_devices_init);
-
-static struct NS16550_plat serial_plat = {
-	.clock = 0,
-	.shift = 0,
-};
-
-static int da923rc_console_init(void)
-{
-	if (binfo.bid == BOARD_TYPE_DA923)
-		barebox_set_model("DA923RC");
-	else if (binfo.bid == BOARD_TYPE_GBX460)
-		barebox_set_model("GBX460");
-	else
-		barebox_set_model("unknown");
-
-	serial_plat.clock = fsl_get_bus_freq(0);
-	add_ns16550_device(1, CFG_CCSRBAR + 0x4600, 16,
-			   IORESOURCE_MEM | IORESOURCE_MEM_8BIT,
-			   &serial_plat);
-	return 0;
-}
-
-console_initcall(da923rc_console_init);
-
-static int da923rc_mem_init(void)
-{
-	barebox_add_memory_bank("ram0", 0x0, fsl_get_effective_memsize());
-	return 0;
-}
-
-mem_initcall(da923rc_mem_init);
-
-static int da923rc_board_init_r(void)
-{
-	void __iomem *lbc = LBC_BASE_ADDR;
-	void __iomem *ecm = IOMEM(MPC85xx_ECM_ADDR);
-	void __iomem *pci = IOMEM(PCI1_BASE_ADDR);
-	const unsigned int flashbase = (BOOT_BLOCK + 0x2000000);
-	uint8_t flash_esel;
-
-	da923rc_boardinfo_get(&binfo);
-
-	flush_dcache();
-	invalidate_icache();
-
-	/* Clear LBC error interrupts */
-	out_be32(lbc + FSL_LBC_LTESR_OFFSET, 0xffffffff);
-	/* Enable LBC error interrupts */
-	out_be32(lbc + FSL_LBC_LTEIR_OFFSET, 0xffffffff);
-	/* Clear ecm errors */
-	out_be32(ecm + MPC85xx_ECM_EEDR_OFFSET, 0xffffffff);
-	/* Enable ecm errors */
-	out_be32(ecm + MPC85xx_ECM_EEER_OFFSET, 0xffffffff);
-
-	/* Re-map boot flash */
-	fsl_set_lbc_br(0, BR_PHYS_ADDR(0xfe000000) | BR_PS_16 | BR_V);
-	fsl_set_lbc_or(0, 0xfe006e21);
-
-	/* Invalidate TLB entry for boot block */
-	flash_esel = e500_find_tlb_idx((void *)flashbase, 1);
-	e500_disable_tlb(flash_esel);
-	flash_esel = e500_find_tlb_idx((void *)(flashbase + 0x1000000), 1);
-	e500_disable_tlb(flash_esel);
-
-	/* Boot block back to cache inhibited. */
-	e500_set_tlb(1, BOOT_BLOCK + (2 * 0x1000000),
-		     BOOT_BLOCK + (2 * 0x1000000),
-		     MAS3_SX | MAS3_SW | MAS3_SR, MAS2_I | MAS2_G | MAS2_M,
-		     0, 2, BOOKE_PAGESZ_16M, 1);
-	e500_set_tlb(1, BOOT_BLOCK + (3 * 0x1000000),
-		     BOOT_BLOCK + (3 * 0x1000000),
-		     MAS3_SX | MAS3_SW | MAS3_SR, MAS2_I | MAS2_G | MAS2_M,
-		     0, 3, BOOKE_PAGESZ_16M, 1);
-
-	fsl_l2_cache_init();
-
-	fsl_enable_gpiout();
-	/* Enable NOR low voltage programming (gpio 2) and write (gpio 3). */
-	gpio_set_value(2, 1);
-	gpio_set_value(3, 1);
-
-	/* Enable write to NAND flash */
-	if (binfo.bid == BOARD_TYPE_GBX460) {
-		/* Map CPLD */
-		fsl_set_lbc_br(3, BR_PHYS_ADDR(0xfc010000) | BR_PS_16 | BR_V);
-		fsl_set_lbc_or(3, 0xffffe001);
-		/* Enable all reset */
-		out_be16(IOMEM(0xfc010044), 0xffff);
-		gpio_set_value(6, 1);
-	}
-
-	/* Board reset and PHY reset. Disable CS3. */
-	if (binfo.bid == BOARD_TYPE_DA923) {
-		gpio_set_value(0, 0);
-		gpio_set_value(1, 1);
-		/* De-assert Board reset */
-		udelay(1000);
-		gpio_set_value(0, 1);
-	}
-
-	/* Enable PCI error reporting */
-	out_be32(pci + 0xe00, 0x80000040);
-	out_be32(pci + 0xe08, 0x6bf);
-	out_be32(pci + 0xe0c, 0xbb1fa001);
-	/* 32-bytes cacheline size */
-	out_be32(pci, 0x8000000c);
-	out_le32(pci + 4, 0x00008008);
-
-	return 0;
-}
-
-postcore_initcall(da923rc_board_init_r);
diff --git a/arch/ppc/boards/geip-da923rc/ddr.c b/arch/ppc/boards/geip-da923rc/ddr.c
deleted file mode 100644
index fc0c50c..0000000
--- a/arch/ppc/boards/geip-da923rc/ddr.c
+++ /dev/null
@@ -1,169 +0,0 @@
-/*
- * Copyright 2013 GE Intelligent Platforms, Inc.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * Board specific DDR tuning.
- */
-
-#include <common.h>
-#include <mach/fsl_i2c.h>
-#include <mach/immap_85xx.h>
-#include <mach/clock.h>
-#include <asm/fsl_ddr_sdram.h>
-#include <asm/fsl_ddr_dimm_params.h>
-#include "product_data.h"
-
-static struct board_info *binfo =
-	(struct board_info *)(CFG_INIT_RAM_ADDR + CFG_INIT_RAM_SIZE -
-				sizeof(struct board_info));
-
-static u8 spd_addr = 0x50;
-
-static int da923rc_boardinfo_init(void)
-{
-	void __iomem *i2c = IOMEM(I2C1_BASE_ADDR);
-	uint8_t id;
-	int ret;
-
-	memset(binfo, 0, sizeof(struct board_info));
-
-	binfo->bid = BOARD_TYPE_UNKNOWN;
-	/* Read made from flash, use the DDR I2C API. */
-	fsl_i2c_init(i2c, 400000, 0x7f);
-	/* Read board id from offset 0. */
-	ret = fsl_i2c_read(i2c, 0x3b, 0, 1, &id, sizeof(uint8_t));
-	fsl_i2c_stop(i2c);
-
-	if (ret == 0) {
-		/*
-		 * Board ID:
-		 * 0-2 Hardware board
-		 * revision
-		 * 3-5 Board ID
-		 * 000b/010b/100b - DA923, 001 - GBX460
-		 * 6-7 Undefined 00
-		 */
-		binfo->rev = id & 7;
-		id &= 0x38;
-		id >>= 3;
-		switch (id) {
-		case 0:
-		case 2:
-		case 4:
-			binfo->bid = BOARD_TYPE_DA923;
-			break;
-		case 1:
-			binfo->bid = BOARD_TYPE_GBX460;
-			break;
-		default:
-			binfo->bid = BOARD_TYPE_NONE;
-		}
-	}
-
-	return ret;
-}
-
-void da923rc_boardinfo_get(struct board_info *bi)
-{
-	memcpy(bi, binfo, sizeof(struct board_info));
-}
-
-void fsl_ddr_board_info(struct ddr_board_info_s *info)
-{
-	info->fsl_ddr_ver = 0;
-	info->ddr_base = IOMEM(MPC85xx_DDR_ADDR);
-	/* Actual number of chip select used */
-	info->cs_per_ctrl = 1;
-	info->dimm_slots_per_ctrl = 1;
-	info->i2c_bus = 0;
-	info->i2c_slave = 0x7f;
-	info->i2c_speed = 400000;
-	info->i2c_base = IOMEM(I2C1_BASE_ADDR);
-	info->spd_i2c_addr = &spd_addr;
-}
-
-void fsl_ddr_board_options(struct memctl_options_s *popts,
-			   struct dimm_params_s *pdimm)
-{
-	da923rc_boardinfo_init();
-
-	/*
-	 * Clock adjustment in 1/8-cycle
-	 *      0 = Clock is launched aligned with address/command
-	 *      ...
-	 *      6 = 3/4 cycle late
-	 *      7 = 7/8 cycle late
-	 *      8 = 1 cycle late
-	 */
-	popts->clk_adjust = 8;
-
-	/*
-	 * /MCAS-to-preamble override. Defines the number of DRAM cycles
-	 * between when a read is issued and when the corresponding DQS
-	 * preamble is valid for the memory controller.
-	 *
-	 * Factors to consider for CPO:
-	 *      - frequency
-	 *      - ddr type
-	 */
-	popts->cpo_override = 9;
-
-	/*
-	 * Write command to write data strobe timing adjustment.
-	 * Factors to consider for write data delay:
-	 *      - number of DIMMs
-	 *
-	 * 1 = 1/4 clock delay
-	 * 2 = 1/2 clock delay
-	 * 3 = 3/4 clock delay
-	 * 4 = 1   clock delay
-	 * 5 = 5/4 clock delay
-	 * 6 = 3/2 clock delay
-	 */
-	popts->write_data_delay = 3;
-
-	/* 2T timing disabled. */
-	popts->twoT_en = 0;
-	if (pdimm->registered_dimm != 0)
-		hang();
-
-	/*
-	 * Factors to consider for half-strength driver enable:
-	 *      - number of DIMMs installed
-	 */
-	popts->half_strength_driver_enable = 1;
-
-	/* Enable additive latency override. */
-	popts->additive_latency_override = 1;
-	popts->additive_latency_override_value = 1;
-
-	/* 50000ps is valid for a 16-bit wide data bus */
-	popts->tFAW_window_four_activates_ps = 50000;
-
-	/* Allow ECC */
-	popts->ECC_mode = 1;
-	popts->data_init = 0;
-
-	/* DLL reset disable */
-	popts->dll_rst_dis = 1;
-
-	/* Powerdown timings in number of tCK.  */
-	popts->txard = 2;
-	popts->txp = 2;
-	popts->taxpd = 8;
-
-	/* Load mode timing in number of tCK. */
-	popts->tmrd = 2;
-
-	/* Assert ODT only during writes to CSn */
-	popts->cs_local_opts[0].odt_wr_cfg = FSL_DDR_ODT_CS;
-}
diff --git a/arch/ppc/boards/geip-da923rc/defaultenv-geip-da923rc/bin/boot b/arch/ppc/boards/geip-da923rc/defaultenv-geip-da923rc/bin/boot
deleted file mode 100644
index ce7da18..0000000
--- a/arch/ppc/boards/geip-da923rc/defaultenv-geip-da923rc/bin/boot
+++ /dev/null
@@ -1,9 +0,0 @@
-#!/bin/sh
-#Load the firmware images from the NOR UBIFS file system and boot
-
-readlink /mnt/active symlink
-
-bootargs="ubi.mtd=nand root=ubi0:fs-active rootfstype=ubifs rw panic=25"
-cp /mnt/$symlink/uImage /
-cp /mnt/$symlink/dtb /
-bootm -o /dtb /uImage
\ No newline at end of file
diff --git a/arch/ppc/boards/geip-da923rc/defaultenv-geip-da923rc/bin/init b/arch/ppc/boards/geip-da923rc/defaultenv-geip-da923rc/bin/init
deleted file mode 100644
index 80cc2cf..0000000
--- a/arch/ppc/boards/geip-da923rc/defaultenv-geip-da923rc/bin/init
+++ /dev/null
@@ -1,26 +0,0 @@
-#!/bin/sh
-export PATH=/env/bin
-
-source /env/config
-
-#Define a 26MB partition in flash starting at offset 0x20000
-addpart -n /dev/nor0 0x1a00000@0x20000(boot)
-ubiattach /dev/boot
-
-if [ $? -ne 0 ]; then
-	echo "Fail to attach UBI device"
-	exit 1;
-fi
-
-mkdir /mnt
-mount -t ubifs /dev/ubi0.boot /mnt
-
-echo
-echo -n "Hit ctrl-c to stop autoboot: "
-timeout -c 5
-
-if [ $? -ne 0 ]; then
-	exit 0
-fi
-
-boot
diff --git a/arch/ppc/boards/geip-da923rc/defaultenv-geip-da923rc/config b/arch/ppc/boards/geip-da923rc/defaultenv-geip-da923rc/config
deleted file mode 100644
index 79e2606..0000000
--- a/arch/ppc/boards/geip-da923rc/defaultenv-geip-da923rc/config
+++ /dev/null
@@ -1,4 +0,0 @@
-#!/bin/sh
-export bootargs="root=/dev/nfs rw ip=bootp"
-eth0.ipaddr=192.168.0.136
-eth0.serverip=192.168.0.102
diff --git a/arch/ppc/boards/geip-da923rc/law.c b/arch/ppc/boards/geip-da923rc/law.c
deleted file mode 100644
index 3d32c7e..0000000
--- a/arch/ppc/boards/geip-da923rc/law.c
+++ /dev/null
@@ -1,24 +0,0 @@
-/*
- * Copyright 2013 GE Intelligent Platforms, Inc.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
-
-#include <common.h>
-#include <asm/fsl_law.h>
-
-struct law_entry law_table[] = {
-	FSL_SET_LAW(0xf8000000, LAW_SIZE_128M, LAW_TRGT_IF_LBC),
-	FSL_SET_LAW(0xc0000000, LAW_SIZE_256M, LAW_TRGT_IF_PCI),
-	FSL_SET_LAW(0xe1000000, LAW_SIZE_64K, LAW_TRGT_IF_PCI),
-};
-
-int num_law_entries = ARRAY_SIZE(law_table);
diff --git a/arch/ppc/boards/geip-da923rc/nand.c b/arch/ppc/boards/geip-da923rc/nand.c
deleted file mode 100644
index 550d790..0000000
--- a/arch/ppc/boards/geip-da923rc/nand.c
+++ /dev/null
@@ -1,94 +0,0 @@
-/*
- * Copyright 2013 GE Intelligent Platforms, Inc
- * (C) Copyright 2008 Wolfgang Grandegger <wg@denx.de>
- * (C) Copyright 2006
- * Thomas Waehner, TQ-System GmbH, thomas.waehner@tqs.de.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
- * GNU General Public License for more details.
- *
- * This code only cares about setting up the UPM state machine for Linux
- * to use the NAND.
- */
-
-#include <common.h>
-#include <init.h>
-#include <asm/io.h>
-#include <asm/fsl_lbc.h>
-#include <mach/immap_85xx.h>
-
-/* NAND UPM tables for a 25Mhz bus frequency.  */
-static const u32 upm_patt_25[] = {
-	/* Single read data */
-	0xcff02c30, 0x0ff02c30, 0x0ff02c34, 0x0ff32c30,
-	0xfff32c31, 0xfff32c30, 0xfffffc30, 0xfffffc30,
-	/* UPM Read Burst RAM array entry -> NAND Write CMD */
-	0xcfaf2c30, 0x0faf2c30, 0x0faf2c30, 0x0fff2c34,
-	0xfffffc31, 0xfffffc30, 0xfffffc30, 0xfffffc30,
-	/* UPM Read Burst RAM array entry -> NAND Write ADDR */
-	0xcfa3ec30, 0x0fa3ec30, 0x0fa3ec30, 0x0ff3ec34,
-	0xfff3ec31, 0xfffffc30, 0xfffffc30, 0xfffffc30,
-	/* UPM Write Single RAM array entry -> NAND Write Data */
-	0x0ff32c30, 0x0fa32c30, 0x0fa32c34, 0x0ff32c30,
-	0xfff32c31, 0xfff0fc30, 0xfff0fc30, 0xfff0fc30,
-	/* Default */
-	0xfff3fc30, 0xfff3fc30, 0xfff6fc30, 0xfffcfc30,
-	0xfffcfc30, 0xfffcfc30, 0xfffcfc30, 0xfffcfc30,
-	0xfffcfc30, 0xfffcfc30, 0xfffcfc30, 0xfffcfc30,
-	0xfffdfc30, 0xfffffc30, 0xfffffc30, 0xfffffc31,
-	0xfffffc30, 0xfffffc00, 0xfffffc00, 0xfffffc00,
-	0xfffffc00, 0xfffffc00, 0xfffffc00, 0xfffffc00,
-	0xfffffc00, 0xfffffc00, 0xfffffc00, 0xfffffc01,
-	0xfffffc00, 0xfffffc00, 0xfffffc00, 0xfffffc01,
-};
-
-static void upm_write(uint8_t addr, uint32_t val)
-{
-	void __iomem *lbc = LBC_BASE_ADDR;
-
-	out_be32(lbc + FSL_LBC_MDR_OFFSET, val);
-	clrsetbits_be32(lbc + FSL_LBC_MAMR_OFFSET, MxMR_MAD_MSK,
-			MxMR_OP_WARR | (addr & MxMR_MAD_MSK));
-
-	/* dummy access to perform write */
-	out_8(IOMEM(0xfc000000), 0);
-	clrbits_be32(lbc + FSL_LBC_MAMR_OFFSET, MxMR_OP_WARR);
-}
-
-static int board_nand_init(void)
-{
-	void __iomem *mxmr = IOMEM(LBC_BASE_ADDR + FSL_LBC_MAMR_OFFSET);
-	int j;
-
-	/* Base register CS2:
-	 * - 0xfc000000
-	 * - 8-bit data width
-	 * - UPMA
-	 */
-	fsl_set_lbc_br(2, BR_PHYS_ADDR(0xfc000000) | BR_PS_8 | BR_MS_UPMA |
-		       BR_V);
-
-	/*
-	 * Otions register:
-	 * - 32KB window.
-	 * - Buffer control disabled.
-	 * - External address latch delay.
-	 */
-	fsl_set_lbc_or(2, 0xffffe001);
-
-	for (j = 0; j < 64; j++)
-		upm_write(j, upm_patt_25[j]);
-
-	out_be32(mxmr, MxMR_OP_NORM | MxMR_GPL_x4DIS);
-
-	return 0;
-}
-
-device_initcall(board_nand_init);
diff --git a/arch/ppc/boards/geip-da923rc/product_data.c b/arch/ppc/boards/geip-da923rc/product_data.c
deleted file mode 100644
index eda10a4..0000000
--- a/arch/ppc/boards/geip-da923rc/product_data.c
+++ /dev/null
@@ -1,83 +0,0 @@
-/*
- * Copyright 2013 GE Intelligent Platforms Inc.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * Retrieve and check the product data.
- */
-
-#include <common.h>
-#include <crc.h>
-#include <i2c/i2c.h>
-#include <mach/immap_85xx.h>
-#include <mach/fsl_i2c.h>
-#include "product_data.h"
-
-static int ge_pd_header_check(unsigned short header)
-{
-	if (header != 0xa5a5)
-		return -1;
-	else
-		return 0;
-}
-
-static int ge_is_data_valid(struct ge_product_data *v)
-{
-	int crc, ret = 0;
-	const unsigned char *p = (const unsigned char *)v;
-
-	if (ge_pd_header_check(v->v1.pdh.tag))
-		return -1;
-
-	switch (v->v1.pdh.version) {
-	case PDVERSION_V1:
-	case PDVERSION_V1bis:
-		crc = crc32(0, p, sizeof(struct product_data_v1) - 4);
-		if (crc != v->v1.crc32)
-			ret = -1;
-		break;
-	case PDVERSION_V2:
-		crc = crc32(0, p, sizeof(struct product_data_v2) - 4);
-		if (crc != v->v2.crc32)
-			ret = -1;
-		break;
-	default:
-		ret = -1;
-	}
-
-	return ret;
-}
-
-int ge_get_product_data(struct ge_product_data *productp)
-{
-	struct i2c_adapter *adapter;
-	struct i2c_client client;
-	unsigned int width = 0;
-	int ret;
-
-	adapter = i2c_get_adapter(0);
-	client.addr = 0x51;
-	client.adapter = adapter;
-	ret = i2c_read_reg(&client, 0, (uint8_t *) productp,
-			   sizeof(unsigned short));
-
-	/* If there is no valid header, it may be a 16-bit eeprom. */
-	if (ge_pd_header_check(productp->v1.pdh.tag))
-		width = I2C_ADDR_16_BIT;
-
-	ret = i2c_read_reg(&client, width, (uint8_t *) productp,
-			   sizeof(struct ge_product_data));
-
-	if (ret == sizeof(struct ge_product_data))
-		ret = ge_is_data_valid(productp);
-
-	return ret;
-}
diff --git a/arch/ppc/boards/geip-da923rc/product_data.h b/arch/ppc/boards/geip-da923rc/product_data.h
deleted file mode 100644
index f172fb5..0000000
--- a/arch/ppc/boards/geip-da923rc/product_data.h
+++ /dev/null
@@ -1,62 +0,0 @@
-/*
- * Copyright 2013 GE Intelligent Platforms, Inc.
- *
- * The product data structure and function prototypes.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
-
-struct board_info {
-	uint32_t bid;
-	uint32_t rev;
-};
-
-#define MAX_MAC		8
-enum product_data_version {
-	PDVERSION_V1 = 1,
-	PDVERSION_V1bis = 0x10,
-	PDVERSION_V2 = 2,
-	PDVERSION_MAX = PDVERSION_V2,
-};
-
-struct __attribute__ ((__packed__)) product_data_header {
-	unsigned short tag;
-	unsigned char version;
-	unsigned short len;
-};
-
-struct __attribute__ ((__packed__)) mac {
-	unsigned char count;
-	unsigned char mac[MAX_MAC][6];
-};
-
-struct __attribute__ ((__packed__)) product_data_v1 {
-	struct product_data_header pdh;
-	struct mac mac;
-	int crc32;
-};
-
-struct __attribute__ ((__packed__)) product_data_v2 {
-	struct product_data_header pdh;
-	struct mac mac;
-	char sn[8];
-	int crc32;
-};
-
-struct __attribute__ ((__packed__)) ge_product_data {
-	union {
-		struct product_data_v1 v1;
-		struct product_data_v2 v2;
-	};
-};
-
-extern int ge_get_product_data(struct ge_product_data *productp);
-extern void da923rc_boardinfo_get(struct board_info *bi);
diff --git a/arch/ppc/boards/geip-da923rc/tlb.c b/arch/ppc/boards/geip-da923rc/tlb.c
deleted file mode 100644
index 889e274..0000000
--- a/arch/ppc/boards/geip-da923rc/tlb.c
+++ /dev/null
@@ -1,69 +0,0 @@
-/*
- * Copyright 2013 GE Intelligent Platforms, Inc.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
-
-#include <common.h>
-#include <mach/mmu.h>
-
-struct fsl_e_tlb_entry tlb_table[] = {
-	/* TLB 0 - for temp stack in cache */
-	FSL_SET_TLB_ENTRY(0, CFG_INIT_RAM_ADDR, CFG_INIT_RAM_ADDR,
-			  MAS3_SX | MAS3_SW | MAS3_SR, 0,
-			  0, 0, BOOKE_PAGESZ_4K, 0),
-	FSL_SET_TLB_ENTRY(0, CFG_INIT_RAM_ADDR + (4 * 1024),
-			  CFG_INIT_RAM_ADDR + (4 * 1024),
-			  MAS3_SX | MAS3_SW | MAS3_SR, 0,
-			  0, 0, BOOKE_PAGESZ_4K, 0),
-	FSL_SET_TLB_ENTRY(0, CFG_INIT_RAM_ADDR + (8 * 1024),
-			  CFG_INIT_RAM_ADDR + (8 * 1024),
-			  MAS3_SX | MAS3_SW | MAS3_SR, 0,
-			  0, 0, BOOKE_PAGESZ_4K, 0),
-	FSL_SET_TLB_ENTRY(0, CFG_INIT_RAM_ADDR + (12 * 1024),
-			  CFG_INIT_RAM_ADDR + (12 * 1024),
-			  MAS3_SX | MAS3_SW | MAS3_SR, 0,
-			  0, 0, BOOKE_PAGESZ_4K, 0),
-	/*
-	 * TLB 0/1:     2x16M     Cache inhibited, guarded
-	 * CPLD and NAND in cache-inhibited area.
-	 */
-	FSL_SET_TLB_ENTRY(1, BOOT_BLOCK, BOOT_BLOCK,
-			  MAS3_SX | MAS3_SW | MAS3_SR,
-			  MAS2_W | MAS2_I | MAS2_G | MAS2_M,
-			  0, 0, BOOKE_PAGESZ_16M, 1),
-	FSL_SET_TLB_ENTRY(1, BOOT_BLOCK + 0x1000000,
-			  BOOT_BLOCK + 0x1000000,
-			  MAS3_SX | MAS3_SW | MAS3_SR,
-			  MAS2_W | MAS2_I | MAS2_G | MAS2_M,
-			  0, 1, BOOKE_PAGESZ_16M, 1),
-	/*
-	 * The boot flash is mapped with the cache enabled.
-	 * TLB 2/3:     2x16M     Cacheable Write-through, guarded
-	 */
-	FSL_SET_TLB_ENTRY(1, BOOT_BLOCK + (2 * 0x1000000),
-			  BOOT_BLOCK + (2 * 0x1000000),
-			  MAS3_SX | MAS3_SW | MAS3_SR,
-			  MAS2_W | MAS2_G | MAS2_M,
-			  0, 2, BOOKE_PAGESZ_16M, 1),
-	FSL_SET_TLB_ENTRY(1, BOOT_BLOCK + (3 * 0x1000000),
-			  BOOT_BLOCK + (3 * 0x1000000),
-			  MAS3_SX | MAS3_SW | MAS3_SR,
-			  MAS2_W | MAS2_G | MAS2_M,
-			  0, 3, BOOKE_PAGESZ_16M, 1),
-
-	FSL_SET_TLB_ENTRY(1, CFG_CCSRBAR, CFG_CCSRBAR_PHYS,
-			  MAS3_SX | MAS3_SW | MAS3_SR,
-			  MAS2_I | MAS2_G,
-			  0, 4, BOOKE_PAGESZ_64M, 1),
-};
-
-int num_tlb_entries = ARRAY_SIZE(tlb_table);
diff --git a/arch/ppc/boards/owc-da923rc/Makefile b/arch/ppc/boards/owc-da923rc/Makefile
new file mode 100644
index 0000000..7177bfa
--- /dev/null
+++ b/arch/ppc/boards/owc-da923rc/Makefile
@@ -0,0 +1,7 @@
+obj-y += da923rc.o
+obj-y += tlb.o
+obj-y += law.o
+obj-y += ddr.o
+obj-y += nand.o
+obj-y += product_data.o
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-geip-da923rc
diff --git a/arch/ppc/boards/owc-da923rc/config.h b/arch/ppc/boards/owc-da923rc/config.h
new file mode 100644
index 0000000..3895324
--- /dev/null
+++ b/arch/ppc/boards/owc-da923rc/config.h
@@ -0,0 +1,53 @@
+/*
+ * Copyright 2013 GE Intelligent Platforms, Inc.
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
+ *
+ * DA923RC board configuration file.
+ */
+
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#define CFG_SYS_CLK_FREQ	66666666
+
+#define CFG_FLASH_CFI_WIDTH FLASH_CFI_16BIT
+#define CFG_CHIP_SELECTS_PER_CTRL   1
+
+/*
+ * Memory map
+ *
+ * 0x0000_0000	0x1fff_ffff	DDR		512MB Cacheable
+ * 0xe000_0000	0xe00f_ffff	CCSR		1M non-cacheable
+ * 0xf400_0000	0xf400_3fff	L1 for stack	4K Cacheable TLB0
+ *
+ */
+#define CFG_SDRAM_BASE		0x00000000
+
+#define CFG_CCSRBAR_DEFAULT	0xff700000
+#define CFG_CCSRBAR		0xe0000000
+#define CFG_CCSRBAR_PHYS	CFG_CCSRBAR
+#define CFG_IMMR		CFG_CCSRBAR
+
+/* Initial memory for global storage and stack.  */
+#define CFG_INIT_RAM_ADDR	0xf4000000
+#define CFG_INIT_RAM_SIZE	0x00004000
+#define CFG_INIT_BI_SIZE	0x100
+#define CFG_INIT_SP_OFFSET	(CFG_INIT_RAM_SIZE - CFG_INIT_BI_SIZE)
+
+#define BOOT_BLOCK		0xfc000000
+
+#define BOARD_TYPE_UNKNOWN	-1
+#define BOARD_TYPE_NONE		0
+#define BOARD_TYPE_DA923	1
+#define BOARD_TYPE_GBX460	2
+
+#endif /* __CONFIG_H */
diff --git a/arch/ppc/boards/owc-da923rc/da923rc.c b/arch/ppc/boards/owc-da923rc/da923rc.c
new file mode 100644
index 0000000..6ec4ee2
--- /dev/null
+++ b/arch/ppc/boards/owc-da923rc/da923rc.c
@@ -0,0 +1,218 @@
+/*
+ * Copyright 2013 GE Intelligent Platforms, Inc.
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
+ *
+ * GEIP DA923RC/GBX460 board support.
+ */
+
+#include <common.h>
+#include <console.h>
+#include <init.h>
+#include <memory.h>
+#include <driver.h>
+#include <asm/io.h>
+#include <net.h>
+#include <gpio.h>
+#include <envfs.h>
+#include <platform_data/serial-ns16550.h>
+#include <partition.h>
+#include <environment.h>
+#include <i2c/i2c.h>
+#include <asm/fsl_ddr_sdram.h>
+#include <asm/cache.h>
+#include <mach/mmu.h>
+#include <mach/mpc85xx.h>
+#include <mach/immap_85xx.h>
+#include <mach/gianfar.h>
+#include <mach/gpio.h>
+#include <mach/clock.h>
+#include <mach/fsl_i2c.h>
+#include "product_data.h"
+
+static struct gfar_info_struct gfar_info[] = {
+	{
+	 .phyaddr = 7,
+	 .tbiana = 0,
+	 .tbicr = 0,
+	 .mdiobus_tbi = 0,
+	 },
+};
+
+struct i2c_platform_data i2cplat[] = {
+	{
+	 .bitrate = 400000,
+	 },
+	{
+	 .bitrate = 400000,
+	 },
+};
+
+static struct board_info binfo;
+
+static int board_eth_init(void)
+{
+	void __iomem *gur = IOMEM(MPC85xx_GUTS_ADDR);
+	struct ge_product_data product;
+	int st;
+
+	/* Toggle eth0 reset pin */
+	gpio_set_value(4, 0);
+	udelay(5);
+	gpio_set_value(4, 1);
+
+	/* Disable eTSEC3 */
+	out_be32(gur + MPC85xx_DEVDISR_OFFSET,
+		 in_be32(gur + MPC85xx_DEVDISR_OFFSET) &
+		 ~MPC85xx_DEVDISR_TSEC3);
+
+	st = ge_get_product_data(&product);
+	if (((product.v2.mac.count > 0) && (product.v2.mac.count <= MAX_MAC))
+	    && (st == 0))
+		eth_register_ethaddr(0, (const char *)&product.v2.mac.mac[0]);
+
+	fsl_eth_init(1, &gfar_info[0]);
+
+	return 0;
+}
+
+static int da923rc_devices_init(void)
+{
+	add_cfi_flash_device(0, 0xfe000000, 32 << 20, 0);
+	devfs_add_partition("nor0", 0x0, 0x8000, DEVFS_PARTITION_FIXED, "env0");
+	devfs_add_partition("nor0", 0x1f80000, 8 << 16, DEVFS_PARTITION_FIXED,
+			    "self0");
+	add_generic_device("i2c-fsl", 0, NULL, I2C1_BASE_ADDR, 0x100,
+			   IORESOURCE_MEM, &i2cplat[0]);
+	add_generic_device("i2c-fsl", 1, NULL, I2C2_BASE_ADDR, 0x100,
+			   IORESOURCE_MEM, &i2cplat[1]);
+
+	board_eth_init();
+
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_geip_da923rc);
+
+	return 0;
+}
+
+device_initcall(da923rc_devices_init);
+
+static struct NS16550_plat serial_plat = {
+	.clock = 0,
+	.shift = 0,
+};
+
+static int da923rc_console_init(void)
+{
+	if (binfo.bid == BOARD_TYPE_DA923)
+		barebox_set_model("DA923RC");
+	else if (binfo.bid == BOARD_TYPE_GBX460)
+		barebox_set_model("GBX460");
+	else
+		barebox_set_model("unknown");
+
+	serial_plat.clock = fsl_get_bus_freq(0);
+	add_ns16550_device(1, CFG_CCSRBAR + 0x4600, 16,
+			   IORESOURCE_MEM | IORESOURCE_MEM_8BIT,
+			   &serial_plat);
+	return 0;
+}
+
+console_initcall(da923rc_console_init);
+
+static int da923rc_mem_init(void)
+{
+	barebox_add_memory_bank("ram0", 0x0, fsl_get_effective_memsize());
+	return 0;
+}
+
+mem_initcall(da923rc_mem_init);
+
+static int da923rc_board_init_r(void)
+{
+	void __iomem *lbc = LBC_BASE_ADDR;
+	void __iomem *ecm = IOMEM(MPC85xx_ECM_ADDR);
+	void __iomem *pci = IOMEM(PCI1_BASE_ADDR);
+	const unsigned int flashbase = (BOOT_BLOCK + 0x2000000);
+	uint8_t flash_esel;
+
+	da923rc_boardinfo_get(&binfo);
+
+	flush_dcache();
+	invalidate_icache();
+
+	/* Clear LBC error interrupts */
+	out_be32(lbc + FSL_LBC_LTESR_OFFSET, 0xffffffff);
+	/* Enable LBC error interrupts */
+	out_be32(lbc + FSL_LBC_LTEIR_OFFSET, 0xffffffff);
+	/* Clear ecm errors */
+	out_be32(ecm + MPC85xx_ECM_EEDR_OFFSET, 0xffffffff);
+	/* Enable ecm errors */
+	out_be32(ecm + MPC85xx_ECM_EEER_OFFSET, 0xffffffff);
+
+	/* Re-map boot flash */
+	fsl_set_lbc_br(0, BR_PHYS_ADDR(0xfe000000) | BR_PS_16 | BR_V);
+	fsl_set_lbc_or(0, 0xfe006e21);
+
+	/* Invalidate TLB entry for boot block */
+	flash_esel = e500_find_tlb_idx((void *)flashbase, 1);
+	e500_disable_tlb(flash_esel);
+	flash_esel = e500_find_tlb_idx((void *)(flashbase + 0x1000000), 1);
+	e500_disable_tlb(flash_esel);
+
+	/* Boot block back to cache inhibited. */
+	e500_set_tlb(1, BOOT_BLOCK + (2 * 0x1000000),
+		     BOOT_BLOCK + (2 * 0x1000000),
+		     MAS3_SX | MAS3_SW | MAS3_SR, MAS2_I | MAS2_G | MAS2_M,
+		     0, 2, BOOKE_PAGESZ_16M, 1);
+	e500_set_tlb(1, BOOT_BLOCK + (3 * 0x1000000),
+		     BOOT_BLOCK + (3 * 0x1000000),
+		     MAS3_SX | MAS3_SW | MAS3_SR, MAS2_I | MAS2_G | MAS2_M,
+		     0, 3, BOOKE_PAGESZ_16M, 1);
+
+	fsl_l2_cache_init();
+
+	fsl_enable_gpiout();
+	/* Enable NOR low voltage programming (gpio 2) and write (gpio 3). */
+	gpio_set_value(2, 1);
+	gpio_set_value(3, 1);
+
+	/* Enable write to NAND flash */
+	if (binfo.bid == BOARD_TYPE_GBX460) {
+		/* Map CPLD */
+		fsl_set_lbc_br(3, BR_PHYS_ADDR(0xfc010000) | BR_PS_16 | BR_V);
+		fsl_set_lbc_or(3, 0xffffe001);
+		/* Enable all reset */
+		out_be16(IOMEM(0xfc010044), 0xffff);
+		gpio_set_value(6, 1);
+	}
+
+	/* Board reset and PHY reset. Disable CS3. */
+	if (binfo.bid == BOARD_TYPE_DA923) {
+		gpio_set_value(0, 0);
+		gpio_set_value(1, 1);
+		/* De-assert Board reset */
+		udelay(1000);
+		gpio_set_value(0, 1);
+	}
+
+	/* Enable PCI error reporting */
+	out_be32(pci + 0xe00, 0x80000040);
+	out_be32(pci + 0xe08, 0x6bf);
+	out_be32(pci + 0xe0c, 0xbb1fa001);
+	/* 32-bytes cacheline size */
+	out_be32(pci, 0x8000000c);
+	out_le32(pci + 4, 0x00008008);
+
+	return 0;
+}
+
+postcore_initcall(da923rc_board_init_r);
diff --git a/arch/ppc/boards/owc-da923rc/ddr.c b/arch/ppc/boards/owc-da923rc/ddr.c
new file mode 100644
index 0000000..fc0c50c
--- /dev/null
+++ b/arch/ppc/boards/owc-da923rc/ddr.c
@@ -0,0 +1,169 @@
+/*
+ * Copyright 2013 GE Intelligent Platforms, Inc.
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
+ *
+ * Board specific DDR tuning.
+ */
+
+#include <common.h>
+#include <mach/fsl_i2c.h>
+#include <mach/immap_85xx.h>
+#include <mach/clock.h>
+#include <asm/fsl_ddr_sdram.h>
+#include <asm/fsl_ddr_dimm_params.h>
+#include "product_data.h"
+
+static struct board_info *binfo =
+	(struct board_info *)(CFG_INIT_RAM_ADDR + CFG_INIT_RAM_SIZE -
+				sizeof(struct board_info));
+
+static u8 spd_addr = 0x50;
+
+static int da923rc_boardinfo_init(void)
+{
+	void __iomem *i2c = IOMEM(I2C1_BASE_ADDR);
+	uint8_t id;
+	int ret;
+
+	memset(binfo, 0, sizeof(struct board_info));
+
+	binfo->bid = BOARD_TYPE_UNKNOWN;
+	/* Read made from flash, use the DDR I2C API. */
+	fsl_i2c_init(i2c, 400000, 0x7f);
+	/* Read board id from offset 0. */
+	ret = fsl_i2c_read(i2c, 0x3b, 0, 1, &id, sizeof(uint8_t));
+	fsl_i2c_stop(i2c);
+
+	if (ret == 0) {
+		/*
+		 * Board ID:
+		 * 0-2 Hardware board
+		 * revision
+		 * 3-5 Board ID
+		 * 000b/010b/100b - DA923, 001 - GBX460
+		 * 6-7 Undefined 00
+		 */
+		binfo->rev = id & 7;
+		id &= 0x38;
+		id >>= 3;
+		switch (id) {
+		case 0:
+		case 2:
+		case 4:
+			binfo->bid = BOARD_TYPE_DA923;
+			break;
+		case 1:
+			binfo->bid = BOARD_TYPE_GBX460;
+			break;
+		default:
+			binfo->bid = BOARD_TYPE_NONE;
+		}
+	}
+
+	return ret;
+}
+
+void da923rc_boardinfo_get(struct board_info *bi)
+{
+	memcpy(bi, binfo, sizeof(struct board_info));
+}
+
+void fsl_ddr_board_info(struct ddr_board_info_s *info)
+{
+	info->fsl_ddr_ver = 0;
+	info->ddr_base = IOMEM(MPC85xx_DDR_ADDR);
+	/* Actual number of chip select used */
+	info->cs_per_ctrl = 1;
+	info->dimm_slots_per_ctrl = 1;
+	info->i2c_bus = 0;
+	info->i2c_slave = 0x7f;
+	info->i2c_speed = 400000;
+	info->i2c_base = IOMEM(I2C1_BASE_ADDR);
+	info->spd_i2c_addr = &spd_addr;
+}
+
+void fsl_ddr_board_options(struct memctl_options_s *popts,
+			   struct dimm_params_s *pdimm)
+{
+	da923rc_boardinfo_init();
+
+	/*
+	 * Clock adjustment in 1/8-cycle
+	 *      0 = Clock is launched aligned with address/command
+	 *      ...
+	 *      6 = 3/4 cycle late
+	 *      7 = 7/8 cycle late
+	 *      8 = 1 cycle late
+	 */
+	popts->clk_adjust = 8;
+
+	/*
+	 * /MCAS-to-preamble override. Defines the number of DRAM cycles
+	 * between when a read is issued and when the corresponding DQS
+	 * preamble is valid for the memory controller.
+	 *
+	 * Factors to consider for CPO:
+	 *      - frequency
+	 *      - ddr type
+	 */
+	popts->cpo_override = 9;
+
+	/*
+	 * Write command to write data strobe timing adjustment.
+	 * Factors to consider for write data delay:
+	 *      - number of DIMMs
+	 *
+	 * 1 = 1/4 clock delay
+	 * 2 = 1/2 clock delay
+	 * 3 = 3/4 clock delay
+	 * 4 = 1   clock delay
+	 * 5 = 5/4 clock delay
+	 * 6 = 3/2 clock delay
+	 */
+	popts->write_data_delay = 3;
+
+	/* 2T timing disabled. */
+	popts->twoT_en = 0;
+	if (pdimm->registered_dimm != 0)
+		hang();
+
+	/*
+	 * Factors to consider for half-strength driver enable:
+	 *      - number of DIMMs installed
+	 */
+	popts->half_strength_driver_enable = 1;
+
+	/* Enable additive latency override. */
+	popts->additive_latency_override = 1;
+	popts->additive_latency_override_value = 1;
+
+	/* 50000ps is valid for a 16-bit wide data bus */
+	popts->tFAW_window_four_activates_ps = 50000;
+
+	/* Allow ECC */
+	popts->ECC_mode = 1;
+	popts->data_init = 0;
+
+	/* DLL reset disable */
+	popts->dll_rst_dis = 1;
+
+	/* Powerdown timings in number of tCK.  */
+	popts->txard = 2;
+	popts->txp = 2;
+	popts->taxpd = 8;
+
+	/* Load mode timing in number of tCK. */
+	popts->tmrd = 2;
+
+	/* Assert ODT only during writes to CSn */
+	popts->cs_local_opts[0].odt_wr_cfg = FSL_DDR_ODT_CS;
+}
diff --git a/arch/ppc/boards/owc-da923rc/defaultenv-owc-da923rc/bin/boot b/arch/ppc/boards/owc-da923rc/defaultenv-owc-da923rc/bin/boot
new file mode 100644
index 0000000..ce7da18
--- /dev/null
+++ b/arch/ppc/boards/owc-da923rc/defaultenv-owc-da923rc/bin/boot
@@ -0,0 +1,9 @@
+#!/bin/sh
+#Load the firmware images from the NOR UBIFS file system and boot
+
+readlink /mnt/active symlink
+
+bootargs="ubi.mtd=nand root=ubi0:fs-active rootfstype=ubifs rw panic=25"
+cp /mnt/$symlink/uImage /
+cp /mnt/$symlink/dtb /
+bootm -o /dtb /uImage
\ No newline at end of file
diff --git a/arch/ppc/boards/owc-da923rc/defaultenv-owc-da923rc/bin/init b/arch/ppc/boards/owc-da923rc/defaultenv-owc-da923rc/bin/init
new file mode 100644
index 0000000..80cc2cf
--- /dev/null
+++ b/arch/ppc/boards/owc-da923rc/defaultenv-owc-da923rc/bin/init
@@ -0,0 +1,26 @@
+#!/bin/sh
+export PATH=/env/bin
+
+source /env/config
+
+#Define a 26MB partition in flash starting at offset 0x20000
+addpart -n /dev/nor0 0x1a00000@0x20000(boot)
+ubiattach /dev/boot
+
+if [ $? -ne 0 ]; then
+	echo "Fail to attach UBI device"
+	exit 1;
+fi
+
+mkdir /mnt
+mount -t ubifs /dev/ubi0.boot /mnt
+
+echo
+echo -n "Hit ctrl-c to stop autoboot: "
+timeout -c 5
+
+if [ $? -ne 0 ]; then
+	exit 0
+fi
+
+boot
diff --git a/arch/ppc/boards/owc-da923rc/defaultenv-owc-da923rc/config b/arch/ppc/boards/owc-da923rc/defaultenv-owc-da923rc/config
new file mode 100644
index 0000000..79e2606
--- /dev/null
+++ b/arch/ppc/boards/owc-da923rc/defaultenv-owc-da923rc/config
@@ -0,0 +1,4 @@
+#!/bin/sh
+export bootargs="root=/dev/nfs rw ip=bootp"
+eth0.ipaddr=192.168.0.136
+eth0.serverip=192.168.0.102
diff --git a/arch/ppc/boards/owc-da923rc/law.c b/arch/ppc/boards/owc-da923rc/law.c
new file mode 100644
index 0000000..3d32c7e
--- /dev/null
+++ b/arch/ppc/boards/owc-da923rc/law.c
@@ -0,0 +1,24 @@
+/*
+ * Copyright 2013 GE Intelligent Platforms, Inc.
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
+#include <asm/fsl_law.h>
+
+struct law_entry law_table[] = {
+	FSL_SET_LAW(0xf8000000, LAW_SIZE_128M, LAW_TRGT_IF_LBC),
+	FSL_SET_LAW(0xc0000000, LAW_SIZE_256M, LAW_TRGT_IF_PCI),
+	FSL_SET_LAW(0xe1000000, LAW_SIZE_64K, LAW_TRGT_IF_PCI),
+};
+
+int num_law_entries = ARRAY_SIZE(law_table);
diff --git a/arch/ppc/boards/owc-da923rc/nand.c b/arch/ppc/boards/owc-da923rc/nand.c
new file mode 100644
index 0000000..550d790
--- /dev/null
+++ b/arch/ppc/boards/owc-da923rc/nand.c
@@ -0,0 +1,94 @@
+/*
+ * Copyright 2013 GE Intelligent Platforms, Inc
+ * (C) Copyright 2008 Wolfgang Grandegger <wg@denx.de>
+ * (C) Copyright 2006
+ * Thomas Waehner, TQ-System GmbH, thomas.waehner@tqs.de.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ * This code only cares about setting up the UPM state machine for Linux
+ * to use the NAND.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <asm/io.h>
+#include <asm/fsl_lbc.h>
+#include <mach/immap_85xx.h>
+
+/* NAND UPM tables for a 25Mhz bus frequency.  */
+static const u32 upm_patt_25[] = {
+	/* Single read data */
+	0xcff02c30, 0x0ff02c30, 0x0ff02c34, 0x0ff32c30,
+	0xfff32c31, 0xfff32c30, 0xfffffc30, 0xfffffc30,
+	/* UPM Read Burst RAM array entry -> NAND Write CMD */
+	0xcfaf2c30, 0x0faf2c30, 0x0faf2c30, 0x0fff2c34,
+	0xfffffc31, 0xfffffc30, 0xfffffc30, 0xfffffc30,
+	/* UPM Read Burst RAM array entry -> NAND Write ADDR */
+	0xcfa3ec30, 0x0fa3ec30, 0x0fa3ec30, 0x0ff3ec34,
+	0xfff3ec31, 0xfffffc30, 0xfffffc30, 0xfffffc30,
+	/* UPM Write Single RAM array entry -> NAND Write Data */
+	0x0ff32c30, 0x0fa32c30, 0x0fa32c34, 0x0ff32c30,
+	0xfff32c31, 0xfff0fc30, 0xfff0fc30, 0xfff0fc30,
+	/* Default */
+	0xfff3fc30, 0xfff3fc30, 0xfff6fc30, 0xfffcfc30,
+	0xfffcfc30, 0xfffcfc30, 0xfffcfc30, 0xfffcfc30,
+	0xfffcfc30, 0xfffcfc30, 0xfffcfc30, 0xfffcfc30,
+	0xfffdfc30, 0xfffffc30, 0xfffffc30, 0xfffffc31,
+	0xfffffc30, 0xfffffc00, 0xfffffc00, 0xfffffc00,
+	0xfffffc00, 0xfffffc00, 0xfffffc00, 0xfffffc00,
+	0xfffffc00, 0xfffffc00, 0xfffffc00, 0xfffffc01,
+	0xfffffc00, 0xfffffc00, 0xfffffc00, 0xfffffc01,
+};
+
+static void upm_write(uint8_t addr, uint32_t val)
+{
+	void __iomem *lbc = LBC_BASE_ADDR;
+
+	out_be32(lbc + FSL_LBC_MDR_OFFSET, val);
+	clrsetbits_be32(lbc + FSL_LBC_MAMR_OFFSET, MxMR_MAD_MSK,
+			MxMR_OP_WARR | (addr & MxMR_MAD_MSK));
+
+	/* dummy access to perform write */
+	out_8(IOMEM(0xfc000000), 0);
+	clrbits_be32(lbc + FSL_LBC_MAMR_OFFSET, MxMR_OP_WARR);
+}
+
+static int board_nand_init(void)
+{
+	void __iomem *mxmr = IOMEM(LBC_BASE_ADDR + FSL_LBC_MAMR_OFFSET);
+	int j;
+
+	/* Base register CS2:
+	 * - 0xfc000000
+	 * - 8-bit data width
+	 * - UPMA
+	 */
+	fsl_set_lbc_br(2, BR_PHYS_ADDR(0xfc000000) | BR_PS_8 | BR_MS_UPMA |
+		       BR_V);
+
+	/*
+	 * Otions register:
+	 * - 32KB window.
+	 * - Buffer control disabled.
+	 * - External address latch delay.
+	 */
+	fsl_set_lbc_or(2, 0xffffe001);
+
+	for (j = 0; j < 64; j++)
+		upm_write(j, upm_patt_25[j]);
+
+	out_be32(mxmr, MxMR_OP_NORM | MxMR_GPL_x4DIS);
+
+	return 0;
+}
+
+device_initcall(board_nand_init);
diff --git a/arch/ppc/boards/owc-da923rc/product_data.c b/arch/ppc/boards/owc-da923rc/product_data.c
new file mode 100644
index 0000000..eda10a4
--- /dev/null
+++ b/arch/ppc/boards/owc-da923rc/product_data.c
@@ -0,0 +1,83 @@
+/*
+ * Copyright 2013 GE Intelligent Platforms Inc.
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
+ *
+ * Retrieve and check the product data.
+ */
+
+#include <common.h>
+#include <crc.h>
+#include <i2c/i2c.h>
+#include <mach/immap_85xx.h>
+#include <mach/fsl_i2c.h>
+#include "product_data.h"
+
+static int ge_pd_header_check(unsigned short header)
+{
+	if (header != 0xa5a5)
+		return -1;
+	else
+		return 0;
+}
+
+static int ge_is_data_valid(struct ge_product_data *v)
+{
+	int crc, ret = 0;
+	const unsigned char *p = (const unsigned char *)v;
+
+	if (ge_pd_header_check(v->v1.pdh.tag))
+		return -1;
+
+	switch (v->v1.pdh.version) {
+	case PDVERSION_V1:
+	case PDVERSION_V1bis:
+		crc = crc32(0, p, sizeof(struct product_data_v1) - 4);
+		if (crc != v->v1.crc32)
+			ret = -1;
+		break;
+	case PDVERSION_V2:
+		crc = crc32(0, p, sizeof(struct product_data_v2) - 4);
+		if (crc != v->v2.crc32)
+			ret = -1;
+		break;
+	default:
+		ret = -1;
+	}
+
+	return ret;
+}
+
+int ge_get_product_data(struct ge_product_data *productp)
+{
+	struct i2c_adapter *adapter;
+	struct i2c_client client;
+	unsigned int width = 0;
+	int ret;
+
+	adapter = i2c_get_adapter(0);
+	client.addr = 0x51;
+	client.adapter = adapter;
+	ret = i2c_read_reg(&client, 0, (uint8_t *) productp,
+			   sizeof(unsigned short));
+
+	/* If there is no valid header, it may be a 16-bit eeprom. */
+	if (ge_pd_header_check(productp->v1.pdh.tag))
+		width = I2C_ADDR_16_BIT;
+
+	ret = i2c_read_reg(&client, width, (uint8_t *) productp,
+			   sizeof(struct ge_product_data));
+
+	if (ret == sizeof(struct ge_product_data))
+		ret = ge_is_data_valid(productp);
+
+	return ret;
+}
diff --git a/arch/ppc/boards/owc-da923rc/product_data.h b/arch/ppc/boards/owc-da923rc/product_data.h
new file mode 100644
index 0000000..f172fb5
--- /dev/null
+++ b/arch/ppc/boards/owc-da923rc/product_data.h
@@ -0,0 +1,62 @@
+/*
+ * Copyright 2013 GE Intelligent Platforms, Inc.
+ *
+ * The product data structure and function prototypes.
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
+struct board_info {
+	uint32_t bid;
+	uint32_t rev;
+};
+
+#define MAX_MAC		8
+enum product_data_version {
+	PDVERSION_V1 = 1,
+	PDVERSION_V1bis = 0x10,
+	PDVERSION_V2 = 2,
+	PDVERSION_MAX = PDVERSION_V2,
+};
+
+struct __attribute__ ((__packed__)) product_data_header {
+	unsigned short tag;
+	unsigned char version;
+	unsigned short len;
+};
+
+struct __attribute__ ((__packed__)) mac {
+	unsigned char count;
+	unsigned char mac[MAX_MAC][6];
+};
+
+struct __attribute__ ((__packed__)) product_data_v1 {
+	struct product_data_header pdh;
+	struct mac mac;
+	int crc32;
+};
+
+struct __attribute__ ((__packed__)) product_data_v2 {
+	struct product_data_header pdh;
+	struct mac mac;
+	char sn[8];
+	int crc32;
+};
+
+struct __attribute__ ((__packed__)) ge_product_data {
+	union {
+		struct product_data_v1 v1;
+		struct product_data_v2 v2;
+	};
+};
+
+extern int ge_get_product_data(struct ge_product_data *productp);
+extern void da923rc_boardinfo_get(struct board_info *bi);
diff --git a/arch/ppc/boards/owc-da923rc/tlb.c b/arch/ppc/boards/owc-da923rc/tlb.c
new file mode 100644
index 0000000..889e274
--- /dev/null
+++ b/arch/ppc/boards/owc-da923rc/tlb.c
@@ -0,0 +1,69 @@
+/*
+ * Copyright 2013 GE Intelligent Platforms, Inc.
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
+	/*
+	 * TLB 0/1:     2x16M     Cache inhibited, guarded
+	 * CPLD and NAND in cache-inhibited area.
+	 */
+	FSL_SET_TLB_ENTRY(1, BOOT_BLOCK, BOOT_BLOCK,
+			  MAS3_SX | MAS3_SW | MAS3_SR,
+			  MAS2_W | MAS2_I | MAS2_G | MAS2_M,
+			  0, 0, BOOKE_PAGESZ_16M, 1),
+	FSL_SET_TLB_ENTRY(1, BOOT_BLOCK + 0x1000000,
+			  BOOT_BLOCK + 0x1000000,
+			  MAS3_SX | MAS3_SW | MAS3_SR,
+			  MAS2_W | MAS2_I | MAS2_G | MAS2_M,
+			  0, 1, BOOKE_PAGESZ_16M, 1),
+	/*
+	 * The boot flash is mapped with the cache enabled.
+	 * TLB 2/3:     2x16M     Cacheable Write-through, guarded
+	 */
+	FSL_SET_TLB_ENTRY(1, BOOT_BLOCK + (2 * 0x1000000),
+			  BOOT_BLOCK + (2 * 0x1000000),
+			  MAS3_SX | MAS3_SW | MAS3_SR,
+			  MAS2_W | MAS2_G | MAS2_M,
+			  0, 2, BOOKE_PAGESZ_16M, 1),
+	FSL_SET_TLB_ENTRY(1, BOOT_BLOCK + (3 * 0x1000000),
+			  BOOT_BLOCK + (3 * 0x1000000),
+			  MAS3_SX | MAS3_SW | MAS3_SR,
+			  MAS2_W | MAS2_G | MAS2_M,
+			  0, 3, BOOKE_PAGESZ_16M, 1),
+
+	FSL_SET_TLB_ENTRY(1, CFG_CCSRBAR, CFG_CCSRBAR_PHYS,
+			  MAS3_SX | MAS3_SW | MAS3_SR,
+			  MAS2_I | MAS2_G,
+			  0, 4, BOOKE_PAGESZ_64M, 1),
+};
+
+int num_tlb_entries = ARRAY_SIZE(tlb_table);
diff --git a/arch/ppc/configs/da923rc_defconfig b/arch/ppc/configs/da923rc_defconfig
deleted file mode 100644
index 6c0a81e..0000000
--- a/arch/ppc/configs/da923rc_defconfig
+++ /dev/null
@@ -1,51 +0,0 @@
-CONFIG_ARCH_MPC85XX=y
-CONFIG_DA923RC=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x80000
-CONFIG_MALLOC_SIZE=0x4000000
-CONFIG_RELOCATABLE=y
-CONFIG_PROMPT="GE> "
-CONFIG_BAUDRATE=9600
-CONFIG_GLOB=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-# CONFIG_CMD_VERSION is not set
-CONFIG_CMD_GO=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_READLINK=y
-CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_GETOPT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_MIITOOL=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_MEMTEST=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_I2C=y
-CONFIG_CMD_OFTREE=y
-CONFIG_NET=y
-CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_DRIVER_NET_GIANFAR=y
-# CONFIG_SPI is not set
-CONFIG_I2C=y
-CONFIG_I2C_IMX=y
-CONFIG_MTD=y
-CONFIG_DRIVER_CFI=y
-# CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
-# CONFIG_DRIVER_CFI_BANK_WIDTH_4 is not set
-CONFIG_CFI_BUFFER_WRITE=y
-CONFIG_MTD_UBI=y
-CONFIG_FS_TFTP=y
-CONFIG_FS_UBIFS=y
-CONFIG_FS_UBIFS_COMPRESSION_LZO=y
-CONFIG_ZLIB=y
-CONFIG_BZLIB=y
diff --git a/arch/ppc/configs/owc_da923rc_defconfig b/arch/ppc/configs/owc_da923rc_defconfig
new file mode 100644
index 0000000..6c0a81e
--- /dev/null
+++ b/arch/ppc/configs/owc_da923rc_defconfig
@@ -0,0 +1,51 @@
+CONFIG_ARCH_MPC85XX=y
+CONFIG_DA923RC=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x80000
+CONFIG_MALLOC_SIZE=0x4000000
+CONFIG_RELOCATABLE=y
+CONFIG_PROMPT="GE> "
+CONFIG_BAUDRATE=9600
+CONFIG_GLOB=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+# CONFIG_CMD_VERSION is not set
+CONFIG_CMD_GO=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_READLINK=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_GETOPT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_OFTREE=y
+CONFIG_NET=y
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_DRIVER_NET_GIANFAR=y
+# CONFIG_SPI is not set
+CONFIG_I2C=y
+CONFIG_I2C_IMX=y
+CONFIG_MTD=y
+CONFIG_DRIVER_CFI=y
+# CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
+# CONFIG_DRIVER_CFI_BANK_WIDTH_4 is not set
+CONFIG_CFI_BUFFER_WRITE=y
+CONFIG_MTD_UBI=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_UBIFS=y
+CONFIG_FS_UBIFS_COMPRESSION_LZO=y
+CONFIG_ZLIB=y
+CONFIG_BZLIB=y
-- 
1.7.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
