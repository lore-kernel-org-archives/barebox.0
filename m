Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S36Pl-00082N-KK
 for barebox@lists.infradead.org; Thu, 01 Mar 2012 13:51:28 +0000
From: Christian Hemp <c.hemp@phytec.de>
Date: Thu, 1 Mar 2012 14:50:12 +0100
Message-Id: <1330609813-28879-1-git-send-email-c.hemp@phytec.de>
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
Subject: [PATCH 1/2] pcaam1: Add support for the Phytec phyCARD-A-M1 (PCA-A-M1)
To: barebox@lists.infradead.org

Add support for the phyCARD-A-M1 (PCA-A-M1).

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 arch/arm/Makefile                         |    1 +
 arch/arm/boards/phycard-a-m1/Makefile     |   24 ++
 arch/arm/boards/phycard-a-m1/config.h     |   25 ++
 arch/arm/boards/phycard-a-m1/env/config   |   57 ++++
 arch/arm/boards/phycard-a-m1/lowlevel.c   |  240 +++++++++++++++++
 arch/arm/boards/phycard-a-m1/pca-a-m1.c   |  397 +++++++++++++++++++++++++++++
 arch/arm/boards/phycard-a-m1/pca-a-m1.dox |    5 +
 arch/arm/configs/phycard_a_m1_defconfig   |   61 +++++
 arch/arm/mach-imx/Kconfig                 |   13 +
 9 files changed, 823 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/phycard-a-m1/Makefile
 create mode 100644 arch/arm/boards/phycard-a-m1/config.h
 create mode 100644 arch/arm/boards/phycard-a-m1/env/config
 create mode 100644 arch/arm/boards/phycard-a-m1/lowlevel.c
 create mode 100644 arch/arm/boards/phycard-a-m1/pca-a-m1.c
 create mode 100644 arch/arm/boards/phycard-a-m1/pca-a-m1.dox
 create mode 100644 arch/arm/configs/phycard_a_m1_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index b28a5b2..b895fb0 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -95,6 +95,7 @@ board-$(CONFIG_MACH_PANDA)			:= panda
 board-$(CONFIG_MACH_PCM049)			:= pcm049
 board-$(CONFIG_MACH_PCA100)			:= phycard-i.MX27
 board-$(CONFIG_MACH_PCAAL1)			:= phycard-a-l1
+board-$(CONFIG_MACH_PCAAM1)			:= phycard-a-m1
 board-$(CONFIG_MACH_PCM037)			:= pcm037
 board-$(CONFIG_MACH_PCM038)			:= pcm038
 board-$(CONFIG_MACH_PCM043)			:= pcm043
