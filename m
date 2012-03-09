Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S5w3R-0007GO-3W
 for barebox@lists.infradead.org; Fri, 09 Mar 2012 09:24:08 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id CB188A30A1
 for <barebox@lists.infradead.org>; Thu,  8 Mar 2012 10:18:45 +0100 (CET)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Fri, 9 Mar 2012 10:23:51 +0100
Message-Id: <1331285031-9694-1-git-send-email-j.weitzel@phytec.de>
In-Reply-To: <20120308202328.GT3852@pengutronix.de>
References: <20120308202328.GT3852@pengutronix.de>
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
Subject: [PATCH v2] omap: add support for phycard-a-xl2
To: barebox@lists.infradead.org

Support for omap4 based Phytec phyCARD-A-XL2 board

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
v2: remove kernelimage_type from env
    use CONFIG_THUMB2_BAREBOX for MLO
    move noinline keyword between storage class and type

 arch/arm/Makefile                                  |    1 +
 arch/arm/boards/phycard-a-xl2/Makefile             |   20 ++
 arch/arm/boards/phycard-a-xl2/config.h             |    1 +
 .../boards/phycard-a-xl2/env/bin/nand_bootstrap    |   31 +++
 arch/arm/boards/phycard-a-xl2/env/config           |   47 ++++
 arch/arm/boards/phycard-a-xl2/lowlevel.c           |   95 ++++++++
 arch/arm/boards/phycard-a-xl2/mux.c                |  245 ++++++++++++++++++++
 arch/arm/boards/phycard-a-xl2/pca-a-xl2.c          |  147 ++++++++++++
 arch/arm/configs/phycard_a_xl2_defconfig           |   56 +++++
 arch/arm/configs/phycard_a_xl2_xload_defconfig     |   41 ++++
 arch/arm/mach-omap/Kconfig                         |   10 +
 11 files changed, 694 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/phycard-a-xl2/Makefile
 create mode 100644 arch/arm/boards/phycard-a-xl2/config.h
 create mode 100644 arch/arm/boards/phycard-a-xl2/env/bin/nand_bootstrap
 create mode 100644 arch/arm/boards/phycard-a-xl2/env/config
 create mode 100644 arch/arm/boards/phycard-a-xl2/lowlevel.c
 create mode 100644 arch/arm/boards/phycard-a-xl2/mux.c
 create mode 100644 arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
 create mode 100644 arch/arm/configs/phycard_a_xl2_defconfig
 create mode 100644 arch/arm/configs/phycard_a_xl2_xload_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 4c6a566..bf46ca3 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -102,6 +102,7 @@ board-$(CONFIG_MACH_PANDA)			:= panda
 board-$(CONFIG_MACH_PCM049)			:= pcm049
 board-$(CONFIG_MACH_PCA100)			:= phycard-i.MX27
 board-$(CONFIG_MACH_PCAAL1)			:= phycard-a-l1
+board-$(CONFIG_MACH_PCAAXL2)			:= phycard-a-xl2
 board-$(CONFIG_MACH_PCM037)			:= pcm037
 board-$(CONFIG_MACH_PCM038)			:= pcm038
 board-$(CONFIG_MACH_PCM043)			:= pcm043
