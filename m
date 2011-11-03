Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 82-148-208-25.fiber.unet.nl ([82.148.208.25]
	helo=berilia.team-embedded.nl)
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RLxcN-0001IH-DM
	for barebox@lists.infradead.org; Thu, 03 Nov 2011 13:46:10 +0000
Received: from keppler ([192.168.0.13] helo=localhost.localdomain)
	by berilia.team-embedded.nl with esmtp (Exim 4.69)
	(envelope-from <mark.vels@team-embedded.nl>) id 1RLxXC-0002IM-Lc
	for barebox@lists.infradead.org; Thu, 03 Nov 2011 14:40:46 +0100
From: Mark Vels <mark.vels@team-embedded.nl>
Date: Thu,  3 Nov 2011 14:46:05 +0100
Message-Id: <1320327965-23067-1-git-send-email-mark.vels@team-embedded.nl>
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
Subject: [PATCH] arm:imx27: add basic support for KaRo TX27 module on
	StarterKit 5
To: barebox@lists.infradead.org

This patch adds basic support for the TX27 CPU module.
It has been tested so far using OpenOCD to write it into memory and execute.
Environment loading and saving from NAND seems to work correctly, further
testing will be focused on booting from NAND.

Since I don't have any datasheets of the IIM in the i.MX27 I would appreciate
some help with getting the serial number and the ethernet MAC from there. Can
anyone shine some light here?

Signed-off-by: Mark Vels <mark.vels@team-embedded.nl>
---
 arch/arm/Makefile                           |    1 +
 arch/arm/boards/karo-tx27/Makefile          |   24 ++++
 arch/arm/boards/karo-tx27/board.c           |  154 +++++++++++++++++++++++++++
 arch/arm/boards/karo-tx27/config.h          |   31 ++++++
 arch/arm/boards/karo-tx27/env/bin/hush_hack |    1 +
 arch/arm/boards/karo-tx27/env/bin/init      |   20 ++++
 arch/arm/boards/karo-tx27/env/config        |   53 +++++++++
 arch/arm/boards/karo-tx27/karo-tx27stk5.dox |   62 +++++++++++
 arch/arm/boards/karo-tx27/lowlevel.c        |  132 +++++++++++++++++++++++
 arch/arm/configs/tx27stk5_defconfig         |   37 +++++++
 arch/arm/mach-imx/Kconfig                   |   10 ++-
 arch/arm/mach-imx/include/mach/imx27-regs.h |    1 +
 12 files changed, 525 insertions(+), 1 deletions(-)
 create mode 100644 arch/arm/boards/karo-tx27/Makefile
 create mode 100644 arch/arm/boards/karo-tx27/board.c
 create mode 100644 arch/arm/boards/karo-tx27/config.h
 create mode 100644 arch/arm/boards/karo-tx27/env/bin/hush_hack
 create mode 100644 arch/arm/boards/karo-tx27/env/bin/init
 create mode 100644 arch/arm/boards/karo-tx27/env/config
 create mode 100644 arch/arm/boards/karo-tx27/karo-tx27stk5.dox
 create mode 100644 arch/arm/boards/karo-tx27/lowlevel.c
 create mode 100644 arch/arm/configs/tx27stk5_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 0c42f3d..aca78c0 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -110,6 +110,7 @@ board-$(CONFIG_MACH_USB_A9263)			:= usb-a926x
 board-$(CONFIG_MACH_USB_A9G20)			:= usb-a926x
 board-$(CONFIG_MACH_VERSATILEPB)		:= versatile
 board-$(CONFIG_MACH_TX25)			:= karo-tx25
+board-$(CONFIG_MACH_TX27)			:= karo-tx27
 
 machdirs := $(patsubst %,arch/arm/mach-%/,$(machine-y))
 
