Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pq2Cw-0007zB-4U
	for barebox@lists.infradead.org; Thu, 17 Feb 2011 11:39:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 17 Feb 2011 12:39:30 +0100
Message-Id: <1297942771-2289-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1297942771-2289-1-git-send-email-s.hauer@pengutronix.de>
References: <1297942771-2289-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] initial karo tx25 board support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile                            |    1 +
 arch/arm/boards/karo-tx25/Makefile           |   24 ++
 arch/arm/boards/karo-tx25/board.c            |  312 ++++++++++++++++++++++++++
 arch/arm/boards/karo-tx25/config.h           |   31 +++
 arch/arm/boards/karo-tx25/env/bin/init_board |    6 +
 arch/arm/boards/karo-tx25/env/config         |   53 +++++
 arch/arm/boards/karo-tx25/lowlevel.c         |  173 ++++++++++++++
 arch/arm/mach-imx/Kconfig                    |    9 +
 8 files changed, 609 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/karo-tx25/Makefile
 create mode 100644 arch/arm/boards/karo-tx25/board.c
 create mode 100644 arch/arm/boards/karo-tx25/config.h
 create mode 100644 arch/arm/boards/karo-tx25/env/bin/init_board
 create mode 100644 arch/arm/boards/karo-tx25/env/config
 create mode 100644 arch/arm/boards/karo-tx25/lowlevel.c

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 57a045f..14fd4f1 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -95,6 +95,7 @@ board-$(CONFIG_MACH_FREESCALE_MX51_PDK)		:= freescale-mx51-pdk
 board-$(CONFIG_MACH_GUF_CUPID)			:= guf-cupid
 board-$(CONFIG_MACH_MINI2440)			:= mini2440
 board-$(CONFIG_MACH_VERSATILEPB)		:= versatile
+board-$(CONFIG_MACH_TX25)			:= karo-tx25
 
 machdirs := $(patsubst %,arch/arm/mach-%/,$(machine-y))
 
