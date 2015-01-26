Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp06.smtpout.orange.fr ([80.12.242.128]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YFrIb-0003Iy-Iq
 for barebox@lists.infradead.org; Mon, 26 Jan 2015 21:34:23 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Mon, 26 Jan 2015 22:33:47 +0100
Message-Id: <1422308027-13836-2-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1422308027-13836-1-git-send-email-robert.jarzmik@free.fr>
References: <1422308027-13836-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH 2/2] ARM: pxa: add lubbock board support
To: barebox@lists.infradead.org

Add support for the Intel XScale PXA255 development system platform.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 arch/arm/boards/Makefile                         |   1 +
 arch/arm/boards/lubbock/Makefile                 |   2 +
 arch/arm/boards/lubbock/board.c                  | 191 ++++++++++++++++++++++
 arch/arm/boards/lubbock/env/bin/init             |  24 +++
 arch/arm/boards/lubbock/env/bin/mtd_env_override |   4 +
 arch/arm/boards/lubbock/env/config               |   6 +
 arch/arm/boards/lubbock/lowlevel.c               | 192 +++++++++++++++++++++++
 arch/arm/configs/lubbock_defconfig               | 113 +++++++++++++
 8 files changed, 533 insertions(+)
 create mode 100644 arch/arm/boards/lubbock/Makefile
 create mode 100644 arch/arm/boards/lubbock/board.c
 create mode 100644 arch/arm/boards/lubbock/env/bin/init
 create mode 100644 arch/arm/boards/lubbock/env/bin/mtd_env_override
 create mode 100644 arch/arm/boards/lubbock/env/config
 create mode 100644 arch/arm/boards/lubbock/lowlevel.c
 create mode 100644 arch/arm/configs/lubbock_defconfig

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index c536298..e263760 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -55,6 +55,7 @@ obj-$(CONFIG_MACH_HIGHBANK)			+= highbank/
 obj-$(CONFIG_MACH_IMX21ADS)			+= freescale-mx21-ads/
 obj-$(CONFIG_MACH_IMX233_OLINUXINO)		+= imx233-olinuxino/
 obj-$(CONFIG_MACH_IMX27ADS)			+= freescale-mx27-ads/
+obj-$(CONFIG_MACH_LUBBOCK)			+= lubbock/
 obj-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP)		+= marvell-armada-xp-gp/
 obj-$(CONFIG_MACH_MB7707)			+= module-mb7707/
 obj-$(CONFIG_MACH_MIOA701)			+= mioa701/