diff --git a/arch/arm/boards/karo-tx27/Makefile b/arch/arm/boards/karo-tx27/Makefile
new file mode 100644
index 0000000..8fffb23
--- /dev/null
+++ b/arch/arm/boards/karo-tx27/Makefile
@@ -0,0 +1,24 @@
+#
+# (C) Copyright 2011 Team Embedded, Mark Vels <mark.vels@team-embedded.nl>
+#
+# See file CREDITS for list of people who contributed to this
+# project.
+#
+# This program is free software; you can redistribute it and/or
+# modify it under the terms of the GNU General Public License as
+# published by the Free Software Foundation; either version 2 of
+# the License, or (at your option) any later version.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License
+# along with this program; if not, write to the Free Software
+# Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+# MA 02111-1307 USA
+#
+
+obj-y += lowlevel.o
+obj-y += board.o
diff --git a/arch/arm/boards/karo-tx27/board.c b/arch/arm/boards/karo-tx27/board.c
new file mode 100644
index 0000000..e1bf512
--- /dev/null
+++ b/arch/arm/boards/karo-tx27/board.c
@@ -0,0 +1,154 @@
+/*
+ * (C) 2011 Team Embedded, Mark Vels <mark.vels@team-embedded.nl>
+ *
+ * Based on arch/arm/boards/karo-tx25/board.c
+ * (C) 2011 Pengutronix, Sascha Hauer <s.hauer@pengutronix.de>
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
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <environment.h>
+#include <mach/imx-regs.h>
+#include <asm/armlinux.h>
+#include <mach/gpio.h>
+#include <asm/io.h>
+#include <partition.h>
+#include <generated/mach-types.h>
+#include <mach/imx-nand.h>
+#include <net.h>
+#include <fec.h>
+#include <nand.h>
+#include <mach/iomux-mx27.h>
+#include <mach/generic.h>
+#include <mach/iim.h>
+#include <linux/err.h>
+#include <mach/devices-imx27.h>
+#include <asm/mmu.h>
+
+/**
+ * @file
+*/
+
+static struct fec_platform_data fec_info = {
+	.xcv_type	= MII100,
+	.phy_addr	= 0x1f,
+};
+
+/* This SystemOnModule is equiped with a Samsung K9F1G08R0B */
+struct imx_nand_platform_data nand_info = {
+	.width	= 1,	/* 8-bits I/O */
+	.hw_ecc	= 1,
+};
+
+/**
+ * \todo KaRo also delivers modules with 128MB RAM. We need to create a
+ * board-specific Kconfig option to select the propriate amount of RAM.
+*/
+#define SDRAM0	(64)
+
+static int tx27_mem_init(void)
+{
+	arm_add_mem_device("ram0", 0xa0000000, SDRAM0 * 1024 * 1024);
+
+	return 0;
+}
+mem_initcall(tx27_mem_init);
+
+static int tx27_devices_init(void)
+{
+	int i;
+	unsigned int mode[] = {
+		PD0_AIN_FEC_TXD0,
+		PD1_AIN_FEC_TXD1,
+		PD2_AIN_FEC_TXD2,
+		PD3_AIN_FEC_TXD3,
+		PD4_AOUT_FEC_RX_ER,
+		PD5_AOUT_FEC_RXD1,
+		PD6_AOUT_FEC_RXD2,
+		PD7_AOUT_FEC_RXD3,
+		PD8_AF_FEC_MDIO,
+		PD9_AIN_FEC_MDC | GPIO_PUEN,
+		PD10_AOUT_FEC_CRS,
+		PD11_AOUT_FEC_TX_CLK,
+		PD12_AOUT_FEC_RXD0,
+		PD13_AOUT_FEC_RX_DV,
+		PD14_AOUT_FEC_RX_CLK,
+		PD15_AOUT_FEC_COL,
+		PD16_AIN_FEC_TX_ER,
+		PF23_AIN_FEC_TX_EN,
+		PE12_PF_UART1_TXD,
+		PE13_PF_UART1_RXD,
+		PE14_PF_UART1_CTS,
+		PE15_PF_UART1_RTS,
+	};
+
+	/* initizalize gpios */
+	for (i = 0; i < ARRAY_SIZE(mode); i++)
+		imx_gpio_mode(mode[i]);
+
+	/**
+	 * \todo Find out how to get the ethaddr out of the iim
+	 * and implement a imx27_iim_register_fec_ethaddr()
+	 * and call it from here.
+	*/
+	imx27_add_fec(&fec_info);
+
+	imx27_add_nand(&nand_info);
+
+	devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED,
+								"self_raw");
+	dev_add_bb_dev("self_raw", "self0");
+
+	devfs_add_partition("nand0", 0x40000, 0x80000, PARTITION_FIXED,
+								"env_raw");
+	dev_add_bb_dev("env_raw", "env0");
+
+
+	armlinux_set_bootparams((void *)0xa0000100);
+	armlinux_set_architecture(MACH_TYPE_TX27);
+
+	/**
+	 * \todo Find out how to get the serial# out of the IIM and implement an
+	 *  imx_uid() for the i.MX27. Use it to call armlinux_set_serial() here.
+	*/
+
+	return 0;
+}
+
+device_initcall(tx27_devices_init);
+
+static int tx27_console_init(void)
+{
+	imx27_add_uart0();
+	return 0;
+}
+
+console_initcall(tx27_console_init);
+
+#ifdef CONFIG_NAND_IMX_BOOT
+void __bare_init nand_boot(void)
+{
+	imx_nand_load_image((void *)TEXT_BASE, 256 * 1024);
+}
+#endif
+
diff --git a/arch/arm/boards/karo-tx27/config.h b/arch/arm/boards/karo-tx27/config.h
new file mode 100644
index 0000000..e3eb68b
--- /dev/null
+++ b/arch/arm/boards/karo-tx27/config.h
@@ -0,0 +1,31 @@
+/*
+ * (C) Copyright 2011 Sascha Hauer <s.hauer@pengutronix.de>
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
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+/*
+ * Definitions related to passing arguments to kernel.
+ */
+
+#define CONFIG_MX27_HCLK_FREQ	24000000
+
+#endif
+
+/* nothing to do here yet */
diff --git a/arch/arm/boards/karo-tx27/env/bin/hush_hack b/arch/arm/boards/karo-tx27/env/bin/hush_hack
new file mode 100644
index 0000000..5fffa92
--- /dev/null
+++ b/arch/arm/boards/karo-tx27/env/bin/hush_hack
@@ -0,0 +1 @@
+nand -a /dev/nand0.*
diff --git a/arch/arm/boards/karo-tx27/env/bin/init b/arch/arm/boards/karo-tx27/env/bin/init
new file mode 100644
index 0000000..3f7118f
--- /dev/null
+++ b/arch/arm/boards/karo-tx27/env/bin/init
@@ -0,0 +1,20 @@
+#!/bin/sh
+#
+# Barebox init script for the Karo TX27 ModuleOnChip on a Starterkit 5 baseboard.
+#
+
+. /env/config
+
+if [ -e /dev/nand0 ]; then
+	addpart /dev/nand0 $nand_parts
+
+	# Uh, oh, hush first expands wildcards and then starts executing
+	# commands. What a bug!
+	source /env/bin/hush_hack
+fi
+
+if [ -e /dev/fb0 -a -e /env/splash.bmp ]; then
+	bmp /env/splash.bmp
+	fb0.enable=1
+fi
+
diff --git a/arch/arm/boards/karo-tx27/env/config b/arch/arm/boards/karo-tx27/env/config
new file mode 100644
index 0000000..f3f3e49
--- /dev/null
+++ b/arch/arm/boards/karo-tx27/env/config
@@ -0,0 +1,53 @@
+
+machine=tx27
+baseboard=tx27stk5
+user=
+
+# use 'dhcp' to do dhcp in barebox and in kernel
+# use 'none' if you want to skip kernel ip autoconfiguration
+ip=dhcp
+
+# or set your networking parameters here
+#eth0.ipaddr=a.b.c.d
+#eth0.ethaddr=de:ad:be:ef:00:00
+#eth0.netmask=a.b.c.d
+#eth0.serverip=a.b.c.d
+#eth0.gateway=a.b.c.d
+
+# can be either 'nfs' or 'tftp'
+kernel_loc=tftp
+# can be either 'net' or 'initrd'
+rootfs_loc=net
+
+# can be either 'jffs2' or 'ubifs'
+rootfs_type=ubifs
+rootfsimage=root-$machine.$rootfs_type
+
+# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
+#kernelimage_type=zimage
+#kernelimage=zImage-$machine
+kernelimage_type=uimage
+kernelimage=uImage-$machine
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
+bootargs="console=ttymxc0,115200 tx27_base=$baseboard"
+
+nand_parts="512k(barebox)ro,512k(bareboxenv),128k(fdt),5M(kernel),-(root)"
+nand_device=mxc_nand
+rootfs_mtdblock_nand=5
+
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
+
diff --git a/arch/arm/boards/karo-tx27/karo-tx27stk5.dox b/arch/arm/boards/karo-tx27/karo-tx27stk5.dox
new file mode 100644
index 0000000..3faac3f
--- /dev/null
+++ b/arch/arm/boards/karo-tx27/karo-tx27stk5.dox
@@ -0,0 +1,62 @@
+/**
+@page tx27 KARO's TX27 CPU module
+
+@section tx27_cpu_card The TX27 CPU module
+
+The TX27 module is manufactured by Ka-Ro (http://www.karo-electronics.de/) in Germany.
+
+This module is based on an i.MX27 CPU. The SystemOnModule is equiped with:
+
+- Freescale i.MX27 SoC @ 400MHz
+- 64 MiB mobile DDR_SDRAM (128 MiB on request)
+- 128 MiB NAND K9F1G08R0B (1.8 V)
+- DS1339 RTC
+- LAN8700 Phy
+- Form factor: 26mm SO-DIMM
+
+For more information about the TX27 module, please check http://www.karo-electronics.de/tx27.html.
+
+
+@section tx27_baseboards Supported baseboards
+
+The only supported baseboard is the KARO's Starterkit 5:
+- DIMM200 TX socket
+- Two SD-card sockets
+- USB 2.0 OTG and USB 2.0 Host connector
+- D-SUB 15 VGA connector
+- 40pin LCD flat cable header
+- 3.5mm headphone connector
+- JTAG interface
+- UCB1400 audio codec & touchscreen controller
+- RS232 on 10pin flat cable and SUB-D header
+- All pins of the TX socket are connected to daughter board slot for easy application design-in
+- 10/100 Mbit/s Ethernet
+- 5VDC Power Supply by USB-OTG or screw header.
+- size 100mm x 160mm
+
+
+@section tx27_stk5_howto How to get barebox for 'KARO's Starterkit 5'
+
+Using the default configuration:
+
+@verbatim
+make ARCH=arm tx27stk5_defconfig
+@endverbatim
+
+Build the binary image:
+
+@verbatim
+make ARCH=arm CROSS_COMPILE=armv5compiler
+@endverbatim
+
+@note replace the armv5compiler with your ARM v5 cross compiler.
+
+@section tx27_mlayout Memory layout when barebox is running:
+
+@li 0xa0000000 start of SDRAM
+@li 0xa0000100 start of kernel's boot parameters
+@li below malloc area: stack area
+@li below barebox: malloc area
+@li 0xa7f00000 start of @b barebox
+
+*/
diff --git a/arch/arm/boards/karo-tx27/lowlevel.c b/arch/arm/boards/karo-tx27/lowlevel.c
new file mode 100644
index 0000000..a4c5f52
--- /dev/null
+++ b/arch/arm/boards/karo-tx27/lowlevel.c
@@ -0,0 +1,132 @@
+/*
+ * (c) 2011 Team Embedded, Mark Vels <mark.vels@team-embedded.nl>
+ *
+ * Based on arch/arm/boards/karo-tx25/lowlevel.c
+ * (c) 2011 Pengutronix, Sascha Hauer <s.hauer@pengutronix.de>
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
+#include <common.h>
+#include <init.h>
+#include <gpio.h>
+#include <mach/imx-regs.h>
+#include <mach/esdctl.h>
+#include <asm/io.h>
+#include <mach/imx-nand.h>
+#include <asm/barebox-arm.h>
+#include <asm/system.h>
+#include <asm-generic/memory_layout.h>
+#include <mach/iomux-mx27.h>
+
+#define DSCR_A(x)	(IMX_SYSTEM_CTL_BASE + 0x1C + ((x) << 2))
+
+#ifdef CONFIG_NAND_IMX_BOOT
+static void __bare_init __naked insdram(void)
+{
+	uint32_t r;
+
+	/* setup a stack to be able to call imx_nand_load_image() */
+	r = STACK_BASE + STACK_SIZE - 12;
+	__asm__ __volatile__("mov sp, %0" : : "r"(r));
+
+	imx_nand_load_image((void *)TEXT_BASE, 256 * 1024);
+
+	board_init_lowlevel_return();
+}
+#endif
+
+void __bare_init __naked board_init_lowlevel(void)
+{
+	uint32_t r;
+#ifdef CONFIG_NAND_IMX_BOOT
+	unsigned int *trg, *src;
+	int i;
+#endif
+	/* This setup puts RAM at 0xA0000000 */
+
+	/* init_aipi */
+	writel(0x20040304, IMX_AIPI1_BASE + 0x00); /* AIPI1_PSR0 */
+	writel(0x00000000, IMX_AIPI2_BASE + 0x00); /* AIPI2_PSR0 */
+	writel(0xdffbfcfb, IMX_AIPI1_BASE + 0x04); /* AIPI1_PSR1 */
+	writel(0xffffffff, IMX_AIPI2_BASE + 0x04); /* AIPI2_PSR1 */
+
+	/* init_max */
+	writel(0x00302145, IMX_MAX_BASE + 0x000); /* PORT0.MPR */
+	writel(0x00302145, IMX_MAX_BASE + 0x004); /* PORT0.AMPR */
+	writel(0x00302145, IMX_MAX_BASE + 0x100); /* PORT1.MPR */
+	writel(0x00302145, IMX_MAX_BASE + 0x104); /* PORT1.AMPR */
+	writel(0x00302145, IMX_MAX_BASE + 0x200); /* PORT2.MPR */
+	writel(0x00302145, IMX_MAX_BASE + 0x204); /* PORT2.AMPR */
+
+	/* init_drive_strength */
+	writel(0x55555555, DSCR_A(3));
+	writel(0x55555555, DSCR_A(5));
+	writel(0x55555555, DSCR_A(6));
+	writel(0x00005005, DSCR_A(7));
+	writel(0x15555555, DSCR_A(8));
+
+	/* =============================================
+	*  Sync mode (AHB Clk = 133MHz ; BCLK = 44.3MHz)
+	* =============================================
+	*/
+	writel(0x23524E80, IMX_WEIM_BASE + 0x00); /* CS0U */
+	writel(0x10000D03, IMX_WEIM_BASE + 0x04); /* CS0L */
+	writel(0x00720900, IMX_WEIM_BASE + 0x08); /* CS0A */
+
+	/* Skip SDRAM initialization if we run from SDRAM */
+	r = get_pc();
+	if (r > 0xa0000000 && r < 0xe0000000)
+		board_init_lowlevel_return();
+
+	/* init_sdram_speed */
+	writel(0x00000024, ESDMISC);
+	writel(0x00395729, ESDCFG0);
+	writel(0x92120000, ESDCTL0);
+	writel(0x0, 0xA0000400);
+
+	writel(0xA2120000, ESDCTL0);
+	writel(0x00, 0xA0000000); /* ?? */
+	writel(0x00, 0xA0000000); /* ?? */
+
+	writel(0xB2120000, ESDCTL0);
+	readl(0xA0000000);
+	readl(0xA0000033);
+
+	writel(0x82126485, ESDCTL0);
+
+#ifdef CONFIG_NAND_IMX_BOOT
+	/* skip NAND boot if not running from NFC space */
+	r = get_pc();
+	if (r < IMX_NFC_BASE || r > IMX_NFC_BASE + 0x800)
+		board_init_lowlevel_return();
+
+	src = (unsigned int *)IMX_NFC_BASE;
+	trg = (unsigned int *)TEXT_BASE;
+
+	/* Move ourselves out of NFC SRAM */
+	for (i = 0; i < 0x800 / sizeof(int); i++)
+		*trg++ = *src++;
+
+	/* Jump to SDRAM */
+	r = (unsigned int)&insdram;
+	__asm__ __volatile__("mov pc, %0" : : "r"(r));
+#else
+	board_init_lowlevel_return();
+#endif
+}
diff --git a/arch/arm/configs/tx27stk5_defconfig b/arch/arm/configs/tx27stk5_defconfig
new file mode 100644
index 0000000..2a97ddd
--- /dev/null
+++ b/arch/arm/configs/tx27stk5_defconfig
@@ -0,0 +1,37 @@
+CONFIG_ARCH_IMX=y
+CONFIG_ARCH_IMX27=y
+CONFIG_MACH_TX27=y
+CONFIG_IMX_CLKO=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_TEXT_BASE=0xa7f00000
+CONFIG_LONGHELP=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/karo-tx27/env"
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
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
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
+CONFIG_DRIVER_SPI_MC13783=y
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 8d5bd74..da499c4 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -22,6 +22,7 @@ config ARCH_TEXT_BASE
 	default 0x7ff00000 if MACH_MX53_LOCO
 	default 0x87f00000 if MACH_GUF_CUPID
 	default 0x93d00000 if MACH_TX25
