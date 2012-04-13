Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIgxk-0004wn-N9
 for barebox@lists.infradead.org; Fri, 13 Apr 2012 13:54:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 13 Apr 2012 15:54:32 +0200
Message-Id: <1334325273-1701-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1334325273-1701-1-git-send-email-s.hauer@pengutronix.de>
References: <1334325273-1701-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/7] ARM: initial Freescale i.MX6q Armadillo2 support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile                                 |    1 +
 arch/arm/boards/freescale-mx6-arm2/Makefile       |    1 +
 arch/arm/boards/freescale-mx6-arm2/board.c        |  173 +++++++++++++++++++++
 arch/arm/boards/freescale-mx6-arm2/config.h       |    4 +
 arch/arm/boards/freescale-mx6-arm2/env/config     |   47 ++++++
 arch/arm/boards/freescale-mx6-arm2/flash_header.c |  170 ++++++++++++++++++++
 arch/arm/mach-imx/Kconfig                         |   15 ++
 7 files changed, 411 insertions(+)
 create mode 100644 arch/arm/boards/freescale-mx6-arm2/Makefile
 create mode 100644 arch/arm/boards/freescale-mx6-arm2/board.c
 create mode 100644 arch/arm/boards/freescale-mx6-arm2/config.h
 create mode 100644 arch/arm/boards/freescale-mx6-arm2/env/config
 create mode 100644 arch/arm/boards/freescale-mx6-arm2/flash_header.c

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 3dd7129..1f34017 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -131,6 +131,7 @@ board-$(CONFIG_MACH_USB_A9G20)			:= usb-a926x
 board-$(CONFIG_MACH_VERSATILEPB)		:= versatile
 board-$(CONFIG_MACH_TX25)			:= karo-tx25
 board-$(CONFIG_MACH_TQMA53)			:= tqma53
+board-$(CONFIG_MACH_MX6Q_ARM2)			:= freescale-mx6-arm2
 
 machdirs := $(patsubst %,arch/arm/mach-%/,$(machine-y))
 
