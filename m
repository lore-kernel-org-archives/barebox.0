Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9IHT-0006QL-AX
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 14:40:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Apr 2011 16:39:45 +0200
Message-Id: <1302532791-20664-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302532791-20664-1-git-send-email-s.hauer@pengutronix.de>
References: <1302532791-20664-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/12] ARM omap4: panda board support
To: barebox@lists.infradead.org

This patch adds support for the TI omap4 panda board.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile                |    1 +
 arch/arm/boards/panda/Makefile   |    1 +
 arch/arm/boards/panda/board.c    |  230 ++++++++++++++++++++++++++++++++++
 arch/arm/boards/panda/config.h   |    1 +
 arch/arm/boards/panda/env/config |   45 +++++++
 arch/arm/boards/panda/lowlevel.c |  121 ++++++++++++++++++
 arch/arm/boards/panda/mux.c      |  257 ++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-omap/Kconfig       |    8 ++
 8 files changed, 664 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/panda/Makefile
 create mode 100644 arch/arm/boards/panda/board.c
 create mode 100644 arch/arm/boards/panda/config.h
 create mode 100644 arch/arm/boards/panda/env/config
 create mode 100644 arch/arm/boards/panda/lowlevel.c
 create mode 100644 arch/arm/boards/panda/mux.c

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index fa1677c..1aaefce 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -86,6 +86,7 @@ board-$(CONFIG_MACH_NXDB500)			:= netx
 board-$(CONFIG_MACH_OMAP343xSDP)		:= omap
 board-$(CONFIG_MACH_BEAGLE)			:= omap
 board-$(CONFIG_MACH_OMAP3EVM)			:= omap
+board-$(CONFIG_MACH_PANDA)			:= panda
 board-$(CONFIG_MACH_PCA100)			:= phycard-i.MX27
 board-$(CONFIG_MACH_PCM037)			:= pcm037
 board-$(CONFIG_MACH_PCM038)			:= pcm038
