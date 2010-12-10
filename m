Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pw0-f49.google.com ([209.85.160.49])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PQvlL-0001W7-G1
	for barebox@lists.infradead.org; Fri, 10 Dec 2010 05:43:28 +0000
Received: by pwj8 with SMTP id 8so800250pwj.36
	for <barebox@lists.infradead.org>; Thu, 09 Dec 2010 21:43:21 -0800 (PST)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Fri, 10 Dec 2010 16:42:42 +1100
Message-Id: <1291959762-14350-1-git-send-email-marc@cpdesign.com.au>
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
Subject: [PATCH] arm: Introduce VPR200 board
To: barebox@lists.infradead.org

Starting point for the vpr200 board.
Very similar core hardware to mx35 3stack.

Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
---
 arch/arm/Makefile                            |    1 +
 arch/arm/boards/vpr200/Makefile              |    4 +
 arch/arm/boards/vpr200/config.h              |   28 +
 arch/arm/boards/vpr200/env/bin/_update       |   39 ++
 arch/arm/boards/vpr200/env/bin/boot          |   67 ++
 arch/arm/boards/vpr200/env/bin/hush_hack     |    1 +
 arch/arm/boards/vpr200/env/bin/init          |   38 +
 arch/arm/boards/vpr200/env/bin/update_kernel |   15 +
 arch/arm/boards/vpr200/env/bin/update_rootfs |   20 +
 arch/arm/boards/vpr200/env/config            |   46 ++
 arch/arm/boards/vpr200/flash_header.c        |   46 ++
 arch/arm/boards/vpr200/lowlevel.c            |  255 +++++++
 arch/arm/boards/vpr200/vpr200.c              |  929 ++++++++++++++++++++++++++
 arch/arm/boards/vpr200/vpr200.dox            |   10 +
 arch/arm/configs/vpr200_defconfig            |   60 ++
 arch/arm/mach-imx/Kconfig                    |   13 +
 16 files changed, 1572 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/vpr200/Makefile
 create mode 100644 arch/arm/boards/vpr200/config.h
 create mode 100644 arch/arm/boards/vpr200/env/bin/_update
 create mode 100644 arch/arm/boards/vpr200/env/bin/boot
 create mode 100644 arch/arm/boards/vpr200/env/bin/hush_hack
 create mode 100644 arch/arm/boards/vpr200/env/bin/init
 create mode 100644 arch/arm/boards/vpr200/env/bin/update_kernel
 create mode 100644 arch/arm/boards/vpr200/env/bin/update_rootfs
 create mode 100644 arch/arm/boards/vpr200/env/config
 create mode 100644 arch/arm/boards/vpr200/flash_header.c
 create mode 100644 arch/arm/boards/vpr200/lowlevel.c
 create mode 100644 arch/arm/boards/vpr200/vpr200.c
 create mode 100644 arch/arm/boards/vpr200/vpr200.dox
 create mode 100644 arch/arm/configs/vpr200_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 9729c23..6e6be98 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -91,6 +91,7 @@ board-$(CONFIG_MACH_CHUMBY)			:= chumby_falconwing
 board-$(CONFIG_MACH_FREESCALE_MX51_PDK)		:= freescale-mx51-pdk
 board-$(CONFIG_MACH_GUF_CUPID)			:= guf-cupid
 board-$(CONFIG_MACH_MINI2440)			:= mini2440
+board-$(CONFIG_MACH_VPR200)			:= vpr200
 
 machdirs := $(patsubst %,arch/arm/mach-%/,$(machine-y))
 
