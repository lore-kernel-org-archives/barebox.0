Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 27.mail-out.ovh.net ([91.121.30.210])
	by bombadil.infradead.org with smtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NxDPs-0004wv-4A
	for barebox@lists.infradead.org; Thu, 01 Apr 2010 05:58:11 +0000
Message-ID: <4BB435E9.5010203@eukrea.com>
Date: Thu, 01 Apr 2010 07:58:01 +0200
From: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <007101cad0b8$eba13150$c2e393f0$@cpdesign.com.au>
In-Reply-To: <007101cad0b8$eba13150$c2e393f0$@cpdesign.com.au>
Content-Type: multipart/mixed; boundary="------------050702040709080608090509"
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Splash screen on mx35 3 stack
To: marc@cpdesign.com.au
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

This is a multi-part message in MIME format.
--------------050702040709080608090509
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
Content-Transfer-Encoding: quoted-printable

Hi Marc,

Le 31/03/2010 11:59, Marc Reilly a =E9crit :
> I have a freescale IMX35PDK (3 stack) and want to get a bmp showing as a
> splash screen, but am not having any luck. (Just getting a white screen,
> although the backlight comes on). All hardware is as-original, using the
> CLAA 800x480 LCD.
>
> Has anyone had success getting something showing on the screen with the
> mx35 pdk? (or any other platform I can use as a reference).
>
please find attached a patch (WIP based on 3stack so not polished yet)=20
which works on our platform (iMX357 with a QVGA LCD)

Eric

--------------050702040709080608090509
Content-Type: text/x-patch;
 name="0001-Add-support-for-Eukrea-CPUIMX35.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="0001-Add-support-for-Eukrea-CPUIMX35.patch"

From c4ee6ddd8878e84fa470a8f1514a55900b66fa9f Mon Sep 17 00:00:00 2001
From: Eric Benard <eric@eukrea.com>
Date: Thu, 1 Apr 2010 07:53:29 +0200
Subject: [PATCH] Add support for Eukrea CPUIMX35

---
 arch/arm/Makefile                           |    1 +
 arch/arm/mach-imx/Kconfig                   |   10 +
 board/eukrea_cpuimx35/3stack.dox            |    4 +
 board/eukrea_cpuimx35/Makefile              |    4 +
 board/eukrea_cpuimx35/board-mx35_3stack.h   |  107 ++++++++
 board/eukrea_cpuimx35/config.h              |   28 ++
 board/eukrea_cpuimx35/env/bin/_update       |   39 +++
 board/eukrea_cpuimx35/env/bin/boot          |   48 ++++
 board/eukrea_cpuimx35/env/bin/hush_hack     |    1 +
 board/eukrea_cpuimx35/env/bin/init          |   34 +++
 board/eukrea_cpuimx35/env/bin/update_kernel |    8 +
 board/eukrea_cpuimx35/env/bin/update_rootfs |   13 +
 board/eukrea_cpuimx35/env/config            |   32 +++
 board/eukrea_cpuimx35/eukrea_cpuimx35.c     |  354 +++++++++++++++++++++++++++
 board/eukrea_cpuimx35/flash_header.c        |   60 +++++
 board/eukrea_cpuimx35/lowlevel_init.S       |  285 +++++++++++++++++++++
 16 files changed, 1028 insertions(+), 0 deletions(-)
 create mode 100644 board/eukrea_cpuimx35/3stack.dox
 create mode 100644 board/eukrea_cpuimx35/Makefile
 create mode 100644 board/eukrea_cpuimx35/board-mx35_3stack.h
 create mode 100644 board/eukrea_cpuimx35/config.h
 create mode 100644 board/eukrea_cpuimx35/env/bin/_update
 create mode 100644 board/eukrea_cpuimx35/env/bin/boot
 create mode 100644 board/eukrea_cpuimx35/env/bin/hush_hack
 create mode 100644 board/eukrea_cpuimx35/env/bin/init
 create mode 100644 board/eukrea_cpuimx35/env/bin/update_kernel
 create mode 100644 board/eukrea_cpuimx35/env/bin/update_rootfs
 create mode 100644 board/eukrea_cpuimx35/env/config
 create mode 100644 board/eukrea_cpuimx35/eukrea_cpuimx35.c
 create mode 100644 board/eukrea_cpuimx35/flash_header.c
 create mode 100644 board/eukrea_cpuimx35/lowlevel_init.S

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index fbbea42..dec5e41 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -61,6 +61,7 @@ board-$(CONFIG_MACH_EDB93012)			:= edb93xx
 board-$(CONFIG_MACH_EDB9315)			:= edb93xx
 board-$(CONFIG_MACH_EDB9315A)			:= edb93xx
 board-$(CONFIG_MACH_EUKREA_CPUIMX27)		:= eukrea_cpuimx27
+board-$(CONFIG_MACH_EUKREA_CPUIMX35)		:= eukrea_cpuimx35
 board-$(CONFIG_MACH_FREESCALE_MX25_3STACK)	:= freescale-mx25-3-stack
 board-$(CONFIG_MACH_FREESCALE_MX35_3STACK)	:= freescale-mx35-3-stack
 board-$(CONFIG_MACH_IMX21ADS)			:= imx21ads
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index eeb392a..5713a2f 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -3,6 +3,7 @@ if ARCH_IMX
 config ARCH_TEXT_BASE
 	hex
 	default 0xa0000000 if MACH_EUKREA_CPUIMX27