diff --git a/arch/arm/boards/freescale-mx6-arm2/Makefile b/arch/arm/boards/freescale-mx6-arm2/Makefile
new file mode 100644
index 0000000..ad2e1be
--- /dev/null
+++ b/arch/arm/boards/freescale-mx6-arm2/Makefile
@@ -0,0 +1 @@
+obj-y += board.o flash_header.o
diff --git a/arch/arm/boards/freescale-mx6-arm2/board.c b/arch/arm/boards/freescale-mx6-arm2/board.c
new file mode 100644
index 0000000..1422472
--- /dev/null
+++ b/arch/arm/boards/freescale-mx6-arm2/board.c
@@ -0,0 +1,173 @@
+/*
+ * Copyright (C) 2012 Sascha Hauer, Pengutronix
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
+ * Foundation.
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <environment.h>
+#include <mach/imx-regs.h>
+#include <fec.h>
+#include <mach/gpio.h>
+#include <asm/armlinux.h>
+#include <generated/mach-types.h>
+#include <partition.h>
+#include <miidev.h>
+#include <asm/io.h>
+#include <asm/mmu.h>
+#include <mach/generic.h>
+#include <sizes.h>
+#include <mach/imx6.h>
+#include <mach/devices-imx6.h>
+#include <mach/iomux-mx6.h>
+
+static iomux_v3_cfg_t arm2_pads[] = {
+	/* UART1 */
+	MX6Q_PAD_KEY_COL0__UART4_TXD,
+	MX6Q_PAD_KEY_ROW0__UART4_RXD,
+
+	MX6Q_PAD_SD1_CLK__USDHC1_CLK,
+	MX6Q_PAD_SD1_CMD__USDHC1_CMD,
+	MX6Q_PAD_SD1_DAT0__USDHC1_DAT0,
+	MX6Q_PAD_SD1_DAT1__USDHC1_DAT1,
+	MX6Q_PAD_SD1_DAT2__USDHC1_DAT2,
+	MX6Q_PAD_SD1_DAT3__USDHC1_DAT3,
+
+	MX6Q_PAD_SD2_CLK__USDHC2_CLK,
+	MX6Q_PAD_SD2_CMD__USDHC2_CMD,
+	MX6Q_PAD_SD2_DAT0__USDHC2_DAT0,
+	MX6Q_PAD_SD2_DAT1__USDHC2_DAT1,
+	MX6Q_PAD_SD2_DAT2__USDHC2_DAT2,
+	MX6Q_PAD_SD2_DAT3__USDHC2_DAT3,
+
+	MX6Q_PAD_SD3_CLK__USDHC3_CLK,
+	MX6Q_PAD_SD3_CMD__USDHC3_CMD,
+	MX6Q_PAD_SD3_DAT0__USDHC3_DAT0,
+	MX6Q_PAD_SD3_DAT1__USDHC3_DAT1,
+	MX6Q_PAD_SD3_DAT2__USDHC3_DAT2,
+	MX6Q_PAD_SD3_DAT3__USDHC3_DAT3,
+	MX6Q_PAD_SD3_DAT4__USDHC3_DAT4,
+	MX6Q_PAD_SD3_DAT5__USDHC3_DAT5,
+	MX6Q_PAD_SD3_DAT6__USDHC3_DAT6,
+	MX6Q_PAD_SD3_DAT7__USDHC3_DAT7,
+	MX6Q_PAD_GPIO_18__USDHC3_VSELECT,
+
+	MX6Q_PAD_SD4_CLK__USDHC4_CLK,
+	MX6Q_PAD_SD4_CMD__USDHC4_CMD,
+	MX6Q_PAD_SD4_DAT0__USDHC4_DAT0,
+	MX6Q_PAD_SD4_DAT1__USDHC4_DAT1,
+	MX6Q_PAD_SD4_DAT2__USDHC4_DAT2,
+	MX6Q_PAD_SD4_DAT3__USDHC4_DAT3,
+	MX6Q_PAD_SD4_DAT4__USDHC4_DAT4,
+	MX6Q_PAD_SD4_DAT5__USDHC4_DAT5,
+	MX6Q_PAD_SD4_DAT6__USDHC4_DAT6,
+	MX6Q_PAD_SD4_DAT7__USDHC4_DAT7,
+
+	MX6Q_PAD_KEY_COL1__ENET_MDIO,
+	MX6Q_PAD_KEY_COL2__ENET_MDC,
+	MX6Q_PAD_RGMII_TXC__ENET_RGMII_TXC,
+	MX6Q_PAD_RGMII_TD0__ENET_RGMII_TD0,
+	MX6Q_PAD_RGMII_TD1__ENET_RGMII_TD1,
+	MX6Q_PAD_RGMII_TD2__ENET_RGMII_TD2,
+	MX6Q_PAD_RGMII_TD3__ENET_RGMII_TD3,
+	MX6Q_PAD_RGMII_TX_CTL__ENET_RGMII_TX_CTL,
+	MX6Q_PAD_ENET_REF_CLK__ENET_TX_CLK,
+	MX6Q_PAD_RGMII_RXC__ENET_RGMII_RXC,
+	MX6Q_PAD_RGMII_RD0__ENET_RGMII_RD0,
+	MX6Q_PAD_RGMII_RD1__ENET_RGMII_RD1,
+	MX6Q_PAD_RGMII_RD2__ENET_RGMII_RD2,
+	MX6Q_PAD_RGMII_RD3__ENET_RGMII_RD3,
+	MX6Q_PAD_RGMII_RX_CTL__ENET_RGMII_RX_CTL,
+	MX6Q_PAD_GPIO_0__CCM_CLKO,
+	MX6Q_PAD_GPIO_3__CCM_CLKO2,
+};
+
+static int arm2_mem_init(void)
+{
+	arm_add_mem_device("ram0", 0x10000000, SZ_2G);
+
+	return 0;
+}
+mem_initcall(arm2_mem_init);
+
+static struct fec_platform_data fec_info = {
+	.xcv_type = RGMII,
+	.phy_addr = 0,
+};
+
+static int mx6_rgmii_rework(void)
+{
+	struct mii_device *mdev;
+	u16 val;
+
+	mdev = mii_open("phy0");
+	if (!mdev) {
+		printf("unable to open phy0\n");
+		return -ENODEV;
+	}
+
+	/* To enable AR8031 ouput a 125MHz clk from CLK_25M */
+	mii_write(mdev, mdev->address, 0xd, 0x7);
+	mii_write(mdev, mdev->address, 0xe, 0x8016);
+	mii_write(mdev, mdev->address, 0xd, 0x4007);
+
+	val = mii_read(mdev, mdev->address, 0xe);
+	val &= 0xffe3;
+	val |= 0x18;
+	mii_write(mdev, mdev->address, 0xe, val);
+
+	/* introduce tx clock delay */
+	mii_write(mdev, mdev->address, 0x1d, 0x5);
+
+	val = mii_read(mdev, mdev->address, 0x1e);
+	val |= 0x0100;
+	mii_write(mdev, mdev->address, 0x1e, val);
+
+	mii_close(mdev);
+
+	return 0;
+}
+
+static int arm2_devices_init(void)
+{
+	imx6_add_mmc3(NULL);
+
+	imx6_add_fec(&fec_info);
+	mx6_rgmii_rework();
+
+	armlinux_set_bootparams((void *)0x10000100);
+	armlinux_set_architecture(3837);
+
+	devfs_add_partition("disk0", 0, SZ_1M, PARTITION_FIXED, "self0");
+	devfs_add_partition("disk0", SZ_1M + SZ_1M, SZ_512K, PARTITION_FIXED, "env0");
+
+	return 0;
+}
+
+device_initcall(arm2_devices_init);
+
+static int arm2_console_init(void)
+{
+	mxc_iomux_v3_setup_multiple_pads(arm2_pads, ARRAY_SIZE(arm2_pads));
+
+	imx6_init_lowlevel();
+
+	imx6_add_uart3();
+
+	return 0;
+}
+console_initcall(arm2_console_init);
diff --git a/arch/arm/boards/freescale-mx6-arm2/config.h b/arch/arm/boards/freescale-mx6-arm2/config.h
new file mode 100644
index 0000000..ca15136
--- /dev/null
+++ b/arch/arm/boards/freescale-mx6-arm2/config.h
@@ -0,0 +1,4 @@
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/freescale-mx6-arm2/env/config b/arch/arm/boards/freescale-mx6-arm2/env/config
new file mode 100644
index 0000000..4b8c52b
--- /dev/null
+++ b/arch/arm/boards/freescale-mx6-arm2/env/config
@@ -0,0 +1,47 @@
+#!/bin/sh
+
+machine=armadillo2
+serverip=
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
+rootfs_loc=disk
+
+# can be either 'jffs2' or 'ubifs'
+rootfs_type=ubifs
+rootfsimage=root-$machine.$rootfs_type
+
+# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
+kernelimage=zImage-$machine
+
+if [ -n $user ]; then
+	kernelimage="$user"-"$kernelimage"
+	nfsroot="$serverip:/home/$user/nfsroot/$machine"
+	rootfsimage="$user"-"$rootfsimage"
+else
+	nfsroot="$serverip:/path/to/nfs/root"
+fi
+
+autoboot_timeout=3
+
+bootargs="console=ttymxc2,115200"
+
+disk_parts="1M(barebox)ro,1M(bareboxenv),4M(kernel),-(root)"
+
+rootfs_part_linux_dev=sda1
+rootfs_type=ext2
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
diff --git a/arch/arm/boards/freescale-mx6-arm2/flash_header.c b/arch/arm/boards/freescale-mx6-arm2/flash_header.c
new file mode 100644
index 0000000..79f3113
--- /dev/null
+++ b/arch/arm/boards/freescale-mx6-arm2/flash_header.c
@@ -0,0 +1,170 @@
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
+#include <mach/imx6-regs.h>
+
+void __naked __flash_header_start go(void)
+{
+	__asm__ __volatile__("b exception_vectors\n");
+}
+
+#define DCD(a, v) { .addr = cpu_to_be32(a), .val = cpu_to_be32(v), }
+
+struct imx_dcd_v2_entry __dcd_entry_section dcd_entry[] = {
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x5a8, 0x00000030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x5b0, 0x00000030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x524, 0x00000030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x51c, 0x00000030),
+
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x518, 0x00000030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x50c, 0x00000030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x5b8, 0x00000030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x5c0, 0x00000030),
+
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x5ac, 0x00020030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x5b4, 0x00020030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x528, 0x00020030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x520, 0x00020030),
+
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x514, 0x00020030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x510, 0x00020030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x5bc, 0x00020030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x5c4, 0x00020030),
+
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x56c, 0x00020030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x578, 0x00020030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x588, 0x00020030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x594, 0x00020030),
+
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x57c, 0x00020030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x590, 0x00003000),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x598, 0x00003000),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x58c, 0x00000000),
+
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x59c, 0x00003030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x5a0, 0x00003030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x784, 0x00000030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x788, 0x00000030),
+
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x794, 0x00000030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x79c, 0x00000030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x7a0, 0x00000030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x7a4, 0x00000030),
+
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x7a8, 0x00000030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x748, 0x00000030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x74c, 0x00000030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x750, 0x00020000),
+
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x758, 0x00000000),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x774, 0x00020000),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x78c, 0x00000030),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x798, 0x000C0000),
+
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x81c, 0x33333333),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x820, 0x33333333),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x824, 0x33333333),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x828, 0x33333333),
+
+	DCD(MX6_MMDC_P1_BASE_ADDR + 0x81c, 0x33333333),
+	DCD(MX6_MMDC_P1_BASE_ADDR + 0x820, 0x33333333),
+	DCD(MX6_MMDC_P1_BASE_ADDR + 0x824, 0x33333333),
+	DCD(MX6_MMDC_P1_BASE_ADDR + 0x828, 0x33333333),
+
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x018, 0x00081740),
+
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x00008000),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x00c, 0x555A7975),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x010, 0xFF538E64),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x014, 0x01FF00DB),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x02c, 0x000026D2),
+
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x030, 0x005B0E21),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x008, 0x09444040),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x004, 0x00025576),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x040, 0x00000027),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x000, 0xC31A0000),
+
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x04088032),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x0408803A),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x00008033),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x0000803B),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x00428031),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x00428039),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x09408030),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x09408038),
+
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x04008040),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x04008048),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x800, 0xA1380003),
+	DCD(MX6_MMDC_P1_BASE_ADDR + 0x800, 0xA1380003),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x020, 0x00005800),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x818, 0x00022227),
+	DCD(MX6_MMDC_P1_BASE_ADDR + 0x818, 0x00022227),
+
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x83c, 0x434B0350),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x840, 0x034C0359),
+	DCD(MX6_MMDC_P1_BASE_ADDR + 0x83c, 0x434B0350),
+	DCD(MX6_MMDC_P1_BASE_ADDR + 0x840, 0x03650348),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x848, 0x4436383B),
+	DCD(MX6_MMDC_P1_BASE_ADDR + 0x848, 0x39393341),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x850, 0x35373933),
+	DCD(MX6_MMDC_P1_BASE_ADDR + 0x850, 0x48254A36),
+
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x80c, 0x001F001F),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x810, 0x001F001F),
+
+	DCD(MX6_MMDC_P1_BASE_ADDR + 0x80c, 0x00440044),
+	DCD(MX6_MMDC_P1_BASE_ADDR + 0x810, 0x00440044),
+
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x8b8, 0x00000800),
+	DCD(MX6_MMDC_P1_BASE_ADDR + 0x8b8, 0x00000800),
+
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x00000000),
+	DCD(MX6_MMDC_P0_BASE_ADDR + 0x404, 0x00011006),
+
+	/* enable AXI cache for VDOA/VPU/IPU */
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x010, 0xf00000ff),
+	/* set IPU AXI-id0 Qos=0xf(bypass) AXI-id1 Qos=0x7 */
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x018, 0x007f007f),
+	DCD(MX6_IOMUXC_BASE_ADDR + 0x01c, 0x007f007f),
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
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 8a0979a..325e67c 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -24,6 +24,7 @@ config ARCH_TEXT_BASE
 	default 0x87f00000 if MACH_GUF_CUPID
 	default 0x93d00000 if MACH_TX25
 	default 0x7ff00000 if MACH_TQMA53
+	default 0x4fc00000 if MACH_MX6Q_ARM2
 
 config BOARDINFO
 	default "Eukrea CPUIMX25" if MACH_EUKREA_CPUIMX25
@@ -46,6 +47,7 @@ config BOARDINFO
 	default "Garz+Fricke Cupid" if MACH_GUF_CUPID
 	default "Ka-Ro tx25" if MACH_TX25
 	default "TQ tqma53" if MACH_TQMA53
+	default "Freescale i.MX6q armadillo2" if MACH_MX6Q_ARM2
 
 choice
 	prompt "Select boot mode"
@@ -417,6 +419,19 @@ endchoice
 
 endif
 
+if ARCH_IMX6
+
+choice
+
+	prompt "i.MX6 Board Type"
+
+config MACH_MX6Q_ARM2
+	bool "Freescale i.MX6q Armadillo2"
+
+endchoice
+
+endif
+
 # ----------------------------------------------------------
 
 menu "Board specific settings       "
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
