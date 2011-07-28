Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmOKi-0001Yr-Oi
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 11:00:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 13:00:47 +0200
Message-Id: <1311850847-5140-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311850847-5140-1-git-send-email-s.hauer@pengutronix.de>
References: <1311850847-5140-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] arm: add support for the i.MX53 loco board
To: barebox@lists.infradead.org

From: Marc Kleine-Budde <mkl@pengutronix.de>

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/boards.dox                           |    1 +
 arch/arm/Makefile                                  |    1 +
 arch/arm/boards/freescale-mx53-loco/Makefile       |    3 +
 arch/arm/boards/freescale-mx53-loco/board.c        |  152 +++++++++++++++++
 arch/arm/boards/freescale-mx53-loco/config.h       |   24 +++
 arch/arm/boards/freescale-mx53-loco/env/config     |   51 ++++++
 arch/arm/boards/freescale-mx53-loco/flash_header.c |  101 ++++++++++++
 .../arm/boards/freescale-mx53-loco/lowlevel_init.S |  172 ++++++++++++++++++++
 arch/arm/boards/freescale-mx53-loco/mx53-pdk.dox   |    4 +
 arch/arm/configs/freescale_mx53_loco_defconfig     |   51 ++++++
 arch/arm/mach-imx/Kconfig                          |    7 +
 11 files changed, 567 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/freescale-mx53-loco/Makefile
 create mode 100644 arch/arm/boards/freescale-mx53-loco/board.c
 create mode 100644 arch/arm/boards/freescale-mx53-loco/config.h
 create mode 100644 arch/arm/boards/freescale-mx53-loco/env/config
 create mode 100644 arch/arm/boards/freescale-mx53-loco/flash_header.c
 create mode 100644 arch/arm/boards/freescale-mx53-loco/lowlevel_init.S
 create mode 100644 arch/arm/boards/freescale-mx53-loco/mx53-pdk.dox
 create mode 100644 arch/arm/configs/freescale_mx53_loco_defconfig

diff --git a/Documentation/boards.dox b/Documentation/boards.dox
index 8087f01..4070d31 100644
--- a/Documentation/boards.dox
+++ b/Documentation/boards.dox
@@ -18,6 +18,7 @@ ARM type:
 @li @subpage the3stack
 @li @subpage mx23_evk
 @li @subpage board_babage
+@li @subpage board_loco
 @li @subpage chumbyone
 @li @subpage scb9328
 @li @subpage netx
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index c367786..f1c045e 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -102,6 +102,7 @@ board-$(CONFIG_MACH_MX23EVK)			:= freescale-mx23-evk
 board-$(CONFIG_MACH_CHUMBY)			:= chumby_falconwing
 board-$(CONFIG_MACH_TX28)			:= karo-tx28
 board-$(CONFIG_MACH_FREESCALE_MX51_PDK)		:= freescale-mx51-pdk
+board-$(CONFIG_MACH_FREESCALE_MX53_LOCO)	:= freescale-mx53-loco
 board-$(CONFIG_MACH_GUF_CUPID)			:= guf-cupid
 board-$(CONFIG_MACH_MINI2440)			:= mini2440
 board-$(CONFIG_MACH_VERSATILEPB)		:= versatile