+	default 0x87f00000 if MACH_EUKREA_CPUIMX35
 	default 0x08f00000 if MACH_MX1ADS
 	default 0xc0000000 if MACH_IMX21ADS
 	default 0xa0000000 if MACH_IMX27ADS
@@ -16,6 +17,7 @@ config ARCH_TEXT_BASE
 
 config BOARDINFO
 	default "Eukrea CPUIMX27" if MACH_EUKREA_CPUIMX27
+	default "Eukrea CPUIMX35" if MACH_EUKREA_CPUIMX35
 	default "Freescale i.MX21 ADS" if MACH_IMX21ADS
 	default "Freescale i.MX27 ADS" if MACH_IMX27ADS
 	default "Freescale MX35 3Stack" if MACH_FREESCALE_MX35_3STACK
@@ -212,6 +214,14 @@ choice
 
 	prompt "i.MX35 Board Type"
 
+config MACH_EUKREA_CPUIMX35
+	bool "EUKREA CPUIMX35"
+	select HAVE_MMU
+	select MACH_HAS_LOWLEVEL_INIT
+	help
+	  Say Y here if you are using Eukrea's CPUIMX35 equipped
+	  with a Freescale i.MX35 Processor
+
 config MACH_FREESCALE_MX35_3STACK
 	bool "Freescale MX35 3stack"
 	select HAS_CFI
