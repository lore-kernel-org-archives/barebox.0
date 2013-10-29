Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og117.obsmtp.com ([64.18.0.149])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vb7Qy-0000UH-Hq
 for barebox@lists.infradead.org; Tue, 29 Oct 2013 11:26:10 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Tue, 29 Oct 2013 11:24:33 +0000
Message-Id: <1383045874-7641-6-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1383045874-7641-1-git-send-email-renaud.barbier@ge.com>
References: <1383045874-7641-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 5/6] ppc: DA923RC: add board support
To: barebox@lists.infradead.org

Add the GEIP DA923RC board support. This includes core
and updated header files as well as defconfig and make
files.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/boards/geip-da923rc/Makefile           |   7 +
 arch/ppc/boards/geip-da923rc/barebox.lds.S      | 159 +++++++++++++
 arch/ppc/boards/geip-da923rc/config.h           |  49 ++++
 arch/ppc/boards/geip-da923rc/da923rc.c          | 286 ++++++++++++++++++++++++
 arch/ppc/boards/geip-da923rc/ddr.c              | 110 +++++++++
 arch/ppc/boards/geip-da923rc/env/bin/init       |   4 +
 arch/ppc/boards/geip-da923rc/env/config         |   4 +
 arch/ppc/boards/geip-da923rc/law.c              |  24 ++
 arch/ppc/boards/geip-da923rc/nand.c             |  93 ++++++++
 arch/ppc/boards/geip-da923rc/product_data.c     |  64 ++++++
 arch/ppc/boards/geip-da923rc/product_data.h     |  56 +++++
 arch/ppc/boards/geip-da923rc/tlb.c              |  69 ++++++
 arch/ppc/configs/da923rc_defconfig              |  58 +++++
 arch/ppc/include/asm/fsl_lbc.h                  |  12 +
 arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h |  23 ++
 15 files changed, 1018 insertions(+)
 create mode 100644 arch/ppc/boards/geip-da923rc/Makefile
 create mode 100644 arch/ppc/boards/geip-da923rc/barebox.lds.S
 create mode 100644 arch/ppc/boards/geip-da923rc/config.h
 create mode 100644 arch/ppc/boards/geip-da923rc/da923rc.c
 create mode 100644 arch/ppc/boards/geip-da923rc/ddr.c
 create mode 100644 arch/ppc/boards/geip-da923rc/env/bin/init
 create mode 100644 arch/ppc/boards/geip-da923rc/env/config
 create mode 100644 arch/ppc/boards/geip-da923rc/law.c
 create mode 100644 arch/ppc/boards/geip-da923rc/nand.c
 create mode 100644 arch/ppc/boards/geip-da923rc/product_data.c
 create mode 100644 arch/ppc/boards/geip-da923rc/product_data.h
 create mode 100644 arch/ppc/boards/geip-da923rc/tlb.c
 create mode 100644 arch/ppc/configs/da923rc_defconfig