diff --git a/arch/arm/boards/freescale-mx53-loco/Makefile b/arch/arm/boards/freescale-mx53-loco/Makefile
new file mode 100644
index 0000000..8e0c87c
--- /dev/null
+++ b/arch/arm/boards/freescale-mx53-loco/Makefile
@@ -0,0 +1,3 @@
+obj-y += lowlevel_init.o
+obj-y += board.o
+obj-y += flash_header.o
diff --git a/arch/arm/boards/freescale-mx53-loco/board.c b/arch/arm/boards/freescale-mx53-loco/board.c
new file mode 100644
index 0000000..e3db7f3
--- /dev/null
+++ b/arch/arm/boards/freescale-mx53-loco/board.c
@@ -0,0 +1,152 @@
+/*
+ * Copyright (C) 2007 Sascha Hauer, Pengutronix
+ * Copyright (C) 2011 Marc Kleine-Budde <mkl@pengutronix.de>
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
+ */
+
+#include <common.h>
+#include <environment.h>
+#include <fcntl.h>
+#include <fec.h>
+#include <fs.h>
+#include <init.h>
+#include <nand.h>
+#include <net.h>
+#include <partition.h>
+#include <sizes.h>
+
+#include <generated/mach-types.h>
+
+#include <mach/imx-regs.h>
+#include <mach/iomux-mx53.h>
+#include <mach/devices-imx53.h>
+#include <mach/generic.h>
+#include <mach/gpio.h>
+#include <mach/imx-nand.h>
+#include <mach/iim.h>
+
+#include <asm/armlinux.h>
+#include <asm/io.h>
+#include <asm/mmu.h>
+
+static struct fec_platform_data fec_info = {
+	.xcv_type = RMII,
+};
+
+static struct pad_desc loco_pads[] = {
+	/* UART1 */
+	MX53_PAD_CSI0_DAT10__UART1_TXD_MUX,
+	MX53_PAD_CSI0_DAT11__UART1_RXD_MUX,
+
+	/* FEC */
+	MX53_PAD_FEC_MDC__FEC_MDC,
+	MX53_PAD_FEC_MDIO__FEC_MDIO,
+	MX53_PAD_FEC_REF_CLK__FEC_TX_CLK,
+	MX53_PAD_FEC_RX_ER__FEC_RX_ER,
+	MX53_PAD_FEC_CRS_DV__FEC_RX_DV,
+	MX53_PAD_FEC_RXD1__FEC_RDATA_1,
+	MX53_PAD_FEC_RXD0__FEC_RDATA_0,
+	MX53_PAD_FEC_TX_EN__FEC_TX_EN,
+	MX53_PAD_FEC_TXD1__FEC_TDATA_1,
+	MX53_PAD_FEC_TXD0__FEC_TDATA_0,
+	/* FEC_nRST */
+	MX53_PAD_PATA_DA_0__GPIO7_6,
+
+	/* SD1 */
+	MX53_PAD_SD1_CMD__ESDHC1_CMD,
+	MX53_PAD_SD1_CLK__ESDHC1_CLK,
+	MX53_PAD_SD1_DATA0__ESDHC1_DAT0,
+	MX53_PAD_SD1_DATA1__ESDHC1_DAT1,
+	MX53_PAD_SD1_DATA2__ESDHC1_DAT2,
+	MX53_PAD_SD1_DATA3__ESDHC1_DAT3,
+	/* SD1_CD */
+	MX53_PAD_EIM_DA13__GPIO3_13,
+};
+
+#ifdef CONFIG_MMU
+static void loco_mmu_init(void)
+{
+	mmu_init();
+
+	arm_create_section(0x70000000, 0x70000000, 512, PMD_SECT_DEF_CACHED);
+	arm_create_section(0x90000000, 0x70000000, 512, PMD_SECT_DEF_UNCACHED);
+	arm_create_section(0xb0000000, 0xb0000000, 512, PMD_SECT_DEF_CACHED);
+	arm_create_section(0xd0000000, 0xb0000000, 512, PMD_SECT_DEF_UNCACHED);
+
+	setup_dma_coherent(0x20000000);
+
+	mmu_enable();
+}
+#else
+static void loco_mmu_init(void)
+{
+}
+#endif
+
+#define LOCO_FEC_PHY_RST		IMX_GPIO_NR(7, 6)
+
+static void loco_fec_reset(void)
+{
+	gpio_direction_output(LOCO_FEC_PHY_RST, 0);
+	mdelay(1);
+	gpio_set_value(LOCO_FEC_PHY_RST, 1);
+}
+
+static int loco_devices_init(void)
+{
+	struct device_d *sdram_dev;
+
+	loco_mmu_init();
+
+	sdram_dev = add_mem_device("ram0", 0x70000000, SZ_512M,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
+
+	sdram_dev = add_mem_device("ram1", 0xb0000000, SZ_512M,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
+
+	imx51_iim_register_fec_ethaddr();
+	imx53_add_fec(&fec_info);
+	imx53_add_mmc0(NULL);
+
+	loco_fec_reset();
+
+	armlinux_set_bootparams((void *)0x70000100);
+	armlinux_set_architecture(MACH_TYPE_MX53_LOCO);
+
+	loco_fec_reset();
+
+	return 0;
+}
+
+device_initcall(loco_devices_init);
+
+static int loco_part_init(void)
+{
+	devfs_add_partition("disk0", 0x00000, 0x40000, PARTITION_FIXED, "self0");
+	devfs_add_partition("disk0", 0x40000, 0x20000, PARTITION_FIXED, "env0");
+
+	return 0;
+}
+late_initcall(loco_part_init);
+
+static int loco_console_init(void)
+{
+	mxc_iomux_v3_setup_multiple_pads(loco_pads, ARRAY_SIZE(loco_pads));
+
+	imx53_add_uart0();
+	return 0;
+}
+
+console_initcall(loco_console_init);
diff --git a/arch/arm/boards/freescale-mx53-loco/config.h b/arch/arm/boards/freescale-mx53-loco/config.h
new file mode 100644
index 0000000..b7effe5
--- /dev/null
+++ b/arch/arm/boards/freescale-mx53-loco/config.h
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
diff --git a/arch/arm/boards/freescale-mx53-loco/env/config b/arch/arm/boards/freescale-mx53-loco/env/config
new file mode 100644
index 0000000..3659a62
--- /dev/null
+++ b/arch/arm/boards/freescale-mx53-loco/env/config
@@ -0,0 +1,51 @@
+#!/bin/sh
+
+machine=loco
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
+bootargs="console=ttymxc0,115200"
+
+disk_parts="256k(barebox)ro,128k(bareboxenv),4M(kernel),-(root)"
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
diff --git a/arch/arm/boards/freescale-mx53-loco/flash_header.c b/arch/arm/boards/freescale-mx53-loco/flash_header.c
new file mode 100644
index 0000000..d6ff898
--- /dev/null
+++ b/arch/arm/boards/freescale-mx53-loco/flash_header.c
@@ -0,0 +1,101 @@
+/*
+ * Copyright (C) 2011 Marc Kleine-Budde <mkl@pengutronix.de>
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
+#include <asm/byteorder.h>
+#include <mach/imx-flash-header.h>
+
+void __naked __flash_header_start go(void)
+{
+	__asm__ __volatile__("b exception_vectors\n");
+}
+
+struct imx_dcd_v2_entry __dcd_entry_section dcd_entry[] = {
+	{ .addr = cpu_to_be32(0x53fa8554), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8558), .val = cpu_to_be32(0x00300040), },
+	{ .addr = cpu_to_be32(0x53fa8560), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8564), .val = cpu_to_be32(0x00300040), },
+	{ .addr = cpu_to_be32(0x53fa8568), .val = cpu_to_be32(0x00300040), },
+	{ .addr = cpu_to_be32(0x53fa8570), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8574), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8578), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa857c), .val = cpu_to_be32(0x00300040), },
+	{ .addr = cpu_to_be32(0x53fa8580), .val = cpu_to_be32(0x00300040), },
+	{ .addr = cpu_to_be32(0x53fa8584), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8588), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8590), .val = cpu_to_be32(0x00300040), },
+	{ .addr = cpu_to_be32(0x53fa8594), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa86f0), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa86f4), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa86fc), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa8714), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa8718), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa871c), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8720), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8724), .val = cpu_to_be32(0x04000000), },
+	{ .addr = cpu_to_be32(0x53fa8728), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa872c), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x63fd9088), .val = cpu_to_be32(0x35343535), },
+	{ .addr = cpu_to_be32(0x63fd9090), .val = cpu_to_be32(0x4d444c44), },
+	{ .addr = cpu_to_be32(0x63fd907c), .val = cpu_to_be32(0x01370138), },
+	{ .addr = cpu_to_be32(0x63fd9080), .val = cpu_to_be32(0x013b013c), },
+	{ .addr = cpu_to_be32(0x63fd9018), .val = cpu_to_be32(0x00011740), },
+	{ .addr = cpu_to_be32(0x63fd9000), .val = cpu_to_be32(0xc3190000), },
+	{ .addr = cpu_to_be32(0x63fd900c), .val = cpu_to_be32(0x9f5152e3), },
+	{ .addr = cpu_to_be32(0x63fd9010), .val = cpu_to_be32(0xb68e8a63), },
+	{ .addr = cpu_to_be32(0x63fd9014), .val = cpu_to_be32(0x01ff00db), },
+	{ .addr = cpu_to_be32(0x63fd902c), .val = cpu_to_be32(0x000026d2), },
+	{ .addr = cpu_to_be32(0x63fd9030), .val = cpu_to_be32(0x009f0e21), },
+	{ .addr = cpu_to_be32(0x63fd9008), .val = cpu_to_be32(0x12273030), },
+	{ .addr = cpu_to_be32(0x63fd9004), .val = cpu_to_be32(0x0002002d), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00008032), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00008033), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00028031), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x092080b0), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x04008040), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x0000803a), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x0000803b), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00028039), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x09208138), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x04008048), },
+	{ .addr = cpu_to_be32(0x63fd9020), .val = cpu_to_be32(0x00001800), },
+	{ .addr = cpu_to_be32(0x63fd9040), .val = cpu_to_be32(0x04b80003), },
+	{ .addr = cpu_to_be32(0x63fd9058), .val = cpu_to_be32(0x00022227), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00000000), },
+};
+
+#define APP_DEST	CONFIG_TEXT_BASE
+
+struct imx_flash_header_v2 __flash_header_section flash_header = {
+	.header.tag		= IVT_HEADER_TAG,
+	.header.length		= cpu_to_be16(32),
+	.header.version		= IVT_VERSION,
+
+	.entry			= APP_DEST + 0x1000,
+	.dcd_ptr		= APP_DEST + 0x400 + offsetof(struct imx_flash_header_v2, dcd),
+	.boot_data_ptr		= APP_DEST + 0x400 + offsetof(struct imx_flash_header_v2, boot_data),
+	.self			= APP_DEST + 0x400,
+
+	.boot_data.start	= APP_DEST,
+	.boot_data.size		= 0x40000,
+
+	.dcd.header.tag		= DCD_HEADER_TAG,
+	.dcd.header.length	= cpu_to_be16(sizeof(struct imx_dcd) + sizeof(dcd_entry)),
+	.dcd.header.version	= DCD_VERSION,
+
+	.dcd.command.tag	= DCD_COMMAND_WRITE_TAG,
+	.dcd.command.length	= cpu_to_be16(sizeof(struct imx_dcd_command) + sizeof(dcd_entry)),
+	.dcd.command.param	= DCD_COMMAND_WRITE_PARAM,
+};
diff --git a/arch/arm/boards/freescale-mx53-loco/lowlevel_init.S b/arch/arm/boards/freescale-mx53-loco/lowlevel_init.S
new file mode 100644
index 0000000..44102c9
--- /dev/null
+++ b/arch/arm/boards/freescale-mx53-loco/lowlevel_init.S
@@ -0,0 +1,172 @@
+/*
+ * Copyright (C) 2007 Guennadi Liakhovetski <lg@denx.de>
+ * Copyright (C) 2009 Freescale Semiconductor, Inc.
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
+#include <config.h>
+#include <mach/imx-regs.h>
+#include <mach/clock-imx51_53.h>
+
+/*
+ * L2CC Cache setup/invalidation/disable
+ */
+.macro init_l2cc
+	/* explicitly disable L2 cache */
+	mrc 15, 0, r0, c1, c0, 1
+	bic r0, r0, #0x2
+	mcr 15, 0, r0, c1, c0, 1
+
+	/* reconfigure L2 cache aux control reg */
+	mov r0, #0xC0			/* tag RAM */
+	add r0, r0, #0x4		/* data RAM */
+	orr r0, r0, #(1 << 24)		/* disable write allocate delay */
+	orr r0, r0, #(1 << 23)		/* disable write allocate combine */
+	orr r0, r0, #(1 << 22)		/* disable write allocate */
+
+	cmp r3, #0x10			/* r3 contains the silicon rev */
+
+	/* disable write combine for TO 2 and lower revs */
+	orrls r0, r0, #(1 << 25)
+
+	mcr 15, 1, r0, c9, c0, 2
+.endm /* init_l2cc */
+
+/* AIPS setup - Only setup MPROTx registers.
+ * The PACR default values are good.*/
+.macro init_aips
+	/*
+	 * Set all MPROTx to be non-bufferable, trusted for R/W,
+	 * not forced to user-mode.
+	 */
+	ldr r0, =MX53_AIPS1_BASE_ADDR
+	ldr r1, =0x77777777
+	str r1, [r0, #0x0]
+	str r1, [r0, #0x4]
+
+	ldr r0, =MX53_AIPS2_BASE_ADDR
+	str r1, [r0, #0x0]
+	str r1, [r0, #0x4]
+	/*
+	 * Clear the on and off peripheral modules Supervisor Protect bit
+	 * for SDMA to access them. Did not change the AIPS control registers
+	 * (offset 0x20) access type
+	 */
+.endm /* init_aips */
+
+.macro setup_pll pll, freq
+	ldr r0, =\pll
+	ldr r1, =0x00001232
+	str r1, [r0, #MX5_PLL_DP_CTL]		/* Set DPLL ON (set UPEN bit): BRMO=1 */
+	mov r1, #0x2
+	str r1, [r0, #MX5_PLL_DP_CONFIG]	/* Enable auto-restart AREN bit */
+
+	ldr r1, W_DP_OP_\freq
+	str r1, [r0, #MX5_PLL_DP_OP]
+	str r1, [r0, #MX5_PLL_DP_HFS_OP]
+
+	ldr r1, W_DP_MFD_\freq
+	str r1, [r0, #MX5_PLL_DP_MFD]
+	str r1, [r0, #MX5_PLL_DP_HFS_MFD]
+
+	ldr r1, W_DP_MFN_\freq
+	str r1, [r0, #MX5_PLL_DP_MFN]
+	str r1, [r0, #MX5_PLL_DP_HFS_MFN]
+
+	ldr r1, =0x00001232
+	str r1, [r0, #MX5_PLL_DP_CTL]
+1:	ldr r1, [r0, #MX5_PLL_DP_CTL]
+	ands r1, r1, #0x1
+	beq 1b
+.endm
+
+.macro init_clock
+	ldr r0, =MX53_CCM_BASE_ADDR
+
+
+	/* Switch ARM to step clock */
+	mov r1, #0x4
+	str r1, [r0, #MX5_CCM_CCSR]
+
+	setup_pll MX53_PLL1_BASE_ADDR, 1000
+	setup_pll MX53_PLL3_BASE_ADDR, 216
+
+	/* Set the platform clock dividers */
+	ldr r0, =MX53_ARM_BASE_ADDR
+	ldr r1, =0x00000725
+	str r1, [r0, #0x14]
+
+	ldr r0, =MX53_CCM_BASE_ADDR
+	mov r1, #0
+	str r1, [r0, #MX5_CCM_CACRR]
+
+	/* Switch ARM back to PLL 1 */
+	mov r1, #0
+	str r1, [r0, #MX5_CCM_CCSR]
+
+
+	/* Restore the default values in the Gate registers */
+	ldr r1, =0xFFFFFFFF
+	str r1, [r0, #MX5_CCM_CCGR0]
+	str r1, [r0, #MX5_CCM_CCGR1]
+	str r1, [r0, #MX5_CCM_CCGR2]
+	str r1, [r0, #MX5_CCM_CCGR3]
+	str r1, [r0, #MX5_CCM_CCGR4]
+	str r1, [r0, #MX5_CCM_CCGR5]
+	str r1, [r0, #MX5_CCM_CCGR6]
+#if 0
+	str r1, [r0, #MX5_CCM_CCGR7]
+#endif
+
+	ldr r1, [r0, #MX5_CCM_CSCDR1]
+	orr r1, r1, #0x3f
+	eor r1, r1, #0x3f
+	orr r1, r1, #0x21
+	str r1, [r0, #MX5_CCM_CSCDR1]
+	/* make sure divider effective */
+1:	ldr r1, [r0, #MX5_CCM_CDHIPR]
+	cmp r1, #0x0
+	bne 1b
+
+	mov r1, #0x0
+	str r1, [r0, #MX5_CCM_CCDR]
+
+	/* for cko - for ARM div by 8 */
+	mov r1, #0x000A0000
+	add r1, r1, #0x00000F0
+	str r1, [r0, #MX5_CCM_CCOSR]
+.endm
+
+.globl board_init_lowlevel
+board_init_lowlevel:
+	mov r10, lr
+
+	init_l2cc
+	init_aips
+	init_clock
+
+	mov pc, r10
+
+/* Board level setting value */
+W_DP_OP_1000:		.word MX5_PLL_DP_OP_1000
+W_DP_MFD_1000:		.word MX5_PLL_DP_MFD_1000
+W_DP_MFN_1000:		.word MX5_PLL_DP_MFN_1000
+W_DP_OP_800:		.word MX5_PLL_DP_OP_800
+W_DP_MFD_800:		.word MX5_PLL_DP_MFD_800
+W_DP_MFN_800:		.word MX5_PLL_DP_MFN_800
+W_DP_OP_665:		.word MX5_PLL_DP_OP_665
+W_DP_MFD_665:		.word MX5_PLL_DP_MFD_665
+W_DP_MFN_665:		.word MX5_PLL_DP_MFN_665
+W_DP_OP_216:		.word MX5_PLL_DP_OP_216
+W_DP_MFD_216:		.word MX5_PLL_DP_MFD_216
+W_DP_MFN_216:		.word MX5_PLL_DP_MFN_216
diff --git a/arch/arm/boards/freescale-mx53-loco/mx53-pdk.dox b/arch/arm/boards/freescale-mx53-loco/mx53-pdk.dox
new file mode 100644
index 0000000..3a2c84f
--- /dev/null
+++ b/arch/arm/boards/freescale-mx53-loco/mx53-pdk.dox
@@ -0,0 +1,4 @@
+/** @page board_loco Freescale i.MX53 PDK (Loco) Board
+
+
+*/
diff --git a/arch/arm/configs/freescale_mx53_loco_defconfig b/arch/arm/configs/freescale_mx53_loco_defconfig
new file mode 100644
index 0000000..8e4a7ce
--- /dev/null
+++ b/arch/arm/configs/freescale_mx53_loco_defconfig
@@ -0,0 +1,51 @@
+CONFIG_ARCH_IMX=y
+CONFIG_ARCH_IMX53=y
+CONFIG_IMX_IIM=y
+CONFIG_IMX_IIM_FUSE_BLOW=y
+CONFIG_AEABI=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_UNWIND=y
+CONFIG_MMU=y
+CONFIG_TEXT_BASE=0x7ff00000
+CONFIG_MALLOC_SIZE=0x2000000
+CONFIG_KALLSYMS=y
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv arch/arm/boards/freescale-mx53-loco/env/"
+CONFIG_DEBUG_INFO=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_UNLZO=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_NFS=y
+CONFIG_NET_PING=y
+CONFIG_NET_TFTP=y
+CONFIG_NET_TFTP_PUSH=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_DRIVER_NET_FEC_IMX=y
+# CONFIG_SPI is not set
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_IMX_ESDHC=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 33a329b..e661142 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -19,6 +19,7 @@ config ARCH_TEXT_BASE
 	default 0x08f80000 if MACH_SCB9328
 	default 0xa7e00000 if MACH_NESO
 	default 0x97f00000 if MACH_MX51_PDK
+	default 0x7ff00000 if MACH_MX53_LOCO
 	default 0x87f00000 if MACH_GUF_CUPID
 	default 0x93d00000 if MACH_TX25
 
@@ -38,6 +39,7 @@ config BOARDINFO
 	default "Synertronixx scb9328" if MACH_SCB9328
 	default "Garz+Fricke Neso" if MACH_NESO
 	default "Freescale i.MX51 PDK" if MACH_FREESCALE_MX51_PDK
+	default "Freescale i.MX53 LOCO" if MACH_FREESCALE_MX53_LOCO
 	default "Garz+Fricke Cupid" if MACH_GUF_CUPID
 	default "Ka-Ro tx25" if MACH_TX25
 
@@ -410,6 +412,11 @@ choice
 
 	prompt "i.MX53 Board Type"
 
+config MACH_FREESCALE_MX53_LOCO
+	bool "Freescale i.MX53 LOCO"
+	select HAVE_MMU
+	select MACH_HAS_LOWLEVEL_INIT
+
 endchoice
 
 endif
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
