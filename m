Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9HT5-0006Hx-1i
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 13:15:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Oct 2010 15:15:29 +0200
Message-Id: <1287753331-7696-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1287753331-7696-1-git-send-email-s.hauer@pengutronix.de>
References: <1287753331-7696-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/13] ARM: Add Garz+Fricke Cupid board support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile                    |    1 +
 arch/arm/boards/guf-cupid/Makefile   |   24 ++
 arch/arm/boards/guf-cupid/board.c    |  426 ++++++++++++++++++++++++++++++++++
 arch/arm/boards/guf-cupid/config.h   |   31 +++
 arch/arm/boards/guf-cupid/cupid.dox  |    9 +
 arch/arm/boards/guf-cupid/env/config |   56 +++++
 arch/arm/boards/guf-cupid/lowlevel.c |  349 ++++++++++++++++++++++++++++
 arch/arm/mach-imx/Kconfig            |   11 +
 8 files changed, 907 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/guf-cupid/Makefile
 create mode 100644 arch/arm/boards/guf-cupid/board.c
 create mode 100644 arch/arm/boards/guf-cupid/config.h
 create mode 100644 arch/arm/boards/guf-cupid/cupid.dox
 create mode 100644 arch/arm/boards/guf-cupid/env/config
 create mode 100644 arch/arm/boards/guf-cupid/lowlevel.c

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index d9670c4..cdb0185 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -84,6 +84,7 @@ board-$(CONFIG_MACH_NESO)			:= guf-neso
 board-$(CONFIG_MACH_MX23EVK)			:= freescale-mx23-evk
 board-$(CONFIG_MACH_CHUMBY)			:= chumby_falconwing
 board-$(CONFIG_MACH_FREESCALE_MX51_PDK)		:= freescale-mx51-pdk
+board-$(CONFIG_MACH_GUF_CUPID)			:= guf-cupid
 
 machdirs := $(patsubst %,arch/arm/mach-%/,$(machine-y))
 