diff --git a/arch/arm/boards/lubbock/Makefile b/arch/arm/boards/lubbock/Makefile
new file mode 100644
index 0000000..01c7a25
--- /dev/null
+++ b/arch/arm/boards/lubbock/Makefile
@@ -0,0 +1,2 @@
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/lubbock/board.c b/arch/arm/boards/lubbock/board.c
new file mode 100644
index 0000000..1eac736
--- /dev/null
+++ b/arch/arm/boards/lubbock/board.c
@@ -0,0 +1,191 @@
+/*
+ * (C) 2011 Robert Jarzmik <robert.jarzmik@free.fr>
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
+#define ECOR            0x8000
+#define ECOR_RESET      0x80
+#define ECOR_LEVEL_IRQ  0x40
+#define ECOR_WR_ATTRIB  0x04
+#define ECOR_ENABLE     0x01
+
+#define ECSR            0x8002
+#define ECSR_IOIS8      0x20
+#define ECSR_PWRDWN     0x04
+#define ECSR_INT        0x02
+
+static void smc_outb(unsigned value, void __iomem *base, unsigned offset)
+{
+	writeb(value, base + (offset << 2));
+}
+
+static void smc_outw(unsigned value, void __iomem *base, unsigned offset)
+{
+	writew(value, base + (offset << 2));
+}
+
+static void smc_outl(unsigned long value, void __iomem *base, unsigned offset)
+{
+	writew(value & 0xffff, base + (offset << 2));
+	writew(value >> 16, base + ((offset + 2) << 2));
+}
+
+static void smc_outsl(void __iomem *base, unsigned offset, const void *data,
+		      int count)
+{
+	writesw(base + (offset << 2), data, count * 2);
+}
+
+static unsigned smc_inb(void __iomem *base, unsigned offset)
+{
+	return readb(base + (offset << 2));
+}
+
+static unsigned smc_inw(void __iomem *base, unsigned offset)
+{
+	return readw(base + (offset << 2));
+}
+
+static unsigned long smc_inl(void __iomem *base, unsigned offset)
+{
+	unsigned long value;
+
+	value = readw(base + (offset << 2));
+	value |= readw(base + (offset << 2)) << 16;
+
+	return value;
+}
+
+static inline void smc_insl(void __iomem *base, unsigned offset, void *data,
+			    int count)
+{
+	readsw(base + (offset << 2), data, count * 2);
+}
+
+static struct smc91111_accessors lubbock_smc_accessors = {
+	.ob = smc_outb,
+	.ow = smc_outw,
+	.ol = smc_outl,
+	.osl = smc_outsl,
+	.ib = smc_inb,
+	.iw = smc_inw,
+	.il = smc_inl,
+	.isl = smc_insl,
+};
+
+static struct smc91c111_pdata smsc91x_pdata = {
+	.accessors = &lubbock_smc_accessors,
+	.control_setup = 0x0800,
+	.config_setup = 0x10b2,
+};
+
+static unsigned long lubbock_pin_config[] = {
+	GPIO15_nCS_1,	/* CS1 - Flash */
+	GPIO78_nCS_2,	/* CS2 - Baseboard FGPA + SRAM */
+	GPIO79_nCS_3,	/* CS3 - SMC ethernet */
+	GPIO80_nCS_4,	/* CS4 - SA1111 */
+
+	/* LCD - 16bpp DSTN */
+	GPIOxx_LCD_DSTN_16BPP,
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
+static int lubbock_devices_init(void)
+{
+	void *nor0_iospace;
+
+	armlinux_set_architecture(MACH_TYPE_LUBBOCK);
+
+	pxa_add_uart((void *)0x40100000, 0);
+	pxa_add_pwm((void *)0x40b00000, 0);
+
+	nor0_iospace = map_io_sections(0x0, (void *)0xe0000000, SZ_64M);
+	add_cfi_flash_device(0, (ulong)nor0_iospace, SZ_64M, 0);
+	add_cfi_flash_device(1, 0x04000000, SZ_64M, 0);
+
+	add_generic_device("smc91c111", DEVICE_ID_DYNAMIC, NULL,
+			   0x0c000300, 0xff4000, IORESOURCE_MEM,
+			   &smsc91x_pdata);
+	return 0;
+}
+
+device_initcall(lubbock_devices_init);
+
+static void smc_init(void)
+{
+	/* SMC91c96 */
+	void __iomem *attaddr = (void __iomem *)0x0e000000;
+
+	writel(ECOR_RESET, attaddr + (ECOR << 2));
+	mdelay(100);
+	writel(0, attaddr + (ECOR << 2));
+	writel(ECOR_ENABLE, attaddr + (ECOR << 2));
+
+	/* force 16-bit mode */
+	writel(0, attaddr + (ECSR << 2));
+	mdelay(100);
+}
+
+static int lubbock_coredevice_init(void)
+{
+	barebox_set_model("Lubbock PXA25x");
+	barebox_set_hostname("lubbock");
+	pxa2xx_mfp_config(ARRAY_AND_SIZE(lubbock_pin_config));
+	smc_init();
+	return 0;
+}
+coredevice_initcall(lubbock_coredevice_init);
+
+static int lubbock_mem_init(void)
+{
+	arm_add_mem_device("ram0", 0xa0000000, SZ_64M);
+	arm_add_mem_device("sram0", 0x0a000000, SZ_1M);
+	return 0;
+}
+mem_initcall(lubbock_mem_init);
diff --git a/arch/arm/boards/lubbock/env/bin/init b/arch/arm/boards/lubbock/env/bin/init
new file mode 100644
index 0000000..6cd0acb
--- /dev/null
+++ b/arch/arm/boards/lubbock/env/bin/init
@@ -0,0 +1,24 @@
+#!/bin/sh
+
+PATH=/env/bin
+export PATH
+
+. /env/config
+addpart /dev/nor0 $mtdparts
+
+# Phase1: check for MTD override
+mtd_env_override
+if [ $? = 0 ]; then
+    echo "Switching to custom environment"
+    /env/init
+    exit
+fi
+
+# Phase2: initiate network
+eth0.ethaddr="08:00:3e:26:0a:5b"
+dhcp -H lubbock
+
+# Phase3: activate netconsole, broadcast everywhere
+netconsole.ip=255.255.255.255
+netconsole.port=6660
+netconsole.active=ioe
diff --git a/arch/arm/boards/lubbock/env/bin/mtd_env_override b/arch/arm/boards/lubbock/env/bin/mtd_env_override
new file mode 100644
index 0000000..96d5b37
--- /dev/null
+++ b/arch/arm/boards/lubbock/env/bin/mtd_env_override
@@ -0,0 +1,4 @@
+#!/bin/sh
+
+loadenv /dev/nor0.barebox-env
+exit $?
diff --git a/arch/arm/boards/lubbock/env/config b/arch/arm/boards/lubbock/env/config
new file mode 100644
index 0000000..f7bc497
--- /dev/null
+++ b/arch/arm/boards/lubbock/env/config
@@ -0,0 +1,6 @@
+#!/bin/sh
+
+autoboot_timeout=3
+
+mtdparts="2048k@0(barebox)ro,256k(barebox-logo),256k(barebox-logo2),256k(barebox-env),5120k(kernel),-(root)"
+bootargs="$bootargs mtdparts=application-flash:$mtdparts ubi.mtd=5 rootfstype=ubifs root=ubi0:linux_root ro mem=64M console=ttyS0,115200 ip=dhcp"
diff --git a/arch/arm/boards/lubbock/lowlevel.c b/arch/arm/boards/lubbock/lowlevel.c
new file mode 100644
index 0000000..3c8ae76
--- /dev/null
+++ b/arch/arm/boards/lubbock/lowlevel.c
@@ -0,0 +1,192 @@
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
+#define DEFAULT_MSC0_VAL	0x23d223d2
+#define DEFAULT_MSC1_VAL	0x3ff1a441
+#define DEFAULT_MSC2_VAL	0x7ff17ff1
+#define DEFAULT_MDCNFG_VAL	0x00001ac9
+#define DEFAULT_MDREFR_VAL	0x00018018
+#define DEFAULT_MDMRS_VAL	0x00000000
+
+#define DEFAULT_FLYCNFG_VAL	0x00000000
+#define DEFAULT_SXCNFG_VAL	0x00000000
+
+/*
+ * PCMCIA and CF Interfaces
+ */
+#define DEFAULT_MECR_VAL	0x00000000
+#define DEFAULT_MCMEM0_VAL	0x00010504
+#define DEFAULT_MCMEM1_VAL	0x00010504
+#define DEFAULT_MCATT0_VAL	0x00010504
+#define DEFAULT_MCATT1_VAL	0x00010504
+#define DEFAULT_MCIO0_VAL	0x00004715
+#define DEFAULT_MCIO1_VAL	0x00004715
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
+	uint32_t tmp;
+	int i;
+	/*
+	 * 1) Initialize Asynchronous static memory controller
+	 */
+
+	writelrb(DEFAULT_MSC0_VAL, &MSC0);
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
+	/* Add user-specified DRI */
+	tmp |= DEFAULT_MDREFR_VAL & 0xfff;
+	/* Configure important bits */
+	tmp |= MDREFR_K0RUN | MDREFR_SLFRSH;
+	tmp &= ~(MDREFR_APD | MDREFR_E1PIN);
+
+	/* Write MDREFR back */
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
+	writelrb(DEFAULT_MDREFR_VAL & ~MDREFR_SLFRSH, &MDREFR);
+	writelrb(DEFAULT_MDREFR_VAL | MDREFR_E1PIN, &MDREFR);
+
+	/*
+	 * 7) Write MDCNFG with MDCNFG:DEx deasserted (set to 0), to configure
+	 *    but not enable each SDRAM partition pair.
+	 */
+
+	writelrb(DEFAULT_MDCNFG_VAL &
+		 ~(MDCNFG_DE0 | MDCNFG_DE1 | MDCNFG_DE2 | MDCNFG_DE3), &MDCNFG);
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
+		writel(i, 0xa0000000);
+		barrier();
+	}
+	/*
+	 * 9) Write MDCNFG with enable bits asserted (MDCNFG:DEx set to 1).
+	 */
+
+	tmp = DEFAULT_MDCNFG_VAL &
+		(MDCNFG_DE0 | MDCNFG_DE1 | MDCNFG_DE2 | MDCNFG_DE3);
+	tmp |= readl(&MDCNFG);
+	writelrb(tmp, &MDCNFG);
+
+	/*
+	 * 10) Write MDMRS.
+	 */
+
+	writelrb(DEFAULT_MDMRS_VAL, &MDMRS);
+
+	/*
+	 * 11) Enable APD
+	 */
+
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
diff --git a/arch/arm/configs/lubbock_defconfig b/arch/arm/configs/lubbock_defconfig
new file mode 100644
index 0000000..d1382ed
--- /dev/null
+++ b/arch/arm/configs/lubbock_defconfig
@@ -0,0 +1,113 @@
+CONFIG_ARCH_PXA=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x100000
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
+CONFIG_GLOB=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/lubbock/env"
+CONFIG_RESET_SOURCE=y
+CONFIG_DEBUG_INFO=y
+CONFIG_CMD_DMESG=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_FLEXIBLE_BOOTARGS=y
+CONFIG_CMD_BOOT=y
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
+CONFIG_CMD_AUTOMOUNT=y
+CONFIG_CMD_UBIFORMAT=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_GLOBAL=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_BASENAME=y
+CONFIG_CMD_DIRNAME=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_READLINK=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_HOST=y
+CONFIG_NET_CMD_IFUP=y
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
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