diff --git a/arch/ppc/boards/geip-da923rc/Makefile b/arch/ppc/boards/geip-da923rc/Makefile
new file mode 100644
index 0000000..0c28a79
--- /dev/null
+++ b/arch/ppc/boards/geip-da923rc/Makefile
@@ -0,0 +1,7 @@
+obj-y += da923rc.o
+obj-y += tlb.o
+obj-y += law.o
+obj-y += ddr.o
+obj-y += nand.o
+obj-y += product_data.o
+extra-y += barebox.lds
diff --git a/arch/ppc/boards/geip-da923rc/barebox.lds.S b/arch/ppc/boards/geip-da923rc/barebox.lds.S
new file mode 100644
index 0000000..185205c
--- /dev/null
+++ b/arch/ppc/boards/geip-da923rc/barebox.lds.S
@@ -0,0 +1,159 @@
+/*
+ * Copyright 2013 GE Intelligent Platforms, Inc.
+ * Copyright 2007-2009, 2011 Freescale Semiconductor, Inc.
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
+ */
+
+#include <asm-generic/barebox.lds.h>
+
+#define RESET_VECTOR_ADDRESS    0xfffffffc
+#define BSS_START_ADDRESS       0x2000
+
+OUTPUT_ARCH("powerpc")
+
+PHDRS
+{
+  text PT_LOAD;
+  bss PT_LOAD;
+}
+
+SECTIONS
+{
+  . = TEXT_BASE;
+
+  .interp        : { *(.interp)		}
+  .hash          : { *(.hash)		}
+  .dynsym        : { *(.dynsym)		}
+  .dynstr        : { *(.dynstr)		}
+  .rel.text      : { *(.rel.text)	}
+  .rela.text     : { *(.rela.text)	}
+  .rel.data      : { *(.rel.data)	}
+  .rela.data     : { *(.rela.data)	}
+  .rel.rodata    : { *(.rel.rodata)	}
+  .rela.rodata   : { *(.rela.rodata)}
+  .rel.got       : { *(.rel.got)	}
+  .rela.got      : { *(.rela.got)	}
+  .rel.ctors     : { *(.rel.ctors)	}
+  .rela.ctors    : { *(.rela.ctors)	}
+  .rel.dtors     : { *(.rel.dtors)	}
+  .rela.dtors    : { *(.rela.dtors)	}
+  .rel.bss       : { *(.rel.bss)	}
+  .rela.bss      : { *(.rela.bss)	}
+  .rel.plt       : { *(.rel.plt)	}
+  .rela.plt      : { *(.rela.plt)	}
+  .init          : { *(.init)		}
+  .plt           : { *(.plt)		}
+  .text      :
+  {
+    *(.text*)
+    *(.got1*)
+
+   } :text
+    _etext = .;
+    PROVIDE (etext = .);
+    _sdata = .;
+
+   .rodata    :
+   {
+    *(SORT_BY_ALIGNMENT(SORT_BY_NAME(.rodata*)))
+  } :text
+
+  /* Read-write section, merged into data segment: */
+  . = (. + 0x00FF) & 0xFFFFFF00;
+
+  _erotext = .;
+  PROVIDE (erotext = .);
+  .reloc   :
+  {
+    KEEP(*(.got))
+    _GOT2_TABLE_ = .;
+    KEEP(*(.got2))
+    PROVIDE(_GLOBAL_OFFSET_TABLE_ = . + 4);
+    _FIXUP_TABLE_ = .;
+    KEEP(*(.fixup))
+  }
+  __got2_entries = ((_FIXUP_TABLE_ - _GOT2_TABLE_) >> 2);
+  __fixup_entries = (. - _FIXUP_TABLE_) >> 2;
+
+  .data    :
+  {
+    *(.data*)
+    *(.data1*)
+    *(.sdata*)
+    *(.sdata2*)
+    *(.dynamic*)
+    CONSTRUCTORS
+  }
+  _edata  =  .;
+  PROVIDE (edata = .);
+
+  . = .;
+  __barebox_cmd_start = .;
+  .barebox_cmd : { BAREBOX_CMDS }
+  __barebox_cmd_end = .;
+
+  __barebox_initcalls_start = .;
+  .barebox_initcalls : { INITCALLS }
+  __barebox_initcalls_end = .;
+  __initcall_entries = (__barebox_initcalls_end - __barebox_initcalls_start)>>2;
+
+  __usymtab_start = .;
+  __usymtab : { BAREBOX_SYMS }
+  __usymtab_end = .;
+
+  __early_init_data_begin = .;
+  .early_init_data : { *(.early_init_data) }
+  __early_init_data_end = .;
+
+  . = .;
+  __start___ex_table = .;
+  __ex_table : { *(__ex_table) }
+  __stop___ex_table = .;
+
+  . = ALIGN(256);
+  __init_begin = .;
+  .text.init : { *(.text.init) }
+  .data.init : { *(.data.init) }
+  . = ALIGN(256);
+  __init_end = .;
+
+  __init_size = __init_end - _start;
+
+  .bootpg RESET_VECTOR_ADDRESS - 0xffc :
+  {
+    _text = .;
+    _stext = .;
+    arch/ppc/cpu-85xx/start.o	(.bootpg)
+  } :text = 0xffff
+
+  .resetvec RESET_VECTOR_ADDRESS :
+  {
+    KEEP(*(.resetvec))
+    arch/ppc/cpu-85xx/resetvec.o	(.resetvec)
+  } :text = 0xffff
+
+  . = RESET_VECTOR_ADDRESS + 0x4;
+
+  . = BSS_START_ADDRESS;
+  __bss_start = .;
+  .bss        :
+  {
+    *(.sbss*) *(.scommon*)
+    *(.dynbss*)
+    *(.bss*)
+    *(COMMON)
+  } :bss
+  . = ALIGN(4);
+  __bss_stop = .;
+  _end = . ;
+  PROVIDE (end = .);
+}
diff --git a/arch/ppc/boards/geip-da923rc/config.h b/arch/ppc/boards/geip-da923rc/config.h
new file mode 100644
index 0000000..5a98e85
--- /dev/null
+++ b/arch/ppc/boards/geip-da923rc/config.h
@@ -0,0 +1,49 @@
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
+#define CFG_BTB			/* toggle branch prediction */
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
+#define CFG_INIT_SP_OFFSET	CFG_INIT_RAM_SIZE
+
+#define BOOT_BLOCK		0xfc000000
+
+#endif /* __CONFIG_H */
+
diff --git a/arch/ppc/boards/geip-da923rc/da923rc.c b/arch/ppc/boards/geip-da923rc/da923rc.c
new file mode 100644
index 0000000..b4aa24d
--- /dev/null
+++ b/arch/ppc/boards/geip-da923rc/da923rc.c
@@ -0,0 +1,286 @@
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
+#include <ns16550.h>
+#include <partition.h>
+#include <environment.h>
+#include <i2c/i2c.h>
+#include <asm/fsl_ddr_sdram.h>
+#include <asm/cache.h>
+#include <mach/mmu.h>
+#include <mach/mpc85xx.h>
+#include <mach/immap_85xx.h>
+#include <mach/gianfar.h>
+#include <mach/clock.h>
+#include <mach/fsl_i2c.h>
+#include "product_data.h"
+
+#define BOARD_TYPE_NONE     0
+#define BOARD_TYPE_DA923    1
+#define BOARD_TYPE_GBX460   2
+
+static int get_mac(int, unsigned char *);
+static struct gfar_info_struct gfar_info[] = {
+	{
+		.phyaddr = 7,
+		.tbiana = 0,
+		.tbicr = 0,
+		.mdiobus_tbi = 0,
+		.mac_idx = 0,
+		.get_mac = get_mac,
+	},
+};
+
+struct i2c_platform_data i2cplat = {
+	.bitrate = 400000,
+};
+
+static int board_eth_init(void)
+{
+	void __iomem *gur = IOMEM(MPC85xx_GUTS_ADDR);
+	uint32_t gpoutdr = in_be32(gur + MPC85xx_GPOUTDR_OFFSET);
+
+	/* Toggle eth0 reset pin */
+	out_be32(gur + MPC85xx_GPOUTDR_OFFSET,
+			(gpoutdr & ~MPC85xx_GPIOBIT(4)));
+	udelay(5);
+	out_be32(gur + MPC85xx_GPOUTDR_OFFSET,
+			(gpoutdr | MPC85xx_GPIOBIT(4)));
+
+	/* Disable eTSEC3 */
+	out_be32(gur + MPC85xx_DEVDISR_OFFSET,
+			in_be32(gur + MPC85xx_DEVDISR_OFFSET) &
+			~MPC85xx_DEVDISR_TSEC3);
+
+	fsl_eth_init(1, &gfar_info[0]);
+
+	return 0;
+}
+
+static int devices_init(void)
+{
+	add_cfi_flash_device(0, 0xfe000000, 32 << 20, 0);
+	devfs_add_partition("nor0", 0x0, 0x8000, DEVFS_PARTITION_FIXED, "env0");
+	devfs_add_partition("nor0", 0x1f80000, 8 << 16, DEVFS_PARTITION_FIXED,
+			"self0");
+
+	add_generic_device("i2c-fsl", 0, NULL, I2C1_BASE_ADDR, 0x100,
+			IORESOURCE_MEM, &i2cplat);
+	add_generic_device("i2c-fsl", 1, NULL, I2C2_BASE_ADDR, 0x100,
+			IORESOURCE_MEM, &i2cplat);
+
+	board_eth_init();
+
+	return 0;
+}
+device_initcall(devices_init);
+
+static struct NS16550_plat serial_plat = {
+	.clock = 0,
+	.shift = 0,
+};
+
+static int da923rc_console_init(void)
+{
+	serial_plat.clock = fsl_get_bus_freq(0);
+	add_ns16550_device(1, CFG_CCSRBAR + 0x4600, 16, IORESOURCE_MEM_8BIT,
+			   &serial_plat);
+
+	return 0;
+}
+console_initcall(da923rc_console_init);
+
+static int mem_init(void)
+{
+	barebox_add_memory_bank("ram0", 0x0, fsl_get_effective_memsize());
+
+	return 0;
+}
+mem_initcall(mem_init);
+
+static int checkboard(void)
+{
+	void __iomem *lbc = LBC_BASE_ADDR;
+	void __iomem *ecm = IOMEM(MPC85xx_ECM_ADDR);
+	void __iomem *i2c = IOMEM(I2C1_BASE_ADDR);
+	int ret, board_type;
+	uint8_t id, rev;
+
+	/* Clear LBC error interrupts */
+	out_be32(lbc + FSL_LBC_LTESR_OFFSET, 0xffffffff);
+	/* Enable LBC error interrupts */
+	out_be32(lbc + FSL_LBC_LTEIR_OFFSET, 0xffffffff);
+	/* Clear ecm errors */
+	out_be32(ecm + MPC85xx_ECM_EEDR_OFFSET, 0xffffffff);
+	/* Enable ecm errors */
+	out_be32(ecm + MPC85xx_ECM_EEER_OFFSET,  0xffffffff);
+
+	fsl_i2c_init(0, 400000, 0x7f);
+	/* Read board id from offset 0. */
+	ret = fsl_i2c_read(i2c, 0x3b, 0, 1, &id, sizeof(uint8_t));
+	fsl_i2c_stop(i2c);
+
+	if (ret == -1) {
+		/* Enable I2C bus on GBX460. */
+		out_be16(IOMEM(0xfc010020), 0);
+		ret = fsl_i2c_read(i2c, 0x3b, 0, 1, &id, sizeof(uint8_t));
+		fsl_i2c_stop(i2c);
+	}
+
+	if (ret == 0) {
+		/*
+		 * Board ID:
+		 * 0-2 Hardware board revision
+		 * 3-5 Board ID 000b/010b/100b - DA923, 001 - GBX460
+		 * 6-7 Undefined 00
+		 */
+		rev = id & 7;
+		id &= 0x38;
+		id >>= 3;
+
+		switch (id) {
+		case 0:
+		case 2:
+		case 4:
+			board_type = BOARD_TYPE_DA923;
+			break;
+		case 1:
+			board_type = BOARD_TYPE_GBX460;
+			/* Enable all reset */
+			out_be16(IOMEM(0xfc010044), 0xffff);
+			break;
+		default:
+			board_type = BOARD_TYPE_NONE;
+		}
+	} else {
+		board_type = BOARD_TYPE_NONE;
+	}
+
+	return board_type;
+}
+
+static int board_init_r(void)
+{
+	void __iomem *gur = IOMEM(MPC85xx_GUTS_ADDR);
+	void __iomem *pci = IOMEM(PCI1_BASE_ADDR);
+	uint gpiocr = in_be32(gur + MPC85xx_GPIOCR_OFFSET);
+	uint gpoutdr = in_be32(gur + MPC85xx_GPOUTDR_OFFSET);
+	const unsigned int flashbase = (BOOT_BLOCK + 0x2000000);
+	uint8_t flash_esel;
+	int board_type;
+
+	flush_dcache();
+	invalidate_icache();
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
+			BOOT_BLOCK + (2 * 0x1000000),
+			MAS3_SX | MAS3_SW | MAS3_SR, MAS2_I | MAS2_G | MAS2_M,
+			0, 2, BOOKE_PAGESZ_16M, 1);
+	e500_set_tlb(1, BOOT_BLOCK + (3 * 0x1000000),
+			BOOT_BLOCK + (3 * 0x1000000),
+			MAS3_SX | MAS3_SW | MAS3_SR, MAS2_I | MAS2_G | MAS2_M,
+			0, 3, BOOKE_PAGESZ_16M, 1);
+
+	fsl_l2_cache_init();
+
+	/* Map CPLD */
+	fsl_set_lbc_br(3, BR_PHYS_ADDR(0xfc010000) | BR_PS_16 | BR_V);
+	fsl_set_lbc_or(3, 0xffffe001);
+
+	board_type = checkboard();
+	if (board_type == BOARD_TYPE_DA923)
+		barebox_set_model("DA923RC");
+	else if (board_type == BOARD_TYPE_GBX460)
+		barebox_set_model("GBX460");
+	else
+		barebox_set_model("Unknown");
+
+	/* Enable the GPIO Out pins */
+	out_be32(gur + MPC85xx_GPIOCR_OFFSET,
+			(gpiocr | MPC85xx_GPIOCR_GPOUT));
+
+	/* Enable NOR low voltage programming (gpio 2) and write (gpio 3). */
+	gpoutdr |= (MPC85xx_GPIOBIT(2) | MPC85xx_GPIOBIT(3));
+
+	/* Enable write to NAND flash */
+	if (board_type == BOARD_TYPE_GBX460)
+		gpoutdr |= MPC85xx_GPIOBIT(6);
+
+	/* Board reset and PHY reset. Disable CS3. */
+	if (board_type == BOARD_TYPE_DA923) {
+		fsl_set_lbc_br(3, 0);
+		gpoutdr &= ~MPC85xx_GPIOBIT(0);
+		gpoutdr |= MPC85xx_GPIOBIT(1);
+	}
+	out_be32(gur + MPC85xx_GPOUTDR_OFFSET, gpoutdr);
+
+	/* De-assert Board reset */
+	if (board_type == BOARD_TYPE_DA923) {
+		udelay(1000);
+		gpoutdr |= MPC85xx_GPIOBIT(0);
+		out_be32(gur + MPC85xx_GPOUTDR_OFFSET, gpoutdr);
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
+core_initcall(board_init_r);
+
+static int get_mac(int idx, unsigned char *mac)
+{
+	struct ge_product_data product;
+	int ret;
+
+	ret = ge_get_product_data(&product);
+	if (ret != 0) {
+		pr_err("Failed to retrieve MAC address\n");
+		goto error;
+	} else if ((product.v2.mac.count < 1) ||
+			(product.v2.mac.count > MAX_MAC)) {
+		pr_err("Number of MAC entry out-of-range\n");
+		goto error;
+	} else {
+		memcpy(mac, &product.v2.mac.mac[idx], 6);
+	}
+
+	return ret;
+error:
+	return -ENODEV;
+}
diff --git a/arch/ppc/boards/geip-da923rc/ddr.c b/arch/ppc/boards/geip-da923rc/ddr.c
new file mode 100644
index 0000000..a7a07b8
--- /dev/null
+++ b/arch/ppc/boards/geip-da923rc/ddr.c
@@ -0,0 +1,110 @@
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
+#include <mach/immap_85xx.h>
+#include <mach/clock.h>
+#include <asm/fsl_ddr_sdram.h>
+#include <asm/fsl_ddr_dimm_params.h>
+
+static u8 spd_addr = 0x50;
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
+	/*
+	 * Clock adjustment in 1/8-cycle
+	 *	0 = Clock is launched aligned with address/command
+	 *	...
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
+	/* Enable ECC */
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
diff --git a/arch/ppc/boards/geip-da923rc/env/bin/init b/arch/ppc/boards/geip-da923rc/env/bin/init
new file mode 100644
index 0000000..6308999
--- /dev/null
+++ b/arch/ppc/boards/geip-da923rc/env/bin/init
@@ -0,0 +1,4 @@
+#!/bin/sh
+export PATH=/env/bin
+
+source /env/config
diff --git a/arch/ppc/boards/geip-da923rc/env/config b/arch/ppc/boards/geip-da923rc/env/config
new file mode 100644
index 0000000..79e2606
--- /dev/null
+++ b/arch/ppc/boards/geip-da923rc/env/config
@@ -0,0 +1,4 @@
+#!/bin/sh
+export bootargs="root=/dev/nfs rw ip=bootp"
+eth0.ipaddr=192.168.0.136
+eth0.serverip=192.168.0.102
diff --git a/arch/ppc/boards/geip-da923rc/law.c b/arch/ppc/boards/geip-da923rc/law.c
new file mode 100644
index 0000000..3d32c7e
--- /dev/null
+++ b/arch/ppc/boards/geip-da923rc/law.c
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
diff --git a/arch/ppc/boards/geip-da923rc/nand.c b/arch/ppc/boards/geip-da923rc/nand.c
new file mode 100644
index 0000000..aae5b63
--- /dev/null
+++ b/arch/ppc/boards/geip-da923rc/nand.c
@@ -0,0 +1,93 @@
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
+	void __iomem  *mxmr = IOMEM(LBC_BASE_ADDR + FSL_LBC_MAMR_OFFSET);
+	int j;
+
+	/* Base register CS2:
+	 * - 0xfc000000
+	 * - 8-bit data width
+	 * - UPMA
+	 */
+	fsl_set_lbc_br(2, BR_PHYS_ADDR(0xfc000000) | BR_PS_8 | BR_MS_UPMA |
+			BR_V);
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
+device_initcall(board_nand_init);
diff --git a/arch/ppc/boards/geip-da923rc/product_data.c b/arch/ppc/boards/geip-da923rc/product_data.c
new file mode 100644
index 0000000..2cf8dac
--- /dev/null
+++ b/arch/ppc/boards/geip-da923rc/product_data.c
@@ -0,0 +1,64 @@
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
+#include <i2c/i2c.h>
+#include <mach/immap_85xx.h>
+#include <mach/fsl_i2c.h>
+#include "product_data.h"
+
+static int ge_is_data_valid(struct ge_product_data *v)
+{
+	int crc, ret = 0;
+	const unsigned char *p = (const unsigned char *)v;
+
+	if (v->v1.pdh.tag != 0xa5a5)
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
+	void __iomem *i2c = IOMEM(I2C1_BASE_ADDR);
+	int ret;
+
+	fsl_i2c_init(0, 400000, 0x7f);
+	ret = fsl_i2c_read(i2c, 0x51, 0, 1, (uint8_t *)productp,
+			sizeof(struct ge_product_data));
+	fsl_i2c_stop(i2c);
+
+	if (ret == 0)
+		ret = ge_is_data_valid(productp);
+
+	return ret;
+}
diff --git a/arch/ppc/boards/geip-da923rc/product_data.h b/arch/ppc/boards/geip-da923rc/product_data.h
new file mode 100644
index 0000000..7348188
--- /dev/null
+++ b/arch/ppc/boards/geip-da923rc/product_data.h
@@ -0,0 +1,56 @@
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
diff --git a/arch/ppc/boards/geip-da923rc/tlb.c b/arch/ppc/boards/geip-da923rc/tlb.c
new file mode 100644
index 0000000..e66f57f
--- /dev/null
+++ b/arch/ppc/boards/geip-da923rc/tlb.c
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
+			MAS3_SX | MAS3_SW | MAS3_SR, 0,
+			0, 0, BOOKE_PAGESZ_4K, 0),
+	FSL_SET_TLB_ENTRY(0, CFG_INIT_RAM_ADDR + (4 * 1024),
+			CFG_INIT_RAM_ADDR + (4 * 1024),
+			MAS3_SX | MAS3_SW | MAS3_SR, 0,
+			0, 0, BOOKE_PAGESZ_4K, 0),
+	FSL_SET_TLB_ENTRY(0, CFG_INIT_RAM_ADDR + (8 * 1024),
+			CFG_INIT_RAM_ADDR + (8 * 1024),
+			MAS3_SX | MAS3_SW | MAS3_SR, 0,
+			0, 0, BOOKE_PAGESZ_4K, 0),
+	FSL_SET_TLB_ENTRY(0, CFG_INIT_RAM_ADDR + (12 * 1024),
+			CFG_INIT_RAM_ADDR + (12 * 1024),
+			MAS3_SX | MAS3_SW | MAS3_SR, 0,
+			0, 0, BOOKE_PAGESZ_4K, 0),
+	/*
+	 * TLB 0/1:     2x16M     Cache inhibited, guarded
+	 * CPLD and NAND in cache-inhibited area.
+	 */
+	FSL_SET_TLB_ENTRY(1, BOOT_BLOCK, BOOT_BLOCK,
+			MAS3_SX | MAS3_SW | MAS3_SR,
+			MAS2_W | MAS2_I | MAS2_G | MAS2_M,
+			0, 0, BOOKE_PAGESZ_16M, 1),
+	FSL_SET_TLB_ENTRY(1, BOOT_BLOCK + 0x1000000,
+			BOOT_BLOCK + 0x1000000,
+			MAS3_SX | MAS3_SW | MAS3_SR,
+			MAS2_W | MAS2_I | MAS2_G | MAS2_M,
+			0, 1, BOOKE_PAGESZ_16M, 1),
+	/*
+	 * The boot flash is mapped with the cache enabled.
+	 * TLB 2/3:     2x16M     Cacheable Write-through, guarded
+	 */
+	FSL_SET_TLB_ENTRY(1, BOOT_BLOCK + (2 * 0x1000000),
+			BOOT_BLOCK + (2 * 0x1000000),
+			MAS3_SX | MAS3_SW | MAS3_SR,
+			MAS2_W | MAS2_G | MAS2_M,
+			0, 2, BOOKE_PAGESZ_16M, 1),
+	FSL_SET_TLB_ENTRY(1, BOOT_BLOCK + (3 * 0x1000000),
+			BOOT_BLOCK + (3 * 0x1000000),
+			MAS3_SX | MAS3_SW | MAS3_SR,
+			MAS2_W | MAS2_G | MAS2_M,
+			0, 3, BOOKE_PAGESZ_16M, 1),
+
+	FSL_SET_TLB_ENTRY(1, CFG_CCSRBAR, CFG_CCSRBAR_PHYS,
+			MAS3_SX | MAS3_SW | MAS3_SR,
+			MAS2_I | MAS2_G,
+			0, 4, BOOKE_PAGESZ_64M, 1),
+};
+
+int num_tlb_entries = ARRAY_SIZE(tlb_table);
diff --git a/arch/ppc/configs/da923rc_defconfig b/arch/ppc/configs/da923rc_defconfig
new file mode 100644
index 0000000..7007b65
--- /dev/null
+++ b/arch/ppc/configs/da923rc_defconfig
@@ -0,0 +1,58 @@
+CONFIG_ARCH_MPC85XX=y
+CONFIG_DA923RC=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x80000
+CONFIG_DEVEL=n
+CONFIG_BANNER=y
+CONFIG_CMD_READLINE=y
+CONFIG_HUSH_GETOPT=y
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_BOOTM_ZLIB=y
+CONFIG_CMD_BOOTM_BZLIB=y
+CONFIG_ZLIB=y
+CONFIG_BZLIB=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GO=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=n
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/ppc/boards/geip-da923rc/env/"
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_READLINK=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_NET=y
+CONFIG_NET_PING=y
+CONFIG_NET_TFTP=y
+CONFIG_NET_TFTP_PUSH=y
+CONFIG_FS_TFTP=y
+CONFIG_CMD_TFTP=y
+CONFIG_DRIVER_NET_GIANFAR=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_DRIVER_CFI=y
+CONFIG_DRIVER_CFI_BANK_WIDTH_1=n
+CONFIG_DRIVER_CFI_BANK_WIDTH_2=y
+CONFIG_DRIVER_CFI_BANK_WIDTH_4=n
+CONFIG_CFI_BUFFER_WRITE=y
+CONFIG_MTD=y
+CONFIG_MTD_WRITE=y
+CONFIG_MALLOC_SIZE=0x2800000
+CONFIG_PROMPT="GE> "
+CONFIG_BAUDRATE=9600
+CONFIG_RELOCATABLE=y
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_SPI=n
+CONFIG_I2C=y
+CONFIG_I2C_IMX=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_VERSION=n
+CONFIG_OFTREE=y
+CONFIG_CMD_OFTREE_PROBE=y
+CONFIG_CMD_OFTREE=y
diff --git a/arch/ppc/include/asm/fsl_lbc.h b/arch/ppc/include/asm/fsl_lbc.h
index 58cd080..a59725c 100644
--- a/arch/ppc/include/asm/fsl_lbc.h
+++ b/arch/ppc/include/asm/fsl_lbc.h
@@ -27,6 +27,7 @@
 #define BR_PS_32			0x00001800	/* Port Size 32 bit */
 #define BR_V				0x00000001
 #define BR_V_SHIFT			0