diff --git a/board/eukrea_cpuimx35/3stack.dox b/board/eukrea_cpuimx35/3stack.dox
new file mode 100644
index 0000000..15c5b6e
--- /dev/null
+++ b/board/eukrea_cpuimx35/3stack.dox
@@ -0,0 +1,4 @@
+/** @page the3stack Freescale MX35 3-Stack Board
+
+
+*/
diff --git a/board/eukrea_cpuimx35/Makefile b/board/eukrea_cpuimx35/Makefile
new file mode 100644
index 0000000..bc4e66b
--- /dev/null
+++ b/board/eukrea_cpuimx35/Makefile
@@ -0,0 +1,4 @@
+
+obj-y					+= lowlevel_init.o
+obj-y					+= eukrea_cpuimx35.o
+obj-$(CONFIG_ARCH_IMX_INTERNAL_BOOT)	+= flash_header.o
diff --git a/board/eukrea_cpuimx35/board-mx35_3stack.h b/board/eukrea_cpuimx35/board-mx35_3stack.h
new file mode 100644
index 0000000..c18066a
--- /dev/null
+++ b/board/eukrea_cpuimx35/board-mx35_3stack.h
@@ -0,0 +1,107 @@
+/*
+ *
+ * (c) 2007 Pengutronix, Sascha Hauer <s.hauer@pengutronix.de>
+ *
+ * (C) Copyright 2008 Freescale Semiconductor, Inc.
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
+#ifndef __BOARD_MX35_3STACK_H
+#define __BOARD_MX35_3STACK_H
+
+#define UNALIGNED_ACCESS_ENABLE
+#define LOW_INT_LATENCY_ENABLE
+#define BRANCH_PREDICTION_ENABLE
+
+#define L2CC_AUX_CTL_CONFIG	0x00030024
+
+#define AIPS_MPR_CONFIG		0x77777777
+#define AIPS_OPACR_CONFIG	0x00000000
+
+/* MPR - priority is M4 > M2 > M3 > M5 > M0 > M1 */
+#define MAX_MPR_CONFIG		0x00302154
+/* SGPCR - always park on last master */
+#define MAX_SGPCR_CONFIG	0x00000010
+/* MGPCR - restore default values */
+#define MAX_MGPCR_CONFIG	0x00000000
+
+/*
+ * M3IF Control Register (M3IFCTL)
+ * MRRP[0] = L2CC0 not on priority list (0 << 0) = 0x00000000
+ * MRRP[1] = L2CC1 not on priority list (0 << 0) = 0x00000000
+ * MRRP[2] = MBX not on priority list (0 << 0)   = 0x00000000
+ * MRRP[3] = MAX1 not on priority list (0 << 0)  = 0x00000000
+ * MRRP[4] = SDMA not on priority list (0 << 0)  = 0x00000000
+ * MRRP[5] = MPEG4 not on priority list (0 << 0) = 0x00000000
+ * MRRP[6] = IPU1 on priority list (1 << 6)      = 0x00000040
+ * MRRP[7] = IPU2 not on priority list (0 << 0)  = 0x00000000
+ *                                               ------------
+ *                                                 0x00000040
+ */
+#define M3IF_CONFIG	0x00000040
+
+#define DBG_BASE_ADDR		WEIM_CTRL_CS5
+#define DBG_CSCR_U_CONFIG	0x0000D843
+#define DBG_CSCR_L_CONFIG	0x22252521
+#define DBG_CSCR_A_CONFIG	0x22220A00
+
+#define CCM_CCMR_CONFIG		0x003F4208
+#define CCM_PDR0_CONFIG		0x00821000
+
+#define PLL_BRM_OFFSET	31
+#define PLL_PD_OFFSET	26
+#define PLL_MFD_OFFSET	16
+#define PLL_MFI_OFFSET	10
+
+#define _PLL_BRM(x)	((x) << PLL_BRM_OFFSET)
+#define _PLL_PD(x)	(((x) - 1) << PLL_PD_OFFSET)
+#define _PLL_MFD(x)	(((x) - 1) << PLL_MFD_OFFSET)
+#define _PLL_MFI(x)	((x) << PLL_MFI_OFFSET)
+#define _PLL_MFN(x)	(x)
+#define _PLL_SETTING(brm, pd, mfd, mfi, mfn) \
+	(_PLL_BRM(brm) | _PLL_PD(pd) | _PLL_MFD(mfd) | _PLL_MFI(mfi) |\
+	 _PLL_MFN(mfn))
+
+#define CCM_MPLL_532_HZ	_PLL_SETTING(1, 1, 12, 11, 1)
+#define CCM_MPLL_399_HZ _PLL_SETTING(0, 1, 16, 8, 5)
+#define CCM_PPLL_300_HZ _PLL_SETTING(0, 1, 4, 6, 1)
+
+/*MEMORY SETING*/
+#define ESDCTL_0x92220000	0x92220000
+#define ESDCTL_0xA2220000	0xA2220000
+#define ESDCTL_0xB2220000	0xB2220000
+#define ESDCTL_0x82228080 	0x82228080
+
+#define ESDCTL_PRECHARGE	0x00000400
+
+#define ESDCTL_MDDR_CONFIG 	0x007FFC3F
+#define ESDCTL_MDDR_MR		0x00000033
+#define ESDCTL_MDDR_EMR		0x02000000
+
+#define ESDCTL_DDR2_CONFIG 	0x007FFC3F
+#define ESDCTL_DDR2_EMR2	0x04000000
+#define ESDCTL_DDR2_EMR3	0x06000000
+#define ESDCTL_DDR2_EN_DLL	0x02000400
+#define ESDCTL_DDR2_RESET_DLL	0x00000333
+#define ESDCTL_DDR2_MR		0x00000233
+#define ESDCTL_DDR2_OCD_DEFAULT 0x02000780
+
+#define ESDCTL_DELAY_LINE5	0x00F49F00
+#endif				/* __BOARD_MX35_3STACK_H */
diff --git a/board/eukrea_cpuimx35/config.h b/board/eukrea_cpuimx35/config.h
new file mode 100644
index 0000000..c724a57
--- /dev/null
+++ b/board/eukrea_cpuimx35/config.h
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
+ * @brief Global defintions for the Freescale i.MX35 3-stack board
+ */
+
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#define CONFIG_MX35_HCLK_FREQ        24000000
+
+#endif	/* __CONFIG_H */
diff --git a/board/eukrea_cpuimx35/env/bin/_update b/board/eukrea_cpuimx35/env/bin/_update
new file mode 100644
index 0000000..4f0839f
--- /dev/null
+++ b/board/eukrea_cpuimx35/env/bin/_update
@@ -0,0 +1,39 @@
+#!/bin/sh
+
+if [ -z "$part" -o -z "$image" ]; then
+	echo "define \$part and \$image"
+	exit 1
+fi
+
+if [ \! -e "$part" ]; then
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
diff --git a/board/eukrea_cpuimx35/env/bin/boot b/board/eukrea_cpuimx35/env/bin/boot
new file mode 100644
index 0000000..3affe5c
--- /dev/null
+++ b/board/eukrea_cpuimx35/env/bin/boot
@@ -0,0 +1,48 @@
+#!/bin/sh
+
+. /env/config
+
+if [ x$1 = xnand ]; then
+	rootfs_loc=nand
+	kernel_loc=nand
+elif [ x$1 = xnet ]; then
+	rootfs_loc=net
+	kernel_loc=net
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
+	rootfs_mtdblock=$rootfs_mtdblock_nand
+
+
+	if [ $rootfs_type = ubifs ]; then
+		bootargs="$bootargs root=ubi0:root ubi.mtd=$rootfs_mtdblock"
+	else
+		bootargs="$bootargs root=/dev/mtdblock$rootfs_mtdblock"
+	fi
+
+	bootargs="$bootargs rootfstype=$rootfs_type"
+else
+	bootargs="$bootargs root=/dev/nfs nfsroot=$eth0.serverip:$nfsroot,v3,tcp"
+fi
+
+
+bootargs="$bootargs mtdparts=\"mxc_nand:$nand_parts\""
+
+if [ $kernel_loc = net ]; then
+	if [ x$ip = xdhcp ]; then
+		dhcp
+	fi
+	tftp $kernel uImage
+	bootm uImage
+else
+	bootm /dev/nand0.kernel.bb
+fi
+
diff --git a/board/eukrea_cpuimx35/env/bin/hush_hack b/board/eukrea_cpuimx35/env/bin/hush_hack
new file mode 100644
index 0000000..5fffa92
--- /dev/null
+++ b/board/eukrea_cpuimx35/env/bin/hush_hack
@@ -0,0 +1 @@
+nand -a /dev/nand0.*
diff --git a/board/eukrea_cpuimx35/env/bin/init b/board/eukrea_cpuimx35/env/bin/init
new file mode 100644
index 0000000..456cc10
--- /dev/null
+++ b/board/eukrea_cpuimx35/env/bin/init
@@ -0,0 +1,34 @@
+#!/bin/sh
+
+PATH=/env/bin
+export PATH
+
+. /env/config
+if [ -e /dev/nand0 ]; then
+	addpart /dev/nand0 $nand_parts
+
+	# Uh, oh, hush first expands wildcards and then starts executing
+	# commands. What a bug!
+	source /env/bin/hush_hack 
+fi
+
+if [ -z $eth0.ethaddr ]; then
+	while [ -z $eth0.ethaddr ]; do
+		readline "no MAC address set for eth0. please enter the one found on your board: " eth0.ethaddr
+	done
+	echo -a /env/config "eth0.ethaddr=$eth0.ethaddr"
+	saveenv
+fi
+
+echo
+echo -n "Hit any key to stop autoboot: "
+timeout -a $autoboot_timeout
+if [ $? != 0 ]; then
+	echo
+	echo "type update_kernel [<imagename>] to update kernel into flash"
+	echo "type update_rootfs [<imagename>] to update rootfs into flash"
+	echo
+	exit
+fi
+
+boot
diff --git a/board/eukrea_cpuimx35/env/bin/update_kernel b/board/eukrea_cpuimx35/env/bin/update_kernel
new file mode 100644
index 0000000..f84d3c5
--- /dev/null
+++ b/board/eukrea_cpuimx35/env/bin/update_kernel
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+. /env/config
+image=$kernel
+
+part=/dev/nand0.kernel.bb
+
+. /env/bin/_update $2
diff --git a/board/eukrea_cpuimx35/env/bin/update_rootfs b/board/eukrea_cpuimx35/env/bin/update_rootfs
new file mode 100644
index 0000000..8017d9a
--- /dev/null
+++ b/board/eukrea_cpuimx35/env/bin/update_rootfs
@@ -0,0 +1,13 @@
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
+part=/dev/nand0.root.bb
+
+. /env/bin/_update $2
diff --git a/board/eukrea_cpuimx35/env/config b/board/eukrea_cpuimx35/env/config
new file mode 100644
index 0000000..b305f8c
--- /dev/null
+++ b/board/eukrea_cpuimx35/env/config
@@ -0,0 +1,32 @@
+#!/bin/sh
+
+# use 'dhcp' to do dhcp in barebox and in kernel
+# use 'no' if you don't want to pass the ip from barebox to the kernel
+#ip=dhcp
+
+# or set your networking parameters here
+#eth0.ipaddr=a.b.c.d
+#eth0.netmask=a.b.c.d
+#eth0.gateway=a.b.c.d
+#eth0.serverip=a.b.c.d
+
+# can be either 'net' or 'nand''
+kernel_loc=nand
+rootfs_loc=nand
+
+# can be either 'jffs2', or 'ubifs'
+rootfs_type=ubifs
+
+kernel=uImage-mx35-3-stack
+rootfs=root-mx35-3-stack
+envimage=u-boot-v2-environment-mx35-3-stack
+
+autoboot_timeout=3
+
+nfsroot="/path/to/nfs/root"
+bootargs="console=ttymxc0,115200"
+
+bootargs="$bootargs video=mx3fb:CTP-CLAA070LC0ACW"
+
+nand_parts="256k(barebox)ro,128k(bareboxenv),2176k(kernel),-(root)"
+rootfs_mtdblock_nand=3
diff --git a/board/eukrea_cpuimx35/eukrea_cpuimx35.c b/board/eukrea_cpuimx35/eukrea_cpuimx35.c
new file mode 100644
index 0000000..a450d83
--- /dev/null
+++ b/board/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -0,0 +1,354 @@
+/*
+ * Copyright (C) 2007 Sascha Hauer, Pengutronix
+ *               2009 Marc Kleine-Budde, Pengutronix
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
+#include <command.h>
+#include <environment.h>
+#include <errno.h>
+#include <fcntl.h>
+#include <fec.h>
+#include <fs.h>
+#include <init.h>
+#include <nand.h>
+#include <net.h>
+#include <partition.h>
+
+#include <asm/armlinux.h>
+#include <asm/io.h>
+#include <asm/mach-types.h>
+#include <asm/mmu.h>
+
+#include <mach/gpio.h>
+#include <mach/imx-nand.h>
+#include <mach/imx-regs.h>
+#include <mach/iomux-mx35.h>
+#include <mach/iomux-v3.h>
+#include <mach/pmic.h>
+#include <mach/imx-ipu-fb.h>
+#include <mach/imx-pll.h>
+
+static struct fec_platform_data fec_info = {
+	.xcv_type	= MII100,
+	.phy_addr	= 0x1F,
+};
+
+static struct device_d fec_dev = {
+	.name		= "fec_imx",
+	.map_base	= IMX_FEC_BASE,
+	.platform_data	= &fec_info,
+};
+
+static struct memory_platform_data sdram_pdata = {
+	.name	= "ram0",
+	.flags	= DEVFS_RDWR,
+};
+
+static struct device_d sdram_dev = {
+	.name		= "mem",
+	.map_base	= IMX_SDRAM_CS0,
+	.size		= 128 * 1024 * 1024,
+	.platform_data	= &sdram_pdata,
+};
+
+struct imx_nand_platform_data nand_info = {
+	.hw_ecc		= 1,
+	.flash_bbt	= 1,
+};
+
+static struct device_d nand_dev = {
+	.name		= "imx_nand",
+	.map_base	= IMX_NFC_BASE,
+	.platform_data	= &nand_info,
+};
+
+static struct fb_videomode CMO_QVGA = {
+	.name		= "CMO_QVGA",
+	.refresh	= 60,
+	.xres		= 320,
+	.yres		= 240,
+	.pixclock	= KHZ2PICOS(7000),
+	.left_margin	= 68,
+	.right_margin	= 20,
+	.upper_margin	= 15,
+	.lower_margin	= 4,
+	.hsync_len	= 30,
+	.vsync_len	= 3,
+	.sync		= FB_SYNC_OE_ACT_HIGH,
+	.vmode		= FB_VMODE_NONINTERLACED,
+	.flag		= 0,
+};
+
+static struct imx_ipu_fb_platform_data ipu_fb_data = {
+	.mode		= &CMO_QVGA,
+	.bpp		= 16,
+};
+
+static struct device_d imxfb_dev = {
+	.name		= "imx-ipu-fb",
+	.map_base	= 0x53fc0000,
+	.size		= 0x1000,
+	.platform_data	= &ipu_fb_data,
+};
+
+#ifdef CONFIG_MMU
+static void pcm043_mmu_init(void)
+{
+	mmu_init();
+
+	arm_create_section(0x80000000, 0x80000000, 128, PMD_SECT_DEF_CACHED);
+	arm_create_section(0x90000000, 0x80000000, 128, PMD_SECT_DEF_UNCACHED);
+
+	setup_dma_coherent(0x10000000);
+
+#if TEXT_BASE & (0x100000 - 1)
+#warning cannot create vector section. Adjust TEXT_BASE to a 1M boundary
+#else
+	arm_create_section(0x0,        TEXT_BASE,   1, PMD_SECT_DEF_UNCACHED);
+#endif
+	mmu_enable();
+}
+#else
+static void pcm043_mmu_init(void)
+{
+}
+#endif
+
+static int f3s_devices_init(void)
+{
+	pcm043_mmu_init();
+	nand_info.width = 1;
+	register_device(&nand_dev);
+
+	devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_raw");
+	dev_add_bb_dev("self_raw", "self0");
+	devfs_add_partition("nand0", 0x40000, 0x80000, PARTITION_FIXED, "env_raw");
+	dev_add_bb_dev("env_raw", "env0");
+
+	register_device(&fec_dev);
+
+	register_device(&sdram_dev);
+	register_device(&imxfb_dev);
+
+	armlinux_add_dram(&sdram_dev);
+	armlinux_set_bootparams((void *)0x80000100);
+	armlinux_set_architecture(MACH_TYPE_MX35_3DS);
+
+	return 0;
+}
+
+device_initcall(f3s_devices_init);
+
+static int f3s_enable_display(void)
+{
+	gpio_direction_output(1, 1);
+	gpio_direction_output(0, 0);
+	return 0;
+}
+
+late_initcall(f3s_enable_display);
+
+static struct device_d f3s_serial_device = {
+	.name		= "imx_serial",
+	.map_base	= IMX_UART1_BASE,
+	.size		= 4096,
+};
+
+static struct pad_desc f3s_pads[] = {
+	MX35_PAD_FEC_TX_CLK__FEC_TX_CLK,
+	MX35_PAD_FEC_RX_CLK__FEC_RX_CLK,
+	MX35_PAD_FEC_RX_DV__FEC_RX_DV,
+	MX35_PAD_FEC_COL__FEC_COL,
+	MX35_PAD_FEC_RDATA0__FEC_RDATA_0,
+	MX35_PAD_FEC_TDATA0__FEC_TDATA_0,
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
+
+	MX35_PAD_RXD1__UART1_RXD_MUX,
+	MX35_PAD_TXD1__UART1_TXD_MUX,
+	MX35_PAD_RTS1__UART1_RTS,
+	MX35_PAD_CTS1__UART1_CTS,
+
+	MX35_PAD_WDOG_RST__GPIO1_6,
+	MX35_PAD_D3_DRDY__GPIO1_0,
+};
+
+static int f3s_console_init(void)
+{
+	mxc_iomux_v3_setup_multiple_pads(f3s_pads, ARRAY_SIZE(f3s_pads));
+
+	register_device(&f3s_serial_device);
+	return 0;
+}
+
+console_initcall(f3s_console_init);
+
+static int f3s_core_init(void)
+{
+	u32 reg;
+
+	/* enable clock for I2C1 and FEC */
+	reg = readl(IMX_CCM_BASE + CCM_CGR1);
+	reg |= 0x3 << CCM_CGR1_FEC_SHIFT;
+	reg = writel(reg, IMX_CCM_BASE + CCM_CGR1);
+
+	/* AIPS setup - Only setup MPROTx registers. The PACR default values are good.*/
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
+	/*
+	 * M3IF Control Register (M3IFCTL)
+	 * MRRP[0] = L2CC0 not on priority list (0 << 0)	= 0x00000000
+	 * MRRP[1] = MAX1 not on priority list (0 << 0)		= 0x00000000
+	 * MRRP[2] = L2CC1 not on priority list (0 << 0)	= 0x00000000
+	 * MRRP[3] = USB  not on priority list (0 << 0)		= 0x00000000
+	 * MRRP[4] = SDMA not on priority list (0 << 0)		= 0x00000000
+	 * MRRP[5] = GPU not on priority list (0 << 0)		= 0x00000000
+	 * MRRP[6] = IPU1 on priority list (1 << 6)		= 0x00000040
+	 * MRRP[7] = IPU2 not on priority list (0 << 0)		= 0x00000000
+	 *                                                       ------------
+	 *                                                        0x00000040
+	 */
+	writel(0x40, IMX_M3IF_BASE);
+
+	return 0;
+}
+
+core_initcall(f3s_core_init);
+
+#define MPCTL_PARAM_399     (IMX_PLL_PD(0) | IMX_PLL_MFD(15) | IMX_PLL_MFI(8) | IMX_PLL_MFN(5))
+#define MPCTL_PARAM_532     ((1 << 31) | IMX_PLL_PD(0) | IMX_PLL_MFD(11) | IMX_PLL_MFI(11) | IMX_PLL_MFN(1))
+
+static int do_cpufreq(struct command *cmdtp, int argc, char *argv[])
+{
+	unsigned long freq;
+
+	if (argc != 2)
+		return COMMAND_ERROR_USAGE;
+
+	freq = simple_strtoul(argv[1], NULL, 0);
+
+	switch (freq) {
+	case 399:
+		writel(MPCTL_PARAM_399, IMX_CCM_BASE + CCM_MPCTL);
+		break;
+	case 532:
+		writel(MPCTL_PARAM_532, IMX_CCM_BASE + CCM_MPCTL);
+		break;
+	default:
+		return COMMAND_ERROR_USAGE;
+	}
+
+	printf("Switched CPU frequency to %dMHz\n", freq);
+
+	return 0;
+}
+
+static const __maybe_unused char cmd_cpufreq_help[] =
+"Usage: cpufreq 399|532\n"
+"\n"
+"Set CPU frequency to <freq> MHz\n";
+
+BAREBOX_CMD_START(cpufreq)
+	.cmd            = do_cpufreq,
+	.usage          = "adjust CPU frequency",
+	BAREBOX_CMD_HELP(cmd_cpufreq_help)
+BAREBOX_CMD_END
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
diff --git a/board/eukrea_cpuimx35/flash_header.c b/board/eukrea_cpuimx35/flash_header.c
new file mode 100644
index 0000000..1c150e6
--- /dev/null
+++ b/board/eukrea_cpuimx35/flash_header.c
@@ -0,0 +1,60 @@
+#include <common.h>
+#include <mach/imx-flash-header.h>
+
+extern unsigned long _stext;
+
+void __naked __flash_header_start go(void)
+{
+	__asm__ __volatile__("b _start\n");
+}
+
+struct imx_dcd_entry __dcd_entry_0x400 dcd_entry[] = {
+	{ .ptr_type = 4, .addr = 0xB8001010, .val = 0x00000004, },
+	{ .ptr_type = 4, .addr = 0xB8001010, .val = 0x0000000C, },
+	{ .ptr_type = 4, .addr = 0xB8001004, .val = 0x007ffc3f, },
+	{ .ptr_type = 4, .addr = 0xB8001000, .val = 0x92220000, },
+	{ .ptr_type = 1, .addr = 0x80000400, .val = 0x12345678, },
+	{ .ptr_type = 4, .addr = 0xB8001000, .val = 0xA2220000, },
+	{ .ptr_type = 1, .addr = 0x80000000, .val = 0x87654321, },
+	{ .ptr_type = 1, .addr = 0x80000000, .val = 0x87654321, },
+	{ .ptr_type = 4, .addr = 0xB8001000, .val = 0xB2220000, },
+	{ .ptr_type = 1, .addr = 0x80000033, .val = 0xda, },
+	{ .ptr_type = 1, .addr = 0x82000000, .val = 0xda, },
+	{ .ptr_type = 4, .addr = 0xB8001004, .val = 0x007ffc2f, },
+	{ .ptr_type = 4, .addr = 0xB8001004, .val = 0x007ffc2f, },
+	{ .ptr_type = 4, .addr = 0xB8001004, .val = 0x007ffc2f, },
+	{ .ptr_type = 4, .addr = 0xB8001004, .val = 0x007ffc2f, },
+	{ .ptr_type = 4, .addr = 0xB8001004, .val = 0x007ffc2f, },
+	{ .ptr_type = 4, .addr = 0xB8001004, .val = 0x007ffc2f, },
+	{ .ptr_type = 4, .addr = 0xB8001004, .val = 0x007ffc2f, },
+	{ .ptr_type = 4, .addr = 0xB8001004, .val = 0x007ffc2f, },
+	{ .ptr_type = 4, .addr = 0xB8001004, .val = 0x007ffc2f, },
+	{ .ptr_type = 4, .addr = 0xB8001004, .val = 0x007ffc2f, },
+	{ .ptr_type = 4, .addr = 0xB8001004, .val = 0x007ffc2f, },
+	{ .ptr_type = 4, .addr = 0xB8001004, .val = 0x007ffc2f, },
+	{ .ptr_type = 4, .addr = 0xB8001004, .val = 0x007ffc2f, },
+	{ .ptr_type = 4, .addr = 0xB8001000, .val = 0x82220080, },
+	{ .ptr_type = 4, .addr = 0xB8001000, .val = 0x82228080, },
+	{ .ptr_type = 4, .addr = 0xB8001020, .val = 0x80000028, },
+	{ .ptr_type = 4, .addr = 0xB8001024, .val = 0x80000028, },
+	{ .ptr_type = 4, .addr = 0xB8001028, .val = 0x80000028, },
+	{ .ptr_type = 4, .addr = 0xB800102c, .val = 0x80000028, },
+	{ .ptr_type = 4, .addr = 0xB8001030, .val = 0x80000028, },
+};
+
+#define APP_DEST	0x80000000
+
+struct imx_flash_header __flash_header_0x400 flash_header = {
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
+unsigned long __image_len_0x400 barebox_len = 0x40000;
+
diff --git a/board/eukrea_cpuimx35/lowlevel_init.S b/board/eukrea_cpuimx35/lowlevel_init.S
new file mode 100644
index 0000000..a7dd53d
--- /dev/null
+++ b/board/eukrea_cpuimx35/lowlevel_init.S
@@ -0,0 +1,285 @@
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
+
+#include <mach/imx-regs.h>
+#include <mach/imx-pll.h>
+#include <mach/esdctl.h>
+#include <asm/cache-l2x0.h>
+#include "board-mx35_3stack.h"
+
+#define CSD0_BASE_ADDR		0x80000000
+#define ESDCTL_BASE_ADDR	0xB8001000
+#define CSD1_BASE_ADDR		0x90000000
+
+#define writel(val, reg) \
+	ldr		r0,	=reg;	\
+	ldr		r1,	=val;	\
+	str		r1,	[r0];
+
+#define writeb(val, reg) \
+	ldr		r0,	=reg;	\
+	ldr		r1,	=val;	\
+	strb		r1,	[r0];
+
+/* Assuming 24MHz input clock */
+#define MPCTL_PARAM_399	(IMX_PLL_PD(0) | IMX_PLL_MFD(15) | IMX_PLL_MFI(8) | IMX_PLL_MFN(5))
+#define MPCTL_PARAM_532	((1 << 31) | IMX_PLL_PD(0) | IMX_PLL_MFD(11) | IMX_PLL_MFI(11) | IMX_PLL_MFN(1))
+#define PPCTL_PARAM_300	(IMX_PLL_PD(0) | IMX_PLL_MFD(3) | IMX_PLL_MFI(6) | IMX_PLL_MFN(1))
+
+	.section ".text_bare_init","ax"
+
+ARM_PPMRR:		.word	0x40000015
+L2CACHE_PARAM:		.word	0x00030024
+CCM_CCMR_W:		.word	0x003F4208
+CCM_PDR0_W:		.word	0x00001000
+MPCTL_PARAM_399_W:	.word	MPCTL_PARAM_399
+MPCTL_PARAM_532_W:	.word	MPCTL_PARAM_532
+PPCTL_PARAM_W:		.word	PPCTL_PARAM_300
+CCM_BASE_ADDR_W:	.word	IMX_CCM_BASE
+
+.globl board_init_lowlevel
+board_init_lowlevel:
+	mov	r10, lr
+
+	mrc	15, 0, r1, c1, c0, 0
+
+	mrc	15, 0, r0, c1, c0, 1
+	orr	r0, r0, #7
+	mcr	15, 0, r0, c1, c0, 1
+
+	orr	r1, r1, #(1 << 11)		/* Flow prediction (Z) */
+	orr	r1, r1, #(1 << 22)		/* unaligned accesses */
+	orr	r1, r1, #(1 << 21)		/* Low Int Latency */
+
+	mcr	15, 0, r1, c1, c0, 0
+
+	mov	r0, #0
+	mcr	15, 0, r0, c15, c2, 4
+
+	/*
+	 * Branch predicition is now enabled. Flush the BTAC to ensure a valid
+	 * starting point. Don't flush BTAC while it is disabled to avoid
+	 * ARM1136 erratum 408023.
+	 */
+	mov	r0, #0
+	mcr	p15, 0, r0, c7, c5, 6		/* flush entire BTAC */
+
+	mov	r0, #0
+	mcr	15, 0, r0, c7, c7, 0		/* invalidate I cache and D cache */
+	mcr	15, 0, r0, c8, c7, 0		/* invalidate TLBs */
+	mcr	15, 0, r0, c7, c10, 4		/* Drain the write buffer */
+
+	/* Also setup the Peripheral Port Remap register inside the core */
+	ldr	r0, ARM_PPMRR			/* start from AIPS 2GB region */
+	mcr	p15, 0, r0, c15, c2, 4
+
+/*
+ * End of ARM1136 init
+ */
+	ldr	r0, CCM_BASE_ADDR_W
+
+	ldr	r2, CCM_CCMR_W
+	str	r2, [r0, #CCM_CCMR]
+
+	ldr	r3, MPCTL_PARAM_532_W		/* consumer path*/
+
+	/* Set MPLL, arm clock and ahb clock */
+	str	r3, [r0, #CCM_MPCTL]
+
+	ldr	r1, PPCTL_PARAM_W
+	str	r1, [r0, #CCM_PPCTL]
+
+	ldr	r1, CCM_PDR0_W
+	str	r1, [r0, #CCM_PDR0]
+
+	ldr	r1, [r0, #CCM_CGR0]
+	orr	r1, r1, #0x00300000
+	str	r1, [r0, #CCM_CGR0]
+
+	ldr	r1, [r0, #CCM_CGR1]
+	orr	r1, r1, #0x00000C00
+	orr	r1, r1, #0x00000003
+	str	r1, [r0, #CCM_CGR1]
+
+	/* Skip SDRAM initialization if we run from RAM */
+/*	cmp	pc, #0x80000000
+	bls	1f
+	cmp	pc, #0x90000000
+	bhi	1f
+*/
+	mov	pc, r10
+#if 0
+1:
+	ldr	r0, =ESDCTL_BASE_ADDR
+	mov	r3, #0x2000
+	str	r3, [r0, #0x0]
+	str	r3, [r0, #0x8]
+
+	/* ip(r12) has used to save lr register in upper calling */
+	mov	fp, lr
+
+	mov	r5, #0x00
+	mov	r2, #0x00
+	mov	r1, #CSD0_BASE_ADDR
+	bl	setup_sdram_bank
+	cmp	r3, #0x0
+	orreq	r5, r5, #1
+	eorne	r2, r2, #0x1
+	blne	setup_sdram_bank
+
+	mov	lr, fp
+
+	ldr	r3, =ESDCTL_DELAY_LINE5
+	str	r3, [r0, #0x30]
+
+#ifdef CONFIG_NAND_IMX_BOOT
+	ldr	sp, =TEXT_BASE - 4		/* Setup a temporary stack in SDRAM */
+
+	ldr	r0, =IMX_NFC_BASE		/* start of NFC SRAM */
+	ldr	r2, =IMX_NFC_BASE + 0x800	/* end of NFC SRAM */
+
+	/* skip NAND boot if not running from NFC space */
+	cmp	pc, r0
+	blo	ret
+	cmp	pc, r2
+	bhs	ret
+
+	/* Move ourselves out of NFC SRAM */
+	ldr r1, =TEXT_BASE
+
+copy_loop:
+	ldmia	r0!, {r3-r9}			/* copy from source address [r0] */
+	stmia	r1!, {r3-r9}			/* copy to   target address [r1] */
+	cmp	r0, r2				/* until source end addreee [r2] */
+	ble	copy_loop
+
+	ldr	pc, =1f				/* Jump to SDRAM */
+1:
+	bl	nand_boot			/* Load barebox from NAND Flash */
+
+	/* rebase the return address */
+	ldr	r1, =IMX_NFC_BASE - TEXT_BASE
+	sub	r10, r10, r1			/* adjust return address from NFC SRAM */
+ret:
+#endif /* CONFIG_NAND_IMX_BOOT */
+
+	mov	pc, r10
+
+/*
+ * r0: ESDCTL control base, r1: sdram slot base
+ * r2: DDR type (0: DDR2, 1: MDDR) r3, r4: working base
+ */
+setup_sdram_bank:
+	mov	r3, #0xE			/* 0xA + 0x4 */
+	tst	r2, #0x1
+	orreq	r3, r3, #0x300			/* DDR2 */
+	str	r3, [r0, #0x10]
+	bic	r3, r3, #0x00A
+	str	r3, [r0, #0x10]
+	beq	2f
+
+	mov	r3, #0x20000
+1:	subs	r3, r3, #1
+	bne	1b
+
+2:	tst	r2, #0x1
+	ldreq	r3, =ESDCTL_DDR2_CONFIG
+	ldrne	r3, =ESDCTL_MDDR_CONFIG
+	cmp	r1, #CSD1_BASE_ADDR
+	strlo	r3, [r0, #0x4]
+	strhs	r3, [r0, #0xC]
+
+	ldr	r3, =ESDCTL_0x92220000
+	strlo	r3, [r0, #0x0]
+	strhs	r3, [r0, #0x8]
+	mov	r3, #0xDA
+	ldr	r4, =ESDCTL_PRECHARGE
+	strb	r3, [r1, r4]
+
+	tst	r2, #0x1
+	bne	skip_set_mode
+
+	cmp	r1, #CSD1_BASE_ADDR
+	ldr	r3, =ESDCTL_0xB2220000
+	strlo	r3, [r0, #0x0]
+	strhs	r3, [r0, #0x8]
+	mov	r3, #0xDA
+	ldr	r4, =ESDCTL_DDR2_EMR2
+	strb	r3, [r1, r4]
+	ldr	r4, =ESDCTL_DDR2_EMR3
+	strb	r3, [r1, r4]
+	ldr	r4, =ESDCTL_DDR2_EN_DLL
+	strb	r3, [r1, r4]
+	ldr	r4, =ESDCTL_DDR2_RESET_DLL
+	strb	r3, [r1, r4]
+
+	ldr	r3, =ESDCTL_0x92220000
+	strlo	r3, [r0, #0x0]
+	strhs	r3, [r0, #0x8]
+	mov	r3, #0xDA
+	ldr	r4, =ESDCTL_PRECHARGE
+	strb	r3, [r1, r4]
+
+skip_set_mode:
+	cmp	r1, #CSD1_BASE_ADDR
+	ldr	r3, =ESDCTL_0xA2220000
+	strlo	r3, [r0, #0x0]
+	strhs	r3, [r0, #0x8]
+	mov	r3, #0xDA
+	strb	r3, [r1]
+	strb	r3, [r1]
+
+	ldr	r3, =ESDCTL_0xB2220000
+	strlo	r3, [r0, #0x0]
+	strhs	r3, [r0, #0x8]
+	tst	r2, #0x1
+	ldreq	r4, =ESDCTL_DDR2_MR
+	ldrne	r4, =ESDCTL_MDDR_MR
+	mov	r3, #0xDA
+	strb	r3, [r1, r4]
+	ldreq	r4, =ESDCTL_DDR2_OCD_DEFAULT
+	streqb	r3, [r1, r4]
+	ldreq	r4, =ESDCTL_DDR2_EN_DLL
+	ldrne	r4, =ESDCTL_MDDR_EMR
+	strb	r3, [r1, r4]
+
+	cmp	r1, #CSD1_BASE_ADDR
+	ldr	r3, =ESDCTL_0x82228080
+	strlo	r3, [r0, #0x0]
+	strhs	r3, [r0, #0x8]
+
+	tst	r2, #0x1
+	moveq	r4, #0x20000
+	movne	r4, #0x200
+1:	subs	r4, r4, #1
+	bne	1b
+
+	str	r3, [r1, #0x100]
+	ldr	r4, [r1, #0x100]
+	cmp	r3, r4
+	movne	r3, #1
+	moveq	r3, #0
+
+	mov	pc, lr
+
+#endif
-- 
1.6.3.3


--------------050702040709080608090509
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--------------050702040709080608090509--