diff --git a/arch/arm/boards/phycard-a-xl2/Makefile b/arch/arm/boards/phycard-a-xl2/Makefile
new file mode 100644
index 0000000..1d23d72
--- /dev/null
+++ b/arch/arm/boards/phycard-a-xl2/Makefile
@@ -0,0 +1,20 @@
+# (C) Copyright 2012 Jan Weitzel <j.weitzel@phytec.de>
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
+obj-y += pca-a-xl2.o mux.o lowlevel.o
diff --git a/arch/arm/boards/phycard-a-xl2/config.h b/arch/arm/boards/phycard-a-xl2/config.h
new file mode 100644
index 0000000..da84fa5
--- /dev/null
+++ b/arch/arm/boards/phycard-a-xl2/config.h
@@ -0,0 +1 @@
+/* nothing */
diff --git a/arch/arm/boards/phycard-a-xl2/env/bin/nand_bootstrap b/arch/arm/boards/phycard-a-xl2/env/bin/nand_bootstrap
new file mode 100644
index 0000000..acd00dc
--- /dev/null
+++ b/arch/arm/boards/phycard-a-xl2/env/bin/nand_bootstrap
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
diff --git a/arch/arm/boards/phycard-a-xl2/env/config b/arch/arm/boards/phycard-a-xl2/env/config
new file mode 100644
index 0000000..0cbfb16
--- /dev/null
+++ b/arch/arm/boards/phycard-a-xl2/env/config
@@ -0,0 +1,47 @@
+#!/bin/sh
+
+machine=pcaaxl2
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
+rootfsimage=root-${machine}.$rootfs_type
+
+kernelimage=zImage-$machine
+#kernelimage=uImage-$machine
+#kernelimage=Image-$machine
+#kernelimage=Image-${machine}.lzo
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
+nand_parts="128k(xload)ro,256k(barebox),128k(bareboxenv),4M(kernel),-(root)"
+rootfs_mtdblock_nand=4
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
+
diff --git a/arch/arm/boards/phycard-a-xl2/lowlevel.c b/arch/arm/boards/phycard-a-xl2/lowlevel.c
new file mode 100644
index 0000000..fb23c8f
--- /dev/null
+++ b/arch/arm/boards/phycard-a-xl2/lowlevel.c
@@ -0,0 +1,95 @@
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
+#include <io.h>
+#include <mach/omap4-mux.h>
+#include <mach/omap4-silicon.h>
+#include <mach/omap4-clock.h>
+#include <mach/syslib.h>
+#include <asm/barebox-arm.h>
+
+void set_muxconf_regs(void);
+
+static const struct ddr_regs ddr_regs_mt42L64M64_25_400_mhz = {
+	.tim1           = 0x0EEB0662,
+	.tim2           = 0x20370DD2,
+	.tim3           = 0x00BFC33F,
+	.phy_ctrl_1     = 0x849FF408,
+	.ref_ctrl       = 0x00000618,
+	.config_init    = 0x80001AB1,
+	.config_final   = 0x80001AB1,
+	.zq_config      = 0xd0093215,
+	.mr1            = 0x83,
+	.mr2            = 0x4
+};
+
+static noinline void pcaaxl2_init_lowlevel(void)
+{
+	struct dpll_param core = OMAP4_CORE_DPLL_PARAM_19M2_DDR400;
+	struct dpll_param mpu = OMAP4_MPU_DPLL_PARAM_19M2_MPU1000;
+	struct dpll_param iva = OMAP4_IVA_DPLL_PARAM_19M2;
+	struct dpll_param per = OMAP4_PER_DPLL_PARAM_19M2;
+	struct dpll_param abe = OMAP4_ABE_DPLL_PARAM_19M2;
+	struct dpll_param usb = OMAP4_USB_DPLL_PARAM_19M2;
+
+	set_muxconf_regs();
+
+	omap4_ddr_init(&ddr_regs_mt42L64M64_25_400_mhz, &core);
+
+	/* Set VCORE1 = 1.3 V, VCORE2 = VCORE3 = 1.21V */
+	omap4_scale_vcores();
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
+	__asm__ __volatile__("mov sp, %0" : : "r"(r));
+
+	pcaaxl2_init_lowlevel();
+}
+
diff --git a/arch/arm/boards/phycard-a-xl2/mux.c b/arch/arm/boards/phycard-a-xl2/mux.c
new file mode 100644
index 0000000..179e6b6
--- /dev/null
+++ b/arch/arm/boards/phycard-a-xl2/mux.c
@@ -0,0 +1,245 @@
+#include <common.h>
+#include <init.h>
+#include <io.h>
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
+	{GPMC_A17, (SAFE_MODE)},					/* nc */
+	{GPMC_A18, (SAFE_MODE)},					/* nc */
+	{GPMC_A19, (SAFE_MODE)},					/* nc */
+	{GPMC_A20, (SAFE_MODE)},					/* nc */
+	{GPMC_A21, (SAFE_MODE)},					/* nc */
+	{GPMC_A22, (SAFE_MODE)},					/* nc */
+	{GPMC_A23, (SAFE_MODE)},					/* nc */
+	{GPMC_A24, (SAFE_MODE)},					/* nc */
+	{GPMC_A25, (SAFE_MODE)},					/* nc */
+	{GPMC_NCS0, (IDIS | PTU | EN | M0)},				/* gpmc_nsc0 */
+	{GPMC_NCS1, (IDIS | PTU | EN | M0)},				/* gpmc_nsc1 */
+	{GPMC_NCS2, (SAFE_MODE)},					/* nc */
+	{GPMC_NCS3, (SAFE_MODE)},					/* nc */
+	{GPMC_NWP, (IEN | PTD | DIS | M0)},				/* gpmc_nwp */
+	{GPMC_CLK, (PTU | IEN | M3)},					/* gpio_55 */
+	{GPMC_NADV_ALE, (IDIS | PTD | DIS | M0)},			/* gpmc_ndav_ale */
+	{GPMC_NOE, (IDIS | PTD | DIS | M0)},				/* gpmc_noe */
+	{GPMC_NWE, (IDIS | PTD | DIS | M0)},				/* gpmc_nwe */
+	{GPMC_NBE0_CLE, (IDIS | PTD | DIS | M0)},			/* gpmc_nbe0_cle */
+	{GPMC_NBE1, (SAFE_MODE)},					/* nc */
+	{GPMC_WAIT0, (IEN | PTU | EN | M0)},				/* gpmc_wait0 */
+	{GPMC_WAIT1, (IEN | PTU | EN | M0)},				/* gpmc_wait1 */
+	{C2C_DATA11, (SAFE_MODE)},					/* nc */
+	{C2C_DATA12, (SAFE_MODE)},					/* nc */
+	{C2C_DATA13, (IDIS | PTU | EN | M0)},				/* gpmc_nsc5 */
+	{C2C_DATA14, (SAFE_MODE)},					/* nc */
+	{C2C_DATA15, (SAFE_MODE)},					/* nc */
+	{HDMI_HPD, (SAFE_MODE)},					/* nc */
+	{HDMI_CEC, (SAFE_MODE)},					/* nc */
+	{HDMI_DDC_SCL, (SAFE_MODE)},					/* nc */
+	{HDMI_DDC_SDA, (SAFE_MODE)},					/* nc */
+	{CSI21_DX0, (SAFE_MODE)},					/* nc */
+	{CSI21_DY0, (SAFE_MODE)},					/* nc */
+	{CSI21_DX1, (SAFE_MODE)},					/* nc */
+	{CSI21_DY1, (SAFE_MODE)},					/* nc */
+	{CSI21_DX2, (SAFE_MODE)},					/* nc */
+	{CSI21_DY2, (SAFE_MODE)},					/* nc */
+	{CSI21_DX3, (SAFE_MODE)},					/* nc */
+	{CSI21_DY3, (SAFE_MODE)},					/* nc */
+	{CSI21_DX4, (SAFE_MODE)},					/* nc */
+	{CSI21_DY4, (SAFE_MODE)},					/* nc */
+	{CSI22_DX0, (SAFE_MODE)},					/* nc */
+	{CSI22_DY0, (SAFE_MODE)},					/* nc */
+	{CSI22_DX1, (SAFE_MODE)},					/* nc */
+	{CSI22_DY1, (SAFE_MODE)},					/* nc */
+	{CAM_SHUTTER, (SAFE_MODE)},					/* unused */
+	{CAM_STROBE, (SAFE_MODE)},					/* unused */
+	{CAM_GLOBALRESET, (SAFE_MODE)},					/* unused */
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
+	{USBB1_HSIC_DATA, (SAFE_MODE)},					/* nc */
+	{USBB1_HSIC_STROBE, (SAFE_MODE)},				/* nc */
+	{USBC1_ICUSB_DP, (SAFE_MODE)},					/* nc */
+	{USBC1_ICUSB_DM, (SAFE_MODE)},					/* nc */
+	{SDMMC1_CLK, (PTU | OFF_EN | OFF_OUT_PTD | M0)},		/* sdmmc1_clk */
+	{SDMMC1_CMD, (PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},	/* sdmmc1_cmd */
+	{SDMMC1_DAT0, (PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},	/* sdmmc1_dat0 */
+	{SDMMC1_DAT1, (PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},	/* sdmmc1_dat1 */
+	{SDMMC1_DAT2, (PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},	/* sdmmc1_dat2 */
+	{SDMMC1_DAT3, (PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},	/* sdmmc1_dat3 */
+	{SDMMC1_DAT4, (SAFE_MODE)},					/* nc */
+	{SDMMC1_DAT5, (SAFE_MODE)},					/* nc */
+	{SDMMC1_DAT6, (SAFE_MODE)},					/* nc */
+	{SDMMC1_DAT7, (SAFE_MODE)},					/* nc */
+	{ABE_MCBSP2_CLKX, (SAFE_MODE)},					/* nc */
+	{ABE_MCBSP2_DR, (SAFE_MODE)},					/* nc */
+	{ABE_MCBSP2_DX, (SAFE_MODE)},					/* nc */
+	{ABE_MCBSP2_FSX, (SAFE_MODE)},					/* nc */
+	{ABE_MCBSP1_CLKX, (SAFE_MODE)},					/* unused */
+	{ABE_MCBSP1_DR, (SAFE_MODE)},					/* unused */
+	{ABE_MCBSP1_DX, (SAFE_MODE)},					/* unused */
+	{ABE_MCBSP1_FSX, (SAFE_MODE)},					/* nc */
+	{ABE_PDM_UL_DATA, (SAFE_MODE)},					/* unused */
+	{ABE_PDM_DL_DATA, (SAFE_MODE)},					/* unused */
+	{ABE_PDM_FRAME, (SAFE_MODE)},					/* unused */
+	{ABE_PDM_LB_CLK, (SAFE_MODE)},					/* unused */
+	{ABE_CLKS, (SAFE_MODE)},					/* unused */
+	{ABE_DMIC_CLK1, (SAFE_MODE)},					/* nc */
+	{ABE_DMIC_DIN1, (SAFE_MODE)},					/* unused */
+	{ABE_DMIC_DIN2, (SAFE_MODE)},					/* nc */
+	{ABE_DMIC_DIN3, (SAFE_MODE)},					/* unused */
+	{UART2_CTS, (SAFE_MODE)},					/* nc */
+	{UART2_RTS, (SAFE_MODE)},					/* nc */
+	{UART2_RX, (SAFE_MODE)},					/* nc */
+	{UART2_TX, (SAFE_MODE)},					/* nc */
+	{HDQ_SIO, (SAFE_MODE)},						/* unused */
+	{I2C1_SCL, (PTU | IEN | M0)},					/* i2c1_scl */
+	{I2C1_SDA, (PTU | IEN | M0)},					/* i2c1_sda */
+	{I2C2_SCL, (SAFE_MODE)},					/* unused */
+	{I2C2_SDA, (SAFE_MODE)},					/* unused */
+	{I2C3_SCL, (PTU | IEN | M0)},					/* i2c3_scl */
+	{I2C3_SDA, (PTU | IEN | M0)},					/* i2c3_sda */
+	{I2C4_SCL, (SAFE_MODE)},					/* nc */
+	{I2C4_SDA, (SAFE_MODE)},					/* nc */
+	{MCSPI1_CLK, (SAFE_MODE)},					/* unused */
+	{MCSPI1_SOMI, (SAFE_MODE)},					/* unused */
+	{MCSPI1_SIMO, (SAFE_MODE)},					/* unused */
+	{MCSPI1_CS0, (SAFE_MODE)},					/* unused */
+	{MCSPI1_CS1, (SAFE_MODE)},					/* unused */
+	{MCSPI1_CS2, (SAFE_MODE)},					/* nc */
+	{MCSPI1_CS3, (SAFE_MODE)},					/* nc */
+	{UART3_CTS_RCTX, (PTU | IEN | M0)},				/* uart3_tx */
+	{UART3_RTS_SD, (M0)},						/* uart3_rts_sd */
+	{UART3_RX_IRRX, (IEN | M0)},					/* uart3_rx */
+	{UART3_TX_IRTX, (M0)},						/* uart3_tx */
+	{SDMMC5_CLK, (PTU | IEN | M3)},					/* goio_145 */
+	{SDMMC5_CMD, (PTU | IEN | M3)},					/* goio_146 */
+	{SDMMC5_DAT0, (SAFE_MODE)},					/* nc */
+	{SDMMC5_DAT1, (SAFE_MODE)},					/* nc */
+	{SDMMC5_DAT2, (SAFE_MODE)},					/* nc */
+	{SDMMC5_DAT3, (SAFE_MODE)},					/* nc */
+	{MCSPI4_CLK, (PTU | IEN | M3)},					/* gpio_151 */
+	{MCSPI4_SIMO, (PTU | IEN | M3)},				/* gpio_152 */
+	{MCSPI4_SOMI, (PTU | IEN | M3)},				/* gpio_153 */
+	{MCSPI4_CS0, (SAFE_MODE)},					/* nc */
+	{UART4_RX, (SAFE_MODE)},					/* nc */
+	{UART4_TX, (SAFE_MODE)},					/* nc */
+	{USBB2_ULPITLL_CLK, (SAFE_MODE)},				/* nc */
+	{USBB2_ULPITLL_STP, (SAFE_MODE)},				/* unused */
+	{USBB2_ULPITLL_DIR, (SAFE_MODE)},				/* unused */
+	{USBB2_ULPITLL_NXT, (SAFE_MODE)},				/* unused */
+	{USBB2_ULPITLL_DAT0, (SAFE_MODE)},				/* unused */
+	{USBB2_ULPITLL_DAT1, (SAFE_MODE)},				/* unused */
+	{USBB2_ULPITLL_DAT2, (SAFE_MODE)},				/* unused */
+	{USBB2_ULPITLL_DAT3, (SAFE_MODE)},				/* unused */
+	{USBB2_ULPITLL_DAT4, (SAFE_MODE)},				/* unused */
+	{USBB2_ULPITLL_DAT5, (SAFE_MODE)},				/* unused */
+	{USBB2_ULPITLL_DAT6, (SAFE_MODE)},				/* unused */
+	{USBB2_ULPITLL_DAT7, (SAFE_MODE)},				/* unused */
+	{USBB2_HSIC_DATA, (SAFE_MODE)},					/* unused */
+	{USBB2_HSIC_STROBE, (SAFE_MODE)},				/* nc */
+	{UNIPRO_TX0, (SAFE_MODE)},					/* nc */
+	{UNIPRO_TY0, (SAFE_MODE)},					/* nc */
+	{UNIPRO_TX1, (SAFE_MODE)},					/* nc */
+	{UNIPRO_TY1, (SAFE_MODE)},					/* nc */
+	{UNIPRO_TX2, (SAFE_MODE)},					/* unused */
+	{UNIPRO_TY2, (SAFE_MODE)},					/* unused */
+	{UNIPRO_RX0, (SAFE_MODE)},					/* unused */
+	{UNIPRO_RY0, (SAFE_MODE)},					/* unused */
+	{UNIPRO_RX1, (SAFE_MODE)},					/* unused */
+	{UNIPRO_RY1, (SAFE_MODE)},					/* unused */
+	{UNIPRO_RX2, (SAFE_MODE)},					/* unused */
+	{UNIPRO_RY2, (SAFE_MODE)},					/* unused */
+	{USBA0_OTG_CE, (PTD | OFF_EN | OFF_PD | OFF_OUT_PTD | M0)},	/* usba0_otg_ce */
+	{USBA0_OTG_DP, (IEN | OFF_EN | OFF_PD | OFF_IN | M0)},		/* usba0_otg_dp */
+	{USBA0_OTG_DM, (IEN | OFF_EN | OFF_PD | OFF_IN | M0)},		/* usba0_otg_dm */
+	{FREF_CLK1_OUT, (SAFE_MODE)},					/* nc */
+	{FREF_CLK2_OUT, (SAFE_MODE)},					/* nc */
+	{SYS_NIRQ1, (PTU | IEN | M0)},					/* sys_nirq1 */
+	{SYS_NIRQ2, (SAFE_MODE)},					/* nc */
+	{SYS_BOOT0, (M0)},						/* sys_boot */
+	{SYS_BOOT1, (M0)},						/* sys_boot */
+	{SYS_BOOT2, (M0)},						/* sys_boot */
+	{SYS_BOOT3, (M0)},						/* sys_boot */
+	{SYS_BOOT4, (M0)},						/* sys_boot */
+	{SYS_BOOT5, (M0)},						/* sys_boot */
+	{DPM_EMU0, (IEN | M0)},						/* dpm_emu0 */
+	{DPM_EMU1, (IEN | M0)},						/* dpm_emu1 */
+	{DPM_EMU2, (SAFE_MODE)},					/* unused */
+	{DPM_EMU3, (SAFE_MODE)},					/* unused */
+	{DPM_EMU4, (SAFE_MODE)},					/* unused */
+	{DPM_EMU5, (SAFE_MODE)},					/* unused */
+	{DPM_EMU6, (SAFE_MODE)},					/* unused */
+	{DPM_EMU7, (SAFE_MODE)},					/* unused */
+	{DPM_EMU8, (SAFE_MODE)},					/* unused */
+	{DPM_EMU9, (SAFE_MODE)},					/* unused */
+	{DPM_EMU10, (SAFE_MODE)},					/* unused */
+	{DPM_EMU11, (SAFE_MODE)},					/* unused */
+	{DPM_EMU12, (SAFE_MODE)},					/* unused */
+	{DPM_EMU13, (SAFE_MODE)},					/* unused */
+	{DPM_EMU14, (SAFE_MODE)},					/* unused */
+	{DPM_EMU15, (SAFE_MODE)},					/* unused */
+	{DPM_EMU16, (SAFE_MODE)},					/* unused */
+	{DPM_EMU17, (SAFE_MODE)},					/* unused */
+	{DPM_EMU18, (SAFE_MODE)},					/* unused */
+	{DPM_EMU19, (SAFE_MODE)},					/* unused */
+};
+
+static const struct pad_conf_entry wkup_padconf_array[] = {
+	{PAD0_SIM_IO, (SAFE_MODE)},					/* tbd */
+	{PAD1_SIM_CLK, (SAFE_MODE)},					/* nc */
+	{PAD0_SIM_RESET, (SAFE_MODE)},					/* nc */
+	{PAD1_SIM_CD, (SAFE_MODE)},					/* nc */
+	{PAD0_SIM_PWRCTRL, (SAFE_MODE)},				/* nc */
+	{PAD1_SR_SCL, (PTU | IEN | M0)},				/* sr_scl */
+	{PAD0_SR_SDA, (PTU | IEN | M0)},				/* sr_sda */
+	{PAD1_FREF_XTAL_IN, (M0)},					/* # */
+	{PAD0_FREF_SLICER_IN, (SAFE_MODE)},				/* nc */
+	{PAD1_FREF_CLK_IOREQ, (SAFE_MODE)},				/* nc */
+	{PAD0_FREF_CLK0_OUT, (M2)},					/* sys_drm_msecure */
+	{PAD1_FREF_CLK3_REQ, (SAFE_MODE)},				/* nc */
+	{PAD0_FREF_CLK3_OUT, (M0)},					/* fref_clk3_out */
+	{PAD1_FREF_CLK4_REQ, (IEN | M3)},				/* gpio_wk7 */
+	{PAD0_FREF_CLK4_OUT, (M0)},					/* fref_clk4_out */
+	{PAD1_SYS_32K, (IEN | M0)},					/* sys_32k */
+	{PAD0_SYS_NRESPWRON, (M0)},					/* sys_nrespwron */
+	{PAD1_SYS_NRESWARM, (M0)},					/* sys_nreswarm */
+	{PAD0_SYS_PWR_REQ, (PTU | M0)},					/* sys_pwr_req */
+	{PAD1_SYS_PWRON_RESET, (M0)},					/* sys_pwron_reset_out */
+	{PAD0_SYS_BOOT6, (M0)},						/* sys_boot6 */
+	{PAD1_SYS_BOOT7, (M0)},						/* sys_boot7 */
+};
+
+void set_muxconf_regs(void)
+{
+	omap4_do_set_mux(OMAP44XX_CONTROL_PADCONF_CORE, core_padconf_array,
+			ARRAY_SIZE(core_padconf_array));
+
+	omap4_do_set_mux(OMAP44XX_CONTROL_PADCONF_WKUP, wkup_padconf_array,
+			ARRAY_SIZE(wkup_padconf_array));
+}
diff --git a/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c b/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
new file mode 100644
index 0000000..5513661
--- /dev/null
+++ b/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
@@ -0,0 +1,147 @@
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
+#include <io.h>
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
+#include <mach/omap_hsmmc.h>
+#include <i2c/i2c.h>
+
+static struct NS16550_plat serial_plat = {
+	.clock = 48000000,      /* 48MHz (APLL96/2) */
+	.shift = 2,
+};
+
+static int pcaaxl2_console_init(void)
+{
+	/* Register the serial port */
+	add_ns16550_device(-1, OMAP44XX_UART3_BASE, 1024,
+		IORESOURCE_MEM_8BIT, &serial_plat);
+
+	return 0;
+}
+console_initcall(pcaaxl2_console_init);
+
+static int pcaaxl2_mem_init(void)
+{
+	arm_add_mem_device("ram0", 0x80000000, SZ_512M);
+
+	add_mem_device("sram0", 0x40300000, 48 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	return 0;
+}
+mem_initcall(pcaaxl2_mem_init);
+
+static struct gpmc_config net_cfg = {
+	.cfg = {
+		0x00001000, /* CONF1 */
+		0x00080800, /* CONF2 */
+		0x00000000, /* CONF3 */
+		0x08000800, /* CONF4 */
+		0x000a0a0a, /* CONF5 */
+		0x000003c2, /* CONF6 */
+	},
+	.base = 0x2C000000,
+	.size = GPMC_SIZE_16M,
+};
+
+static void pcaaxl2_network_init(void)
+{
+	gpmc_cs_config(5, &net_cfg);
+
+	add_ks8851_device(-1, net_cfg.base, net_cfg.base + 2,
+				IORESOURCE_MEM_16BIT, NULL);
+}
+
+static struct i2c_board_info i2c_devices[] = {
+	{
+		I2C_BOARD_INFO("twlcore", 0x48),
+	},
+};
+
+
+static struct omap_hsmmc_platform_data mmc_device = {
+	.f_max = 26000000,
+};
+
+#define OMAP4_CONTROL_PBIASLITE			0x4A100600
+#define OMAP4_MMC1_PBIASLITE_VMODE		(1<<21)
+#define OMAP4_MMC1_PBIASLITE_PWRDNZ		(1<<22)
+#define OMAP4_MMC1_PWRDNZ			(1<<26)
+
+static int pcaaxl2_devices_init(void)
+{
+	u32 value;
+
+	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
+	add_generic_device("i2c-omap", -1, NULL, 0x48070000, 0x1000,
+				IORESOURCE_MEM, NULL);
+
+	value = readl(OMAP4_CONTROL_PBIASLITE);
+	value &= ~OMAP4_MMC1_PBIASLITE_VMODE;
+	value |= (OMAP4_MMC1_PBIASLITE_PWRDNZ |	OMAP4_MMC1_PWRDNZ);
+	writel(value, OMAP4_CONTROL_PBIASLITE);
+
+	add_generic_device("omap-hsmmc", -1, NULL, 0x4809C100, SZ_4K,
+			   IORESOURCE_MEM, &mmc_device);
+
+	gpmc_generic_init(0x10);
+
+	pcaaxl2_network_init();
+
+	gpmc_generic_nand_devices_init(0, 16, OMAP_ECC_BCH8_CODE_HW);
+
+#ifdef CONFIG_PARTITION
+	devfs_add_partition("nand0", 0x00000, SZ_128K,
+			PARTITION_FIXED, "xload_raw");
+	dev_add_bb_dev("xload_raw", "xload");
+	devfs_add_partition("nand0", SZ_128K, SZ_256K,
+			PARTITION_FIXED, "self_raw");
+	dev_add_bb_dev("self_raw", "self0");
+	devfs_add_partition("nand0", SZ_128K + SZ_256K, SZ_128K,
+			PARTITION_FIXED, "env_raw");
+	dev_add_bb_dev("env_raw", "env0");
+#endif
+
+	armlinux_set_bootparams((void *)0x80000100);
+	armlinux_set_architecture(MACH_TYPE_PCAAXL2);
+
+	return 0;
+}
+device_initcall(pcaaxl2_devices_init);
diff --git a/arch/arm/configs/phycard_a_xl2_defconfig b/arch/arm/configs/phycard_a_xl2_defconfig
new file mode 100644
index 0000000..62ea5e9
--- /dev/null
+++ b/arch/arm/configs/phycard_a_xl2_defconfig
@@ -0,0 +1,56 @@
+CONFIG_ARCH_OMAP=y
+CONFIG_ARCH_OMAP4=y
+CONFIG_MACH_PCAAXL2=y
+CONFIG_AEABI=y
+CONFIG_ARM_UNWIND=y
+CONFIG_MMU=y
+CONFIG_TEXT_BASE=0x8f000000
+CONFIG_MALLOC_SIZE=0x2000000
+CONFIG_KALLSYMS=y
+CONFIG_PROMPT="barebox> "
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_HUSH_GETOPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+# CONFIG_TIMESTAMP is not set
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/phycard-a-xl2/env/"
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_FLASH=y
+# CONFIG_CMD_BOOTM is not set
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
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
+CONFIG_DRIVER_NET_KS8851_MLL=y
+# CONFIG_SPI is not set
+CONFIG_MTD=y
+CONFIG_NAND=y
+CONFIG_NAND_OMAP_GPMC=y
+CONFIG_UBI=y
+CONFIG_MCI=y
+CONFIG_MCI_OMAP_HSMMC=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/configs/phycard_a_xl2_xload_defconfig b/arch/arm/configs/phycard_a_xl2_xload_defconfig
new file mode 100644
index 0000000..7975220
--- /dev/null
+++ b/arch/arm/configs/phycard_a_xl2_xload_defconfig
@@ -0,0 +1,41 @@
+CONFIG_ARCH_OMAP=y
+CONFIG_ARCH_OMAP4=y
+CONFIG_OMAP_BUILD_IFT=y
+CONFIG_MACH_PCAAXL2=y
+CONFIG_AEABI=y
+CONFIG_THUMB2_BAREBOX=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+# CONFIG_ARM_EXCEPTIONS is not set
+CONFIG_MMU=y
+CONFIG_TEXT_BASE=0x40300000
+CONFIG_MEMORY_LAYOUT_FIXED=y
+CONFIG_STACK_BASE=0x8f000000
+CONFIG_MALLOC_BASE=0x84000000
+CONFIG_MALLOC_SIZE=0x2000000
+CONFIG_MALLOC_DUMMY=y
+CONFIG_PROMPT="barebox> "
+CONFIG_SHELL_NONE=y
+# CONFIG_ERRNO_MESSAGES is not set
+# CONFIG_TIMESTAMP is not set
+# CONFIG_CONSOLE_FULL is not set
+# CONFIG_DEFAULT_ENVIRONMENT is not set
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
+# CONFIG_SPI is not set
+CONFIG_MTD=y
+# CONFIG_MTD_WRITE is not set
+# CONFIG_MTD_OOB_DEVICE is not set
+CONFIG_NAND=y
+# CONFIG_NAND_ECC_SOFT is not set
+# CONFIG_NAND_ECC_HW_SYNDROME is not set
+# CONFIG_NAND_ECC_HW_NONE is not set
+# CONFIG_NAND_INFO is not set
+# CONFIG_NAND_BBT is not set
+CONFIG_NAND_OMAP_GPMC=y
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+# CONFIG_MCI_WRITE is not set
+CONFIG_MCI_OMAP_HSMMC=y
+# CONFIG_FS_RAMFS is not set
+# CONFIG_FS_DEVFS is not set
+CONFIG_FS_FAT=y
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index f3db8f6..386c484 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -103,6 +103,8 @@ config BOARDINFO
 	default "Texas Instrument's Panda" if MACH_PANDA
 	default "Phytec phyCORE pcm049" if MACH_PCM049
 	default "Phytec phyCARD-A-L1" if MACH_PCAAL1
+	default "Phytec phyCARD-A-XL2" if MACH_PCAAXL2
+
 choice
 	prompt "Select OMAP board"
 
@@ -153,6 +155,14 @@ config MACH_PCAAL1
 	  help
 	  Say Y here if you are using a phyCARD-A-L1 PCA-A-L1
 
+config MACH_PCAAXL2
+	bool "Phytec phyCARD XL2"
+	select HAVE_NOSHELL
+	select MACH_HAS_LOWLEVEL_INIT
+	depends on ARCH_OMAP4
+	help
+	  Say Y here if you are using a phyCARD-A-XL1 PCA-A-XL1
+
 endchoice
 
 if MACH_OMAP3EVM
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