+#define BR_MS_UPMA			0x00000080
 
 /* Convert an address into the right format for the BR registers */
 #define BR_PHYS_ADDR(x) ((x) & 0xffff8000)
@@ -55,5 +56,16 @@
 #define fsl_set_lbc_br(x, v) (out_be32((LBC_BASE_ADDR + FSL_LBC_BRX(x)), v))
 #define fsl_set_lbc_or(x, v) (out_be32((LBC_BASE_ADDR + FSL_LBC_ORX(x)), v))
 
+#define FSL_LBC_MAR_OFFSET	0x68
+#define FSL_LBC_MAMR_OFFSET	0x70
+#define FSL_LBC_MDR_OFFSET	0x88
+#define FSL_LBC_LTESR_OFFSET	0xB0
+#define FSL_LBC_LTEIR_OFFSET	0xB8
+
+#define MxMR_MAD_MSK		0x0000003f /* Machine Address Mask         */
+#define MxMR_GPL_x4DIS		0x00040000 /* GPL_A4 Ouput Line Disable    */
+#define MxMR_OP_NORM		0x00000000 /* Normal Operation             */
+#define MxMR_OP_WARR		0x10000000 /* Write to Array               */
+
 #endif /* __ASSEMBLY__ */
 #endif /* __ASM_PPC_FSL_LBC_H */
