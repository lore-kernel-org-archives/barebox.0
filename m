Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9IHT-0006QM-Jd
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 14:40:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Apr 2011 16:39:47 +0200
Message-Id: <1302532791-20664-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302532791-20664-1-git-send-email-s.hauer@pengutronix.de>
References: <1302532791-20664-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/12] ARM omap4: Add pcm049 board support
To: barebox@lists.infradead.org

This patch adds support for Phytecs pcm049 board

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile                             |    1 +
 arch/arm/boards/pcm049/Makefile               |    1 +
 arch/arm/boards/pcm049/board.c                |  200 +++++++++++++++++++
 arch/arm/boards/pcm049/config.h               |    1 +
 arch/arm/boards/pcm049/env/bin/nand_bootstrap |   31 +++
 arch/arm/boards/pcm049/env/config             |   53 +++++
 arch/arm/boards/pcm049/lowlevel.c             |  127 ++++++++++++
 arch/arm/boards/pcm049/mux.c                  |  254 +++++++++++++++++++++++++
 arch/arm/mach-omap/Kconfig                    |   11 +
 9 files changed, 679 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/pcm049/Makefile
 create mode 100644 arch/arm/boards/pcm049/board.c
 create mode 100644 arch/arm/boards/pcm049/config.h
 create mode 100644 arch/arm/boards/pcm049/env/bin/nand_bootstrap
 create mode 100644 arch/arm/boards/pcm049/env/config
 create mode 100644 arch/arm/boards/pcm049/lowlevel.c
 create mode 100644 arch/arm/boards/pcm049/mux.c

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 1aaefce..21d6157 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -87,6 +87,7 @@ board-$(CONFIG_MACH_OMAP343xSDP)		:= omap
 board-$(CONFIG_MACH_BEAGLE)			:= omap
 board-$(CONFIG_MACH_OMAP3EVM)			:= omap
 board-$(CONFIG_MACH_PANDA)			:= panda
+board-$(CONFIG_MACH_PCM049)			:= pcm049
 board-$(CONFIG_MACH_PCA100)			:= phycard-i.MX27
 board-$(CONFIG_MACH_PCM037)			:= pcm037
 board-$(CONFIG_MACH_PCM038)			:= pcm038
