Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og112.obsmtp.com ([64.18.0.24])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIgCD-0002aH-L9
 for barebox@lists.infradead.org; Fri, 13 Apr 2012 13:05:51 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Fri, 13 Apr 2012 14:04:32 +0100
Message-Id: <1334322272-26898-4-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1334322272-26898-1-git-send-email-renaud.barbier@ge.com>
References: <1334322272-26898-1-git-send-email-renaud.barbier@ge.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH V2 3/3] Minimal P2020RDB platform support and configuration
 file
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

This is a limited board support for the P2020RDB platform.
The DDR is configured for a memory bus running at 667Mhz.
The board  boots from NOR flash and output the prompt to the
serial port at 115200 bauds. No other drivers are provided.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/Makefile                                |    1 +
 arch/ppc/boards/freescale-p2020rdb/Makefile      |    4 +
 arch/ppc/boards/freescale-p2020rdb/barebox.lds.S |  144 +++++++++++++
 arch/ppc/boards/freescale-p2020rdb/config.h      |   98 +++++++++
 arch/ppc/boards/freescale-p2020rdb/law.c         |   31 +++
 arch/ppc/boards/freescale-p2020rdb/p2020rdb.c    |  237 ++++++++++++++++++++++
 arch/ppc/boards/freescale-p2020rdb/tlb.c         |   62 ++++++
 arch/ppc/configs/p2020rdb_defconfig              |   23 ++
 8 files changed, 600 insertions(+), 0 deletions(-)
 create mode 100644 arch/ppc/boards/freescale-p2020rdb/Makefile
 create mode 100644 arch/ppc/boards/freescale-p2020rdb/barebox.lds.S
 create mode 100644 arch/ppc/boards/freescale-p2020rdb/config.h
 create mode 100644 arch/ppc/boards/freescale-p2020rdb/law.c
 create mode 100644 arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
 create mode 100644 arch/ppc/boards/freescale-p2020rdb/tlb.c
 create mode 100644 arch/ppc/configs/p2020rdb_defconfig

diff --git a/arch/ppc/Makefile b/arch/ppc/Makefile
index 6ab1db1..3231ac9 100644
--- a/arch/ppc/Makefile
+++ b/arch/ppc/Makefile
@@ -12,6 +12,7 @@ CPPFLAGS += -ffixed-r2 -Wa,-me500x2 -msoft-float -mno-string
 endif
 
 board-$(CONFIG_MACH_PHYCORE_MPC5200B_TINY)	:= pcm030
+board-$(CONFIG_P2020RDB)			:= freescale-p2020rdb
 
 machine-$(CONFIG_ARCH_MPC5200)			:= mpc5xxx
 machine-$(CONFIG_ARCH_MPC85XX)			:= mpc85xx