diff --git a/arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h b/arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h
index bef4e29..ff3a312 100644
--- a/arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h
+++ b/arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h
@@ -32,6 +32,7 @@
 #define MPC85xx_ECM_OFFSET	0x1000
 #define MPC85xx_DDR_OFFSET	0x2000
 #define MPC85xx_LBC_OFFSET	0x5000
+#define MPC85xx_PCI1_OFFSET	0x8000
 
 #define MPC85xx_GPIO_OFFSET	0xf000
 #define MPC85xx_L2_OFFSET	0x20000
@@ -58,6 +59,8 @@
 
 /* ECM Registers */
 #define MPC85xx_ECM_EEBPCR_OFFSET	0x00 /* ECM CCB Port Configuration */
+#define MPC85xx_ECM_EEDR_OFFSET		0xE00 /* ECM error detect register  */
+#define MPC85xx_ECM_EEER_OFFSET		0xE08 /* ECM error enable register  */
 
 /*
  * DDR Memory Controller Register Offsets
@@ -94,6 +97,9 @@
 /* training init and extended addr */
 #define MPC85xx_DDR_SDRAM_INIT_ADDR_OFFSET	0x148
 #define MPC85xx_DDR_SDRAM_INIT_ADDR_EXT_OFFSET	0x14c
