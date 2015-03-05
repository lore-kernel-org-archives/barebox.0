Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YTWbm-0000Z0-W2
 for barebox@lists.infradead.org; Thu, 05 Mar 2015 14:18:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Mar 2015 15:18:11 +0100
Message-Id: <1425565092-9570-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1425565092-9570-1-git-send-email-s.hauer@pengutronix.de>
References: <1425565092-9570-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] ARM: i.MX: remove i.MX6 ARM2 board support
To: Barebox List <barebox@lists.infradead.org>

This board is an early development sample that was never sold. Remove
support for it. With this the last non device tree i.MX6 board is gone.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile                                  |   1 -
 arch/arm/boards/Makefile                           |   1 -
 arch/arm/boards/freescale-mx6-arm2/Makefile        |   2 -
 arch/arm/boards/freescale-mx6-arm2/board.c         | 157 ---------------------
 arch/arm/boards/freescale-mx6-arm2/env/config      |  47 ------
 .../boards/freescale-mx6-arm2/flash-header.imxcfg  | 122 ----------------
 arch/arm/boards/freescale-mx6-arm2/lowlevel.c      |  11 --
 arch/arm/configs/freescale-mx6-arm2_defconfig      |  68 ---------
 arch/arm/mach-imx/Kconfig                          |   7 -
 9 files changed, 416 deletions(-)
 delete mode 100644 arch/arm/boards/freescale-mx6-arm2/Makefile
 delete mode 100644 arch/arm/boards/freescale-mx6-arm2/board.c
 delete mode 100644 arch/arm/boards/freescale-mx6-arm2/env/config
 delete mode 100644 arch/arm/boards/freescale-mx6-arm2/flash-header.imxcfg
 delete mode 100644 arch/arm/boards/freescale-mx6-arm2/lowlevel.c
 delete mode 100644 arch/arm/configs/freescale-mx6-arm2_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index f0133d4..c10d471 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -217,7 +217,6 @@ barebox.imximg: $(KBUILD_BINARY) FORCE
 
 boarddir = $(srctree)/arch/arm/boards
 imxcfg-$(CONFIG_MACH_FREESCALE_MX53_SMD) += $(boarddir)/freescale-mx53-smd/flash-header.imxcfg
-imxcfg-$(CONFIG_MACH_MX6Q_ARM2) += $(boarddir)/freescale-mx6-arm2/flash-header.imxcfg
 imxcfg-$(CONFIG_MACH_CCMX51) += $(boarddir)/ccxmx51/flash-header.imxcfg
 imxcfg-$(CONFIG_MACH_TX51) += $(boarddir)/karo-tx51/flash-header-karo-tx51.imxcfg
 imxcfg-$(CONFIG_MACH_GUF_VINCELL) += $(boarddir)/guf-vincell/flash-header.imxcfg
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index a85de76..b160a48 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -64,7 +64,6 @@ obj-$(CONFIG_MACH_MMCCPU)			+= mmccpu/
 obj-$(CONFIG_MACH_MX23EVK)			+= freescale-mx23-evk/
 obj-$(CONFIG_MACH_MX28EVK)			+= freescale-mx28-evk/
 obj-$(CONFIG_MACH_MX31MOBOARD)			+= mx31moboard/
-obj-$(CONFIG_MACH_MX6Q_ARM2)			+= freescale-mx6-arm2/
 obj-$(CONFIG_MACH_NESO)				+= guf-neso/
 obj-$(CONFIG_MACH_NOMADIK_8815NHK)		+= nhk8815/
 obj-$(CONFIG_MACH_NVIDIA_BEAVER)		+= nvidia-beaver/
