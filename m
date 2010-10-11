Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P5GYR-0003GC-6d
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 11:28:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Oct 2010 13:28:25 +0200
Message-Id: <1286796505-16049-18-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1286796505-16049-1-git-send-email-s.hauer@pengutronix.de>
References: <1286796505-16049-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 17/17] ARM i.MX51: Add babbage board support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile                                  |    1 +
 arch/arm/boards/freescale-mx51-pdk/Makefile        |    3 +
 arch/arm/boards/freescale-mx51-pdk/board.c         |  318 ++++++++++++++++++
 arch/arm/boards/freescale-mx51-pdk/config.h        |   24 ++
 arch/arm/boards/freescale-mx51-pdk/env/config      |   52 +++
 arch/arm/boards/freescale-mx51-pdk/flash_header.c  |   85 +++++
 arch/arm/boards/freescale-mx51-pdk/lowlevel_init.S |  216 +++++++++++++
 arch/arm/boards/freescale-mx51-pdk/mx51-pdk.dox    |    4 +
 arch/arm/boards/freescale-mx51-pdk/spi.c           |  340 ++++++++++++++++++++
 arch/arm/configs/freescale_mx51_babbage_defconfig  |   43 +++
 arch/arm/mach-imx/Kconfig                          |    7 +
 11 files changed, 1093 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/Makefile
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/board.c
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/config.h
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/env/config
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/flash_header.c
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/lowlevel_init.S
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/mx51-pdk.dox
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/spi.c
 create mode 100644 arch/arm/configs/freescale_mx51_babbage_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 77b6cf4..7f171c4 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -80,6 +80,7 @@ board-$(CONFIG_MACH_PCM043)			:= pcm043
 board-$(CONFIG_MACH_PM9263)			:= pm9263
 board-$(CONFIG_MACH_SCB9328)			:= scb9328
 board-$(CONFIG_MACH_NESO)			:= guf-neso
+board-$(CONFIG_MACH_FREESCALE_MX51_PDK)		:= freescale-mx51-pdk
 
 machdirs := $(patsubst %,arch/arm/mach-%/,$(machine-y))
 