diff --git a/arch/arm/boards/phycard-a-m1/Makefile b/arch/arm/boards/phycard-a-m1/Makefile
new file mode 100644
index 0000000..6f25a58
--- /dev/null
+++ b/arch/arm/boards/phycard-a-m1/Makefile
@@ -0,0 +1,24 @@
+#
+# (C) Copyright 2012 Christian Hemp <c.hemp@phytec.de>
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
+obj-y += pca-a-m1.o
diff --git a/arch/arm/boards/phycard-a-m1/config.h b/arch/arm/boards/phycard-a-m1/config.h
new file mode 100644
index 0000000..524fbfb
--- /dev/null
+++ b/arch/arm/boards/phycard-a-m1/config.h
@@ -0,0 +1,25 @@
+/*
+ * (C) Copyright 2007 Juergen Beisert <jbe@pengutronix.de>
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
+#define CONFIG_MX35_HCLK_FREQ	24000000
+
+#endif
diff --git a/arch/arm/boards/phycard-a-m1/env/config b/arch/arm/boards/phycard-a-m1/env/config
new file mode 100644
index 0000000..4f64e9f
--- /dev/null
+++ b/arch/arm/boards/phycard-a-m1/env/config
@@ -0,0 +1,57 @@
+#!/bin/sh
+
+machine=pcaam1
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
+kernel_loc=nand
+# can be either 'net', 'nor', 'nand' or 'initrd'
+rootfs_loc=nand
+
+# can be either 'jffs2' or 'ubifs'
+rootfs_type=ubifs
+rootfsimage=root-$machine.$rootfs_type
+
+# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
+kernelimage=zImage-$machine
+#kernelimage=uImage-$machine
+#kernelimage=Image-$machine
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
+#Displays
+display=Primeview-PD050VL1
+#display=Primeview-PD035VL1
+#display=Primeview-PD104SLF
+#display=Primeview-PM070WL4
+
+bootargs="console=ttymxc0,115200"
+
+nand_parts="256k(barebox)ro,128k(bareboxenv),1408k(splash),4M(kernel),-(root)"
+rootfs_mtdblock_nand=4
+
+nand_device=mxc_nand
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
+
+
diff --git a/arch/arm/boards/phycard-a-m1/lowlevel.c b/arch/arm/boards/phycard-a-m1/lowlevel.c
new file mode 100644
index 0000000..7cb9eb1
--- /dev/null
+++ b/arch/arm/boards/phycard-a-m1/lowlevel.c
@@ -0,0 +1,240 @@
+/*
+ *
+ * (c) 2007 Pengutronix, Sascha Hauer <s.hauer@pengutronix.de>
+ * (c) 2012 Phytec Messtechnik GmbH, Christian Hemp <c.hemp@phytec.de>
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
+#include <io.h>
+
+#include <asm/barebox-arm.h>
+#include <asm/cache-l2x0.h>
+#include <asm/system.h>
+
+#include <asm-generic/memory_layout.h>
+
+#include <mach/esdctl.h>
+#include <mach/imx-nand.h>
+#include <mach/imx-pll.h>
+#include <mach/imx-regs.h>
+
+/* Assuming 24MHz input clock */
+#define MPCTL_PARAM_399     (IMX_PLL_PD(0) | IMX_PLL_MFD(15) | \
+				IMX_PLL_MFI(8) | IMX_PLL_MFN(5))
+#define MPCTL_PARAM_532     ((1 << 31) | IMX_PLL_PD(0) | IMX_PLL_MFD(11) | \
+				IMX_PLL_MFI(11) | IMX_PLL_MFN(1))
+#define PPCTL_PARAM_300     (IMX_PLL_PD(0) | IMX_PLL_MFD(3) | \
+				IMX_PLL_MFI(6) | IMX_PLL_MFN(1))
+
+#define IMX35_CHIP_REVISION_2_1		0x11
+
+#define CCM_PDR0_399	0x00011000
+#define CCM_PDR0_532	0x00001000
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
+#define ESDCTLVAL	(ESDCTL0_ROW13 | ESDCTL0_COL10 | ESDCTL0_DSIZ_31_0 | \
+			 ESDCTL0_REF8 | ESDCTL0_BL)
+#define ESDCFGVAL	(ESDCFGx_tXP_2 | ESDCFGx_tRP_2 | ESDCFGx_tMRD_2 | \
+			 ESDCFGx_tRAS_6 | ESDCFGx_tRRD_2 | ESDCFGx_tRCD_2 | \
+			 ESDCFGx_tRC_16)
+
+static inline void phycard_setup_sdram(uint32_t base, uint32_t esdctl,
+		uint32_t esdcfg)
+{
+	uint32_t esdctlreg = ESDCTL0;
+	uint32_t esdcfgreg = ESDCFG0;
+
+	if (base != IMX_SDRAM_CS0) {
+		esdctlreg += 8;
+		esdcfgreg += 8;
+	}
+
+	esdctl |= ESDCTL0_SDE;
+
+	/* set timing paramters */
+	writel(esdcfg, esdcfgreg);
+	/* select Prechare-All mode */
+	writel(ESDCTL0_SMODE_PRECHARGE | esdctl, esdctlreg);
+	/* Prechare-All */
+	writel(0x12345678, base + 0x400);
+
+	/* select Load-Mode-Register mode */
+	writel(ESDCTL0_SMODE_LOAD_MODE | esdctl, esdctlreg);
+	/* Load reg EMR2 */
+	writeb(0xda, base + 0x04000000);
+	/* Load reg EMR3 */
+	writeb(0xda, base + 0x06000000);
+	/* Load reg EMR1 -- enable DLL */
+	writeb(0xda, base + 0x02000400);
+	/* Load reg MR -- reset DLL */
+	writeb(0xda, base + 0x00000333);
+
+	/* select Prechare-All mode */
+	writel(ESDCTL0_SMODE_PRECHARGE | esdctl, esdctlreg);
+	/* Prechare-All */
+	writel(0x12345678, base + 0x400);
+
+	/* select Manual-Refresh mode */
+	writel(ESDCTL0_SMODE_AUTO_REFRESH | esdctl, esdctlreg);
+	/* Manual-Refresh 2 times */
+	writel(0x87654321, base);
+	writel(0x87654321, base);
+
+	/* select Load-Mode-Register mode */
+	writel(ESDCTL0_SMODE_LOAD_MODE | esdctl, esdctlreg);
+	/* Load reg MR -- CL3, BL8, end DLL reset */
+	writeb(0xda, base + 0x233);
+	/* Load reg EMR1 -- OCD default */
+	writeb(0xda, base + 0x02000780);
+	writeb(0xda, base + 0x020007C0);
+	/* Load reg EMR1 -- OCD exit */
+	writeb(0xda, base + 0x02000400);
+	writeb(0xda, base + 0x02000440);
+
+	writel(esdctl, esdctlreg);
+}
+
+void __bare_init __naked board_init_lowlevel(void)
+{
+	uint32_t r, s;
+	unsigned long ccm_base = IMX_CCM_BASE;
+#ifdef CONFIG_NAND_IMX_BOOT
+	unsigned int *trg, *src;
+	int i;
+#endif
+	r = get_cr();
+	r |= CR_Z; /* Flow prediction (Z) */
+	r |= CR_U; /* unaligned accesses  */
+	r |= CR_FI; /* Low Int Latency     */
+
+	__asm__ __volatile__("mrc p15, 0, %0, c1, c0, 1" : "=r"(s));
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
+
+	/* Check silicon revision and use 532MHz if >=2.1 */
+	r = readl(IMX_IIM_BASE + 0x24);
+	if (r >= IMX35_CHIP_REVISION_2_1)
+		writel(CCM_PDR0_532, ccm_base + CCM_PDR0);
+	else
+		writel(CCM_PDR0_399, ccm_base + CCM_PDR0);
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
+	/* MDDR init, enable mDDR*/
+	writel(0x00000304, ESDMISC); /* was 0x00000004 */
+
+	phycard_setup_sdram(IMX_SDRAM_CS0, ESDCTLVAL, ESDCFGVAL);
+#ifdef CONFIG_PCAAM1_RAM_2BANKS
+	phycard_setup_sdram(IMX_SDRAM_CS1, ESDCTLVAL, ESDCFGVAL);
+#endif
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
diff --git a/arch/arm/boards/phycard-a-m1/pca-a-m1.c b/arch/arm/boards/phycard-a-m1/pca-a-m1.c
new file mode 100644
index 0000000..b51078b
--- /dev/null
+++ b/arch/arm/boards/phycard-a-m1/pca-a-m1.c
@@ -0,0 +1,397 @@
+/*
+ * (C) 2007 Pengutronix, Sascha Hauer <s.hauer@pengutronix.de>
+ * (C) 2009 Pengutronix, Juergen Beisert <kernel@pengutronix.de>
+ * (C) 2012 Phytec Messtechnik GmbH, Christian Hemp <c.hemp@phytec.de>
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
+ * Board support for Phytec's, i.MX35 based CPU card, called: PCAAM1
+ */
+
+#include <common.h>
+#include <command.h>
+#include <driver.h>
+#include <environment.h>
+#include <fec.h>
+#include <fs.h>
+#include <init.h>
+#include <io.h>
+#include <nand.h>
+#include <partition.h>
+#include <sizes.h>
+
+#include <asm/armlinux.h>
+#include <asm/mmu.h>
+
+#include <generated/mach-types.h>
+
+#include <mach/esdctl.h>
+#include <mach/imx-nand.h>
+#include <mach/imx-regs.h>
+#include <mach/imx-pll.h>
+#include <mach/iomux-mx35.h>
+#include <mach/devices-imx35.h>
+
+static struct fec_platform_data fec_info = {
+	.xcv_type = MII100,
+};
+
+struct imx_nand_platform_data nand_info = {
+	.width	= 1,
+	.hw_ecc	= 1,
+	.flash_bbt = 1,
+};
+
+static struct fb_videomode pcaam1_fb_mode[] = {
+	{
+		.name		= "Primeview-PD050VL1",
+		.refresh	= 60,
+		.xres		= 640,
+		.yres		= 480,
+		.pixclock	= 39900, /* in ps (25 MHz) */
+		.hsync_len	= 32,
+		.left_margin	= 112,
+		.right_margin	= 36,
+		.vsync_len	= 2,
+		.upper_margin	= 33,
+		.lower_margin	= 33,
+		.sync		= FB_SYNC_OE_ACT_HIGH,
+		.vmode		= FB_VMODE_NONINTERLACED,
+		.flag		= 0,
+	}, {
+		.name		= "Primeview-PD035VL1",
+		.refresh	= 60,
+		.xres		= 640,
+		.yres		= 480,
+		.pixclock	= 40000, /* in ps (25 MHz) */
+		.hsync_len	= 32,
+		.left_margin	= 112,
+		.right_margin	= 36,
+		.vsync_len	= 2,
+		.upper_margin	= 33,
+		.lower_margin	= 33,
+		.sync		= FB_SYNC_OE_ACT_HIGH,
+		.vmode		= FB_VMODE_NONINTERLACED,
+		.flag		= 0,
+	}, {
+		.name		= "Primeview-PD104SLF",
+		.refresh	= 60,
+		.xres		= 800,
+		.yres		= 600,
+		.pixclock	= 25000, /* in ps (40,0 MHz) */
+		.hsync_len	= 128,
+		.left_margin	= 42,
+		.right_margin	= 42,
+		.vsync_len	= 4,
+		.upper_margin	= 23,
+		.lower_margin	= 1,
+		.sync		= FB_SYNC_OE_ACT_HIGH,
+		.vmode		= FB_VMODE_NONINTERLACED,
+		.flag		= 0,
+	}, {
+		.name		= "Primeview-PM070WL4",
+		.refresh	= 60,
+		.xres		= 800,
+		.yres		= 480,
+		.pixclock       = 50505, /* in ps (19,8 MHz) */
+		.hsync_len	= 128,
+		.left_margin	= 42,
+		.right_margin	= 42,
+		.vsync_len	= 2,
+		.upper_margin	= 33,
+		.lower_margin	= 33,
+		.sync		= FB_SYNC_OE_ACT_HIGH,
+		.vmode		= FB_VMODE_NONINTERLACED,
+		.flag		= 0,
+	}
+};
+
+static struct imx_ipu_fb_platform_data ipu_fb_data = {
+	.mode		= pcaam1_fb_mode,
+	.num_modes	= ARRAY_SIZE(pcaam1_fb_mode),
+	.bpp		= 16,
+};
+
+static struct pad_desc pcaam1_pads[] = {
+	/* FEC */
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
+	/* UART1 */
+	MX35_PAD_RXD1__UART1_RXD_MUX,
+	MX35_PAD_TXD1__UART1_TXD_MUX,
+	MX35_PAD_RTS1__UART1_RTS,
+	MX35_PAD_CTS1__UART1_CTS,
+	/* I2C Module */
+	MX35_PAD_I2C1_CLK__I2C1_SCL,
+	MX35_PAD_I2C1_DAT__I2C1_SDA,
+	/* I2C3 Board */
+	MX35_PAD_ATA_DATA12__I2C3_SCL,
+	MX35_PAD_ATA_DATA13__I2C3_SDA,
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
+	MX35_PAD_LD18__IPU_DISPB_DAT_18,
+	MX35_PAD_LD19__IPU_DISPB_DAT_19,
+	MX35_PAD_LD20__IPU_DISPB_DAT_20,
+	MX35_PAD_LD21__IPU_DISPB_DAT_21,
+	MX35_PAD_LD22__IPU_DISPB_DAT_22,
+	MX35_PAD_LD23__IPU_DISPB_DAT_23,
+	MX35_PAD_D3_HSYNC__IPU_DISPB_D3_HSYNC,
+	MX35_PAD_D3_FPSHIFT__IPU_DISPB_D3_CLK,
+	MX35_PAD_D3_DRDY__IPU_DISPB_D3_DRDY,
+	MX35_PAD_D3_VSYNC__IPU_DISPB_D3_VSYNC,
+	/* esdhc */
+	MX35_PAD_SD1_CMD__ESDHC1_CMD,
+	MX35_PAD_SD1_CLK__ESDHC1_CLK,
+	MX35_PAD_SD1_DATA0__ESDHC1_DAT0,
+	MX35_PAD_SD1_DATA1__ESDHC1_DAT1,
+	MX35_PAD_SD1_DATA2__ESDHC1_DAT2,
+	MX35_PAD_SD1_DATA3__ESDHC1_DAT3,
+};
+
+static int pcaam1_mmu_init(void)
+{
+	l2x0_init((void __iomem *)0x30000000, 0x00030024, 0x00000000);
+
+	return 0;
+}
+postmmu_initcall(pcaam1_mmu_init);
+
+static struct i2c_platform_data pcaam1_i2c_3_data = {
+	.bitrate = 100000,
+};
+
+static int pcaam1_mem_init(void)
+{
+	arm_add_mem_device("ram0", IMX_SDRAM_CS0, SZ_128M);
+
+#ifdef CONFIG_PCAAM1_RAM_2BANKS
+	arm_add_mem_device("ram1", IMX_SDRAM_CS1, SZ_128M);
+#endif
+
+	return 0;
+}
+mem_initcall(pcaam1_mem_init);
+
+static int pcaam1_devices_init(void)
+{
+	uint32_t reg;
+
+	mxc_iomux_v3_setup_multiple_pads(pcaam1_pads,
+		ARRAY_SIZE(pcaam1_pads));
+
+	reg = readl(IMX_CCM_BASE + CCM_RCSR);
+	/* some fuses provide us vital information about connected hardware */
+	if (reg & 0x20000000)
+		nand_info.width = 2;    /* 16 bit */
+	else
+		nand_info.width = 1;    /* 8 bit */
+
+	imx35_add_fec(&fec_info);
+	imx35_add_nand(&nand_info);
+
+	/* reset mode: external boot */
+	if ((reg & 0xc00) == 0x800 && ((reg >> 25) & 0x3) == 0x01) {
+		devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED,
+				    "self_raw");
+		dev_add_bb_dev("self_raw", "self0");
+		devfs_add_partition("nand0", 0x40000, 0x20000, PARTITION_FIXED,
+				    "env_raw");
+		dev_add_bb_dev("env_raw", "env0");
+	}
+
+	imx35_add_fb(&ipu_fb_data);
+	imx35_add_i2c2(&pcaam1_i2c_3_data);
+	imx35_add_mmc0(NULL);
+
+	armlinux_set_bootparams((void *)0x80000100);
+	armlinux_set_architecture(MACH_TYPE_PCAAM1);
+
+	return 0;
+}
+
+device_initcall(pcaam1_devices_init);
+
+static int pcaam1_console_init(void)
+{
+	imx35_add_uart0();
+
+	return 0;
+}
+
+console_initcall(pcaam1_console_init);
+
+#define M3IFCTL_IPU1    0x00000040
+
+static int pcaam1_core_setup(void)
+{
+	u32 tmp;
+
+	/*
+	 * AIPS setup - Only setup MPROTx registers.
+	 * The PACR default values are good.
+	 */
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
+	tmp = readl(IMX_AIPS1_BASE + 0x50);
+	tmp &= 0x00FFFFFF;
+	writel(tmp, IMX_AIPS1_BASE + 0x50);
+
+	writel(0x0, IMX_AIPS2_BASE + 0x40);
+	writel(0x0, IMX_AIPS2_BASE + 0x44);
+	writel(0x0, IMX_AIPS2_BASE + 0x48);
+	writel(0x0, IMX_AIPS2_BASE + 0x4C);
+	tmp = readl(IMX_AIPS2_BASE + 0x50);
+	tmp &= 0x00FFFFFF;
+	writel(tmp, IMX_AIPS2_BASE + 0x50);
+
+	/* MAX (Multi-Layer AHB Crossbar Switch) setup */
+
+	/* MPR - priority is M4 > M2 > M3 > M5 > M0 > M1 */
+#define MAX_PARAM1 0x00302154
+	writel(MAX_PARAM1, IMX_MAX_BASE + 0x0);   /* for S0 */
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
+	writel(M3IFCTL_IPU1, IMX_M3IF_BASE);
+
+	return 0;
+}
+
+core_initcall(pcaam1_core_setup);
+
+#define CCM_PDR0_PARAM_399	0x00011000
+#define CCM_PDR0_PARAM_532	0x00001000
+
+static int do_cpufreq(struct command *cmdtp, int argc, char *argv[])
+{
+	unsigned long freq;
+
+	if (argc != 2) {
+		barebox_cmd_usage(cmdtp);
+		return 1;
+	}
+
+	freq = simple_strtoul(argv[1], NULL, 0);
+
+	switch (freq) {
+	case 399:
+		writel(CCM_PDR0_PARAM_399, IMX_CCM_BASE + CCM_PDR0);
+		break;
+	case 532:
+		writel(CCM_PDR0_PARAM_532, IMX_CCM_BASE + CCM_PDR0);
+		break;
+	default:
+		barebox_cmd_usage(cmdtp);
+		return 1;
+	}
+
+	printf("Switched CPU frequency to %ldMHz\n", freq);
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
+	imx_nand_load_image((void *)TEXT_BASE, SZ_256K);
+}
+#endif
diff --git a/arch/arm/boards/phycard-a-m1/pca-a-m1.dox b/arch/arm/boards/phycard-a-m1/pca-a-m1.dox
new file mode 100644
index 0000000..fce2248
--- /dev/null
+++ b/arch/arm/boards/phycard-a-m1/pca-a-m1.dox
@@ -0,0 +1,5 @@
+/** @page pca-a-m1 Phytec's phyCARD-A-M1
+
+This CPU card is based on a Freescale i.MX35 CPU.
+
+*/
diff --git a/arch/arm/configs/phycard_a_m1_defconfig b/arch/arm/configs/phycard_a_m1_defconfig
new file mode 100644
index 0000000..2be8028
--- /dev/null
+++ b/arch/arm/configs/phycard_a_m1_defconfig
@@ -0,0 +1,61 @@
+CONFIG_ARCH_IMX=y
+CONFIG_CACHE_L2X0=y
+CONFIG_ARCH_IMX_EXTERNAL_BOOT=y
+CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND=y
+CONFIG_NAND_IMX_BOOT_2K=y
+CONFIG_ARCH_IMX35=y
+CONFIG_MACH_PCAAM1=y
+CONFIG_IMX_CLKO=y
+CONFIG_AEABI=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_UNWIND=y
+CONFIG_MMU=y
+CONFIG_TEXT_BASE=0x87D00000
+CONFIG_MALLOC_SIZE=0x500000
+CONFIG_LONGHELP=y
+CONFIG_CBSIZE=256
+CONFIG_GLOB=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_HUSH_GETOPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv arch/arm/boards/phycard-a-m1/env"
+CONFIG_DEBUG_INFO=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_BMP=y
+CONFIG_CMD_I2C=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_NFS=y
+CONFIG_NET_PING=y
+CONFIG_NET_TFTP=y
+CONFIG_NET_TFTP_PUSH=y
+CONFIG_DRIVER_NET_FEC_IMX=y
+CONFIG_NET_NETCONSOLE=y
+# CONFIG_SPI is not set
+CONFIG_I2C=y
+CONFIG_MTD=y
+CONFIG_NAND=y
+CONFIG_VIDEO=y
+CONFIG_MCI=y
+CONFIG_I2C_MC13892=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
+CONFIG_NAND_IMX=y
+CONFIG_ZLIB=y
+CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 853757b..c80bf6d 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -13,6 +13,7 @@ config ARCH_TEXT_BASE
 	default 0x87f00000 if MACH_FREESCALE_MX25_3STACK && FREESCALE_MX25_3STACK_SDRAM_128MB_MDDR
 	default 0x87f00000 if MACH_FREESCALE_MX35_3STACK
 	default 0xa7f00000 if MACH_PCA100
