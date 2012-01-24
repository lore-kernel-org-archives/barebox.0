Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og112.obsmtp.com ([64.18.0.24])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RpfZz-0004l3-98
 for barebox@lists.infradead.org; Tue, 24 Jan 2012 12:34:37 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Tue, 24 Jan 2012 12:34:03 +0000
Message-Id: <1327408443-3519-10-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1327408443-3519-1-git-send-email-renaud.barbier@ge.com>
References: <1327408443-3519-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 9/9] P1_P2 platform support code and configuratin file for the
 P2020RDB.
To: barebox@lists.infradead.org

Note: the file ddr.c will be used in the future.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/boards/freescale/p1_p2_rdb/Makefile      |    5 +
 arch/ppc/boards/freescale/p1_p2_rdb/barebox.lds.S |  173 ++++++++
 arch/ppc/boards/freescale/p1_p2_rdb/config.h      |  310 ++++++++++++++
 arch/ppc/boards/freescale/p1_p2_rdb/ddr.c         |  244 +++++++++++
 arch/ppc/boards/freescale/p1_p2_rdb/law.c         |   33 ++
 arch/ppc/boards/freescale/p1_p2_rdb/p1_p2_rdb.c   |  463 +++++++++++++++++++++
 arch/ppc/boards/freescale/p1_p2_rdb/pci.c         |   43 ++
 arch/ppc/boards/freescale/p1_p2_rdb/tlb.c         |   95 +++++
 arch/ppc/configs/p2020rdb_defconfig               |   24 +
 9 files changed, 1390 insertions(+), 0 deletions(-)
 create mode 100644 arch/ppc/boards/freescale/p1_p2_rdb/Makefile
 create mode 100644 arch/ppc/boards/freescale/p1_p2_rdb/barebox.lds.S
 create mode 100644 arch/ppc/boards/freescale/p1_p2_rdb/config.h
 create mode 100644 arch/ppc/boards/freescale/p1_p2_rdb/ddr.c
 create mode 100644 arch/ppc/boards/freescale/p1_p2_rdb/law.c
 create mode 100644 arch/ppc/boards/freescale/p1_p2_rdb/p1_p2_rdb.c
 create mode 100644 arch/ppc/boards/freescale/p1_p2_rdb/pci.c
 create mode 100644 arch/ppc/boards/freescale/p1_p2_rdb/tlb.c
 create mode 100644 arch/ppc/configs/p2020rdb_defconfig