diff --git a/arch/arm/boards/pcm049/Makefile b/arch/arm/boards/pcm049/Makefile
new file mode 100644
index 0000000..1bb7212
--- /dev/null
+++ b/arch/arm/boards/pcm049/Makefile
@@ -0,0 +1 @@
+obj-y += board.o mux.o lowlevel.o
diff --git a/arch/arm/boards/pcm049/board.c b/arch/arm/boards/pcm049/board.c
new file mode 100644
index 0000000..b10ceaf
--- /dev/null
+++ b/arch/arm/boards/pcm049/board.c
@@ -0,0 +1,200 @@
+/*
+ * Copyright (C) 2011 Sascha Hauer, Pengutronix
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
+ *
+ */
+
+#include <common.h>
+#include <console.h>
+#include <init.h>
+#include <driver.h>
+#include <asm/io.h>
+#include <ns16550.h>
+#include <asm/armlinux.h>
+#include <generated/mach-types.h>
+#include <mach/silicon.h>
+#include <mach/sdrc.h>
+#include <mach/sys_info.h>
+#include <mach/syslib.h>
+#include <mach/control.h>
+#include <linux/err.h>
+#include <sizes.h>
+#include <partition.h>
+#include <nand.h>
+#include <asm/mmu.h>
+#include <mach/gpio.h>
+#include <mach/gpmc.h>
+#include <mach/gpmc_nand.h>
+#include <mach/xload.h>
+
+static struct NS16550_plat serial_plat = {
+	.clock = 48000000,      /* 48MHz (APLL96/2) */
+	.f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR,
+	.reg_read = omap_uart_read,
+	.reg_write = omap_uart_write,
+};
+
+static struct device_d pcm049_serial_device = {
+	.id = -1,
+	.name = "serial_ns16550",
+	.map_base = OMAP44XX_UART3_BASE,
+	.size = 1024,
+	.platform_data = (void *)&serial_plat,
+};
+
+static u32 bootsrc;
+
+static int pcm049_console_init(void)
+{
+	bootsrc = readl(0x4030d048);
+	/* Register the serial port */
+	return register_device(&pcm049_serial_device);
+}
+console_initcall(pcm049_console_init);
+
+static struct memory_platform_data sram_pdata = {
+	.name = "sram0",
+	.flags = DEVFS_RDWR,
+};
+
+static struct device_d sram_dev = {
+	.id = -1,
+	.name = "mem",
+	.map_base = 0x40300000,
+	.size = 48 * 1024,
+	.platform_data = &sram_pdata,
+};
+
+static struct memory_platform_data sdram_pdata = {
+	.name = "ram0",
+	.flags = DEVFS_RDWR,
+};
+
+static struct device_d sdram_dev = {
+	.id = -1,
+	.name = "mem",
+	.map_base = 0x80000000,
+	.size = SZ_512M,
+	.platform_data = &sdram_pdata,
+};
+
+#ifdef CONFIG_MMU
+static int pcm049_mmu_init(void)
+{
+	mmu_init();
+
+	arm_create_section(0x80000000, 0x80000000, 256, PMD_SECT_DEF_CACHED);
+	/* warning: This shadows the second half of our ram */
+	arm_create_section(0x90000000, 0x80000000, 256, PMD_SECT_DEF_UNCACHED);
+
+	mmu_enable();
+
+	return 0;
+}
+device_initcall(pcm049_mmu_init);
+#endif
+
+static struct device_d hsmmc_dev = {
+	.id = -1,
+	.name = "omap-hsmmc",
+	.map_base = 0x4809C100,
+	.size = SZ_4K,
+};
+
+static struct device_d smc911x_dev = {
+	.id		= -1,
+	.name		= "smc911x",
+	.map_base	= 0x2C000000,
+	.size		= 0x4000,
+};
+
+static struct gpmc_config net_cfg = {
+	.cfg = {
+		0x00001000,	/* CONF1 */
+		0x001e1e01,	/* CONF2 */
+		0x00080300,	/* CONF3 */
+		0x1c091c09,	/* CONF4 */
+		0x04181f1f,	/* CONF5 */
+		0x00000FCF,	/* CONF6 */
+	},
+	.base = 0x2C000000,
+	.size = GPMC_SIZE_16M,
+};
+
+static void pcm049_network_init(void)
+{
+	gpmc_cs_config(5, &net_cfg);
+
+	register_device(&smc911x_dev);
+}
+
+static int pcm049_devices_init(void)
+{
+	register_device(&sdram_dev);
+	register_device(&sram_dev);
+	register_device(&hsmmc_dev);
+
+	pcm049_network_init();
+
+	gpmc_generic_nand_devices_init(0, 8, OMAP_ECC_BCH8_CODE_HW);
+
+#ifdef CONFIG_PARTITION
+	devfs_add_partition("nand0", 0x00000, SZ_128K, PARTITION_FIXED, "xload_raw");
+	dev_add_bb_dev("xload_raw", "xload");
+	devfs_add_partition("nand0", SZ_128K, SZ_256K, PARTITION_FIXED, "self_raw");
+	dev_add_bb_dev("self_raw", "self0");
+	devfs_add_partition("nand0", SZ_128K + SZ_256K, SZ_128K, PARTITION_FIXED, "env_raw");
+	dev_add_bb_dev("env_raw", "env0");
+#endif
+
+	armlinux_add_dram(&sdram_dev);
+	armlinux_set_bootparams((void *)0x80000100);
+	armlinux_set_architecture(MACH_TYPE_PCM049);
+
+	return 0;
+}
+device_initcall(pcm049_devices_init);
+
+#ifdef CONFIG_SHELL_NONE
+int run_shell(void)
+{
+	int (*func)(void) = NULL;
+
+	switch (omap4_bootsrc()) {
+	case OMAP_BOOTSRC_MMC1:
+		printf("booting from MMC1\n");
+		func = omap_xload_boot_mmc();
+		break;
+	case OMAP_BOOTSRC_UNKNOWN:
+		printf("unknown boot source. Fall back to nand\n");
+	case OMAP_BOOTSRC_NAND:
+		printf("booting from NAND\n");
+		func = omap_xload_boot_nand(SZ_128K, SZ_256K);
+		break;
+	}
+
+	if (!func) {
+		printf("booting failed\n");
+		while (1);
+	}
+
+	shutdown_barebox();
+	func();
+
+	while (1);
+}
+#endif
diff --git a/arch/arm/boards/pcm049/config.h b/arch/arm/boards/pcm049/config.h
new file mode 100644
index 0000000..da84fa5
--- /dev/null
+++ b/arch/arm/boards/pcm049/config.h
@@ -0,0 +1 @@
+/* nothing */
diff --git a/arch/arm/boards/pcm049/env/bin/nand_bootstrap b/arch/arm/boards/pcm049/env/bin/nand_bootstrap
new file mode 100644
index 0000000..acd00dc
--- /dev/null
+++ b/arch/arm/boards/pcm049/env/bin/nand_bootstrap
@@ -0,0 +1,31 @@
+
+echo "copying barebox to nand..."
+
+mci0.probe=1
+mkdir mnt
+
+mount /dev/disk0.0 fat /mnt
+if [ $? != 0 ]; then
+	echo "failed to mount mmc card"
+	exit 1
+fi
+
+if [ ! -f /mnt/mlo-nand.bin ]; then
+	echo "mlo-nand.bin not found on mmc card"
+	exit 1
+fi
+
+if [ ! -f /mnt/barebox.bin ]; then
+	echo "barebox.bin not found on mmc card"
+fi
+
+gpmc_nand0.eccmode=bch8_hw_romcode
+erase /dev/nand0.xload.bb
+cp /mnt/mlo-nand.bin /dev/nand0.xload.bb
+
+gpmc_nand0.eccmode=bch8_hw
+erase /dev/nand0.barebox.bb
+cp /mnt/barebox.bin /dev/nand0.barebox.bb
+
+echo "success"
+
diff --git a/arch/arm/boards/pcm049/env/config b/arch/arm/boards/pcm049/env/config
new file mode 100644
index 0000000..e9258e1
--- /dev/null
+++ b/arch/arm/boards/pcm049/env/config
@@ -0,0 +1,53 @@
+#!/bin/sh
+
+machine=pcm049
+eth0.serverip=
+user=
+
+# use 'dhcp' to do dhcp in barebox and in kernel
+# use 'none' if you want to skip kernel ip autoconfiguration
+ip=dhcp
+
+# or set your networking parameters here
+#eth0.ipaddr=a.b.c.d
+#eth0.netmask=a.b.c.d
+#eth0.gateway=a.b.c.d
+#eth0.serverip=a.b.c.d
+
+# can be either 'nfs', 'tftp', 'nor' or 'nand'
+kernel_loc=tftp
+# can be either 'net', 'nor', 'nand' or 'initrd'
+rootfs_loc=net
+
+# can be either 'jffs2' or 'ubifs'
+rootfs_type=ubifs
+rootfsimage=root-$machine.$rootfs_type
+
+# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
+kernelimage_type=zimage
+kernelimage=zImage-$machine
+#kernelimage_type=uimage
+#kernelimage=uImage-$machine
+#kernelimage_type=raw
+#kernelimage=Image-$machine
+#kernelimage_type=raw_lzo
+#kernelimage=Image-$machine.lzo
+
+if [ -n $user ]; then
+	kernelimage="$user"-"$kernelimage"
+	nfsroot="$eth0.serverip:/home/$user/nfsroot/$machine"
+	rootfsimage="$user"-"$rootfsimage"
+else
+	nfsroot="$eth0.serverip:/path/to/nfs/root"
+fi
+
+autoboot_timeout=3
+
+bootargs="console=ttyO2,115200"
+
+nand_parts="128k(xload)ro,256k(barebox),128k(bareboxenv),2M(kernel),-(root)"
+rootfs_mtdblock_nand=4
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
+
diff --git a/arch/arm/boards/pcm049/lowlevel.c b/arch/arm/boards/pcm049/lowlevel.c
new file mode 100644
index 0000000..e036ba7
--- /dev/null
+++ b/arch/arm/boards/pcm049/lowlevel.c
@@ -0,0 +1,127 @@
+/*
+ * (C) Copyright 2004-2009
+ * Texas Instruments, <www.ti.com>
+ * Richard Woodruff <r-woodruff2@ti.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2 as published by the Free Software Foundation.
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
+#include <common.h>
+#include <asm/io.h>
+#include <mach/omap4-mux.h>
+#include <mach/omap4-silicon.h>
+#include <mach/omap4-clock.h>
+#include <mach/syslib.h>
+#include <asm/barebox-arm.h>
+
+void set_muxconf_regs(void);
+
+/* Erstmal 200Mhz... */
+static const struct ddr_regs ddr_regs_mt42L64M64_3_200_mhz = {
+	.tim1		= 0x0aa8d4e3,
+	.tim2		= 0x202e0b92,
+	.tim3		= 0x009da2b3,
+	.phy_ctrl_1	= 0x849FF404, /* mostly from elpida */
+	.ref_ctrl	= 0x0000030c, /* from elpida 200MHz! */
+	.config_init	= 0x80000eb1,
+	.config_final	= 0x80000eb1,
+	.zq_config	= 0x500b3215, /* mostly from elpida */
+	.mr1		= 0x23,	      /* from elpida 200MHz! */
+	.mr2		= 0x1	      /* from elpida 200MHz! */
+};
+
+#define I2C_SLAVE 0x12
+
+static int noinline scale_vcores(void)
+{
+	unsigned int rev = omap4_revision();
+
+	/* For VC bypass only VCOREx_CGF_FORCE  is necessary and
+	 * VCOREx_CFG_VOLTAGE  changes can be discarded
+	 */
+	writel(0, OMAP44XX_PRM_VC_CFG_I2C_MODE);
+	writel(0x6026, OMAP44XX_PRM_VC_CFG_I2C_CLK);
+
+	/* set VCORE1 force VSEL */
+	omap4_power_i2c_send((0x3A55 << 8) | I2C_SLAVE);
+
+	/* FIXME: set VCORE2 force VSEL, Check the reset value */
+	omap4_power_i2c_send((0x295B << 8) | I2C_SLAVE);
+
+	/* set VCORE3 force VSEL */
+	switch (rev) {
+	case OMAP4430_ES2_0:
+		omap4_power_i2c_send((0x2961 << 8) | I2C_SLAVE);
+		break;
+	case OMAP4430_ES2_1:
+		omap4_power_i2c_send((0x2A61 << 8) | I2C_SLAVE);
+		break;
+	}
+
+	return 0;
+}
+
+static void noinline pcm049_init_lowlevel(void)
+{
+	struct dpll_param core = OMAP4_CORE_DPLL_PARAM_19M2_DDR200;
+	struct dpll_param mpu = OMAP4_MPU_DPLL_PARAM_19M2_MPU1000;
+	struct dpll_param iva = OMAP4_IVA_DPLL_PARAM_19M2;
+	struct dpll_param per = OMAP4_PER_DPLL_PARAM_19M2;
+	struct dpll_param abe = OMAP4_ABE_DPLL_PARAM_19M2;
+	struct dpll_param usb = OMAP4_USB_DPLL_PARAM_19M2;
+
+	set_muxconf_regs();
+
+	omap4_ddr_init(&ddr_regs_mt42L64M64_3_200_mhz, &core);
+
+	/* Set VCORE1 = 1.3 V, VCORE2 = VCORE3 = 1.21V */
+	scale_vcores();
+
+	writel(CM_SYS_CLKSEL_19M2, CM_SYS_CLKSEL);
+
+	/* Configure all DPLL's at 100% OPP */
+	omap4_configure_mpu_dpll(&mpu);
+	omap4_configure_iva_dpll(&iva);
+	omap4_configure_per_dpll(&per);
+	omap4_configure_abe_dpll(&abe);
+	omap4_configure_usb_dpll(&usb);
+
+	/* Enable all clocks */
+	omap4_enable_all_clocks();
+
+	sr32(0x4A30a31C, 8, 1, 0x1);  /* enable software ioreq */
+	sr32(0x4A30a31C, 1, 2, 0x0);  /* set for sys_clk (19.2MHz) */
+	sr32(0x4A30a31C, 16, 4, 0x0); /* set divisor to 1 */
+	sr32(0x4A30a110, 0, 1, 0x1);  /* set the clock source to active */
+	sr32(0x4A30a110, 2, 2, 0x3);  /* enable clocks */
+
+	board_init_lowlevel_return();
+}
+
+void board_init_lowlevel(void)
+{
+	u32 r;
+
+	if (get_pc() > 0x80000000)
+		return;
+
+	r = 0x4030d000;
+        __asm__ __volatile__("mov sp, %0" : : "r"(r));
+
+	pcm049_init_lowlevel();
+}
+
diff --git a/arch/arm/boards/pcm049/mux.c b/arch/arm/boards/pcm049/mux.c
new file mode 100644
index 0000000..d93d458
--- /dev/null
+++ b/arch/arm/boards/pcm049/mux.c
@@ -0,0 +1,254 @@
+#include <common.h>
+#include <init.h>
+#include <asm/io.h>
+#include <mach/omap4-silicon.h>
+#include <mach/omap4-mux.h>
+
+static const struct pad_conf_entry core_padconf_array[] = {
+	{GPMC_AD0, (IEN | PTD | DIS | M0)},				/* gpmc_ad0 */
+	{GPMC_AD1, (IEN | PTD | DIS | M0)},			 	/* gpmc_ad1 */
+	{GPMC_AD2, (IEN | PTD | DIS | M0)},				/* gpmc_ad2 */
+	{GPMC_AD3, (IEN | PTD | DIS | M0)},				/* gpmc_ad3 */
+	{GPMC_AD4, (IEN | PTD | DIS | M0)},				/* gpmc_ad4 */
+	{GPMC_AD5, (IEN | PTD | DIS | M0)},				/* gpmc_ad5 */
+	{GPMC_AD6, (IEN | PTD | DIS | M0)},				/* gpmc_ad6 */
+	{GPMC_AD7, (IEN | PTD | DIS | M0)},				/* gpmc_ad7 */
+	{GPMC_AD8, (IEN | PTD | DIS | M0)},				/* gpmc_ad8 */
+	{GPMC_AD9, (IEN | PTD | DIS | M0)},				/* gpmc_ad9 */
+	{GPMC_AD10, (IEN | PTD | DIS | M0)},				/* gpmc_ad10 */
+	{GPMC_AD11, (IEN | PTD | DIS | M0)},				/* gpmc_ad11 */
+	{GPMC_AD12, (IEN | PTD | DIS | M0)},				/* gpmc_ad12 */
+	{GPMC_AD13, (IEN | PTD | DIS | M0)},				/* gpmc_ad13 */
+	{GPMC_AD14, (IEN | PTD | DIS | M0)},				/* gpmc_ad14 */
+	{GPMC_AD15, (IEN | PTD | DIS | M0)},				/* gpmc_ad15 */
+	{GPMC_A16, (IEN | PTD | DIS | M0)},				/* gpmc_a16 */
+	{GPMC_A17, (IEN | PTD | DIS | M0)},				/* gpmc_a17 */
+	{GPMC_A18, (IEN | PTD | DIS | M0)},				/* gpmc_a18 */
+	{GPMC_A19, (IEN | PTD | DIS | M0)},				/* gpmc_a19 */
+	{GPMC_A20, (IEN | PTD | DIS | M0)},				/* gpmc_a20 */
+	{GPMC_A21, (IEN | PTD | DIS | M0)},				/* gpmc_a21 */
+	{GPMC_A22, (IEN | PTD | DIS | M0)},				/* gpmc_a22 */
+	{GPMC_A23, (IEN | PTD | DIS | M0)},				/* gpmc_a23 */
+	{GPMC_A24, (IEN | PTD | DIS | M0)},				/* gpmc_a24 */
+	{GPMC_A25, (IEN | PTD | DIS | M0)},				/* gpmc_a25 */
+	{GPMC_NCS0, (IDIS | PTU | EN | M0)},				/* gpmc_nsc0 */
+	{GPMC_NCS1, (IDIS | PTU | EN | M0)},				/* gpmc_nsc1 */
+	{GPMC_NCS2, (SAFE_MODE)},					/* nc */
+	{GPMC_NCS3, (SAFE_MODE)},					/* nc */
+	{GPMC_NWP, (IEN | PTD | DIS | M0)},				/* gpmc_nwp */
+	{GPMC_CLK, (SAFE_MODE)},					/* nc */
+	{GPMC_NADV_ALE, (IDIS | PTD | DIS | M0)},			/* gpmc_ndav_ale */
+	{GPMC_NOE, (IDIS | PTD | DIS | M0)},				/* gpmc_noe */
+	{GPMC_NWE, (IDIS | PTD | DIS | M0)},				/* gpmc_nwe */
+	{GPMC_NBE0_CLE, (IDIS | PTD | DIS | M0)},			/* gpmc_nbe0_cle */
+	{GPMC_NBE1, (SAFE_MODE)},					/* nc */
+	{GPMC_WAIT0, (IEN | PTU | EN | M0)},				/* gpmc_wait0 */
+	{GPMC_WAIT1, (SAFE_MODE)},					/* nc */
+	{C2C_DATA11, (SAFE_MODE)},					/* nc */
+	{C2C_DATA12, (SAFE_MODE)},					/* nc */
+	{C2C_DATA13, (IDIS | PTU | EN | M0)},				/* gpmc_nsc5 */
+	{C2C_DATA14, (SAFE_MODE)},					/* nc */
+	{C2C_DATA15, (SAFE_MODE)},					/* nc */
+	{HDMI_HPD, (M0)},						/* hdmi_hpd */
+	{HDMI_CEC, (DIS | IEN | M3)},					/* gpio_64 */
+	{HDMI_DDC_SCL, (PTU | M0)},					/* hdmi_ddc_scl */
+	{HDMI_DDC_SDA, (PTU | IEN | M0)},				/* hdmi_ddc_sda */
+	{CSI21_DX0, (IEN | M0)},					/* csi21_dx0 */
+	{CSI21_DY0, (IEN | M0)},					/* csi21_dy0 */
+	{CSI21_DX1, (IEN | M0)},					/* csi21_dx1 */
+	{CSI21_DY1, (IEN | M0)},					/* csi21_dy1 */
+	{CSI21_DX2, (IEN | M0)},					/* csi21_dx2 */
+	{CSI21_DY2, (IEN | M0)},					/* csi21_dy2 */
+	{CSI21_DX3, (PTD | M7)},					/* csi21_dx3 */
+	{CSI21_DY3, (PTD | M7)},					/* csi21_dy3 */
+	{CSI21_DX4, (PTD | OFF_EN | OFF_PD | OFF_IN | M7)},		/* csi21_dx4 */
+	{CSI21_DY4, (PTD | OFF_EN | OFF_PD | OFF_IN | M7)},		/* csi21_dy4 */
+	{CSI22_DX0, (IEN | M0)},					/* csi22_dx0 */
+	{CSI22_DY0, (IEN | M0)},					/* csi22_dy0 */
+	{CSI22_DX1, (IEN | M0)},					/* csi22_dx1 */
+	{CSI22_DY1, (IEN | M0)},					/* csi22_dy1 */
+	{CAM_SHUTTER, (OFF_EN | OFF_PD | OFF_OUT_PTD | M0)},		/* cam_shutter */
+	{CAM_STROBE, (OFF_EN | OFF_PD | OFF_OUT_PTD | M0)},		/* cam_strobe */
+	{CAM_GLOBALRESET, (PTD | OFF_EN | OFF_PD | OFF_OUT_PTD | M3)},	/* gpio_83 */
+	{USBB1_ULPITLL_CLK, (PTD | IEN | OFF_EN | OFF_PD | OFF_IN | M4)},/* usbb1_ulpiphy_clk */
+	{USBB1_ULPITLL_STP, (OFF_EN | OFF_OUT_PTD | M4)},		/* usbb1_ulpiphy_stp */
+	{USBB1_ULPITLL_DIR, (IEN | OFF_EN | OFF_PD | OFF_IN | M4)},	/* usbb1_ulpiphy_dir */
+	{USBB1_ULPITLL_NXT, (IEN | OFF_EN | OFF_PD | OFF_IN | M4)},	/* usbb1_ulpiphy_nxt */
+	{USBB1_ULPITLL_DAT0, (IEN | OFF_EN | OFF_PD | OFF_IN | M4)},	/* usbb1_ulpiphy_dat0 */
+	{USBB1_ULPITLL_DAT1, (IEN | OFF_EN | OFF_PD | OFF_IN | M4)},	/* usbb1_ulpiphy_dat1 */
+	{USBB1_ULPITLL_DAT2, (IEN | OFF_EN | OFF_PD | OFF_IN | M4)},	/* usbb1_ulpiphy_dat2 */
+	{USBB1_ULPITLL_DAT3, (IEN | OFF_EN | OFF_PD | OFF_IN | M4)},	/* usbb1_ulpiphy_dat3 */
+	{USBB1_ULPITLL_DAT4, (IEN | OFF_EN | OFF_PD | OFF_IN | M4)},	/* usbb1_ulpiphy_dat4 */
+	{USBB1_ULPITLL_DAT5, (IEN | OFF_EN | OFF_PD | OFF_IN | M4)},	/* usbb1_ulpiphy_dat5 */
+	{USBB1_ULPITLL_DAT6, (IEN | OFF_EN | OFF_PD | OFF_IN | M4)},	/* usbb1_ulpiphy_dat6 */
+	{USBB1_ULPITLL_DAT7, (IEN | OFF_EN | OFF_PD | OFF_IN | M4)},	/* usbb1_ulpiphy_dat7 */
+	{USBB1_HSIC_DATA, (DIS | IEN | M3)},				/* gpio_96 */
+	{USBB1_HSIC_STROBE, (DIS | IEN | M3)},				/* gpio_97 */
+	{USBC1_ICUSB_DP, (IEN | M0)},					/* usbc1_icusb_dp */
+	{USBC1_ICUSB_DM, (IEN | M0)},					/* usbc1_icusb_dm */
+	{SDMMC1_CLK, (PTU | OFF_EN | OFF_OUT_PTD | M0)},		/* sdmmc1_clk */
+	{SDMMC1_CMD, (PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},	/* sdmmc1_cmd */
+	{SDMMC1_DAT0, (PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},	/* sdmmc1_dat0 */
+	{SDMMC1_DAT1, (PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},	/* sdmmc1_dat1 */
+	{SDMMC1_DAT2, (PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},	/* sdmmc1_dat2 */
+	{SDMMC1_DAT3, (PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},	/* sdmmc1_dat3 */
+	{SDMMC1_DAT4, (PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},	/* sdmmc1_dat4 */
+	{SDMMC1_DAT5, (PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},	/* sdmmc1_dat5 */
+	{SDMMC1_DAT6, (PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},	/* sdmmc1_dat6 */
+	{SDMMC1_DAT7, (PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},	/* sdmmc1_dat7 */
+	{ABE_MCBSP2_CLKX, (IEN | OFF_EN | OFF_PD | OFF_IN | M0)},	/* abe_mcbsp2_clkx */
+	{ABE_MCBSP2_DR, (IEN | OFF_EN | OFF_OUT_PTD | M0)},		/* abe_mcbsp2_dr */
+	{ABE_MCBSP2_DX, (OFF_EN | OFF_OUT_PTD | M0)},			/* abe_mcbsp2_dx */
+	{ABE_MCBSP2_FSX, (IEN | OFF_EN | OFF_PD | OFF_IN | M0)},	/* abe_mcbsp2_fsx */
+	{ABE_MCBSP1_CLKX, (DIS | IEN | M3)},				/* gpio_114 */
+	{ABE_MCBSP1_DR, (DIS | IEN | M3)},				/* gpio_115 */
+	{ABE_MCBSP1_DX, (DIS | IEN | M3)},				/* gpio_116 */
+	{ABE_MCBSP1_FSX, (DIS | IEN | M2)},				/* abe_mcasp_amutein */
+	{ABE_PDM_UL_DATA, (IEN | OFF_EN | OFF_OUT_PTD | M1)},		/* abe_mcbsp3_dr */
+	{ABE_PDM_DL_DATA, (OFF_EN | OFF_OUT_PTD | M1)},			/* abe_mcbsp3_dx */
+	{ABE_PDM_FRAME, (IEN | OFF_EN | OFF_PD | OFF_IN | M1)},		/* abe_mcbsp3_clkx */
+	{ABE_PDM_LB_CLK, (IEN | OFF_EN | OFF_PD | OFF_IN | M1)},	/* abe_mcbsp3_fsx */
+	{ABE_CLKS, (DIS | IEN | M3)},					/* gpio_118 */
+	{ABE_DMIC_CLK1, (SAFE_MODE)},					/* nc */
+	{ABE_DMIC_DIN1, (SAFE_MODE)},					/* nc */
+	{ABE_DMIC_DIN2, (SAFE_MODE)},					/* nc */
+	{ABE_DMIC_DIN3, (SAFE_MODE)},					/* nc */
+	{UART2_CTS, (PTU | IEN | M0)},					/* uart2_cts */
+	{UART2_RTS, (M0)},						/* uart2_rts */
+	{UART2_RX, (PTU | IEN | M0)},					/* uart2_rx */
+	{UART2_TX, (M0)},						/* uart2_tx */
+	{HDQ_SIO, (M0)},						/* hdq_sio */
+	{I2C1_SCL, (PTU | IEN | M0)},					/* i2c1_scl */
+	{I2C1_SDA, (PTU | IEN | M0)},					/* i2c1_sda */
+	{I2C2_SCL, (PTU | IEN | M1)},					/* uart1_rx */
+	{I2C2_SDA, (M1)},						/* uart1_tx */
+	{I2C3_SCL, (PTU | IEN | M0)},					/* i2c3_scl */
+	{I2C3_SDA, (PTU | IEN | M0)},					/* i2c3_sda */
+	{I2C4_SCL, (PTU | IEN | M0)},					/* i2c4_scl */
+	{I2C4_SDA, (PTU | IEN | M0)},					/* i2c4_sda */
+	{MCSPI1_CLK, (IEN | OFF_EN | OFF_PD | OFF_IN | M0)},		/* mcspi1_clk */
+	{MCSPI1_SOMI, (IEN | OFF_EN | OFF_PD | OFF_IN | M0)},		/* mcspi1_somi */
+	{MCSPI1_SIMO, (IEN | OFF_EN | OFF_PD | OFF_IN | M0)},		/* mcspi1_simo */
+	{MCSPI1_CS0, (PTD | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},	/* mcspi1_cs0 */
+	{MCSPI1_CS1, (PTD | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},	/* mcspi1_cs1 */
+	{MCSPI1_CS2, (PTD | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},	/* mcspi1_cs2 */
+	{MCSPI1_CS3, (PTD | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},	/* mcspi1_cs3 */
+	{UART3_CTS_RCTX, (PTU | IEN | M0)},				/* uart3_tx */
+	{UART3_RTS_SD, (M0)},						/* uart3_rts_sd */
+	{UART3_RX_IRRX, (IEN | M0)},					/* uart3_rx */
+	{UART3_TX_IRTX, (M0)},						/* uart3_tx */
+	{SDMMC5_CLK, (PTU | IEN | OFF_EN | OFF_OUT_PTD | M0)},		/* sdmmc5_clk */
+	{SDMMC5_CMD, (PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},	/* sdmmc5_cmd */
+	{SDMMC5_DAT0, (PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},	/* sdmmc5_dat0 */
+	{SDMMC5_DAT1, (PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},	/* sdmmc5_dat1 */
+	{SDMMC5_DAT2, (PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},	/* sdmmc5_dat2 */
+	{SDMMC5_DAT3, (PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},	/* sdmmc5_dat3 */
+	{MCSPI4_CLK, (SAFE_MODE)},					/* nc */
+	{MCSPI4_SIMO, (PTU | IEN | M3)},				/* gpio_152 */
+	{MCSPI4_SOMI, (PTU | IEN | M3)},				/* gpio_153 */
+	{MCSPI4_CS0, (SAFE_MODE)},					/* nc */
+	{UART4_RX, (IEN | M0)},						/* uart4_rx */
+	{UART4_TX, (M0)},						/* uart4_tx */
+	{USBB2_ULPITLL_CLK, (IEN | M3)},				/* gpio_157 */
+	{USBB2_ULPITLL_STP, (IEN | M5)},				/* dispc2_data23 */
+	{USBB2_ULPITLL_DIR, (IEN | M5)},				/* dispc2_data22 */
+	{USBB2_ULPITLL_NXT, (IEN | M5)},				/* dispc2_data21 */
+	{USBB2_ULPITLL_DAT0, (IEN | M5)},				/* dispc2_data20 */
+	{USBB2_ULPITLL_DAT1, (IEN | M5)},				/* dispc2_data19 */
+	{USBB2_ULPITLL_DAT2, (IEN | M5)},				/* dispc2_data18 */
+	{USBB2_ULPITLL_DAT3, (IEN | M5)},				/* dispc2_data15 */
+	{USBB2_ULPITLL_DAT4, (IEN | M5)},				/* dispc2_data14 */
+	{USBB2_ULPITLL_DAT5, (IEN | M5)},				/* dispc2_data13 */
+	{USBB2_ULPITLL_DAT6, (IEN | M5)},				/* dispc2_data12 */
+	{USBB2_ULPITLL_DAT7, (IEN | M5)},				/* dispc2_data11 */
+	{USBB2_HSIC_DATA, (SAFE_MODE)},					/* nc */
+	{USBB2_HSIC_STROBE, (SAFE_MODE)},				/* nc */
+	{UNIPRO_TX0, (OFF_EN | OFF_PD | OFF_IN | M1)},			/* kpd_col0 */
+	{UNIPRO_TY0, (OFF_EN | OFF_PD | OFF_IN | M1)},			/* kpd_col1 */
+	{UNIPRO_TX1, (OFF_EN | OFF_PD | OFF_IN | M1)},			/* kpd_col2 */
+	{UNIPRO_TY1, (OFF_EN | OFF_PD | OFF_IN | M1)},			/* kpd_col3 */
+	{UNIPRO_TX2, (OFF_EN | OFF_PD | OFF_IN | M1)},			/* kpd_col4 */
+	{UNIPRO_TY2, (SAFE_MODE)},					/* nc */
+	{UNIPRO_RX0, (PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1)},	/* kpd_row0 */
+	{UNIPRO_RY0, (PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1)},	/* kpd_row1 */
+	{UNIPRO_RX1, (PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1)},	/* kpd_row2 */
+	{UNIPRO_RY1, (PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1)},	/* kpd_row3 */
+	{UNIPRO_RX2, (PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1)},	/* kpd_row4 */
+	{UNIPRO_RY2, (DIS | IEN | M3)},					/* gpio_3 */
+	{USBA0_OTG_CE, (PTD | OFF_EN | OFF_PD | OFF_OUT_PTD | M0)},	/* usba0_otg_ce */
+	{USBA0_OTG_DP, (IEN | OFF_EN | OFF_PD | OFF_IN | M0)},		/* usba0_otg_dp */
+	{USBA0_OTG_DM, (IEN | OFF_EN | OFF_PD | OFF_IN | M0)},		/* usba0_otg_dm */
+	{FREF_CLK1_OUT, (SAFE_MODE)},					/* nc */
+	{FREF_CLK2_OUT, (SAFE_MODE)},					/* nc */
+	{SYS_NIRQ1, (PTU | IEN | M0)},					/* sys_nirq1 */
+	{SYS_NIRQ2, (DIS | IEN | M3)},					/* gpio_183 */
+	{SYS_BOOT0, (PTU | IEN | M3)},					/* gpio_184 */
+	{SYS_BOOT1, (M3)},						/* gpio_185 */
+	{SYS_BOOT2, (PTD | IEN | M3)},					/* gpio_186 */
+	{SYS_BOOT3, (M3)},						/* gpio_187 */
+	{SYS_BOOT4, (M3)},						/* gpio_188 */
+	{SYS_BOOT5, (PTD | IEN | M3)},					/* gpio_189 */
+	{DPM_EMU0, (IEN | M0)},						/* dpm_emu0 */
+	{DPM_EMU1, (IEN | M0)},						/* dpm_emu1 */
+	{DPM_EMU2, (SAFE_MODE)},					/* nc */
+	{DPM_EMU3, (SAFE_MODE)},					/* nc */
+	{DPM_EMU4, (SAFE_MODE)},					/* nc */
+	{DPM_EMU5, (SAFE_MODE)},					/* nc */
+	{DPM_EMU6, (SAFE_MODE)},					/* nc */
+	{DPM_EMU7, (SAFE_MODE)},					/* nc */
+	{DPM_EMU8, (SAFE_MODE)},					/* nc */
+	{DPM_EMU9, (SAFE_MODE)},					/* nc */
+	{DPM_EMU10, (SAFE_MODE)},					/* nc */
+	{DPM_EMU11, (SAFE_MODE)},					/* nc */
+	{DPM_EMU12, (SAFE_MODE)},					/* nc */
+	{DPM_EMU13, (SAFE_MODE)},					/* nc */
+	{DPM_EMU14, (SAFE_MODE)},					/* nc */
+	{DPM_EMU15, (DIS | M3)},					/* gpio_26 */
+	{DPM_EMU16, (M1)},						/* dmtimer8_pwm_evt */
+	{DPM_EMU17, (M1)},						/* dmtimer9_pwm_evt */
+	{DPM_EMU18, (IEN | M3)},					/* gpio_190 */
+	{DPM_EMU19, (IEN | M3)},					/* gpio_191 */
+};
+
+static const struct pad_conf_entry wkup_padconf_array[] = {
+	{PAD0_SIM_IO, (IEN | M3)},					/* gpio_wk0 */
+	{PAD1_SIM_CLK, (IEN | M3)},					/* gpio_wk1 */
+	{PAD0_SIM_RESET, (IEN | M3)},					/* gpio_wk2 */
+	{PAD1_SIM_CD, (SAFE_MODE)},					/* should be gpio_wk3 but muxed with gpio_3*/
+	{PAD0_SIM_PWRCTRL, (IEN | M3)},					/* gpio_wk4 */
+	{PAD1_SR_SCL, (PTU | IEN | M0)},				/* sr_scl */
+	{PAD0_SR_SDA, (PTU | IEN | M0)},				/* sr_sda */
+	{PAD1_FREF_XTAL_IN, (M0)},					/* # */
+	{PAD0_FREF_SLICER_IN, (SAFE_MODE)},				/* nc */
+	{PAD1_FREF_CLK_IOREQ, (SAFE_MODE)},					/* nc */
+	{PAD0_FREF_CLK0_OUT, (M2)},					/* sys_drm_msecure */
+	{PAD1_FREF_CLK3_REQ, (SAFE_MODE)},				/* nc */
+	{PAD0_FREF_CLK3_OUT, (M0)},					/* fref_clk3_out */
+	{PAD1_FREF_CLK4_REQ, (M0)},					/* fref_clk4_req */
+	{PAD0_FREF_CLK4_OUT, (M0)},					/* fref_clk4_out */
+	{PAD1_SYS_32K, (IEN | M0)},					/* sys_32k */
+	{PAD0_SYS_NRESPWRON, (M0)},					/* sys_nrespwron */
+	{PAD1_SYS_NRESWARM, (M0)},					/* sys_nreswarm */
+	{PAD0_SYS_PWR_REQ, (PTU | M0)},					/* sys_pwr_req */
+	{PAD1_SYS_PWRON_RESET, (M0)},					/* sys_pwron_reset_out */
+	{PAD0_SYS_BOOT6, (IEN | M3)},					/* gpio_wk9 */
+	{PAD1_SYS_BOOT7, (IEN | M3)},					/* gpio_wk10 */
+};
+
+static void do_set_mux(u32 base, struct pad_conf_entry const *array, int size)
+{
+	int i;
+	struct pad_conf_entry *pad = (struct pad_conf_entry *) array;
+
+	for (i = 0; i < size; i++, pad++)
+		writew(pad->val, base + pad->offset);
+}
+
+void set_muxconf_regs(void)
+{
+	do_set_mux(OMAP44XX_CONTROL_PADCONF_CORE, core_padconf_array,
+			ARRAY_SIZE(core_padconf_array));
+
+	do_set_mux(OMAP44XX_CONTROL_PADCONF_WKUP, wkup_padconf_array,
+			ARRAY_SIZE(wkup_padconf_array));
+}
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 13a3df8..13966cf 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -105,6 +105,7 @@ config BOARDINFO
 	default "Texas Instrument's Beagle" if MACH_BEAGLE
 	default "Texas Instrument's OMAP3EVM" if MACH_OMAP3EVM
 	default "Texas Instrument's Panda" if MACH_PANDA
+	default "Phytec phyCORE pcm049" if MACH_PCM049
 
 choice
 	prompt "Select OMAP board"
@@ -144,6 +145,16 @@ config MACH_PANDA
 	help
 	  Say Y here if you are using OMAP4 Panda board
 
+config MACH_PCM049
+	bool "Phytec phyCORE pcm049"
+	select HAVE_MMU
+	select HAVE_NOSHELL
+	depends on ARCH_OMAP4
+	select MACH_HAS_LOWLEVEL_INIT
+	help
+	  Say Y here if you are using Phytecs phyCORE pcm049 board
+	  based on OMAP4
+
 endchoice
 
 if MACH_OMAP3EVM
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