+	default 0x87d00000 if MACH_PCAAM1
 	default 0xa0000000 if MACH_PCM038
 	default 0x87f00000 if MACH_PCM037
 	default 0x87f00000 if MACH_PCM043
@@ -35,6 +36,7 @@ config BOARDINFO
 	default "Freescale MX35 3Stack" if MACH_FREESCALE_MX35_3STACK
 	default "Freescale MX25 3Stack" if MACH_FREESCALE_MX25_3STACK
 	default "Phytec phyCard-i.MX27" if MACH_PCA100
+	default "Phytec phyCARD-A-M1" if MACH_PCAAM1
 	default "Phytec phyCORE-i.MX27" if MACH_PCM038
 	default "Phytec phyCORE-i.MX31" if MACH_PCM037
 	default "Phytec phyCORE-i.MX35" if MACH_PCM043
@@ -352,6 +354,14 @@ config MACH_PCM043
 	  Say Y here if you are using Phytec's phyCORE-i.MX35 (pcm043) equipped
 	  with a Freescale i.MX35 Processor
 
+config MACH_PCAAM1
+	bool "phyCARD-A-M1"
+	select MACH_HAS_LOWLEVEL_INIT
+	select ARCH_HAS_L2X0
+	help
+	   Say Y here if you are using Phytec's phyCARD-A-M1 (pca-a-m1) equipped
+	   with a Freescale i.MX35 Processor
+
 config MACH_GUF_CUPID
 	bool "Garz+Fricke Cupid"
 	select MACH_HAS_LOWLEVEL_INIT
@@ -473,6 +483,9 @@ config FREESCALE_MX25_3STACK_SDRAM_128MB_MDDR
 	bool "128 MB (mDDR)"
 endchoice
 endif
+config PCAAM1_RAM_2BANKS
+	depends on MACH_PCAAM1
+	bool "two sdram banks equipped on phyCARD"
 endmenu
 
 menu "i.MX specific settings        "
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