diff --git a/arch/arm/boards/freescale-mx6-arm2/Makefile b/arch/arm/boards/freescale-mx6-arm2/Makefile
deleted file mode 100644
index 01c7a25..0000000
--- a/arch/arm/boards/freescale-mx6-arm2/Makefile
+++ /dev/null
@@ -1,2 +0,0 @@
-obj-y += board.o
-lwl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx6-arm2/board.c b/arch/arm/boards/freescale-mx6-arm2/board.c
deleted file mode 100644
index 3d5576c..0000000
--- a/arch/arm/boards/freescale-mx6-arm2/board.c
+++ /dev/null
@@ -1,157 +0,0 @@
-/*
- * Copyright (C) 2012 Sascha Hauer, Pengutronix
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
-#include <init.h>
-#include <environment.h>
-#include <mach/imx6-regs.h>
-#include <fec.h>
-#include <gpio.h>
-#include <asm/armlinux.h>
-#include <generated/mach-types.h>
-#include <partition.h>
-#include <linux/phy.h>
-#include <asm/io.h>
-#include <asm/mmu.h>
-#include <mach/generic.h>
-#include <linux/sizes.h>
-#include <mach/imx6.h>
-#include <mach/devices-imx6.h>
-#include <mach/iomux-mx6.h>
-
-static iomux_v3_cfg_t arm2_pads[] = {
-	/* UART1 */
-	MX6Q_PAD_KEY_COL0__UART4_TXD,
-	MX6Q_PAD_KEY_ROW0__UART4_RXD,
-
-	MX6Q_PAD_SD1_CLK__USDHC1_CLK,
-	MX6Q_PAD_SD1_CMD__USDHC1_CMD,
-	MX6Q_PAD_SD1_DAT0__USDHC1_DAT0,
-	MX6Q_PAD_SD1_DAT1__USDHC1_DAT1,
-	MX6Q_PAD_SD1_DAT2__USDHC1_DAT2,
-	MX6Q_PAD_SD1_DAT3__USDHC1_DAT3,
-
-	MX6Q_PAD_SD2_CLK__USDHC2_CLK,
-	MX6Q_PAD_SD2_CMD__USDHC2_CMD,
-	MX6Q_PAD_SD2_DAT0__USDHC2_DAT0,
-	MX6Q_PAD_SD2_DAT1__USDHC2_DAT1,
-	MX6Q_PAD_SD2_DAT2__USDHC2_DAT2,
-	MX6Q_PAD_SD2_DAT3__USDHC2_DAT3,
-
-	MX6Q_PAD_SD3_CLK__USDHC3_CLK,
-	MX6Q_PAD_SD3_CMD__USDHC3_CMD,
-	MX6Q_PAD_SD3_DAT0__USDHC3_DAT0,
-	MX6Q_PAD_SD3_DAT1__USDHC3_DAT1,
-	MX6Q_PAD_SD3_DAT2__USDHC3_DAT2,
-	MX6Q_PAD_SD3_DAT3__USDHC3_DAT3,
-	MX6Q_PAD_SD3_DAT4__USDHC3_DAT4,
-	MX6Q_PAD_SD3_DAT5__USDHC3_DAT5,
-	MX6Q_PAD_SD3_DAT6__USDHC3_DAT6,
-	MX6Q_PAD_SD3_DAT7__USDHC3_DAT7,
-	MX6Q_PAD_GPIO_18__USDHC3_VSELECT,
-
-	MX6Q_PAD_SD4_CLK__USDHC4_CLK,
-	MX6Q_PAD_SD4_CMD__USDHC4_CMD,
-	MX6Q_PAD_SD4_DAT0__USDHC4_DAT0,
-	MX6Q_PAD_SD4_DAT1__USDHC4_DAT1,
-	MX6Q_PAD_SD4_DAT2__USDHC4_DAT2,
-	MX6Q_PAD_SD4_DAT3__USDHC4_DAT3,
-	MX6Q_PAD_SD4_DAT4__USDHC4_DAT4,
-	MX6Q_PAD_SD4_DAT5__USDHC4_DAT5,
-	MX6Q_PAD_SD4_DAT6__USDHC4_DAT6,
-	MX6Q_PAD_SD4_DAT7__USDHC4_DAT7,
-
-	MX6Q_PAD_KEY_COL1__ENET_MDIO,
-	MX6Q_PAD_KEY_COL2__ENET_MDC,
-	MX6Q_PAD_RGMII_TXC__ENET_RGMII_TXC,
-	MX6Q_PAD_RGMII_TD0__ENET_RGMII_TD0,
-	MX6Q_PAD_RGMII_TD1__ENET_RGMII_TD1,
-	MX6Q_PAD_RGMII_TD2__ENET_RGMII_TD2,
-	MX6Q_PAD_RGMII_TD3__ENET_RGMII_TD3,
-	MX6Q_PAD_RGMII_TX_CTL__ENET_RGMII_TX_CTL,
-	MX6Q_PAD_ENET_REF_CLK__ENET_TX_CLK,
-	MX6Q_PAD_RGMII_RXC__ENET_RGMII_RXC,
-	MX6Q_PAD_RGMII_RD0__ENET_RGMII_RD0,
-	MX6Q_PAD_RGMII_RD1__ENET_RGMII_RD1,
-	MX6Q_PAD_RGMII_RD2__ENET_RGMII_RD2,
-	MX6Q_PAD_RGMII_RD3__ENET_RGMII_RD3,
-	MX6Q_PAD_RGMII_RX_CTL__ENET_RGMII_RX_CTL,
-	MX6Q_PAD_GPIO_0__CCM_CLKO,
-	MX6Q_PAD_GPIO_3__CCM_CLKO2,
-};
-
-static int arm2_mem_init(void)
-{
-	arm_add_mem_device("ram0", 0x10000000, SZ_2G);
-
-	return 0;
-}
-mem_initcall(arm2_mem_init);
-
-static void mx6_rgmii_rework(struct phy_device *dev)
-{
-	u16 val;
-
-	/* To enable AR8031 ouput a 125MHz clk from CLK_25M */
-	phy_write(dev, 0xd, 0x7);
-	phy_write(dev, 0xe, 0x8016);
-	phy_write(dev, 0xd, 0x4007);
-
-	val = phy_read(dev, 0xe);
-	val &= 0xffe3;
-	val |= 0x18;
-	phy_write(dev, 0xe, val);
-
-	/* introduce tx clock delay */
-	phy_write(dev, 0x1d, 0x5);
-
-	val = phy_read(dev, 0x1e);
-	val |= 0x0100;
-	phy_write(dev, 0x1e, val);
-}
-
-static struct fec_platform_data fec_info = {
-	.xcv_type = PHY_INTERFACE_MODE_RGMII,
-	.phy_init = mx6_rgmii_rework,
-	.phy_addr = 0,
-};
-
-static int arm2_devices_init(void)
-{
-	imx6_add_mmc3(NULL);
-
-	imx6_add_fec(&fec_info);
-
-	armlinux_set_architecture(3837);
-
-	devfs_add_partition("disk0", 0, SZ_1M, DEVFS_PARTITION_FIXED, "self0");
-	devfs_add_partition("disk0", SZ_1M + SZ_1M, SZ_512K, DEVFS_PARTITION_FIXED, "env0");
-
-	return 0;
-}
-
-device_initcall(arm2_devices_init);
-
-static int arm2_console_init(void)
-{
-	mxc_iomux_v3_setup_multiple_pads(arm2_pads, ARRAY_SIZE(arm2_pads));
-
-	barebox_set_model("Freescale i.MX6 Armadillo2");
-	barebox_set_hostname("armadillo2");
-
-	imx6_add_uart3();
-
-	return 0;
-}
-console_initcall(arm2_console_init);
diff --git a/arch/arm/boards/freescale-mx6-arm2/env/config b/arch/arm/boards/freescale-mx6-arm2/env/config
deleted file mode 100644
index 0ab5bdf..0000000
--- a/arch/arm/boards/freescale-mx6-arm2/env/config
+++ /dev/null
@@ -1,47 +0,0 @@
-#!/bin/sh
-
-machine=armadillo2
-serverip=
-user=
-
-# use 'dhcp' to do dhcp in barebox and in kernel
-# use 'none' if you want to skip kernel ip autoconfiguration
-ip=dhcp
-
-# or set your networking parameters here
-#eth0.ipaddr=a.b.c.d
-#eth0.netmask=a.b.c.d
-#eth0.gateway=a.b.c.d
-#eth0.serverip=a.b.c.d
-
-# can be either 'nfs', 'tftp', 'nor' or 'nand'
-kernel_loc=tftp
-# can be either 'net', 'nor', 'nand' or 'initrd'
-rootfs_loc=disk
-
-# can be either 'jffs2' or 'ubifs'
-rootfs_type=ubifs
-rootfsimage=root-$machine.$rootfs_type
-
-# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
-kernelimage=zImage-$machine
-
-if [ -n $user ]; then
-	kernelimage="$user"-"$kernelimage"
-	nfsroot="$serverip:/home/$user/nfsroot/$machine"
-	rootfsimage="$user"-"$rootfsimage"
-else
-	nfsroot="$serverip:/path/to/nfs/root"
-fi
-
-autoboot_timeout=3
-
-bootargs="console=ttymxc2,115200"
-
-disk_parts="1M(barebox)ro,3M(bareboxenv),4M(kernel),-(root)"
-
-rootfs_part_linux_dev=sda1
-rootfs_type=ext2
-
-# set a fancy prompt (if support is compiled in)
-PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
diff --git a/arch/arm/boards/freescale-mx6-arm2/flash-header.imxcfg b/arch/arm/boards/freescale-mx6-arm2/flash-header.imxcfg
deleted file mode 100644
index 403d184..0000000
--- a/arch/arm/boards/freescale-mx6-arm2/flash-header.imxcfg
+++ /dev/null
@@ -1,122 +0,0 @@
-soc imx6
-loadaddr 0x10000000
-dcdofs 0x400
-
-wm 32 0x020e05a8 0x00000030
-wm 32 0x020e05b0 0x00000030
-wm 32 0x020e0524 0x00000030
-wm 32 0x020e051c 0x00000030
-
-wm 32 0x020e0518 0x00000030
-wm 32 0x020e050c 0x00000030
-wm 32 0x020e05b8 0x00000030
-wm 32 0x020e05c0 0x00000030
-
-wm 32 0x020e05ac 0x00020030
-wm 32 0x020e05b4 0x00020030
-wm 32 0x020e0528 0x00020030
-wm 32 0x020e0520 0x00020030
-
-wm 32 0x020e0514 0x00020030
-wm 32 0x020e0510 0x00020030
-wm 32 0x020e05bc 0x00020030
-wm 32 0x020e05c4 0x00020030
-
-wm 32 0x020e056c 0x00020030
-wm 32 0x020e0578 0x00020030
-wm 32 0x020e0588 0x00020030
-wm 32 0x020e0594 0x00020030
-
-wm 32 0x020e057c 0x00020030
-wm 32 0x020e0590 0x00003000
-wm 32 0x020e0598 0x00003000
-wm 32 0x020e058c 0x00000000
-
-wm 32 0x020e059c 0x00003030
-wm 32 0x020e05a0 0x00003030
-wm 32 0x020e0784 0x00000030
-wm 32 0x020e0788 0x00000030
-
-wm 32 0x020e0794 0x00000030
-wm 32 0x020e079c 0x00000030
-wm 32 0x020e07a0 0x00000030
-wm 32 0x020e07a4 0x00000030
-
-wm 32 0x020e07a8 0x00000030
-wm 32 0x020e0748 0x00000030
-wm 32 0x020e074c 0x00000030
-wm 32 0x020e0750 0x00020000
-
-wm 32 0x020e0758 0x00000000
-wm 32 0x020e0774 0x00020000
-wm 32 0x020e078c 0x00000030
-wm 32 0x020e0798 0x000C0000
-
-wm 32 0x021b081c 0x33333333
-wm 32 0x021b0820 0x33333333
-wm 32 0x021b0824 0x33333333
-wm 32 0x021b0828 0x33333333
-
-wm 32 0x021b481c 0x33333333
-wm 32 0x021b4820 0x33333333
-wm 32 0x021b4824 0x33333333
-wm 32 0x021b4828 0x33333333
-
-wm 32 0x021b0018 0x00081740
-
-wm 32 0x021b001c 0x00008000
-wm 32 0x021b000c 0x555A7975
-wm 32 0x021b0010 0xFF538E64
-wm 32 0x021b0014 0x01FF00DB
-wm 32 0x021b002c 0x000026D2
-
-wm 32 0x021b0030 0x005B0E21
-wm 32 0x021b0008 0x09444040
-wm 32 0x021b0004 0x00025576
-wm 32 0x021b0040 0x00000027
-wm 32 0x021b0000 0xC31A0000
-
-wm 32 0x021b001c 0x04088032
-wm 32 0x021b001c 0x0408803A
-wm 32 0x021b001c 0x00008033
-wm 32 0x021b001c 0x0000803B
-wm 32 0x021b001c 0x00428031
-wm 32 0x021b001c 0x00428039
-wm 32 0x021b001c 0x09408030
-wm 32 0x021b001c 0x09408038
-
-wm 32 0x021b001c 0x04008040
-wm 32 0x021b001c 0x04008048
-wm 32 0x021b0800 0xA1380003
-wm 32 0x021b4800 0xA1380003
-wm 32 0x021b0020 0x00005800
-wm 32 0x021b0818 0x00022227
-wm 32 0x021b4818 0x00022227
-
-wm 32 0x021b083c 0x434B0350
-wm 32 0x021b0840 0x034C0359
-wm 32 0x021b483c 0x434B0350
-wm 32 0x021b4840 0x03650348
-wm 32 0x021b0848 0x4436383B
-wm 32 0x021b4848 0x39393341
-wm 32 0x021b0850 0x35373933
-wm 32 0x021b4850 0x48254A36
-
-wm 32 0x021b080c 0x001F001F
-wm 32 0x021b0810 0x001F001F
-
-wm 32 0x021b480c 0x00440044
-wm 32 0x021b4810 0x00440044
-
-wm 32 0x021b08b8 0x00000800
-wm 32 0x021b48b8 0x00000800
-
-wm 32 0x021b001c 0x00000000
-wm 32 0x021b0404 0x00011006
-
-/* enable AXI cache for VDOA/VPU/IPU */
-wm 32 0x020e0010 0xf00000ff
-
-/* set IPU AXI-id0 Qos=0xf(bypass) AXI-id1 Qos=0x7 */
-wm 32 0x020e0018 0x007f007f
-wm 32 0x020e001c 0x007f007f
diff --git a/arch/arm/boards/freescale-mx6-arm2/lowlevel.c b/arch/arm/boards/freescale-mx6-arm2/lowlevel.c
deleted file mode 100644
index f833893..0000000
--- a/arch/arm/boards/freescale-mx6-arm2/lowlevel.c
+++ /dev/null
@@ -1,11 +0,0 @@
-#include <common.h>
-#include <linux/sizes.h>
-#include <asm/barebox-arm-head.h>
-#include <asm/barebox-arm.h>
-#include <mach/generic.h>
-
-void __naked barebox_arm_reset_vector(void)
-{
-	imx6_cpu_lowlevel_init();
-	barebox_arm_entry(0x10000000, SZ_2G, NULL);
-}
diff --git a/arch/arm/configs/freescale-mx6-arm2_defconfig b/arch/arm/configs/freescale-mx6-arm2_defconfig
deleted file mode 100644
index f4119f0..0000000
--- a/arch/arm/configs/freescale-mx6-arm2_defconfig
+++ /dev/null
@@ -1,68 +0,0 @@
-CONFIG_ARCH_IMX=y
-CONFIG_MACH_MX6Q_ARM2=y
-CONFIG_IMX_IIM=y
-CONFIG_IMX_IIM_FUSE_BLOW=y
-CONFIG_AEABI=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_ARM_UNWIND=y
-CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x8000000
-CONFIG_MALLOC_TLSF=y
-CONFIG_KALLSYMS=y
-CONFIG_LONGHELP=y
-CONFIG_GLOB=y
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/freescale-mx6-arm2/env/"
-CONFIG_DEBUG_INFO=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIME=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_UNCOMPRESS=y
-CONFIG_NET=y
-CONFIG_CMD_DHCP=y
-CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_DRIVER_NET_FEC_IMX=y
-CONFIG_NET_USB=y
-CONFIG_NET_USB_ASIX=y
-CONFIG_NET_USB_SMSC95XX=y
-# CONFIG_SPI is not set
-CONFIG_USB_HOST=y
-CONFIG_USB_EHCI=y
-CONFIG_USB_STORAGE=y
-CONFIG_MCI=y
-CONFIG_MCI_STARTUP=y
-CONFIG_MCI_IMX_ESDHC=y
-CONFIG_FS_TFTP=y
-CONFIG_FS_FAT=y
-CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
-CONFIG_ZLIB=y
-CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 477207e..06c2f94 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -26,7 +26,6 @@ config ARCH_TEXT_BASE
 	default 0x93d00000 if MACH_TX25
 	default 0x7ff00000 if MACH_TQMA53
 	default 0x97f00000 if MACH_TX51
-	default 0x4fc00000 if MACH_MX6Q_ARM2
 	default 0x97f00000 if MACH_CCMX51
 	default 0x4fc00000 if MACH_SABRELITE
 	default 0x8fe00000 if MACH_TX53
@@ -527,12 +526,6 @@ config MACH_GUF_VINCELL
 	select ARCH_IMX53
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
 
-comment "i.MX6 Boards"
-
-config MACH_MX6Q_ARM2
-	bool "Freescale i.MX6q Armadillo2"
-	select ARCH_IMX6
-
 endchoice
 
 # ----------------------------------------------------------
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