diff --git a/arch/ppc/boards/freescale/p1_p2_rdb/Makefile b/arch/ppc/boards/freescale/p1_p2_rdb/Makefile
new file mode 100644
index 0000000..95d1553
--- /dev/null
+++ b/arch/ppc/boards/freescale/p1_p2_rdb/Makefile
@@ -0,0 +1,5 @@
+obj-y	+= p1_p2_rdb.o
+obj-y	+= law.o
+obj-$(CONFIG_PCI)  += pci.o
+obj-y	+= tlb.o
+extra-y += barebox.lds
diff --git a/arch/ppc/boards/freescale/p1_p2_rdb/barebox.lds.S b/arch/ppc/boards/freescale/p1_p2_rdb/barebox.lds.S
new file mode 100644
index 0000000..c91b179
--- /dev/null
+++ b/arch/ppc/boards/freescale/p1_p2_rdb/barebox.lds.S
@@ -0,0 +1,173 @@
+/*
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
+  .interp : { *(.interp) }
+  .hash          : { *(.hash)		}
+  .dynsym        : { *(.dynsym)		}
+  .dynstr        : { *(.dynstr)		}
+  .rel.text      : { *(.rel.text)		}
+  .rela.text     : { *(.rela.text) 	}
+  .rel.data      : { *(.rel.data)		}
+  .rela.data     : { *(.rela.data) 	}
+  .rel.rodata    : { *(.rel.rodata) 	}
+  .rela.rodata   : { *(.rela.rodata) 	}
+  .rel.got       : { *(.rel.got)		}
+  .rela.got      : { *(.rela.got)		}
+  .rel.ctors     : { *(.rel.ctors)	}
+  .rela.ctors    : { *(.rela.ctors)	}
+  .rel.dtors     : { *(.rel.dtors)	}
+  .rela.dtors    : { *(.rela.dtors)	}
+  .rel.bss       : { *(.rel.bss)		}
+  .rela.bss      : { *(.rela.bss)		}
+  .rel.plt       : { *(.rel.plt)		}
+  .rela.plt      : { *(.rela.plt)		}
+  .init          : { *(.init)	}
+  .plt : { *(.plt) }
+  .text      :
+  {
+    *(.text*)
+  } :text
+  _etext = .;
+  PROVIDE (etext = .);
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
+  __initcall_entries = (__barebox_initcalls_end - __barebox_initcalls_start) >> 2;
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
+    arch/ppc/mach-mpc8xxx/mpc85xx/start.o	(.bootpg)
+  } :text = 0xffff
+
+  .resetvec RESET_VECTOR_ADDRESS :
+  {
+    arch/ppc/mach-mpc8xxx/mpc85xx/resetvec.o	(.resetvec)
+  } :text = 0xffff
+
+  . = RESET_VECTOR_ADDRESS + 0x4;
+
+  /*
+   * Make sure that the bss segment isn't linked at 0x0, otherwise its
+   * address won't be updated during relocation fixups.  Note that
+   * this is a temporary fix.  Code to dynamically the fixup the bss
+   * location will be added in the future.  When the bss relocation
+   * fixup code is present this workaround should be removed.
+#if (RESET_VECTOR_ADDRESS == 0xeffffffc)
+  . |= 0x10;
+#endif
+   */
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
+/*  . = ALIGN(4); */
+  __bss_stop = .;
+  _end = . ;
+  PROVIDE (end = .);
+}
diff --git a/arch/ppc/boards/freescale/p1_p2_rdb/config.h b/arch/ppc/boards/freescale/p1_p2_rdb/config.h
new file mode 100644
index 0000000..38f9ac1
--- /dev/null
+++ b/arch/ppc/boards/freescale/p1_p2_rdb/config.h
@@ -0,0 +1,310 @@
+/*
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
+ * P1 P2 RDB board configuration file
+ * This file is intended to address a set of Low End and Ultra Low End
+ * Freescale SOCs of QorIQ series(RDB platforms).
+ * Currently only P2020RDB
+ */
+
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+
+
+#ifndef CONFIG_RESET_VECTOR_ADDRESS
+#define CONFIG_RESET_VECTOR_ADDRESS	0xeffffffc
+#endif
+
+#define CFG_64BIT_STRTOUL
+#define CFG_64BIT_VSPRINTF
+
+/* High Level Configuration Options */
+#define CONFIG_BOOKE	1	/* BOOKE */
+#define CONFIG_E500		1	/* BOOKE e500 family */
+#define CONFIG_MPC85xx	1	/* MPC8540/60/55/41/48/P1020/P2020,etc*/
+#define CONFIG_FSL_ELBC	1	/* Enable eLBC Support */
+
+
+#define CONFIG_FSL_LAW		1	/* Use common FSL init code */
+#define CONFIG_TSEC_ENET		/* tsec ethernet support */
+
+
+#ifndef __ASSEMBLY__
+extern unsigned long get_board_sys_clk(unsigned long dummy);
+#endif
+#define CONFIG_DDR_CLK_FREQ	66666666 /* DDRCLK on P1_P2 RDB */
+#define CONFIG_SYS_CLK_FREQ	get_board_sys_clk(0) /*sysclk for P1_P2 RDB */
+
+
+/*
+ * These can be toggled for performance analysis, otherwise use default.
+ */
+#define CONFIG_L2_CACHE		/* toggle L2 cache */
+#define CONFIG_BTB		/* toggle branch predition */
+
+#define CONFIG_ENABLE_36BIT_PHYS	1
+
+ /*
+  * Config the L2 Cache as L2 SRAM
+  */
+#define CONFIG_SYS_INIT_L2_ADDR		0xf8f80000
+#ifdef CONFIG_PHYS_64BIT
+#define CONFIG_SYS_INIT_L2_ADDR_PHYS	0xff8f80000ull
+#else
+#define CONFIG_SYS_INIT_L2_ADDR_PHYS	CONFIG_SYS_INIT_L2_ADDR
+#endif
+#define CONFIG_SYS_L2_SIZE	(512 << 10)
+#define CONFIG_SYS_INIT_L2_END	(CONFIG_SYS_INIT_L2_ADDR + CONFIG_SYS_L2_SIZE)
+
+/*
+ * Base addresses -- Note these are effective addresses where the
+ * actual resources get mapped (not physical addresses)
+ */
+#define CONFIG_SYS_CCSRBAR	0xffe00000		/* relocated CCSRBAR */
+#define CONFIG_SYS_CCSRBAR_PHYS	CONFIG_SYS_CCSRBAR	/* physical addr of */
+#define CONFIG_SYS_IMMR		CONFIG_SYS_CCSRBAR	/* PQII uses */
+#define CFG_IMMR		CONFIG_SYS_CCSRBAR	/* PQII uses */
+
+#define CONFIG_SYS_CCSRBAR_DEFAULT	0xff700000	/* CCSRBAR Default */
+
+/* DDR Setup */
+#define CONFIG_FSL_DDR2
+#undef CONFIG_FSL_DDR_INTERACTIVE
+#undef CONFIG_SPD_EEPROM		/* Use SPD EEPROM for DDR setup */
+
+#define CONFIG_MEM_INIT_VALUE	0xDeadBeef
+
+#define CONFIG_SYS_SDRAM_SIZE		1024 	/* DDR size on P1_P2 RDBs */
+#define CONFIG_SYS_DDR_SDRAM_BASE	0x00000000
+#define CFG_SDRAM_BASE			CONFIG_SYS_DDR_SDRAM_BASE
+#define CONFIG_SYS_SDRAM_BASE		CONFIG_SYS_DDR_SDRAM_BASE
+
+#define CONFIG_NUM_DDR_CONTROLLERS	1
+#define CONFIG_DIMM_SLOTS_PER_CTLR	1
+#define CONFIG_CHIP_SELECTS_PER_CTRL	1
+
+#ifdef CONFIG_P2020
+#define CONFIG_DDR_CS0_BNDS_1GB		0x0000003F
+#define CONFIG_SYS_DDR_CS0_BNDS		CONFIG_DDR_CS0_BNDS_1GB
+#define CONFIG_SYS_DDR_CS0_CONFIG	0x80014202
+#define CONFIG_SYS_DDR_TIMING_3		0x00030000
+#define CONFIG_SYS_DDR_TIMING_0		0x55770802
+#define CONFIG_SYS_DDR_TIMING_1		0x5f599543
+#define CONFIG_SYS_DDR_TIMING_2		0x0fa074d1
+
+#define CONFIG_SYS_DDR_CONTROL		0xc3000000
+#define CONFIG_SYS_DDR_CONTROL2		0x24401000/* No D_INIT */
+#define CONFIG_SYS_DDR_MODE_1		0x00040852
+#define CONFIG_SYS_DDR_MODE_2		0x00000000
+#define CONFIG_SYS_MD_CNTL		0x00000000
+#define CONFIG_SYS_DDR_INTERVAL		0x0a280100
+
+#define CONFIG_SYS_DDR_DATA_INIT	0xdeadbeef
+#define CONFIG_SYS_DDR_CLK_CTRL		0x03000000
+#else
+#error "Add you DDR timing"
+#endif
+
+#define CONFIG_SYS_DDR_ERR_INT_EN	0x0000000d
+#define CONFIG_SYS_DDR_ERR_DIS		0x00000000
+#define CONFIG_SYS_DDR_SBE		0x00FF0000
+
+#define CONFIG_1MB_BITSHIFT		20
+
+/*
+ * Memory map
+ *
+ * 0x0000_0000	0x3fff_ffff	DDR			1G cacheablen
+ * 0xa000_0000	0xbfff_ffff	PCI Express Mem		1G non-cacheable
+ * 0xffc2_0000	0xffc5_ffff	PCI IO range		256K non-cacheable
+ *
+ * Localbus cacheable (TBD)
+ * 0xXXXX_XXXX	0xXXXX_XXXX	SRAM			YZ M Cacheable
+ *
+ * Localbus non-cacheable
+ * 0xef00_0000	0xefff_ffff	FLASH			16M non-cacheable
+ * 0xffa0_0000	0xffaf_ffff	NAND			1M non-cacheable
+ * 0xffb0_0000	0xffbf_ffff	VSC7385 switch		1M non-cacheable
+ * 0xffd0_0000	0xffd0_3fff	L1 for stack		16K Cacheable TLB0
+ * 0xffe0_0000	0xffef_ffff	CCSR			1M non-cacheable
+ */
+
+/*
+ * Local Bus Definitions
+ */
+#define CONFIG_SYS_FLASH_BASE		0xef000000	/* start of FLASH 16M */
+
+#define CONFIG_SYS_FLASH_BASE_PHYS	CONFIG_SYS_FLASH_BASE
+
+#define CONFIG_FLASH_BR_PRELIM		(BR_PHYS_ADDR(CONFIG_SYS_FLASH_BASE_PHYS) | \
+					BR_PS_16 | BR_V)
+#define CONFIG_FLASH_OR_PRELIM		0xff000ff7
+
+#define CONFIG_SYS_FLASH_BANKS_LIST	{CONFIG_SYS_FLASH_BASE}
+#define CONFIG_SYS_FLASH_QUIET_TEST
+#define CONFIG_FLASH_SHOW_PROGRESS 	45 /* count down from 45/5: 9..1 */
+
+#define CONFIG_SYS_MAX_FLASH_BANKS	1	/* number of banks */
+#define CONFIG_SYS_MAX_FLASH_SECT	128	/* sectors per device */
+#undef	CONFIG_SYS_FLASH_CHECKSUM
+#define CONFIG_SYS_FLASH_ERASE_TOUT	60000	/* Flash Erase Timeout (ms) */
+#define CONFIG_SYS_FLASH_WRITE_TOUT	500	/* Flash Write Timeout (ms) */
+
+#if defined(CONFIG_RAMBOOT_NAND) || defined(CONFIG_RAMBOOT_SDCARD) || \
+    defined(CONFIG_RAMBOOT_SPIFLASH)
+#define CONFIG_SYS_RAMBOOT
+#define CONFIG_SYS_EXTRA_ENV_RELOC
+#else
+#undef CONFIG_SYS_RAMBOOT
+#endif
+
+
+
+#define CONFIG_BOARD_EARLY_INIT_R	/* call board_early_init_r function */
+
+#define CONFIG_SYS_INIT_RAM_ADDR	0xffd00000	/* stack in RAM */
+#define CONFIG_SYS_INIT_RAM_SIZE	0x00004000	/* Size of used area in RAM */
+
+#define CFG_INIT_RAM_ADDR	CONFIG_SYS_INIT_RAM_ADDR	/* stack in RAM */
+#define CFG_INIT_RAM_SIZE	0x00004000	/* Size of used area in RAM */
+
+#define GENERATED_GBL_DATA_SIZE 128
+
+#define CONFIG_SYS_GBL_DATA_OFFSET	(CONFIG_SYS_INIT_RAM_SIZE \
+					- GENERATED_GBL_DATA_SIZE)
+#define CONFIG_SYS_INIT_SP_OFFSET	CONFIG_SYS_GBL_DATA_OFFSET
+
+#define CONFIG_SYS_NAND_BASE		0xffa00000
+#define CONFIG_SYS_NAND_BASE_PHYS	CONFIG_SYS_NAND_BASE
+#define CONFIG_SYS_NAND_BASE_LIST	{CONFIG_SYS_NAND_BASE}
+#define CONFIG_SYS_MAX_NAND_DEVICE	1
+#define CONFIG_MTD_NAND_VERIFY_WRITE
+#define CONFIG_CMD_NAND			1
+#define CONFIG_NAND_FSL_ELBC		1
+#define CONFIG_SYS_NAND_BLOCK_SIZE	(16 * 1024)
+
+/* NAND flash config */
+#define CONFIG_NAND_BR_PRELIM	(CONFIG_SYS_NAND_BASE_PHYS \
+				| (2<<BR_DECC_SHIFT)	/* Use HW ECC */ \
+				| BR_PS_8	/* Port Size = 8 bit */ \
+				| BR_MS_FCM		/* MSEL = FCM */ \
+				| BR_V)			/* valid */
+
+#define CONFIG_NAND_OR_PRELIM	(0xFFF80000		/* length 32K */ \
+				| OR_FCM_CSCT \
+				| OR_FCM_CST \
+				| OR_FCM_CHT \
+				| OR_FCM_SCY_1 \
+				| OR_FCM_TRLX \
+				| OR_FCM_EHTR)
+
+#define CONFIG_SYS_BR0_PRELIM  CONFIG_FLASH_BR_PRELIM  /* NOR Base Address */
+#define CONFIG_SYS_OR0_PRELIM  CONFIG_FLASH_OR_PRELIM  /* NOR Options */
+#define CONFIG_SYS_BR1_PRELIM  CONFIG_NAND_BR_PRELIM  /* NAND Base Address */
+#define CONFIG_SYS_OR1_PRELIM  CONFIG_NAND_OR_PRELIM  /* NAND Options */
+
+#define CONFIG_SYS_VSC7385_BASE	0xffb00000
+
+#define CONFIG_SYS_VSC7385_BASE_PHYS	CONFIG_SYS_VSC7385_BASE
+
+#define CONFIG_SYS_BR2_PRELIM	(CONFIG_SYS_VSC7385_BASE | BR_PS_8 | BR_V)
+#define CONFIG_SYS_OR2_PRELIM	(OR_AM_128KB | OR_GPCM_CSNT | OR_GPCM_XACS | \
+				OR_GPCM_SCY_15 | OR_GPCM_SETA | OR_GPCM_TRLX | \
+				OR_GPCM_EHTR | OR_GPCM_EAD)
+
+/* Serial Port - controlled on board with jumper J8
+ * open - index 2
+ * shorted - index 1
+ */
+
+#define CONFIG_SYS_NS16550_CLK	get_bus_freq(0)
+#define CONFIG_SYS_NS16550_COM1	(CONFIG_SYS_CCSRBAR+0x4500)
+#define CONFIG_SYS_NS16550_COM2	(CONFIG_SYS_CCSRBAR+0x4600)
+
+/*
+ * Pass open firmware flat tree
+ */
+#define CONFIG_OF_LIBFDT		1
+
+/* I2C */
+#define CONFIG_FSL_I2C		/* Use FSL common I2C driver */
+#define CONFIG_HARD_I2C		/* I2C with hardware support */
+#undef	CONFIG_SOFT_I2C		/* I2C bit-banged */
+#define CONFIG_SYS_I2C_SPEED		400000	/* I2C speed and slave address*/
+#define CONFIG_SYS_I2C_EEPROM_ADDR	0x57
+#define CONFIG_SYS_I2C_SLAVE		0x7F
+#define CONFIG_SYS_I2C_NOPROBES		{{0,0x29}}	/* Don't probe these addrs */
+#define CONFIG_SYS_I2C_OFFSET		0x3000
+#define CONFIG_SYS_I2C2_OFFSET		0x3100
+
+/*
+ * I2C2 EEPROM
+ */
+#define CONFIG_ID_EEPROM
+#ifdef CONFIG_ID_EEPROM
+#define CONFIG_SYS_I2C_EEPROM_NXID
+#endif
+#define CONFIG_SYS_I2C_EEPROM_ADDR	0x57
+#define CONFIG_SYS_I2C_EEPROM_ADDR_LEN	1
+#define CONFIG_SYS_EEPROM_BUS_NUM	1
+
+#define CONFIG_RTC_DS1337
+#define CONFIG_SYS_RTC_DS1337_NOOSC
+#define CONFIG_SYS_I2C_RTC_ADDR		0x68
+
+
+#if defined(CONFIG_TSEC_ENET)
+#define CONFIG_MII		1	/* MII PHY management */
+#define CONFIG_MII_DEFAULT_TSEC	1	/* Allow unregistered phys */
+#define CONFIG_TSEC1	1
+#define CONFIG_TSEC1_NAME	"eTSEC1"
+#define CONFIG_TSEC2	1
+#define CONFIG_TSEC2_NAME	"eTSEC2"
+#define CONFIG_TSEC3	1
+#define CONFIG_TSEC3_NAME	"eTSEC3"
+
+#define TSEC1_PHY_ADDR	2
+#define TSEC2_PHY_ADDR	0
+#define TSEC3_PHY_ADDR	1
+
+#define TSEC1_FLAGS	(TSEC_GIGABIT | TSEC_REDUCED)
+#define TSEC2_FLAGS	(TSEC_GIGABIT | TSEC_REDUCED)
+#define TSEC3_FLAGS	(TSEC_GIGABIT | TSEC_REDUCED)
+
+#define CONFIG_PHY_GIGE	1	/* Include GbE speed/duplex detection */
+
+#endif	/* CONFIG_TSEC_ENET */
+
+
+#undef CONFIG_WATCHDOG		/* watchdog disabled */
+
+/*
+ * Miscellaneous configurable options
+ */
+#define CONFIG_CBSIZE	1024		/* Console I/O Buffer Size */
+#define CONFIG_MAXARGS	16		/* max number of command args */
+#define CONFIG_SYS_HZ	1000		/* decrementer freq: 1ms ticks */
+
+
+#endif	/* __CONFIG_H */
diff --git a/arch/ppc/boards/freescale/p1_p2_rdb/ddr.c b/arch/ppc/boards/freescale/p1_p2_rdb/ddr.c
new file mode 100644
index 0000000..e54fde2
--- /dev/null
+++ b/arch/ppc/boards/freescale/p1_p2_rdb/ddr.c
@@ -0,0 +1,244 @@
+/*
+ * Copyright 2009 Freescale Semiconductor, Inc.
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
+#include <asm/immap_85xx.h>
+#include <asm/processor.h>
+#include <asm/fsl_ddr_sdram.h>
+#include <asm/io.h>
+#include <asm/fsl_law.h>
+
+DECLARE_GLOBAL_DATA_PTR;
+
+extern void fsl_ddr_set_memctl_regs(const fsl_ddr_cfg_regs_t *regs,
+				   unsigned int ctrl_num);
+
+#define DATARATE_400MHZ 400000000
+#define DATARATE_533MHZ 533333333
+#define DATARATE_667MHZ 666666666
+#define DATARATE_800MHZ 800000000
+
+#define CONFIG_SYS_DDR_CS0_BNDS		0x0000003F
+#define CONFIG_SYS_DDR_CS0_CONFIG	0x80014202
+#define CONFIG_SYS_DDR_CS0_CONFIG_2	0x00000000
+#define CONFIG_SYS_DDR_INIT_ADDR	0x00000000
+#define CONFIG_SYS_DDR_INIT_EXT_ADDR	0x00000000
+#define CONFIG_SYS_DDR_MODE_CONTROL	0x00000000
+#define CONFIG_SYS_DDR_ZQ_CONTROL	0x00000000
+#define CONFIG_SYS_DDR_WRLVL_CONTROL	0x00000000
+#define CONFIG_SYS_DDR_SR_CNTR		0x00000000
+#define CONFIG_SYS_DDR_RCW_1		0x00000000
+#define CONFIG_SYS_DDR_RCW_2		0x00000000
+#define CONFIG_SYS_DDR_CONTROL		0x43000000	/* Type = DDR2*/
+#define CONFIG_SYS_DDR_CONTROL_2	0x24401000
+#define CONFIG_SYS_DDR_TIMING_4		0x00000000
+#define CONFIG_SYS_DDR_TIMING_5		0x00000000
+
+#define CONFIG_SYS_DDR_TIMING_3_400	0x00010000
+#define CONFIG_SYS_DDR_TIMING_0_400	0x00260802
+#define CONFIG_SYS_DDR_TIMING_1_400	0x39355322
+#define CONFIG_SYS_DDR_TIMING_2_400	0x1f9048ca
+#define CONFIG_SYS_DDR_CLK_CTRL_400	0x02800000
+#define CONFIG_SYS_DDR_MODE_1_400	0x00480432
+#define CONFIG_SYS_DDR_MODE_2_400	0x00000000
+#define CONFIG_SYS_DDR_INTERVAL_400	0x06180100
+
+#define CONFIG_SYS_DDR_TIMING_3_533	0x00020000
+#define CONFIG_SYS_DDR_TIMING_0_533	0x00260802
+#define CONFIG_SYS_DDR_TIMING_1_533	0x4c47c432
+#define CONFIG_SYS_DDR_TIMING_2_533	0x0f9848ce
+#define CONFIG_SYS_DDR_CLK_CTRL_533	0x02800000
+#define CONFIG_SYS_DDR_MODE_1_533	0x00040642
+#define CONFIG_SYS_DDR_MODE_2_533	0x00000000
+#define CONFIG_SYS_DDR_INTERVAL_533	0x08200100
+
+#define CONFIG_SYS_DDR_TIMING_3_667	0x00030000
+#define CONFIG_SYS_DDR_TIMING_0_667	0x55770802
+#define CONFIG_SYS_DDR_TIMING_1_667	0x5f599543
+#define CONFIG_SYS_DDR_TIMING_2_667	0x0fa074d1
+#define CONFIG_SYS_DDR_CLK_CTRL_667	0x03000000
+#define CONFIG_SYS_DDR_MODE_1_667	0x00040852
+#define CONFIG_SYS_DDR_MODE_2_667	0x00000000
+#define CONFIG_SYS_DDR_INTERVAL_667	0x0a280100
+
+#define CONFIG_SYS_DDR_TIMING_3_800	0x00040000
+#define CONFIG_SYS_DDR_TIMING_0_800	0x55770802
+#define CONFIG_SYS_DDR_TIMING_1_800	0x6f6b6543
+#define CONFIG_SYS_DDR_TIMING_2_800	0x0fa074d1
+#define CONFIG_SYS_DDR_CLK_CTRL_800	0x02800000
+#define CONFIG_SYS_DDR_MODE_1_800	0x00040852
+#define CONFIG_SYS_DDR_MODE_2_800	0x00000000
+#define CONFIG_SYS_DDR_INTERVAL_800	0x0a280100
+
+fsl_ddr_cfg_regs_t ddr_cfg_regs_400 = {
+	.cs[0].bnds = CONFIG_SYS_DDR_CS0_BNDS,
+	.cs[0].config = CONFIG_SYS_DDR_CS0_CONFIG,
+	.cs[0].config_2 = CONFIG_SYS_DDR_CS0_CONFIG_2,
+	.timing_cfg_3 = CONFIG_SYS_DDR_TIMING_3_400,
+	.timing_cfg_0 = CONFIG_SYS_DDR_TIMING_0_400,
+	.timing_cfg_1 = CONFIG_SYS_DDR_TIMING_1_400,
+	.timing_cfg_2 = CONFIG_SYS_DDR_TIMING_2_400,
+	.ddr_sdram_cfg = CONFIG_SYS_DDR_CONTROL,
+	.ddr_sdram_cfg_2 = CONFIG_SYS_DDR_CONTROL_2,
+	.ddr_sdram_mode = CONFIG_SYS_DDR_MODE_1_400,
+	.ddr_sdram_mode_2 = CONFIG_SYS_DDR_MODE_2_400,
+	.ddr_sdram_md_cntl = CONFIG_SYS_DDR_MODE_CONTROL,
+	.ddr_sdram_interval = CONFIG_SYS_DDR_INTERVAL_400,
+	.ddr_data_init = CONFIG_MEM_INIT_VALUE,
+	.ddr_sdram_clk_cntl = CONFIG_SYS_DDR_CLK_CTRL_400,
+	.ddr_init_addr = CONFIG_SYS_DDR_INIT_ADDR,
+	.ddr_init_ext_addr = CONFIG_SYS_DDR_INIT_EXT_ADDR,
+	.timing_cfg_4 = CONFIG_SYS_DDR_TIMING_4,
+	.timing_cfg_5 = CONFIG_SYS_DDR_TIMING_5,
+	.ddr_zq_cntl = CONFIG_SYS_DDR_ZQ_CONTROL,
+	.ddr_wrlvl_cntl = CONFIG_SYS_DDR_WRLVL_CONTROL,
+	.ddr_sr_cntr = CONFIG_SYS_DDR_SR_CNTR,
+	.ddr_sdram_rcw_1 = CONFIG_SYS_DDR_RCW_1,
+	.ddr_sdram_rcw_2 = CONFIG_SYS_DDR_RCW_2
+};
+
+fsl_ddr_cfg_regs_t ddr_cfg_regs_533 = {
+	.cs[0].bnds = CONFIG_SYS_DDR_CS0_BNDS,
+	.cs[0].config = CONFIG_SYS_DDR_CS0_CONFIG,
+	.cs[0].config_2 = CONFIG_SYS_DDR_CS0_CONFIG_2,
+	.timing_cfg_3 = CONFIG_SYS_DDR_TIMING_3_533,
+	.timing_cfg_0 = CONFIG_SYS_DDR_TIMING_0_533,
+	.timing_cfg_1 = CONFIG_SYS_DDR_TIMING_1_533,
+	.timing_cfg_2 = CONFIG_SYS_DDR_TIMING_2_533,
+	.ddr_sdram_cfg = CONFIG_SYS_DDR_CONTROL,
+	.ddr_sdram_cfg_2 = CONFIG_SYS_DDR_CONTROL_2,
+	.ddr_sdram_mode = CONFIG_SYS_DDR_MODE_1_533,
+	.ddr_sdram_mode_2 = CONFIG_SYS_DDR_MODE_2_533,
+	.ddr_sdram_md_cntl = CONFIG_SYS_DDR_MODE_CONTROL,
+	.ddr_sdram_interval = CONFIG_SYS_DDR_INTERVAL_533,
+	.ddr_data_init = CONFIG_MEM_INIT_VALUE,
+	.ddr_sdram_clk_cntl = CONFIG_SYS_DDR_CLK_CTRL_533,
+	.ddr_init_addr = CONFIG_SYS_DDR_INIT_ADDR,
+	.ddr_init_ext_addr = CONFIG_SYS_DDR_INIT_EXT_ADDR,
+	.timing_cfg_4 = CONFIG_SYS_DDR_TIMING_4,
+	.timing_cfg_5 = CONFIG_SYS_DDR_TIMING_5,
+	.ddr_zq_cntl = CONFIG_SYS_DDR_ZQ_CONTROL,
+	.ddr_wrlvl_cntl = CONFIG_SYS_DDR_WRLVL_CONTROL,
+	.ddr_sr_cntr = CONFIG_SYS_DDR_SR_CNTR,
+	.ddr_sdram_rcw_1 = CONFIG_SYS_DDR_RCW_1,
+	.ddr_sdram_rcw_2 = CONFIG_SYS_DDR_RCW_2
+};
+
+fsl_ddr_cfg_regs_t ddr_cfg_regs_667 = {
+	.cs[0].bnds = CONFIG_SYS_DDR_CS0_BNDS,
+	.cs[0].config = CONFIG_SYS_DDR_CS0_CONFIG,
+	.cs[0].config_2 = CONFIG_SYS_DDR_CS0_CONFIG_2,
+	.timing_cfg_3 = CONFIG_SYS_DDR_TIMING_3_667,
+	.timing_cfg_0 = CONFIG_SYS_DDR_TIMING_0_667,
+	.timing_cfg_1 = CONFIG_SYS_DDR_TIMING_1_667,
+	.timing_cfg_2 = CONFIG_SYS_DDR_TIMING_2_667,
+	.ddr_sdram_cfg = CONFIG_SYS_DDR_CONTROL,
+	.ddr_sdram_cfg_2 = CONFIG_SYS_DDR_CONTROL_2,
+	.ddr_sdram_mode = CONFIG_SYS_DDR_MODE_1_667,
+	.ddr_sdram_mode_2 = CONFIG_SYS_DDR_MODE_2_667,
+	.ddr_sdram_md_cntl = CONFIG_SYS_DDR_MODE_CONTROL,
+	.ddr_sdram_interval = CONFIG_SYS_DDR_INTERVAL_667,
+	.ddr_data_init = CONFIG_MEM_INIT_VALUE,
+	.ddr_sdram_clk_cntl = CONFIG_SYS_DDR_CLK_CTRL_667,
+	.ddr_init_addr = CONFIG_SYS_DDR_INIT_ADDR,
+	.ddr_init_ext_addr = CONFIG_SYS_DDR_INIT_EXT_ADDR,
+	.timing_cfg_4 = CONFIG_SYS_DDR_TIMING_4,
+	.timing_cfg_5 = CONFIG_SYS_DDR_TIMING_5,
+	.ddr_zq_cntl = CONFIG_SYS_DDR_ZQ_CONTROL,
+	.ddr_wrlvl_cntl = CONFIG_SYS_DDR_WRLVL_CONTROL,
+	.ddr_sr_cntr = CONFIG_SYS_DDR_SR_CNTR,
+	.ddr_sdram_rcw_1 = CONFIG_SYS_DDR_RCW_1,
+	.ddr_sdram_rcw_2 = CONFIG_SYS_DDR_RCW_2
+};
+
+fsl_ddr_cfg_regs_t ddr_cfg_regs_800 = {
+	.cs[0].bnds = CONFIG_SYS_DDR_CS0_BNDS,
+	.cs[0].config = CONFIG_SYS_DDR_CS0_CONFIG,
+	.cs[0].config_2 = CONFIG_SYS_DDR_CS0_CONFIG_2,
+	.timing_cfg_3 = CONFIG_SYS_DDR_TIMING_3_800,
+	.timing_cfg_0 = CONFIG_SYS_DDR_TIMING_0_800,
+	.timing_cfg_1 = CONFIG_SYS_DDR_TIMING_1_800,
+	.timing_cfg_2 = CONFIG_SYS_DDR_TIMING_2_800,
+	.ddr_sdram_cfg = CONFIG_SYS_DDR_CONTROL,
+	.ddr_sdram_cfg_2 = CONFIG_SYS_DDR_CONTROL_2,
+	.ddr_sdram_mode = CONFIG_SYS_DDR_MODE_1_800,
+	.ddr_sdram_mode_2 = CONFIG_SYS_DDR_MODE_2_800,
+	.ddr_sdram_md_cntl = CONFIG_SYS_DDR_MODE_CONTROL,
+	.ddr_sdram_interval = CONFIG_SYS_DDR_INTERVAL_800,
+	.ddr_data_init = CONFIG_MEM_INIT_VALUE,
+	.ddr_sdram_clk_cntl = CONFIG_SYS_DDR_CLK_CTRL_800,
+	.ddr_init_addr = CONFIG_SYS_DDR_INIT_ADDR,
+	.ddr_init_ext_addr = CONFIG_SYS_DDR_INIT_EXT_ADDR,
+	.timing_cfg_4 = CONFIG_SYS_DDR_TIMING_4,
+	.timing_cfg_5 = CONFIG_SYS_DDR_TIMING_5,
+	.ddr_zq_cntl = CONFIG_SYS_DDR_ZQ_CONTROL,
+	.ddr_wrlvl_cntl = CONFIG_SYS_DDR_WRLVL_CONTROL,
+	.ddr_sr_cntr = CONFIG_SYS_DDR_SR_CNTR,
+	.ddr_sdram_rcw_1 = CONFIG_SYS_DDR_RCW_1,
+	.ddr_sdram_rcw_2 = CONFIG_SYS_DDR_RCW_2
+};
+
+/*
+ * Fixed sdram init -- doesn't use serial presence detect.
+ */
+
+phys_size_t fixed_sdram (void)
+{
+	sys_info_t sysinfo;
+	char buf[32];
+	fsl_ddr_cfg_regs_t ddr_cfg_regs;
+	size_t ddr_size;
+	struct cpu_type *cpu;
+
+	get_sys_info(&sysinfo);
+	printf("Configuring DDR for %s MT/s data rate\n",
+				strmhz(buf, sysinfo.freqDDRBus));
+
+	if(sysinfo.freqDDRBus <= DATARATE_400MHZ)
+		memcpy(&ddr_cfg_regs, &ddr_cfg_regs_400, sizeof(ddr_cfg_regs));
+	else if(sysinfo.freqDDRBus <= DATARATE_533MHZ)
+		memcpy(&ddr_cfg_regs, &ddr_cfg_regs_533, sizeof(ddr_cfg_regs));
+	else if(sysinfo.freqDDRBus <= DATARATE_667MHZ)
+		memcpy(&ddr_cfg_regs, &ddr_cfg_regs_667, sizeof(ddr_cfg_regs));
+	else if(sysinfo.freqDDRBus <= DATARATE_800MHZ)
+		memcpy(&ddr_cfg_regs, &ddr_cfg_regs_800, sizeof(ddr_cfg_regs));
+	else
+		panic("Unsupported DDR data rate %s MT/s data rate\n",
+					strmhz(buf, sysinfo.freqDDRBus));
+
+	cpu = gd->cpu;
+	/* P1020 and it's derivatives support max 32bit DDR width */
+	if(cpu->soc_ver == SVR_P1020 || cpu->soc_ver == SVR_P1020_E ||
+		cpu->soc_ver == SVR_P1011 || cpu->soc_ver == SVR_P1011_E) {
+		ddr_cfg_regs.ddr_sdram_cfg |= SDRAM_CFG_32_BE;
+		ddr_cfg_regs.cs[0].bnds = 0x0000001F;
+		ddr_size = (CONFIG_SYS_SDRAM_SIZE * 1024 * 1024 / 2);
+	}
+	else
+		ddr_size = CONFIG_SYS_SDRAM_SIZE * 1024 * 1024;
+
+	fsl_ddr_set_memctl_regs(&ddr_cfg_regs, 0);
+
+	set_ddr_laws(0, ddr_size, LAW_TRGT_IF_DDR_1);
+	return ddr_size;
+}
diff --git a/arch/ppc/boards/freescale/p1_p2_rdb/law.c b/arch/ppc/boards/freescale/p1_p2_rdb/law.c
new file mode 100644
index 0000000..4c80fa6
--- /dev/null
+++ b/arch/ppc/boards/freescale/p1_p2_rdb/law.c
@@ -0,0 +1,33 @@
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
+	SET_LAW(CONFIG_SYS_FLASH_BASE_PHYS, LAW_SIZE_16M, LAW_TRGT_IF_LBC),
+	SET_LAW(CONFIG_SYS_VSC7385_BASE_PHYS, LAW_SIZE_128K, LAW_TRGT_IF_LBC),
+	SET_LAW(CONFIG_SYS_NAND_BASE_PHYS, LAW_SIZE_1M, LAW_TRGT_IF_LBC),
+};
+
+int num_law_entries = ARRAY_SIZE(law_table);
diff --git a/arch/ppc/boards/freescale/p1_p2_rdb/p1_p2_rdb.c b/arch/ppc/boards/freescale/p1_p2_rdb/p1_p2_rdb.c
new file mode 100644
index 0000000..c3fb549
--- /dev/null
+++ b/arch/ppc/boards/freescale/p1_p2_rdb/p1_p2_rdb.c
@@ -0,0 +1,463 @@
+/*
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
+#include <console.h>
+#include <init.h>
+#include <driver.h>
+#include <environment.h>
+#include <asm/io.h>
+#include <ns16550.h>
+#include <types.h>
+#include <partition.h>
+#include <xfuncs.h>
+#include <malloc.h>
+#include <miidev.h>
+#include <i2c/i2c.h>
+#include <lmb.h>
+
+#include <asm/processor.h>
+#include <asm/mmu.h>
+#include <asm/cache.h>
+#include <asm/fsl_serdes.h>
+#include <asm/global_data.h>
+#include <asm/fsl_ddr_sdram.h>
+#include <asm/fsl_law.h>
+#include <asm/io.h>
+#include <libfdt.h>
+#ifdef CONFIG_VSC7385_ENET
+#include <vsc7385.h>
+#endif
+#include <rtc.h>
+
+#include <mach/immap_85xx.h>
+#include <mach/uart.h>
+#include <mach/tsec.h>
+#include <mach/clocks.h>
+#include <mach/early_udelay.h>
+
+DECLARE_GLOBAL_DATA_PTR;
+
+#define VSC7385_RST_SET		0x00080000
+#define SLIC_RST_SET		0x00040000
+#define SGMII_PHY_RST_SET	0x00020000
+#define PCIE_RST_SET		0x00010000
+#define RGMII_PHY_RST_SET	0x02000000
+
+#define USB_RST_CLR		0x04000000
+
+#define GPIO_DIR		0x060f0000
+
+#define BOARD_PERI_RST_SET	VSC7385_RST_SET | SLIC_RST_SET | \
+				SGMII_PHY_RST_SET | PCIE_RST_SET | \
+				RGMII_PHY_RST_SET
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
+
+#ifdef CONFIG_DRIVER_NET_TSEC
+static int board_eth_init(void);
+static int get_mac(struct tsec_info_struct *, unsigned char *);
+
+static char default_mac[6] = {0x00, 0x30, 0xF7, 0xDE, 0xF0, 0x14};
+#endif
+
+/*
+ * I2C
+ */
+#ifdef CONFIG_I2C
+static struct fsl_i2c_plat i2c1plat = {
+	.bus_num = 0,
+	.slaveadr =  CONFIG_SYS_I2C_SLAVE,
+	.speed =  CONFIG_SYS_I2C_SPEED,
+};
+
+static struct fsl_i2c_plat i2c2plat = {
+	.bus_num = 1,
+	.slaveadr =  CONFIG_SYS_I2C_SLAVE,
+	.speed =  CONFIG_SYS_I2C_SPEED,
+};
+
+static struct i2c_board_info i2c_devices[] = {
+	{
+		I2C_BOARD_INFO("eepromid", CONFIG_SYS_I2C_EEPROM_ADDR),
+	},
+	{
+		I2C_BOARD_INFO("rtc", CONFIG_SYS_I2C_RTC_ADDR),
+	},
+};
+#endif
+
+/*
+ * Ethernet.
+ */
+#ifdef CONFIG_DRIVER_NET_TSEC
+static struct tsec_info_struct tsec_info[] = {
+#ifdef CONFIG_TSEC1
+	STD_TSEC_INFO(1),
+#endif
+#ifdef CONFIG_TSEC2
+	STD_TSEC_INFO(2),
+#endif
+#ifdef CONFIG_TSEC3
+	STD_TSEC_INFO(3),
+#endif
+};
+#endif
+
+static int devices_init (void)
+{
+	add_cfi_flash_device(-1, CONFIG_SYS_FLASH_BASE, 16 << 20, 0);
+
+	add_mem_device("ram0", 0x0, CONFIG_SYS_SDRAM_SIZE << 20,
+				   IORESOURCE_MEM_WRITEABLE);
+
+
+#ifdef CONFIG_I2C
+	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
+	add_generic_device("fsl_i2c", -1, NULL, (CONFIG_SYS_IMMR +
+											CONFIG_SYS_I2C_OFFSET),
+					   0x100, IORESOURCE_MEM, &i2c1plat);
+	add_generic_device("fsl_i2c", -1, NULL, (CONFIG_SYS_IMMR +
+											CONFIG_SYS_I2C2_OFFSET),
+					   0x100, IORESOURCE_MEM, &i2c2plat);
+#endif
+
+#ifdef CONFIG_DRIVER_NET_TSEC
+	board_eth_init();
+#ifdef CONFIG_TSEC1
+	add_generic_device("tsec", 1, NULL, TSEC_BASE_ADDR, TSEC_SIZE,
+					   IORESOURCE_MEM, &tsec_info[0]);
+#endif
+#ifdef CONFIG_TSEC2
+	add_generic_device("tsec", 2, NULL, TSEC_BASE_ADDR + 0x1000, TSEC_SIZE,
+					   IORESOURCE_MEM, &tsec_info[1]);
+#endif
+#ifdef CONFIG_TSEC3
+	add_generic_device("tsec", 3, NULL, TSEC_BASE_ADDR + 0x2000, TSEC_SIZE,
+					   IORESOURCE_MEM, &tsec_info[2]);
+#endif
+#endif
+
+	/* Barebox */
+    devfs_add_partition("nor0", 0xf80000, 0x80000, PARTITION_FIXED, "self0");
+
+
+#ifdef CONFIG_FSL_ELBC
+    add_generic_device("elbc_nand", -1, NULL, CONFIG_SYS_NAND_BASE, (32 << 10),
+                        IORESOURCE_MEM, NULL);
+#endif
+    return 0;
+}
+
+device_initcall(devices_init);
+
+static struct NS16550_plat serial_plat = {
+	.clock = 0,      /* to  be filled in */
+	.shift = 0,
+};
+
+
+static int p1_p2_console_init(void)
+{
+	serial_plat.clock = get_bus_freq(0);
+
+	/* Register the serial port */
+	add_ns16550_device(-1, CONFIG_SYS_NS16550_COM1, 16, IORESOURCE_MEM_8BIT,
+			   &serial_plat);
+
+	return 0;
+}
+
+console_initcall(p1_p2_console_init);
+
+void *get_early_console_base(const char *name)
+{
+	return (void *)CONFIG_SYS_NS16550_COM1;
+}
+
+/*
+ * fixed_sdram: fixed sdram settings.
+ *
+ * This function is used for debugging purpose and in case there is
+ * a failure with the SPD.
+ */
+phys_size_t fixed_sdram (void)
+{
+	volatile ccsr_ddr_t *ddr = (void *)CONFIG_SYS_MPC85xx_DDR_ADDR;
+	int sdram_cfg = (SDRAM_CFG_MEM_EN | SDRAM_CFG_SREN |
+			 SDRAM_CFG_SDRAM_TYPE_DDR2);
+
+	/* If already enabled (running from RAM) */
+	if (in_be32(&ddr->sdram_cfg) & SDRAM_CFG_MEM_EN)
+	{
+		return CONFIG_SYS_SDRAM_SIZE << CONFIG_1MB_BITSHIFT;
+	}
+
+	/* 1GB of SDRAM */
+	out_be32(&ddr->cs0_bnds, CONFIG_SYS_DDR_CS0_BNDS);
+	out_be32(&ddr->cs0_config, CONFIG_SYS_DDR_CS0_CONFIG);
+	out_be32(&ddr->timing_cfg_3, CONFIG_SYS_DDR_TIMING_3);
+	out_be32(&ddr->timing_cfg_0, CONFIG_SYS_DDR_TIMING_0);
+	out_be32(&ddr->timing_cfg_1, CONFIG_SYS_DDR_TIMING_1);
+	out_be32(&ddr->timing_cfg_2, CONFIG_SYS_DDR_TIMING_2);
+	out_be32(&ddr->sdram_cfg_2, CONFIG_SYS_DDR_CONTROL2);
+	out_be32(&ddr->sdram_mode, CONFIG_SYS_DDR_MODE_1);
+	out_be32(&ddr->sdram_mode_2, CONFIG_SYS_DDR_MODE_2);
+	out_be32(&ddr->sdram_md_cntl, CONFIG_SYS_MD_CNTL);
+	/* Basic refresh rate (7.8us),high temp is 3.9us  */
+	out_be32(&ddr->sdram_interval, CONFIG_SYS_DDR_INTERVAL);
+	out_be32(&ddr->sdram_data_init, CONFIG_SYS_DDR_DATA_INIT);
+	/* 1 clk adjustment */
+	out_be32(&ddr->sdram_clk_cntl, CONFIG_SYS_DDR_CLK_CTRL);
+
+	out_be32(&ddr->init_addr, 0);
+	out_be32(&ddr->init_ext_addr, 0);
+
+	/*
+	 * According to arch/powerpc/cpu/mpc85xx/ddr-gen2.c:
+	 * 200 painful micro-seconds must elapse between
+	 * the DDR clock setup and the DDR config enable.
+	 */
+	early_udelay(200);
+	asm volatile ("sync;isync");
+
+	out_be32(&ddr->sdram_cfg, sdram_cfg);
+
+	if (set_ddr_laws(CONFIG_SYS_DDR_SDRAM_BASE,
+			 CONFIG_SYS_SDRAM_SIZE << CONFIG_1MB_BITSHIFT,
+			 LAW_TRGT_IF_DDR) < 0) {
+	/*	printf("ERROR setting Local Access Windows for DDR\n");*/
+		return 0;
+	}
+
+	return CONFIG_SYS_SDRAM_SIZE << CONFIG_1MB_BITSHIFT;
+}
+
+/* FIXME: MAC comes from eeprom. For now do not bother reading it. */
+#ifdef CONFIG_DRIVER_NET_TSEC
+int get_mac(struct tsec_info_struct *tsec_info, unsigned char *mac)
+{
+	if (!strcmp(tsec_info->devname, CONFIG_TSEC1_NAME))
+	{
+		memcpy(mac, default_mac, 6);
+	}
+	else if (!strcmp(tsec_info->devname, CONFIG_TSEC2_NAME))
+	{
+		default_mac[5] += 1;
+		memcpy(mac, default_mac, 6);
+	}
+	else if (!strcmp(tsec_info->devname, CONFIG_TSEC3_NAME))
+	{
+		default_mac[5] += 2;
+		memcpy(mac, default_mac, 6);
+	}
+
+	return 0;
+}
+#endif
+
+unsigned long get_board_sys_clk(ulong dummy)
+{
+	volatile ccsr_gpio_t *pgpio = (void *)(CONFIG_SYS_MPC85xx_GPIO_ADDR);
+	u32 val_gpdat, sysclk_gpio, board_rev_gpio;
+
+	val_gpdat = in_be32(&pgpio->gpdat);
+	sysclk_gpio = val_gpdat & SYSCLK_MASK;
+	board_rev_gpio = val_gpdat & BOARDREV_MASK;
+
+	if (board_rev_gpio == BOARDREV_C) {
+		if(sysclk_gpio == 0)
+			return SYSCLK_66;
+		else
+			return SYSCLK_100;
+	} else if (board_rev_gpio == BOARDREV_B) {
+		if(sysclk_gpio == 0)
+			return SYSCLK_66;
+		else
+			return SYSCLK_50;
+	} else if (board_rev_gpio == BOARDREV_D) {
+		if(sysclk_gpio == 0)
+			return SYSCLK_66;
+		else
+			return SYSCLK_100;
+	}
+	return 0;
+}
+
+#ifdef CONFIG_MMC
+int board_early_init_f (void)
+{
+	volatile ccsr_gur_t *gur = (void *)(CONFIG_SYS_MPC85xx_GUTS_ADDR);
+
+	setbits_be32(&gur->pmuxcr,
+		     (MPC85xx_PMUXCR_SDHC_CD |
+		      MPC85xx_PMUXCR_SDHC_WP));
+	return 0;
+}
+#endif
+
+int checkboard (void)
+{
+	u32 val_gpdat, board_rev_gpio;
+	volatile ccsr_gpio_t *pgpio = (void *)(CONFIG_SYS_MPC85xx_GPIO_ADDR);
+	char board_rev = 0;
+	struct cpu_type *cpu;
+
+	val_gpdat = in_be32(&pgpio->gpdat);
+	board_rev_gpio = val_gpdat & BOARDREV_MASK;
+	if (board_rev_gpio == BOARDREV_C)
+		board_rev = 'C';
+	else if (board_rev_gpio == BOARDREV_B)
+		board_rev = 'B';
+	else if (board_rev_gpio == BOARDREV_D)
+		board_rev = 'D';
+	else
+		panic ("Unexpected Board REV %x detected!!\n", board_rev_gpio);
+
+	cpu = gd->cpu;
+	/*printf ("Board: %sRDB Rev%c\n", cpu->name, board_rev); */
+	setbits_be32(&pgpio->gpdir, GPIO_DIR);
+
+/*
+ * Bringing the following peripherals out of reset via GPIOs
+ * 0 = reset and 1 = out of reset
+ * GPIO12 - Reset to Ethernet Switch
+ * GPIO13 - Reset to SLIC/SLAC devices
+ * GPIO14 - Reset to SGMII_PHY_N
+ * GPIO15 - Reset to PCIe slots
+ * GPIO6  - Reset to RGMII PHY
+ * GPIO5  - Reset to USB3300 devices 1 = reset and 0 = out of reset
+ */
+	clrsetbits_be32(&pgpio->gpdat, USB_RST_CLR, BOARD_PERI_RST_SET);
+
+	return 0;
+}
+
+int board_early_init_r(void)
+{
+	const unsigned int flashbase = CONFIG_SYS_FLASH_BASE;
+	const u8 flash_esel = find_tlb_idx((void *)flashbase, 1);
+
+	/*
+	 * Remap Boot flash region to caching-inhibited
+	 * so that flash can be erased properly.
+	 */
+
+	/* Flush d-cache and invalidate i-cache of any FLASH data */
+	flush_dcache();
+	invalidate_icache();
+
+	/* invalidate existing TLB entry for flash */
+	disable_tlb(flash_esel);
+
+	set_tlb(1, flashbase, CONFIG_SYS_FLASH_BASE_PHYS,
+			MAS3_SX|MAS3_SW|MAS3_SR, MAS2_I|MAS2_G,
+			0, flash_esel, BOOKE_PAGESZ_16M, 1);
+
+	checkboard();
+
+	return 0;
+}
+
+
+#ifdef CONFIG_DRIVER_NET_TSEC
+int board_eth_init(void)
+{
+	struct tsec_info_struct tsec_info[4];
+	int num = 0;
+#ifdef CONFIG_VSC7385_ENET
+	char *tmp;
+	unsigned int vscfw_addr;
+#endif
+
+#ifdef CONFIG_TSEC1
+	SET_STD_TSEC_INFO(tsec_info[num], 1);
+	tsec_info[num].get_mac = get_mac;
+	num++;
+#endif
+#ifdef CONFIG_TSEC2
+	SET_STD_TSEC_INFO(tsec_info[num], 2);
+	tsec_info[num].get_mac = get_mac;
+	num++;
+#endif
+#ifdef CONFIG_TSEC3
+	SET_STD_TSEC_INFO(tsec_info[num], 3);
+	if (is_serdes_configured(SGMII_TSEC3)) {
+		puts("eTSEC3 is in sgmii mode.\n");
+		tsec_info[num].flags |= TSEC_SGMII;
+	}
+	tsec_info[num].get_mac = get_mac;
+	num++;
+#endif
+	if (!num) {
+		printf("No TSECs initialized\n");
+		return 0;
+	}
+#ifdef CONFIG_VSC7385_ENET
+/* If a VSC7385 microcode image is present, then upload it. */
+	if ((tmp = getenv ("vscfw_addr")) != NULL) {
+		vscfw_addr = simple_strtoul (tmp, NULL, 16);
+		printf("uploading VSC7385 microcode from %x\n", vscfw_addr);
+		if (vsc7385_upload_firmware((void *) vscfw_addr,
+					    CONFIG_VSC7385_IMAGE_SIZE))
+			puts("Failure uploading VSC7385 microcode.\n");
+	} else
+		puts("No address specified for VSC7385 microcode.\n");
+#endif
+
+	return 0;
+	/*return pci_eth_init(bis);*/
+}
+#endif
+
+#if defined(CONFIG_OF_BOARD_SETUP)
+extern void ft_pci_board_setup(void *blob);
+
+void ft_board_setup(void *blob, bd_t *bd)
+{
+	phys_addr_t base;
+	phys_size_t size;
+
+	ft_cpu_setup(blob, bd);
+
+	base = getenv_bootm_low();
+	size = getenv_bootm_size();
+
+#if defined(CONFIG_PCI)
+	ft_pci_board_setup(blob);
+#endif /* #if defined(CONFIG_PCI) */
+
+	fdt_fixup_memory(blob, (u64)base, (u64)size);
+}
+#endif
+
+#ifdef CONFIG_NAND
+#endif
diff --git a/arch/ppc/boards/freescale/p1_p2_rdb/pci.c b/arch/ppc/boards/freescale/p1_p2_rdb/pci.c
new file mode 100644
index 0000000..bd1a91e
--- /dev/null
+++ b/arch/ppc/boards/freescale/p1_p2_rdb/pci.c
@@ -0,0 +1,43 @@
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
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <command.h>
+#include <pci.h>
+#include <asm/immap_85xx.h>
+#include <asm/fsl_serdes.h>
+#include <asm/io.h>
+#include <asm/fsl_pci.h>
+#include <libfdt.h>
+#include <fdt_support.h>
+
+DECLARE_GLOBAL_DATA_PTR;
+
+void pci_init_board(void)
+{
+	fsl_pcie_init_board(0);
+}
+
+void ft_pci_board_setup(void *blob)
+{
+	FT_FSL_PCI_SETUP;
+}
diff --git a/arch/ppc/boards/freescale/p1_p2_rdb/tlb.c b/arch/ppc/boards/freescale/p1_p2_rdb/tlb.c
new file mode 100644
index 0000000..b85c268
--- /dev/null
+++ b/arch/ppc/boards/freescale/p1_p2_rdb/tlb.c
@@ -0,0 +1,95 @@
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
+	SET_TLB_ENTRY(0, CONFIG_SYS_INIT_RAM_ADDR, CONFIG_SYS_INIT_RAM_ADDR,
+			MAS3_SX|MAS3_SW|MAS3_SR, 0,
+			0, 0, BOOKE_PAGESZ_4K, 0),
+	SET_TLB_ENTRY(0, CONFIG_SYS_INIT_RAM_ADDR + 4 * 1024 ,
+			CONFIG_SYS_INIT_RAM_ADDR + 4 * 1024,
+			MAS3_SX|MAS3_SW|MAS3_SR, 0,
+			0, 0, BOOKE_PAGESZ_4K, 0),
+	SET_TLB_ENTRY(0, CONFIG_SYS_INIT_RAM_ADDR + 8 * 1024 ,
+			CONFIG_SYS_INIT_RAM_ADDR + 8 * 1024,
+			MAS3_SX|MAS3_SW|MAS3_SR, 0,
+			0, 0, BOOKE_PAGESZ_4K, 0),
+	SET_TLB_ENTRY(0, CONFIG_SYS_INIT_RAM_ADDR + 12 * 1024 ,
+			CONFIG_SYS_INIT_RAM_ADDR + 12 * 1024,
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
+	SET_TLB_ENTRY(1, CONFIG_SYS_CCSRBAR, CONFIG_SYS_CCSRBAR_PHYS,
+			MAS3_SX|MAS3_SW|MAS3_SR, MAS2_I|MAS2_G,
+			0, 1, BOOKE_PAGESZ_1M, 1),
+
+	/* W**G* - Flash/promjet, localbus */
+	/* This will be changed to *I*G* after relocation to RAM. */
+	SET_TLB_ENTRY(1, CONFIG_SYS_FLASH_BASE, CONFIG_SYS_FLASH_BASE_PHYS,
+			MAS3_SX|MAS3_SR, MAS2_W|MAS2_G,
+			0, 2, BOOKE_PAGESZ_16M, 1),
+
+#if defined(CONFIG_PCI)
+	/* *I*G* - PCI */
+	SET_TLB_ENTRY(1, CONFIG_SYS_PCIE2_MEM_VIRT, CONFIG_SYS_PCIE2_MEM_PHYS,
+			MAS3_SX|MAS3_SW|MAS3_SR, MAS2_I|MAS2_G,
+			0, 3, BOOKE_PAGESZ_1G, 1),
+
+	/* *I*G* - PCI I/O */
+	SET_TLB_ENTRY(1, CONFIG_SYS_PCIE2_IO_VIRT, CONFIG_SYS_PCIE2_IO_PHYS,
+			MAS3_SX|MAS3_SW|MAS3_SR, MAS2_I|MAS2_G,
+			0, 4, BOOKE_PAGESZ_256K, 1),
+
+#endif /* #if defined(CONFIG_PCI) */
+	/* *I*G - NAND */
+	SET_TLB_ENTRY(1, CONFIG_SYS_NAND_BASE, CONFIG_SYS_NAND_BASE_PHYS,
+			MAS3_SX|MAS3_SW|MAS3_SR, MAS2_I|MAS2_G,
+			0, 5, BOOKE_PAGESZ_1M, 1),
+
+	/* *I*G - VSC7385 Switch */
+	SET_TLB_ENTRY(1, CONFIG_SYS_VSC7385_BASE, CONFIG_SYS_VSC7385_BASE_PHYS,
+			MAS3_SX|MAS3_SW|MAS3_SR, MAS2_I|MAS2_G,
+			0, 6, BOOKE_PAGESZ_1M, 1),
+
+#if defined(CONFIG_SYS_RAMBOOT) && defined(CONFIG_SYS_INIT_L2_ADDR)
+	/* *I*G - L2SRAM */
+	SET_TLB_ENTRY(1, CONFIG_SYS_INIT_L2_ADDR, CONFIG_SYS_INIT_L2_ADDR_PHYS,
+			MAS3_SX|MAS3_SW|MAS3_SR, MAS2_I|MAS2_G,
+			0, 7, BOOKE_PAGESZ_256K, 1),
+	SET_TLB_ENTRY(1, CONFIG_SYS_INIT_L2_ADDR + 0x40000,
+			CONFIG_SYS_INIT_L2_ADDR_PHYS + 0x40000,
+			MAS3_SX|MAS3_SW|MAS3_SR, MAS2_I|MAS2_G,
+			0, 8, BOOKE_PAGESZ_256K, 1),
+#endif
+};
+
+int num_tlb_entries = ARRAY_SIZE(tlb_table);
diff --git a/arch/ppc/configs/p2020rdb_defconfig b/arch/ppc/configs/p2020rdb_defconfig
new file mode 100644
index 0000000..f79b5fb
--- /dev/null
+++ b/arch/ppc/configs/p2020rdb_defconfig
@@ -0,0 +1,24 @@
+CONFIG_ARCH_MPC8XXX=y
+CONFIG_P1_P2_RDB=y
+CONFIG_P2020=y
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_BOOTM_ZLIB=y
+CONFIG_CMD_BOOTM_BZLIB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_DRIVER_CFI=y
+CONFIG_DRIVER_CFI_AMD=y
+CONFIG_DRIVER_CFI_INTEL=n
+CONFIG_DRIVER_CFI_BANK_WIDTH_1=n
+CONFIG_DRIVER_CFI_BANK_WIDTH_2=y
+CONFIG_DRIVER_CFI_BANK_WIDTH_4=n
+CONFIG_MTD=y
+CONFIG_MALLOC_SIZE=0x2800000
+CONFIG_BAUDRATE=115200
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_RELOCATABLE=y
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