diff --git a/arch/arm/boards/panda/Makefile b/arch/arm/boards/panda/Makefile
new file mode 100644
index 0000000..c55e26e
--- /dev/null
+++ b/arch/arm/boards/panda/Makefile
@@ -0,0 +1 @@
+obj-y += board.o lowlevel.o mux.o
diff --git a/arch/arm/boards/panda/board.c b/arch/arm/boards/panda/board.c
new file mode 100644
index 0000000..ff05f9e
--- /dev/null
+++ b/arch/arm/boards/panda/board.c
@@ -0,0 +1,230 @@
+#include <common.h>
+#include <console.h>
+#include <init.h>
+#include <fs.h>
+#include <driver.h>
+#include <asm/io.h>
+#include <ns16550.h>
+#include <asm/armlinux.h>
+#include <linux/stat.h>
+#include <generated/mach-types.h>
+#include <mach/silicon.h>
+#include <mach/sdrc.h>
+#include <mach/sys_info.h>
+#include <mach/syslib.h>
+#include <mach/control.h>
+#include <usb/ehci.h>
+#include <linux/err.h>
+#include <sizes.h>
+#include <asm/mmu.h>
+#include <mach/gpio.h>
+#include <environment.h>
+#include <mach/xload.h>
+
+static int board_revision;
+
+#define GPIO_HUB_POWER 1
+#define GPIO_HUB_NRESET_39 39
+#define GPIO_HUB_NRESET_62 62
+#define GPIO_BOARD_ID0 182
+#define GPIO_BOARD_ID1 101
+#define GPIO_BOARD_ID2 171
+
+static struct NS16550_plat serial_plat = {
+	.clock = 48000000,      /* 48MHz (APLL96/2) */
+	.f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR,
+	.reg_read = omap_uart_read,
+	.reg_write = omap_uart_write,
+};
+
+static struct device_d panda_serial_device = {
+	.id = -1,
+	.name = "serial_ns16550",
+	.map_base = OMAP44XX_UART3_BASE,
+	.size = 1024,
+	.platform_data = (void *)&serial_plat,
+};
+
+static int panda_console_init(void)
+{
+	/* Register the serial port */
+	return register_device(&panda_serial_device);
+}
+console_initcall(panda_console_init);
+
+static struct memory_platform_data sram_pdata = {
+	.name = "ram0",
+	.flags = DEVFS_RDWR,
+};
+
+static struct device_d sdram_dev = {
+	.id = -1,
+	.name = "mem",
+	.map_base = 0x80000000,
+	.size = SZ_1G,
+	.platform_data = &sram_pdata,
+};
+
+#ifdef CONFIG_MMU
+static int panda_mmu_init(void)
+{
+	mmu_init();
+
+	arm_create_section(0x80000000, 0x80000000, 256, PMD_SECT_DEF_CACHED);
+	arm_create_section(0x90000000, 0x80000000, 256, PMD_SECT_DEF_UNCACHED);
+
+	mmu_enable();
+
+	return 0;
+}
+device_initcall(panda_mmu_init);
+#endif
+
+static struct ehci_platform_data ehci_pdata = {
+	.flags = 0,
+	.hccr_offset = 0x0,
+	.hcor_offset = 0x10,
+};
+
+static struct device_d usbh_dev = {
+	.id	  = -1,
+	.name     = "ehci",
+	.map_base = 0x4a064c00,
+	.size     = 4 * 1024,
+	.platform_data = &ehci_pdata,
+};
+
+static void panda_ehci_init(void)
+{
+	u32 val;
+	int hub_nreset;
+
+	if (board_revision)
+		hub_nreset = GPIO_HUB_NRESET_62;
+	else
+		hub_nreset = GPIO_HUB_NRESET_39;
+
+	/* disable the power to the usb hub prior to init */
+	gpio_direction_output(GPIO_HUB_POWER, 0);
+	gpio_set_value(GPIO_HUB_POWER, 0);
+
+	/* reset phy+hub */
+	gpio_direction_output(hub_nreset, 0);
+	gpio_set_value(hub_nreset, 0);
+	gpio_set_value(hub_nreset, 1);
+	val = readl(0x4a009358);
+	val |= (1 << 24);
+	writel(val, 0x4a009358);
+	writel(0x7, 0x4a008180);
+	mdelay(10);
+
+	writel(0x00000014, 0x4a064010);
+	writel(0x8000001c, 0x4a064040);
+
+	/* enable power to hub */
+	gpio_set_value(GPIO_HUB_POWER, 1);
+
+	register_device(&usbh_dev);
+}
+
+static void __init panda_boardrev_init(void)
+{
+	board_revision = gpio_get_value(GPIO_BOARD_ID0);
+	board_revision |= (gpio_get_value(GPIO_BOARD_ID1)<<1);
+	board_revision |= (gpio_get_value(GPIO_BOARD_ID2)<<2);
+
+	pr_info("PandaBoard Revision: %03d\n", board_revision);
+}
+
+static struct device_d hsmmc_dev = {
+	.id = -1,
+	.name = "omap-hsmmc",
+	.map_base = 0x4809C100,
+	.size = SZ_4K,
+};
+
+static int panda_devices_init(void)
+{
+	panda_boardrev_init();
+
+	if (gpio_get_value(182)) {
+		/* enable software ioreq */
+		sr32(OMAP44XX_SCRM_AUXCLK3, 8, 1, 0x1);
+		/* set for sys_clk (38.4MHz) */
+		sr32(OMAP44XX_SCRM_AUXCLK3, 1, 2, 0x0);
+		/* set divisor to 2 */
+		sr32(OMAP44XX_SCRM_AUXCLK3, 16, 4, 0x1);
+		/* set the clock source to active */
+		sr32(OMAP44XX_SCRM_ALTCLKSRC, 0, 1, 0x1);
+		/* enable clocks */
+		sr32(OMAP44XX_SCRM_ALTCLKSRC, 2, 2, 0x3);
+	} else {
+		/* enable software ioreq */
+		sr32(OMAP44XX_SCRM_AUXCLK1, 8, 1, 0x1);
+		/* set for PER_DPLL */
+		sr32(OMAP44XX_SCRM_AUXCLK1, 1, 2, 0x2);
+		/* set divisor to 16 */
+		sr32(OMAP44XX_SCRM_AUXCLK1, 16, 4, 0xf);
+		/* set the clock source to active */
+		sr32(OMAP44XX_SCRM_ALTCLKSRC, 0, 1, 0x1);
+		/* enable clocks */
+		sr32(OMAP44XX_SCRM_ALTCLKSRC, 2, 2, 0x3);
+	}
+
+	register_device(&sdram_dev);
+	register_device(&hsmmc_dev);
+	panda_ehci_init();
+
+	armlinux_add_dram(&sdram_dev);
+	armlinux_set_bootparams((void *)0x80000100);
+	armlinux_set_architecture(MACH_TYPE_OMAP4_PANDA);
+
+	return 0;
+}
+device_initcall(panda_devices_init);
+
+#ifdef CONFIG_DEFAULT_ENVIRONMENT
+static int panda_env_init(void)
+{
+	struct stat s;
+	char *diskdev = "/dev/disk0.0";
+	int ret;
+
+	ret = stat(diskdev, &s);
+	if (ret) {
+		printf("no %s. using default env\n", diskdev);
+		return 0;
+	}
+
+	mkdir ("/boot", 0666);
+	ret = mount(diskdev, "fat", "/boot");
+	if (ret) {
+		printf("failed to mount %s\n", diskdev);
+		return 0;
+	}
+
+	default_environment_path = "/boot/bareboxenv";
+
+	return 0;
+}
+late_initcall(panda_env_init);
+#endif
+
+
+#ifdef CONFIG_SHELL_NONE
+int run_shell(void)
+{
+	int (*func)(void);
+
+	func = omap_xload_boot_mmc();
+	if (!func) {
+		printf("booting failed\n");
+		while (1);
+	}
+
+	shutdown_barebox();
+	func();
+
+	while (1);
+}
+#endif
diff --git a/arch/arm/boards/panda/config.h b/arch/arm/boards/panda/config.h
new file mode 100644
index 0000000..da84fa5
--- /dev/null
+++ b/arch/arm/boards/panda/config.h
@@ -0,0 +1 @@
+/* nothing */
diff --git a/arch/arm/boards/panda/env/config b/arch/arm/boards/panda/env/config
new file mode 100644
index 0000000..5c65d21
--- /dev/null
+++ b/arch/arm/boards/panda/env/config
@@ -0,0 +1,45 @@
+#!/bin/sh
+
+machine=panda
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
+bootargs="console=ttyO2,115200"
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
+
diff --git a/arch/arm/boards/panda/lowlevel.c b/arch/arm/boards/panda/lowlevel.c
new file mode 100644
index 0000000..cc0c374
--- /dev/null
+++ b/arch/arm/boards/panda/lowlevel.c
@@ -0,0 +1,121 @@
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
+#include <asm/io.h>
+#include <mach/omap4-mux.h>
+#include <mach/omap4-silicon.h>
+#include <mach/omap4-clock.h>
+#include <mach/syslib.h>
+#include <asm/barebox-arm.h>
+
+void set_muxconf_regs(void);
+
+static const struct ddr_regs ddr_regs_400_mhz_2cs = {
+	/* tRRD changed from 10ns to 12.5ns because of the tFAW requirement*/
+	.tim1		= 0x10eb0662,
+	.tim2		= 0x20370dd2,
+	.tim3		= 0x00b1c33f,
+	.phy_ctrl_1	= 0x849FF408,
+	.ref_ctrl	= 0x00000618,
+	.config_init	= 0x80000eb9,
+	.config_final	= 0x80001ab9,
+	.zq_config	= 0xD00b3215,
+	.mr1		= 0x83,
+	.mr2		= 0x4
+};
+
+#define I2C_SLAVE 0x12
+
+static int noinline scale_vcores(void)
+{
+	unsigned int rev = omap4_revision();
+
+	/* For VC bypass only VCOREx_CGF_FORCE  is necessary and
+	 * VCOREx_CFG_VOLTAGE  changes can be discarded
+	 */
+	writel(0, OMAP44XX_PRM_VC_CFG_I2C_MODE);
+	writel(0x6026, OMAP44XX_PRM_VC_CFG_I2C_CLK);
+
+	/* set VCORE1 force VSEL */
+	omap4_power_i2c_send((0x3A55 << 8) | I2C_SLAVE);
+
+	/* FIXME: set VCORE2 force VSEL, Check the reset value */
+	omap4_power_i2c_send((0x295B << 8) | I2C_SLAVE);
+
+	/* set VCORE3 force VSEL */
+	switch (rev) {
+	case OMAP4430_ES2_0:
+		omap4_power_i2c_send((0x2961 << 8) | I2C_SLAVE);
+		break;
+	case OMAP4430_ES2_1:
+		omap4_power_i2c_send((0x2A61 << 8) | I2C_SLAVE);
+		break;
+	}
+
+	return 0;
+}
+
+static void noinline panda_init_lowlevel(void)
+{
+	struct dpll_param core = OMAP4_CORE_DPLL_PARAM_38M4_DDR400;
+	struct dpll_param mpu = OMAP4_MPU_DPLL_PARAM_38M4_MPU600;
+	struct dpll_param iva = OMAP4_IVA_DPLL_PARAM_38M4;
+	struct dpll_param per = OMAP4_PER_DPLL_PARAM_38M4;
+	struct dpll_param abe = OMAP4_ABE_DPLL_PARAM_38M4;
+	struct dpll_param usb = OMAP4_USB_DPLL_PARAM_38M4;
+
+	writel(CM_SYS_CLKSEL_38M4, CM_SYS_CLKSEL);
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
+	set_muxconf_regs();
+
+	omap4_ddr_init(&ddr_regs_400_mhz_2cs, &core);
+
+	/* Set VCORE1 = 1.3 V, VCORE2 = VCORE3 = 1.21V */
+	scale_vcores();
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
+        __asm__ __volatile__("mov sp, %0" : : "r"(r));
+
+	panda_init_lowlevel();
+}
+
diff --git a/arch/arm/boards/panda/mux.c b/arch/arm/boards/panda/mux.c
new file mode 100644
index 0000000..a031040
--- /dev/null
+++ b/arch/arm/boards/panda/mux.c
@@ -0,0 +1,257 @@
+#include <common.h>
+#include <init.h>
+#include <asm/io.h>
+#include <mach/omap4-silicon.h>
+#include <mach/omap4-mux.h>
+
+static const struct pad_conf_entry core_padconf_array[] = {
+	{ GPMC_AD0, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1  /* sdmmc2_dat0 */ },
+	{ GPMC_AD1, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1  /* sdmmc2_dat1 */ },
+	{ GPMC_AD2, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1  /* sdmmc2_dat2 */ },
+	{ GPMC_AD3, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1  /* sdmmc2_dat3 */ },
+	{ GPMC_AD4, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1  /* sdmmc2_dat4 */ },
+	{ GPMC_AD5, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1  /* sdmmc2_dat5 */ },
+	{ GPMC_AD6, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1  /* sdmmc2_dat6 */ },
+	{ GPMC_AD7, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1  /* sdmmc2_dat7 */ },
+	{ GPMC_AD8, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M3  /* gpio_32 */ },
+	{ GPMC_AD9, PTU | IEN | M3  /* gpio_33 */ },
+	{ GPMC_AD10, PTU | IEN | M3  /* gpio_34 */ },
+	{ GPMC_AD11, PTU | IEN | M3  /* gpio_35 */ },
+	{ GPMC_AD12, PTU | IEN | M3  /* gpio_36 */ },
+	{ GPMC_AD13, PTD | OFF_EN | OFF_PD | OFF_OUT_PTD | M3  /* gpio_37 */ },
+	{ GPMC_AD14, PTD | OFF_EN | OFF_PD | OFF_OUT_PTD | M3  /* gpio_38 */ },
+	{ GPMC_AD15, PTD | OFF_EN | OFF_PD | OFF_OUT_PTD | M3  /* gpio_39 */ },
+	{ GPMC_A16, M3  /* gpio_40 */ },
+	{ GPMC_A17, PTD | M3  /* gpio_41 */ },
+	{ GPMC_A18, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1  /* kpd_row6 */ },
+	{ GPMC_A19, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1  /* kpd_row7 */ },
+	{ GPMC_A20, IEN | M3  /* gpio_44 */ },
+	{ GPMC_A21, M3  /* gpio_45 */ },
+	{ GPMC_A22, M3  /* gpio_46 */ },
+	{ GPMC_A23, OFF_EN | OFF_PD | OFF_IN | M1  /* kpd_col7 */ },
+	{ GPMC_A24, PTD | M3  /* gpio_48 */ },
+	{ GPMC_A25, PTD | M3  /* gpio_49 */ },
+	{ GPMC_NCS0, M3  /* gpio_50 */ },
+	{ GPMC_NCS1, IEN | M3  /* gpio_51 */ },
+	{ GPMC_NCS2, IEN | M3  /* gpio_52 */ },
+	{ GPMC_NCS3, IEN | M3  /* gpio_53 */ },
+	{ GPMC_NWP, M3  /* gpio_54 */ },
+	{ GPMC_CLK, PTD | M3  /* gpio_55 */ },
+	{ GPMC_NADV_ALE, M3  /* gpio_56 */ },
+	{ GPMC_NOE, PTU | IEN | OFF_EN | OFF_OUT_PTD | M1  /* sdmmc2_clk */ },
+	{ GPMC_NWE, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1  /* sdmmc2_cmd */ },
+	{ GPMC_NBE0_CLE, M3  /* gpio_59 */ },
+	{ GPMC_NBE1, PTD | M3  /* gpio_60 */ },
+	{ GPMC_WAIT0, PTU | IEN | M3  /* gpio_61 */ },
+	{ GPMC_WAIT1, PTD | OFF_EN | OFF_PD | OFF_OUT_PTD | M3 /* gpio_62 */ },
+	{ C2C_DATA11, PTD | M3  /* gpio_100 */ },
+	{ C2C_DATA12, PTD | IEN | M3  /* gpio_101 */ },
+	{ C2C_DATA13, PTD | M3  /* gpio_102 */ },
+	{ C2C_DATA14, M1  /* dsi2_te0 */ },
+	{ C2C_DATA15, PTD | M3  /* gpio_104 */ },
+	{ HDMI_HPD, M0  /* hdmi_hpd */ },
+	{ HDMI_CEC, M0  /* hdmi_cec */ },
+	{ HDMI_DDC_SCL, PTU | M0  /* hdmi_ddc_scl */ },
+	{ HDMI_DDC_SDA, PTU | IEN | M0  /* hdmi_ddc_sda */ },
+	{ CSI21_DX0, IEN | M0  /* csi21_dx0 */ },
+	{ CSI21_DY0, IEN | M0  /* csi21_dy0 */ },
+	{ CSI21_DX1, IEN | M0  /* csi21_dx1 */ },
+	{ CSI21_DY1, IEN | M0  /* csi21_dy1 */ },
+	{ CSI21_DX2, IEN | M0  /* csi21_dx2 */ },
+	{ CSI21_DY2, IEN | M0  /* csi21_dy2 */ },
+	{ CSI21_DX3, PTD | M7  /* csi21_dx3 */ },
+	{ CSI21_DY3, PTD | M7  /* csi21_dy3 */ },
+	{ CSI21_DX4, PTD | OFF_EN | OFF_PD | OFF_IN | M7  /* csi21_dx4 */ },
+	{ CSI21_DY4, PTD | OFF_EN | OFF_PD | OFF_IN | M7  /* csi21_dy4 */ },
+	{ CSI22_DX0, IEN | M0  /* csi22_dx0 */ },
+	{ CSI22_DY0, IEN | M0  /* csi22_dy0 */ },
+	{ CSI22_DX1, IEN | M0  /* csi22_dx1 */ },
+	{ CSI22_DY1, IEN | M0  /* csi22_dy1 */ },
+	{ CAM_SHUTTER, OFF_EN | OFF_PD | OFF_OUT_PTD | M0  /* cam_shutter */ },
+	{ CAM_STROBE, OFF_EN | OFF_PD | OFF_OUT_PTD | M0  /* cam_strobe */ },
+	{ CAM_GLOBALRESET, PTD | OFF_EN | OFF_PD | OFF_OUT_PTD | M3  /* gpio_83 */ },
+	{ USBB1_ULPITLL_CLK, PTD | IEN | OFF_EN | OFF_PD | OFF_IN | M4  /* usbb1_ulpiphy_clk */ },
+	{ USBB1_ULPITLL_STP, OFF_EN | OFF_OUT_PTD | M4  /* usbb1_ulpiphy_stp */ },
+	{ USBB1_ULPITLL_DIR, IEN | OFF_EN | OFF_PD | OFF_IN | M4  /* usbb1_ulpiphy_dir */ },
+	{ USBB1_ULPITLL_NXT, IEN | OFF_EN | OFF_PD | OFF_IN | M4  /* usbb1_ulpiphy_nxt */ },
+	{ USBB1_ULPITLL_DAT0, IEN | OFF_EN | OFF_PD | OFF_IN | M4  /* usbb1_ulpiphy_dat0 */ },
+	{ USBB1_ULPITLL_DAT1, IEN | OFF_EN | OFF_PD | OFF_IN | M4  /* usbb1_ulpiphy_dat1 */ },
+	{ USBB1_ULPITLL_DAT2, IEN | OFF_EN | OFF_PD | OFF_IN | M4  /* usbb1_ulpiphy_dat2 */ },
+	{ USBB1_ULPITLL_DAT3, IEN | OFF_EN | OFF_PD | OFF_IN | M4  /* usbb1_ulpiphy_dat3 */ },
+	{ USBB1_ULPITLL_DAT4, IEN | OFF_EN | OFF_PD | OFF_IN | M4  /* usbb1_ulpiphy_dat4 */ },
+	{ USBB1_ULPITLL_DAT5, IEN | OFF_EN | OFF_PD | OFF_IN | M4  /* usbb1_ulpiphy_dat5 */ },
+	{ USBB1_ULPITLL_DAT6, IEN | OFF_EN | OFF_PD | OFF_IN | M4  /* usbb1_ulpiphy_dat6 */ },
+	{ USBB1_ULPITLL_DAT7, IEN | OFF_EN | OFF_PD | OFF_IN | M4  /* usbb1_ulpiphy_dat7 */ },
+	{ USBB1_HSIC_DATA, IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* usbb1_hsic_data */ },
+	{ USBB1_HSIC_STROBE, IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* usbb1_hsic_strobe */ },
+	{ USBC1_ICUSB_DP, IEN | M0  /* usbc1_icusb_dp */ },
+	{ USBC1_ICUSB_DM, IEN | M0  /* usbc1_icusb_dm */ },
+	{ SDMMC1_CLK, PTU | OFF_EN | OFF_OUT_PTD | M0  /* sdmmc1_clk */ },
+	{ SDMMC1_CMD, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* sdmmc1_cmd */ },
+	{ SDMMC1_DAT0, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* sdmmc1_dat0 */ },
+	{ SDMMC1_DAT1, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* sdmmc1_dat1 */ },
+	{ SDMMC1_DAT2, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* sdmmc1_dat2 */ },
+	{ SDMMC1_DAT3, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* sdmmc1_dat3 */ },
+	{ SDMMC1_DAT4, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* sdmmc1_dat4 */ },
+	{ SDMMC1_DAT5, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* sdmmc1_dat5 */ },
+	{ SDMMC1_DAT6, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* sdmmc1_dat6 */ },
+	{ SDMMC1_DAT7, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* sdmmc1_dat7 */ },
+	{ ABE_MCBSP2_CLKX, IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* abe_mcbsp2_clkx */ },
+	{ ABE_MCBSP2_DR, IEN | OFF_EN | OFF_OUT_PTD | M0  /* abe_mcbsp2_dr */ },
+	{ ABE_MCBSP2_DX, OFF_EN | OFF_OUT_PTD | M0  /* abe_mcbsp2_dx */ },
+	{ ABE_MCBSP2_FSX, IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* abe_mcbsp2_fsx */ },
+	{ ABE_MCBSP1_CLKX, IEN | M1  /* abe_slimbus1_clock */ },
+	{ ABE_MCBSP1_DR, IEN | M1  /* abe_slimbus1_data */ },
+	{ ABE_MCBSP1_DX, OFF_EN | OFF_OUT_PTD | M0  /* abe_mcbsp1_dx */ },
+	{ ABE_MCBSP1_FSX, IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* abe_mcbsp1_fsx */ },
+	{ ABE_PDM_UL_DATA, PTD | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* abe_pdm_ul_data */ },
+	{ ABE_PDM_DL_DATA, PTD | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* abe_pdm_dl_data */ },
+	{ ABE_PDM_FRAME, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* abe_pdm_frame */ },
+	{ ABE_PDM_LB_CLK, PTD | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* abe_pdm_lb_clk */ },
+	{ ABE_CLKS, PTD | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* abe_clks */ },
+	{ ABE_DMIC_CLK1, M0  /* abe_dmic_clk1 */ },
+	{ ABE_DMIC_DIN1, IEN | M0  /* abe_dmic_din1 */ },
+	{ ABE_DMIC_DIN2, IEN | M0  /* abe_dmic_din2 */ },
+	{ ABE_DMIC_DIN3, IEN | M0  /* abe_dmic_din3 */ },
+	{ UART2_CTS, PTU | IEN | M0  /* uart2_cts */ },
+	{ UART2_RTS, M0  /* uart2_rts */ },
+	{ UART2_RX, PTU | IEN | M0  /* uart2_rx */ },
+	{ UART2_TX, M0  /* uart2_tx */ },
+	{ HDQ_SIO, M3  /* gpio_127 */ },
+	{ I2C1_SCL, PTU | IEN | M0  /* i2c1_scl */ },
+	{ I2C1_SDA, PTU | IEN | M0  /* i2c1_sda */ },
+	{ I2C2_SCL, PTU | IEN | M0  /* i2c2_scl */ },
+	{ I2C2_SDA, PTU | IEN | M0  /* i2c2_sda */ },
+	{ I2C3_SCL, PTU | IEN | M0  /* i2c3_scl */ },
+	{ I2C3_SDA, PTU | IEN | M0  /* i2c3_sda */ },
+	{ I2C4_SCL, PTU | IEN | M0  /* i2c4_scl */ },
+	{ I2C4_SDA, PTU | IEN | M0  /* i2c4_sda */ },
+	{ MCSPI1_CLK, IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* mcspi1_clk */ },
+	{ MCSPI1_SOMI, IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* mcspi1_somi */ },
+	{ MCSPI1_SIMO, IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* mcspi1_simo */ },
+	{ MCSPI1_CS0, PTD | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* mcspi1_cs0 */ },
+	{ MCSPI1_CS1, PTD | IEN | OFF_EN | OFF_PD | OFF_IN | M3  /* mcspi1_cs1 */ },
+	{ MCSPI1_CS2, PTU | OFF_EN | OFF_OUT_PTU | M3  /* gpio_139 */ },
+	{ MCSPI1_CS3, PTU | IEN | M3  /* gpio_140 */ },
+	{ UART3_CTS_RCTX, PTU | IEN | M0  /* uart3_tx */ },
+	{ UART3_RTS_SD, M0  /* uart3_rts_sd */ },
+	{ UART3_RX_IRRX, IEN | M0  /* uart3_rx */ },
+	{ UART3_TX_IRTX, M0  /* uart3_tx */ },
+	{ SDMMC5_CLK, PTU | IEN | OFF_EN | OFF_OUT_PTD | M0  /* sdmmc5_clk */ },
+	{ SDMMC5_CMD, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* sdmmc5_cmd */ },
+	{ SDMMC5_DAT0, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* sdmmc5_dat0 */ },
+	{ SDMMC5_DAT1, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* sdmmc5_dat1 */ },
+	{ SDMMC5_DAT2, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* sdmmc5_dat2 */ },
+	{ SDMMC5_DAT3, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* sdmmc5_dat3 */ },
+	{ MCSPI4_CLK, IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* mcspi4_clk */ },
+	{ MCSPI4_SIMO, IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* mcspi4_simo */ },
+	{ MCSPI4_SOMI, IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* mcspi4_somi */ },
+	{ MCSPI4_CS0, PTD | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* mcspi4_cs0 */ },
+	{ UART4_RX, IEN | M0  /* uart4_rx */ },
+	{ UART4_TX, M0  /* uart4_tx */ },
+	{ USBB2_ULPITLL_CLK, IEN | M3  /* gpio_157 */ },
+	{ USBB2_ULPITLL_STP, IEN | M5  /* dispc2_data23 */ },
+	{ USBB2_ULPITLL_DIR, IEN | M5  /* dispc2_data22 */ },
+	{ USBB2_ULPITLL_NXT, IEN | M5  /* dispc2_data21 */ },
+	{ USBB2_ULPITLL_DAT0, IEN | M5  /* dispc2_data20 */ },
+	{ USBB2_ULPITLL_DAT1, IEN | M5  /* dispc2_data19 */ },
+	{ USBB2_ULPITLL_DAT2, IEN | M5  /* dispc2_data18 */ },
+	{ USBB2_ULPITLL_DAT3, IEN | M5  /* dispc2_data15 */ },
+	{ USBB2_ULPITLL_DAT4, IEN | M5  /* dispc2_data14 */ },
+	{ USBB2_ULPITLL_DAT5, IEN | M5  /* dispc2_data13 */ },
+	{ USBB2_ULPITLL_DAT6, IEN | M5  /* dispc2_data12 */ },
+	{ USBB2_ULPITLL_DAT7, IEN | M5  /* dispc2_data11 */ },
+	{ USBB2_HSIC_DATA, PTD | OFF_EN | OFF_OUT_PTU | M3  /* gpio_169 */ },
+	{ USBB2_HSIC_STROBE, PTD | OFF_EN | OFF_OUT_PTU | M3  /* gpio_170 */ },
+	{ UNIPRO_TX0, PTD | IEN | M3  /* gpio_171 */ },
+	{ UNIPRO_TY0, OFF_EN | OFF_PD | OFF_IN | M1  /* kpd_col1 */ },
+	{ UNIPRO_TX1, OFF_EN | OFF_PD | OFF_IN | M1  /* kpd_col2 */ },
+	{ UNIPRO_TY1, OFF_EN | OFF_PD | OFF_IN | M1  /* kpd_col3 */ },
+	{ UNIPRO_TX2, PTU | IEN | M3  /* gpio_0 */ },
+	{ UNIPRO_TY2, PTU | IEN | M3  /* gpio_1 */ },
+	{ UNIPRO_RX0, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1  /* kpd_row0 */ },
+	{ UNIPRO_RY0, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1  /* kpd_row1 */ },
+	{ UNIPRO_RX1, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1  /* kpd_row2 */ },
+	{ UNIPRO_RY1, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1  /* kpd_row3 */ },
+	{ UNIPRO_RX2, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1  /* kpd_row4 */ },
+	{ UNIPRO_RY2, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1  /* kpd_row5 */ },
+	{ USBA0_OTG_CE, PTD | OFF_EN | OFF_PD | OFF_OUT_PTD | M0  /* usba0_otg_ce */ },
+	{ USBA0_OTG_DP, IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* usba0_otg_dp */ },
+	{ USBA0_OTG_DM, IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* usba0_otg_dm */ },
+	{ FREF_CLK1_OUT, M0  /* fref_clk1_out */ },
+	{ FREF_CLK2_OUT, PTD | IEN | M3  /* gpio_182 */ },
+	{ SYS_NIRQ1, PTU | IEN | M0  /* sys_nirq1 */ },
+	{ SYS_NIRQ2, PTU | IEN | M0  /* sys_nirq2 */ },
+	{ SYS_BOOT0, PTU | IEN | M3  /* gpio_184 */ },
+	{ SYS_BOOT1, M3  /* gpio_185 */ },
+	{ SYS_BOOT2, PTD | IEN | M3  /* gpio_186 */ },
+	{ SYS_BOOT3, M3  /* gpio_187 */ },
+	{ SYS_BOOT4, M3  /* gpio_188 */ },
+	{ SYS_BOOT5, PTD | IEN | M3  /* gpio_189 */ },
+	{ DPM_EMU0, IEN | M0  /* dpm_emu0 */ },
+	{ DPM_EMU1, IEN | M0  /* dpm_emu1 */ },
+	{ DPM_EMU2, IEN | M0  /* dpm_emu2 */ },
+	{ DPM_EMU3, IEN | M5  /* dispc2_data10 */ },
+	{ DPM_EMU4, IEN | M5  /* dispc2_data9 */ },
+	{ DPM_EMU5, IEN | M5  /* dispc2_data16 */ },
+	{ DPM_EMU6, IEN | M5  /* dispc2_data17 */ },
+	{ DPM_EMU7, IEN | M5  /* dispc2_hsync */ },
+	{ DPM_EMU8, IEN | M5  /* dispc2_pclk */ },
+	{ DPM_EMU9, IEN | M5  /* dispc2_vsync */ },
+	{ DPM_EMU10, IEN | M5  /* dispc2_de */ },
+	{ DPM_EMU11, IEN | M5  /* dispc2_data8 */ },
+	{ DPM_EMU12, IEN | M5  /* dispc2_data7 */ },
+	{ DPM_EMU13, IEN | M5  /* dispc2_data6 */ },
+	{ DPM_EMU14, IEN | M5  /* dispc2_data5 */ },
+	{ DPM_EMU15, IEN | M5  /* dispc2_data4 */ },
+	{ DPM_EMU16, M3  /* gpio_27 */ },
+	{ DPM_EMU17, IEN | M5  /* dispc2_data2 */ },
+	{ DPM_EMU18, IEN | M5  /* dispc2_data1 */ },
+	{ DPM_EMU19, IEN | M5  /* dispc2_data0 */ },
+};
+
+static const struct pad_conf_entry wkup_padconf_array[] = {
+	{ PAD0_SIM_IO, IEN | M0  /* sim_io */ },
+	{ PAD1_SIM_CLK, M0  /* sim_clk */ },
+	{ PAD0_SIM_RESET, M0  /* sim_reset */ },
+	{ PAD1_SIM_CD, PTU | IEN | M0  /* sim_cd */ },
+	{ PAD0_SIM_PWRCTRL, M0  /* sim_pwrctrl */ },
+	{ PAD1_SR_SCL, PTU | IEN | M0  /* sr_scl */ },
+	{ PAD0_SR_SDA, PTU | IEN | M0  /* sr_sda */ },
+	{ PAD1_FREF_XTAL_IN, M0  /* # */ },
+	{ PAD0_FREF_SLICER_IN, M0  /* fref_slicer_in */ },
+	{ PAD1_FREF_CLK_IOREQ, M0  /* fref_clk_ioreq */ },
+	{ PAD0_FREF_CLK0_OUT, M2  /* sys_drm_msecure */ },
+	{ PAD1_FREF_CLK3_REQ, PTU | IEN | M0  /* # */ },
+	{ PAD0_FREF_CLK3_OUT, M0  /* fref_clk3_out */ },
+	{ PAD1_FREF_CLK4_REQ, PTU | IEN | M0  /* # */ },
+	{ PAD0_FREF_CLK4_OUT, M0  /* # */ },
+	{ PAD1_SYS_32K, IEN | M0  /* sys_32k */ },
+	{ PAD0_SYS_NRESPWRON,  M0  /* sys_nrespwron */ },
+	{ PAD1_SYS_NRESWARM, M0  /* sys_nreswarm */ },
+	{ PAD0_SYS_PWR_REQ, PTU | M0  /* sys_pwr_req */ },
+	{ PAD1_SYS_PWRON_RESET, M3  /* gpio_wk29 */ },
+	{ PAD0_SYS_BOOT6, IEN | M3  /* gpio_wk9 */ },
+	{ PAD1_SYS_BOOT7, IEN | M3  /* gpio_wk10 */ },
+	{ PAD1_FREF_CLK3_REQ, M3 /* gpio_wk30 */ },
+	{ PAD1_FREF_CLK4_REQ, M3 /* gpio_wk7 */ },
+	{ PAD0_FREF_CLK4_OUT, M3 /* gpio_wk8 */ },
+};
+
+static void do_set_mux(u32 base, struct pad_conf_entry const *array, int size)
+{
+	int i;
+	struct pad_conf_entry *pad = (struct pad_conf_entry *) array;
+
+	for (i = 0; i < size; i++, pad++)
+		writew(pad->val, base + pad->offset);
+}
+
+void set_muxconf_regs(void)
+{
+	do_set_mux(OMAP44XX_CONTROL_PADCONF_CORE, core_padconf_array,
+			ARRAY_SIZE(core_padconf_array));
+
+	do_set_mux(OMAP44XX_CONTROL_PADCONF_WKUP, wkup_padconf_array,
+			ARRAY_SIZE(wkup_padconf_array));
+}
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index df83b17..13a3df8 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -136,6 +136,14 @@ config MACH_OMAP3EVM
 	  help
 	  Say Y here if you are using OMAP3EVM
 
+config MACH_PANDA
+	bool "Texas Instrument's Panda Board"
+	select HAVE_MMU
+	select HAVE_NOSHELL
+	select MACH_HAS_LOWLEVEL_INIT
+	help
+	  Say Y here if you are using OMAP4 Panda board
+
 endchoice
 
 if MACH_OMAP3EVM
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