diff --git a/arch/arm/boards/guf-cupid/Makefile b/arch/arm/boards/guf-cupid/Makefile
new file mode 100644
index 0000000..3a06cf4
--- /dev/null
+++ b/arch/arm/boards/guf-cupid/Makefile
@@ -0,0 +1,24 @@
+#
+# (C) Copyright 2007 Juergen Beisert <jbe@pengutronix.de>
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
diff --git a/arch/arm/boards/guf-cupid/board.c b/arch/arm/boards/guf-cupid/board.c
new file mode 100644
index 0000000..6d7a99b
--- /dev/null
+++ b/arch/arm/boards/guf-cupid/board.c
@@ -0,0 +1,426 @@
+/*
+ * (C) 2007 Pengutronix, Sascha Hauer <s.hauer@pengutronix.de>
+ * (C) 2009 Pengutronix, Juergen Beisert <kernel@pengutronix.de>
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
+ * Board support for the Garz+Fricke Cupid board
+ */
+
+#include <common.h>
+#include <command.h>
+#include <init.h>
+#include <driver.h>
+#include <environment.h>
+#include <fs.h>
+#include <mach/imx-regs.h>
+#include <asm/armlinux.h>
+#include <mach/gpio.h>
+#include <asm/io.h>
+#include <partition.h>
+#include <nand.h>
+#include <generated/mach-types.h>
+#include <mach/imx-nand.h>
+#include <fec.h>
+#include <fb.h>
+#include <asm/mmu.h>
+#include <mach/imx-ipu-fb.h>
+#include <mach/imx-pll.h>
+#include <mach/iomux-mx35.h>
+
+static struct fec_platform_data fec_info = {
+	.xcv_type = MII100,
+};
+
+static struct device_d fec_dev = {
+	.id	  = -1,
+	.name     = "fec_imx",
+	.map_base = IMX_FEC_BASE,
+	.platform_data	= &fec_info,
+};
+
+static struct memory_platform_data ram_pdata = {
+	.name = "ram0",
+	.flags = DEVFS_RDWR,
+};
+
+static struct device_d sdram0_dev = {
+	.id	  = -1,
+	.name     = "mem",
+	.map_base = IMX_SDRAM_CS0,
+	.size     = 128 * 1024 * 1024,
+	.platform_data = &ram_pdata,
+};
+
+struct imx_nand_platform_data nand_info = {
+	.width	= 1,
+	.hw_ecc	= 1,
+	.flash_bbt = 1,
+};
+
+static struct device_d nand_dev = {
+	.id	  = -1,
+	.name     = "imx_nand",
+	.map_base = IMX_NFC_BASE,
+	.platform_data	= &nand_info,
+};
+
+static struct fb_videomode guf_cupid_fb_mode = {
+	/* 800x480 @ 70 Hz */
+	.name		= "CPT CLAA070LC0JCT",
+	.refresh	= 70,
+	.xres		= 800,
+	.yres		= 480,
+	.pixclock	= 30761,
+	.left_margin	= 24,
+	.right_margin	= 47,
+	.upper_margin	= 5,
+	.lower_margin	= 3,
+	.hsync_len	= 24,
+	.vsync_len	= 3,
+	.sync		= FB_SYNC_VERT_HIGH_ACT | FB_SYNC_CLK_INVERT |
+			  FB_SYNC_OE_ACT_HIGH,
+	.vmode		= FB_VMODE_NONINTERLACED,
+	.flag		= 0,
+};
+
+#define GPIO_LCD_ENABLE		(2 * 32 + 24)
+#define GPIO_LCD_BACKLIGHT	(0 * 32 + 19)
+
+static void cupid_fb_enable(int enable)
+{
+	if (enable) {
+		gpio_direction_output(GPIO_LCD_ENABLE, 1);
+		mdelay(100);
+		gpio_direction_output(GPIO_LCD_BACKLIGHT, 1);
+	} else {
+		gpio_direction_output(GPIO_LCD_BACKLIGHT, 0);
+		mdelay(100);
+		gpio_direction_output(GPIO_LCD_ENABLE, 0);
+	}
+}
+
+static struct imx_ipu_fb_platform_data ipu_fb_data = {
+	.mode		= &guf_cupid_fb_mode,
+	.bpp		= 16,
+	.enable		= cupid_fb_enable,
+};
+
+static struct device_d imx_ipu_fb_dev = {
+	.id		= -1,
+	.name		= "imx-ipu-fb",
+	.map_base	= 0x53fc0000,
+	.size		= 0x1000,
+	.platform_data	= &ipu_fb_data,
+};
+
+static struct device_d esdhc_dev = {
+	.name		= "imx-esdhc",
+	.map_base	= IMX_SDHC1_BASE,
+};
+
+#ifdef CONFIG_MMU
+static int cupid_mmu_init(void)
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
+
+	mmu_enable();
+
+#ifdef CONFIG_CACHE_L2X0
+	l2x0_init((void __iomem *)0x30000000, 0x00030024, 0x00000000);
+#endif
+	return 0;
+}
+postcore_initcall(cupid_mmu_init);
+#endif
+
+static int cupid_devices_init(void)
+{
+	uint32_t reg;
+
+	gpio_direction_output(GPIO_LCD_ENABLE, 0);
+	gpio_direction_output(GPIO_LCD_BACKLIGHT, 0);
+
+	reg = readl(IMX_CCM_BASE + CCM_RCSR);
+	/* some fuses provide us vital information about connected hardware */
+	if (reg & 0x20000000)
+		nand_info.width = 2;    /* 16 bit */
+	else
+		nand_info.width = 1;    /* 8 bit */
+
+	register_device(&fec_dev);
+	register_device(&nand_dev);
+
+	devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_raw");
+	dev_add_bb_dev("self_raw", "self0");
+	devfs_add_partition("nand0", 0x40000, 0x80000, PARTITION_FIXED, "env_raw");
+	dev_add_bb_dev("env_raw", "env0");
+
+	register_device(&sdram0_dev);
+	register_device(&imx_ipu_fb_dev);
+	register_device(&esdhc_dev);
+
+	armlinux_add_dram(&sdram0_dev);
+	armlinux_set_bootparams((void *)0x80000100);
+	armlinux_set_architecture(MACH_TYPE_GUF_CUPID);
+
+	return 0;
+}
+
+device_initcall(cupid_devices_init);
+
+static struct device_d cupid_serial_device = {
+	.id	  = -1,
+	.name     = "imx_serial",
+	.map_base = IMX_UART1_BASE,
+	.size     = 16 * 1024,
+};
+
+static struct pad_desc cupid_pads[] = {
+	/* UART1 */
+	MX35_PAD_CTS1__UART1_CTS,
+	MX35_PAD_RTS1__UART1_RTS,
+	MX35_PAD_TXD1__UART1_TXD_MUX,
+	MX35_PAD_RXD1__UART1_RXD_MUX,
+	/* UART2 */
+	MX35_PAD_CTS2__UART2_CTS,
+	MX35_PAD_RTS2__UART2_RTS,
+	MX35_PAD_TXD2__UART2_TXD_MUX,
+	MX35_PAD_RXD2__UART2_RXD_MUX,
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
+	MX35_PAD_FEC_RDATA1__FEC_RDATA_1,
+	MX35_PAD_FEC_TDATA1__FEC_TDATA_1,
+	MX35_PAD_FEC_RDATA2__FEC_RDATA_2,
+	MX35_PAD_FEC_TDATA2__FEC_TDATA_2,
+	MX35_PAD_FEC_RDATA3__FEC_RDATA_3,
+	MX35_PAD_FEC_TDATA3__FEC_TDATA_3,
+	/* I2C1 */
+	MX35_PAD_I2C1_CLK__I2C1_SCL,
+	MX35_PAD_I2C1_DAT__I2C1_SDA,
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
+	MX35_PAD_D3_HSYNC__IPU_DISPB_D3_HSYNC,
+	MX35_PAD_D3_FPSHIFT__IPU_DISPB_D3_CLK,
+	MX35_PAD_D3_DRDY__IPU_DISPB_D3_DRDY,
+	MX35_PAD_D3_VSYNC__IPU_DISPB_D3_VSYNC,
+	MX35_PAD_LD18__GPIO3_24,		/* LCD enable */
+	MX35_PAD_CSPI1_SS1__GPIO1_19,		/* LCD backligtht PWM */
+	/* USB Host*/
+	MX35_PAD_MLB_CLK__GPIO3_3,		/* USB Host PWR */
+	MX35_PAD_MLB_DAT__GPIO3_4,		/* USB Host Overcurrent */
+	/* USB OTG */
+	MX35_PAD_USBOTG_PWR__USB_TOP_USBOTG_PWR,
+	MX35_PAD_USBOTG_OC__USB_TOP_USBOTG_OC,
+	/* SSI */
+	MX35_PAD_STXFS4__AUDMUX_AUD4_TXFS,
+	MX35_PAD_STXD4__AUDMUX_AUD4_TXD,
+	MX35_PAD_SRXD4__AUDMUX_AUD4_RXD,
+	MX35_PAD_SCK4__AUDMUX_AUD4_TXC,
+	/* UCB1400 IRQ */
+	MX35_PAD_ATA_INTRQ__GPIO2_29,
+	/* Speaker On */
+	MX35_PAD_LD20__GPIO3_26,
+	/* LEDs */
+	MX35_PAD_TX1__GPIO1_14,
+	/* ESDHC1 */
+	MX35_PAD_SD1_CMD__ESDHC1_CMD,
+	MX35_PAD_SD1_CLK__ESDHC1_CLK,
+	MX35_PAD_SD1_DATA0__ESDHC1_DAT0,
+	MX35_PAD_SD1_DATA1__ESDHC1_DAT1,
+	MX35_PAD_SD1_DATA2__ESDHC1_DAT2,
+	MX35_PAD_SD1_DATA3__ESDHC1_DAT3,
+	/* ESDHC1 CD */
+	MX35_PAD_ATA_DATA5__GPIO2_18,
+	/* ESDHC1 WP */
+	MX35_PAD_ATA_DATA6__GPIO2_19,
+};
+
+static int cupid_console_init(void)
+{
+	mxc_iomux_v3_setup_multiple_pads(cupid_pads, ARRAY_SIZE(cupid_pads));
+
+	register_device(&cupid_serial_device);
+	return 0;
+}
+
+console_initcall(cupid_console_init);
+
+static int cupid_core_setup(void)
+{
+	u32 tmp;
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
+	writel(0x0000DCF6, CSCR_U(0)); /* CS0: NOR Flash */
+	writel(0x444A4541, CSCR_L(0));
+	writel(0x44443302, CSCR_A(0));
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
+core_initcall(cupid_core_setup);
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
diff --git a/arch/arm/boards/guf-cupid/config.h b/arch/arm/boards/guf-cupid/config.h
new file mode 100644
index 0000000..0e3b175
--- /dev/null
+++ b/arch/arm/boards/guf-cupid/config.h
@@ -0,0 +1,31 @@
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
+/*
+ * Definitions related to passing arguments to kernel.
+ */
+
+#define CONFIG_MX35_HCLK_FREQ	24000000
+
+#endif
+
+/* nothing to do here yet */
diff --git a/arch/arm/boards/guf-cupid/cupid.dox b/arch/arm/boards/guf-cupid/cupid.dox
new file mode 100644
index 0000000..2ff1b2c
--- /dev/null
+++ b/arch/arm/boards/guf-cupid/cupid.dox
@@ -0,0 +1,9 @@
+/** @page Garz+Fricke Cupid
+
+This CPU card is based on a Freescale i.MX35 CPU. The card is shipped with:
+
+- 256MiB Nand flash
+- 128MiB synchronous dynamic RAM
+
+
+*/
diff --git a/arch/arm/boards/guf-cupid/env/config b/arch/arm/boards/guf-cupid/env/config
new file mode 100644
index 0000000..4db05b6
--- /dev/null
+++ b/arch/arm/boards/guf-cupid/env/config
@@ -0,0 +1,56 @@
+#!/bin/sh
+
+machine=cupid
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
+# can be either 'net', 'nor' or 'nand'
+kernel_loc=net
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
+bootargs="$bootargs video=mx3fb:CTP-CLAA070LC0ACW"
+
+nand_parts="256k(barebox)ro,512k(bareboxenv),2M(kernel),-(root)"
+nand_device=mxc_nand
+rootfs_mtdblock_nand=3
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
+
diff --git a/arch/arm/boards/guf-cupid/lowlevel.c b/arch/arm/boards/guf-cupid/lowlevel.c
new file mode 100644
index 0000000..8d403ee
--- /dev/null
+++ b/arch/arm/boards/guf-cupid/lowlevel.c
@@ -0,0 +1,349 @@
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
+#define SDRAM_MODE_BL_8	0x0003
+#define SDRAM_MODE_BSEQ	0x0000
+#define SDRAM_MODE_CL_3	0x0030
+#define MDDR_DS_HALF	0x20
+#define SDRAM_COMPARE_CONST1	0x55555555
+#define SDRAM_COMPARE_CONST2	0xaaaaaaaa
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
+static void __bare_init noinline setup_sdram(u32 memsize, u32 mode, u32 sdram_addr)
+{
+	volatile int loop;
+	void *r9 = (void *)IMX_SDRAM_CS0;
+	u32 r11 = 0xda; /* dummy constant */
+	u32 r1, r0;
+
+	/* disable second SDRAM region to save power */
+	r1 = readl(ESDCTL1);
+	r1 &= ~ESDCTL0_SDE;
+	writel(r1, ESDCTL1);
+
+	mode |= ESDMISC_RST | ESDMISC_MDDR_DL_RST;
+	writel(mode, ESDMISC);
+
+	mode &= ~(ESDMISC_RST | ESDMISC_MDDR_DL_RST);
+	writel(mode, ESDMISC);
+
+	/* wait for esdctl reset */
+	for (loop = 0; loop < 0x20000; loop++);
+
+	r1 = ESDCFGx_tXP_4 | ESDCFGx_tWTR_1 |
+		ESDCFGx_tRP_3 | ESDCFGx_tMRD_2 |
+		ESDCFGx_tWR_1_2 | ESDCFGx_tRAS_6 |
+		ESDCFGx_tRRD_2 | ESDCFGx_tCAS_3 |
+		ESDCFGx_tRCD_3 | ESDCFGx_tRC_20;
+
+	writel(r1, ESDCFG0);
+
+	/* enable SDRAM controller */
+	writel(memsize | ESDCTL0_SMODE_NORMAL, ESDCTL0);
+
+	/* Micron Datasheet Initialization Step 3: Wait 200us before first command */
+	for (loop = 0; loop < 1000; loop++);
+
+	/* Micron Datasheet Initialization Step 4: PRE CHARGE ALL */
+	writel(memsize | ESDCTL0_SMODE_PRECHARGE, ESDCTL0);
+	writeb(r11, sdram_addr);
+
+	/* Micron Datasheet Initialization Step 5: NOP for tRP (at least 22.5ns)
+	 * The CPU is not fast enough to cause a problem here
+	 */
+
+	/* Micron Datasheet Initialization Step 6: 2 AUTO REFRESH and tRFC NOP
+	 * (at least 140ns)
+	 */
+	writel(memsize | ESDCTL0_SMODE_AUTO_REFRESH, ESDCTL0);
+	writeb(r11, r9); /* AUTO REFRESH #1 */
+
+	for (loop = 0; loop < 3; loop++); /* ~140ns delay at 532MHz */
+
+	writeb(r11, r9); /* AUTO REFRESH #2 */
+
+	for (loop = 0; loop < 3; loop++); /* ~140ns delay at 532MHz */
+
+	/* Micron Datasheet Initialization Step 7: LOAD MODE REGISTER */
+	writel(memsize | ESDCTL0_SMODE_LOAD_MODE, ESDCTL0);
+	writeb(r11, r9 + (SDRAM_MODE_BL_8 | SDRAM_MODE_BSEQ | SDRAM_MODE_CL_3));
+
+	/* Micron Datasheet Initialization Step 8: tMRD = 2 tCK NOP
+	 * (The memory controller will take care of this delay)
+	 */
+
+	/* Micron Datasheet Initialization Step 9: LOAD MODE REGISTER EXTENDED */
+	writeb(r11, 0x84000000 | MDDR_DS_HALF);  /*we assume 14 Rows / 10 Cols here */
+
+	/* Micron Datasheet Initialization Step 9: tMRD = 2 tCK NOP
+	 * (The memory controller will take care of this delay)
+	 */
+
+	/* Now configure SDRAM-Controller and check that it works */
+	writel(memsize | ESDCTL0_BL | ESDCTL0_REF4, ESDCTL0);
+
+	/* Freescale asks for first access to be a write to properly
+	 * initialize DQS pin-state and keepers
+	 */
+	writel(0xdeadbeef, r9);
+
+	/* test that the RAM is in fact working */
+	writel(SDRAM_COMPARE_CONST1, r9);
+	writel(SDRAM_COMPARE_CONST2, r9 + 0x4);
+
+	if (readl(r9) != SDRAM_COMPARE_CONST1)
+		while (1);
+
+	/* Verify that the correct row and coloumn is selected */
+
+	/* So far we asssumed that we have 14 rows, verify this */
+	writel(SDRAM_COMPARE_CONST1, r9);
+	writel(SDRAM_COMPARE_CONST2, r9 + (1 << 25));
+
+	/* if both value are identical, we don't have 14 rows. assume 13 instead */
+	if (readl(r9) == readl(r9 + (1 << 25))) {
+		r0 = readl(ESDCTL0);
+		r0 &= ~ESDCTL0_ROW_MASK;
+		r0 |= ESDCTL0_ROW13;
+		writel(r0, ESDCTL0);
+	}
+
+	/* So far we asssumed that we have 10 columns, verify this */
+	writel(SDRAM_COMPARE_CONST1, r9);
+	writel(SDRAM_COMPARE_CONST2, r9 + (1 << 11));
+
+	/* if both value are identical, we don't have 10 cols. assume 9 instead */
+	if (readl(r9) == readl(r9 + (1 << 11))) {
+		r0 = readl(ESDCTL0);
+		r0 &= ~ESDCTL0_COL_MASK;
+		r0 |= ESDCTL0_COL9;
+		writel(r0, ESDCTL0);
+	}
+}
+
+#define BRANCH_PREDICTION_ENABLE
+#define UNALIGNED_ACCESS_ENABLE
+#define LOW_INT_LATENCY_ENABLE
+
+void __bare_init __naked board_init_lowlevel(void)
+{
+	u32 r0, r1;
+	void *iomuxc_base = (void *)IMX_IOMUXC_BASE;
+	int i;
+#ifdef CONFIG_NAND_IMX_BOOT
+	unsigned int *trg, *src;
+#endif
+
+	r0 = 0x10000000 + 128 * 1024 - 16;
+        __asm__ __volatile__("mov sp, %0" : : "r"(r0));
+
+	/*
+	 *       ARM1136 init
+	 *       - invalidate I/D cache/TLB and drain write buffer;
+	 *       - invalidate L2 cache
+	 *       - unaligned access
+	 *       - branch predictions
+	 */
+#ifdef TURN_OFF_IMPRECISE_ABORT
+	__asm__ __volatile__("mrs %0, cpsr":"=r"(r0));
+	r0 &= ~0x100;
+	__asm__ __volatile__("msr cpsr, %0" : : "r"(r0));
+#endif
+	/* ensure L1 caches and MMU are turned-off for now */
+	r1 = get_cr();
+	r1 &= ~(CR_I | CR_M | CR_C);
+
+	/* setup core features */
+	__asm__ __volatile__("mrc p15, 0, r0, c1, c0, 1":"=r"(r0));
+#ifdef BRANCH_PREDICTION_ENABLE
+	r0 |= 7;
+	r1 |= CR_Z;
+#else
+	r0 &= ~7;
+	r1 &= ~CR_Z;
+#endif
+	__asm__ __volatile__("mcr p15, 0, r0, c1, c0, 1" : : "r"(r0));
+
+#ifdef UNALIGNED_ACCESS_ENABLE
+	r1 |= CR_U;
+#else
+	r1 &= ~CR_U;
+#endif
+
+#ifdef LOW_INT_LATENCY_ENABLE
+	r1 |= CR_FI;
+#else
+	r1 &= ~CR_FI;
+#endif
+	set_cr(r1);
+
+	r0 = 0;
+	__asm__ __volatile__("mcr p15, 0, %0, c7, c5, 6" : : "r"(r0));
+
+	/* invalidate I cache and D cache */
+	__asm__ __volatile__("mcr p15, 0, r0, c7, c7, 0" : : "r"(r0));
+	/* invalidate TLBs */
+	__asm__ __volatile__("mcr p15, 0, r0, c8, c7, 0" : : "r"(r0));
+	/* Drain the write buffer */
+	__asm__ __volatile__("mcr p15, 0, r0, c7, c10, 4" : : "r"(r0));
+
+	/* Also setup the Peripheral Port Remap register inside the core */
+	r0 = 0x40000015; /* start from AIPS 2GB region */
+	__asm__ __volatile__("mcr p15, 0, r0, c15, c2, 4" : : "r"(r0));
+
+#define	WDOG_WMCR 0x8
+	/* silence reset WDOG */
+	writew(0, IMX_WDOG_BASE + WDOG_WMCR);
+
+	/* Skip SDRAM initialization if we run from RAM */
+	r0 = get_pc();
+	if (r0 > 0x80000000 && r0 < 0x90000000)
+		board_init_lowlevel_return();
+
+	/* Configure drive strength */
+
+	/* Configure DDR-pins to correct mode */
+	r0 = 0x00001800;
+	writel(r0, iomuxc_base + 0x794);
+	writel(r0, iomuxc_base + 0x798);
+	writel(r0, iomuxc_base + 0x79c);
+	writel(r0, iomuxc_base + 0x7a0);
+	writel(r0, iomuxc_base + 0x7a4);
+
+	/* Set drive strength for DDR-pins */
+	for (i = 0x368; i <= 0x4c8; i += 4) {
+		r0 = readl(iomuxc_base + i);
+		r0 &= ~0x6;
+		r0 |= 0x2;
+		writel(r0, iomuxc_base + i);
+		if (i == 0x468)
+			i = 0x4a4;
+	}
+
+	r0 = readl(iomuxc_base + 0x480);
+	r0 &= ~0x6;
+	r0 |= 0x2;
+	writel(r0, iomuxc_base + 0x480);
+
+	r0 = readl(iomuxc_base + 0x4b8);
+	r0 &= ~0x6;
+	r0 |= 0x2;
+	writel(r0, iomuxc_base + 0x4b8);
+
+	/* Configure static chip-selects */
+	r0 = readl(iomuxc_base + 0x000);
+	r0 &= ~1; /* configure CS2/CSD0 for SDRAM */
+	writel(r0, iomuxc_base + 0x000);
+
+	/* start-up code doesn't need any static chip-select.
+	 * Leave their initialization to high-level code that
+	 * can initialize them depending on the baseboard.
+	 */
+
+	/* Configure clocks */
+
+	/* setup cpu/bus clocks */
+	writel(0x003f4208, IMX_CCM_BASE + CCM_CCMR);
+
+	/* configure MPLL */
+	writel(MPCTL_PARAM_532, IMX_CCM_BASE + CCM_MPCTL);
+
+	/* configure PPLL */
+	writel(PPCTL_PARAM_300, IMX_CCM_BASE + CCM_PPCTL);
+
+	/* configure core dividers */
+	r0 = PDR0_CCM_PER_AHB(1) | PDR0_HSP_PODF(2);
+
+	writel(r0, IMX_CCM_BASE + CCM_PDR0);
+
+	/* configure clock-gates */
+	r0 = readl(IMX_CCM_BASE + CCM_CGR0);
+	r0 |= 0x00300000;
+	writel(r0, IMX_CCM_BASE + CCM_CGR0);
+
+	r0 = readl(IMX_CCM_BASE + CCM_CGR1);
+	r0 |= 0x00000c03;
+	writel(r0, IMX_CCM_BASE + CCM_CGR1);
+
+	/* Configure SDRAM */
+	/* Try 32-Bit 256 MB DDR memory */
+	r0 = ESDCTL0_SDE | ESDCTL0_ROW14 | ESDCTL0_COL10 | ESDCTL0_DSIZ_31_0; /* 1024 MBit DDR-SDRAM */
+	setup_sdram(r0, ESDMISC_MDDR_EN, 0x80000f00);
+
+#ifdef CONFIG_NAND_IMX_BOOT
+	/* skip NAND boot if not running from NFC space */
+	r0 = get_pc();
+	if (r0 < IMX_NFC_BASE || r0 > IMX_NFC_BASE + 0x800)
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
+	r0 = (unsigned int)&insdram;
+	__asm__ __volatile__("mov pc, %0" : : "r"(r0));
+#else
+	board_init_lowlevel_return();
+#endif
+}
+
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index d451875..f3506af 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -18,6 +18,7 @@ config ARCH_TEXT_BASE
 	default 0x08f80000 if MACH_SCB9328
 	default 0xa7e00000 if MACH_NESO
 	default 0x97f00000 if MACH_MX51_PDK
+	default 0x87f00000 if MACH_GUF_CUPID
 
 config BOARDINFO
 	default "Eukrea CPUIMX25" if MACH_EUKREA_CPUIMX25
@@ -34,6 +35,7 @@ config BOARDINFO
 	default "Synertronixx scb9328" if MACH_SCB9328
 	default "Garz+Fricke Neso" if MACH_NESO
 	default "Freescale i.MX51 PDK" if MACH_FREESCALE_MX51_PDK
+	default "Garz+Fricke Cupid" if MACH_GUF_CUPID
 
 config ARCH_HAS_FEC_IMX
 	bool
@@ -299,6 +301,15 @@ config MACH_PCM043
           Say Y here if you are using Phytec's phyCORE-i.MX35 (pcm043) equipped
           with a Freescale i.MX35 Processor
 
+config MACH_GUF_CUPID
+        bool "Garz+Fricke Cupid"
+	select HAVE_MMU
+	select MACH_HAS_LOWLEVEL_INIT
+	select ARCH_HAS_L2X0
+        help
+	  Say Y here if you are using the Garz+Fricke Neso board equipped
+	  with a Freescale i.MX35 Processor
+
 endchoice
 
 endif
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
