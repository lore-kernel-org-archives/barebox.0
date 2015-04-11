Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp03.smtpout.orange.fr ([80.12.242.125]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yh3DT-0005i3-Vg
 for barebox@lists.infradead.org; Sat, 11 Apr 2015 21:45:30 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Sat, 11 Apr 2015 23:44:52 +0200
Message-Id: <1428788692-11334-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH] ARM: pxa: add mainstone board support
To: barebox@lists.infradead.org

Add support for the Intel XScale PXA270 development system platform.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 arch/arm/boards/Makefile                           |   1 +
 arch/arm/boards/mainstone/Makefile                 |   2 +
 arch/arm/boards/mainstone/board.c                  | 134 +++++++++++
 arch/arm/boards/mainstone/env/boot/nor-ubi         |   5 +
 arch/arm/boards/mainstone/env/init/mtdparts-nor    |  11 +
 .../boards/mainstone/env/nv/linux.bootargs.console |   1 +
 arch/arm/boards/mainstone/lowlevel.c               | 264 +++++++++++++++++++++
 arch/arm/configs/mainstone_defconfig               | 109 +++++++++
 arch/arm/mach-pxa/Kconfig                          |   5 +
 9 files changed, 532 insertions(+)
 create mode 100644 arch/arm/boards/mainstone/Makefile
 create mode 100644 arch/arm/boards/mainstone/board.c
 create mode 100644 arch/arm/boards/mainstone/env/boot/nor-ubi
 create mode 100644 arch/arm/boards/mainstone/env/init/mtdparts-nor
 create mode 100644 arch/arm/boards/mainstone/env/nv/linux.bootargs.console
 create mode 100644 arch/arm/boards/mainstone/lowlevel.c
 create mode 100644 arch/arm/configs/mainstone_defconfig

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index aee1665..2f7b094 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -57,6 +57,7 @@ obj-$(CONFIG_MACH_IMX21ADS)			+= freescale-mx21-ads/
 obj-$(CONFIG_MACH_IMX233_OLINUXINO)		+= imx233-olinuxino/
 obj-$(CONFIG_MACH_IMX27ADS)			+= freescale-mx27-ads/
 obj-$(CONFIG_MACH_LUBBOCK)			+= lubbock/
+obj-$(CONFIG_MACH_MAINSTONE)			+= mainstone/
 obj-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP)		+= marvell-armada-xp-gp/
 obj-$(CONFIG_MACH_MB7707)			+= module-mb7707/
 obj-$(CONFIG_MACH_MIOA701)			+= mioa701/