diff --git a/arch/arm/boards/vpr200/Makefile b/arch/arm/boards/vpr200/Makefile
new file mode 100644
index 0000000..08bef79
--- /dev/null
+++ b/arch/arm/boards/vpr200/Makefile
@@ -0,0 +1,4 @@
+
+obj-y					+= lowlevel.o
+obj-y					+= vpr200.o
+obj-$(CONFIG_ARCH_IMX_INTERNAL_BOOT)	+= flash_header.o
diff --git a/arch/arm/boards/vpr200/config.h b/arch/arm/boards/vpr200/config.h
new file mode 100644
index 0000000..2f03006
--- /dev/null
+++ b/arch/arm/boards/vpr200/config.h
@@ -0,0 +1,28 @@
+/*
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
+/**
+ * @file
+ * @brief Global defintions for the VPR-R CPU board.
+ */
+
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#define CONFIG_MX35_HCLK_FREQ        24000000
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/vpr200/env/bin/_update b/arch/arm/boards/vpr200/env/bin/_update
new file mode 100644
index 0000000..ddd6b84
--- /dev/null
+++ b/arch/arm/boards/vpr200/env/bin/_update
@@ -0,0 +1,39 @@
+#!/bin/sh
+
+if [ -z "$part" -o -z "$image" ]; then
+	echo "define \$part and \$image"
+	exit 1
+fi
+
+if [ ! -e "$part" ]; then
+	echo "Partition $part does not exist"
+	exit 1
+fi
+
+if [ $# = 1 ]; then
+	image=$1
+fi
+
+if [ x$ip = xdhcp ]; then
+	dhcp
+fi
+
+ping $eth0.serverip
+if [ $? -ne 0 ] ; then
+	echo "Server did not reply! Update aborted."
+	exit 1
+fi
+
+unprotect $part
+
+echo
+echo "erasing partition $part"
+echo
+erase $part
+
+echo
+echo "flashing $image to $part"
+echo
+tftp $image $part
+
+protect $part
diff --git a/arch/arm/boards/vpr200/env/bin/boot b/arch/arm/boards/vpr200/env/bin/boot
new file mode 100644
index 0000000..80135db
--- /dev/null
+++ b/arch/arm/boards/vpr200/env/bin/boot
@@ -0,0 +1,67 @@
+#!/bin/sh
+
+. /env/config
+
+if [ x$1 = xnand ]; then
+	rootfs_loc=nand
+	kernel_loc=nand
+elif [ x$1 = xnor ]; then
+	rootfs_loc=nand
+	kernel_loc=nor
+elif [ x$1 = xnet ]; then
+	rootfs_loc=net
+	kernel_loc=net
+elif [ x$1 = xmmc ]; then
+	rootfs_loc=mmc
+	kernel_loc=mmc
+fi
+
+
+if [ x$ip = xdhcp ]; then
+	bootargs="$bootargs ip=dhcp"
+elif [ x$ip != xno ]; then
+	bootargs="$bootargs ip=$eth0.ipaddr:$eth0.serverip:$eth0.gateway:$eth0.netmask:::"
+fi
+
+
+if [ $rootfs_loc != net ]; then
+	if [ x$rootfs_loc = xnand ]; then
+		rootfs_mtdblock=$rootfs_mtdblock_nand
+	elif [ x$rootfs_loc = xnor ]; then
+		rootfs_mtdblock=$rootfs_mtdblock_nor
+	else
+		rootfs_mtdblock=$rootfs_mmc_part
+	fi
+
+
+	if [ $rootfs_type = ubifs ]; then
+		bootargs="$bootargs ubi.mtd=$rootfs_mtdblock root=ubi0:$rootfs"
+	elif [ $rootfs_loc = mmc ]; then
+		bootargs="$bootargs root=/dev/mmcblk0p$rootfs_mmc_part"
+	else
+		bootargs="$bootargs root=/dev/mtdblock$rootfs_mtdblock"
+	fi
+
+	bootargs="$bootargs rootfstype=$rootfs_type"
+
+else
+	bootargs="$bootargs root=/dev/nfs nfsroot=$eth0.serverip:$nfsroot,v3,tcp"
+fi
+
+
+bootargs="$bootargs mtdparts=physmap-flash.0:$nor_parts;mxc_nand:$nand_parts"
+
+if [ $kernel_loc = net ]; then
+	if [ x$ip = xdhcp ]; then
+		dhcp
+	fi
+	tftp $kernel uImage || exit 1
+	bootm uImage
+elif [ $kernel_loc = nor ]; then
+	bootm /dev/nor0.kernel
+elif [ $kernel_loc = mmc ]; then
+	bootm /dev/disk0.kernel
+else
+	bootm /dev/nand0.kernel.bb
+fi
+
diff --git a/arch/arm/boards/vpr200/env/bin/hush_hack b/arch/arm/boards/vpr200/env/bin/hush_hack
new file mode 100644
index 0000000..5fffa92
--- /dev/null
+++ b/arch/arm/boards/vpr200/env/bin/hush_hack
@@ -0,0 +1 @@
+nand -a /dev/nand0.*
diff --git a/arch/arm/boards/vpr200/env/bin/init b/arch/arm/boards/vpr200/env/bin/init
new file mode 100644
index 0000000..5e6f837
--- /dev/null
+++ b/arch/arm/boards/vpr200/env/bin/init
@@ -0,0 +1,38 @@
+#!/bin/sh
+
+PATH=/env/bin
+export PATH
+
+. /env/config
+if [ -e /dev/nor0 ]; then
+	addpart /dev/nor0 $nor_parts
+fi
+
+if [ -e /dev/nand0 ]; then
+	addpart /dev/nand0 $nand_parts
+
+	# Uh, oh, hush first expands wildcards and then starts executing
+	# commands. What a bug!
+	source /env/bin/hush_hack 
+fi
+
+if [ -e /dev/disk0 ]; then
+	addpart /dev/disk0 $mmc_boot_parts
+fi
+
+if [ -z $eth0.ethaddr ]; then
+	echo "WARN: no MAC address set for eth0."
+fi
+
+echo
+echo -n "Hit any key to stop autoboot: "
+timeout -a $autoboot_timeout
+if [ $? != 0 ]; then
+	echo
+	echo "type update_kernel nand|nor [<imagename>] to update kernel into flash"
+	echo "type update_rootfs nand|nor [<imagename>] to update rootfs into flash"
+	echo
+	exit
+fi
+
+boot
diff --git a/arch/arm/boards/vpr200/env/bin/update_kernel b/arch/arm/boards/vpr200/env/bin/update_kernel
new file mode 100644
index 0000000..63ad11a
--- /dev/null
+++ b/arch/arm/boards/vpr200/env/bin/update_kernel
@@ -0,0 +1,15 @@
+#!/bin/sh
+
+. /env/config
+image=$kernel
+
+if [ x$1 = xnand ]; then
+	part=/dev/nand0.kernel.bb
+elif [ x$1 = xnor ]; then
+	part=/dev/nor0.kernel
+else
+	echo "usage: $0 nor|nand [imagename]"
+	exit 1
+fi
+
+. /env/bin/_update $2
diff --git a/arch/arm/boards/vpr200/env/bin/update_rootfs b/arch/arm/boards/vpr200/env/bin/update_rootfs
new file mode 100644
index 0000000..53dd2ca
--- /dev/null
+++ b/arch/arm/boards/vpr200/env/bin/update_rootfs
@@ -0,0 +1,20 @@
+#!/bin/sh
+
+. /env/config
+
+if [ $rootfs_type = ubifs ]; then
+	image=${rootfs}.ubi
+else
+	image=${rootfs}.$rootfs_type
+fi
+
+if [ x$1 = xnand ]; then
+	part=/dev/nand0.root.bb
+elif [ x$1 = xnor ]; then
+	part=/dev/nor0.root
+else
+	echo "usage: $0 nor|nand [imagename]"
+	exit 1
+fi
+
+. /env/bin/_update $2
diff --git a/arch/arm/boards/vpr200/env/config b/arch/arm/boards/vpr200/env/config
new file mode 100644
index 0000000..300de2d
--- /dev/null
+++ b/arch/arm/boards/vpr200/env/config
@@ -0,0 +1,46 @@
+#!/bin/sh
+
+# use 'dhcp' to do dhcp in barebox and in kernel
+# use 'no' if you don't want to pass the ip from barebox to the kernel
+ip=no
+
+# or set your networking parameters here
+#eth0.ipaddr=a.b.c.d
+#eth0.netmask=a.b.c.d
+#eth0.gateway=a.b.c.d
+#eth0.serverip=a.b.c.d
+
+# can be either 'net', 'nor' or 'nand''
+kernel_loc=nor
+rootfs_loc=nand
+
+# can be either 'jffs2', or 'ubifs' for flash, 'ext3' for mmc
+rootfs_type=ubifs
+
+if [ x$boot_loc = $xmmc ]; then
+	kernel_loc=mmc
+	rootfs_loc=mmc
+	rootfs_type=ext3
+fi
+
+kernel=uImage
+rootfs=vpr200v1-rootfs
+envimage=vpr200-env
+
+autoboot_timeout=1
+
+nfsroot="/srv/tftpboot"
+debugargs="jtag=on nohlt debug"
+bootargs="earlyprintk=ttymxc0,115200 console=ttymxc0,115200"
+
+nor_parts="256k(barebox)ro,512k(bareboxenv),4M(kernel),-(scratch)"
+rootfs_mtdblock_nor=3
+
+nand_parts="120M(rootfs),-(root)"
+rootfs_mtdblock_nand=4
+
+#note: these are fake partitions within the first real partition on 
+#on the card. They are purely for the bootloader.
+mmc_boot_parts="256k(barebox)ro,512k(bareboxenv),4M(kernel)"
+#the second real partition is our boot partition.
+rootfs_mmc_part=2
diff --git a/arch/arm/boards/vpr200/flash_header.c b/arch/arm/boards/vpr200/flash_header.c
new file mode 100644
index 0000000..ef29bc2
--- /dev/null
+++ b/arch/arm/boards/vpr200/flash_header.c
@@ -0,0 +1,46 @@
+#include <common.h>
+#include <mach/imx-flash-header.h>
+#include <mach/imx-regs.h>
+
+extern void exception_vectors(void);
+
+void __naked __flash_header_start go(void)
+{
+	__asm__ __volatile__("b exception_vectors\n");
+}
+
+struct imx_dcd_entry __dcd_entry_section dcd_entry[] = {
+	{ .ptr_type = 4, .addr = 0xB8001010, .val = 0x00000304, },
+	{ .ptr_type = 4, .addr = 0xB8001010, .val = 0x0000030C, },
+	{ .ptr_type = 4, .addr = 0xB8001004, .val = 0x007ffc3f, },
+	{ .ptr_type = 4, .addr = 0xB8001000, .val = 0x92220000, },
+	{ .ptr_type = 4, .addr = 0x80000400, .val = 0x12345678, },
+	{ .ptr_type = 4, .addr = 0xB8001000, .val = 0xA2220000, },
+	{ .ptr_type = 4, .addr = 0x80000000, .val = 0x87654321, },
+	{ .ptr_type = 4, .addr = 0x80000000, .val = 0x87654321, },
+	{ .ptr_type = 4, .addr = 0xB8001000, .val = 0xB2220000, },
+	{ .ptr_type = 1, .addr = 0x80000233, .val = 0xda, },
+	{ .ptr_type = 1, .addr = 0x82000780, .val = 0xda, },
+	{ .ptr_type = 1, .addr = 0x82000400, .val = 0xda, },
+	{ .ptr_type = 4, .addr = 0xB8001000, .val = 0x82226080, },
+	{ .ptr_type = 4, .addr = 0xB8001004, .val = 0x007ffc3f, },
+	{ .ptr_type = 4, .addr = 0xB800100C, .val = 0x007ffc3f, },
+	{ .ptr_type = 4, .addr = 0xB8001010, .val = 0x00000304, },
+	{ .ptr_type = 4, .addr = 0xB8001008, .val = 0x00002000, },
+};
+
+
+struct imx_flash_header __flash_header_section flash_header = {
+	.app_code_jump_vector	= DEST_BASE + ((unsigned int)&exception_vectors - TEXT_BASE),
+	.app_code_barker	= APP_CODE_BARKER,
+	.app_code_csf		= 0,
+	.dcd_ptr_ptr		= FLASH_HEADER_BASE + offsetof(struct imx_flash_header, dcd),
+	.super_root_key		= 0,
+	.dcd			= FLASH_HEADER_BASE + offsetof(struct imx_flash_header, dcd_barker),
+	.app_dest		= DEST_BASE,
+	.dcd_barker		= DCD_BARKER,
+	.dcd_block_len		= sizeof(dcd_entry),
+};
+
+unsigned long __image_len_section barebox_len = 0x40000;
+
diff --git a/arch/arm/boards/vpr200/lowlevel.c b/arch/arm/boards/vpr200/lowlevel.c
new file mode 100644
index 0000000..7e777aa
--- /dev/null
+++ b/arch/arm/boards/vpr200/lowlevel.c
@@ -0,0 +1,255 @@
+/*
+ *
+ * (c) 2007 Pengutronix, Sascha Hauer <s.hauer@pengutronix.de>
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
+#include <mach/imx-regs.h>
+#include <mach/imx-pll.h>
+#include <mach/esdctl.h>
+#include <asm/cache-l2x0.h>
+#include <asm/io.h>
+#include <mach/imx-nand.h>
+#include <asm/barebox-arm.h>
+#include <asm-generic/memory_layout.h>
+#include <asm/system.h>
+
+/* Assuming 24MHz input clock */
+#define MPCTL_PARAM_399     (IMX_PLL_PD(0) | IMX_PLL_MFD(15) | IMX_PLL_MFI(8) | IMX_PLL_MFN(5))
+#define MPCTL_PARAM_532     ((1 << 31) | IMX_PLL_PD(0) | IMX_PLL_MFD(11) | IMX_PLL_MFI(11) | IMX_PLL_MFN(1))
+#define PPCTL_PARAM_300     (IMX_PLL_PD(0) | IMX_PLL_MFD(3) | IMX_PLL_MFI(6) | IMX_PLL_MFN(1))
+
+
+#ifdef CONFIG_NAND_IMX_BOOT
+static void __bare_init __naked insdram(void)
+{
+	uint32_t r;
+
+	/* Speed up NAND controller by adjusting the NFC divider */
+	r = readl(IMX_CCM_BASE + CCM_PDR4);
+	r &= ~(0xf << 28);
+	r |= 0x1 << 28;
+	writel(r, IMX_CCM_BASE + CCM_PDR4);
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
+	uint32_t r, s;
+	unsigned long ccm_base = IMX_CCM_BASE;
+#ifdef CONFIG_NAND_IMX_BOOT
+	unsigned int *trg, *src;
+	int i;
+#endif
+
+	r = get_cr();
+	r |= CR_Z; /* Flow prediction (Z) */
+	r |= CR_U; /* unaligned accesses  */
+	r |= CR_FI; /* Low Int Latency     */
+
+	__asm__ __volatile__("mrc p15, 0, %0, c1, c0, 1":"=r"(s));
+	s |= 0x7;
+	__asm__ __volatile__("mcr p15, 0, %0, c1, c0, 1" : : "r"(s));
+
+	set_cr(r);
+
+	r = 0;
+	__asm__ __volatile__("mcr p15, 0, %0, c15, c2, 4" : : "r"(r));
+
+	/*
+	 * Branch predicition is now enabled.  Flush the BTAC to ensure a valid
+	 * starting point.  Don't flush BTAC while it is disabled to avoid
+	 * ARM1136 erratum 408023.
+	 */
+	__asm__ __volatile__("mcr p15, 0, %0, c7, c5, 6" : : "r"(r));
+
+	/* invalidate I cache and D cache */
+	__asm__ __volatile__("mcr p15, 0, %0, c7, c7, 0" : : "r"(r));
+
+	/* invalidate TLBs */
+	__asm__ __volatile__("mcr p15, 0, %0, c8, c7, 0" : : "r"(r));
+
+	/* Drain the write buffer */
+	__asm__ __volatile__("mcr p15, 0, %0, c7, c10, 4" : : "r"(r));
+
+	/* Also setup the Peripheral Port Remap register inside the core */
+	r = 0x40000015; /* start from AIPS 2GB region */
+	__asm__ __volatile__("mcr p15, 0, %0, c15, c2, 4" : : "r"(r));
+
+	/*
+	 * End of ARM1136 init
+	 */
+
+	writel(0x003F4208, ccm_base + CCM_CCMR);
+
+	/* Set MPLL , arm clock and ahb clock*/
+	writel(MPCTL_PARAM_532, ccm_base + CCM_MPCTL);
+
+	writel(PPCTL_PARAM_300, ccm_base + CCM_PPCTL);
+	writel(0x00001000, ccm_base + CCM_PDR0);
+
+	r = readl(ccm_base + CCM_CGR0);
+	r |= 0x00300000;
+	writel(r, ccm_base + CCM_CGR0);
+
+	r = readl(ccm_base + CCM_CGR1);
+	r |= 0x00000C00;
+	r |= 0x00000003;
+	writel(r, ccm_base + CCM_CGR1);
+
+	r = readl(IMX_L2CC_BASE + L2X0_AUX_CTRL);
+	r |= 0x1000;
+	writel(r, IMX_L2CC_BASE + L2X0_AUX_CTRL);
+
+	/* Skip SDRAM initialization if we run from RAM */
+	r = get_pc();
+	if (r > 0x80000000 && r < 0x90000000)
+		board_init_lowlevel_return();
+
+	/**
+	 * RAM init
+	 */
+	/* VPR200v1 has DDR2, DDR2_EN 0x200, DDR_EN 0x100, MDDR_EN 0x004 */
+	writel(0x00000304, ESDMISC); /*  */
+
+	/* set timing paramters (basically max delays for all)*/
+	writel(0x007ffc2f, ESDCFG0);
+	/* select Precharge-All mode */
+	writel(0x92220000, ESDCTL0);
+	/* Precharge-All */
+	writel(0x12345678, IMX_SDRAM_CS0 + 0x400);
+
+	/* select Load-Mode-Register mode */
+	writel(0xB8001000, ESDCTL0);
+	/* Load reg EMR2 */
+	writeb(0xda, 0x84000000);
+	/* Load reg EMR3 */
+	writeb(0xda, 0x86000000);
+	/* Load reg EMR1 -- enable DLL */
+	writeb(0xda, 0x82000400);
+	/* Load reg MR -- reset DLL */
+	writeb(0xda, 0x80000333);
+
+	/* select Precharge-All mode */
+	writel(0x92220000, ESDCTL0);
+	/* Precharge-All */
+	writel(0x12345678, IMX_SDRAM_CS0 + 0x400);
+
+	/* select Manual-Refresh mode */
+	writel(0xA2220000, ESDCTL0);
+	/* Manual-Refresh 2 times */
+	writel(0x87654321, IMX_SDRAM_CS0);
+	writel(0x87654321, IMX_SDRAM_CS0);
+
+	/* select Load-Mode-Register mode */
+	writel(0xB2220000, ESDCTL0);
+	/* Load reg MR -- CL3, BL8, end DLL reset */
+	writeb(0xda, 0x80000233);
+	/* Load reg EMR1 -- OCD default */
+	writeb(0xda, 0x82000780);
+	/* Load reg EMR1 -- OCD exit */
+	writeb(0xda, 0x82000400);
+
+	/* select normal-operation mode
+	 * DSIZ32-bit, BL8, COL10-bit, ROW13-bit
+	 * disable PWT & PRCT
+	 * disable Auto-Refresh */
+	writel(0x82220080, ESDCTL0);
+	/* enable Auto-Refresh */
+	writel(0x82228080, ESDCTL0);
+
+	/* BANK 2 */
+
+	/* set timing paramters (basically max delays for all)*/
+	writel(0x007ffc2f, ESDCFG1);
+	/* select Precharge-All mode */
+	writel(0x92220000, ESDCTL1);
+	/* Precharge-All */
+	writel(0x12345678, IMX_SDRAM_CS1 + 0x400);
+
+	/* select Load-Mode-Register mode */
+	writel(0xB8001000, ESDCTL1);
+	/* Load reg EMR2 */
+	writeb(0xda, 0x94000000);
+	/* Load reg EMR3 */
+	writeb(0xda, 0x96000000);
+	/* Load reg EMR1 -- enable DLL */
+	writeb(0xda, 0x92000400);
+	/* Load reg MR -- reset DLL */
+	writeb(0xda, 0x90000333);
+
+	/* select Precharge-All mode */
+	writel(0x92220000, ESDCTL1);
+	/* Precharge-All */
+	writel(0x12345678, IMX_SDRAM_CS1 + 0x400);
+
+	/* select Manual-Refresh mode */
+	writel(0xA2220000, ESDCTL1);
+	/* Manual-Refresh 2 times */
+	writel(0x87654321, IMX_SDRAM_CS1);
+	writel(0x87654321, IMX_SDRAM_CS1);
+
+	/* select Load-Mode-Register mode */
+	writel(0xB2220000, ESDCTL1);
+	/* Load reg MR -- CL3, BL8, end DLL reset */
+	writeb(0xda, 0x90000233);
+	/* Load reg EMR1 -- OCD default */
+	writeb(0xda, 0x92000780);
+	/* Load reg EMR1 -- OCD exit */
+	writeb(0xda, 0x92000400);
+
+	/* select normal-operation mode
+	 * DSIZ32-bit, BL8, COL10-bit, ROW13-bit
+	 * disable PWT & PRCT
+	 * disable Auto-Refresh */
+	writel(0x82220080, ESDCTL1);
+	/* enable Auto-Refresh */
+	writel(0x82228080, ESDCTL1);
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
+
diff --git a/arch/arm/boards/vpr200/vpr200.c b/arch/arm/boards/vpr200/vpr200.c
new file mode 100644
index 0000000..298195d
--- /dev/null
+++ b/arch/arm/boards/vpr200/vpr200.c
@@ -0,0 +1,929 @@
+/*
+ * Copyright (C) 2007 Sascha Hauer, Pengutronix
+ *               2009 Marc Kleine-Budde, Pengutronix
+ *               2010 Marc Reilly, Creative Product Design
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
+ * Derived from:
+ *
+ * * mx35_3stack.c - board file for uboot-v1
+ *   Copyright (C) 2007, Guennadi Liakhovetski <lg@denx.de>
+ *   (C) Copyright 2008-2009 Freescale Semiconductor, Inc.
+ *
+ */
+
+#include <common.h>
+#include <environment.h>
+#include <errno.h>
+#include <fcntl.h>
+#include <fec.h>
+#include <fs.h>
+#include <init.h>
+#include <nand.h>
+#include <net.h>
+#include <partition.h>
+#include <command.h>
+#include <getopt.h>
+
+#include <asm/armlinux.h>
+#include <asm/io.h>
+#include <generated/mach-types.h>
+
+#include <mach/gpio.h>
+#include <mach/imx-nand.h>
+#include <mach/imx-regs.h>
+#include <mach/iomux-mx35.h>
+#include <mach/iomux-v3.h>
+#include <mach/pmic.h>
+#include <mach/imx-ipu-fb.h>
+#include <mach/generic.h>
+#include <mach/devices-imx35.h>
+
+#include <i2c/i2c.h>
+#include <mfd/mc13892.h>
+
+/* ------------------------------------------------------------------------- */
+/* Board revs for the VPR CPU */
+#define VPR_CPU_V1  0x19
+
+/*
+ * IO Defines for the VPR
+ *
+ * The current GPIO API considers the gpios as a contiguous bits across
+ * ports. These defines and macros convert the GPIO1_3 nomenclature to
+ * a numbered GPIO line.
+ */
+
+/* Port numbers start from 1 to be consistent with iMX docs */
+#define GPIO_FROM_PORT(x, y) (((x-1)*32) + y)
+
+#define LCD_PWR_PORT		1
+#define LCD_PWR_BIT		2
+#define LCD_PWR_GPIO		GPIO_FROM_PORT(LCD_PWR_PORT, LCD_PWR_BIT)
+
+#define FEC_ENABLE_PORT		1
+#define FEC_ENABLE_BIT		3
+#define FEC_ENABLE_GPIO		GPIO_FROM_PORT(FEC_ENABLE_PORT, FEC_ENABLE_BIT)
+
+#define FEC_RESET_PORT		3
+#define FEC_RESET_BIT		0
+#define FEC_RESET_GPIO		GPIO_FROM_PORT(FEC_RESET_PORT, FEC_RESET_BIT)
+
+#define DIAG_PORT		3
+#define DIAG_RED_BIT		14
+#define DIAG_GREEN_BIT		15
+#define DIAG_BLUE_BIT		30
+#define DIAG_RED_GPIO		GPIO_FROM_PORT(DIAG_PORT, DIAG_RED_BIT)
+#define DIAG_GREEN_GPIO		GPIO_FROM_PORT(DIAG_PORT, DIAG_GREEN_BIT)
+#define DIAG_BLUE_GPIO		GPIO_FROM_PORT(DIAG_PORT, DIAG_BLUE_BIT)
+
+#define SYS_CFG_PORT		2
+#define SYS_CFG_1_BIT		27
+#define SYS_CFG_2_BIT		28
+#define SYS_CFG_3_BIT		29
+#define SYS_CFG_4_BIT		30
+#define SYS_CFG_5_BIT		31
+#define SYS_CFG_1_GPIO		GPIO_FROM_PORT(SYS_CFG_PORT, SYS_CFG_1_BIT)
+#define SYS_CFG_2_GPIO		GPIO_FROM_PORT(SYS_CFG_PORT, SYS_CFG_2_BIT)
+#define SYS_CFG_3_GPIO		GPIO_FROM_PORT(SYS_CFG_PORT, SYS_CFG_3_BIT)
+#define SYS_CFG_4_GPIO		GPIO_FROM_PORT(SYS_CFG_PORT, SYS_CFG_4_BIT)
+#define SYS_CFG_5_GPIO		GPIO_FROM_PORT(SYS_CFG_PORT, SYS_CFG_5_BIT)
+
+#define BUTTON_PORT		1
+#define BUTTON1_BIT		4
+#define BUTTON2_BIT		5
+#define BUTTON3_BIT		7
+#define BUTTON4_BIT		8
+#define BUTTON5_BIT		9
+#define BUTTON6_BIT		10
+#define BUTTON7_BIT		11
+#define BUTTON8_BIT		12
+#define BUTTON1_GPIO		GPIO_FROM_PORT(BUTTON_PORT, BUTTON1_BIT)
+#define BUTTON2_GPIO		GPIO_FROM_PORT(BUTTON_PORT, BUTTON2_BIT)
+#define BUTTON3_GPIO		GPIO_FROM_PORT(BUTTON_PORT, BUTTON3_BIT)
+#define BUTTON4_GPIO		GPIO_FROM_PORT(BUTTON_PORT, BUTTON4_BIT)
+#define BUTTON5_GPIO		GPIO_FROM_PORT(BUTTON_PORT, BUTTON5_BIT)
+#define BUTTON6_GPIO		GPIO_FROM_PORT(BUTTON_PORT, BUTTON6_BIT)
+#define BUTTON7_GPIO		GPIO_FROM_PORT(BUTTON_PORT, BUTTON7_BIT)
+#define BUTTON8_GPIO		GPIO_FROM_PORT(BUTTON_PORT, BUTTON8_BIT)
+
+#define BUZZER_PORT		1
+#define BUZZER_BIT		13
+#define BUZZER_GPIO		GPIO_FROM_PORT(BUZZER_PORT, BUZZER_BIT)
+
+#define BP_PORT			2
+#define BP_RESET_BIT		18
+#define BP_EOC_BIT		17
+#define BP_RESET_GPIO		GPIO_FROM_PORT(BP_PORT, BP_RESET_BIT)
+#define BP_EOC_GPIO		GPIO_FROM_PORT(BP_PORT, BP_EOC_BIT)
+
+#define RF_PORT			2
+#define RF_RESET_BIT		12
+#define RF_TDI_BIT		13
+#define RF_TDO_BIT		14
+#define RF_TCK_BIT		15
+#define RF_TMS_BIT		16
+#define RF_RESET_GPIO		GPIO_FROM_PORT(RF_PORT, RF_RESET_BIT)
+#define RF_TDI_GPIO		GPIO_FROM_PORT(RF_PORT, RF_TDI_BIT)
+#define RF_TDO_GPIO		GPIO_FROM_PORT(RF_PORT, RF_TDO_BIT)
+#define RF_TCK_GPIO		GPIO_FROM_PORT(RF_PORT, RF_TCK_BIT)
+#define RF_TMS_GPIO		GPIO_FROM_PORT(RF_PORT, RF_TMS_BIT)
+
+/* ------------------------------------------------------------------------- */
+static struct device_d cfi_dev = {
+	.id		= -1,
+	.name		= "cfi_flash",
+	.map_base	= IMX_CS0_BASE,
+	.size		= 64 * 1024 * 1024,
+};
+
+static struct fec_platform_data fec_info = {
+	.xcv_type	= MII100,
+	.phy_addr	= 0x0,
+};
+
+static struct memory_platform_data sdram_pdata = {
+	.name		= "ram0",
+	.flags		= DEVFS_RDWR,
+};
+
+static struct device_d sdram_dev = {
+	.id		= -1,
+	.name		= "mem",
+	.map_base	= IMX_SDRAM_CS0,
+	.size		= 128 * 1024 * 1024,
+	.platform_data	= &sdram_pdata,
+};
+
+static struct memory_platform_data sdram_pdata1 = {
+	.name		= "ram1",
+	.flags		= DEVFS_RDWR,
+};
+
+static struct device_d sdram_dev1 = {
+	.id		= -1,
+	.name		= "mem",
+	.map_base	= IMX_SDRAM_CS1,
+	.size		= 128 * 1024 * 1024,
+	.platform_data	= &sdram_pdata1,
+};
+
+struct imx_nand_platform_data nand_info = {
+	.hw_ecc		= 1,
+	.flash_bbt	= 1,
+};
+
+static struct i2c_board_info i2c_devices[] = {
+	{
+		I2C_BOARD_INFO("mc13892-i2c", 0x08),
+	}, {
+		I2C_BOARD_INFO("at24", 0x50),
+	},
+};
+
+static void vpr_display_enable(int enable)
+{
+	gpio_direction_output(LCD_PWR_GPIO, enable ? 0 : 1);
+}
+
+/*
+ * Same as imx35 pdk
+ */
+static struct fb_videomode CTP_CLAA070LC0ACW = {
+	/* 800x480 @ 60 Hz */
+	.name		= "CTP-CLAA070LC0ACW",
+	.refresh	= 60,
+	.xres		= 800,
+	.yres		= 480,
+	.pixclock	= KHZ2PICOS(27000),
+	.left_margin	= 50,
+	.right_margin	= 50,	/* whole line should have 900 clocks */
+	.upper_margin	= 10,
+	.lower_margin	= 10,	/* whole frame should have 500 lines */
+	.hsync_len	= 1,	/* note: DE only display */
+	.vsync_len	= 1,	/* note: DE only display */
+	.sync		= FB_SYNC_CLK_IDLE_EN | FB_SYNC_OE_ACT_HIGH,
+	.vmode		= FB_VMODE_NONINTERLACED,
+	.flag		= 0,
+};
+
+static struct imx_ipu_fb_platform_data ipu_fb_data = {
+	.mode		= &CTP_CLAA070LC0ACW,
+	.bpp		= 16,
+	.enable		= vpr_display_enable,
+};
+
+/* ------------------------------------------------------------------------- */
+/**
+ * Board has 5 lines that are tied high or low to give a system configuration
+ * ID. (ie board revision).
+ */
+static uint32_t vpr_read_sys_cfg(void)
+{
+	uint32_t ret = 0;
+
+	ret |= gpio_get_value(SYS_CFG_1_GPIO);
+	ret |= gpio_get_value(SYS_CFG_2_GPIO) << 1;
+	ret |= gpio_get_value(SYS_CFG_3_GPIO) << 2;
+	ret |= gpio_get_value(SYS_CFG_4_GPIO) << 3;
+	ret |= gpio_get_value(SYS_CFG_5_GPIO) << 4;
+
+	return ret;
+}
+
+/* ------------------------------------------------------------------------- */
+
+/**
+ * Init gpio lines for tri-color LED used for diagnostics.
+ *
+ * Note does not set the IOMUX directions, so this needs to be
+ * done elsewhere.
+ */
+void vpr_diag_init(void)
+{
+	/* active low outputs, all start off */
+	gpio_direction_output(DIAG_RED_GPIO, 1);
+	gpio_direction_output(DIAG_GREEN_GPIO, 1);
+	gpio_direction_output(DIAG_BLUE_GPIO, 1);
+}
+
+/**
+ *  Sets each color component of the tri color led
+ *
+ *  \param red      Zero for Off. All other values On.
+ *  \param green    Zero for Off. All other values On.
+ *  \param blue     Zero for Off. All other values On.
+ */
+void vpr_diag_set(int red, int green, int blue)
+{
+	/* active low outputs */
+	gpio_set_value(DIAG_RED_GPIO, !red);
+	gpio_set_value(DIAG_GREEN_GPIO, !green);
+	gpio_set_value(DIAG_BLUE_GPIO, !blue);
+}
+
+/**
+ * Enum matching all color component triplets to
+ * named identifiers.
+ */
+enum diag_led_color {
+	DIAG_LED_OFF        = 0x0,
+	DIAG_LED_BLUE       = 0x1,
+	DIAG_LED_GREEN      = 0x2,
+	DIAG_LED_AQUA       = 0x3,
+	DIAG_LED_RED        = 0x4,
+	DIAG_LED_MAGENTA    = 0x5,
+	DIAG_LED_YELLOW     = 0x6,
+	DIAG_LED_WHITE      = 0x7,
+};
+
+/**
+ * Set Diagnostic LED to specified color
+ */
+void vpr_diag_set_color(enum diag_led_color color)
+{
+	vpr_diag_set(color & 0x4, color & 0x02, color & 0x01);
+}
+
+/* ------------------------------------------------------------------------- */
+enum vpr_button {
+	BUTTONNONE = 0,
+	BUTTON1 = 0x01,
+	BUTTON2 = 0x02,
+	BUTTON3 = 0x04,
+	BUTTON4 = 0x08,
+	BUTTON5 = 0x10,
+	BUTTON6 = 0x20,
+	BUTTON7 = 0x40,
+	BUTTON8 = 0x80
+};
+
+static void vpr_button_init(void)
+{
+	gpio_direction_input(BUTTON1_GPIO);
+	gpio_direction_input(BUTTON2_GPIO);
+	gpio_direction_input(BUTTON3_GPIO);
+	gpio_direction_input(BUTTON4_GPIO);
+	gpio_direction_input(BUTTON5_GPIO);
+	gpio_direction_input(BUTTON6_GPIO);
+	gpio_direction_input(BUTTON7_GPIO);
+	gpio_direction_input(BUTTON8_GPIO);
+}
+
+static int vpr_button_state(void)
+{
+	uint32_t ret = 0;
+
+	ret |= (!gpio_get_value(BUTTON1_GPIO));
+	ret |= (!gpio_get_value(BUTTON2_GPIO)) << 1;
+	ret |= (!gpio_get_value(BUTTON3_GPIO)) << 2;
+	ret |= (!gpio_get_value(BUTTON4_GPIO)) << 3;
+	ret |= (!gpio_get_value(BUTTON5_GPIO)) << 4;
+	ret |= (!gpio_get_value(BUTTON6_GPIO)) << 5;
+	ret |= (!gpio_get_value(BUTTON7_GPIO)) << 6;
+	ret |= (!gpio_get_value(BUTTON8_GPIO)) << 7;
+
+	return ret;
+}
+
+static int vpr_button_state_to_number(int bstate)
+{
+	int ret = 1;
+	if (!bstate)
+		return 0;
+
+	while (!(bstate & 0x01)) {
+		bstate >>= 1;
+		++ret;
+	}
+	return ret;
+}
+
+/* ------------------------------------------------------------------------- */
+static void vpr_buzzer_init(void)
+{
+	gpio_direction_output(BUZZER_GPIO, 0);
+}
+
+static void vpr_buzzer_off(void)
+{
+	gpio_set_value(BUZZER_GPIO, 0);
+}
+
+static void vpr_buzzer_on(void)
+{
+	gpio_set_value(BUZZER_GPIO, 1);
+}
+
+/* ------------------------------------------------------------------------- */
+static void vpr_bp_init(void)
+{
+	struct pad_desc bp_pads[] = {
+		MX35_PAD_ATA_DATA4__GPIO2_17,
+		MX35_PAD_ATA_DATA5__GPIO2_18,
+	};
+
+	mxc_iomux_v3_setup_multiple_pads(bp_pads, ARRAY_SIZE(bp_pads));
+
+	gpio_direction_output(BP_RESET_GPIO, 1);
+	gpio_direction_input(BP_EOC_GPIO);
+}
+
+static void vpr_rf_init(void)
+{
+	struct pad_desc rf_pads[] = {
+		MX35_PAD_ATA_IORDY__GPIO2_12,
+		MX35_PAD_ATA_DATA0__GPIO2_13,
+		MX35_PAD_ATA_DATA1__GPIO2_14,
+		MX35_PAD_ATA_DATA2__GPIO2_15,
+		MX35_PAD_ATA_DATA3__GPIO2_16,
+	};
+
+	mxc_iomux_v3_setup_multiple_pads(rf_pads, ARRAY_SIZE(rf_pads));
+
+	gpio_direction_output(RF_RESET_GPIO, 0);
+	gpio_direction_output(RF_TDI_GPIO, 1);
+	gpio_direction_output(RF_TCK_GPIO, 1);
+	gpio_direction_output(RF_TMS_GPIO, 1);
+	gpio_direction_input(RF_TDO_GPIO);
+}
+
+
+/* ------------------------------------------------------------------------- */
+/*
+ * Board initialization order:
+ *  core_initcall
+ *  postcore_initcall
+ *  console_initcall
+ *  postconsole_initcall
+ *  coredevice_initcall
+ *  fs_initcall
+ *  device_initcall
+ *  late_initcall
+ */
+
+static int vpr_devices_init(void)
+{
+#define MAX_BOOTSRC_MSG 80
+	uint32_t reg;
+	char bootsrc_msg[MAX_BOOTSRC_MSG+1] = {0,};
+
+	/* take care of WDT */
+	writew(0xFFB3, IMX_WDT_BASE + 0);
+	writew(0x0000, IMX_WDT_BASE + 8);
+
+	/* CS0: Nor Flash */
+	writel(0x0000cf03, CSCR_U(0));
+	writel(0x10000d03, CSCR_L(0));
+	writel(0x00720900, CSCR_A(0));
+
+	reg = readl(IMX_CCM_BASE + CCM_RCSR);
+	/* some fuses provide us vital information about connected hardware */
+	if (reg & 0x20000000)
+		nand_info.width = 2;	/* 16 bit */
+	else
+		nand_info.width = 1;	/* 8 bit */
+
+	/* This platform supports NOR, NAND and SD */
+	imx35_add_nand(&nand_info);
+	register_device(&cfi_dev);
+	imx35_add_mmc0(NULL);
+
+	switch ((reg >> 25) & 0x3) {
+	case 0x03:		/* SD/MMC is the source */
+		vpr_diag_set_color(DIAG_LED_MAGENTA);
+		snprintf(bootsrc_msg, MAX_BOOTSRC_MSG, "SD boot: ");
+		devfs_add_partition("disk0", 0x00000, 0x40000, PARTITION_FIXED, "self0");
+		devfs_add_partition("disk0", 0x40000, 0x80000, PARTITION_FIXED, "env0");
+		protect_file("/dev/self0", 1);
+		protect_file("/dev/env0", 1);
+		break;
+
+	case 0x01:		/* NAND is the source */
+		devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_raw");
+		dev_add_bb_dev("self_raw", "self0");
+		devfs_add_partition("nand0", 0x40000, 0x80000, PARTITION_FIXED, "env_raw");
+		dev_add_bb_dev("env_raw", "env0");
+		break;
+
+	case 0x00:		/* NOR is the source */
+		vpr_diag_set_color(DIAG_LED_AQUA);
+		snprintf(bootsrc_msg, MAX_BOOTSRC_MSG, "NOR boot: ");
+		devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self0");
+		devfs_add_partition("nor0", 0x40000, 0x80000, PARTITION_FIXED, "env0");
+		protect_file("/dev/self0", 1);
+		protect_file("/dev/env0", 1);
+		break;
+	default:
+		printf("WARN: Unrecognized boot source.\n");
+		break;
+	}
+
+	/* delay printing message so protect file doesn't get in the middle */
+	printf(bootsrc_msg);
+
+	switch ((reg >> 10) & 0x3) {
+	case 0x03:
+		printf("Bootstrap mode\n");
+		break;
+	case 0x02:
+		printf("External\n");
+		break;
+	case 0x00:
+		printf("Internal\n");
+		break;
+	default:
+		break;
+	}
+
+	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
+
+	imx35_add_i2c0(NULL);
+	imx35_add_i2c1(NULL);
+	imx35_add_fec(&fec_info);
+
+	register_device(&sdram_dev);
+	register_device(&sdram_dev1);
+
+	imx35_add_fb(&ipu_fb_data);
+
+	vpr_button_init();
+	vpr_buzzer_init();
+	vpr_bp_init();
+	vpr_rf_init();
+
+	armlinux_add_dram(&sdram_dev);
+	/* TODO adding BANK1 causes early kernel crash when booting
+	 * off SD card */
+
+	armlinux_set_bootparams((void *)0x80000100);
+
+	armlinux_set_architecture(MACH_TYPE_VPR200);
+
+	/* For compat with the freescale kernel, relies on setting revision*/
+	armlinux_set_revision(0x00035100 | imx_silicon_revision());
+
+	return 0;
+}
+
+device_initcall(vpr_devices_init);
+
+static struct pad_desc vpr_pads[] = {
+	/* FEC */
+	MX35_PAD_FEC_RX_DV__FEC_RX_DV,
+	MX35_PAD_FEC_COL__FEC_COL,
+	MX35_PAD_FEC_TX_EN__FEC_TX_EN,
+	MX35_PAD_FEC_MDC__FEC_MDC,
+	MX35_PAD_FEC_MDIO__FEC_MDIO,
+	MX35_PAD_FEC_TX_ERR__FEC_TX_ERR,
+	MX35_PAD_FEC_RX_ERR__FEC_RX_ERR,
+	MX35_PAD_FEC_CRS__FEC_CRS,
+	MX35_PAD_FEC_RDATA0__FEC_RDATA_0,
+	MX35_PAD_FEC_TDATA0__FEC_TDATA_0,
+	MX35_PAD_FEC_RDATA1__FEC_RDATA_1,
+	MX35_PAD_FEC_TDATA1__FEC_TDATA_1,
+	MX35_PAD_FEC_RDATA2__FEC_RDATA_2,
+	MX35_PAD_FEC_TDATA2__FEC_TDATA_2,
+	MX35_PAD_FEC_RDATA3__FEC_RDATA_3,
+	MX35_PAD_FEC_TDATA3__FEC_TDATA_3,
+	/* FEC enable */
+	MX35_PAD_D3_REV__GPIO1_3,
+	/* UART 1*/
+	MX35_PAD_RXD1__UART1_RXD_MUX,
+	MX35_PAD_TXD1__UART1_TXD_MUX,
+	MX35_PAD_RTS1__UART1_RTS,
+	MX35_PAD_CTS1__UART1_CTS,
+	/* I2C1 */
+	MX35_PAD_I2C1_CLK__I2C1_SCL,
+	MX35_PAD_I2C1_DAT__I2C1_SDA,
+	/* I2C2 */
+	MX35_PAD_I2C2_CLK__I2C2_SCL,
+	MX35_PAD_I2C2_DAT__I2C2_SDA,
+	/* Sys config */
+	MX35_PAD_ATA_DATA14__GPIO2_27,
+	MX35_PAD_ATA_DATA15__GPIO2_28,
+	MX35_PAD_ATA_INTRQ__GPIO2_29,
+	MX35_PAD_ATA_BUFF_EN__GPIO2_30,
+	MX35_PAD_ATA_DMARQ__GPIO2_31,
+	/* LCD enable */
+	MX35_PAD_D3_VSYNC__GPIO1_2,
+	/* Display */
+	MX35_PAD_LD0__IPU_DISPB_DAT_0,
+	MX35_PAD_LD1__IPU_DISPB_DAT_1,
+	MX35_PAD_LD2__IPU_DISPB_DAT_2,
+	MX35_PAD_LD3__IPU_DISPB_DAT_3,
+	MX35_PAD_LD4__IPU_DISPB_DAT_4,
+	MX35_PAD_LD5__IPU_DISPB_DAT_5,
+	MX35_PAD_LD6__IPU_DISPB_DAT_6,
+	MX35_PAD_LD7__IPU_DISPB_DAT_7,
+	MX35_PAD_LD8__IPU_DISPB_DAT_8,
+	MX35_PAD_LD9__IPU_DISPB_DAT_9,
+	MX35_PAD_LD10__IPU_DISPB_DAT_10,
+	MX35_PAD_LD11__IPU_DISPB_DAT_11,
+	MX35_PAD_LD12__IPU_DISPB_DAT_12,
+	MX35_PAD_LD13__IPU_DISPB_DAT_13,
+	MX35_PAD_LD14__IPU_DISPB_DAT_14,
+	MX35_PAD_LD15__IPU_DISPB_DAT_15,
+	MX35_PAD_LD16__IPU_DISPB_DAT_16,
+	MX35_PAD_LD17__IPU_DISPB_DAT_17,
+	MX35_PAD_D3_FPSHIFT__IPU_DISPB_D3_CLK,
+	MX35_PAD_D3_DRDY__IPU_DISPB_D3_DRDY,
+	MX35_PAD_CONTRAST__IPU_DISPB_CONTR,
+	/* Buttons */
+	MX35_PAD_SCKR__GPIO1_4,
+	MX35_PAD_COMPARE__GPIO1_5,
+	MX35_PAD_SCKT__GPIO1_7,
+	MX35_PAD_FST__GPIO1_8,
+	MX35_PAD_HCKT__GPIO1_9,
+	MX35_PAD_TX5_RX0__GPIO1_10,
+	MX35_PAD_TX4_RX1__GPIO1_11,
+	MX35_PAD_TX3_RX2__GPIO1_12,
+	/* Buzzer */
+	MX35_PAD_TX2_RX3__GPIO1_13,
+	/* Diag LED */
+	MX35_PAD_USBOTG_PWR__GPIO3_14,
+	MX35_PAD_USBOTG_OC__GPIO3_15,
+	MX35_PAD_D3_HSYNC__GPIO3_30,
+};
+
+
+static int vpr_console_init(void)
+{
+	mxc_iomux_v3_setup_multiple_pads(vpr_pads, ARRAY_SIZE(vpr_pads));
+
+	imx35_add_uart0();
+	return 0;
+}
+
+console_initcall(vpr_console_init);
+
+static int vpr_post_console_init(void)
+{
+	vpr_diag_init();
+	vpr_diag_set_color(DIAG_LED_YELLOW);
+	return 0;
+}
+
+postcore_initcall(vpr_post_console_init);
+
+static int vpr_core_init(void)
+{
+	u32 reg;
+
+	/* enable clock for SDHC1, I2C[1] and FEC */
+	reg = readl(IMX_CCM_BASE + CCM_CGR1);
+	reg |= 0x3 << CCM_CGR1_FEC_SHIFT;
+	reg |= 0x3 << CCM_CGR1_I2C1_SHIFT;
+	reg |= 0x3 << CCM_CGR1_SDHC1_SHIFT;
+	reg = writel(reg, IMX_CCM_BASE + CCM_CGR1);
+
+	/* AIPS setup - Only setup MPROTx regs. The PACR defaults are good.*/
+	/*
+	 * Set all MPROTx to be non-bufferable, trusted for R/W,
+	 * not forced to user-mode.
+	 */
+	writel(0x77777777, IMX_AIPS1_BASE);
+	writel(0x77777777, IMX_AIPS1_BASE + 0x4);
+	writel(0x77777777, IMX_AIPS2_BASE);
+	writel(0x77777777, IMX_AIPS2_BASE + 0x4);
+
+	/*
+	 * Clear the on and off peripheral modules Supervisor Protect bit
+	 * for SDMA to access them. Did not change the AIPS control registers
+	 * (offset 0x20) access type
+	 */
+	writel(0x0, IMX_AIPS1_BASE + 0x40);
+	writel(0x0, IMX_AIPS1_BASE + 0x44);
+	writel(0x0, IMX_AIPS1_BASE + 0x48);
+	writel(0x0, IMX_AIPS1_BASE + 0x4C);
+	reg = readl(IMX_AIPS1_BASE + 0x50);
+	reg &= 0x00FFFFFF;
+	writel(reg, IMX_AIPS1_BASE + 0x50);
+
+	writel(0x0, IMX_AIPS2_BASE + 0x40);
+	writel(0x0, IMX_AIPS2_BASE + 0x44);
+	writel(0x0, IMX_AIPS2_BASE + 0x48);
+	writel(0x0, IMX_AIPS2_BASE + 0x4C);
+	reg = readl(IMX_AIPS2_BASE + 0x50);
+	reg &= 0x00FFFFFF;
+	writel(reg, IMX_AIPS2_BASE + 0x50);
+
+	/* MAX (Multi-Layer AHB Crossbar Switch) setup */
+
+	/* MPR - priority is M4 > M2 > M3 > M5 > M0 > M1 */
+#define MAX_PARAM1 0x00302154
+	writel(MAX_PARAM1, IMX_MAX_BASE + 0x000); /* for S0 */
+	writel(MAX_PARAM1, IMX_MAX_BASE + 0x100); /* for S1 */
+	writel(MAX_PARAM1, IMX_MAX_BASE + 0x200); /* for S2 */
+	writel(MAX_PARAM1, IMX_MAX_BASE + 0x300); /* for S3 */
+	writel(MAX_PARAM1, IMX_MAX_BASE + 0x400); /* for S4 */
+
+	/* SGPCR - always park on last master */
+	writel(0x10, IMX_MAX_BASE + 0x10);	/* for S0 */
+	writel(0x10, IMX_MAX_BASE + 0x110);	/* for S1 */
+	writel(0x10, IMX_MAX_BASE + 0x210);	/* for S2 */
+	writel(0x10, IMX_MAX_BASE + 0x310);	/* for S3 */
+	writel(0x10, IMX_MAX_BASE + 0x410);	/* for S4 */
+
+	/* MGPCR - restore default values */
+	writel(0x0, IMX_MAX_BASE + 0x800);	/* for M0 */
+	writel(0x0, IMX_MAX_BASE + 0x900);	/* for M1 */
+	writel(0x0, IMX_MAX_BASE + 0xa00);	/* for M2 */
+	writel(0x0, IMX_MAX_BASE + 0xb00);	/* for M3 */
+	writel(0x0, IMX_MAX_BASE + 0xc00);	/* for M4 */
+	writel(0x0, IMX_MAX_BASE + 0xd00);	/* for M5 */
+
+	return 0;
+}
+
+core_initcall(vpr_core_init);
+
+/* -------------------------------------------------------------------------*/
+
+static int vpr_pmic_init_v1(struct mc13892 *mc13892)
+{
+	int err = 0;
+	unsigned int mask = 0;
+	unsigned int val = 0;
+
+	/* VGEN2[2:0] = b111 --> output to 3.15V */
+	mc13892_set_bits(mc13892, MC13892_REG_SETTING_0, 0x7 << 6, 0x7 << 6);
+
+	/* VCHRG[2:0] = 0b011, Charge reg output voltage 4.200 */
+	val |= 0x3;
+	mask |= 0x7;
+	/* ICHRG[3:0] = 0b1011, Current limit 960mA*/
+	val |= 0xb << 3;
+	mask |= 0xf << 3;
+	/* PLIM[1:0] = 0b11, Power limit 1000mW */
+	val |= 3 << 15;
+	mask |= 0x3 << 15;
+	/* Enable setting of V I */
+	val |= 1 << 23;
+	mask |= 0x1 << 23;
+	err |= mc13892_set_bits(mc13892, MC13892_REG_CHARGE, mask, val);
+
+	gpio_direction_output(FEC_RESET_GPIO, 0);
+
+	/*turn on the FEC power supply */
+	/* VGEN1[1:0] = 0b11*/
+	err |= mc13892_set_bits(mc13892, MC13892_REG_SETTING_0, 0x03, 0x03);
+	/* VGEN1EN = 1 */
+	err |= mc13892_set_bits(mc13892, MC13892_REG_MODE_0, 0x01, 0x01);
+	if (err) {
+		dev_err(&mc13892->client->dev,
+			"Init sequence failed, the system might not be working!\n");
+	}
+
+	gpio_direction_output(FEC_ENABLE_GPIO, 1);
+	mdelay(10);
+	gpio_set_value(FEC_RESET_GPIO, 1);
+
+	return err;
+}
+
+/*
+ * Maybe this is a bit dodgy because the env is only set up in
+ * a late_initcall?
+ */
+static void vpr_save_boot_loc(void)
+{
+	uint32_t reg;
+	reg = readl(IMX_CCM_BASE + CCM_RCSR);
+
+	switch ((reg >> 25) & 0x3) {
+	case 0x03:		/* SD/MMC is the source */
+		setenv("boot_loc", "mmc");
+		export("boot_loc");
+		break;
+	case 0x01:		/* NAND is the source */
+		setenv("boot_loc", "nane");
+		export("boot_loc");
+		break;
+
+	case 0x00:		/* NOR is the source */
+		setenv("boot_loc", "nor");
+		export("boot_loc");
+		break;
+	default:
+		break;
+	}
+}
+
+static int vpr_final_init(void)
+{
+	struct mc13892 *mc13892;
+	uint32_t system_rev;
+
+	mc13892 = mc13892_get();
+	if (!mc13892) {
+		printf("FAILED to get mc13892 handle!\n");
+		return 0;
+	}
+
+	system_rev = vpr_read_sys_cfg();
+	printf("VPR CPU board version 0x%02x.\n", system_rev);
+	switch (system_rev) {
+	case VPR_CPU_V1:
+		vpr_pmic_init_v1(mc13892);
+		break;
+	default:
+		printf("Unknown revision 0x%02x.\n", system_rev);
+		return 0;
+	}
+
+	vpr_save_boot_loc();
+
+	return 0;
+}
+
+late_initcall(vpr_final_init);
+
+#ifdef CONFIG_NAND_IMX_BOOT
+void __bare_init nand_boot(void)
+{
+	/*
+	 * The driver is able to detect NAND's pagesize by CPU internal
+	 * fuses or external pull ups. But not the blocksize...
+	 */
+	imx_nand_load_image((void *)TEXT_BASE, 256 * 1024);
+}
+#endif
+
+/* ------------------------------------------------------------------------ */
+
+static int do_diagled(struct command *cmdtp, int argc, char *argv[])
+{
+	int color;
+
+	if (argc != 2)
+		return COMMAND_ERROR_USAGE;
+
+	color = simple_strtoul(argv[1], NULL, 0);
+	vpr_diag_set_color(color);
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(diagled)
+BAREBOX_CMD_HELP_USAGE("diagled [color]\n")
+BAREBOX_CMD_HELP_SHORT("Sets the color of the diagnostic LED.\n")
+BAREBOX_CMD_HELP_TEXT("\toff\t 0\n")
+BAREBOX_CMD_HELP_TEXT("\tblue\t 1\n")
+BAREBOX_CMD_HELP_TEXT("\tgreen\t 2\n")
+BAREBOX_CMD_HELP_TEXT("\taqua\t 3\n")
+BAREBOX_CMD_HELP_TEXT("\tred\t 4\n")
+BAREBOX_CMD_HELP_TEXT("\tmagenta\t 5\n")
+BAREBOX_CMD_HELP_TEXT("\tyellow\t 6\n")
+BAREBOX_CMD_HELP_TEXT("\twhite\t 7\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(diagled)
+	.cmd            = do_diagled,
+	.usage          = "Set color of diagnositc tri-color LED",
+	BAREBOX_CMD_HELP(cmd_diagled_help)
+BAREBOX_CMD_END
+
+/* ------------------------------------------------------------------------ */
+
+static int do_waitbutton(struct command *cmdtp, int argc, char *argv[])
+{
+	int opt;
+	uint64_t start;
+	ulong timeout = 0;
+	uint32_t bstate;
+
+	while ((opt = getopt(argc, argv, "t:")) > 0) {
+		switch (opt) {
+		case 't':
+			timeout = simple_strtol(optarg, NULL, 0);
+			break;
+		}
+	}
+
+	start = get_time_ns();
+	while (!timeout || !is_timeout(start, timeout * SECOND)) {
+		bstate = vpr_button_state();
+		if (bstate) {
+			printf("%d\n", vpr_button_state_to_number(bstate));
+			return 0;
+		}
+		if (ctrlc())
+			return -EINTR;
+	}
+
+	return -ETIMEDOUT;
+}
+
+BAREBOX_CMD_HELP_START(waitbutton)
+BAREBOX_CMD_HELP_USAGE("waitbutton [-t]\n")
+BAREBOX_CMD_HELP_SHORT("Prints the button number of the next pressed button.\n")
+BAREBOX_CMD_HELP_OPT("-t <seconds>", "time in seconds to wait. 0 (default) is forever.")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(button)
+	.cmd            = do_waitbutton,
+	.usage          = "Wait for button press",
+	BAREBOX_CMD_HELP(cmd_waitbutton_help)
+BAREBOX_CMD_END
+
+/* ------------------------------------------------------------------------ */
+
+static int do_buzzer(struct command *cmdtp, int argc, char *argv[])
+{
+	int opt;
+	uint64_t start;
+	ulong durationms = 200;
+
+	while ((opt = getopt(argc, argv, "d:")) > 0) {
+		switch (opt) {
+		case 'd':
+			durationms = simple_strtol(optarg, NULL, 0);
+			break;
+		}
+	}
+
+	vpr_buzzer_on();
+
+	start = get_time_ns();
+	while (!is_timeout(start, durationms * MSECOND)) {
+
+		vpr_buzzer_on();
+		udelay(120);
+		vpr_buzzer_off();
+		udelay(120);
+
+		if (ctrlc())
+			break;
+	}
+
+	vpr_buzzer_off();
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(buzzer)
+BAREBOX_CMD_HELP_USAGE("buzzer [-d]\n")
+BAREBOX_CMD_HELP_SHORT("Buzzer beep.\n")
+BAREBOX_CMD_HELP_OPT  ("-d <ms>", "time in milli-seconds to stay on. (default 200ms)\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(buzzer)
+	.cmd            = do_buzzer,
+	.usage          = "Buzzer beep",
+	BAREBOX_CMD_HELP(cmd_buzzer_help)
+BAREBOX_CMD_END
+
diff --git a/arch/arm/boards/vpr200/vpr200.dox b/arch/arm/boards/vpr200/vpr200.dox
new file mode 100644
index 0000000..304e00f
--- /dev/null
+++ b/arch/arm/boards/vpr200/vpr200.dox
@@ -0,0 +1,10 @@
+/** @page vpr200 VPR200
+
+The vpr200 board uses a iMX35 CPU.
+
+- 64 MiB NOR Memory
+- 2x 128 Mib RAM
+- 512 MiB NAND
+- 256 byte EEPROM
+
+*/
diff --git a/arch/arm/configs/vpr200_defconfig b/arch/arm/configs/vpr200_defconfig
new file mode 100644
index 0000000..6b1c64e
--- /dev/null
+++ b/arch/arm/configs/vpr200_defconfig
@@ -0,0 +1,60 @@
+CONFIG_ARCH_IMX=y
+CONFIG_ARCH_IMX_INTERNAL_BOOT=y
+CONFIG_ARCH_IMX_INTERNAL_BOOT_NOR=y
+CONFIG_ARCH_IMX35=y
+CONFIG_MACH_VPR200=y
+CONFIG_IMX_CLKO=y
+CONFIG_AEABI=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_TEXT_BASE=0x87F00000
+CONFIG_MALLOC_SIZE=0x4000000
+CONFIG_EXPERIMENTAL=y
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/vpr200/env/"
+CONFIG_DEBUG_INFO=y
+CONFIG_ENABLE_DEVICE_NOISE=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_BMP=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_I2C=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_PING=y
+CONFIG_NET_TFTP=y
+CONFIG_DRIVER_NET_FEC_IMX=y
+# CONFIG_SPI is not set
+CONFIG_I2C=y
+CONFIG_I2C_IMX=y
+CONFIG_DRIVER_I2C_AT24=y
+CONFIG_DRIVER_CFI=y
+CONFIG_CFI_BUFFER_WRITE=y
+CONFIG_MTD=y
+CONFIG_NAND=y
+CONFIG_NAND_IMX=y
+CONFIG_NAND_IMX_BOOT=y
+CONFIG_UBI=y
+CONFIG_VIDEO=y
+CONFIG_DRIVER_VIDEO_IMX_IPU=y
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_IMX_ESDHC=y
+CONFIG_I2C_MC13892=y
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index f3506af..1947ace 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -19,6 +19,7 @@ config ARCH_TEXT_BASE
 	default 0xa7e00000 if MACH_NESO
 	default 0x97f00000 if MACH_MX51_PDK
 	default 0x87f00000 if MACH_GUF_CUPID
+	default 0x87f00000 if MACH_VPR200
 
 config BOARDINFO
 	default "Eukrea CPUIMX25" if MACH_EUKREA_CPUIMX25
@@ -36,6 +37,7 @@ config BOARDINFO
 	default "Garz+Fricke Neso" if MACH_NESO
 	default "Freescale i.MX51 PDK" if MACH_FREESCALE_MX51_PDK
 	default "Garz+Fricke Cupid" if MACH_GUF_CUPID
+	default "VPR200" if MACH_VPR200
 
 config ARCH_HAS_FEC_IMX
 	bool
@@ -310,6 +312,17 @@ config MACH_GUF_CUPID
 	  Say Y here if you are using the Garz+Fricke Neso board equipped
 	  with a Freescale i.MX35 Processor
 
+config MACH_VPR200
+	bool "VPR200"
+	select HAS_CFI
+	select MACH_HAS_LOWLEVEL_INIT
+	select I2C
+	select I2C_IMX
+	select I2C_MC13892
+	help
+	  Say Y here if you are using the VPR200 (i.MX35 Processor)
+
+
 endchoice
 
 endif
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