diff --git a/arch/ppc/boards/freescale-p2020rdb/Makefile b/arch/ppc/boards/freescale-p2020rdb/Makefile
new file mode 100644
index 0000000..141b680
--- /dev/null
+++ b/arch/ppc/boards/freescale-p2020rdb/Makefile
@@ -0,0 +1,4 @@
+obj-y	+= p2020rdb.o
+obj-y	+= law.o
+obj-y	+= tlb.o
+extra-y += barebox.lds
diff --git a/arch/ppc/boards/freescale-p2020rdb/barebox.lds.S b/arch/ppc/boards/freescale-p2020rdb/barebox.lds.S
new file mode 100644
index 0000000..cfccea9
--- /dev/null
+++ b/arch/ppc/boards/freescale-p2020rdb/barebox.lds.S
@@ -0,0 +1,144 @@
+/*
+ * Copyright 2012 GE Intelligent Platforms, Inc.
+ * Copyright 2007-2009, 2011 Freescale Semiconductor, Inc.
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
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <asm-generic/barebox.lds.h>
+
+#define RESET_VECTOR_ADDRESS	0xeffffffc
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
+  /* Read-only sections, merged into text segment: */
+  . = TEXT_BASE;
+
+  .text      :
+  {
+    *(.text*)
+  } :text
+
+  _etext = .;
+  PROVIDE (etext = .);
+
+  .rodata    :
+  {
+    *(SORT_BY_ALIGNMENT(SORT_BY_NAME(.rodata*)))
+  } :text
+
+  /* Read-write section, merged into data segment: */
+  . = (. + 0x00FF) & 0xFFFFFF00;
+
+  _erotext = .;
+  PROVIDE (erotext = .);
+
+  .reloc   :
+  {
+    _GOT2_TABLE_ = .;
+    KEEP(*(.got2))
+    KEEP(*(.got))
+    PROVIDE(_GLOBAL_OFFSET_TABLE_ = . + 4);
+    _FIXUP_TABLE_ = .;
+    KEEP(*(.fixup))
+  }
+  __got2_entries = ((_GLOBAL_OFFSET_TABLE_ - _GOT2_TABLE_) >> 2) - 1;
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
+    arch/ppc/cpu-85xx/resetvec.o	(.resetvec)
+  } :text = 0xffff
+
+  . = RESET_VECTOR_ADDRESS + 0x4;
+
+  . = 0x10000;
+  __bss_start = .;
+  .bss        :
+  {
+    *(.sbss*) *(.scommon*)
+    *(.dynbss*)
+    *(.bss*)
+    *(COMMON)
+  } :bss
+
+  . = ALIGN(4);
+  __bss_stop = .;
+  _end = . ;
+  PROVIDE (end = .);
+}
diff --git a/arch/ppc/boards/freescale-p2020rdb/config.h b/arch/ppc/boards/freescale-p2020rdb/config.h
new file mode 100644
index 0000000..c780747
--- /dev/null
+++ b/arch/ppc/boards/freescale-p2020rdb/config.h
@@ -0,0 +1,98 @@
+/*
+ * Copyright 2012 GE Intelligent Platforms, Inc.
+ * Copyright 2009-2011 Freescale Semiconductor, Inc.
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+/*
+ * P2020RDB board configuration file
+ */
+
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#ifndef __ASSEMBLY__
+extern unsigned long get_board_sys_clk(unsigned long dummy);
+#endif
+#define CFG_SYS_CLK_FREQ	get_board_sys_clk(0)
+#define CFG_DDR_CLK_FREQ	66666666
+
+#define CFG_BTB			/* toggle branch predition */
+
+/*
+ * Base addresses -- Note these are effective addresses where the
+ * actual resources get mapped (not physical addresses)
+ */
+#define CFG_CCSRBAR_DEFAULT	0xff700000
+
+#define CFG_CCSRBAR		0xffe00000	/* relocated CCSRBAR */
+#define CFG_CCSRBAR_PHYS	CFG_CCSRBAR
+
+#define CFG_IMMR		CFG_CCSRBAR
+
+/* DDR Setup */
+
+#define CFG_CHIP_SELECTS_PER_CTRL   1
+
+#define CFG_SDRAM_BASE		0x00000000
+
+/* These timings are adjusted for a 667Mhz clock. */
+#define CFG_SYS_DDR_CS0_BNDS		0x0000003f	/* 1GB */
+#define CFG_SYS_DDR_CS0_CONFIG	        0x80014202
+#define CFG_SYS_DDR_TIMING_3		0x00030000
+#define CFG_SYS_DDR_TIMING_0		0x55770802
+#define CFG_SYS_DDR_TIMING_1		0x5f599543
+#define CFG_SYS_DDR_TIMING_2		0x0fa074d1
+
+#define CFG_SYS_DDR_CONTROL		0xc3000000
+#define CFG_SYS_DDR_CONTROL2		0x24401000
+#define CFG_SYS_DDR_MODE_1		0x00040852
+#define CFG_SYS_DDR_MODE_2		0x00000000
+#define CFG_SYS_MD_CNTL			0x00000000
+#define CFG_SYS_DDR_INTERVAL		0x0a280100
+
+#define CFG_SYS_DDR_DATA_INIT	        0xdeadbeef
+#define CFG_SYS_DDR_CLK_CTRL		0x03000000
+
+/*
+ * Memory map
+ *
+ * 0x0000_0000	0x3fff_ffff	DDR			1G cacheablen
+ *
+ * Localbus non-cacheable
+ * 0xef00_0000	0xefff_ffff	FLASH			16M non-cacheable
+ * 0xffd0_0000	0xffd0_3fff	L1 for stack		16K Cacheable TLB0
+ */
+
+/*
+ * Local Bus Definitions
+ */
+#define CFG_FLASH_BASE		0xef000000
+#define CFG_FLASH_BASE_PHYS	CFG_FLASH_BASE
+
+#define CFG_INIT_RAM_ADDR	0xffd00000	/* stack in RAM */
+/* Leave 256 bytes for global data */
+#define CFG_INIT_SP_OFFSET	(0x00004000 - 256)
+
+#define CFG_BR0_PRELIM	(BR_PHYS_ADDR(CFG_FLASH_BASE_PHYS) |	\
+			 BR_PS_16 | BR_V)	/* NOR Base Address */
+#define CFG_OR0_PRELIM  0xff000ff7		/* NOR Options      */
+
+#endif	/* __CONFIG_H */
diff --git a/arch/ppc/boards/freescale-p2020rdb/law.c b/arch/ppc/boards/freescale-p2020rdb/law.c
new file mode 100644
index 0000000..e748ccc
--- /dev/null
+++ b/arch/ppc/boards/freescale-p2020rdb/law.c
@@ -0,0 +1,31 @@
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <asm/fsl_law.h>
+#include <asm/mmu.h>
+
+struct law_entry law_table[] = {
+	SET_LAW(CFG_FLASH_BASE_PHYS, LAW_SIZE_16M, LAW_TRGT_IF_LBC),
+};
+
+int num_law_entries = ARRAY_SIZE(law_table);
diff --git a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c b/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
new file mode 100644
index 0000000..c28d452
--- /dev/null
+++ b/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
@@ -0,0 +1,237 @@
+/*
+ * Copyright 2012 GE Intelligent Platforms, Inc.
+ * Copyright 2009-2011 Freescale Semiconductor, Inc.
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <ns16550.h>
+#include <types.h>
+#include <partition.h>
+#include <memory.h>
+#include <asm/mmu.h>
+#include <asm/cache.h>
+#include <asm/fsl_ddr_sdram.h>
+#include <asm/fsl_law.h>
+#include <asm/io.h>
+#include <mach/immap_85xx.h>
+#include <mach/mp.h>
+#include <mach/clocks.h>
+#include <mach/early_udelay.h>
+
+#define VSC7385_RST_SET		0x00080000
+#define SLIC_RST_SET		0x00040000
+#define SGMII_PHY_RST_SET	0x00020000
+#define PCIE_RST_SET		0x00010000
+#define RGMII_PHY_RST_SET	0x02000000
+
+#define USB_RST_CLR		0x04000000
+
+
+#define GPIO_DIR		0x060f0000
+
+#define BOARD_PERI_RST_SET	(VSC7385_RST_SET | SLIC_RST_SET | \
+				SGMII_PHY_RST_SET | PCIE_RST_SET | \
+				RGMII_PHY_RST_SET)
+
+#define SYSCLK_MASK	0x00200000
+#define BOARDREV_MASK	0x10100000
+#define BOARDREV_B	0x10100000
+#define BOARDREV_C	0x00100000
+#define BOARDREV_D	0x00000000
+
+#define SYSCLK_66	66666666
+#define SYSCLK_50	50000000
+#define SYSCLK_100	100000000
+
+static int devices_init(void)
+{
+	add_cfi_flash_device(-1, CFG_FLASH_BASE, 16 << 20, 0);
+
+	devfs_add_partition("nor0", 0xf80000, 0x80000, PARTITION_FIXED,
+			    "self0");
+	return 0;
+}
+
+device_initcall(devices_init);
+
+static struct NS16550_plat serial_plat = {
+	.clock = 0,
+	.shift = 0,
+};
+
+static int p2020_console_init(void)
+{
+	serial_plat.clock = get_bus_freq(0);
+
+	add_ns16550_device(-1, 0xffe04500, 16, IORESOURCE_MEM_8BIT,
+			   &serial_plat);
+	return 0;
+}
+
+console_initcall(p2020_console_init);
+
+static int mem_init(void)
+{
+	barebox_add_memory_bank("ram0", 0x0, 1024 << 20);
+
+	return 0;
+}
+mem_initcall(mem_init);
+
+/*
+ * fixed_sdram: fixed sdram settings.
+ *
+ * This function is used for debugging purpose and in case there is
+ * a failure with the SPD.
+ */
+phys_size_t fixed_sdram(void)
+{
+	void __iomem *regs = (void __iomem *)(MPC85xx_DDR_ADDR);
+	int sdram_cfg = (SDRAM_CFG_MEM_EN | SDRAM_CFG_SREN |
+			 SDRAM_CFG_SDRAM_TYPE_DDR2);
+	phys_size_t dram_size;
+
+	/* If already enabled (running from RAM), get out */
+	if (in_be32(regs + DDR_OFF(SDRAM_CFG)) & SDRAM_CFG_MEM_EN)
+		return get_effective_memsize();
+
+	out_be32(regs + DDR_OFF(CS0_BNDS), CFG_SYS_DDR_CS0_BNDS);
+	out_be32(regs + DDR_OFF(CS0_CONFIG), CFG_SYS_DDR_CS0_CONFIG);
+	out_be32(regs + DDR_OFF(TIMING_CFG_3), CFG_SYS_DDR_TIMING_3);
+	out_be32(regs + DDR_OFF(TIMING_CFG_0), CFG_SYS_DDR_TIMING_0);
+	out_be32(regs + DDR_OFF(TIMING_CFG_1), CFG_SYS_DDR_TIMING_1);
+	out_be32(regs + DDR_OFF(TIMING_CFG_2), CFG_SYS_DDR_TIMING_2);
+	out_be32(regs + DDR_OFF(SDRAM_CFG_2), CFG_SYS_DDR_CONTROL2);
+	out_be32(regs + DDR_OFF(SDRAM_MODE), CFG_SYS_DDR_MODE_1);
+	out_be32(regs + DDR_OFF(SDRAM_MODE_2), CFG_SYS_DDR_MODE_2);
+	out_be32(regs + DDR_OFF(SDRAM_MD_CNTL), CFG_SYS_MD_CNTL);
+	/* Basic refresh rate (7.8us),high temp is 3.9us  */
+	out_be32(regs + DDR_OFF(SDRAM_INTERVAL),
+			CFG_SYS_DDR_INTERVAL);
+	out_be32(regs + DDR_OFF(SDRAM_DATA_INIT),
+			CFG_SYS_DDR_DATA_INIT);
+	out_be32(regs + DDR_OFF(SDRAM_CLK_CNTL),
+			CFG_SYS_DDR_CLK_CTRL);
+
+	out_be32(regs + DDR_OFF(SDRAM_INIT_ADDR), 0);
+	out_be32(regs + DDR_OFF(SDRAM_INIT_ADDR_EXT), 0);
+	/*
+	 * Wait 200us for the DDR clock to stabilize.
+	 */
+	early_udelay(200);
+	asm volatile ("sync;isync");
+
+	out_be32(regs + DDR_OFF(SDRAM_CFG), sdram_cfg);
+
+	dram_size = get_effective_memsize();
+	if (set_ddr_laws(0, dram_size, LAW_TRGT_IF_DDR) < 0)
+		return 0;
+
+	return dram_size;
+}
+
+unsigned long get_board_sys_clk(ulong dummy)
+{
+	u32 val_gpdat, sysclk_gpio, board_rev_gpio;
+	void __iomem *gpio_regs = (void __iomem *)MPC85xx_GPIO_ADDR;
+
+	val_gpdat = in_be32(gpio_regs + MPC85xx_GPIO_GPDAT);
+	sysclk_gpio = val_gpdat & SYSCLK_MASK;
+	board_rev_gpio = val_gpdat & BOARDREV_MASK;
+
+	if (board_rev_gpio == BOARDREV_C) {
+		if (sysclk_gpio == 0)
+			return SYSCLK_66;
+		else
+			return SYSCLK_100;
+	} else if (board_rev_gpio == BOARDREV_B) {
+		if (sysclk_gpio == 0)
+			return SYSCLK_66;
+		else
+			return SYSCLK_50;
+	} else if (board_rev_gpio == BOARDREV_D) {
+		if (sysclk_gpio == 0)
+			return SYSCLK_66;
+		else
+			return SYSCLK_100;
+	}
+	return 0;
+}
+
+static void checkboard(void)
+{
+	u32 val_gpdat, board_rev_gpio;
+	void __iomem *gpio_regs = (void __iomem *)MPC85xx_GPIO_ADDR;
+
+	val_gpdat = in_be32(gpio_regs + MPC85xx_GPIO_GPDAT);
+	board_rev_gpio = val_gpdat & BOARDREV_MASK;
+
+	if ((board_rev_gpio != BOARDREV_C) && (board_rev_gpio != BOARDREV_B) &&
+	    (board_rev_gpio != BOARDREV_D))
+		panic("Unexpected Board REV %x detected!!\n", board_rev_gpio);
+
+	setbits_be32((gpio_regs + MPC85xx_GPIO_GPDIR), GPIO_DIR);
+
+	/*
+	 * Bringing the following peripherals out of reset via GPIOs
+	 * 0 = reset and 1 = out of reset
+	 * GPIO12 - Reset to Ethernet Switch
+	 * GPIO13 - Reset to SLIC/SLAC devices
+	 * GPIO14 - Reset to SGMII_PHY_N
+	 * GPIO15 - Reset to PCIe slots
+	 * GPIO6  - Reset to RGMII PHY
+	 * GPIO5  - Reset to USB3300 devices 1 = reset and 0 = out of reset
+	 */
+	clrsetbits_be32((gpio_regs + MPC85xx_GPIO_GPDAT), USB_RST_CLR,
+			BOARD_PERI_RST_SET);
+}
+
+static int board_init_r(void)
+{
+	const unsigned int flashbase = CFG_FLASH_BASE;
+	const u8 flash_esel = find_tlb_idx((void *)flashbase, 1);
+
+	checkboard();
+
+	/* Flush d-cache and invalidate i-cache of any FLASH data */
+	flush_dcache();
+	invalidate_icache();
+
+	/* invalidate existing TLB entry for flash */
+	disable_tlb(flash_esel);
+
+	/*
+	 * Remap Boot flash region to caching-inhibited
+	 * so that flash can be erased properly.
+	 */
+	set_tlb(1, flashbase, CFG_FLASH_BASE_PHYS,
+		MAS3_SX|MAS3_SW|MAS3_SR, MAS2_I|MAS2_G,
+		0, flash_esel, BOOKE_PAGESZ_16M, 1);
+
+	l2_cache_init();
+
+	setup_mp();
+
+	return 0;
+}
+core_initcall(board_init_r);
diff --git a/arch/ppc/boards/freescale-p2020rdb/tlb.c b/arch/ppc/boards/freescale-p2020rdb/tlb.c
new file mode 100644
index 0000000..037f429
--- /dev/null
+++ b/arch/ppc/boards/freescale-p2020rdb/tlb.c
@@ -0,0 +1,62 @@
+/*
+ * Copyright 2011 Freescale Semiconductor, Inc.
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <asm/mmu.h>
+
+struct fsl_e_tlb_entry tlb_table[] = {
+	/* TLB 0 - for temp stack in cache */
+	SET_TLB_ENTRY(0, CFG_INIT_RAM_ADDR, CFG_INIT_RAM_ADDR,
+			MAS3_SX|MAS3_SW|MAS3_SR, 0,
+			0, 0, BOOKE_PAGESZ_4K, 0),
+	SET_TLB_ENTRY(0, CFG_INIT_RAM_ADDR + (4 * 1024),
+			CFG_INIT_RAM_ADDR + (4 * 1024),
+			MAS3_SX|MAS3_SW|MAS3_SR, 0,
+			0, 0, BOOKE_PAGESZ_4K, 0),
+	SET_TLB_ENTRY(0, CFG_INIT_RAM_ADDR + (8 * 1024),
+			CFG_INIT_RAM_ADDR + (8 * 1024),
+			MAS3_SX|MAS3_SW|MAS3_SR, 0,
+			0, 0, BOOKE_PAGESZ_4K, 0),
+	SET_TLB_ENTRY(0, CFG_INIT_RAM_ADDR + (12 * 1024),
+			CFG_INIT_RAM_ADDR + (12 * 1024),
+			MAS3_SX|MAS3_SW|MAS3_SR, 0,
+			0, 0, BOOKE_PAGESZ_4K, 0),
+
+	/* TLB 1 */
+	/* *I*** - Covers boot page */
+	SET_TLB_ENTRY(1, 0xfffff000, 0xfffff000,
+			MAS3_SX|MAS3_SW|MAS3_SR, MAS2_I|MAS2_G,
+			0, 0, BOOKE_PAGESZ_4K, 1),
+
+	/* *I*G* - CCSRBAR */
+	SET_TLB_ENTRY(1, CFG_CCSRBAR, CFG_CCSRBAR_PHYS,
+			MAS3_SX|MAS3_SW|MAS3_SR, MAS2_I|MAS2_G,
+			0, 1, BOOKE_PAGESZ_1M, 1),
+
+	/* W**G* - Flash/promjet, localbus */
+	/* This will be changed to *I*G* after relocation to RAM. */
+	SET_TLB_ENTRY(1, CFG_FLASH_BASE, CFG_FLASH_BASE_PHYS,
+			MAS3_SX|MAS3_SR, MAS2_W|MAS2_G,
+			0, 2, BOOKE_PAGESZ_16M, 1),
+};
+
+int num_tlb_entries = ARRAY_SIZE(tlb_table);
diff --git a/arch/ppc/configs/p2020rdb_defconfig b/arch/ppc/configs/p2020rdb_defconfig
new file mode 100644
index 0000000..f8a0687
--- /dev/null
+++ b/arch/ppc/configs/p2020rdb_defconfig
@@ -0,0 +1,23 @@
+CONFIG_ARCH_MPC85XX=y
+CONFIG_P2020RDB=y
+CONFIG_P2020=y
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_FSL_ELBC=y
+CONFIG_DRIVER_CFI=y
+CONFIG_DRIVER_CFI_AMD=y
+CONFIG_DRIVER_CFI_INTEL=n
+CONFIG_DRIVER_CFI_BANK_WIDTH_1=n
+CONFIG_DRIVER_CFI_BANK_WIDTH_2=y
+CONFIG_DRIVER_CFI_BANK_WIDTH_4=n
+CONFIG_MTD=y
+CONFIG_MALLOC_SIZE=0x200000
+CONFIG_BAUDRATE=115200
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_RELOCATABLE=y
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
