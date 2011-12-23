Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Re4Nu-0005xS-Q5
 for barebox@lists.infradead.org; Fri, 23 Dec 2011 12:38:06 +0000
From: Juergen Kilb <J.Kilb@phytec.de>
Date: Fri, 23 Dec 2011 13:37:49 +0100
Message-Id: <1324643869-11016-1-git-send-email-J.Kilb@phytec.de>
In-Reply-To: <20111222173227.GZ27267@pengutronix.de>
References: <20111222173227.GZ27267@pengutronix.de>
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
Subject: [PATCH V2 1/2] Add support for the Phytec phyCARD-A-L1 (PCA-A-L1).
To: barebox@lists.infradead.org
Cc: Juergen Kilb <J.Kilb@phytec.de>

Signed-off-by: Juergen Kilb <J.Kilb@phytec.de>
---

V2:
- removed unused defines in config.h
- removed hardcoded ip addresses in the default environment, switched to dhcp mode.
- removed kernelimage_type from the default_environment, bootm handles this now.
- removed unnecessary return in pcaal1_sdrc_init().
- removed #ifdef around the console device.
- fixed indention of struct smsc_cfg.
- deleted platfrom.s and replaced it with lowlevel.c.
- disabled bootu and bootm in defconfig.

 Documentation/boards.dox                  |    1 +
 arch/arm/Makefile                         |    1 +
 arch/arm/boards/phycard-a-l1/Makefile     |   22 ++
 arch/arm/boards/phycard-a-l1/config.h     |   22 ++
 arch/arm/boards/phycard-a-l1/env/config   |   78 +++++++
 arch/arm/boards/phycard-a-l1/lowlevel.c   |   39 ++++
 arch/arm/boards/phycard-a-l1/pca-a-l1.c   |  350 +++++++++++++++++++++++++++++
 arch/arm/boards/phycard-a-l1/pca-a-l1.dox |   16 ++
 arch/arm/boards/phycard-a-l1/pca-a-l1.h   |   35 +++
 arch/arm/boards/phycard-a-l1/platform.S   |   65 ++++++
 arch/arm/configs/phycard_a_l1_defconfig   |  183 +++++++++++++++
 arch/arm/mach-omap/Kconfig                |   10 +-
 12 files changed, 821 insertions(+), 1 deletions(-)
 create mode 100644 arch/arm/boards/phycard-a-l1/Makefile
 create mode 100644 arch/arm/boards/phycard-a-l1/config.h
 create mode 100644 arch/arm/boards/phycard-a-l1/env/config
 create mode 100644 arch/arm/boards/phycard-a-l1/lowlevel.c
 create mode 100644 arch/arm/boards/phycard-a-l1/pca-a-l1.c
 create mode 100644 arch/arm/boards/phycard-a-l1/pca-a-l1.dox
 create mode 100644 arch/arm/boards/phycard-a-l1/pca-a-l1.h
 create mode 100644 arch/arm/boards/phycard-a-l1/platform.S
 create mode 100644 arch/arm/configs/phycard_a_l1_defconfig

diff --git a/Documentation/boards.dox b/Documentation/boards.dox
index 1407479..ba332a7 100644
--- a/Documentation/boards.dox
+++ b/Documentation/boards.dox
@@ -36,6 +36,7 @@ ARM type:
 @li @subpage edb9315
 @li @subpage edb9315a
 @li @subpage board_cupid
+@li @subpage phycard-a-l1
 
 Blackfin type:
 
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index a3e12e6..b14934c 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -93,6 +93,7 @@ board-$(CONFIG_MACH_OMAP3EVM)			:= omap
 board-$(CONFIG_MACH_PANDA)			:= panda
 board-$(CONFIG_MACH_PCM049)			:= pcm049
 board-$(CONFIG_MACH_PCA100)			:= phycard-i.MX27
+board-$(CONFIG_MACH_PCAAL1)			:= phycard-a-l1
 board-$(CONFIG_MACH_PCM037)			:= pcm037
 board-$(CONFIG_MACH_PCM038)			:= pcm038
 board-$(CONFIG_MACH_PCM043)			:= pcm043