+	default 0xa7f00000 if MACH_TX27
 
 config BOARDINFO
 	default "Eukrea CPUIMX25" if MACH_EUKREA_CPUIMX25
@@ -42,6 +43,7 @@ config BOARDINFO
 	default "Freescale i.MX53 LOCO" if MACH_FREESCALE_MX53_LOCO
 	default "Garz+Fricke Cupid" if MACH_GUF_CUPID
 	default "Ka-Ro tx25" if MACH_TX25
+	default "Ka-Ro tx27 ARM9 i.MX27 on Starter-Kit V" if MACH_TX27
 
 choice
 	prompt "Select boot mode"
@@ -294,6 +296,12 @@ config MACH_NESO
 	  Say Y here if you are using the Garz+Fricke Neso board equipped
 	  with a Freescale i.MX27 Processor
 
+config MACH_TX27
+	bool "Ka-Ro TX27"
+	select MACH_HAS_LOWLEVEL_INIT
+	help
+	  Say Y here if you are using the Ka-Ro tx27 board on a StarterKit 5 baseboard
+
 endchoice
 
 endif
@@ -511,7 +519,7 @@ config IMX_IIM_FUSE_BLOW
 	  fuses blowing.
 
 	  Warning: blown fuses can not be unblown. Using this option may damage
-	  your CPU, or make it unbootalbe. Use with care.
+	  your CPU, or make it unbootable. Use with care.
 
 	  Before being actually able to blow the fuses, you need to explicitely
 	  enable it:
diff --git a/arch/arm/mach-imx/include/mach/imx27-regs.h b/arch/arm/mach-imx/include/mach/imx27-regs.h
index 6754c5a..e2f9514 100644
--- a/arch/arm/mach-imx/include/mach/imx27-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx27-regs.h
@@ -33,6 +33,7 @@
 #define IMX_IIM_BASE               (0x28000 + IMX_IO_BASE)
 #define IMX_OTG_BASE               (0x24000 + IMX_IO_BASE)
 #define IMX_FEC_BASE               (0x2b000 + IMX_IO_BASE)
+#define IMX_MAX_BASE               (0x3F000 + IMX_IO_BASE)
 
 #define IMX_NFC_BASE               (0xd8000000)
 #define IMX_ESD_BASE               (0xd8001000)
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