diff --git a/arch/arm/boards/karo-tx25/Makefile b/arch/arm/boards/karo-tx25/Makefile
new file mode 100644
index 0000000..e909a2c
--- /dev/null
+++ b/arch/arm/boards/karo-tx25/Makefile
@@ -0,0 +1,24 @@
+#
+# (C) Copyright 2011 Sascha Hauer <s.hauer@pengutronix.de>
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
diff --git a/arch/arm/boards/karo-tx25/board.c b/arch/arm/boards/karo-tx25/board.c
new file mode 100644
index 0000000..ea35857
--- /dev/null
+++ b/arch/arm/boards/karo-tx25/board.c
@@ -0,0 +1,312 @@
+/*
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
+#include <fec.h>
+#include <nand.h>
+#include <mach/iomux-mx25.h>
+#include <mach/generic.h>
+#include <linux/err.h>
+#include <mach/devices-imx25.h>
+#include <asm/mmu.h>
+
+static struct fec_platform_data fec_info = {
+	.xcv_type	= RMII,
+	.phy_addr	= 0x1f,
+};
+
+static struct memory_platform_data sdram0_pdata = {
+	.name	= "ram0",
+	.flags	= DEVFS_RDWR,
+};
+
+static struct device_d sdram0_dev = {
+	.id	  = -1,
+	.name     = "mem",
+	.map_base = IMX_SDRAM_CS0,
+	.size     = 32 * 1024 * 1024,
+	.platform_data = &sdram0_pdata,
+};
+
+static struct memory_platform_data sdram1_pdata = {
+	.name	= "ram1",
+	.flags	= DEVFS_RDWR,
+};
+
+static struct device_d sdram1_dev = {
+	.id	  = -1,
+	.name     = "mem",
+	.map_base = IMX_SDRAM_CS1,
+	.size     = 32 * 1024 * 1024,
+	.platform_data = &sdram1_pdata,
+};
+
+static struct memory_platform_data sram_pdata = {
+	.name	= "sram0",
+	.flags	= DEVFS_RDWR,
+};
+
+static struct device_d sram0_dev = {
+	.id	  = -1,
+	.name     = "mem",
+	.map_base = 0x78000000,
+	.size     = 128 * 1024,
+	.platform_data = &sram_pdata,
+};
+
+struct imx_nand_platform_data nand_info = {
+	.width	= 1,
+	.hw_ecc	= 1,
+	.flash_bbt = 1,
+};
+
+#ifdef CONFIG_MMU
+static int tx25_mmu_init(void)
+{
+	mmu_init();
+
+	arm_create_section(0x80000000, 0x80000000, 32, PMD_SECT_DEF_CACHED);
+	arm_create_section(0x90000000, 0x90000000, 32, PMD_SECT_DEF_CACHED);
+	arm_create_section(0x92000000, 0x90000000, 32, PMD_SECT_DEF_UNCACHED);
+
+	setup_dma_coherent(0x02000000);
+
+#if TEXT_BASE & (0x100000 - 1)
+#warning cannot create vector section. Adjust TEXT_BASE to a 1M boundary
+#else
+	arm_create_section(0x0,        TEXT_BASE,   1, PMD_SECT_DEF_UNCACHED);
+#endif
+	mmu_enable();
+
+	return 0;
+}
+postcore_initcall(tx25_mmu_init);
+#endif
+
+static struct pad_desc karo_tx25_padsd_fec[] = {
+	MX25_PAD_D11__GPIO_4_9,		/* FEC PHY power on pin */
+	MX25_PAD_D13__GPIO_4_7,		/* FEC reset */
+	MX25_PAD_FEC_MDC__FEC_MDC,
+	MX25_PAD_FEC_MDIO__FEC_MDIO,
+	MX25_PAD_FEC_TDATA0__FEC_TDATA0,
+	MX25_PAD_FEC_TDATA1__FEC_TDATA1,
+	MX25_PAD_FEC_TX_EN__FEC_TX_EN,
+	MX25_PAD_FEC_RDATA0__FEC_RDATA0,
+	MX25_PAD_FEC_RDATA1__FEC_RDATA1,
+	MX25_PAD_FEC_RX_DV__FEC_RX_DV,
+	MX25_PAD_FEC_TX_CLK__FEC_TX_CLK,
+};
+
+#define TX25_FEC_PWR_GPIO	(GPIO_PORTD | 9)
+#define TX25_FEC_RST_GPIO	(GPIO_PORTD | 7)
+
+static void noinline gpio_fec_active(void)
+{
+	mxc_iomux_v3_setup_multiple_pads(karo_tx25_padsd_fec,
+			ARRAY_SIZE(karo_tx25_padsd_fec));
+
+	/* power down phy, put into reset */
+	gpio_direction_output(TX25_FEC_PWR_GPIO, 0);
+	gpio_direction_output(TX25_FEC_RST_GPIO, 0);
+
+	udelay(10);
+
+	/* power up phy, get out of reset */
+	gpio_direction_output(TX25_FEC_PWR_GPIO, 1);
+	gpio_direction_output(TX25_FEC_RST_GPIO, 1);
+
+	udelay(100);
+
+	/* apply a reset to the powered phy again */
+	gpio_direction_output(TX25_FEC_RST_GPIO, 0);
+	udelay(100);
+	gpio_direction_output(TX25_FEC_RST_GPIO, 1);
+}
+
+static int tx25_devices_init(void)
+{
+	gpio_fec_active();
+
+	imx25_add_fec(&fec_info);
+
+	if (readl(IMX_CCM_BASE + CCM_RCSR) & (1 << 14))
+		nand_info.width = 2;
+
+	imx25_add_nand(&nand_info);
+
+	devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_raw");
+	dev_add_bb_dev("self_raw", "self0");
+
+	devfs_add_partition("nand0", 0x40000, 0x80000, PARTITION_FIXED, "env_raw");
+	dev_add_bb_dev("env_raw", "env0");
+
+	register_device(&sdram0_dev);
+	register_device(&sdram1_dev);
+	register_device(&sram0_dev);
+
+	armlinux_add_dram(&sdram0_dev);
+	armlinux_add_dram(&sdram1_dev);
+	armlinux_set_bootparams((void *)0x80000100);
+	armlinux_set_architecture(MACH_TYPE_TX25);
+	armlinux_set_serial(imx_uid());
+
+	return 0;
+}
+
+device_initcall(tx25_devices_init);
+
+static struct pad_desc tx25_pads[] = {
+	MX25_PAD_D12__GPIO_4_8,
+	MX25_PAD_D10__GPIO_4_10,
+	MX25_PAD_NF_CE0__NF_CE0,
+	MX25_PAD_NFWE_B__NFWE_B,
+	MX25_PAD_NFRE_B__NFRE_B,
+	MX25_PAD_NFALE__NFALE,
+	MX25_PAD_NFCLE__NFCLE,
+	MX25_PAD_NFWP_B__NFWP_B,
+	MX25_PAD_NFRB__NFRB,
+	MX25_PAD_D7__D7,
+	MX25_PAD_D6__D6,
+	MX25_PAD_D5__D5,
+	MX25_PAD_D4__D4,
+	MX25_PAD_D3__D3,
+	MX25_PAD_D2__D2,
+	MX25_PAD_D1__D1,
+	MX25_PAD_D0__D0,
+	MX25_PAD_UART1_TXD__UART1_TXD,
+	MX25_PAD_UART1_RXD__UART1_RXD,
+	MX25_PAD_UART1_CTS__UART1_CTS,
+	MX25_PAD_UART1_RTS__UART1_RTS,
+};
+
+static int tx25_console_init(void)
+{
+	mxc_iomux_v3_setup_multiple_pads(tx25_pads, ARRAY_SIZE(tx25_pads));
+
+	imx25_add_uart0();
+	return 0;
+}
+
+console_initcall(tx25_console_init);
+
+#ifdef CONFIG_NAND_IMX_BOOT
+void __bare_init nand_boot(void)
+{
+	imx_nand_load_image((void *)TEXT_BASE, 256 * 1024);
+}
+#endif
+
+static struct pad_desc tx25_lcdc_gpios[] = {
+	MX25_PAD_A18__GPIO_2_4,		/* LCD Reset (active LOW) */
+	MX25_PAD_PWM__GPIO_1_26,	/* LCD Backlight brightness 0: full 1: off */
+	MX25_PAD_A19__GPIO_2_5,		/* LCD Power Enable 0: off 1: on */
+	MX25_PAD_LSCLK__LSCLK,
+	MX25_PAD_LD0__LD0,
+	MX25_PAD_LD1__LD1,
+	MX25_PAD_LD2__LD2,
+	MX25_PAD_LD3__LD3,
+	MX25_PAD_LD4__LD4,
+	MX25_PAD_LD5__LD5,
+	MX25_PAD_LD6__LD6,
+	MX25_PAD_LD7__LD7,
+	MX25_PAD_LD8__LD8,
+	MX25_PAD_LD9__LD9,
+	MX25_PAD_LD10__LD10,
+	MX25_PAD_LD11__LD11,
+	MX25_PAD_LD12__LD12,
+	MX25_PAD_LD13__LD13,
+	MX25_PAD_LD14__LD14,
+	MX25_PAD_LD15__LD15,
+	MX25_PAD_D15__LD16,
+	MX25_PAD_D14__LD17,
+	MX25_PAD_HSYNC__HSYNC,
+	MX25_PAD_VSYNC__VSYNC,
+	MX25_PAD_OE_ACD__OE_ACD,
+};
+
+static struct imx_fb_videomode stk5_fb_mode = {
+	.bpp	= 16,
+	.mode = {
+		.name = "G-ETV570G0DMU",
+		.pixclock	= 33333,
+
+		.xres		= 640,
+		.yres		= 480,
+
+		.hsync_len	= 64,
+		.left_margin	= 96,
+		.right_margin	= 80,
+
+		.vsync_len	= 3,
+		.upper_margin	= 46,
+		.lower_margin	= 39,
+	},
+	.pcr	= PCR_TFT | PCR_COLOR | PCR_FLMPOL | PCR_LPPOL | PCR_SCLK_SEL,
+};
+
+#define STK5_LCD_BACKLIGHT_GPIO		(GPIO_PORTA | 26)
+#define STK5_LCD_RESET_GPIO		(GPIO_PORTB | 4)
+#define STK5_LCD_POWER_GPIO		(GPIO_PORTB | 5)
+
+static void tx25_fb_enable(int enable)
+{
+	if (enable) {
+		gpio_direction_output(STK5_LCD_RESET_GPIO, 1);
+		gpio_direction_output(STK5_LCD_POWER_GPIO, 1);
+		mdelay(300);
+		gpio_direction_output(STK5_LCD_BACKLIGHT_GPIO, 0);
+	} else {
+		gpio_direction_output(STK5_LCD_BACKLIGHT_GPIO, 1);
+		gpio_direction_output(STK5_LCD_RESET_GPIO, 0);
+		gpio_direction_output(STK5_LCD_POWER_GPIO, 0);
+	}
+}
+
+static struct imx_fb_platform_data tx25_fb_data = {
+	.mode		= &stk5_fb_mode,
+	.dmacr		= 0x80040060,
+	.enable		= tx25_fb_enable,
+};
+
+static int tx25_init_fb(void)
+{
+	tx25_fb_enable(0);
+
+	mxc_iomux_v3_setup_multiple_pads(tx25_lcdc_gpios,
+			ARRAY_SIZE(tx25_lcdc_gpios));
+
+	imx25_add_fb(&tx25_fb_data);
+
+	return 0;
+}
+device_initcall(tx25_init_fb);
diff --git a/arch/arm/boards/karo-tx25/config.h b/arch/arm/boards/karo-tx25/config.h
new file mode 100644
index 0000000..f3a7c80
--- /dev/null
+++ b/arch/arm/boards/karo-tx25/config.h
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
+#define CONFIG_MX25_HCLK_FREQ	24000000
+
+#endif
+
+/* nothing to do here yet */
diff --git a/arch/arm/boards/karo-tx25/env/bin/init_board b/arch/arm/boards/karo-tx25/env/bin/init_board
new file mode 100644
index 0000000..b17c55d
--- /dev/null
+++ b/arch/arm/boards/karo-tx25/env/bin/init_board
@@ -0,0 +1,6 @@
+
+if [ -e /dev/fb0 -a -e /env/splash.bmp ]; then
+	bmp /env/splash.bmp
+	fb0.enable=1
+fi
+
diff --git a/arch/arm/boards/karo-tx25/env/config b/arch/arm/boards/karo-tx25/env/config
new file mode 100644
index 0000000..e4ff756
--- /dev/null
+++ b/arch/arm/boards/karo-tx25/env/config
@@ -0,0 +1,53 @@
+
+machine=tx25
+baseboard=tx28stk5
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
+# can be either 'net'
+kernel_loc=net
+# can be either 'net' or 'initrd'
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
+bootargs="console=ttymxc0,115200 tx25_base=$baseboard"
+
+nand_parts="256k(barebox)ro,512k(bareboxenv),2M(kernel),-(root)"
+nand_device=mxc_nand
+rootfs_mtdblock_nand=3
+
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
+
diff --git a/arch/arm/boards/karo-tx25/lowlevel.c b/arch/arm/boards/karo-tx25/lowlevel.c
new file mode 100644
index 0000000..86319d7
--- /dev/null
+++ b/arch/arm/boards/karo-tx25/lowlevel.c
@@ -0,0 +1,173 @@
+/*
+ *
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
+#include <mach/imx-regs.h>
+#include <mach/esdctl.h>
+#include <asm/io.h>
+#include <mach/imx-nand.h>
+#include <asm/barebox-arm.h>
+#include <asm/system.h>
+#include <asm-generic/memory_layout.h>
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
+static inline void __bare_init  setup_sdram(uint32_t base, uint32_t esdctl,
+		uint32_t esdcfg)
+{
+	uint32_t esdctlreg = ESDCTL0;
+	uint32_t esdcfgreg = ESDCFG0;
+
+	if (base == 0x90000000) {
+		esdctlreg += 8;
+		esdcfgreg += 8;
+	}
+
+	esdctl |= ESDCTL0_SDE;
+
+	writel(esdcfg, esdcfgreg);
+	writel(esdctl | ESDCTL0_SMODE_PRECHARGE, esdctlreg);
+	writel(0, base + 1024);
+	writel(esdctl | ESDCTL0_SMODE_AUTO_REFRESH, esdctlreg);
+	readb(base);
+	readb(base);
+	writel(esdctl | ESDCTL0_SMODE_LOAD_MODE, esdctlreg);
+	writeb(0, base + 0x33);
+	writel(esdctl, esdctlreg);
+}
+
+void __bare_init __naked board_init_lowlevel(void)
+{
+	uint32_t r;
+	int i;
+#ifdef CONFIG_NAND_IMX_BOOT
+	unsigned int *trg, *src;
+#endif
+
+	/* AIPS setup - Only setup MPROTx registers. The PACR default values are good.
+	 * Set all MPROTx to be non-bufferable, trusted for R/W,
+	 * not forced to user-mode.
+	 */
+	writel(0x77777777, 0x43f00000);
+	writel(0x77777777, 0x43f00004);
+	writel(0x77777777, 0x53f00000);
+	writel(0x77777777, 0x53f00004);
+
+	/* MAX (Multi-Layer AHB Crossbar Switch) setup
+	 * MPR - priority for MX25 is (SDHC2/SDMA)>USBOTG>RTIC>IAHB>DAHB
+	 */
+	writel(0x00043210, 0x43f04000);
+	writel(0x00043210, 0x43f04100);
+	writel(0x00043210, 0x43f04200);
+	writel(0x00043210, 0x43f04300);
+	writel(0x00043210, 0x43f04400);
+	/* SGPCR - always park on last master */
+	writel(0x10, 0x43f04010);
+	writel(0x10, 0x43f04110);
+	writel(0x10, 0x43f04210);
+	writel(0x10, 0x43f04310);
+	writel(0x10, 0x43f04410);
+	/* MGPCR - restore default values */
+	writel(0x0, 0x43f04800);
+	writel(0x0, 0x43f04900);
+	writel(0x0, 0x43f04a00);
+	writel(0x0, 0x43f04b00);
+	writel(0x0, 0x43f04c00);
+
+	/* Configure M3IF registers
+	 * M3IF Control Register (M3IFCTL) for MX25
+	 * MRRP[0] = LCDC           on priority list (1 << 0)  = 0x00000001
+	 * MRRP[1] = MAX1       not on priority list (0 << 1)  = 0x00000000
+	 * MRRP[2] = MAX0       not on priority list (0 << 2)  = 0x00000000
+	 * MRRP[3] = USB HOST   not on priority list (0 << 3)  = 0x00000000
+	 * MRRP[4] = SDMA       not on priority list (0 << 4)  = 0x00000000
+	 * MRRP[5] = SD/ATA/FEC not on priority list (0 << 5)  = 0x00000000
+	 * MRRP[6] = SCMFBC     not on priority list (0 << 6)  = 0x00000000
+	 * MRRP[7] = CSI        not on priority list (0 << 7)  = 0x00000000
+	 *                                                       ----------
+	 *                                                       0x00000001
+	 */
+	writel(0x1, 0xb8003000);
+
+	/* configure ARM clk */
+	writel(0x20034000, IMX_CCM_BASE + CCM_CCTL);
+
+	/* enable all the clocks */
+	writel(0x1fffffff, IMX_CCM_BASE + CCM_CGCR0);
+	writel(0xffffffff, IMX_CCM_BASE + CCM_CGCR1);
+	writel(0x000fdfff, IMX_CCM_BASE + CCM_CGCR2);
+
+	/* Skip SDRAM initialization if we run from RAM */
+	r = get_pc();
+	if (r > 0x80000000 && r < 0x90000000)
+		board_init_lowlevel_return();
+
+	/* set to 3.3v SDRAM */
+	writel(0x800, IMX_IOMUXC_BASE + 0x454);
+
+	writel(ESDMISC_RST, ESDMISC);
+
+	while (!(readl(ESDMISC) & (1 << 31)));
+
+#define ESDCTLVAL	(ESDCTL0_ROW13 | ESDCTL0_COL9 |	ESDCTL0_DSIZ_15_0 | \
+			 ESDCTL0_REF4 | ESDCTL0_PWDT_PRECHARGE_PWDN | ESDCTL0_BL)
+#define ESDCFGVAL	(ESDCFGx_tRP_3 | ESDCFGx_tMRD_2 | ESDCFGx_tRAS_6 | \
+			 ESDCFGx_tRRD_2 | ESDCFGx_tCAS_3 | ESDCFGx_tRCD_3 | \
+			 ESDCFGx_tRC_9)
+
+	setup_sdram(0x80000000, ESDCTLVAL, ESDCFGVAL);
+	setup_sdram(0x90000000, ESDCTLVAL, ESDCFGVAL);
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
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 5b8ac89..235f644 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -19,6 +19,7 @@ config ARCH_TEXT_BASE
 	default 0xa7e00000 if MACH_NESO
 	default 0x97f00000 if MACH_MX51_PDK
 	default 0x87f00000 if MACH_GUF_CUPID
+	default 0x93d00000 if MACH_TX25
 
 config BOARDINFO
 	default "Eukrea CPUIMX25" if MACH_EUKREA_CPUIMX25
@@ -36,6 +37,7 @@ config BOARDINFO
 	default "Garz+Fricke Neso" if MACH_NESO
 	default "Freescale i.MX51 PDK" if MACH_FREESCALE_MX51_PDK
 	default "Garz+Fricke Cupid" if MACH_GUF_CUPID
+	default "Ka-Ro tx25" if MACH_TX25
 
 config ARCH_IMX_INTERNAL_BOOT
 	bool "support internal boot mode"
@@ -175,6 +177,13 @@ config MACH_FREESCALE_MX25_3STACK
 	  Say Y here if you are using the Freescale MX25 3stack board equipped
 	  with a Freescale i.MX25 Processor
 
+config MACH_TX25
+	bool "Ka-Ro TX25"
+	select MACH_HAS_LOWLEVEL_INIT
+	select HAVE_MMU
+	help
+	  Say Y here if you are using the Ka-Ro tx25 board
+
 endchoice
 
 endif
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