+/* DDR IP block revision */
+#define MPC85xx_DDR_IP_REV1_OFFSET	0xbf8
+#define MPC85xx_DDR_IP_REV2_OFFSET	0xbfc
 
 #define DDR_OFF(REGNAME)	(MPC85xx_DDR_##REGNAME##_OFFSET)
 
@@ -102,6 +108,20 @@
  */
 #define MPC85xx_GPIO_GPDIR	0x00
 #define MPC85xx_GPIO_GPDAT	0x08
+#define MPC85xx_GPIO_GPDIR_OFFSET	0x00
+#define MPC85xx_GPIO_GPDAT_OFFSET	0x08
+
+/* Global Utilities Registers */
+#define MPC85xx_GPIOCR_OFFSET	0x30
+#define		MPC85xx_GPIOCR_GPOUT	0x00000200
+#define MPC85xx_GPOUTDR_OFFSET	0x40
+#define		MPC85xx_GPIOBIT(i)	(1 << (31 - i))
+#define MPC85xx_GPINDR_OFFSET	0x50
+
+#define MPC85xx_DEVDISR_OFFSET	0x70
+#define		MPC85xx_DEVDISR_TSEC1	0x00000080
+#define		MPC85xx_DEVDISR_TSEC2	0x00000040
+#define		MPC85xx_DEVDISR_TSEC3	0x00000020
 
 /*
  * L2 Cache Register Offsets
@@ -125,6 +145,8 @@
 #define MPC85xx_GUTS_PORPLLSR_OFFSET	0x0
 #define		MPC85xx_PORPLLSR_DDR_RATIO		0x00003e00
 #define		MPC85xx_PORPLLSR_DDR_RATIO_SHIFT	9
+#define MPC85xx_GUTS_PORDEVSR2_OFFSET	0x14
+#define		MPC85xx_PORDEVSR2_SEC_CFG		0x00000080
 #define MPC85xx_GUTS_DEVDISR_OFFSET	0x70
 #define		MPC85xx_DEVDISR_TB0	0x00004000
 #define		MPC85xx_DEVDISR_TB1	0x00001000
@@ -136,4 +158,5 @@
 #define I2C1_BASE_ADDR		(CFG_IMMR + 0x3000)
 #define I2C2_BASE_ADDR		(CFG_IMMR + 0x3100)
 
+#define PCI1_BASE_ADDR		(CFG_IMMR + MPC85xx_PCI1_OFFSET)
 #endif /*__IMMAP_85xx__*/
-- 
1.8.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