diff --git a/arch/arm/boards/phycard-a-l1/Makefile b/arch/arm/boards/phycard-a-l1/Makefile
new file mode 100644
index 0000000..cb0106b
--- /dev/null
+++ b/arch/arm/boards/phycard-a-l1/Makefile
@@ -0,0 +1,22 @@
+# (C) Copyright 2011 Juergen Kilb <j.kilb@phytec.de>
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
+
+obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel.o
+obj-y += pca-a-l1.o
diff --git a/arch/arm/boards/phycard-a-l1/config.h b/arch/arm/boards/phycard-a-l1/config.h
new file mode 100644
index 0000000..811b7ac
--- /dev/null
+++ b/arch/arm/boards/phycard-a-l1/config.h
@@ -0,0 +1,22 @@
+/*
+ * (C) Copyright 2011 Jurgen Kilb <j.kilb@phytec.de>
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
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#endif /* __CONFIG_H */
diff --git a/arch/arm/boards/phycard-a-l1/env/config b/arch/arm/boards/phycard-a-l1/env/config
new file mode 100644
index 0000000..4a648b9
--- /dev/null
+++ b/arch/arm/boards/phycard-a-l1/env/config
@@ -0,0 +1,78 @@
+#!/bin/sh
+
+machine=pcaal1
+#user=
+
+# Enter MAC address here if not retrieved automatically
+#eth0.ethaddr=de:ad:be:ef:00:00
+
+# use 'dhcp' to do dhcp in barebox and in kernel
+# use 'none' if you want to skip kernel ip autoconfiguration
+ip=dhcp
+
+# or set your networking parameters here
+#eth0.ipaddr=a.b.c.d
+#eth0.netmask=a.b.c.d
+#eth0.serverip=a.b.c.d
+#eth0.gateway=a.b.c.d
+
+# can be either 'tftp', 'nfs', 'nand' or 'disk'
+kernel_loc=nand
+# can be either 'net', 'nand', 'disk' or 'initrd'
+rootfs_loc=nand
+
+# for flash based rootfs: 'jffs2' or 'ubifs'
+# in case of disk any regular filesystem like 'ext2', 'ext3', 'reiserfs'
+rootfs_type=jffs2
+# where is the rootfs in case of 'rootfs_loc=disk' (linux name)
+rootfs_part_linux_dev=mmcblk0p4
+rootfsimage=rootfs-${machine}.$rootfs_type
+
+# where is the kernel image in case of 'kernel_loc=disk'
+kernel_part=disk0.2
+
+# The image type of the kernel. Can be uimage, zimage, raw or raw_lzo
+#kernelimage=zImage-$machine
+kernelimage=uImage-$machine
+#kernelimage=Image-$machine
+#kernelimage=Image-$machine.lzo
+
+bareboximage=barebox-${machine}.bin
+bareboxenvimage=barebox-${machine}.bin
+
+if [ -n $user ]; then
+	bareboximage="$user"-"$bareboximage"
+	bareboxenvimage="$user"-"$bareboxenvimage"
+	kernelimage="$user"-"$kernelimage"
+	rootfsimage="$user"-"$rootfsimage"
+	nfsroot="/home/$user/nfsroot/$machine"
+else
+	nfsroot="/path/to/nfs/root"
+fi
+
+autoboot_timeout=3
+
+bootargs="console=ttyO2,115200"
+
+# the following displays are supported
+# pd050vl1 (640 x 480)
+# pd035vl1 (640 x 480)
+# pd104slf (800 x 600)
+# pm070wl4 (800 x 480)
+#
+# omapfb.mode=<display>:<mode>,[,...]
+# omapfb.debug=<y|n>
+#        - Enable debug printing. You have to have OMAPFB debug support enabled
+#          in kernel config.
+#
+bootargs="$bootargs omapdss.def_disp=pd050vl1"
+#bootargs="$bootargs omapdss.def_disp=pd035vl1"
+#bootargs="$bootargs omapdss.def_disp=pd104slf"
+#bootargs="$bootargs omapdss.def_disp=pm070wl4"
+
+nand_parts="512k(x-loader)ro,1920k(barebox),128k(bareboxenv),4M(kernel),-(root)"
+nand_device=omap2-nand.0
+rootfs_mtdblock_nand=4
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
diff --git a/arch/arm/boards/phycard-a-l1/lowlevel.c b/arch/arm/boards/phycard-a-l1/lowlevel.c
new file mode 100644
index 0000000..bffbb08
--- /dev/null
+++ b/arch/arm/boards/phycard-a-l1/lowlevel.c
@@ -0,0 +1,39 @@
+/*
+ * (C) Copyright 2011
+ * Phytec Messtechnik GmbH <www.phytec.de>
+ * Juergen Kilb <j.kilb@phytec.de>
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
+#include <asm/barebox-arm.h>
+#include <mach/sdrc.h>
+#include <mach/omap3-silicon.h>
+
+void __naked board_init_lowlevel(void)
+{
+	uint32_t r;
+
+	/* setup a stack */
+	r = OMAP_SRAM_STACK;
+	__asm__ __volatile__("mov sp, %0" : : "r"(r));
+
+	board_init();
+
+	board_init_lowlevel_return();
+}
diff --git a/arch/arm/boards/phycard-a-l1/pca-a-l1.c b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
new file mode 100644
index 0000000..6fe27b7
--- /dev/null
+++ b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
@@ -0,0 +1,350 @@
+/**
+ * @file
+ * @brief Board Initialization routines for the phyCARD-A-L1
+ *
+ * FileName: arch/arm/boards/phycard-a-l1/pca-a-l1.c
+ *
+ * This board is based on OMAP3530.
+ * More on OMAP3530 (including documentation can be found here):
+ * http://focus.ti.com/docs/prod/folders/print/omap3530.html
+ *
+ * This file provides initialization in two stages:
+ * @li Boot time initialization - just get SDRAM working.
+ * This is run from SRAM - so no case constructs and global vars can be used.
+ * @li Run time initialization - this is for the rest of the initializations
+ * such as flash, uart etc.
+ *
+ * Boot time initialization includes:
+ * @li SDRAM initialization.
+ * @li Pin Muxing relevant for the EVM.
+ *
+ * Run time initialization includes
+ * @li serial @ref serial_ns16550.c driver device definition
+ *
+ * Originally from arch/arm/boards/omap/board-beagle.c
+ */
+
+/*
+ * Copyright (C) 2011 Phytec Messtechnik GmbH - http://www.phytec.de/
+ * Juergen Kilb <j.kilb@phytec.de>
+ *
+ * based on code from Texas Instruments / board-beagle.c
+ * Copyright (C) 2009 Texas Instruments Incorporated - http://www.ti.com/
+ * Sanjeev Premi <premi@ti.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2 as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <console.h>
+#include <driver.h>
+#include <errno.h>
+#include <init.h>
+#include <nand.h>
+#include <ns16550.h>
+#include <partition.h>
+#include <sizes.h>
+#include <asm/armlinux.h>
+#include <asm/io.h>
+#include <generated/mach-types.h>
+#include <linux/err.h>
+#include <mach/control.h>
+#include <mach/gpmc.h>
+#include <mach/gpmc_nand.h>
+#include <mach/omap_hsmmc.h>
+#include <mach/xload.h>
+#include <partition.h>
+#include <nand.h>
+#include <mach/omap3-mux.h>
+#include <mach/sdrc.h>
+#include <mach/silicon.h>
+#include <mach/sys_info.h>
+#include <mach/syslib.h>
+#include <mach/xload.h>
+
+#include "pca-a-l1.h"
+
+#define SMC911X_BASE 0x2c000000
+
+/*
+ * Boot-time initialization(s)
+ */
+
+/**
+ * @brief Initialize the SDRC module
+ * Initialisation for 1x256MByte but normally
+ * done by x-loader.
+ * @return void
+ */
+static void pcaal1_sdrc_init(void)
+{
+	/* SDRAM software reset */
+	/* No idle ack and RESET enable */
+	writel(0x1A, SDRC_REG(SYSCONFIG));
+	sdelay(100);
+	/* No idle ack and RESET disable */
+	writel(0x18, SDRC_REG(SYSCONFIG));
+
+	/* SDRC Sharing register */
+	/* 32-bit SDRAM on data lane [31:0] - CS0 */
+	/* pin tri-stated = 1 */
+	writel(0x00000100, SDRC_REG(SHARING));
+
+	/* ----- SDRC Registers Configuration --------- */
+	/* SDRC_MCFG0 register */
+	writel(0x03588099, SDRC_REG(MCFG_0));
+
+	/* SDRC_RFR_CTRL0 register */
+	writel(0x0004e201, SDRC_REG(RFR_CTRL_0));
+
+	/* SDRC_ACTIM_CTRLA0 register */
+	writel(0x629DB4C6, SDRC_REG(ACTIM_CTRLA_0));
+
+	/* SDRC_ACTIM_CTRLB0 register */
+	writel(0x00011113, SDRC_REG(ACTIM_CTRLB_0));
+
+	/* Disble Power Down of CKE due to 1 CKE on combo part */
+	writel(0x00000081, SDRC_REG(POWER));
+
+	/* SDRC_MANUAL command register */
+	/* NOP command */
+	writel(0x00000000, SDRC_REG(MANUAL_0));
+	/* Precharge command */
+	writel(0x00000001, SDRC_REG(MANUAL_0));
+	/* Auto-refresh command */
+	writel(0x00000002, SDRC_REG(MANUAL_0));
+	/* Auto-refresh command */
+	writel(0x00000002, SDRC_REG(MANUAL_0));
+
+	/* SDRC MR0 register Burst length=4 */
+	writel(0x00000032, SDRC_REG(MR_0));
+
+	/* SDRC DLLA control register */
+	writel(0x0000000A, SDRC_REG(DLLA_CTRL));
+}
+
+/**
+ * @brief Do the necessary pin muxing required for phyCARD-A-L1.
+ * Some pins in OMAP3 do not have alternate modes.
+ * We don't program these pins.
+ *
+ * See @ref MUX_VAL for description of the muxing mode.
+ *
+ * @return void
+ */
+static void pcaal1_mux_config(void)
+{
+	/*
+	 * Serial Interface
+	 */
+	MUX_VAL(CP(UART3_CTS_RCTX),	(IEN  | PTD | EN  | M0));
+	MUX_VAL(CP(UART3_RTS_SD),	(IDIS | PTD | DIS | M0));
+	MUX_VAL(CP(UART3_RX_IRRX),	(IEN  | PTD | EN  | M0));
+	MUX_VAL(CP(UART3_TX_IRTX),	(IDIS | PTD | DIS | M0));
+
+	/* GPMC */
+	MUX_VAL(CP(GPMC_A1),		(IDIS | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_A2),		(IDIS | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_A3),		(IDIS | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_A4),		(IDIS | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_A5),		(IDIS | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_A6),		(IDIS | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_A7),		(IDIS | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_A8),		(IDIS | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_A9),		(IDIS | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_A10),		(IDIS | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_D0),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_D1),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_D2),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_D3),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_D4),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_D5),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_D6),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_D7),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_D8),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_D9),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_D10),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_D11),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_D12),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_D13),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_D14),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_D15),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_NCS0),		(IDIS | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_NADV_ALE),	(IDIS | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_NOE),		(IDIS | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_NWE),		(IDIS | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_NBE0_CLE),	(IDIS | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_NWP),		(IEN  | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_WAIT0),		(IEN  | PTU | EN  | M0));
+
+	/* ETH_PME (GPIO_55) */
+	MUX_VAL(CP(GPMC_NCS4),		(IDIS | PTU | EN  | M4));
+	/* #CS5 (Ethernet) */
+	MUX_VAL(CP(GPMC_NCS5),		(IDIS | PTU | EN  | M0));
+	/* ETH_FIFO_SEL (GPIO_57) */
+	MUX_VAL(CP(GPMC_NCS6),		(IDIS | PTD | EN  | M4));
+	/* ETH_AMDIX_EN (GPIO_58) */
+	MUX_VAL(CP(GPMC_NCS7),		(IDIS | PTU | EN  | M4));
+	/* ETH_nRST (GPIO_64) */
+	MUX_VAL(CP(GPMC_WAIT2),		(IDIS | PTU | EN  | M4));
+
+	/* HSMMC1 */
+	MUX_VAL(CP(MMC1_CLK),		(IDIS | PTU | EN  | M0));
+	MUX_VAL(CP(MMC1_CMD),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(MMC1_DAT0),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(MMC1_DAT1),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(MMC1_DAT2),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(MMC1_DAT3),		(IEN  | PTU | EN  | M0));
+
+	/* USBOTG_nRST (GPIO_63) */
+	MUX_VAL(CP(GPMC_WAIT1),		(IDIS | PTU | EN  | M4));
+
+	/* USBH_nRST (GPIO_65) */
+	MUX_VAL(CP(GPMC_WAIT3),		(IDIS | PTU | EN  | M4));
+}
+
+/**
+ * @brief The basic entry point for board initialization.
+ *
+ * This is called as part of machine init (after arch init).
+ * This is again called with stack in SRAM, so not too many
+ * constructs possible here.
+ *
+ * @return void
+ */
+void board_init(void)
+{
+	int in_sdram = running_in_sdram();
+
+	pcaal1_mux_config();
+	/* Dont reconfigure SDRAM while running in SDRAM! */
+	if (!in_sdram)
+		pcaal1_sdrc_init();
+}
+
+/*
+ * Run-time initialization(s)
+ */
+static struct NS16550_plat serial_plat = {
+	.clock	= 48000000,      /* 48MHz (APLL96/2) */
+	.shift	= 2,
+};
+
+/**
+ * @brief Initialize the serial port to be used as console.
+ *
+ * @return result of device registration
+ */
+static int pcaal1_init_console(void)
+{
+	add_ns16550_device(-1, OMAP_UART3_BASE, 1024, IORESOURCE_MEM_8BIT,
+			   &serial_plat);
+
+	return 0;
+}
+console_initcall(pcaal1_init_console);
+
+#ifdef CONFIG_DRIVER_NET_SMC911X
+/** GPMC timing for our SMSC9221 device */
+static struct gpmc_config smsc_cfg = {
+	.cfg = {
+		0x41001000,	/*CONF1 */
+		0x00040500,	/*CONF2 */
+		0x00000000,	/*CONF3 */
+		0x04000500,	/*CONF4 */
+		0x05050505,	/*CONF5 */
+		0x000002c1,	/*CONF6 */
+	},
+	.base = SMC911X_BASE,
+	/* GPMC address map as small as possible */
+	.size = GPMC_SIZE_16M,
+};
+
+/*
+ * Routine: setup_net_chip
+ * Description: Setting up the configuration GPMC registers specific to the
+ *            Ethernet hardware.
+ */
+static void pcaal1_setup_net_chip(void)
+{
+	gpmc_cs_config(5, &smsc_cfg);
+}
+#endif
+
+static int pcaal1_mem_init(void)
+{
+
+#ifdef CONFIG_GPMC
+	/*
+	 * WP is made high and WAIT1 active Low
+	 */
+	gpmc_generic_init(0x10);
+#endif
+
+	arm_add_mem_device("ram0", OMAP_SDRC_CS0, get_sdr_cs_size(SDRC_CS0_OSET));
+
+	if ((get_sdr_cs_size(SDRC_CS1_OSET) != 0) && (get_sdr_cs1_base() != OMAP_SDRC_CS0))
+		arm_add_mem_device("ram1", get_sdr_cs1_base(), get_sdr_cs_size(SDRC_CS1_OSET));
+
+	return 0;
+}
+mem_initcall(pcaal1_mem_init);
+
+#ifdef CONFIG_MCI_OMAP_HSMMC
+struct omap_hsmmc_platform_data pcaal1_hsmmc_plat = {
+	.f_max = 26000000,
+};
+#endif
+
+static int pcaal1_init_devices(void)
+{
+#ifdef CONFIG_MCI_OMAP_HSMMC
+	add_generic_device("omap-hsmmc", -1, NULL, OMAP_MMC1_BASE, SZ_4K,
+			   IORESOURCE_MEM, &pcaal1_hsmmc_plat);
+#endif
+
+#ifdef CONFIG_DRIVER_NET_SMC911X
+	pcaal1_setup_net_chip();
+	add_generic_device("smc911x", -1, NULL, SMC911X_BASE, SZ_4K,
+			   IORESOURCE_MEM, NULL);
+#endif
+
+	armlinux_set_bootparams((void *)0x80000100);
+	armlinux_set_architecture(MACH_TYPE_PCAAL1);
+
+	return 0;
+}
+device_initcall(pcaal1_init_devices);
+
+static int pcaal1_late_init(void)
+{
+	struct device_d *nand;
+
+	gpmc_generic_nand_devices_init(0, 16, OMAP_ECC_SOFT);
+
+	nand = get_device_by_name("nand0");
+
+	devfs_add_partition("nand0", 0x00000, 0x80000, PARTITION_FIXED, "x-loader");
+	dev_add_bb_dev("self_raw", "x_loader0");
+
+	devfs_add_partition("nand0", 0x80000, 0x1e0000, PARTITION_FIXED, "self_raw");
+	dev_add_bb_dev("self_raw", "self0");
+
+	devfs_add_partition("nand0", 0x260000, 0x20000, PARTITION_FIXED, "env_raw");
+	dev_add_bb_dev("env_raw", "env0");
+
+	return 0;
+}
+late_initcall(pcaal1_late_init);
diff --git a/arch/arm/boards/phycard-a-l1/pca-a-l1.dox b/arch/arm/boards/phycard-a-l1/pca-a-l1.dox
new file mode 100644
index 0000000..d93c574
--- /dev/null
+++ b/arch/arm/boards/phycard-a-l1/pca-a-l1.dox
@@ -0,0 +1,16 @@
+/** @page phycard-a-l1 Phytec's phyCARD-A-L1 (OMAP35xx)
+
+This phyCARD is based on a Texas Instruments OMAP35xx CPU.
+The card is shipped with:
+
+- 256MiB DDR-RAM
+- 256MiB NAND Flash Memory
+- SMSC9221 ethernet controller
+- USB-host interface
+- USB-OTG interface
+- LVDS camera interface
+- LVDS display interface
+- TPS65023 Power-Managmanet IC
+- 4kB I2C EEPROM
+
+*/
diff --git a/arch/arm/boards/phycard-a-l1/pca-a-l1.h b/arch/arm/boards/phycard-a-l1/pca-a-l1.h
new file mode 100644
index 0000000..b931d8c
--- /dev/null
+++ b/arch/arm/boards/phycard-a-l1/pca-a-l1.h
@@ -0,0 +1,35 @@
+/**
+ * @file
+ * @brief exported generic APIs which various board files implement
+ *
+ * FileName: arch/arm/boards/phycard-a-l1/board.h
+ *
+ * This file will not contain any board specific implementations.
+ */
+/*
+ * (C) Copyright 2008
+ * Texas Instruments, <www.ti.com>
+ * Raghavendra KH <r-khandenahally@ti.com>
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
+#ifndef __BOARD_OMAP_H_
+#define __BOARD_OMAP_H_
+
+/** Generic Board initialization called from platform.S */
+void board_init(void);
+
+#endif         /* __BOARD_OMAP_H_ */
diff --git a/arch/arm/boards/phycard-a-l1/platform.S b/arch/arm/boards/phycard-a-l1/platform.S
new file mode 100644
index 0000000..596d3ab
--- /dev/null
+++ b/arch/arm/boards/phycard-a-l1/platform.S
@@ -0,0 +1,65 @@
+/**
+ * @file
+ * @brief Wrapper to call board level initialization routine
+ *
+ * FileName: arch/arm/boards/phycard-a-l1/platform.S
+ *
+ * board_init_lowlevel is defined here. This calls board_init which
+ * is linked to the binary - the board_init only has a SRAM stack.
+ * so it needs to be careful about the usage of global variables
+ * and the likes. Enabled only if CONFIG_MACH_DO_LOWLEVEL_INIT is
+ * defined
+ */
+/*
+ * (C) Copyright 2006-2008
+ * Texas Instruments, <www.ti.com>
+ * Nishanth Menon <x0nishan@ti.com>
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
+#include <mach/silicon.h>
+
+#ifdef CONFIG_MACH_DO_LOWLEVEL_INIT
+/**
+ * @fn void board_init_lowlevel(void)
+ *
+ * @brief This provides a assembly wrapper setting up SRAM before calling
+ * board_init
+ *
+ * @return void
+ */
+.globl board_init_lowlevel
+board_init_lowlevel:
+	/* Setup a temporary stack so that we can call C functions
+	 * Yes. this might have been already done by arch code.
+	 * No harm in being a bit redundant to avoid future complications
+	 */
+	ldr	sp,	SRAM_STACK
+        str     ip,	[sp]    /* stash old link register */
+        str     lr,	[sp]    /* stash current link register */
+	mov	ip,	lr	/* save link reg across call */
+	/* Do the pin muxes, sdram init etc..board-xxx.c */
+	bl	board_init
+        ldr     lr,	[sp]    /* restore current link register */
+        ldr     ip,	[sp]    /* restore save ip */
+	/* back to arch calling code */
+	mov	pc,	lr
+SRAM_STACK:
+	.word	OMAP_SRAM_STACK
+
+#endif /* CONFIG_MACH_DO_LOWLEVEL_INIT */
diff --git a/arch/arm/configs/phycard_a_l1_defconfig b/arch/arm/configs/phycard_a_l1_defconfig
new file mode 100644
index 0000000..95dffbb
--- /dev/null
+++ b/arch/arm/configs/phycard_a_l1_defconfig
@@ -0,0 +1,183 @@
+CONFIG_GENERIC_LINKER_SCRIPT=y
+CONFIG_ARM=y
+CONFIG_ARM_LINUX=y
+CONFIG_ARCH_OMAP=y
+CONFIG_CPU_32=y
+CONFIG_CPU_V7=y
+CONFIG_CPU_32v7=y
+CONFIG_BOARDINFO="Phytec phyCARD-A-L1"
+CONFIG_ARCH_OMAP3=y
+CONFIG_OMAP_CLOCK_ALL=y
+CONFIG_OMAP_CLOCK_SOURCE_S32K=y
+CONFIG_OMAP3_CLOCK_CONFIG=y
+CONFIG_OMAP3_COPY_CLOCK_SRAM=n
+CONFIG_OMAP_GPMC=y
+CONFIG_MACH_PCAAL1=y
+CONFIG_HAS_OMAP_NAND=y
+CONFIG_AEABI=y
+CONFIG_CMD_ARM_CPUINFO=y
+CONFIG_ARM_EXCEPTIONS=y
+CONFIG_DEFCONFIG_LIST="$ARCH_DEFCONFIG"
+CONFIG_GREGORIAN_CALENDER=y
+CONFIG_HAS_KALLSYMS=y
+CONFIG_HAS_MODULES=y
+CONFIG_CMD_MEMORY=y
+CONFIG_ENV_HANDLING=y
+CONFIG_GENERIC_GPIO=y
+CONFIG_BLOCK=y
+CONFIG_BLOCK_WRITE=y
+CONFIG_LOCALVERSION=""
+CONFIG_LOCALVERSION_AUTO=y
+CONFIG_ENVIRONMENT_VARIABLES=y
+CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
+CONFIG_TEXT_BASE=0x85000000
+CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
+CONFIG_MEMORY_LAYOUT_DEFAULT=y
+CONFIG_STACK_SIZE=0x8000
+CONFIG_MALLOC_SIZE=0x1000000
+CONFIG_EXPERIMENTAL=y
+CONFIG_MALLOC_DLMALLOC=y
+CONFIG_MACH_HAS_LOWLEVEL_INIT=y
+CONFIG_MACH_DO_LOWLEVEL_INIT=y
+CONFIG_ARCH_HAS_LOWLEVEL_INIT=y
+CONFIG_PROMPT="phyCARD-A-L1 >"
+CONFIG_BAUDRATE=115200
+CONFIG_LONGHELP=y
+CONFIG_CBSIZE=1024
+CONFIG_MAXARGS=16
+CONFIG_SHELL_HUSH=y
+CONFIG_GLOB=y
+CONFIG_PROMPT_HUSH_PS2="> "
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_HUSH_GETOPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_PASSWORD=y
+CONFIG_PASSWD_SUM_MD5=y
+CONFIG_DYNAMIC_CRC_TABLE=y
+CONFIG_ERRNO_MESSAGES=y
+CONFIG_TIMESTAMP=y
+CONFIG_CONSOLE_FULL=y
+CONFIG_CONSOLE_ACTIVATE_FIRST=y
+CONFIG_PARTITION=y
+CONFIG_PARTITION_DISK=y
+CONFIG_PARTITION_DISK_DOS=y
+CONFIG_DEFAULT_ENVIRONMENT=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv ./arch/arm/boards/phycard-a-l1/env"
+CONFIG_COMMAND_SUPPORT=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TRUE=y
+CONFIG_CMD_FALSE=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_LOGIN=y
+CONFIG_CMD_PASSWD=y
+CONFIG_PASSWD_MODE_STAR=y
+CONFIG_CMD_TIME=y
+CONFIG_CMD_LS=y
+CONFIG_CMD_RM=y
+CONFIG_CMD_CAT=y
+CONFIG_CMD_MKDIR=y
+CONFIG_CMD_RMDIR=y
+CONFIG_CMD_CP=y
+CONFIG_CMD_PWD=y
+CONFIG_CMD_CD=y
+CONFIG_CMD_MOUNT=y
+CONFIG_CMD_UMOUNT=y
+CONFIG_CMD_NAND=y
+CONFIG_CMD_CLEAR=y
+CONFIG_CMD_ECHO=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_DIGEST=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_SHA256SUM=y
+CONFIG_CMD_SHA224SUM=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_UBI=y
+CONFIG_CMD_BOOTM=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_IMINFO=y
+CONFIG_CMD_BOOTZ=n
+CONFIG_CMD_BOOTU=n
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_TEST=y
+CONFIG_CMD_VERSION=y
+CONFIG_CMD_HELP=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_DEVINFO=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_NFS=y
+CONFIG_NET_PING=y
+CONFIG_NET_TFTP=y
+CONFIG_NET_TFTP_PUSH=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_NET_RESOLV=y
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
+CONFIG_MIIDEV=y
+CONFIG_DRIVER_NET_SMC911X=y
+CONFIG_DRIVER_NET_SMC911X_ADDRESS_SHIFT=0
+CONFIG_SPI=n
+CONFIG_MTD=y
+CONFIG_NAND=y
+CONFIG_NAND_WRITE=y
+CONFIG_NAND_ECC_SOFT=y
+CONFIG_NAND_ECC_HW=y
+CONFIG_NAND_ECC_HW_SYNDROME=y
+CONFIG_NAND_ECC_HW_NONE=y
+CONFIG_NAND_INFO=y
+CONFIG_NAND_READ_OOB=y
+CONFIG_NAND_BBT=y
+CONFIG_NAND_OOB_DEVICE=y
+CONFIG_NAND_OMAP_GPMC=y
+CONFIG_MTD_NAND_IDS=y
+CONFIG_UBI=y
+CONFIG_DISK=y
+CONFIG_DISK_WRITE=y
+CONFIG_DISK_ATA=y
+CONFIG_DISK_INTF_PLATFORM_IDE=y
+CONFIG_MCI=y
+CONFIG_MCI_INFO=y
+CONFIG_MCI_WRITE=y
+CONFIG_MCI_OMAP_HSMMC=y
+CONFIG_FS_CRAMFS=y
+CONFIG_FS_RAMFS=y
+CONFIG_FS_DEVFS=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
+CONFIG_PARTITION_NEED_MTD=y
+CONFIG_ZLIB=y
+CONFIG_BZLIB=y
+CONFIG_PROCESS_ESCAPE_SEQUENCE=y
+CONFIG_LZO_DECOMPRESS=y
+CONFIG_FDT=y
+CONFIG_OFTREE=y
+CONFIG_CRC32=y
+CONFIG_CRC16=y
+CONFIG_DIGEST=y
+CONFIG_MD5=y
+CONFIG_SHA1=y
+CONFIG_SHA224=y
+CONFIG_SHA256=y
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 1174df0..73125a7 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -106,7 +106,7 @@ config BOARDINFO
 	default "Texas Instrument's OMAP3EVM" if MACH_OMAP3EVM
 	default "Texas Instrument's Panda" if MACH_PANDA
 	default "Phytec phyCORE pcm049" if MACH_PCM049
-
+	default "Phytec phyCARD-A-L1" if MACH_PCAAL1
 choice
 	prompt "Select OMAP board"
 
@@ -154,6 +154,14 @@ config MACH_PCM049
 	  Say Y here if you are using Phytecs phyCORE pcm049 board
 	  based on OMAP4
 
+config MACH_PCAAL1
+	bool "Phytec phyCARD-A-L1"
+	select MACH_HAS_LOWLEVEL_INIT
+	select OMAP_CLOCK_ALL
+	select HAS_OMAP_NAND
+	  help
+	  Say Y here if you are using a phyCARD-A-L1 PCA-A-L1
+
 endchoice
 
 if MACH_OMAP3EVM
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