diff --git a/arch/arm/boards/mainstone/Makefile b/arch/arm/boards/mainstone/Makefile
new file mode 100644
index 0000000..01c7a25
--- /dev/null
+++ b/arch/arm/boards/mainstone/Makefile
@@ -0,0 +1,2 @@
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/mainstone/board.c b/arch/arm/boards/mainstone/board.c
new file mode 100644
index 0000000..c339bb9
--- /dev/null
+++ b/arch/arm/boards/mainstone/board.c
@@ -0,0 +1,134 @@
+/*
+ * (C) 2015 Robert Jarzmik <robert.jarzmik@free.fr>
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
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <environment.h>
+#include <fs.h>
+#include <init.h>
+#include <partition.h>
+#include <led.h>
+#include <gpio.h>
+#include <pwm.h>
+#include <linux/sizes.h>
+
+#include <mach/devices.h>
+#include <mach/mfp-pxa27x.h>
+#include <mach/pxa-regs.h>
+#include <mach/udc_pxa2xx.h>
+#include <mach/mci_pxa2xx.h>
+
+#include <net/smc91111.h>
+#include <asm/armlinux.h>
+#include <asm/io.h>
+#include <asm/mmu.h>
+
+#include <generated/mach-types.h>
+
+static struct smc91c111_pdata smsc91x_pdata = {
+	.word_aligned_short_writes = true,
+};
+
+static unsigned long mainstone_pin_config[] = {
+	GPIO15_nCS_1,	/* CS1 - Flash */
+	GPIO78_nCS_2,	/* CS2 - Baseboard FGPA + SRAM */
+	GPIO80_nCS_4,	/* CS4 - SMC ethernet */
+
+	/* Ethernet: static memory VLIO */
+	GPIO18_RDY,
+
+	/* PC Card */
+	GPIO48_nPOE,
+	GPIO49_nPWE,
+	GPIO50_nPIOR,
+	GPIO51_nPIOW,
+	GPIO85_nPCE_1,
+	GPIO54_nPCE_2,
+	GPIO79_PSKTSEL,
+	GPIO55_nPREG,
+	GPIO56_nPWAIT,
+	GPIO57_nIOIS16,
+
+	/* MMC */
+	GPIO32_MMC_CLK,
+	GPIO112_MMC_CMD,
+	GPIO92_MMC_DAT_0,
+	GPIO109_MMC_DAT_1,
+	GPIO110_MMC_DAT_2,
+	GPIO111_MMC_DAT_3,
+
+	/* LCD - 16bpp DSTN */
+	GPIOxx_LCD_TFT_16BPP,
+
+	/* Backlight */
+	GPIO16_PWM0_OUT,
+
+	/* FFUART */
+	GPIO34_FFUART_RXD,
+	GPIO35_FFUART_CTS,
+	GPIO36_FFUART_DCD,
+	GPIO37_FFUART_DSR,
+	GPIO38_FFUART_RI,
+	GPIO39_FFUART_TXD,
+	GPIO40_FFUART_DTR,
+	GPIO41_FFUART_RTS,
+};
+
+static int mainstone_devices_init(void)
+{
+	void *nor0_iospace;
+
+	armlinux_set_architecture(MACH_TYPE_MAINSTONE);
+
+	pxa_add_uart((void *)0x40100000, 0);
+	pxa_add_pwm((void *)0x40b00000, 0);
+
+	nor0_iospace = map_io_sections(0x0, (void *)0xe0000000, SZ_64M);
+	add_cfi_flash_device(0, (ulong)nor0_iospace, SZ_64M, 0);
+	add_cfi_flash_device(1, 0x04000000, SZ_64M, 0);
+	devfs_add_partition("nor0", SZ_2M, SZ_256K, DEVFS_PARTITION_FIXED,
+			    "env0");
+	add_generic_device("smc91c111", DEVICE_ID_DYNAMIC, NULL,
+			   0x10000300, 0xff4000, IORESOURCE_MEM,
+			   &smsc91x_pdata);
+	return 0;
+}
+
+device_initcall(mainstone_devices_init);
+
+static int mainstone_coredevice_init(void)
+{
+	/*
+	 * Put the board in superspeed (520 MHz) to speed-up logo/OS loading.
+	 */
+	CCCR = CCCR_A | 0x20290;
+
+	barebox_set_model("Mainstone PXA27x");
+	barebox_set_hostname("mainstone");
+	pxa2xx_mfp_config(ARRAY_AND_SIZE(mainstone_pin_config));
+	return 0;
+}
+coredevice_initcall(mainstone_coredevice_init);
+
+static int mainstone_mem_init(void)
+{
+	arm_add_mem_device("ram0", 0xa0000000, SZ_64M);
+	add_mem_device("sram0", 0x0a000000, SZ_1M, IORESOURCE_MEM_WRITEABLE);
+	return 0;
+}
+mem_initcall(mainstone_mem_init);
diff --git a/arch/arm/boards/mainstone/env/boot/nor-ubi b/arch/arm/boards/mainstone/env/boot/nor-ubi
new file mode 100644
index 0000000..533605e
--- /dev/null
+++ b/arch/arm/boards/mainstone/env/boot/nor-ubi
@@ -0,0 +1,5 @@
+#!/bin/sh
+
+global.bootm.image="/dev/nor0.kernel"
+#global.bootm.oftree="/env/oftree"
+global.linux.bootargs.dyn.root="root=ubi0:linux_root ubi.mtd=nor0.root rootfstype=ubifs"
diff --git a/arch/arm/boards/mainstone/env/init/mtdparts-nor b/arch/arm/boards/mainstone/env/init/mtdparts-nor
new file mode 100644
index 0000000..3307596
--- /dev/null
+++ b/arch/arm/boards/mainstone/env/init/mtdparts-nor
@@ -0,0 +1,11 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+        init-menu-add-entry "$0" "NOR partitions"
+        exit
+fi
+
+mtdparts="2048k@0(nor0.barebox)ro,256k(nor0.barebox-env),256k(nor0.barebox-logo),256k(nor0.barebox-logo2),5120k(nor0.kernel),-(nor0.root)"
+kernelname="application-flash"
+
+mtdparts-add -d nor0 -k ${kernelname} -p ${mtdparts}
diff --git a/arch/arm/boards/mainstone/env/nv/linux.bootargs.console b/arch/arm/boards/mainstone/env/nv/linux.bootargs.console
new file mode 100644
index 0000000..476b1fb
--- /dev/null
+++ b/arch/arm/boards/mainstone/env/nv/linux.bootargs.console
@@ -0,0 +1 @@
+console=ttyS0,115200
diff --git a/arch/arm/boards/mainstone/lowlevel.c b/arch/arm/boards/mainstone/lowlevel.c
new file mode 100644
index 0000000..86bb09c
--- /dev/null
+++ b/arch/arm/boards/mainstone/lowlevel.c
@@ -0,0 +1,264 @@
+#include <common.h>
+#include <init.h>
+#include <io.h>
+
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <linux/sizes.h>
+#include <mach/pxa-regs.h>
+#include <mach/regs-ost.h>
+
+/*
+ * Memory settings
+ */
+#define DEFAULT_MSC0_VAL	0x23F2B8F2
+#define DEFAULT_MSC1_VAL	0x7ff0fff1
+/*
+ * MSC2: static partitions 4 and 5
+ *
+ * [31]      0   - RBUFF5
+ * [30:28]   111 - RRR5
+ * [27:24]   1111- RDN5
+ * [23:20]   1111- RDF5
+ * [19]      0   - RBW5
+ * [18:16]   000 - RT5
+ * [15]      0   - RBUFF4: Slow device (don't wait for data return)
+ * [14:12]   111 - RRR4: Toff=(2*RRR + 1)*CLK_MEM (from nCS=1 to next nCS=0)
+ * [11:8]    1111- RDN4: T=2*RDN*CLK_MEM (from nOE=1 to addr hold)
+ * [7:4]     1111- RDF4: T=RDF*CLK_MEM of hold nOE/nPWE for read/write
+ * [3]       0   - RBW4: Bus width is 32 bits
+ * [2:0]     000 - RT4: Partition is VLIO
+ */
+#define DEFAULT_MSC2_VAL	0x7ff0fff4
+
+/*
+ * MDCNFG: SDRAM Configuration Register
+ *
+ * [31]      0	 - Memory map 0/1 uses normal 256 MBytes
+ * [30]      0   - dcacx2: no extra column addressing
+ * [29]      0   - reserved
+ * [28]      0	 - SA1111 compatiblity mode
+ * [27]      0   - latch return data with return clock
+ * [26]      0   - alternate addressing for pair 2/3
+ * [25:24]   00  - timings
+ * [23]      0   - internal banks in lower partition 2/3 (not used)
+ * [22:21]   00  - row address bits for partition 2/3 (not used)
+ * [20:19]   00  - column address bits for partition 2/3 (not used)
+ * [18]      0   - SDRAM partition 2/3 width is 32 bit
+ * [17]      0   - SDRAM partition 3 disabled
+ * [16]      0   - SDRAM partition 2 disabled
+ * [15]      0	 - Stack1 : see stack0
+ * [14]      0   - dcacx0 : no extra column addressing
+ * [13]      0   - stack0 : stack = 0b00 => SDRAM address placed on MA<24:10>
+ * [12]      0	 - SA1110 compatiblity mode
+ * [11]      1   - always 1
+ * [10]      0   - no alternate addressing for pair 0/1
+ * [09:08]   10  - tRP=2*MemClk CL=2 tRCD=2*MemClk tRAS=7*MemClk tRC=11*MemClk
+ * [7]       1   - 4 internal banks in partitions 0/1
+ * [06:05]   10  - drac0: 13 row address bits for partition 0/1
+ * [04:03]   01  - dcac0: 9 column address bits for partition 0/1
+ * [02]      0   - SDRAM partition 0/1 width is 32 bit
+ * [01]      1   - enable SDRAM partition 1
+ * [00]      1   - enable SDRAM partition 0
+ *
+ * Configuration is for 1 bank of 64MBytes (13 rows * 9 cols)
+ * in bank0, of width 32 bits, with 4 internal banks.
+ * Timings (in times of SDCLK<1>): tRP = 3clk, CL=3, rRCD=3clk,
+ *                                 tRAS=7clk, tRC=11clk
+ */
+#define DEFAULT_MDCNFG_VAL	0x00000acb
+
+/*
+ * MDREFR: SDRAM Configuration Register
+ *
+ * [25]      0   - K2FREE=0
+ * [24]      0   - K1FREE=0
+ * [23]      0   - K0FREE=0
+ * [22]      0   - SLFRSH=0
+ * [21]
+ * [20]      0   - APD
+ * [19]      0   - K2DB2=0
+ * [18]      0   - K2RUN=0
+ * [17]      1   - K1DB2=1
+ * [16]      1   - K1RUN=1
+ * [15]      0   - EP1IN
+ * [14]      1   - K0DB2=1
+ * [13]      1   - K0RUN=1
+ * [12]
+ * [11..0]  17   - DRI=17
+ */
+#define DEFAULT_MDREFR_VAL	0x00036017
+#define DEFAULT_MDMRS_VAL	0x00320032
+
+#define DEFAULT_FLYCNFG_VAL	0x00000000
+#define DEFAULT_SXCNFG_VAL	0x40044004
+
+/*
+ * PCMCIA and CF Interfaces
+ */
+#define DEFAULT_MECR_VAL	0x00000001
+#define DEFAULT_MCMEM0_VAL	0x00014307
+#define DEFAULT_MCMEM1_VAL	0x00014307
+#define DEFAULT_MCATT0_VAL	0x0001c787
+#define DEFAULT_MCATT1_VAL	0x0001c787
+#define DEFAULT_MCIO0_VAL	0x0001430f
+#define DEFAULT_MCIO1_VAL	0x0001430f
+
+static inline void writelrb(uint32_t val, volatile u32 __iomem *addr)
+{
+	writel(val, addr);
+	barrier();
+	readl(addr);
+	barrier();
+}
+
+static inline void pxa_wait_ticks(int ticks)
+{
+	writel(0, &OSCR);
+	while (readl(&OSCR) < ticks)
+		barrier();
+}
+
+static inline void pxa2xx_dram_init(void)
+{
+	uint32_t tmp, mask;
+	int i;
+	/*
+	 * 1) Initialize Asynchronous static memory controller
+	 */
+
+	writelrb(DEFAULT_MSC1_VAL, &MSC1);
+	writelrb(DEFAULT_MSC2_VAL, &MSC2);
+	/*
+	 * 2) Initialize Card Interface
+	 */
+
+	/* MECR: Memory Expansion Card Register */
+	writelrb(DEFAULT_MECR_VAL, &MECR);
+	/* MCMEM0: Card Interface slot 0 timing */
+	writelrb(DEFAULT_MCMEM0_VAL, &MCMEM0);
+	/* MCMEM1: Card Interface slot 1 timing */
+	writelrb(DEFAULT_MCMEM1_VAL, &MCMEM1);
+	/* MCATT0: Card Interface Attribute Space Timing, slot 0 */
+	writelrb(DEFAULT_MCATT0_VAL, &MCATT0);
+	/* MCATT1: Card Interface Attribute Space Timing, slot 1 */
+	writelrb(DEFAULT_MCATT1_VAL, &MCATT1);
+	/* MCIO0: Card Interface I/O Space Timing, slot 0 */
+	writelrb(DEFAULT_MCIO0_VAL, &MCIO0);
+	/* MCIO1: Card Interface I/O Space Timing, slot 1 */
+	writelrb(DEFAULT_MCIO1_VAL, &MCIO1);
+
+	/*
+	 * 3) Configure Fly-By DMA register
+	 */
+
+	writelrb(DEFAULT_FLYCNFG_VAL, &FLYCNFG);
+
+	/*
+	 * 4) Initialize Timing for Sync Memory (SDCLK0)
+	 */
+
+	/*
+	 * Before accessing MDREFR we need a valid DRI field, so we set
+	 * this to power on defaults + DRI field.
+	 */
+
+	/* Read current MDREFR config and zero out DRI */
+	tmp = readl(&MDREFR) & ~0xfff;
+	tmp |= DEFAULT_MDREFR_VAL & 0xfff;
+	writelrb(tmp, &MDREFR);
+
+	/* clear the free-running clock bits (clear K0Free, K1Free, K2Free) */
+	mask = MDREFR_K0FREE | MDREFR_K1FREE | MDREFR_K2FREE |
+		MDREFR_K0DB2 | MDREFR_K0DB4 | MDREFR_K1DB2 | MDREFR_K2DB2 |
+		MDREFR_K0RUN | MDREFR_K1RUN | MDREFR_K2RUN;
+	tmp &= ~mask;
+	tmp |= (DEFAULT_MDREFR_VAL & mask);
+	writelrb(tmp, &MDREFR);
+
+	/*
+	 * 5) Initialize Synchronous Static Memory (Flash/Peripherals)
+	 */
+
+	/* Initialize SXCNFG register. Assert the enable bits.
+	 *
+	 * Write SXMRS to cause an MRS command to all enabled banks of
+	 * synchronous static memory. Note that SXLCR need not be written
+	 * at this time.
+	 */
+	writelrb(DEFAULT_SXCNFG_VAL, &SXCNFG);
+
+	/*
+	 * 6) Initialize SDRAM
+	 */
+
+	tmp &= ~MDREFR_SLFRSH;
+	writelrb(tmp, &MDREFR);
+	tmp |= MDREFR_E1PIN;
+	writelrb(tmp, &MDREFR);
+
+	/*
+	 * 7) Write MDCNFG with MDCNFG:DEx deasserted (set to 0), to configure
+	 *    but not enable each SDRAM partition pair.
+	 */
+
+	mask = MDCNFG_DE0 | MDCNFG_DE1 | MDCNFG_DE2 | MDCNFG_DE3;
+	writelrb(DEFAULT_MDCNFG_VAL & ~mask, &MDCNFG);
+
+	/* Wait for the clock to the SDRAMs to stabilize, 100..200 usec. */
+	pxa_wait_ticks(0x300);
+
+	/*
+	 * 8) Trigger a number (usually 8) refresh cycles by attempting
+	 *    non-burst read or write accesses to disabled SDRAM, as commonly
+	 *    specified in the power up sequence documented in SDRAM data
+	 *    sheets. The address(es) used for this purpose must not be
+	 *    cacheable.
+	 */
+	for (i = 9; i >= 0; i--) {
+		readl(0xa0000000);
+		barrier();
+	}
+	/*
+	 * 9) Write MDCNFG with enable bits asserted (MDCNFG:DEx set to 1).
+	 */
+
+	tmp = (readl(&MDCNFG) & ~mask) | (DEFAULT_MDCNFG_VAL & mask);
+	writelrb(tmp, &MDCNFG);
+
+	/*
+	 * 10) Write MDMRS.
+	 */
+	writelrb(DEFAULT_MDMRS_VAL, &MDMRS);
+
+	/*
+	 * 11) Enable APD
+	 */
+	if (DEFAULT_MDREFR_VAL & MDREFR_APD) {
+		tmp = readl(&MDREFR);
+		tmp |= MDREFR_APD;
+		writelrb(tmp, &MDREFR);
+	}
+}
+
+void __bare_init __naked barebox_arm_reset_vector(void)
+{
+	unsigned long pssr = PSSR;
+	unsigned long pc = get_pc();
+
+	arm_cpu_lowlevel_init();
+	CKEN |= CKEN_OSTIMER | CKEN_MEMC | CKEN_FFUART;
+
+	/*
+	 * When not running from SDRAM, get it out of self refresh, and/or
+	 * initialize it.
+	 */
+	if (!(pc >= 0xa0000000 && pc < 0xb0000000))
+		pxa2xx_dram_init();
+
+	if ((pssr >= 0xa0000000 && pssr < 0xb0000000) ||
+	    (pssr >= 0x04000000 && pssr < 0x10000000))
+		asm("mov pc, %0" : : "r"(pssr) : );
+
+	barebox_arm_entry(0xa0000000, SZ_64M, 0);
+}
diff --git a/arch/arm/configs/mainstone_defconfig b/arch/arm/configs/mainstone_defconfig
new file mode 100644
index 0000000..946902d
--- /dev/null
+++ b/arch/arm/configs/mainstone_defconfig
@@ -0,0 +1,109 @@
+CONFIG_ARCH_PXA=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x100000
+CONFIG_ARCH_PXA27X=y
+CONFIG_AEABI=y
+CONFIG_ARM_BOARD_APPEND_ATAG=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_UNWIND=y
+# CONFIG_BANNER is not set
+CONFIG_MMU=y
+CONFIG_TEXT_BASE=0xa3d00000
+CONFIG_BAREBOX_MAX_BARE_INIT_SIZE=0x80000
+CONFIG_MALLOC_SIZE=0x1000000
+CONFIG_EXPERIMENTAL=y
+CONFIG_MODULES=y
+CONFIG_KALLSYMS=y
+CONFIG_PROMPT="mainstone-barebox:"
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/mainstone/env"
+CONFIG_RESET_SOURCE=y
+CONFIG_DEBUG_INFO=y
+CONFIG_CMD_DMESG=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_LOADS=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_SAVES=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_UBIFORMAT=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_HOST=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_SPLASH=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_POWEROFF=y
+CONFIG_CMD_LSMOD=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
+CONFIG_NET=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_OFDEVICE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_DRIVER_SERIAL_PXA=y
+CONFIG_DRIVER_NET_SMC91111=y
+# CONFIG_SPI is not set
+CONFIG_MTD=y
+CONFIG_DRIVER_CFI=y
+# CONFIG_DRIVER_CFI_AMD is not set
+CONFIG_CFI_BUFFER_WRITE=y
+CONFIG_MTD_UBI=y
+CONFIG_MCI=y
+CONFIG_MCI_PXA=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_KEYBOARD_GPIO=y
+CONFIG_GENERIC_PHY=y
+CONFIG_FS_CRAMFS=y
+CONFIG_FS_EXT4=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
+CONFIG_FS_UBIFS=y
+CONFIG_FS_UBIFS_COMPRESSION_LZO=y
+CONFIG_FS_UBIFS_COMPRESSION_ZLIB=y
+CONFIG_BZLIB=y
+CONFIG_BMP=y
+CONFIG_PNG=y
diff --git a/arch/arm/mach-pxa/Kconfig b/arch/arm/mach-pxa/Kconfig
index 67d1f4b..610fb1c 100644
--- a/arch/arm/mach-pxa/Kconfig
+++ b/arch/arm/mach-pxa/Kconfig
@@ -60,6 +60,11 @@ choice
 	prompt "PXA27x Board Type"
 	bool
 
+config MACH_MAINSTONE
+	bool "Mainstone board"
+	select PWM
+	help
+	  Say Y here if you are using a Mainstone board
 config MACH_MIOA701
 	bool "Mitac Mio A701"
 	select BCH_CONST_PARAMS
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