diff --git a/arch/arm/boards/freescale-mx51-pdk/Makefile b/arch/arm/boards/freescale-mx51-pdk/Makefile
new file mode 100644
index 0000000..8e0c87c
--- /dev/null
+++ b/arch/arm/boards/freescale-mx51-pdk/Makefile
@@ -0,0 +1,3 @@
+obj-y += lowlevel_init.o
+obj-y += board.o
+obj-y += flash_header.o
diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
new file mode 100644
index 0000000..5197c55
--- /dev/null
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -0,0 +1,318 @@
+/*
+ * Copyright (C) 2007 Sascha Hauer, Pengutronix
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
+#include <net.h>
+#include <init.h>
+#include <environment.h>
+#include <mach/imx-regs.h>
+#include <fec.h>
+#include <mach/gpio.h>
+#include <asm/armlinux.h>
+#include <generated/mach-types.h>
+#include <partition.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <nand.h>
+#include <spi/spi.h>
+#include <mfd/mc13892.h>
+#include <asm/io.h>
+#include <asm/mmu.h>
+#include <mach/imx-nand.h>
+#include <mach/spi.h>
+#include <mach/generic.h>
+#include <mach/iomux-mx51.h>
+
+static struct memory_platform_data ram_pdata = {
+	.name = "ram0",
+	.flags = DEVFS_RDWR,
+};
+
+static struct device_d sdram_dev = {
+	.id       = -1,
+	.name     = "mem",
+	.map_base = 0x90000000,
+	.size     = 512 * 1024 * 1024,
+	.platform_data = &ram_pdata,
+};
+
+static struct fec_platform_data fec_info = {
+	.xcv_type = MII100,
+};
+
+static struct device_d fec_dev = {
+	.name     = "fec_imx",
+	.map_base = 0x83fec000,
+	.platform_data	= &fec_info,
+};
+
+static struct device_d esdhc_dev = {
+	.name     = "imx-esdhc",
+	.map_base = 0x70004000,
+};
+
+static struct pad_desc f3s_pads[] = {
+	MX51_PAD_EIM_EB2__FEC_MDIO,
+	MX51_PAD_EIM_EB3__FEC_RDATA1,
+	MX51_PAD_EIM_CS2__FEC_RDATA2,
+	MX51_PAD_EIM_CS3__FEC_RDATA3,
+	MX51_PAD_EIM_CS4__FEC_RX_ER,
+	MX51_PAD_EIM_CS5__FEC_CRS,
+	MX51_PAD_NANDF_RB2__FEC_COL,
+	MX51_PAD_NANDF_RB3__FEC_RX_CLK,
+	MX51_PAD_NANDF_RB7__FEC_TX_ER,
+	MX51_PAD_NANDF_CS3__FEC_MDC,
+	MX51_PAD_NANDF_CS4__FEC_TDATA1,
+	MX51_PAD_NANDF_CS5__FEC_TDATA2,
+	MX51_PAD_NANDF_CS6__FEC_TDATA3,
+	MX51_PAD_NANDF_CS7__FEC_TX_EN,
+	MX51_PAD_NANDF_RDY_INT__FEC_TX_CLK,
+	MX51_PAD_NANDF_D11__FEC_RX_DV,
+	MX51_PAD_NANDF_RB6__FEC_RDATA0,
+	MX51_PAD_NANDF_D8__FEC_TDATA0,
+	MX51_PAD_CSPI1_SS0__CSPI1_SS0,
+	MX51_PAD_CSPI1_MOSI__CSPI1_MOSI,
+	MX51_PAD_CSPI1_MISO__CSPI1_MISO,
+	MX51_PAD_CSPI1_RDY__CSPI1_RDY,
+	MX51_PAD_CSPI1_SCLK__CSPI1_SCLK,
+	MX51_PAD_EIM_A20__GPIO2_14, /* LAN8700 reset pin */
+	IOMUX_PAD(0x60C, 0x21C, 3, 0x0, 0, 0x85), /* FIXME: needed? */
+};
+
+#ifdef CONFIG_MMU
+static void babbage_mmu_init(void)
+{
+	mmu_init();
+
+	arm_create_section(0x90000000, 0x90000000, 512, PMD_SECT_DEF_CACHED);
+	arm_create_section(0xb0000000, 0x90000000, 512, PMD_SECT_DEF_UNCACHED);
+
+	setup_dma_coherent(0x20000000);
+
+#if TEXT_BASE & (0x100000 - 1)
+#warning cannot create vector section. Adjust TEXT_BASE to a 1M boundary
+#else
+	arm_create_section(0x0,        TEXT_BASE,   1, PMD_SECT_DEF_UNCACHED);
+#endif
+
+	mmu_enable();
+}
+#else
+static void babbage_mmu_init(void)
+{
+}
+#endif
+
+//extern int babbage_power_init(void);
+
+#define BABBAGE_ECSPI1_CS0	(3 * 32 + 24)
+static int spi_0_cs[] = {BABBAGE_ECSPI1_CS0};
+
+static struct spi_imx_master spi_0_data = {
+	.chipselect = spi_0_cs,
+	.num_chipselect = ARRAY_SIZE(spi_0_cs),
+};
+
+static struct device_d spi_dev = {
+	.id       = -1,
+	.name     = "imx_spi",
+	.map_base = MX51_CSPI1_BASE_ADDR,
+	.platform_data = &spi_0_data,
+};
+
+static const struct spi_board_info mx51_babbage_spi_board_info[] = {
+	{
+		.name = "mc13892-spi",
+		.max_speed_hz = 300000,
+		.bus_num = 0,
+		.chip_select = 0,
+	},
+};
+
+#define MX51_CCM_CACRR 0x10
+
+static void babbage_power_init(void)
+{
+	struct mc13892 *mc13892;
+	u32 val;
+
+	mc13892 = mc13892_get();
+	if (!mc13892) {
+		printf("could not get mc13892\n");
+		return;
+	}
+
+	/* Write needed to Power Gate 2 register */
+	mc13892_reg_read(mc13892, 34, &val);
+	val &= ~0x10000;
+	mc13892_reg_write(mc13892, 34, val);
+
+	/* Write needed to update Charger 0 */
+	mc13892_reg_write(mc13892, 48, 0x0023807F);
+
+	/* power up the system first */
+	mc13892_reg_write(mc13892, 34, 0x00200000);
+
+	if (imx_silicon_revision() < MX51_CHIP_REV_3_0) {
+		/* Set core voltage to 1.1V */
+		mc13892_reg_read(mc13892, 24, &val);
+		val &= ~0x1f;
+		val |= 0x14;
+		mc13892_reg_write(mc13892, 24, val);
+
+		/* Setup VCC (SW2) to 1.25 */
+		mc13892_reg_read(mc13892, 25, &val);
+		val &= ~0x1f;
+		val |= 0x1a;
+		mc13892_reg_write(mc13892, 25, val);
+
+		/* Setup 1V2_DIG1 (SW3) to 1.25 */
+		mc13892_reg_read(mc13892, 26, &val);
+		val &= ~0x1f;
+		val |= 0x1a;
+		mc13892_reg_write(mc13892, 26, val);
+		udelay(50);
+		/* Raise the core frequency to 800MHz */
+		writel(0x0, MX51_CCM_BASE_ADDR + MX51_CCM_CACRR);
+	} else {
+		/* Setup VCC (SW2) to 1.225 */
+		mc13892_reg_read(mc13892, 25, &val);
+		val &= ~0x1f;
+		val |= 0x19;
+		mc13892_reg_write(mc13892, 25, val);
+
+		/* Setup 1V2_DIG1 (SW3) to 1.2 */
+		mc13892_reg_read(mc13892, 26, &val);
+		val &= ~0x1f;
+		val |= 0x18;
+		mc13892_reg_write(mc13892, 26, val);
+	}
+
+	if (mc13892_get_revision(mc13892) < MC13892_REVISION_2_0) {
+		/* Set switchers in PWM mode for Atlas 2.0 and lower */
+		/* Setup the switcher mode for SW1 & SW2*/
+		mc13892_reg_read(mc13892, 28, &val);
+		val &= ~0x3c0f;
+		val |= 0x1405;
+		mc13892_reg_write(mc13892, 28, val);
+
+		/* Setup the switcher mode for SW3 & SW4 */
+		mc13892_reg_read(mc13892, 29, &val);
+		val &= ~0xf0f;
+		val |= 0x505;
+		mc13892_reg_write(mc13892, 29, val);
+	} else {
+		/* Set switchers in Auto in NORMAL mode & STANDBY mode for Atlas 2.0a */
+		/* Setup the switcher mode for SW1 & SW2*/
+		mc13892_reg_read(mc13892, 28, &val);
+		val &= ~0x3c0f;
+		val |= 0x2008;
+		mc13892_reg_write(mc13892, 28, val);
+
+		/* Setup the switcher mode for SW3 & SW4 */
+		mc13892_reg_read(mc13892, 29, &val);
+		val &= ~0xf0f;
+		val |= 0x808;
+		mc13892_reg_write(mc13892, 29, val);
+	}
+
+	/* Set VDIG to 1.65V, VGEN3 to 1.8V, VCAM to 2.5V */
+	mc13892_reg_read(mc13892, 30, &val);
+	val &= ~0x34030;
+	val |= 0x10020;
+	mc13892_reg_write(mc13892, 30, val);
+
+	/* Set VVIDEO to 2.775V, VAUDIO to 3V, VSD to 3.15V */
+	mc13892_reg_read(mc13892, 31, &val);
+	val &= ~0x1FC;
+	val |= 0x1F4;
+	mc13892_reg_write(mc13892, 31, val);
+
+	/* Configure VGEN3 and VCAM regulators to use external PNP */
+	val = 0x208;
+	mc13892_reg_write(mc13892, 33, val);
+	udelay(200);
+#define GPIO_LAN8700_RESET	(1 * 32 + 14)
+
+	/* Reset the ethernet controller over GPIO */
+	gpio_direction_output(GPIO_LAN8700_RESET, 0);
+
+	/* Enable VGEN3, VCAM, VAUDIO, VVIDEO, VSD regulators */
+	val = 0x49249;
+	mc13892_reg_write(mc13892, 33, val);
+
+	udelay(500);
+
+	gpio_set_value(GPIO_LAN8700_RESET, 1);
+}
+
+static int f3s_devices_init(void)
+{
+	babbage_mmu_init();
+
+	register_device(&sdram_dev);
+	register_device(&fec_dev);
+	register_device(&esdhc_dev);
+
+	spi_register_board_info(mx51_babbage_spi_board_info,
+			ARRAY_SIZE(mx51_babbage_spi_board_info));
+	register_device(&spi_dev);
+
+	babbage_power_init();
+
+	armlinux_add_dram(&sdram_dev);
+	armlinux_set_bootparams((void *)0x90000100);
+	armlinux_set_architecture(MACH_TYPE_MX51_BABBAGE);
+
+	return 0;
+}
+
+device_initcall(f3s_devices_init);
+
+static int f3s_part_init(void)
+{
+	devfs_add_partition("disk0", 0x00000, 0x40000, PARTITION_FIXED, "self0");
+	devfs_add_partition("disk0", 0x40000, 0x20000, PARTITION_FIXED, "env0");
+
+	return 0;
+}
+late_initcall(f3s_part_init);
+
+static struct device_d f3s_serial_device = {
+	.name     = "imx_serial",
+	.map_base = 0x73fbc000,
+	.size     = 4096,
+};
+
+static int f3s_console_init(void)
+{
+	mxc_iomux_v3_setup_multiple_pads(f3s_pads, ARRAY_SIZE(f3s_pads));
+
+	writel(0, 0x73fa8228);
+	writel(0, 0x73fa822c);
+	writel(0, 0x73fa8230);
+	writel(0, 0x73fa8234);
+
+	register_device(&f3s_serial_device);
+	return 0;
+}
+
+console_initcall(f3s_console_init);
+
diff --git a/arch/arm/boards/freescale-mx51-pdk/config.h b/arch/arm/boards/freescale-mx51-pdk/config.h
new file mode 100644
index 0000000..b7effe5
--- /dev/null
+++ b/arch/arm/boards/freescale-mx51-pdk/config.h
@@ -0,0 +1,24 @@
+/**
+ * @file
+ * @brief Global defintions for the ARM i.MX51 based babbage board
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
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/freescale-mx51-pdk/env/config b/arch/arm/boards/freescale-mx51-pdk/env/config
new file mode 100644
index 0000000..d9b8407
--- /dev/null
+++ b/arch/arm/boards/freescale-mx51-pdk/env/config
@@ -0,0 +1,52 @@
+#!/bin/sh
+
+machine=babbage
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
+# can be either 'net', 'nor' or 'nand'
+kernel_loc=net
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
+bootargs="console=ttymxc0,115200"
+
+disk_parts="256k(barebox)ro,128k(bareboxenv),4M(kernel),-(root)"
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
+
diff --git a/arch/arm/boards/freescale-mx51-pdk/flash_header.c b/arch/arm/boards/freescale-mx51-pdk/flash_header.c
new file mode 100644
index 0000000..5f94506
--- /dev/null
+++ b/arch/arm/boards/freescale-mx51-pdk/flash_header.c
@@ -0,0 +1,85 @@
+#include <common.h>
+#include <mach/imx-flash-header.h>
+
+extern unsigned long _stext;
+
+void __naked __flash_header_start go(void)
+{
+	__asm__ __volatile__("b exception_vectors\n");
+}
+
+struct imx_dcd_entry __dcd_entry_section dcd_entry[] = {
+	{ .ptr_type = 4, .addr = 0x73fa88a0, .val = 0x00000200, },
+	{ .ptr_type = 4, .addr = 0x73fa850c, .val = 0x000020c5, },
+	{ .ptr_type = 4, .addr = 0x73fa8510, .val = 0x000020c5, },
+	{ .ptr_type = 4, .addr = 0x73fa883c, .val = 0x00000002, },
+	{ .ptr_type = 4, .addr = 0x73fa8848, .val = 0x00000002, },
+	{ .ptr_type = 4, .addr = 0x73fa84b8, .val = 0x000000e7, },
+	{ .ptr_type = 4, .addr = 0x73fa84bc, .val = 0x00000045, },
+	{ .ptr_type = 4, .addr = 0x73fa84c0, .val = 0x00000045, },
+	{ .ptr_type = 4, .addr = 0x73fa84c4, .val = 0x00000045, },
+	{ .ptr_type = 4, .addr = 0x73fa84c8, .val = 0x00000045, },
+	{ .ptr_type = 4, .addr = 0x73fa8820, .val = 0x00000000, },
+	{ .ptr_type = 4, .addr = 0x73fa84a4, .val = 0x00000003, },
+	{ .ptr_type = 4, .addr = 0x73fa84a8, .val = 0x00000003, },
+	{ .ptr_type = 4, .addr = 0x73fa84ac, .val = 0x000000e3, },
+	{ .ptr_type = 4, .addr = 0x73fa84b0, .val = 0x000000e3, },
+	{ .ptr_type = 4, .addr = 0x73fa84b4, .val = 0x000000e3, },
+	{ .ptr_type = 4, .addr = 0x73fa84cc, .val = 0x000000e3, },
+	{ .ptr_type = 4, .addr = 0x73fa84d0, .val = 0x000000e2, },
+	{ .ptr_type = 4, .addr = 0x73fa882c, .val = 0x00000004, },
+	{ .ptr_type = 4, .addr = 0x73fa88a4, .val = 0x00000004, },
+	{ .ptr_type = 4, .addr = 0x73fa88ac, .val = 0x00000004, },
+	{ .ptr_type = 4, .addr = 0x73fa88b8, .val = 0x00000004, },
+	{ .ptr_type = 4, .addr = 0x83fd9000, .val = 0x82a20000, },
+	{ .ptr_type = 4, .addr = 0x83fd9008, .val = 0x82a20000, },
+	{ .ptr_type = 4, .addr = 0x83fd9010, .val = 0x000ad0d0, },
+	{ .ptr_type = 4, .addr = 0x83fd9004, .val = 0x3f3584ab, },
+	{ .ptr_type = 4, .addr = 0x83fd900c, .val = 0x3f3584ab, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x04008008, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0000801a, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0000801b, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00448019, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x07328018, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x04008008, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00008010, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00008010, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x06328018, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x03808019, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00408019, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00008000, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0400800c, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0000801e, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0000801f, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0000801d, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0732801c, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0400800c, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00008014, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00008014, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0632801c, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0380801d, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0040801d, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00008004, },
+	{ .ptr_type = 4, .addr = 0x83fd9000, .val = 0xb2a20000, },
+	{ .ptr_type = 4, .addr = 0x83fd9008, .val = 0xb2a20000, },
+	{ .ptr_type = 4, .addr = 0x83fd9010, .val = 0x000ad6d0, },
+	{ .ptr_type = 4, .addr = 0x83fd9034, .val = 0x90000000, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00000000, },
+};
+
+#define APP_DEST	0x90000000
+
+struct imx_flash_header __flash_header_section flash_header = {
+	.app_code_jump_vector	= APP_DEST + 0x1000,
+	.app_code_barker	= APP_CODE_BARKER,
+	.app_code_csf		= 0,
+	.dcd_ptr_ptr		= APP_DEST + 0x400 + offsetof(struct imx_flash_header, dcd),
+	.super_root_key		= 0,
+	.dcd			= APP_DEST + 0x400 + offsetof(struct imx_flash_header, dcd_barker),
+	.app_dest		= APP_DEST,
+	.dcd_barker		= DCD_BARKER,
+	.dcd_block_len		= sizeof (dcd_entry),
+};
+
+unsigned long __image_len_section barebox_len = 0x40000;
+
diff --git a/arch/arm/boards/freescale-mx51-pdk/lowlevel_init.S b/arch/arm/boards/freescale-mx51-pdk/lowlevel_init.S
new file mode 100644
index 0000000..793104c
--- /dev/null
+++ b/arch/arm/boards/freescale-mx51-pdk/lowlevel_init.S
@@ -0,0 +1,216 @@
+/*
+ * This code is based on the ecos babbage startup code
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
+#include <config.h>
+#include <mach/imx-regs.h>
+#include <mach/clock-imx51.h>
+
+#define ROM_SI_REV_OFFSET                   0x48
+
+.macro setup_pll pll, freq
+	ldr r2, =\pll
+	ldr r1, =0x00001232
+	str r1, [r2, #MX51_PLL_DP_CTL] /* Set DPLL ON (set UPEN bit): BRMO=1 */
+	mov r1, #0x2
+	str r1, [r2, #MX51_PLL_DP_CONFIG] /* Enable auto-restart AREN bit */
+
+	str r3, [r2, #MX51_PLL_DP_OP]
+	str r3, [r2, #MX51_PLL_DP_HFS_OP]
+
+	str r4, [r2, #MX51_PLL_DP_MFD]
+	str r4, [r2, #MX51_PLL_DP_HFS_MFD]
+
+	str r5, [r2, #MX51_PLL_DP_MFN]
+	str r5, [r2, #MX51_PLL_DP_HFS_MFN]
+
+	ldr r1, =0x00001232
+	str r1, [r2, #MX51_PLL_DP_CTL]
+1:	ldr r1, [r2, #MX51_PLL_DP_CTL]
+	ands r1, r1, #0x1
+	beq 1b
+.endm
+
+#define writel(val, reg) \
+	ldr		r0,	=reg;	\
+	ldr		r1,	=val;	\
+	str		r1,   [r0];
+
+#define IMX51_TO_2
+
+.globl board_init_lowlevel
+board_init_lowlevel:
+	mov     r10, lr
+
+	/* explicitly disable L2 cache */
+	mrc 15, 0, r0, c1, c0, 1
+	bic r0, r0, #0x2
+	mcr 15, 0, r0, c1, c0, 1
+
+	/* reconfigure L2 cache aux control reg */
+	mov r0, #0xC0               /* tag RAM */
+	add r0, r0, #0x4    /* data RAM */
+	orr r0, r0, #(1 << 24)    /* disable write allocate delay */
+	orr r0, r0, #(1 << 23)    /* disable write allocate combine */
+	orr r0, r0, #(1 << 22)    /* disable write allocate */
+
+	ldr r1, =MX51_IROM_BASE_ADDR
+	ldr r3, [r1, #ROM_SI_REV_OFFSET]
+	cmp r3, #0x10
+	orrls r0, r0, #(1 << 25)    /* disable write combine for TO 2 and lower revs */
+
+	mcr 15, 1, r0, c9, c0, 2
+
+	ldr r0, =MX51_CCM_BASE_ADDR
+
+	/* Gate of clocks to the peripherals first */
+	ldr r1, =0x3FFFFFFF
+	str r1, [r0, #MX51_CCM_CCGR0]
+	ldr r1, =0x0
+	str r1, [r0, #MX51_CCM_CCGR1]
+	str r1, [r0, #MX51_CCM_CCGR2]
+	str r1, [r0, #MX51_CCM_CCGR3]
+
+	ldr r1, =0x00030000
+	str r1, [r0, #MX51_CCM_CCGR4]
+	ldr r1, =0x00FFF030
+	str r1, [r0, #MX51_CCM_CCGR5]
+	ldr r1, =0x00000300
+	str r1, [r0, #MX51_CCM_CCGR6]
+
+	/* Disable IPU and HSC dividers */
+	mov r1, #0x60000
+	str r1, [r0, #MX51_CCM_CCDR]
+
+#ifdef IMX51_TO_2
+	/* Make sure to switch the DDR away from PLL 1 */
+	ldr r1, =0x19239145
+	str r1, [r0, #MX51_CCM_CBCDR]
+	/* make sure divider effective */
+1:	ldr r1, [r0, #MX51_CCM_CDHIPR]
+	cmp r1, #0x0
+	bne 1b
+#endif
+
+	/* Switch ARM to step clock */
+	mov r1, #0x4
+	str r1, [r0, #MX51_CCM_CCSR]
+
+	mov r3, #MX51_PLL_DP_OP_800
+	mov r4, #MX51_PLL_DP_MFD_800
+	mov r5, #MX51_PLL_DP_MFN_800
+	setup_pll MX51_PLL1_BASE_ADDR
+
+	mov r3, #MX51_PLL_DP_OP_665
+	mov r4, #MX51_PLL_DP_MFD_665
+	mov r5, #MX51_PLL_DP_MFN_665
+	setup_pll MX51_PLL3_BASE_ADDR
+
+	/* Switch peripheral to PLL 3 */
+	ldr r1, =0x000010C0
+	str r1, [r0, #MX51_CCM_CBCMR]
+	ldr r1, =0x13239145
+	str r1, [r0, #MX51_CCM_CBCDR]
+
+	mov r3, #MX51_PLL_DP_OP_665
+	mov r4, #MX51_PLL_DP_MFD_665
+	mov r5, #MX51_PLL_DP_MFN_665
+	setup_pll MX51_PLL2_BASE_ADDR
+
+	/* Switch peripheral to PLL2 */
+	ldr r1, =0x19239145
+	str r1, [r0, #MX51_CCM_CBCDR]
+	ldr r1, =0x000020C0
+	str r1, [r0, #MX51_CCM_CBCMR]
+
+	mov r3, #MX51_PLL_DP_OP_216
+	mov r4, #MX51_PLL_DP_MFD_216
+	mov r5, #MX51_PLL_DP_MFN_216
+	setup_pll MX51_PLL3_BASE_ADDR
+
+	/* Set the platform clock dividers */
+	ldr r2, =MX51_ARM_BASE_ADDR
+	ldr r1, =0x00000124
+	str r1, [r2, #0x14]
+
+	/* Run TO 3.0 at Full speed, for other TO's wait till we increase VDDGP */
+	ldr r1, =MX51_IROM_BASE_ADDR
+	ldr r3, [r1, #ROM_SI_REV_OFFSET]
+	cmp r3, #0x10
+	movls r1, #0x1
+	movhi r1, #0
+	str r1, [r0, #MX51_CCM_CACRR]
+
+	/* Switch ARM back to PLL 1 */
+	mov r1, #0
+	str r1, [r0,  #MX51_CCM_CCSR]
+
+        /* setup the rest */
+        /* Use lp_apm (24MHz) source for perclk */
+#ifdef IMX51_TO_2
+        ldr r1, =0x000020C2
+        str r1, [r0, #MX51_CCM_CBCMR]
+        // ddr clock from PLL 1, all perclk dividers are 1 since using 24MHz
+        ldr r1, =0x59239100
+        str r1, [r0, #MX51_CCM_CBCDR]
+#else
+        ldr r1, =0x0000E3C2
+        str r1, [r0, #MX51_CCM_CBCMR]
+        // emi=ahb, all perclk dividers are 1 since using 24MHz
+        // DDR divider=6 to have 665/6=110MHz
+        ldr r1, =0x013B9100
+        str r1, [r0, #MX51_CCM_CBCDR]
+#endif
+
+        /* Restore the default values in the Gate registers */
+        ldr r1, =0xFFFFFFFF
+        str r1, [r0, #MX51_CCM_CCGR0]
+        str r1, [r0, #MX51_CCM_CCGR1]
+        str r1, [r0, #MX51_CCM_CCGR2]
+        str r1, [r0, #MX51_CCM_CCGR3]
+        str r1, [r0, #MX51_CCM_CCGR4]
+        str r1, [r0, #MX51_CCM_CCGR5]
+        str r1, [r0, #MX51_CCM_CCGR6]
+
+        /* Use PLL 2 for UART's, get 66.5MHz from it */
+        ldr r1, =0xA5A2A020
+        str r1, [r0, #MX51_CCM_CSCMR1]
+        ldr r1, =0x00C30321
+        str r1, [r0, #MX51_CCM_CSCDR1]
+
+        /* make sure divider effective */
+    1:  ldr r1, [r0, #MX51_CCM_CDHIPR]
+        cmp r1, #0x0
+        bne 1b
+
+	mov r1, #0x0
+	str r1, [r0, #MX51_CCM_CCDR]
+
+	writel(0x1, 0x73fa8074)
+	ldr	r0, =0x73f88000
+	ldr	r1, [r0]
+	orr	r1, #0x40
+	str	r1, [r0]
+
+	ldr	r0, =0x73f88004
+	ldr	r1, [r0]
+	orr	r1, #0x40
+	str	r1, [r0]
+
+	mov	pc, r10
+
diff --git a/arch/arm/boards/freescale-mx51-pdk/mx51-pdk.dox b/arch/arm/boards/freescale-mx51-pdk/mx51-pdk.dox
new file mode 100644
index 0000000..7d04df6
--- /dev/null
+++ b/arch/arm/boards/freescale-mx51-pdk/mx51-pdk.dox
@@ -0,0 +1,4 @@
+/** @page Freescale i.MX51 PDK (Babbage) Board
+
+
+*/
diff --git a/arch/arm/boards/freescale-mx51-pdk/spi.c b/arch/arm/boards/freescale-mx51-pdk/spi.c
new file mode 100644
index 0000000..8eabe81
--- /dev/null
+++ b/arch/arm/boards/freescale-mx51-pdk/spi.c
@@ -0,0 +1,340 @@
+#include <common.h>
+#include <init.h>
+#include <asm/io.h>
+#include <mach/imx-regs.h>
+#include <gpio.h>
+
+#define IMX_SPI_ACTIVE_HIGH	1
+#define SPI_RETRY_TIMES		100
+#define CLKCTL_CACRR		0x10
+#define REV_ATLAS_LITE_2_0	0x10
+
+/* Only for SPI master support */
+struct imx_spi_dev {
+	unsigned int base;	// base address of SPI module the device is connected to
+	unsigned int freq;	// desired clock freq in Hz for this device
+	unsigned int ss_pol;	// ss polarity: 1=active high; 0=active low
+	unsigned int ss;	// slave select
+	unsigned int in_sctl;	// inactive sclk ctl: 1=stay low; 0=stay high
+	unsigned int in_dctl;	// inactive data ctl: 1=stay low; 0=stay high
+	unsigned int ssctl;	// single burst mode vs multiple: 0=single; 1=multi
+	unsigned int sclkpol;	// sclk polarity: active high=0; active low=1
+	unsigned int sclkpha;	// sclk phase: 0=phase 0; 1=phase1
+	unsigned int fifo_sz;	// fifo size in bytes for either tx or rx. Don't add them up!
+	unsigned int ctrl_reg;
+	unsigned int cfg_reg;
+};
+
+struct imx_spi_dev imx_spi_pmic = {
+      .base	= MX51_CSPI1_BASE_ADDR,
+      .freq	= 25000000,
+      .ss_pol	= IMX_SPI_ACTIVE_HIGH,
+      .ss	= 0, /* slave select 0 */
+      .fifo_sz	= 32,
+};
+
+/*
+ * Initialization function for a spi slave device. It must be called BEFORE
+ * any spi operations. The SPI module will be -disabled- after this call.
+ */
+static int imx_spi_init(struct imx_spi_dev *dev)
+{
+	unsigned int clk_src = 66500000;
+	unsigned int pre_div = 0, post_div = 0, i, reg_ctrl = 0, reg_config = 0;
+
+	if (dev->freq == 0) {
+		printf("Error: desired clock is 0\n");
+		return -1;
+	}
+
+	/* control register setup */
+	if (clk_src > dev->freq) {
+		pre_div = clk_src / dev->freq;
+		if (pre_div > 16) {
+			post_div = pre_div / 16;
+			pre_div = 15;
+		}
+		if (post_div != 0) {
+			for (i = 0; i < 16; i++) {
+				if ((1 << i) >= post_div)
+					break;
+			}
+			if (i == 16) {
+				printf
+				    ("Error: no divider can meet the freq: %d\n",
+				     dev->freq);
+				return -1;
+			}
+			post_div = i;
+		}
+	}
+	debug("pre_div = %d, post_div=%d\n", pre_div, post_div);
+	reg_ctrl |= pre_div << 12;
+	reg_ctrl |= post_div << 8;
+	reg_ctrl |= 1 << (dev->ss + 4);	/* always set to master mode */
+
+	/* configuration register setup */
+	reg_config |= dev->ss_pol << (dev->ss + 12);
+	reg_config |= dev->in_sctl << (dev->ss + 20);
+	reg_config |= dev->in_dctl << (dev->ss + 16);
+	reg_config |= dev->ssctl << (dev->ss + 8);
+	reg_config |= dev->sclkpol << (dev->ss + 4);
+	reg_config |= dev->sclkpha << (dev->ss + 0);
+
+	debug("reg_ctrl = 0x%x\n", reg_ctrl);
+	/* reset the spi */
+	writel(0, dev->base + 0x8);
+	writel(reg_ctrl, dev->base + 0x8);
+	debug("reg_config = 0x%x\n", reg_config);
+	writel(reg_config, dev->base + 0xC);
+	/* save control register */
+	dev->cfg_reg = reg_config;
+	dev->ctrl_reg = reg_ctrl;
+
+	/* clear interrupt reg */
+	writel(0, dev->base + 0x10);
+	writel(3 << 6, dev->base + 0x18);
+
+	return 0;
+}
+
+static int imx_spi_xfer(struct imx_spi_dev *dev,	/* spi device pointer */
+		  void *tx_buf,	/* tx buffer (has to be 4-byte aligned) */
+		  void *rx_buf,	/* rx buffer (has to be 4-byte aligned) */
+		  int burst_bits	/* total number of bits in one burst (or xfer) */
+    )
+{
+	int val = SPI_RETRY_TIMES;
+	unsigned int *p_buf;
+	unsigned int reg;
+	int len, ret_val = 0;
+	int burst_bytes = burst_bits / 8;
+
+	/* Account for rounding of non-byte aligned burst sizes */
+	if ((burst_bits % 8) != 0)
+		burst_bytes++;
+
+	if (burst_bytes > dev->fifo_sz) {
+		printf("Error: maximum burst size is 0x%x bytes, asking 0x%x\n",
+		       dev->fifo_sz, burst_bytes);
+		return -1;
+	}
+
+	dev->ctrl_reg = (dev->ctrl_reg & ~0xFFF00000) | ((burst_bits - 1) << 20);
+	writel(dev->ctrl_reg | 0x1, dev->base + 0x8);
+	writel(dev->cfg_reg, dev->base + 0xC);
+	debug("ctrl_reg=0x%x, cfg_reg=0x%x\n",
+	       readl(dev->base + 0x8), readl(dev->base + 0xC));
+
+	/* move data to the tx fifo */
+	len = burst_bytes;
+	for (p_buf = tx_buf; len > 0; p_buf++, len -= 4)
+		writel(*p_buf, dev->base + 0x4);
+
+	reg = readl(dev->base + 0x8);
+	reg |= (1 << 2);	/* set xch bit */
+	writel(reg, dev->base + 0x8);
+
+	/* poll on the TC bit (transfer complete) */
+	while ((val-- > 0) && (readl(dev->base + 0x18) & (1 << 7)) == 0);
+
+	/* clear the TC bit */
+	writel(3 << 6, dev->base + 0x18);
+
+	if (val == 0) {
+		printf("Error: re-tried %d times without response. Give up\n",
+		       SPI_RETRY_TIMES);
+		ret_val = -1;
+		goto error;
+	}
+
+	/* move data in the rx buf */
+	len = burst_bytes;
+	for (p_buf = rx_buf; len > 0; p_buf++, len -= 4)
+		*p_buf = readl(dev->base + 0x0);
+
+error:
+	writel(0, dev->base + 0x8);
+	return ret_val;
+}
+
+/*
+ * To read/write to a PMIC register. For write, it does another read for the
+ * actual register value.
+ *
+ * @param   reg         register number inside the PMIC
+ * @param   val         data to be written to the register; don't care for read
+ * @param   write       0 for read; 1 for write
+ *
+ * @return              the actual data in the PMIC register
+ */
+static unsigned int
+pmic_reg(unsigned int reg, unsigned int val, unsigned int write)
+{
+	static unsigned int pmic_tx, pmic_rx;
+
+	if (reg > 63 || write > 1) {
+		printf("<reg num> = %d is invalid. Should be less then 63\n",
+		       reg);
+		return 0;
+	}
+	pmic_tx = (write << 31) | (reg << 25) | (val & 0x00FFFFFF);
+	debug("reg=0x%x, val=0x%08x\n", reg, pmic_tx);
+
+	imx_spi_xfer(&imx_spi_pmic, (unsigned char *) &pmic_tx,
+			  (unsigned char *) &pmic_rx, (4 * 8));
+
+	if (write) {
+		pmic_tx &= ~(1 << 31);
+		imx_spi_xfer(&imx_spi_pmic, (unsigned char *) &pmic_tx,
+				  (unsigned char *) &pmic_rx, (4 * 8));
+	}
+
+	return pmic_rx;
+}
+
+static void show_pmic_info(void)
+{
+	unsigned int rev_id;
+	char *rev;
+
+	rev_id = pmic_reg(7, 0, 0);
+
+	switch (rev_id & 0x1F) {
+	case 0x1: rev = "1.0"; break;
+	case 0x9: rev = "1.1"; break;
+	case 0xa: rev = "1.2"; break;
+	case 0x10:
+		if (((rev_id >> 9) & 0x3) == 0)
+			rev = "2.0";
+		else
+			rev = "2.0a";
+		break;
+	case 0x11: rev = "2.1"; break;
+	case 0x18: rev = "3.0"; break;
+	case 0x19: rev = "3.1"; break;
+	case 0x1a: rev = "3.2"; break;
+	case 0x2: rev = "3.2a"; break;
+	case 0x1b: rev = "3.3"; break;
+	case 0x1d: rev = "3.5"; break;
+	default: rev = "unknown"; break;
+	}
+
+	printf("PMIC ID: 0x%08x [Rev: %s]\n", rev_id, rev);
+}
+
+int babbage_power_init(void)
+{
+	unsigned int val;
+	unsigned int reg;
+
+	imx_spi_init(&imx_spi_pmic);
+
+	show_pmic_info();
+
+	/* Write needed to Power Gate 2 register */
+	val = pmic_reg(34, 0, 0);
+	val &= ~0x10000;
+	pmic_reg(34, val, 1);
+
+	/* Write needed to update Charger 0 */
+	pmic_reg(48, 0x0023807F, 1);
+
+	/* power up the system first */
+	pmic_reg(34, 0x00200000, 1);
+
+	if (1) {
+		/* Set core voltage to 1.1V */
+		val = pmic_reg(24, 0, 0);
+		val &= ~0x1f;
+		val |= 0x14;
+		pmic_reg(24, val, 1);
+
+		/* Setup VCC (SW2) to 1.25 */
+		val = pmic_reg(25, 0, 0);
+		val &= ~0x1f;
+		val |= 0x1a;
+		pmic_reg(25, val, 1);
+
+		/* Setup 1V2_DIG1 (SW3) to 1.25 */
+		val = pmic_reg(26, 0, 0);
+		val &= ~0x1f;
+		val |= 0x1a;
+		pmic_reg(26, val, 1);
+		udelay(50);
+		/* Raise the core frequency to 800MHz */
+		writel(0x0, MX51_CCM_BASE_ADDR + CLKCTL_CACRR);
+	} else {
+		/* TO 3.0 */
+		/* Setup VCC (SW2) to 1.225 */
+		val = pmic_reg(25, 0, 0);
+		val &= ~0x1f;
+		val |= 0x19;
+		pmic_reg(25, val, 1);
+
+		/* Setup 1V2_DIG1 (SW3) to 1.2 */
+		val = pmic_reg(26, 0, 0);
+		val &= ~0x1f;
+		val |= 0x18;
+		pmic_reg(26, val, 1);
+	}
+
+	if (((pmic_reg(7, 0, 0) & 0x1F) < REV_ATLAS_LITE_2_0)
+	    || (((pmic_reg(7, 0, 0) >> 9) & 0x3) == 0)) {
+		/* Set switchers in PWM mode for Atlas 2.0 and lower */
+		/* Setup the switcher mode for SW1 & SW2 */
+		val = pmic_reg(28, 0, 0);
+		val &= ~0x3c0f;
+		val |= 0x1405;
+		pmic_reg(28, val, 1);
+
+		/* Setup the switcher mode for SW3 & SW4 */
+		val = pmic_reg(29, 0, 0);
+		val &= ~0xf0f;
+		val |= 0x505;
+		pmic_reg(29, val, 1);
+	} else {
+		/* Set switchers in Auto in NORMAL mode & STANDBY mode for Atlas 2.0a */
+		/* Setup the switcher mode for SW1 & SW2 */
+		val = pmic_reg(28, 0, 0);
+		val &= ~0x3c0f;
+		val |= 0x2008;
+		pmic_reg(28, val, 1);
+
+		/* Setup the switcher mode for SW3 & SW4 */
+		val = pmic_reg(29, 0, 0);
+		val &= ~0xf0f;
+		val |= 0x808;
+		pmic_reg(29, val, 1);
+	}
+
+	/* Set VDIG to 1.65V, VGEN3 to 1.8V, VCAM to 2.5V */
+	val = pmic_reg(30, 0, 0);
+	val &= ~0x34030;
+	val |= 0x10020;
+	pmic_reg(30, val, 1);
+
+	/* Set VVIDEO to 2.775V, VAUDIO to 3V, VSD to 3.15V */
+	val = pmic_reg(31, 0, 0);
+	val &= ~0x1FC;
+	val |= 0x1F4;
+	pmic_reg(31, val, 1);
+
+	/* Configure VGEN3 and VCAM regulators to use external PNP */
+	val = 0x208;
+	pmic_reg(33, val, 1);
+	udelay(200);
+
+	gpio_direction_output(32 + 14, 0); /* Lower reset line */
+
+	/* Enable VGEN3, VCAM, VAUDIO, VVIDEO, VSD regulators */
+	val = 0x49249;
+	pmic_reg(33, val, 1);
+
+	udelay(500);
+
+	gpio_set_value(32 + 14, 1);
+
+	return 0;
+}
+
diff --git a/arch/arm/configs/freescale_mx51_babbage_defconfig b/arch/arm/configs/freescale_mx51_babbage_defconfig
new file mode 100644
index 0000000..d99d91a
--- /dev/null
+++ b/arch/arm/configs/freescale_mx51_babbage_defconfig
@@ -0,0 +1,43 @@
+CONFIG_ARCH_IMX=y
+CONFIG_ARCH_IMX_INTERNAL_BOOT=y
+CONFIG_ARCH_IMX51=y
+CONFIG_AEABI=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_MMU=y
+CONFIG_TEXT_BASE=0x97f00000
+CONFIG_MALLOC_SIZE=0x2000000
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv arch/arm/boards/freescale-mx51-pdk/env/"
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_GPIO=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_PING=y
+CONFIG_NET_TFTP=y
+CONFIG_DRIVER_NET_FEC_IMX=y
+CONFIG_DRIVER_SPI_IMX=y
+CONFIG_DRIVER_CFI=y
+CONFIG_CFI_BUFFER_WRITE=y
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_IMX_ESDHC=y
+CONFIG_I2C_MC13892=y
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index f143e60..d451875 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -17,6 +17,7 @@ config ARCH_TEXT_BASE
 	default 0x87f00000 if MACH_PCM043
 	default 0x08f80000 if MACH_SCB9328
 	default 0xa7e00000 if MACH_NESO
+	default 0x97f00000 if MACH_MX51_PDK
 
 config BOARDINFO
 	default "Eukrea CPUIMX25" if MACH_EUKREA_CPUIMX25
@@ -32,6 +33,7 @@ config BOARDINFO
 	default "Phytec phyCORE-i.MX35" if MACH_PCM043
 	default "Synertronixx scb9328" if MACH_SCB9328
 	default "Garz+Fricke Neso" if MACH_NESO
+	default "Freescale i.MX51 PDK" if MACH_FREESCALE_MX51_PDK
 
 config ARCH_HAS_FEC_IMX
 	bool
@@ -309,6 +311,11 @@ choice
 
 	prompt "i.MX51 Board Type"
 
+config MACH_FREESCALE_MX51_PDK
+	bool "Freescale i.MX51 PDK"
+	select HAVE_MMU
+	select MACH_HAS_LOWLEVEL_INIT
+
 endchoice
 
 endif
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
