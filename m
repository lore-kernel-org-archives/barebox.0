Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from s250.sam-solutions.net ([217.21.49.219])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UUx1P-0005pg-Mk
 for barebox@lists.infradead.org; Wed, 24 Apr 2013 10:34:02 +0000
Received: from s246.sam-solutions.net ([217.21.35.55])
 by s250.sam-solutions.net with esmtps (TLSv1:RC4-MD5:128) (Exim 4.77)
 (envelope-from <U.Bely@sam-solutions.com>) id 1UUx1D-0007sP-Ub
 for barebox@lists.infradead.org; Wed, 24 Apr 2013 13:33:43 +0300
From: Uladzimir Bely <u.bely@sam-solutions.com>
Date: Wed, 24 Apr 2013 13:33:20 +0300
Message-ID: <1366799600-10058-1-git-send-email-u.bely@sam-solutions.com>
In-Reply-To: <014261>
References: <014261>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: OMAP5 processors support
To: barebox@lists.infradead.org
Cc: Uladzimir Bely <u.bely@sam-solutions.com>, Uladzimir Bely <u.bely@sam-solutions.net>

From: Uladzimir Bely <u.bely@sam-solutions.net>


Signed-off-by: Uladzimir Bely <u.bely@sam-solutions.com>
---
 arch/arm/Makefile                               |   1 +
 arch/arm/boards/omap5_sevm/Makefile             |   2 +
 arch/arm/boards/omap5_sevm/board.c              |  73 ++++
 arch/arm/boards/omap5_sevm/config.h             |   1 +
 arch/arm/boards/omap5_sevm/env/config           |  11 +
 arch/arm/boards/omap5_sevm/lowlevel.c           | 137 +++++++
 arch/arm/boards/omap5_sevm/mux.c                | 284 +++++++++++++
 arch/arm/configs/omap5_sevm_defconfig           |  68 ++++
 arch/arm/configs/omap5_sevm_xload_defconfig     |  44 ++
 arch/arm/mach-omap/Kconfig                      |  16 +
 arch/arm/mach-omap/Makefile                     |   2 +
 arch/arm/mach-omap/gpmc.c                       |   3 +
 arch/arm/mach-omap/include/mach/debug_ll.h      |   5 +
 arch/arm/mach-omap/include/mach/generic.h       |   7 +
 arch/arm/mach-omap/include/mach/gpmc_nand.h     |   1 +
 arch/arm/mach-omap/include/mach/omap5-clock.h   | 444 +++++++++++++++++++++
 arch/arm/mach-omap/include/mach/omap5-mux.h     | 321 +++++++++++++++
 arch/arm/mach-omap/include/mach/omap5-silicon.h | 244 ++++++++++++
 arch/arm/mach-omap/omap5_clock.c                | 385 ++++++++++++++++++
 arch/arm/mach-omap/omap5_generic.c              | 510 ++++++++++++++++++++++++
 arch/arm/mach-omap/omap_generic.c               |   2 +
 arch/arm/mach-omap/s32k_clksource.c             |   7 +
 drivers/mci/Kconfig                             |   2 +-
 23 files changed, 2569 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/omap5_sevm/Makefile
 create mode 100644 arch/arm/boards/omap5_sevm/board.c
 create mode 100644 arch/arm/boards/omap5_sevm/config.h
 create mode 100644 arch/arm/boards/omap5_sevm/env/config
 create mode 100644 arch/arm/boards/omap5_sevm/lowlevel.c
 create mode 100644 arch/arm/boards/omap5_sevm/mux.c
 create mode 100644 arch/arm/configs/omap5_sevm_defconfig
 create mode 100644 arch/arm/configs/omap5_sevm_xload_defconfig
 create mode 100644 arch/arm/mach-omap/include/mach/omap5-clock.h
 create mode 100644 arch/arm/mach-omap/include/mach/omap5-mux.h
 create mode 100644 arch/arm/mach-omap/include/mach/omap5-silicon.h
 create mode 100644 arch/arm/mach-omap/omap5_clock.c
 create mode 100644 arch/arm/mach-omap/omap5_generic.c

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index d506b12..fb459b5 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -162,6 +162,7 @@ board-$(CONFIG_MACH_SABRELITE)			:= freescale-mx6-sabrelite
 board-$(CONFIG_MACH_TX53)			:= karo-tx53
 board-$(CONFIG_MACH_GUF_VINCELL)		:= guf-vincell
 board-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK)		:= efika-mx-smartbook
+board-$(CONFIG_MACH_OMAP5_SEVM)			:= omap5_sevm
 board-$(CONFIG_MACH_SABRESD)			:= freescale-mx6-sabresd
 board-$(CONFIG_MACH_REALQ7)			:= dmo-mx6-realq7
 board-$(CONFIG_MACH_ZEDBOARD)			:= avnet-zedboard
diff --git a/arch/arm/boards/omap5_sevm/Makefile b/arch/arm/boards/omap5_sevm/Makefile
new file mode 100644
index 0000000..df3764c
--- /dev/null
+++ b/arch/arm/boards/omap5_sevm/Makefile
@@ -0,0 +1,2 @@
+obj-y += board.o mux.o lowlevel.o
+pbl-y += lowlevel.o mux.o
diff --git a/arch/arm/boards/omap5_sevm/board.c b/arch/arm/boards/omap5_sevm/board.c
new file mode 100644
index 0000000..c7b3c2d
--- /dev/null
+++ b/arch/arm/boards/omap5_sevm/board.c
@@ -0,0 +1,73 @@
+/*
+ * omap5_sevm - OMAP5-based board initalization code
+ *
+ * (C) Copyright 2013
+ * Sam Solutions, <sam-solutions.com>
+ *
+ * Authors:
+ *	Uladzimir Bely <u.bely@sam-solutions.com>
+ *	Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>
+ */
+
+#include <common.h>
+#include <console.h>
+#include <init.h>
+#include <fs.h>
+#include <driver.h>
+#include <io.h>
+#include <ns16550.h>
+#include <asm/armlinux.h>
+#include <linux/stat.h>
+#include <generated/mach-types.h>
+#include <mach/omap5-silicon.h>
+#include <mach/sdrc.h>
+#include <mach/sys_info.h>
+#include <mach/syslib.h>
+#include <mach/control.h>
+
+#include <linux/err.h>
+#include <sizes.h>
+#include <partition.h>
+#include <nand.h>
+#include <asm/mmu.h>
+#include <mach/gpio.h>
+#include <mach/gpmc.h>
+#include <mach/gpmc_nand.h>
+#include <envfs.h>
+#include <i2c/i2c.h>
+
+static struct NS16550_plat serial_plat = {
+	.clock = 48000000,	/* 48MHz (APLL96/2) */
+	.shift = 2,
+};
+
+static int omap5_sevm_console_init(void)
+{
+	/* Register the serial port */
+	add_ns16550_device(DEVICE_ID_DYNAMIC, OMAP54XX_UART3_BASE, 1024,
+		IORESOURCE_MEM_8BIT, &serial_plat);
+
+	return 0;
+}
+console_initcall(omap5_sevm_console_init);
+
+static int omap5_sevm_mem_init(void)
+{
+	arm_add_mem_device("ram0", 0x80000000, SZ_512M);
+	add_mem_device("sram0", 0x40300000, 48*SZ_1K, IORESOURCE_MEM_WRITEABLE);
+
+	return 0;
+}
+mem_initcall(omap5_sevm_mem_init);
+
+static int omap5_sevm_devices_init(void)
+{
+	add_generic_device("omap-hsmmc", DEVICE_ID_DYNAMIC, NULL, 0x4809C100, SZ_4K,
+		IORESOURCE_MEM, NULL);
+
+	armlinux_set_bootparams((void *)0x80000100);
+	armlinux_set_architecture(MACH_TYPE_OMAP5_SEVM);
+
+	return 0;
+}
+device_initcall(omap5_sevm_devices_init);
diff --git a/arch/arm/boards/omap5_sevm/config.h b/arch/arm/boards/omap5_sevm/config.h
new file mode 100644
index 0000000..da84fa5
--- /dev/null
+++ b/arch/arm/boards/omap5_sevm/config.h
@@ -0,0 +1 @@
+/* nothing */
diff --git a/arch/arm/boards/omap5_sevm/env/config b/arch/arm/boards/omap5_sevm/env/config
new file mode 100644
index 0000000..9752957
--- /dev/null
+++ b/arch/arm/boards/omap5_sevm/env/config
@@ -0,0 +1,11 @@
+#!/bin/sh
+
+machine=omap5
+
+autoboot_timeout=2
+
+bootargs="console=ttyO2,115200"
+
+kernel_loc=disk
+
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
diff --git a/arch/arm/boards/omap5_sevm/lowlevel.c b/arch/arm/boards/omap5_sevm/lowlevel.c
new file mode 100644
index 0000000..b4479b2
--- /dev/null
+++ b/arch/arm/boards/omap5_sevm/lowlevel.c
@@ -0,0 +1,137 @@
+/*
+ * omap5_sevm - OMAP5-based board low-level initalization code
+ *
+ * (C) Copyright 2013
+ * Sam Solutions, <sam-solutions.com>
+ *
+ * Authors:
+ *	Uladzimir Bely <u.bely@sam-solutions.com>
+ *	Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>
+ *
+ * Derived from OMAP5 work in U-Boot project
+ */
+
+#include <common.h>
+#include <io.h>
+#include <mach/omap5-mux.h>
+#include <mach/omap5-silicon.h>
+#include <mach/omap5-clock.h>
+#include <mach/syslib.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+
+void set_muxconf_regs(void);
+
+static const struct omap5_ddr_regs ddr_regs_elpida_532_mhz_2cs = {
+	.sdram_config_init		= 0x80800EBA,	/* 00 */
+	.sdram_config			= 0x808022BA,	/* 04 */
+	.ref_ctrl			= 0x0000081A,	/* 08 */
+	.sdram_tim1			= 0x772F6873,	/* 0c */
+	.sdram_tim2			= 0x304a129a,	/* 01 */
+	.sdram_tim3			= 0x02f7e45f,	/* 14 */
+	.read_idle_ctrl			= 0x00050000,	/* 18 */
+	.zq_config			= 0x000b3215,	/* 1c */
+	.temp_alert_config		= 0x08000a05,	/* 20 */
+	.emif_ddr_phy_ctlr_1_init	= 0x0E28420d,	/* 24 */
+	.emif_ddr_phy_ctlr_1		= 0x0E28420d,	/* 28 */
+	.emif_ddr_ext_phy_ctrl_1_init	= 0x04020080,	/* 2c */
+	.emif_ddr_ext_phy_ctrl_1	= 0x04020080,	/* 30 */
+	.emif_ddr_ext_phy_ctrl_2_init	= 0x28C518A3,	/* 34 */
+	.emif_ddr_ext_phy_ctrl_2	= 0x28C518A3,	/* 38 */
+	.emif_ddr_ext_phy_ctrl_3_init	= 0x518A3146,	/* 3c */
+	.emif_ddr_ext_phy_ctrl_3	= 0x518A3146,	/* 40 */
+	.emif_ddr_ext_phy_ctrl_4_init	= 0x0014628C,	/* 44 */
+	.emif_ddr_ext_phy_ctrl_4	= 0x0014628C,	/* 48 */
+	.emif_ddr_ext_phy_ctrl_5_init	= 0x04010040,	/* 4c */
+	.emif_ddr_ext_phy_ctrl_5	= 0x04010040,	/* 50 */
+	.emif_ddr_ext_phy_ctrl_6_init	= 0x01004010,	/* 54 */
+	.emif_ddr_ext_phy_ctrl_6	= 0x01004010,	/* 58 */
+	.emif_ddr_ext_phy_ctrl_7_init	= 0x00001004,	/* 5c */
+	.emif_ddr_ext_phy_ctrl_7	= 0x00001004,	/* 60 */
+	.emif_ddr_ext_phy_ctrl_8_init	= 0x04010040,	/* 64 */
+	.emif_ddr_ext_phy_ctrl_8	= 0x04010040,	/* 68 */
+	.emif_ddr_ext_phy_ctrl_9_init	= 0x01004010,	/* 6c */
+	.emif_ddr_ext_phy_ctrl_9	= 0x01004010,	/* 70 */
+	.emif_ddr_ext_phy_ctrl_10_init	= 0x00001004,	/* 74 */
+	.emif_ddr_ext_phy_ctrl_10	= 0x00001004,	/* 78 */
+	.emif_ddr_ext_phy_ctrl_11_init	= 0x00000000,	/* 7c */
+	.emif_ddr_ext_phy_ctrl_11	= 0x00000000,	/* 80 */
+	.emif_ddr_ext_phy_ctrl_12_init	= 0x00000000,	/* 84 */
+	.emif_ddr_ext_phy_ctrl_12	= 0x00000000,	/* 88 */
+	.emif_ddr_ext_phy_ctrl_13_init	= 0x00000000,	/* 8c */
+	.emif_ddr_ext_phy_ctrl_13	= 0x00000000,	/* 90 */
+	.emif_ddr_ext_phy_ctrl_14_init	= 0x80080080,	/* 94 */
+	.emif_ddr_ext_phy_ctrl_14	= 0x80080080,	/* 98 */
+	.emif_ddr_ext_phy_ctrl_15_init	= 0x00800800,	/* 9c */
+	.emif_ddr_ext_phy_ctrl_15	= 0x00800800,	/* a0 */
+	.emif_ddr_ext_phy_ctrl_16_init	= 0x08102040,	/* a4 */
+	.emif_ddr_ext_phy_ctrl_16	= 0x08102040,	/* a8 */
+	.emif_ddr_ext_phy_ctrl_17_init	= 0x00000001,	/* ac */
+	.emif_ddr_ext_phy_ctrl_17	= 0x00000001,	/* b0 */
+	.emif_ddr_ext_phy_ctrl_18_init	= 0x540A8150,	/* b4 */
+	.emif_ddr_ext_phy_ctrl_18	= 0x540A8150,	/* b8 */
+	.emif_ddr_ext_phy_ctrl_19_init	= 0xA81502A0,	/* bc */
+	.emif_ddr_ext_phy_ctrl_19	= 0xA81502a0,	/* c0 */
+	.emif_ddr_ext_phy_ctrl_20_init	= 0x002A0540,	/* c4 */
+	.emif_ddr_ext_phy_ctrl_20	= 0x002A0540,	/* c8 */
+	.emif_ddr_ext_phy_ctrl_21_init	= 0x00000000,	/* cc */
+	.emif_ddr_ext_phy_ctrl_21	= 0x00000000,	/* d0 */
+	.emif_ddr_ext_phy_ctrl_22_init	= 0x00000000,	/* d4 */
+	.emif_ddr_ext_phy_ctrl_22	= 0x00000000,	/* d8 */
+	.emif_ddr_ext_phy_ctrl_23_init	= 0x00000000,	/* dc */
+	.emif_ddr_ext_phy_ctrl_23	= 0x00000000,	/* e0 */
+	.emif_ddr_ext_phy_ctrl_24_init	= 0x00000077,	/* e4 */
+	.emif_ddr_ext_phy_ctrl_24	= 0x00000077,	/* e8 */
+	.emif_rd_wr_lvl_rmp_win		= 0x0,		/* ec */
+	.emif_rd_wr_lvl_rmp_ctl		= 0x0,		/* f0 */
+	.emif_rd_wr_lvl_ctl		= 0x20000000,	/* f4 */
+	.emif_rd_wr_exec_thresh		= 0x00000305	/* f8 */
+};
+
+static void noinline omap5_sevm_init_lowlevel(void)
+{
+	struct dpll_param core = OMAP5_CORE_DPLL_PARAM_19M2_NOM;
+	struct dpll_param mpu = OMAP5_MPU_DPLL_PARAM_19M2_NOM;
+	struct dpll_param iva = OMAP5_IVA_DPLL_PARAM_19M2_NOM;
+	struct dpll_param per = OMAP5_PER_DPLL_PARAM_19M2_NOM;
+	struct dpll_param abe = OMAP5_ABE_DPLL_PARAM;
+	struct dpll_param usb = OMAP5_USB_DPLL_PARAM_19M2;
+
+	set_muxconf_regs();
+
+	omap5_ddr_init(&ddr_regs_elpida_532_mhz_2cs, &core);
+
+	omap5_scale_vcores();
+
+	writel(CM_CLKSEL_SYS_19M2, CM_CLKSEL_SYS);
+
+	/* Configure all DPLL's at 100% OPP */
+	omap5_configure_mpu_dpll(&mpu);
+	omap5_configure_iva_dpll(&iva);
+	omap5_configure_per_dpll(&per);
+	omap5_configure_abe_dpll(&abe);
+	omap5_configure_usb_dpll(&usb);
+
+	/* Enable all clocks */
+	omap5_enable_all_clocks();
+
+	sr32(0x4Ae0a31C, 8, 1, 0x1);	/* enable software ioreq */
+	sr32(0x4Ae0a31C, 1, 2, 0x0);	/* set for sys_clk (19.2MHz) */
+	sr32(0x4Ae0a31C, 16, 4, 0x0);	/* set divisor to 1 */
+	sr32(0x4Ae0a110, 0, 1, 0x1);	/* set the clock source to active */
+	sr32(0x4Ae0a110, 2, 2, 0x3);	/* enable clocks */
+}
+
+void barebox_arm_reset_vector(void)
+{
+	arm_cpu_lowlevel_init();
+
+	if (get_pc() > 0x80000000)
+		goto out;
+
+	arm_setup_stack(0x4030d000);
+
+	omap5_sevm_init_lowlevel();
+out:
+	barebox_arm_entry(0x80000000, SZ_512M, 0);
+}
diff --git a/arch/arm/boards/omap5_sevm/mux.c b/arch/arm/boards/omap5_sevm/mux.c
new file mode 100644
index 0000000..4f6b5cd
--- /dev/null
+++ b/arch/arm/boards/omap5_sevm/mux.c
@@ -0,0 +1,284 @@
+/*
+ * (C) Copyright 2013
+ * Sam Solutions, <sam-solutions.com>
+ *
+ * Authors:
+ *	Uladzimir Bely <u.bely@sam-solutions.com>
+ *	Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>
+ *
+ * Derived from OMAP5 work in U-Boot project by
+ * Aneesh V <aneesh@ti.com>
+ * Sricharan R <r.sricharan@ti.com>
+ * (Copyright 2010, Texas Instruments, <www.ti.com>)
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <mach/omap5-silicon.h>
+#include <mach/omap5-mux.h>
+#include <mach/omap5-clock.h>
+
+static const struct pad_conf_entry core_padconf_array[] = {
+	{EMMC_CLK, (PTU | IEN | M0)},
+	{EMMC_CMD, (PTU | IEN | M0)},
+	{EMMC_DATA0, (PTU | IEN | M0)},
+	{EMMC_DATA1, (PTU | IEN | M0)},
+	{EMMC_DATA2, (PTU | IEN | M0)},
+	{EMMC_DATA3, (PTU | IEN | M0)},
+	{EMMC_DATA4, (PTU | IEN | M0)},
+	{EMMC_DATA5, (PTU | IEN | M0)},
+	{EMMC_DATA6, (PTU | IEN | M0)},
+	{EMMC_DATA7, (PTU | IEN | M0)},
+	{C2C_CLKOUT0, (M0)},
+	{C2C_CLKOUT1, (M0)},
+	{C2C_CLKIN0,  (IEN | M0)},
+	{C2C_CLKIN1,  (IEN | M0)},
+	{C2C_DATAIN0, (IEN | M0)},
+	{C2C_DATAIN1, (IEN | M0)},
+	{C2C_DATAIN2, (IEN | M0)},
+	{C2C_DATAIN3, (IEN | M0)},
+	{C2C_DATAIN4, (IEN | M0)},
+	{C2C_DATAIN5, (IEN | M0)},
+	{C2C_DATAIN6, (IEN | M0)},
+	{C2C_DATAIN7, (IEN | M0)},
+	{C2C_DATAOUT0, (M0)},
+	{C2C_DATAOUT1, (M0)},
+	{C2C_DATAOUT2, (M0)},
+	{C2C_DATAOUT3, (M0)},
+	{C2C_DATAOUT4, (M0)},
+	{C2C_DATAOUT5, (M0)},
+	{C2C_DATAOUT6, (M0)},
+	{C2C_DATAOUT7, (M0)},
+	{C2C_DATA8, (IEN | M0)},
+	{C2C_DATA9, (IEN | M0)},
+	{C2C_DATA10, (IEN | M0)},
+	{C2C_DATA11, (IEN | M0)},
+	{C2C_DATA12, (IEN | M0)},
+	{C2C_DATA13, (IEN | M0)},
+	{C2C_DATA14, (IEN | M0)},
+	{C2C_DATA15, (IEN | M0)},
+	{LLIB_WAKEREQOUT, (PTU | IEN | M6)},
+	{LLIA_WAKEREQOUT, (M1)},
+	{HSI1_ACREADY, (PTD | M6)},
+	{HSI1_CAREADY, (PTD | M6)},
+	{HSI1_ACWAKE,  (PTD | IEN | M6)},
+	{HSI1_CAWAKE,  (PTU | IEN | M6)},
+	{HSI1_ACFLAG,  (PTD | IEN | M6)},
+	{HSI1_ACDATA,  (PTD | M6)},
+	{HSI1_CAFLAG,  (M6)},
+	{HSI1_CADATA,  (M6)},
+	{UART1_TX, (M0)},
+	{UART1_CTS, (PTU | IEN | M0)},
+	{UART1_RX, (PTU | IEN | M0)},
+	{UART1_RTS, (M0)},
+	{HSI2_CAREADY, (IEN | M0)},
+	{HSI2_ACREADY, (M0)},
+	{HSI2_CAWAKE, (IEN | M0)},
+	{HSI2_ACWAKE, (M0)},
+	{HSI2_CAFLAG, (IEN | M0)},
+	{HSI2_CADATA, (IEN | M0)},
+	{HSI2_ACFLAG, (M0)},
+	{HSI2_ACDATA, (M0)},
+	{UART2_RTS, (IEN | M1)},
+	{UART2_CTS, (IEN | M1)},
+	{UART2_RX, (IEN | M1)},
+	{UART2_TX, (IEN | M1)},
+	{USBB1_HSIC_STROBE, (PTU | IEN | M0)},
+	{USBB1_HSIC_DATA, (PTU | IEN | M0)},
+	{USBB2_HSIC_STROBE, (PTU | IEN | M0)},
+	{USBB2_HSIC_DATA, (PTU | IEN | M0)},
+	{TIMER10_PWM_EVT, (IEN | M0)},
+	{DSIPORTA_TE0, (IEN | M0)},
+	{DSIPORTA_LANE0X, (IEN | M0)},
+	{DSIPORTA_LANE0Y, (IEN | M0)},
+	{DSIPORTA_LANE1X, (IEN | M0)},
+	{DSIPORTA_LANE1Y, (IEN | M0)},
+	{DSIPORTA_LANE2X, (IEN | M0)},
+	{DSIPORTA_LANE2Y, (IEN | M0)},
+	{DSIPORTA_LANE3X, (IEN | M0)},
+	{DSIPORTA_LANE3Y, (IEN | M0)},
+	{DSIPORTA_LANE4X, (IEN | M0)},
+	{DSIPORTA_LANE4Y, (IEN | M0)},
+	{DSIPORTC_LANE0X, (IEN | M0)},
+	{DSIPORTC_LANE0Y, (IEN | M0)},
+	{DSIPORTC_LANE1X, (IEN | M0)},
+	{DSIPORTC_LANE1Y, (IEN | M0)},
+	{DSIPORTC_LANE2X, (IEN | M0)},
+	{DSIPORTC_LANE2Y, (IEN | M0)},
+	{DSIPORTC_LANE3X, (IEN | M0)},
+	{DSIPORTC_LANE3Y, (IEN | M0)},
+	{DSIPORTC_LANE4X, (IEN | M0)},
+	{DSIPORTC_LANE4Y, (IEN | M0)},
+	{DSIPORTC_TE0, (IEN | M0)},
+	{TIMER9_PWM_EVT, (IEN | M0)},
+	{I2C4_SCL, (IEN | M0)},
+	{I2C4_SDA, (IEN | M0)},
+	{MCSPI2_CLK, (IEN | M0)},
+	{MCSPI2_SIMO, (IEN | M0)},
+	{MCSPI2_SOMI, (PTU | IEN | M0)},
+	{MCSPI2_CS0, (M0)},
+	{RFBI_DATA15, (M4)},
+	{RFBI_DATA14, (M4)},
+	{RFBI_DATA13, (PTU | IEN | M6)},
+	{RFBI_DATA12, (PTD | M6)},
+	{RFBI_DATA11, (PTD | M6)},
+	{RFBI_DATA10, (PTD | M6)},
+	{RFBI_DATA9, (PTD | M6)},
+	{RFBI_DATA8, (M4)},
+	{RFBI_DATA7, (PTD | M6)},
+	{RFBI_DATA6, (PTD | M6)},
+	{RFBI_DATA5, (IEN | M6)},
+	{RFBI_DATA4, (IEN | M6)},
+	{RFBI_DATA3, (PTD | IEN | M6)},
+	{RFBI_DATA2, (PTD | M6)},
+	{RFBI_DATA1, (PTD | M6)},
+	{RFBI_DATA0, (PTD | M6)},
+	{RFBI_WE, (PTD | M6)},
+	{MCSPI2_CS0, (M0)},
+	{RFBI_A0, (PTD | IEN | M6)},
+	{RFBI_RE, (M4)},
+	{RFBI_HSYNC0, (M4)},
+	{RFBI_TE_VSYNC0, (PTD | M6)},
+	{GPIO6_182, (M6)},
+	{GPIO6_183, (PTD | M6)},
+	{GPIO6_184, (M4)},
+	{GPIO6_185, (PTD | IEN | M6)},
+	{GPIO6_186, (PTD | M6)},
+	{GPIO6_187, (PTU | IEN | M4)},
+	{HDMI_CEC, (IEN | M0)},
+	{HDMI_HPD, (PTD | IEN | M0)},
+	{HDMI_DDC_SCL, (IEN | M0)},
+	{HDMI_DDC_SDA, (IEN | M0)},
+	{CSIPORTC_LANE0X, (IEN | M0)},
+	{CSIPORTC_LANE0Y, (IEN | M0)},
+	{CSIPORTC_LANE1X, (IEN | M0)},
+	{CSIPORTC_LANE1Y, (IEN | M0)},
+	{CSIPORTB_LANE0X, (IEN | M0)},
+	{CSIPORTB_LANE0Y, (IEN | M0)},
+	{CSIPORTB_LANE1X, (IEN | M0)},
+	{CSIPORTB_LANE1Y, (IEN | M0)},
+	{CSIPORTB_LANE2X, (IEN | M0)},
+	{CSIPORTB_LANE2Y, (IEN | M0)},
+	{CSIPORTB_LANE0X, (IEN | M0)},
+	{CSIPORTB_LANE0Y, (IEN | M0)},
+	{CSIPORTA_LANE1X, (IEN | M0)},
+	{CSIPORTA_LANE1Y, (IEN | M0)},
+	{CSIPORTA_LANE2X, (IEN | M0)},
+	{CSIPORTA_LANE2Y, (IEN | M0)},
+	{CSIPORTA_LANE3X, (IEN | M0)},
+	{CSIPORTA_LANE3Y, (IEN | M0)},
+	{CSIPORTA_LANE4X, (IEN | M0)},
+	{CSIPORTA_LANE4Y, (IEN | M0)},
+	{CAM_SHUTTER, (M0)},
+	{CAM_STROBE, (M0)},
+	{CAM_GLOBALRESET, (IEN | M0)},
+	{TIMER11_PWM_EVT, (PTD | M6)},
+	{TIMER5_PWM_EVT, (PTD | M6)},
+	{TIMER6_PWM_EVT, (PTD | M6)},
+	{TIMER8_PWM_EVT,      (PTU | M6)},
+	{I2C3_SCL, (IEN | M0)},
+	{I2C3_SDA, (IEN | M0)},
+	{GPIO8_233, (IEN | M2)},
+	{GPIO8_234, (IEN | M3)},
+	{ABE_CLKS, (IEN | M0)},
+	{ABEDMIC_DIN1, (IEN | M0)},
+	{ABEDMIC_DIN2, (IEN | M0)},
+	{ABEDMIC_DIN3, (IEN | M0)},
+	{ABEDMIC_CLK1, (M0)},
+	{ABEDMIC_CLK2, (IEN | M1)},
+	{ABEDMIC_CLK3, (M1)},
+	{ABESLIMBUS1_CLOCK, (IEN | M1)},
+	{ABESLIMBUS1_DATA, (IEN | M1)},
+	{ABEMCBSP2_DR, (IEN | M0)},
+	{ABEMCBSP2_DX, (M0)},
+	{ABEMCBSP2_FSX, (IEN | M0)},
+	{ABEMCBSP2_CLKX, (IEN | M0)},
+	{ABEMCPDM_UL_DATA, (PTD | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},
+	{ABEMCPDM_DL_DATA, (PTD | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},
+	{ABEMCPDM_FRAME, (PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},
+	{ABEMCPDM_LB_CLK, (PTD | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},
+	{WLSDIO_CLK, (PTU | IEN | M0)},
+	{WLSDIO_CMD, (PTU | IEN | M0)},
+	{WLSDIO_DATA0, (PTU | IEN | M0)},
+	{WLSDIO_DATA1, (PTU | IEN | M0)},
+	{WLSDIO_DATA2, (PTU | IEN | M0)},
+	{WLSDIO_DATA3, (PTU | IEN | M0)},
+	{UART5_RX, (PTU | IEN | M0)},
+	{UART5_TX, (M0)},
+	{UART5_CTS, (PTU | IEN | M0)},
+	{UART5_RTS, (M0)},
+	{I2C2_SCL, (IEN | M0)},
+	{I2C2_SDA, (IEN | M0)},
+	{MCSPI1_CLK, (M6)},
+	{MCSPI1_SOMI, (IEN | M6)},
+	{MCSPI1_SIMO, (PTD | M6)},
+	{MCSPI1_CS0, (PTD | M6)},
+	{MCSPI1_CS1, (PTD | IEN | M6)},
+	{I2C5_SCL, (IEN | M0)},
+	{I2C5_SDA, (IEN | M0)},
+	{PERSLIMBUS2_CLOCK, (PTD | M6)},
+	{PERSLIMBUS2_DATA, (PTD | IEN | M6)},
+	{UART6_TX, (PTU | IEN | M6)},
+	{UART6_RX, (PTU | IEN | M6)},
+	{UART6_CTS, (PTU | IEN | M6)},
+	{UART6_RTS, (PTU | M0)},
+	{UART3_CTS_RCTX, (PTU | IEN | M6)},
+	{UART3_RTS_IRSD, (PTU | IEN | M1)},
+	{UART3_RX_IRRX, (PTU | IEN | M0)},
+	{UART3_TX_IRTX, (M0)},
+	{USBB3_HSIC_STROBE, (PTU | IEN | M0)},
+	{USBB3_HSIC_DATA, (PTU | IEN | M0)},
+	{SDCARD_CLK, (PTU | IEN | M0)},
+	{SDCARD_CMD, (PTU | IEN | M0)},
+	{SDCARD_DATA2, (PTU | IEN | M0)},
+	{SDCARD_DATA3, (PTU | IEN | M0)},
+	{SDCARD_DATA0, (PTU | IEN | M0)},
+	{SDCARD_DATA1, (PTU | IEN | M0)},
+	{USBD0_HS_DP, (IEN | M0)},
+	{USBD0_HS_DM, (IEN | M0)},
+	{I2C1_PMIC_SCL, (PTU | IEN | M0)},
+	{I2C1_PMIC_SDA, (PTU | IEN | M0)},
+	{USBD0_SS_RX, (IEN | M0)},
+};
+
+static const struct pad_conf_entry wkup_padconf_array[] = {
+	{LLIA_WAKEREQIN, (IEN | M1)},
+	{LLIB_WAKEREQIN, (IEN | M1)},
+	{DRM_EMU0, (PTU | IEN | M0)},
+	{DRM_EMU1, (PTU | IEN | M0)},
+	{JTAG_NTRST, (IEN | M0)},
+	{JTAG_TCK, (IEN | M0)},
+	{JTAG_RTCK, (M0)},
+	{JTAG_TMSC, (IEN | M0)},
+	{JTAG_TDI, (IEN | M0)},
+	{JTAG_TDO, (M0)},
+	{SYS_32K, (IEN | M0)},
+	{FREF_CLK_IOREQ, (IEN | M0)},
+	{FREF_CLK0_OUT, (M0)},
+	{FREF_CLK1_OUT, (M0)},
+	{FREF_CLK2_OUT, (M0)},
+	{FREF_CLK2_REQ, (PTU | IEN | M6)},
+	{FREF_CLK1_REQ, (PTD | IEN | M6)},
+	{SYS_NRESPWRON, (IEN | M0)},
+	{SYS_NRESWARM, (PTU | IEN | M0)},
+	{SYS_PWR_REQ, (M0)},
+	{SYS_NIRQ1, (PTU | IEN | M0)},
+	{SYS_NIRQ2, (PTU | IEN | M0)},
+	{SR_PMIC_SCL, (PTU | IEN | M0)},
+	{SR_PMIC_SDA, (PTU | IEN | M0)},
+	{SYS_BOOT0, (IEN | M0)},
+	{SYS_BOOT1, (IEN | M0)},
+	{SYS_BOOT2, (IEN | M0)},
+	{SYS_BOOT3, (IEN | M0)},
+	{SYS_BOOT4, (IEN | M0)},
+	{SYS_BOOT5, (IEN | M0)},
+};
+
+void set_muxconf_regs(void)
+{
+	omap5_do_set_mux(OMAP54XX_CONTROL_PADCONF_CORE, core_padconf_array,
+			ARRAY_SIZE(core_padconf_array));
+	omap5_do_set_mux(OMAP54XX_CONTROL_PADCONF_WKUP, wkup_padconf_array,
+			ARRAY_SIZE(wkup_padconf_array));
+}
diff --git a/arch/arm/configs/omap5_sevm_defconfig b/arch/arm/configs/omap5_sevm_defconfig
new file mode 100644
index 0000000..5cd51bb
--- /dev/null
+++ b/arch/arm/configs/omap5_sevm_defconfig
@@ -0,0 +1,68 @@
+CONFIG_ARCH_OMAP=y
+CONFIG_ARCH_OMAP5=y
+CONFIG_MACH_OMAP5_SEVM=y
+CONFIG_AEABI=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_UNWIND=y
+CONFIG_MMU=y
+CONFIG_TEXT_BASE=0x8f000000
+CONFIG_MALLOC_SIZE=0x2000000
+CONFIG_MALLOC_TLSF=y
+CONFIG_KALLSYMS=y
+CONFIG_PROMPT="barebox> "
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+# CONFIG_TIMESTAMP is not set
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/omap5_sevm/env"
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIME=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_NFS=y
+CONFIG_NET_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
+CONFIG_DRIVER_NET_SMC911X=y
+# CONFIG_SPI is not set
+CONFIG_MTD=y
+CONFIG_NAND=y
+CONFIG_NAND_OMAP_GPMC=y
+CONFIG_UBI=y
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_OMAP_HSMMC=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
+CONFIG_ZLIB=y
+CONFIG_LZO_DECOMPRESS=y
+CONFIG_DEBUG_LL=y
diff --git a/arch/arm/configs/omap5_sevm_xload_defconfig b/arch/arm/configs/omap5_sevm_xload_defconfig
new file mode 100644
index 0000000..2c47c87
--- /dev/null
+++ b/arch/arm/configs/omap5_sevm_xload_defconfig
@@ -0,0 +1,44 @@
+CONFIG_ARCH_OMAP=y
+CONFIG_ARCH_OMAP5=y
+CONFIG_OMAP_BUILD_IFT=y
+CONFIG_MACH_OMAP5_SEVM=y
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
+# CONFIG_DRIVER_SERIAL_NS16550 is not set
+# CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS is not set
+# CONFIG_SPI is not set
+# CONFIG_MTD is not set
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
+# CONFIG_DEBUG_LL is not set
+# CONFIG_BANNER is not set
+# CONFIG_MEMINFO is not set
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 42e5f4a..0ad3864 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -41,6 +41,14 @@ config ARCH_OMAP4
 	help
 	  Say Y here if you are using Texas Instrument's OMAP4 based platform
 
+config ARCH_OMAP5
+	bool "OMAP5"
+	select CPU_V7
+	select GENERIC_GPIO
+	select OMAP_CLOCK_SOURCE_S32K
+	help
+	  Say Y here if you are using Texas Instrument's OMAP5 based platform
+
 config ARCH_AM33XX
 	bool "AM33xx"
 	select CPU_V7
@@ -115,6 +123,7 @@ config BOARDINFO
 	default "Phytec phyCARD-A-L1" if MACH_PCAAL1
 	default "Phytec phyCARD-A-XL2" if MACH_PCAAXL2
 	default "Phytec phyCORE-AM335x" if MACH_PCM051
+	default "Phytec phyCORE omap5_sevm" if MACH_OMAP5_SEVM
 
 choice
 	prompt "Select OMAP board"
@@ -177,6 +186,13 @@ config MACH_PCAAXL2
 	help
 	  Say Y here if you are using a phyCARD-A-XL1 PCA-A-XL1
 
+config MACH_OMAP5_SEVM
+	bool "Phytec phyCORE omap5_sevm"
+	depends on ARCH_OMAP5
+	help
+	  Say Y here if you are using Phytecs phyCORE omap5_sevm board
+	  based on OMAP5
+
 config MACH_PCM051
 	bool "Phytec phyCORE pcm051"
 	select OMAP_CLOCK_ALL
diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index d9e00f7..e65353f 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -23,6 +23,8 @@ obj-$(CONFIG_ARCH_OMAP3) += omap3_generic.o auxcr.o
 pbl-$(CONFIG_ARCH_OMAP3) += omap3_generic.o auxcr.o
 obj-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
 pbl-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
+obj-$(CONFIG_ARCH_OMAP5) += omap5_generic.o omap5_clock.o
+pbl-$(CONFIG_ARCH_OMAP5) += omap5_generic.o omap5_clock.o
 obj-$(CONFIG_ARCH_AM33XX) += am33xx_generic.o am33xx_clock.o am33xx_mux.o
 obj-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock.o
 pbl-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock.o
diff --git a/arch/arm/mach-omap/gpmc.c b/arch/arm/mach-omap/gpmc.c
index bb84b38..1620f0f 100644
--- a/arch/arm/mach-omap/gpmc.c
+++ b/arch/arm/mach-omap/gpmc.c
@@ -26,6 +26,7 @@
 #include <errno.h>
 #include <mach/omap3-silicon.h>
 #include <mach/omap4-silicon.h>
+#include <mach/omap5-silicon.h>
 #include <mach/am33xx-silicon.h>
 #include <mach/gpmc.h>
 #include <mach/sys_info.h>
@@ -39,6 +40,8 @@ static int gpmc_init(void)
 	omap_gpmc_base = (void *)OMAP3_GPMC_BASE;
 #elif defined(CONFIG_ARCH_OMAP4)
 	omap_gpmc_base = (void *)OMAP44XX_GPMC_BASE;
+#elif defined(CONFIG_ARCH_OMAP5)
+	omap_gpmc_base = (void *)OMAP54XX_GPMC_BASE;
 #elif defined(CONFIG_ARCH_AM33XX)
 	omap_gpmc_base = (void *)AM33XX_GPMC_BASE;
 #else
diff --git a/arch/arm/mach-omap/include/mach/debug_ll.h b/arch/arm/mach-omap/include/mach/debug_ll.h
index 38ca562..473d8f4 100644
--- a/arch/arm/mach-omap/include/mach/debug_ll.h
+++ b/arch/arm/mach-omap/include/mach/debug_ll.h
@@ -39,6 +39,11 @@
 #endif
 #endif
 
+#ifdef CONFIG_ARCH_OMAP5
+#include <mach/omap5-silicon.h>
+#define UART_BASE	OMAP54XX_UART3_BASE
+#endif
+
 #ifdef CONFIG_ARCH_AM33XX
 #include <mach/am33xx-silicon.h>
 #define UART_BASE	AM33XX_UART0_BASE
diff --git a/arch/arm/mach-omap/include/mach/generic.h b/arch/arm/mach-omap/include/mach/generic.h
index 7455404..f4917ba 100644
--- a/arch/arm/mach-omap/include/mach/generic.h
+++ b/arch/arm/mach-omap/include/mach/generic.h
@@ -27,6 +27,12 @@
 #define cpu_is_omap4xxx()	(0)
 #endif
 
+#ifdef CONFIG_ARCH_OMAP5
+#define cpu_is_omap5xxx()	(1)
+#else
+#define cpu_is_omap5xxx()	(0)
+#endif
+
 enum omap_boot_src {
 	OMAP_BOOTSRC_UNKNOWN,
 	OMAP_BOOTSRC_MMC1,
@@ -39,5 +45,6 @@ enum omap_boot_src omap_bootsrc(void);
 enum omap_boot_src am33xx_bootsrc(void);
 enum omap_boot_src omap3_bootsrc(void);
 enum omap_boot_src omap4_bootsrc(void);
+enum omap_boot_src omap5_bootsrc(void);
 
 #endif
diff --git a/arch/arm/mach-omap/include/mach/gpmc_nand.h b/arch/arm/mach-omap/include/mach/gpmc_nand.h
index 4a93465..5fe6d0f 100644
--- a/arch/arm/mach-omap/include/mach/gpmc_nand.h
+++ b/arch/arm/mach-omap/include/mach/gpmc_nand.h
@@ -65,5 +65,6 @@ int omap_add_gpmc_nand_device(struct gpmc_nand_platform_data *pdata);
 
 extern struct gpmc_config omap3_nand_cfg;
 extern struct gpmc_config omap4_nand_cfg;
+extern struct gpmc_config omap5_nand_cfg;
 
 #endif				/* __ASM_OMAP_NAND_GPMC_H */
diff --git a/arch/arm/mach-omap/include/mach/omap5-clock.h b/arch/arm/mach-omap/include/mach/omap5-clock.h
new file mode 100644
index 0000000..9d9f9a4
--- /dev/null
+++ b/arch/arm/mach-omap/include/mach/omap5-clock.h
@@ -0,0 +1,444 @@
+/*
+ * (C) Copyright 2013
+ * Sam Solutions, <sam-solutions.com>
+ *
+ * Authors:
+ *	Uladzimir Bely <u.bely@sam-solutions.com>
+ *	Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>
+ */
+
+#define OMAP_543X_REV_1_0			1
+
+/* CKGEN_PRM Registers */
+#define CM_CLKSEL_ABE_DSS_SYS			0x4ae06100
+#define CM_CLKSEL_WKUPAON			(CM_CLKSEL_ABE_DSS_SYS + 0x0008)
+#define CM_CLKSEL_ABE_PLL_REF			(CM_CLKSEL_ABE_DSS_SYS + 0x000C)
+#define CM_CLKSEL_SYS				(CM_CLKSEL_ABE_DSS_SYS + 0x0010)
+
+#define CM_CLKSEL_SYS_12M0			0x1 /* 12.0MHz */
+/* Reserved					0x2 */
+#define CM_CLKSEL_SYS_16M8			0x3 /* 16.8MHz */
+#define CM_CLKSEL_SYS_19M2			0x4 /* 19.2MHz */
+#define CM_CLKSEL_SYS_26M0			0x5 /* 26.0MHz */
+/* Reserved					0x6 */
+#define CM_CLKSEL_SYS_38M4			0x7 /* 38.4MHz */
+
+/* WKUPAON_CM Registers */
+#define CM_WKUPAON_CLKCTRL_REV1			0x4ae07800
+#define CM_WKUPAON_CLKCTRL_REV2			0x4ae07900
+#define CM_WKUPAON_L4_WKUP_CLKCTRL_OFT		0x0020
+#define CM_WKUPAON_WD_TIMER2_CLKCTRL_OFT	0x0030
+#define CM_WKUPAON_GPIO1_CLKCTRL_OFT		0x0038
+#define CM_WKUPAON_TIMER1_CLKCTRL_OFT		0x0040
+#define CM_WKUPAON_COUNTER_32K_CLKCTRL_OFT	0x0050
+#define CM_WKUPAON_SAR_RAM_CLKCTRL_OFT		0x0060
+#define CM_WKUPAON_KBD_CLKCTRL_OFT		0x0078
+#define CM_WKUPAON_SCRM_CLKCTRL_OFT		0x0090
+#define CM_WKUPAON_IO_SRCOMP_CLKCTRL_OFT	0x0098
+
+/* CKGEN_CM_CORE_AON Registers */
+#define CM_BASE					0x4a004100
+#define CM_CLKSEL_CORE				CM_BASE
+#define CM_CLKSEL_ABE				(CM_BASE + 0x0008)
+#define CM_DLL_CTRL				(CM_BASE + 0x0010)
+#define CM_CLKMODE_DPLL_CORE			(CM_BASE + 0x0020)
+#define CM_IDLEST_DPLL_CORE			(CM_BASE + 0x0024)
+#define CM_AUTOIDLE_DPLL_CORE			(CM_BASE + 0x0028)
+#define CM_CLKSEL_DPLL_CORE			(CM_BASE + 0x002c)
+#define CM_DIV_M2_DPLL_CORE			(CM_BASE + 0x0030)
+#define CM_DIV_M3_DPLL_CORE			(CM_BASE + 0x0034)
+#define CM_DIV_H11_DPLL_CORE			(CM_BASE + 0x0038)
+#define CM_DIV_H12_DPLL_CORE			(CM_BASE + 0x003c)
+#define CM_DIV_H13_DPLL_CORE			(CM_BASE + 0x0040)
+#define CM_DIV_H14_DPLL_CORE			(CM_BASE + 0x0044)
+#define CM_SSC_DELTAMSTEP_DPLL_CORE		(CM_BASE + 0x0048)
+#define CM_SSC_MODFREQDIV_DPLL_CORE		(CM_BASE + 0x004c)
+#define CM_DIV_H21_DPLL_CORE			(CM_BASE + 0x0050) /* For rev. 2 */
+#define CM_DIV_H22_DPLL_CORE			(CM_BASE + 0x0054)
+#define CM_DIV_H23_DPLL_CORE			(CM_BASE + 0x0058)
+#define CM_DIV_H24_DPLL_CORE			(CM_BASE + 0x005c) /* For rev. 2 */
+#define CM_CLKMODE_DPLL_MPU			(CM_BASE + 0x0060)
+#define CM_IDLEST_DPLL_MPU			(CM_BASE + 0x0064)
+#define CM_AUTOIDLE_DPLL_MPU			(CM_BASE + 0x0068)
+#define CM_CLKSEL_DPLL_MPU			(CM_BASE + 0x006c)
+#define CM_DIV_M2_DPLL_MPU			(CM_BASE + 0x0070)
+#define CM_SSC_DELTAMSTEP_DPLL_MPU		(CM_BASE + 0x0088)
+#define CM_SSC_MODFREQDIV_DPLL_MPU		(CM_BASE + 0x008c)
+#define CM_BYPCLK_DPLL_MPU			(CM_BASE + 0x009c)
+#define CM_CLKMODE_DPLL_IVA			(CM_BASE + 0x00a0)
+#define CM_IDLEST_DPLL_IVA			(CM_BASE + 0x00a4)
+#define CM_AUTOIDLE_DPLL_IVA			(CM_BASE + 0x00a8)
+#define CM_CLKSEL_DPLL_IVA			(CM_BASE + 0x00ac)
+#define CM_DIV_H11_DPLL_IVA			(CM_BASE + 0x00b8)
+#define CM_DIV_H12_DPLL_IVA			(CM_BASE + 0x00bc)
+#define CM_SSC_DELTAMSTEP_DPLL_IVA		(CM_BASE + 0x00c8)
+#define CM_SSC_MODFREQDIV_DPLL_IVA		(CM_BASE + 0x00cc)
+#define CM_BYPCLK_DPLL_IVA			(CM_BASE + 0x00dc)
+#define CM_CLKMODE_DPLL_ABE			(CM_BASE + 0x00e0)
+#define CM_IDLEST_DPLL_ABE			(CM_BASE + 0x00e4)
+#define CM_AUTOIDLE_DPLL_ABE			(CM_BASE + 0x00e8)
+#define CM_CLKSEL_DPLL_ABE			(CM_BASE + 0x00ec)
+#define CM_DIV_M2_DPLL_ABE			(CM_BASE + 0x00f0)
+#define CM_DIV_M3_DPLL_ABE			(CM_BASE + 0x00f4)
+#define CM_SSC_DELTAMSTEP_DPLL_ABE		(CM_BASE + 0x0108)
+#define CM_SSC_MODFREQDIV_DPLL_ABE		(CM_BASE + 0x010c)
+#define CM_SHADOW_FREQ_CONFIG1			(CM_BASE + 0x0160)
+#define CM_SHADOW_FREQ_CONFIG2			(CM_BASE + 0x0164)
+#define CM_DYN_DEP_PRESCAL			(CM_BASE + 0x0170)
+#define CM_RESTORE_ST				(CM_BASE + 0x0180)
+
+/* DSP_CM_CORE_AON Registers */
+#define CM_DSP_CLKSTCTRL			0x4a004400
+#define CM_DSP_STATICDEP			(CM_DSP_CLKSTCTRL + 0x0004)
+#define CM_DSP_DYNAMICDEP			(CM_DSP_CLKSTCTRL + 0x0008)
+#define	CM_DSP_DSP_CLKCTRL			(CM_DSP_CLKSTCTRL + 0x0020)
+
+/* ABE_CM_CORE_AON Registers */
+#define ABE_BASE				0x4a004500
+#define CM_ABE_CLKSTCTRL			ABE_BASE
+#define CM_ABE_L4_ABE_CLKCTRL			(ABE_BASE + 0x0020)
+#define CM_ABE_AESS_CLKCTRL			(ABE_BASE + 0x0028)
+#define CM_ABE_MCPDM_CLKCTRL			(ABE_BASE + 0x0030)
+#define CM_ABE_DMIC_CLKCTRL			(ABE_BASE + 0x0038)
+#define CM_ABE_MCASP_CLKCTRL			(ABE_BASE + 0x0040)
+#define CM_ABE_MCBSP1_CLKCTRL			(ABE_BASE + 0x0048)
+#define CM_ABE_MCBSP2_CLKCTRL			(ABE_BASE + 0x0050)
+#define CM_ABE_MCBSP3_CLKCTRL			(ABE_BASE + 0x0058)
+#define CM_ABE_SLIMBUS1_CLKCTRL			(ABE_BASE + 0x0060)
+#define CM_ABE_TIMER5_CLKCTRL			(ABE_BASE + 0x0068)
+#define CM_ABE_TIMER6_CLKCTRL			(ABE_BASE + 0x0070)
+#define CM_ABE_TIMER7_CLKCTRL			(ABE_BASE + 0x0078)
+#define CM_ABE_TIMER8_CLKCTRL			(ABE_BASE + 0x0080)
+#define CM_ABE_WD_TIMER3_CLKCTRL		(ABE_BASE + 0x0088)
+
+/* CKGEN_CM_CORE Registers */
+#define CKGEN_BASE				0x4a008100
+#define CM_CLKSEL_USB_60MHZ			(CKGEN_BASE + 0x0004)
+#define CM_CLKMODE_DPLL_PER			(CKGEN_BASE + 0x0040)
+#define CM_IDLEST_DPLL_PER			(CKGEN_BASE + 0x0044)
+#define CM_AUTOIDLE_DPLL_PER			(CKGEN_BASE + 0x0048)
+#define CM_CLKSEL_DPLL_PER			(CKGEN_BASE + 0x004c)
+#define CM_DIV_M2_DPLL_PER			(CKGEN_BASE + 0x0050)
+#define CM_DIV_M3_DPLL_PER			(CKGEN_BASE + 0x0054)
+#define CM_DIV_H11_DPLL_PER			(CKGEN_BASE + 0x0058)
+#define CM_DIV_H12_DPLL_PER			(CKGEN_BASE + 0x005c)
+#define CM_DIV_H14_DPLL_PER			(CKGEN_BASE + 0x0064)
+#define CM_SSC_DELTAMSTEP_DPLL_PER		(CKGEN_BASE + 0x0068)
+#define CM_SSC_MODFREQDIV_DPLL_PER		(CKGEN_BASE + 0x006c)
+#define CM_CLKMODE_DPLL_USB			(CKGEN_BASE + 0x0080)
+#define CM_IDLEST_DPLL_USB			(CKGEN_BASE + 0x0084)
+#define CM_AUTOIDLE_DPLL_USB			(CKGEN_BASE + 0x0088)
+#define CM_CLKSEL_DPLL_USB			(CKGEN_BASE + 0x008c)
+#define CM_DIV_M2_DPLL_USB			(CKGEN_BASE + 0x0090)
+#define CM_SSC_DELTAMSTEP_DPLL_USB		(CKGEN_BASE + 0x00a8)
+#define CM_SSC_MODFREQDIV_DPLL_USB		(CKGEN_BASE + 0x00ac)
+#define CM_CLKDCOLDO_DPLL_USB			(CKGEN_BASE + 0x00b4)
+#define CM_CLKMODE_DPLL_UNIPRO2			(CKGEN_BASE + 0x00c0)
+#define CM_IDLEST_DPLL_UNIPRO2			(CKGEN_BASE + 0x00c4)
+#define CM_AUTOIDLE_DPLL_UNIPRO2		(CKGEN_BASE + 0x00c8)
+#define CM_CLKSEL_DPLL_UNIPRO2			(CKGEN_BASE + 0x00cc)
+#define CM_DIV_M2_DPLL_UNIPRO2			(CKGEN_BASE + 0x00d0)
+#define CM_SSC_DELTAMSTEP_DPLL_UNIPRO2		(CKGEN_BASE + 0x00e8)
+#define CM_SSC_MODFREQDIV_DPLL_UNIPRO2		(CKGEN_BASE + 0x00ec)
+#define CM_CLKDCOLDO_DPLL_UNIPRO2		(CKGEN_BASE + 0x00f4)
+#define CM_CLKMODE_DPLL_UNIPRO1			(CKGEN_BASE + 0x0100)
+#define CM_IDLEST_DPLL_UNIPRO1			(CKGEN_BASE + 0x0104)
+#define CM_AUTOIDLE_DPLL_UNIPRO1		(CKGEN_BASE + 0x0108)
+#define CM_CLKSEL_DPLL_UNIPRO1			(CKGEN_BASE + 0x010c)
+#define CM_DIV_M2_DPLL_UNIPRO1			(CKGEN_BASE + 0x0110)
+#define CM_SSC_DELTAMSTEP_DPLL_UNIPRO1		(CKGEN_BASE + 0x0128)
+#define CM_SSC_MODFREQDIV_DPLL_UNIPRO1		(CKGEN_BASE + 0x012c)
+#define CM_CLKDCOLDO_DPLL_UNIPRO1		(CKGEN_BASE + 0x0134)
+
+/* CORE_CM_CORE Registers */
+#define CORE_BASE				0x4a008700
+#define CM_L3MAIN1_CLKSTCTRL			(CORE_BASE + 0x0000)
+#define CM_L3MAIN1_DYNAMICDEP			(CORE_BASE + 0x0008)
+#define CM_L3MAIN1_L3_MAIN_1_CLKCTRL		(CORE_BASE + 0x0020)
+#define CM_L3MAIN2_CLKSTCTRL			(CORE_BASE + 0x0100)
+#define CM_L3MAIN2_DYNAMICDEP			(CORE_BASE + 0x0108)
+#define CM_L3MAIN2_L3_MAIN_2_CLKCTRL		(CORE_BASE + 0x0120)
+#define CM_L3MAIN2_GPMC_CLKCTRL			(CORE_BASE + 0x0128)
+#define CM_L3MAIN2_OCMC_RAM_CLKCTRL		(CORE_BASE + 0x0130)
+#define CM_IPU_CLKSTCTRL			(CORE_BASE + 0x0200)
+#define CM_IPU_STATICDEP			(CORE_BASE + 0x0204)
+#define CM_IPU_DYNAMICDEP			(CORE_BASE + 0x0208)
+#define CM_IPU_IPU_CLKCTRL			(CORE_BASE + 0x0220)
+#define CM_DMA_CLKSTCTRL			(CORE_BASE + 0x0300)
+#define CM_DMA_STATICDEP			(CORE_BASE + 0x0304)
+#define CM_DMA_DYNAMICDEP			(CORE_BASE + 0x0308)
+#define CM_DMA_DMA_SYSTEM_CLKCTRL		(CORE_BASE + 0x0320)
+#define CM_EMIF_CLKSTCTRL			(CORE_BASE + 0x0400)
+#define CM_EMIF_DMM_CLKCTRL			(CORE_BASE + 0x0420)
+#define CM_EMIF_EMIF_OCP_FW_CLKCTRL		(CORE_BASE + 0x0428)
+#define CM_EMIF_EMIF1_CLKCTRL			(CORE_BASE + 0x0430)
+#define CM_EMIF_EMIF2_CLKCTRL			(CORE_BASE + 0x0438)
+#define CM_EMIF_EMIF_DLL_CLKCTRL		(CORE_BASE + 0x0440)
+#define CM_C2C_CLKSTCTRL			(CORE_BASE + 0x0500)
+#define CM_C2C_STATICDEP			(CORE_BASE + 0x0504)
+#define CM_C2C_DYNAMICDEP			(CORE_BASE + 0x0508)
+#define CM_C2C_C2C_CLKCTRL			(CORE_BASE + 0x0520)
+#define CM_C2C_MODEM_ICR_CLKCTRL		(CORE_BASE + 0x0528)
+#define CM_C2C_C2C_OCP_FW_CLKCTRL		(CORE_BASE + 0x0530)
+#define CM_L4CFG_CLKSTCTRL			(CORE_BASE + 0x0600)
+#define CM_L4CFG_DYNAMICDEP			(CORE_BASE + 0x0608)
+#define CM_L4CFG_L4_CFG_CLKCTRL			(CORE_BASE + 0x0620)
+#define CM_L4CFG_SPINLOCK_CLKCTRL		(CORE_BASE + 0x0628)
+#define CM_L4CFG_MAILBOX_CLKCTRL		(CORE_BASE + 0x0630)
+#define CM_L4CFG_SAR_ROM_CLKCTRL		(CORE_BASE + 0x0638)
+#define CM_L4CFG_OCP2SCP2_CLKCTRL		(CORE_BASE + 0x0640)
+#define CM_L3INSTR_CLKSTCTRL			(CORE_BASE + 0x0700)
+#define CM_L3INSTR_L3_MAIN_3_CLKCTRL		(CORE_BASE + 0x0720)
+#define CM_L3INSTR_L3_INSTR_CLKCTRL		(CORE_BASE + 0x0728)
+#define CM_L3INSTR_OCP_WP_NOC_CLKCTRL		(CORE_BASE + 0x0740)
+#define CM_L3INSTR_DLL_AGING_CLKCTRL		(CORE_BASE + 0x0748)
+#define CM_L3INSTR_CTRL_MODULE_BANDGAP_CLKCTRL	(CORE_BASE + 0x0750)
+
+/* L4PER_CM_CORE Registers */
+#define CM_L4PER_CLKSTCTRL_REV1			0x4a009400
+#define CM_L4PER_CLKSTCTRL_REV2			0x4a009000
+#define CM_L4PER_DYNAMICDEP_OFT			0x0008
+#define CM_L4PER_TIMER10_CLKCTRL_OFT		0x0028
+#define CM_L4PER_TIMER11_CLKCTRL_OFT		0x0030
+#define CM_L4PER_TIMER2_CLKCTRL_OFT		0x0038
+#define CM_L4PER_TIMER3_CLKCTRL_OFT		0x0040
+#define CM_L4PER_TIMER4_CLKCTRL_OFT		0x0048
+#define CM_L4PER_TIMER9_CLKCTRL_OFT		0x0050
+#define CM_L4PER_ELM_CLKCTRL_OFT		0x0058
+#define CM_L4PER_GPIO2_CLKCTRL_OFT		0x0060
+#define CM_L4PER_GPIO3_CLKCTRL_OFT		0x0068
+#define CM_L4PER_GPIO4_CLKCTRL_OFT		0x0070
+#define CM_L4PER_GPIO5_CLKCTRL_OFT		0x0078
+#define CM_L4PER_GPIO6_CLKCTRL_OFT		0x0080
+#define CM_L4PER_HDQ1W_CLKCTRL_OFT		0x0088
+#define CM_L4PER_I2C1_CLKCTRL_OFT		0x00a0
+#define CM_L4PER_I2C2_CLKCTRL_OFT		0x00a8
+#define CM_L4PER_I2C3_CLKCTRL_OFT		0x00b0
+#define CM_L4PER_I2C4_CLKCTRL_OFT		0x00b8
+#define CM_L4PER_L4_PER_CLKCTRL_OFT		0x00c0
+#define CM_L4PER_MCSPI1_CLKCTRL_OFT		0x00f0
+#define CM_L4PER_MCSPI2_CLKCTRL_OFT		0x00f8
+#define CM_L4PER_MCSPI3_CLKCTRL_OFT		0x0100
+#define CM_L4PER_MCSPI4_CLKCTRL_OFT		0x0108
+#define CM_L4PER_GPIO7_CLKCTRL_OFT		0x0110
+#define CM_L4PER_GPIO8_CLKCTRL_OFT		0x0118
+#define CM_L4PER_MMC3_CLKCTRL_OFT		0x0120
+#define CM_L4PER_MMC4_CLKCTRL_OFT		0x0128
+#define CM_L4PER_SLIMBUS2_CLKCTRL_OFT		0x0138
+#define CM_L4PER_UART1_CLKCTRL_OFT		0x0140
+#define CM_L4PER_UART2_CLKCTRL_OFT		0x0148
+#define CM_L4PER_UART3_CLKCTRL_OFT		0x0150
+#define CM_L4PER_UART4_CLKCTRL_OFT		0x0158
+#define CM_L4PER_MMC5_CLKCTRL_OFT		0x0160
+#define CM_L4PER_I2C5_CLKCTRL_OFT		0x0168
+#define CM_L4PER_UART5_CLKCTRL_OFT		0x0170
+#define CM_L4PER_UART6_CLKCTRL_OFT		0x0178
+#define CM_L4SEC_CLKSTCTRL_OFT			0x0180
+#define CM_L4SEC_STATICDEP_OFT			0x0184
+#define CM_L4SEC_DYNAMICDEP_OFT			0x0188
+#define CM_L4SEC_AES1_CLKCTRL_OFT		0x01a0
+#define CM_L4SEC_AES2_CLKCTRL_OFT		0x01a8
+#define CM_L4SEC_DES3DES_CLKCTRL_OFT		0x01b0
+#define CM_L4SEC_FPKA_OFT			0x01b8
+#define CM_L4SEC_RNG_CLKCTRL_OFT		0x01c0
+#define CM_L4SEC_SHA2MD5_CLKCTRL_OFT		0x01c8
+#define CM_L4SEC_DMA_CRYPTO_CLKCTRL_OFT		0x01d8
+
+/* L3INIT_CM_CORE Registers */
+/* OMAP5 revision 1*/
+#define CM_L3INIT_CLKSTCTRL_REV1		0x4a009300
+#define CM_L3INIT_CLKSTCTRL_REV2		0x4a009600
+#define CM_L3INIT_STATICDEP_OFT			0x0004
+#define CM_L3INIT_DYNAMICDEP_OFT		0x0008
+#define CM_L3INIT_MMC1_CLKCTRL_OFT		0x0028
+#define CM_L3INIT_MMC2_CLKCTRL_OFT		0x0030
+#define CM_L3INIT_HSI_CLKCTRL_OFT		0x0038
+#define CM_L3INIT_UNIPRO2_CLKCTRL_OFT		0x0040
+#define CM_L3INIT_MPHY_UNIPRO2_CLKCTRL_OFT	0x0048
+#define CM_L3INIT_USB_HOST_HS_CLKCTRL_OFT	0x0058
+#define CM_L3INIT_USB_TLL_HS_CLKCTRL_OFT	0x0068
+#define CM_L3INIT_IEEE1500_2_OCP_CLKCTRL_OFT	0x0078
+#define CM_L3INIT_SATA_CLKCTRL_OFT		0x0088
+#define CM_L3INIT_OCP2SCP1_CLKCTRL_OFT		0x00E0
+#define CM_L3INIT_OCP2SCP3_CLKCTRL_OFT		0x00E8
+#define CM_L3INIT_USB_OTG_SS_CLKCTRL_OFT	0x00F0
+
+/* CAM_CM_CORE Registers */
+#define CM_CAM_CLKSTCTRL_REV1			0x4a009000
+#define CM_CAM_CLKSTCTRL_REV2			0x4a009300
+#define CM_CAM_STATICDEP_OFT			0x0004
+#define CM_CAM_DYNAMICDEP_OFT			0x0008
+#define CM_CAM_ISS_CLKCTRL_OFT			0x0020
+#define CM_CAM_FDIF_CLKCTRL_OFT			0x0028
+#define CM_CAM_CAL_CLKCTRL_OFT			0x0030
+
+/* DSS_CM_CORE Registers */
+#define CM_DSS_CLKSTCTRL_REV1			0x4a009100
+#define CM_DSS_CLKSTCTRL_REV2			0x4a009400
+#define CM_DSS_STATICDEP_OFT			0x0004
+#define CM_DSS_DYNAMICDEP_OFT			0x0008
+#define CM_DSS_DSS_CLKCTRL_OFT			0x0020
+#define CM_DSS_BB2D_CLKCTRL_OFT			0x0030 /* For rev. 2 */
+
+/* GPU_CM_CORE Registers */
+#define CM_GPU_CLKSTCTRL_REV1			0x4a009200
+#define CM_GPU_CLKSTCTRL_REV2			0x4a009500
+#define CM_GPU_STATICDEP_OFT			0x0004
+#define CM_GPU_DYNAMICDEP_OFT			0x0008
+#define CM_GPU_GPU_CLKCTRL_OFT			0x0020
+
+#define PLL_STOP				0x1
+#define PLL_LOW_POWER_BYPASS			0x5
+#define PLL_FAST_RELOCK_BYPASS			0x6
+#define PLL_LOCK				0x7
+
+/* TPS */
+#define TPS62361_I2C_SLAVE_ADDR			0x60
+#define TPS62361_REG_ADDR_SET0			0x0
+#define TPS62361_REG_ADDR_SET1			0x1
+#define TPS62361_REG_ADDR_SET2			0x2
+#define TPS62361_REG_ADDR_SET3			0x3
+#define TPS62361_REG_ADDR_CTRL			0x4
+#define TPS62361_REG_ADDR_TEMP			0x5
+#define TPS62361_REG_ADDR_RMP_CTRL		0x6
+#define TPS62361_REG_ADDR_CHIP_ID		0x8
+#define TPS62361_REG_ADDR_CHIP_ID_2		0x9
+
+#define TPS62361_BASE_VOLT_MV	500
+#define TPS62361_VSEL0_GPIO	7
+
+/* Used to index into DPLL parameter tables */
+struct	dpll_param {
+	unsigned int m;
+	unsigned int n;
+	unsigned int m2;
+	unsigned int m3;
+	unsigned int h11;
+	unsigned int h12;
+	unsigned int h13;
+	unsigned int h14;
+	unsigned int h22;
+	unsigned int h23;
+};
+
+/* DPLL_MPU Preferred Settings       		   m    n  m2  m3  h11 h12 h13 h14 h22 h23 */
+/* SYS_CLK = 12.0MHz */
+#define OMAP5_MPU_DPLL_PARAM_12M0_HIGH		{ 275,  2,  1,  0,  0,  0,  0,  0,  0,  0}
+#define OMAP5_MPU_DPLL_PARAM_12M0_NOM		{ 200,  2,  1,  0,  0,  0,  0,  0,  0,  0}
+#define OMAP5_MPU_DPLL_PARAM_12M0_LOW		{ 200,  2,  2,  0,  0,  0,  0,  0,  0,  0}
+/* SYS_CLK = 16.8MHz */
+#define OMAP5_MPU_DPLL_PARAM_16M8_HIGH		{ 458,  6,  1,  0,  0,  0,  0,  0,  0,  0}
+#define OMAP5_MPU_DPLL_PARAM_16M8_NOM		{ 375,  8,  1,  0,  0,  0,  0,  0,  0,  0}
+#define OMAP5_MPU_DPLL_PARAM_16M8_LOW		{ 375,  8,  2,  0,  0,  0,  0,  0,  0,  0}
+/* SYS_CLK = 19.2MHz */
+#define OMAP5_MPU_DPLL_PARAM_19M2_HIGH		{ 229,  3,  1,  0,  0,  0,  0,  0,  0,  0}
+#define OMAP5_MPU_DPLL_PARAM_19M2_NOM		{1000, 20,  1,  0,  0,  0,  0,  0,  0,  0}
+#define OMAP5_MPU_DPLL_PARAM_19M2_LOW		{1000, 20,  2,  0,  0,  0,  0,  0,  0,  0}
+/* SYS_CLK = 26.0MHz */
+#define OMAP5_MPU_DPLL_PARAM_26M0_HIGH		{ 296,  6,  1,  0,  0,  0,  0,  0,  0,  0}
+#define OMAP5_MPU_DPLL_PARAM_26M0_NOM		{ 400, 12,  1,  0,  0,  0,  0,  0,  0,  0}
+#define OMAP5_MPU_DPLL_PARAM_26M0_LOW		{ 400, 12,  2,  0,  0,  0,  0,  0,  0,  0}
+/* SYS_CLK = 38.4MHz */
+#define OMAP5_MPU_DPLL_PARAM_38M4_HIGH		{ 229,  7,  1,  0,  0,  0,  0,  0,  0,  0}
+#define OMAP5_MPU_DPLL_PARAM_38M4_NOM		{ 375, 17,  1,  0,  0,  0,  0,  0,  0,  0}
+#define OMAP5_MPU_DPLL_PARAM_38M4_LOW		{ 375, 17,  2,  0,  0,  0,  0,  0,  0,  0}
+
+/* DPLL_IVA Preferred Settings       		   m    n  m2  m3  h11 h12 h13 h14 h22 h23 */
+/* SYS_CLK = 12.0MHz */
+#define OMAP5_IVA_DPLL_PARAM_12M0_OD		{ 133,  2,  0,  0,  2,  2,  0,  0,  0,  0}
+#define OMAP5_IVA_DPLL_PARAM_12M0_NOM		{1165, 11,  0,  0,  5,  6,  0,  0,  0,  0}
+#define OMAP5_IVA_DPLL_PARAM_12M0_LOW		{1165, 11,  0,  0, 10, 12,  0,  0,  0,  0}
+/* SYS_CLK = 16.8MHz */
+#define OMAP5_IVA_DPLL_PARAM_16M8_OD		{ 253,  7,  0,  0,  2,  2,  0,  0,  0,  0}
+#define OMAP5_IVA_DPLL_PARAM_16M8_NOM		{ 208,  2,  0,  0,  5,  6,  0,  0,  0,  0}
+#define OMAP5_IVA_DPLL_PARAM_16M8_LOW		{ 208,  2,  0,  0, 10, 12,  0,  0,  0,  0}
+/* SYS_CLK = 19.2MHz */
+#define OMAP5_IVA_DPLL_PARAM_19M2_OD		{  83,  2,  0,  0,  2,  2,  0,  0,  0,  0}
+#define OMAP5_IVA_DPLL_PARAM_19M2_NOM		{ 182,  2,  0,  0,  5,  6,  0,  0,  0,  0}
+#define OMAP5_IVA_DPLL_PARAM_19M2_LOW		{ 182,  2,  0,  0, 10, 12,  0,  0,  0,  0}
+/* SYS_CLK = 26.0MHz */
+#define OMAP5_IVA_DPLL_PARAM_26M0_OD		{ 143,  6,  0,  0,  2,  2,  0,  0,  0,  0}
+#define OMAP5_IVA_DPLL_PARAM_26M0_NOM		{ 224,  4,  0,  0,  5,  6,  0,  0,  0,  0}
+#define OMAP5_IVA_DPLL_PARAM_26M0_LOW		{ 224,  4,  0,  0, 10, 12,  0,  0,  0,  0}
+/* SYS_CLK = 38.4MHz */
+#define OMAP5_IVA_DPLL_PARAM_38M4_OD		{  83,  5,  0,  0,  2,  2,  0,  0,  0,  0}
+#define OMAP5_IVA_DPLL_PARAM_38M4_NOM		{  91,  2,  0,  0,  5,  6,  0,  0,  0,  0}
+#define OMAP5_IVA_DPLL_PARAM_38M4_LOW		{  91,  2,  0,  0, 10, 12,  0,  0,  0,  0}
+
+/* DPLL_CORE Preferred Settings       		   m    n  m2  m3  h11 h12 h13 h14 h22 h23 */
+/* SYS_CLK = 12.0MHz */
+#define OMAP5_CORE_DPLL_PARAM_12M0_NOM		{ 266,  2,  2,  5,  8,  4, 62,  4,  5,  7}
+#define OMAP5_CORE_DPLL_PARAM_12M0_LOW		{ 266,  2,  4,  8,  8,  8, 62, 10, 10, 14}
+/* SYS_CLK = 16.8MHz */
+#define OMAP5_CORE_DPLL_PARAM_16M8_NOM		{ 443,  6,  2,  5,  8,  4, 62,  4,  5,  7}
+#define OMAP5_CORE_DPLL_PARAM_16M8_LOW		{ 443,  6,  4,  8,  8,  8, 62, 10, 10, 14}
+/* SYS_CLK = 19.2MHz */
+#define OMAP5_CORE_DPLL_PARAM_19M2_NOM		{ 277,  4,  2,  5,  8,  4, 62,  4,  5,  7}
+#define OMAP5_CORE_DPLL_PARAM_19M2_LOW		{ 277,  4,  4,  8,  8,  8, 62, 10, 10, 14}
+/* SYS_CLK = 26.0MHz */
+#define OMAP5_CORE_DPLL_PARAM_26M0_NOM		{ 368,  8,  2,  5,  8,  4, 62,  4,  5,  7}
+#define OMAP5_CORE_DPLL_PARAM_26M0_LOW		{ 368,  8,  4,  8,  8,  8, 62, 10, 10, 14}
+/* SYS_CLK = 38.4MHz */
+#define OMAP5_CORE_DPLL_PARAM_38M4_NOM		{ 277,  9,  2,  5,  8,  4, 62,  4,  5,  7}
+#define OMAP5_CORE_DPLL_PARAM_38M4_LOW		{ 277,  9,  4,  8,  8,  8, 62, 10, 10, 14}
+
+/* DPLL_PER Preferred Settings       		   m    n  m2  m3  h11 h12 h13 h14 h22 h23 */
+/* SYS_CLK = 12.0MHz */
+#define OMAP5_PER_DPLL_PARAM_12M0_NOM		{  32,  0,  4,  3,  6,  4,  0,  2,  0,  0}
+#define OMAP5_PER_DPLL_PARAM_12M0_LOW		{  32,  0,  4,  4,  6,  4,  0,  4,  0,  0}
+/* SYS_CLK = 16.8MHz */
+#define OMAP5_PER_DPLL_PARAM_16M8_NOM		{ 160,  6,  4,  3,  6,  4,  0,  2,  0,  0}
+#define OMAP5_PER_DPLL_PARAM_16M8_LOW		{ 160,  6,  4,  4,  6,  4,  0,  4,  0,  0}
+/* SYS_CLK = 19.2MHz */
+#define OMAP5_PER_DPLL_PARAM_19M2_NOM		{  20,  0,  4,  3,  6,  4,  0,  2,  0,  0}
+#define OMAP5_PER_DPLL_PARAM_19M2_LOW		{  20,  0,  4,  4,  6,  4,  0,  4,  0,  0}
+/* SYS_CLK = 26.0MHz */
+#define OMAP5_PER_DPLL_PARAM_26M0_NOM		{ 192, 12,  4,  3,  6,  4,  0,  2,  0,  0}
+#define OMAP5_PER_DPLL_PARAM_26M0_LOW		{ 192, 12,  4,  4,  6,  4,  0,  4,  0,  0}
+/* SYS_CLK = 38.4MHz */
+#define OMAP5_PER_DPLL_PARAM_38M4_NOM		{  10,  0,  4,  3,  6,  4,  0,  2,  0,  0}
+#define OMAP5_PER_DPLL_PARAM_38M4_LOW		{  10,  0,  4,  4,  6,  4,  0,  4,  0,  0}
+
+/* DPLL_ABE Preferred Settings       		   m    n  m2  m3  h11 h12 h13 h14 h22 h23 */
+#define OMAP5_ABE_DPLL_PARAM			{ 750,  0,  1,  1,  0,  0,  0,  0,  0,  0}
+
+/* DPLL_USB Preferred Settings       		   m    n  m2  m3  h11 h12 h13 h14 h22 h23 */
+/* SYS_CLK = 12.0MHz */
+#define OMAP5_USB_DPLL_PARAM_12M0		{ 400,  4,  2,  0,  0,  0,  0,  0,  0,  0}
+/* SYS_CLK = 16.8MHz */
+#define OMAP5_USB_DPLL_PARAM_16M8		{ 400,  6,  2,  0,  0,  0,  0,  0,  0,  0}
+/* SYS_CLK = 19.2MHz */
+#define OMAP5_USB_DPLL_PARAM_19M2		{ 400,  6,  2,  0,  0,  0,  0,  0,  0,  0}
+/* SYS_CLK = 26.0MHz */
+#define OMAP5_USB_DPLL_PARAM_26M0		{ 480, 12,  2,  0,  0,  0,  0,  0,  0,  0}
+/* SYS_CLK = 38.4MHz */
+#define OMAP5_USB_DPLL_PARAM_38M4		{ 480, 15,  2,  0,  0,  0,  0,  0,  0,  0}
+
+/* DPLL_UNIPRO1/UNIPRO2 Preferred Settings	   m    n  m2  m3  h11 h12 h13 h14 h22 h23 */
+/* Different for DCO clock 1500MHz and 1250MHz */
+/* SYS_CLK = 12.0MHz */
+#define OMAP5_UNIPRO_DPLL_PARAM_12M0_DCO1M50	{ 520,  4,  4,  0,  0,  0,  0,  0,  0,  0}
+#define OMAP5_UNIPRO_DPLL_PARAM_12M0_DCO1M25	{1822, 14,  4,  0,  0,  0,  0,  0,  0,  0}
+/* SYS_CLK = 16.8MHz */
+#define OMAP5_UNIPRO_DPLL_PARAM_16M8_DCO1M50	{ 520,  6,  4,  0,  0,  0,  0,  0,  0,  0}
+#define OMAP5_UNIPRO_DPLL_PARAM_16M8_DCO1M25	{1822, 20,  4,  0,  0,  0,  0,  0,  0,  0}
+/* SYS_CLK = 19.2MHz */
+#define OMAP5_UNIPRO_DPLL_PARAM_19M2_DCO1M50	{ 520,  7,  4,  0,  0,  0,  0,  0,  0,  0}
+#define OMAP5_UNIPRO_DPLL_PARAM_19M2_DCO1M25	{ 911, 11,  4,  0,  0,  0,  0,  0,  0,  0}
+/* SYS_CLK = 26.0MHz */
+#define OMAP5_UNIPRO_DPLL_PARAM_26M0_DCO1M50	{ 528, 10,  4,  0,  0,  0,  0,  0,  0,  0}
+#define OMAP5_UNIPRO_DPLL_PARAM_26M0_DCO1M25	(1850, 32,  4,  0,  0,  0,  0,  0,  0,  0}
+/* SYS_CLK = 38.4MHz */
+#define OMAP5_UNIPRO_DPLL_PARAM_38M4_DCO1M50	{ 520, 15,  4,  0,  0,  0,  0,  0,  0,  0}
+#define OMAP5_UNIPRO_DPLL_PARAM_38M4_DCO1M25	{ 911, 23,  4,  0,  0,  0,  0,  0,  0,  0}
+
+void omap5_configure_mpu_dpll(const struct dpll_param *dpll_param);
+void omap5_configure_iva_dpll(const struct dpll_param *dpll_param);
+void omap5_configure_core_dpll_no_lock(const struct dpll_param *param);
+void omap5_configure_per_dpll(const struct dpll_param *dpll_param);
+void omap5_configure_abe_dpll(const struct dpll_param *dpll_param);
+void omap5_configure_usb_dpll(const struct dpll_param *dpll_param);
+void omap5_lock_core_dpll(void);
+void omap5_lock_core_dpll_shadow(const struct dpll_param *param);
+void omap5_enable_all_clocks(void);
+
diff --git a/arch/arm/mach-omap/include/mach/omap5-mux.h b/arch/arm/mach-omap/include/mach/omap5-mux.h
new file mode 100644
index 0000000..808d045
--- /dev/null
+++ b/arch/arm/mach-omap/include/mach/omap5-mux.h
@@ -0,0 +1,321 @@
+/*
+ * (C) Copyright 2013
+ * Sam Solutions, <sam-solutions.com>
+ *
+ * Authors:
+ *	Uladzimir Bely <u.bely@sam-solutions.com>
+ *	Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>
+ *
+ * Derived from OMAP5 work in U-Boot project by
+ * Richard Woodruff		<r-woodruff2@ti.com>
+ * Aneesh V			<aneesh@ti.com>
+ * Balaji Krishnamoorthy	<balajitk@ti.com>
+ * (Copyright 2004-2009, Texas Instruments Incorporated)
+ */
+
+#ifndef _MUX_OMAP5_H_
+#define _MUX_OMAP5_H_
+
+#include <asm/types.h>
+
+struct pad_conf_entry {
+	u16 offset;
+	u16 val;
+};
+
+#define OFF_PD			(0 << 12)
+#define OFF_PU			(0 << 12)
+#define OFF_OUT_PTD		(0 << 10)
+#define OFF_OUT_PTU		(0 << 10)
+#define OFF_IN			(0 << 10)
+#define OFF_OUT			(0 << 10)
+#define OFF_EN			(0 << 9)
+
+#define IEN			(1 << 8)
+#define IDIS			(0 << 8)
+#define PTU			(3 << 3)
+#define PTD			(1 << 3)
+#define EN			(1 << 3)
+#define DIS			(0 << 3)
+
+#define M0			0
+#define M1			1
+#define M2			2
+#define M3			3
+#define M4			4
+#define M5			5
+#define M6			6
+#define M7			7
+
+#define SAFE_MODE		M7
+
+#define OFF_IN_PD		0
+#define OFF_IN_PU		0
+#define OFF_OUT_PD		0
+#define OFF_OUT_PU		0
+
+/* CTRL_MODULE_CORE_PAT Registers */
+/* Base address is 0x4a002800 */
+#define CORE_REVISION		0x0000
+#define CORE_HWINFO		0x0004
+#define CORE_SYSCONFIG		0x0010
+#define EMMC_CLK		0x0040
+#define EMMC_CMD		0x0042
+#define EMMC_DATA0		0x0044
+#define EMMC_DATA1		0x0046
+#define EMMC_DATA2		0x0048
+#define EMMC_DATA3		0x004a
+#define EMMC_DATA4		0x004c
+#define EMMC_DATA5		0x004e
+#define EMMC_DATA6		0x0050
+#define EMMC_DATA7		0x0052
+#define C2C_CLKOUT0		0x0054
+#define C2C_CLKOUT1		0x0056
+#define C2C_CLKIN0		0x0058
+#define C2C_CLKIN1		0x005a
+#define C2C_DATAIN0		0x005c
+#define C2C_DATAIN1		0x005e
+#define C2C_DATAIN2		0x0060
+#define C2C_DATAIN3		0x0062
+#define C2C_DATAIN4		0x0064
+#define C2C_DATAIN5		0x0066
+#define C2C_DATAIN6		0x0068
+#define C2C_DATAIN7		0x006a
+#define C2C_DATAOUT0		0x006c
+#define C2C_DATAOUT1		0x006e
+#define C2C_DATAOUT2		0x0070
+#define C2C_DATAOUT3		0x0072
+#define C2C_DATAOUT4		0x0074
+#define C2C_DATAOUT5		0x0076
+#define C2C_DATAOUT6		0x0078
+#define C2C_DATAOUT7		0x007a
+#define C2C_DATA8		0x007c
+#define C2C_DATA9		0x007e
+#define C2C_DATA10		0x0080
+#define C2C_DATA11		0x0082
+#define C2C_DATA12		0x0084
+#define C2C_DATA13		0x0086
+#define C2C_DATA14		0x0088
+#define C2C_DATA15		0x008a
+#define LLIA_WAKEREQOUT		0x008c
+#define LLIB_WAKEREQOUT		0x008e
+#define HSI1_ACREADY		0x0090
+#define HSI1_CAREADY		0x0092
+#define HSI1_ACWAKE		0x0094
+#define HSI1_CAWAKE		0x0096
+#define HSI1_ACFLAG		0x0098
+#define HSI1_ACDATA		0x009a
+#define HSI1_CAFLAG		0x009c
+#define HSI1_CADATA		0x009e
+#define UART1_TX		0x00a0
+#define UART1_CTS		0x00a2
+#define UART1_RX		0x00a4
+#define UART1_RTS		0x00a6
+#define HSI2_CAREADY		0x00a8
+#define HSI2_ACREADY		0x00aa
+#define HSI2_CAWAKE		0x00ac
+#define HSI2_ACWAKE		0x00ae
+#define HSI2_CAFLAG		0x00b0
+#define HSI2_CADATA		0x00b2
+#define HSI2_ACFLAG		0x00b4
+#define HSI2_ACDATA		0x00b6
+#define UART2_RTS		0x00b8
+#define UART2_CTS		0x00ba
+#define UART2_RX		0x00bc
+#define UART2_TX		0x00be
+#define USBB1_HSIC_STROBE	0x00c0
+#define USBB1_HSIC_DATA		0x00c2
+#define USBB2_HSIC_STROBE	0x00c4
+#define USBB2_HSIC_DATA		0x00c6
+#define TIMER10_PWM_EVT		0x00c8
+#define DSIPORTA_TE0		0x00ca
+#define DSIPORTA_LANE0X		0x00cc
+#define DSIPORTA_LANE0Y		0x00ce
+#define DSIPORTA_LANE1X		0x00d0
+#define DSIPORTA_LANE1Y		0x00d2
+#define DSIPORTA_LANE2X		0x00d4
+#define DSIPORTA_LANE2Y		0x00d6
+#define DSIPORTA_LANE3X		0x00d8
+#define DSIPORTA_LANE3Y		0x00da
+#define DSIPORTA_LANE4X		0x00dc
+#define DSIPORTA_LANE4Y		0x00de
+#define DSIPORTC_LANE0X		0x00e0
+#define DSIPORTC_LANE0Y		0x00e2
+#define DSIPORTC_LANE1X		0x00e4
+#define DSIPORTC_LANE1Y		0x00e6
+#define DSIPORTC_LANE2X		0x00e8
+#define DSIPORTC_LANE2Y		0x00ea
+#define DSIPORTC_LANE3X		0x00ec
+#define DSIPORTC_LANE3Y		0x00ee
+#define DSIPORTC_LANE4X		0x00f0
+#define DSIPORTC_LANE4Y		0x00f2
+#define DSIPORTC_TE0		0x00f4
+#define TIMER9_PWM_EVT		0x00f6
+#define I2C4_SCL		0x00f8
+#define I2C4_SDA		0x00fa
+#define MCSPI2_CLK		0x00fc
+#define MCSPI2_SIMO		0x00fe
+#define MCSPI2_SOMI		0x0100
+#define MCSPI2_CS0		0x0102
+#define RFBI_DATA15		0x0104
+#define RFBI_DATA14		0x0106
+#define RFBI_DATA13		0x0108
+#define RFBI_DATA12		0x010a
+#define RFBI_DATA11		0x010c
+#define RFBI_DATA10		0x010e
+#define RFBI_DATA9		0x0110
+#define RFBI_DATA8		0x0112
+#define RFBI_DATA7		0x0114
+#define RFBI_DATA6		0x0116
+#define RFBI_DATA5		0x0118
+#define RFBI_DATA4		0x011a
+#define RFBI_DATA3		0x011c
+#define RFBI_DATA2		0x011e
+#define RFBI_DATA1		0x0120
+#define RFBI_DATA0		0x0122
+#define RFBI_WE			0x0124
+#define RFBI_CS0		0x0126
+#define RFBI_A0			0x0128
+#define RFBI_RE			0x012a
+#define RFBI_HSYNC0		0x012c
+#define RFBI_TE_VSYNC0		0x012e
+#define GPIO6_182		0x0130
+#define GPIO6_183		0x0132
+#define GPIO6_184		0x0134
+#define GPIO6_185		0x0136
+#define GPIO6_186		0x0138
+#define GPIO6_187		0x013a
+#define HDMI_CEC		0x013c
+#define HDMI_HPD		0x013e
+#define HDMI_DDC_SCL		0x0140
+#define HDMI_DDC_SDA		0x0142
+#define CSIPORTC_LANE0X		0x0144
+#define CSIPORTC_LANE0Y		0x0146
+#define CSIPORTC_LANE1X		0x0148
+#define CSIPORTC_LANE1Y		0x014a
+#define CSIPORTB_LANE0X		0x014c
+#define CSIPORTB_LANE0Y		0x014e
+#define CSIPORTB_LANE1X		0x0150
+#define CSIPORTB_LANE1Y		0x0152
+#define CSIPORTB_LANE2X		0x0154
+#define CSIPORTB_LANE2Y		0x0156
+#define CSIPORTA_LANE0X		0x0158
+#define CSIPORTA_LANE0Y		0x015a
+#define CSIPORTA_LANE1X		0x015c
+#define CSIPORTA_LANE1Y		0x015e
+#define CSIPORTA_LANE2X		0x0160
+#define CSIPORTA_LANE2Y		0x0162
+#define CSIPORTA_LANE3X		0x0164
+#define CSIPORTA_LANE3Y		0x0166
+#define CSIPORTA_LANE4X		0x0168
+#define CSIPORTA_LANE4Y		0x016a
+#define CAM_SHUTTER		0x016c
+#define CAM_STROBE		0x016e
+#define CAM_GLOBALRESET		0x0170
+#define TIMER11_PWM_EVT		0x0172
+#define TIMER5_PWM_EVT		0x0174
+#define TIMER6_PWM_EVT		0x0176
+#define TIMER8_PWM_EVT		0x0178
+#define I2C3_SCL		0x017a
+#define I2C3_SDA		0x017c
+#define GPIO8_233		0x017e
+#define GPIO8_234		0x0180
+#define ABE_CLKS		0x0182
+#define ABEDMIC_DIN1		0x0184
+#define ABEDMIC_DIN2		0x0186
+#define ABEDMIC_DIN3		0x0188
+#define ABEDMIC_CLK1		0x018a
+#define ABEDMIC_CLK2		0x018c
+#define ABEDMIC_CLK3		0x018e
+#define ABESLIMBUS1_CLOCK	0x0190
+#define ABESLIMBUS1_DATA	0x0192
+#define ABEMCBSP2_DR		0x0194
+#define ABEMCBSP2_DX		0x0196
+#define ABEMCBSP2_FSX		0x0198
+#define ABEMCBSP2_CLKX		0x019a
+#define ABEMCPDM_UL_DATA	0x019c
+#define ABEMCPDM_DL_DATA	0x019e
+#define ABEMCPDM_FRAME		0x01a0
+#define ABEMCPDM_LB_CLK		0x01a2
+#define WLSDIO_CLK		0x01a4
+#define WLSDIO_CMD		0x01a6
+#define WLSDIO_DATA0		0x01a8
+#define WLSDIO_DATA1		0x01aa
+#define WLSDIO_DATA2		0x01ac
+#define WLSDIO_DATA3		0x01ae
+#define UART5_RX		0x01b0
+#define UART5_TX		0x01b2
+#define UART5_CTS		0x01b4
+#define UART5_RTS		0x01b6
+#define I2C2_SCL		0x01b8
+#define I2C2_SDA		0x01ba
+#define MCSPI1_CLK		0x01bc
+#define MCSPI1_SOMI		0x01be
+#define MCSPI1_SIMO		0x01c0
+#define MCSPI1_CS0		0x01c2
+#define MCSPI1_CS1		0x01c4
+#define I2C5_SCL		0x01c6
+#define I2C5_SDA		0x01c8
+#define PERSLIMBUS2_CLOCK	0x01ca /* GPIO5_145 in rev. 2 */
+#define PERSLIMBUS2_DATA	0x01cc /* GPIO5_146 in rev. 2 */
+#define UART6_TX		0x01ce
+#define UART6_RX		0x01d0
+#define UART6_CTS		0x01d2
+#define UART6_RTS		0x01d4
+#define UART3_CTS_RCTX		0x01d6
+#define UART3_RTS_IRSD		0x01d8
+#define UART3_TX_IRTX		0x01da
+#define UART3_RX_IRRX		0x01dc
+#define USBB3_HSIC_STROBE	0x01de
+#define USBB3_HSIC_DATA		0x01e0
+#define SDCARD_CLK		0x01e2
+#define SDCARD_CMD		0x01e4
+#define SDCARD_DATA2		0x01e6
+#define SDCARD_DATA3		0x01e8
+#define SDCARD_DATA0		0x01ea
+#define SDCARD_DATA1		0x01ec
+#define USBD0_HS_DP		0x01ee
+#define USBD0_HS_DM		0x01f0
+#define I2C1_PMIC_SCL		0x01f2
+#define I2C1_PMIC_SDA		0x01f4
+#define USBD0_SS_RX		0x01f6
+
+/* CTRL_MODULE_WKUP_PAD Registers */
+/* Base address is 0x4ae0c800 */
+#define WKUP_REVISION		0x0000
+#define WKUP_HWINFO		0x0004
+#define WKUP_SYSCONFIG		0x0010
+#define LLIA_WAKEREQIN		0x0040
+#define LLIB_WAKEREQIN		0x0042
+#define DRM_EMU0		0x0044
+#define DRM_EMU1		0x0046
+#define JTAG_NTRST		0x0048
+#define JTAG_TCK		0x004a
+#define JTAG_RTCK		0x004c
+#define JTAG_TMSC		0x004e
+#define JTAG_TDI		0x0050
+#define JTAG_TDO		0x0052
+#define SYS_32K			0x0054
+#define FREF_CLK_IOREQ		0x0056
+#define FREF_CLK0_OUT		0x0058
+#define FREF_CLK1_OUT		0x005a
+#define FREF_CLK2_OUT		0x005c
+#define FREF_CLK2_REQ		0x005e
+#define FREF_CLK1_REQ		0x0060
+#define SYS_NRESPWRON		0x0062
+#define SYS_NRESWARM		0x0064
+#define SYS_PWR_REQ		0x0066
+#define SYS_NIRQ1		0x0068
+#define SYS_NIRQ2		0x006a
+#define SR_PMIC_SCL		0x006c
+#define SR_PMIC_SDA		0x006e
+#define SYS_BOOT0		0x0070
+#define SYS_BOOT1		0x0072
+#define SYS_BOOT2		0x0074
+#define SYS_BOOT3		0x0076
+#define SYS_BOOT4		0x0078
+#define SYS_BOOT5		0x007a
+
+void omap5_do_set_mux(u32 base, struct pad_conf_entry const *array, int size);
+
+#endif /* _MUX_OMAP5_H_ */
diff --git a/arch/arm/mach-omap/include/mach/omap5-silicon.h b/arch/arm/mach-omap/include/mach/omap5-silicon.h
new file mode 100644
index 0000000..a0c7039
--- /dev/null
+++ b/arch/arm/mach-omap/include/mach/omap5-silicon.h
@@ -0,0 +1,244 @@
+/*
+ * (C) Copyright 2013
+ * Sam Solutions, <sam-solutions.com>
+ *
+ * Authors:
+ *	Uladzimir Bely <u.bely@sam-solutions.com>
+ *	Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>
+ *
+ * Derived from OMAP4 work by
+ *	Aneesh V <aneesh@ti.com>
+ */
+
+#ifndef _OMAP5_H_
+#define _OMAP5_H_
+
+#if !(defined(__KERNEL_STRICT_NAMES) || defined(__ASSEMBLY__))
+#include <asm/types.h>
+#endif /* !(__KERNEL_STRICT_NAMES || __ASSEMBLY__) */
+
+/* L4 Peripherals - L4 Wakeup and L4 Core now */
+#define OMAP54XX_L4_CFG_BASE				0x4A000000
+#define OMAP54XX_L4_WKUP_BASE				0x4Ae00000
+#define OMAP54XX_L4_PER_BASE				0x48000000
+
+/* EMIF and DMM registers */
+#define OMAP54XX_EMIF1_BASE				0x4c000000
+#define OMAP54XX_EMIF2_BASE				0x4d000000
+
+#define OMAP54XX_DRAM_ADDR_SPACE_START			0x80000000
+#define OMAP54XX_DRAM_ADDR_SPACE_END			0xff000000
+
+/* CONTROL */
+#define OMAP54XX_CTRL_BASE				(OMAP54XX_L4_CFG_BASE + 0x2000)
+#define OMAP54XX_CONTROL_PADCONF_CORE			(OMAP54XX_CTRL_BASE + 0x0800)
+#define OMAP54XX_CONTROL_PADCONF_WKUP			(OMAP54XX_L4_WKUP_BASE + 0xc800)
+
+/* PRM */
+#define OMAP54XX_PRM_VC_VAL_BYPASS			(OMAP54XX_L4_WKUP_BASE + 0x7ba0)
+#define OMAP54XX_PRM_VC_CFG_I2C_MODE			(OMAP54XX_L4_WKUP_BASE + 0x7bb4)
+#define OMAP54XX_PRM_VC_CFG_I2C_CLK			(OMAP54XX_L4_WKUP_BASE + 0x7bb8)
+#define OMAP54XX_PRM_VC_VAL_BYPASS_VALID_BIT		0x1000000
+#define OMAP54XX_PRM_VC_VAL_BYPASS_SLAVEADDR_SHIFT	0
+#define OMAP54XX_PRM_VC_VAL_BYPASS_SLAVEADDR_MASK	0x7F
+#define OMAP54XX_PRM_VC_VAL_BYPASS_REGADDR_SHIFT	8
+#define OMAP54XX_PRM_VC_VAL_BYPASS_REGADDR_MASK		0xFF
+#define OMAP54XX_PRM_VC_VAL_BYPASS_DATA_SHIFT		16
+#define OMAP54XX_PRM_VC_VAL_BYPASS_DATA_MASK		0xFF
+
+#define VDD_MPU						1150
+#define VDD_MM						1150
+#define VDD_CORE					1150
+
+#define SMPS_BASE_VOLT_UV				500000
+#define SMPS_I2C_SLAVE_ADDR				0x12
+#define SMPS_REG_ADDR_12_MPU				0x23
+#define SMPS_REG_ADDR_45_IVA				0x2B
+#define SMPS_REG_ADDR_8_CORE				0x37
+
+/* IRQ */
+#define OMAP54XX_PRM_IRQSTATUS_MPU			(OMAP54XX_L4_WKUP_BASE + 0x6010)
+
+/* UART */
+#define OMAP54XX_UART1_BASE				(OMAP54XX_L4_PER_BASE + 0x6a000)
+#define OMAP54XX_UART2_BASE				(OMAP54XX_L4_PER_BASE + 0x6c000)
+#define OMAP54XX_UART3_BASE				(OMAP54XX_L4_PER_BASE + 0x20000)
+
+/* I2C */
+#define OMAP54XX_I2C1_BASE				(OMAP54XX_L4_PER_BASE + 0x070000)
+#define OMAP54XX_I2C2_BASE				(OMAP54XX_L4_PER_BASE + 0x072000)
+#define OMAP54XX_I2C3_BASE				(OMAP54XX_L4_PER_BASE + 0x060000)
+
+/* General Purpose Timers */
+#define OMAP54XX_GPT1_BASE				(OMAP54XX_L4_WKUP_BASE + 0x18000)
+#define OMAP54XX_GPT2_BASE				(OMAP54XX_L4_PER_BASE  + 0x32000)
+#define OMAP54XX_GPT3_BASE				(OMAP54XX_L4_PER_BASE  + 0x34000)
+
+/* Watchdog Timer2 - MPU watchdog */
+#define OMAP54XX_WDT2_BASE				(OMAP54XX_L4_WKUP_BASE + 0x14000)
+
+#define OMAP54XX_SCRM_BASE				(OMAP54XX_L4_WKUP_BASE + 0xa000)
+#define OMAP54XX_SCRM_AUXCLK1				(OMAP54XX_SCRM_BASE + 0x314)
+#define OMAP54XX_SCRM_AUXCLK3				(OMAP54XX_SCRM_BASE + 0x31c)
+
+/* 32KTIMER */
+#define OMAP54XX_32KTIMER_BASE				(OMAP54XX_L4_WKUP_BASE + 0x4000)
+
+/* MMC */
+#define OMAP54XX_MMC1_BASE				(OMAP54XX_L4_PER_BASE + 0x09C000)
+#define OMAP54XX_MMC2_BASE				(OMAP54XX_L4_PER_BASE + 0x0B4000)
+#define OMAP54XX_MMC3_BASE				(OMAP54XX_L4_PER_BASE + 0x0ad000)
+#define OMAP54XX_MMC4_BASE				(OMAP54XX_L4_PER_BASE + 0x0d1000)
+#define OMAP54XX_MMC5_BASE				(OMAP54XX_L4_PER_BASE + 0x0d5000)
+
+/* GPIO */
+#define OMAP54XX_GPIO1_BASE				(OMAP54XX_L4_WKUP_BASE + 0x10000)
+#define OMAP54XX_GPIO2_BASE				(OMAP54XX_L4_PER_BASE  + 0x55000)
+#define OMAP54XX_GPIO3_BASE				(OMAP54XX_L4_PER_BASE  + 0x57000)
+#define OMAP54XX_GPIO4_BASE				(OMAP54XX_L4_PER_BASE  + 0x59000)
+#define OMAP54XX_GPIO5_BASE				(OMAP54XX_L4_PER_BASE  + 0x5b000)
+#define OMAP54XX_GPIO6_BASE				(OMAP54XX_L4_PER_BASE  + 0x5d000)
+
+/* GPMC */
+#define OMAP54XX_GPMC_BASE				0x50000000
+
+/* DMM */
+#define OMAP54XX_DMM_BASE				0x4e000000
+
+/* Memory Adapter */
+#define OMAP54XX_MA_BASE				0x482AF000
+
+/*
+ * Hardware Register Details
+ */
+
+/* Watchdog Timer */
+#define WD_UNLOCK1					0xAAAA
+#define WD_UNLOCK2					0x5555
+
+/* GP Timer */
+#define TCLR_ST						(0x1 << 0)
+#define TCLR_AR						(0x1 << 1)
+#define TCLR_PRE					(0x1 << 5)
+
+/* PRM */
+#define PRM_BASE					0x4AE06000
+#define PRM_DEVICE_BASE					(PRM_BASE + 0x1B00)
+
+#define PRM_RSTCTRL					PRM_DEVICE_BASE
+#define PRM_RSTCTRL_RESET				0x01
+
+#ifndef __ASSEMBLY__
+
+struct s32ktimer {
+	unsigned char res[0x10];
+	unsigned int s32k_cr;
+};
+
+#endif /* __ASSEMBLY__ */
+
+/*
+ * Non-secure SRAM Addresses
+ * Non-secure RAM starts at 0x40300000 for GP devices. But we keep SRAM_BASE
+ * at 0x40304000(EMU base) so that our code works for both EMU and GP
+ */
+#define NON_SECURE_SRAM_START				0x40304000
+#define NON_SECURE_SRAM_END				0x4030E000 /* Not inclusive */
+/* base address for indirect vectors (internal boot mode) */
+#define SRAM_ROM_VECT_BASE				0x4030D000
+
+/* OMAP5 silicon revisions */
+#define OMAP543X_SILICON_ID_INVALID			0
+#define OMAP5430_ES1_0					0x54300100
+#define OMAP5430_ES2_0					0x54300200
+#define OMAP5432_ES1_0					0x54320100
+#define OMAP5432_ES2_0					0x54320200
+
+struct omap5_ddr_regs {
+	u32 freq;
+	u32 sdram_config_init;
+	u32 sdram_config;
+	u32 ref_ctrl;
+	u32 sdram_tim1;
+	u32 sdram_tim2;
+	u32 sdram_tim3;
+	u32 read_idle_ctrl;
+	u32 zq_config;
+	u32 temp_alert_config;
+	u32 emif_ddr_phy_ctlr_1_init;
+	u32 emif_ddr_phy_ctlr_1;
+	u32 emif_ddr_phy_ctlr_2;
+	u32 emif_ddr_ext_phy_ctrl_1_init;
+	u32 emif_ddr_ext_phy_ctrl_1;
+	u32 emif_ddr_ext_phy_ctrl_2_init;
+	u32 emif_ddr_ext_phy_ctrl_2;
+	u32 emif_ddr_ext_phy_ctrl_3_init;
+	u32 emif_ddr_ext_phy_ctrl_3;
+	u32 emif_ddr_ext_phy_ctrl_4_init;
+	u32 emif_ddr_ext_phy_ctrl_4;
+	u32 emif_ddr_ext_phy_ctrl_5_init;
+	u32 emif_ddr_ext_phy_ctrl_5;
+	u32 emif_ddr_ext_phy_ctrl_6_init;
+	u32 emif_ddr_ext_phy_ctrl_6;
+	u32 emif_ddr_ext_phy_ctrl_7_init;
+	u32 emif_ddr_ext_phy_ctrl_7;
+	u32 emif_ddr_ext_phy_ctrl_8_init;
+	u32 emif_ddr_ext_phy_ctrl_8;
+	u32 emif_ddr_ext_phy_ctrl_9_init;
+	u32 emif_ddr_ext_phy_ctrl_9;
+	u32 emif_ddr_ext_phy_ctrl_10_init;
+	u32 emif_ddr_ext_phy_ctrl_10;
+	u32 emif_ddr_ext_phy_ctrl_11_init;
+	u32 emif_ddr_ext_phy_ctrl_11;
+	u32 emif_ddr_ext_phy_ctrl_12_init;
+	u32 emif_ddr_ext_phy_ctrl_12;
+	u32 emif_ddr_ext_phy_ctrl_13_init;
+	u32 emif_ddr_ext_phy_ctrl_13;
+	u32 emif_ddr_ext_phy_ctrl_14_init;
+	u32 emif_ddr_ext_phy_ctrl_14;
+	u32 emif_ddr_ext_phy_ctrl_15_init;
+	u32 emif_ddr_ext_phy_ctrl_15;
+	u32 emif_ddr_ext_phy_ctrl_16_init;
+	u32 emif_ddr_ext_phy_ctrl_16;
+	u32 emif_ddr_ext_phy_ctrl_17_init;
+	u32 emif_ddr_ext_phy_ctrl_17;
+	u32 emif_ddr_ext_phy_ctrl_18_init;
+	u32 emif_ddr_ext_phy_ctrl_18;
+	u32 emif_ddr_ext_phy_ctrl_19_init;
+	u32 emif_ddr_ext_phy_ctrl_19;
+	u32 emif_ddr_ext_phy_ctrl_20_init;
+	u32 emif_ddr_ext_phy_ctrl_20;
+	u32 emif_ddr_ext_phy_ctrl_21_init;
+	u32 emif_ddr_ext_phy_ctrl_21;
+	u32 emif_ddr_ext_phy_ctrl_22_init;
+	u32 emif_ddr_ext_phy_ctrl_22;
+	u32 emif_ddr_ext_phy_ctrl_23_init;
+	u32 emif_ddr_ext_phy_ctrl_23;
+	u32 emif_ddr_ext_phy_ctrl_24_init;
+	u32 emif_ddr_ext_phy_ctrl_24;
+	u32 emif_ddr_ext_phy_ctrl_25_init;
+	u32 emif_ddr_ext_phy_ctrl_25;
+	u32 emif_ddr_ext_phy_ctrl_26_init;
+	u32 emif_ddr_ext_phy_ctrl_26;
+	u32 emif_ddr_ext_phy_ctrl_27_init;
+	u32 emif_ddr_ext_phy_ctrl_27;
+	u32 emif_ddr_ext_phy_ctrl_28_init;
+	u32 emif_ddr_ext_phy_ctrl_28;
+	u32 emif_ddr_ext_phy_ctrl_29_init;
+	u32 emif_ddr_ext_phy_ctrl_29;
+	u32 emif_ddr_ext_phy_ctrl_30_init;
+	u32 emif_ddr_ext_phy_ctrl_30;
+	u32 emif_rd_wr_lvl_rmp_win;
+	u32 emif_rd_wr_lvl_rmp_ctl;
+	u32 emif_rd_wr_lvl_ctl;
+	u32 emif_rd_wr_exec_thresh;
+};
+
+struct dpll_param;
+
+void omap5_ddr_init(const struct omap5_ddr_regs *ddr_regs, const struct dpll_param *);
+void omap5_power_i2c_send(u32);
+unsigned int omap5_revision(void);
+void omap5_scale_vcores(void);
+
+#endif /* _OMAP5_H_ */
diff --git a/arch/arm/mach-omap/omap5_clock.c b/arch/arm/mach-omap/omap5_clock.c
new file mode 100644
index 0000000..9399e12
--- /dev/null
+++ b/arch/arm/mach-omap/omap5_clock.c
@@ -0,0 +1,385 @@
+/*
+ * (C) Copyright 2013
+ * Sam Solutions, <sam-solutions.com>
+ *
+ * Authors:
+ *	Uladzimir Bely <u.bely@sam-solutions.com>
+ *	Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>
+ *
+ * Derived from OMAP4 work
+ */
+
+#include <common.h>
+#include <io.h>
+#include <mach/syslib.h>
+#include <mach/clocks.h>
+#include <mach/omap5-silicon.h>
+#include <mach/omap5-clock.h>
+
+#define LDELAY	12000000
+
+#define PM_DSS_PWRSTCTRL 0x4AE07400
+
+void omap5_configure_mpu_dpll(const struct dpll_param *dpll_param)
+{
+	/* Unlock the MPU dpll */
+	sr32(CM_CLKMODE_DPLL_MPU, 0, 3, PLL_FAST_RELOCK_BYPASS);
+	wait_on_value((1 << 0), 0, CM_IDLEST_DPLL_MPU, LDELAY);
+
+	/* Disable DPLL auto control */
+	sr32(CM_AUTOIDLE_DPLL_MPU, 0, 3, 0x0);
+
+	/* Set M,N,M2 values */
+	sr32(CM_CLKSEL_DPLL_MPU, 8, 11, dpll_param->m);
+	sr32(CM_CLKSEL_DPLL_MPU, 0, 7, dpll_param->n);
+	sr32(CM_DIV_M2_DPLL_MPU, 0, 5, dpll_param->m2);
+
+	/* Lock the MPU dpll */
+	sr32(CM_CLKMODE_DPLL_MPU, 0, 3, PLL_LOCK);
+	wait_on_value((1 << 0), 1, CM_IDLEST_DPLL_MPU, LDELAY);
+
+	return;
+}
+
+void omap5_configure_iva_dpll(const struct dpll_param *dpll_param)
+{
+	/* Unlock the IVA dpll */
+	sr32(CM_CLKMODE_DPLL_IVA, 0, 3, PLL_FAST_RELOCK_BYPASS);
+	wait_on_value((1 << 0), 0, CM_IDLEST_DPLL_IVA, LDELAY);
+
+	/* CM_BYPCLK_DPLL_IVA = CORE_X2_CLK/2 */
+	sr32(CM_BYPCLK_DPLL_IVA, 0, 2, 0x1);
+
+	/* Disable DPLL auto control */
+	sr32(CM_AUTOIDLE_DPLL_IVA, 0, 3, 0x0);
+
+	/* Set M,N,H11,H12 */
+	sr32(CM_CLKSEL_DPLL_IVA, 8, 11, dpll_param->m);
+	sr32(CM_CLKSEL_DPLL_IVA, 0, 7, dpll_param->n);
+	sr32(CM_DIV_H11_DPLL_IVA, 0, 5, dpll_param->h11);
+	sr32(CM_DIV_H12_DPLL_IVA, 0, 5, dpll_param->h12);
+
+	/* Lock the IVA dpll */
+	sr32(CM_CLKMODE_DPLL_IVA, 0, 3, PLL_LOCK);
+	wait_on_value((1 << 0), 1, CM_IDLEST_DPLL_IVA, LDELAY);
+
+	return;
+}
+
+void omap5_configure_core_dpll_no_lock(const struct dpll_param *dpll_param)
+{
+	/* CORE_CLK=CORE_X2_CLK/2, L3_CLK=CORE_CLK/2, L4_CLK=L3_CLK/2 */
+	sr32(CM_CLKSEL_CORE, 0, 32, 0x110);
+
+	/* Unlock the CORE dpll */
+	sr32(CM_CLKMODE_DPLL_CORE, 0, 3, PLL_FAST_RELOCK_BYPASS);
+	wait_on_value((1 << 0), 0, CM_IDLEST_DPLL_CORE, LDELAY);
+
+	/* Disable DPLL auto control */
+	sr32(CM_AUTOIDLE_DPLL_CORE, 0, 3, 0x0);
+
+	/* Set M,N,M2, M3, H11, H12, H13, H14, H22, H23 */
+	sr32(CM_CLKSEL_DPLL_CORE, 8, 11, dpll_param->m);
+	sr32(CM_CLKSEL_DPLL_CORE, 0, 7, dpll_param->n);
+	sr32(CM_DIV_M2_DPLL_CORE, 0, 5, dpll_param->m2);
+	sr32(CM_DIV_M3_DPLL_CORE, 0, 5, dpll_param->m3);
+	sr32(CM_DIV_H11_DPLL_CORE, 0, 5, dpll_param->h11);
+	sr32(CM_DIV_H12_DPLL_CORE, 0, 5, dpll_param->h12);
+	sr32(CM_DIV_H13_DPLL_CORE, 0, 5, dpll_param->h13);
+	sr32(CM_DIV_H14_DPLL_CORE, 0, 5, dpll_param->h14);
+	sr32(CM_DIV_H22_DPLL_CORE, 0, 5, dpll_param->h22);
+	sr32(CM_DIV_H23_DPLL_CORE, 0, 5, dpll_param->h23);
+
+	return;
+}
+
+void omap5_configure_per_dpll(const struct dpll_param *dpll_param)
+{
+	/* Unlock the PER dpll */
+	sr32(CM_CLKMODE_DPLL_PER, 0, 3, PLL_FAST_RELOCK_BYPASS);
+	wait_on_value((1 << 0), 0, CM_IDLEST_DPLL_PER, LDELAY);
+
+	/* Disable DPLL auto control */
+	sr32(CM_AUTOIDLE_DPLL_PER, 0, 3, 0x0);
+
+	/* Set M,N,M2, M3, H11, H12, H14 */
+	sr32(CM_CLKSEL_DPLL_PER, 8, 11, dpll_param->m);
+	sr32(CM_CLKSEL_DPLL_PER, 0, 7, dpll_param->n);
+	sr32(CM_DIV_M2_DPLL_PER, 0, 5, dpll_param->m2);
+	sr32(CM_DIV_M3_DPLL_PER, 0, 5, dpll_param->m3);
+	sr32(CM_DIV_H11_DPLL_PER, 0, 5, dpll_param->h11);
+	sr32(CM_DIV_H12_DPLL_PER, 0, 5, dpll_param->h12);
+	sr32(CM_DIV_H14_DPLL_PER, 0, 5, dpll_param->h14);
+
+	/* Lock the per dpll */
+	sr32(CM_CLKMODE_DPLL_PER, 0, 3, PLL_LOCK);
+	wait_on_value((1 << 0), 1, CM_IDLEST_DPLL_PER, LDELAY);
+
+	return;
+}
+
+void omap5_configure_abe_dpll(const struct dpll_param *dpll_param)
+{
+	/* Some options to achieve 196.608MHz from 32768 Hz */
+	sr32(CM_CLKMODE_DPLL_ABE, 8, 1, 1);  /* DPLL_DRIFTGUARD_EN_MASK */
+	sr32(CM_CLKMODE_DPLL_ABE, 9, 1, 1);  /* DPLL_RELOCK_RAMP_EN_MASK */
+	sr32(CM_CLKMODE_DPLL_ABE, 10, 1, 1); /* DPLL_LPMODE_EN_MASK */
+	sr32(CM_CLKMODE_DPLL_ABE, 11, 1, 1); /* DPLL_REGM4XEN_MASK */
+
+	/* Spend 4 REFCLK cycles at each stage */
+	sr32(CM_CLKMODE_DPLL_ABE, 5, 3, 7);
+
+	/* Select SYS_32K as ref clk for ABE dpll */
+	sr32(CM_CLKSEL_ABE_PLL_REF, 0, 1, 1);
+
+	/* Unlock the ABE dpll */
+	sr32(CM_CLKMODE_DPLL_ABE, 0, 3, PLL_LOW_POWER_BYPASS);
+	wait_on_value((1 << 0), 0, CM_IDLEST_DPLL_ABE, LDELAY);
+
+	/* Disable DPLL auto control */
+	sr32(CM_AUTOIDLE_DPLL_ABE, 0, 3, 0x0);
+
+	/* Set M,N,M2, M3 */
+	sr32(CM_CLKSEL_DPLL_ABE, 8, 11, dpll_param->m);
+	sr32(CM_CLKSEL_DPLL_ABE, 0, 7, dpll_param->n);
+	sr32(CM_DIV_M2_DPLL_ABE, 0, 5, dpll_param->m2);
+	sr32(CM_DIV_M3_DPLL_ABE, 0, 5, dpll_param->m3);
+
+	/* Lock the abe dpll */
+	sr32(CM_CLKMODE_DPLL_ABE, 0, 3, PLL_LOCK);
+	wait_on_value((1 << 0), 1, CM_IDLEST_DPLL_ABE, LDELAY);
+
+	return;
+}
+
+void omap5_configure_usb_dpll(const struct dpll_param *dpll_param)
+{
+	/* Select the 60Mhz clock 480/8 = 60*/
+	sr32(CM_CLKSEL_USB_60MHZ, 0, 32, 0x1);
+
+	/* Unlock the USB dpll */
+	sr32(CM_CLKMODE_DPLL_USB, 0, 3, PLL_FAST_RELOCK_BYPASS);
+	wait_on_value((1 << 0), 0, CM_IDLEST_DPLL_USB, LDELAY);
+
+	/* Disable auto control */
+	sr32(CM_AUTOIDLE_DPLL_USB, 0, 3, 0x0);
+
+	/* Set M,N,M2 */
+	sr32(CM_CLKSEL_DPLL_USB, 8, 12, dpll_param->m);
+	sr32(CM_CLKSEL_DPLL_USB, 0, 8, dpll_param->n);
+	sr32(CM_DIV_M2_DPLL_USB, 0, 7, dpll_param->m2);
+	sr32(CM_DIV_M2_DPLL_USB, 9, 1, 0x1);
+
+	/* Lock the usb dpll */
+	sr32(CM_CLKMODE_DPLL_USB, 0, 3, PLL_LOCK);
+	wait_on_value((1 << 0), 1, CM_IDLEST_DPLL_USB, LDELAY);
+
+	return;
+}
+
+void omap5_lock_core_dpll(void)
+{
+	/* Lock the core dpll */
+	sr32(CM_CLKMODE_DPLL_CORE, 0, 3, PLL_LOCK);
+	wait_on_value((1 << 0), 1, CM_IDLEST_DPLL_CORE, LDELAY);
+
+	return;
+}
+
+void omap5_lock_core_dpll_shadow(const struct dpll_param *param)
+{
+	/* Lock the core dpll using freq update method */
+	*(volatile int*)CM_CLKMODE_DPLL_CORE = PLL_LOCK;
+
+	/* CM_SHADOW_FREQ_CONFIG1: DLL_OVERRIDE = 1(hack), DLL_RESET = 1,
+	 * DPLL_CORE_M2_DIV = 1, DPLL_CORE_DPLL_EN = 0x7, FREQ_UPDATE = 1
+	 */
+	*(volatile int*)CM_SHADOW_FREQ_CONFIG1 = 0x70D | (param->m2 << 11);
+
+	/* Wait for Freq_Update to get cleared: CM_SHADOW_FREQ_CONFIG1 */
+	while(((*(volatile int*)CM_SHADOW_FREQ_CONFIG1) & 0x1) == 0x1);
+
+	/* Wait for DPLL to Lock : CM_IDLEST_DPLL_CORE */
+	wait_on_value((1 << 0), 1, CM_IDLEST_DPLL_CORE, LDELAY);
+}
+
+void omap5_enable_all_clocks(void)
+{
+	unsigned int rev = omap5_revision();
+	u32 wkup_base = CM_WKUPAON_CLKCTRL_REV1;
+	u32 l4per_base = CM_L4PER_CLKSTCTRL_REV1;
+	u32 l3init_base = CM_L3INIT_CLKSTCTRL_REV1;
+	u32 cam_base = CM_CAM_CLKSTCTRL_REV1;
+	u32 dss_base = CM_DSS_CLKSTCTRL_REV1;
+	u32 gpu_base = CM_GPU_CLKSTCTRL_REV1;
+
+	if (rev == OMAP5430_ES2_0 || rev == OMAP5432_ES2_0) {
+		wkup_base = CM_WKUPAON_CLKCTRL_REV2;
+		l4per_base = CM_L4PER_CLKSTCTRL_REV2;
+		l3init_base = CM_L3INIT_CLKSTCTRL_REV2;
+		cam_base = CM_CAM_CLKSTCTRL_REV2;
+		dss_base = CM_DSS_CLKSTCTRL_REV2;
+		gpu_base = CM_GPU_CLKSTCTRL_REV2;
+	}
+
+	/* Enable DSP clocks */
+	sr32(CM_DSP_DSP_CLKCTRL, 0, 32, 0x1);
+	sr32(CM_DSP_CLKSTCTRL, 0, 32, 0x2);
+
+	wait_on_value((1 << 8), 0, CM_DSP_CLKSTCTRL, LDELAY);
+
+	/* ABE clocks */
+	sr32(CM_ABE_CLKSTCTRL, 0, 32, 0x3);
+	sr32(CM_ABE_AESS_CLKCTRL, 0, 32, 0x2);
+	sr32(CM_ABE_MCPDM_CLKCTRL, 0, 32, 0x2);
+	sr32(CM_ABE_DMIC_CLKCTRL, 0, 32, 0x2);
+	sr32(CM_ABE_MCASP_CLKCTRL, 0, 32, 0x2);
+	sr32(CM_ABE_MCBSP1_CLKCTRL, 0, 32, 0x08000002);
+	sr32(CM_ABE_MCBSP2_CLKCTRL, 0, 32, 0x08000002);
+	sr32(CM_ABE_MCBSP3_CLKCTRL, 0, 32, 0x08000002);
+	sr32(CM_ABE_SLIMBUS1_CLKCTRL, 0, 32, 0x0f02);
+	sr32(CM_ABE_TIMER5_CLKCTRL, 0, 32, 0x2);
+	sr32(CM_ABE_TIMER6_CLKCTRL, 0, 32, 0x2);
+	sr32(CM_ABE_TIMER7_CLKCTRL, 0, 32, 0x2);
+	sr32(CM_ABE_TIMER8_CLKCTRL, 0, 32, 0x2);
+	sr32(CM_ABE_WD_TIMER3_CLKCTRL, 0, 32, 0x2);
+	/* Disable sleep transitions */
+	sr32(CM_ABE_CLKSTCTRL, 0, 32, 0x0);
+
+	/* L4PER clocks */
+	sr32(l4per_base, 0, 32, 0x2);
+	sr32(l4per_base + CM_L4PER_TIMER10_CLKCTRL_OFT, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, l4per_base + CM_L4PER_TIMER10_CLKCTRL_OFT, LDELAY);
+	sr32(l4per_base + CM_L4PER_TIMER11_CLKCTRL_OFT, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, l4per_base + CM_L4PER_TIMER11_CLKCTRL_OFT, LDELAY);
+	sr32(l4per_base + CM_L4PER_TIMER2_CLKCTRL_OFT, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, l4per_base + CM_L4PER_TIMER2_CLKCTRL_OFT, LDELAY);
+	sr32(l4per_base + CM_L4PER_TIMER3_CLKCTRL_OFT, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, l4per_base + CM_L4PER_TIMER3_CLKCTRL_OFT, LDELAY);
+	sr32(l4per_base + CM_L4PER_TIMER4_CLKCTRL_OFT, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, l4per_base + CM_L4PER_TIMER4_CLKCTRL_OFT, LDELAY);
+	sr32(l4per_base + CM_L4PER_TIMER9_CLKCTRL_OFT, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, l4per_base + CM_L4PER_TIMER9_CLKCTRL_OFT, LDELAY);
+
+	/* GPIO clocks */
+	sr32(l4per_base + CM_L4PER_GPIO2_CLKCTRL_OFT, 0, 32, 0x1);
+	wait_on_value((1 << 17)|(1 << 16), 0, l4per_base + CM_L4PER_GPIO2_CLKCTRL_OFT, LDELAY);
+	sr32(l4per_base + CM_L4PER_GPIO3_CLKCTRL_OFT, 0, 32, 0x1);
+	wait_on_value((1 << 17)|(1 << 16), 0, l4per_base + CM_L4PER_GPIO3_CLKCTRL_OFT, LDELAY);
+	sr32(l4per_base + CM_L4PER_GPIO4_CLKCTRL_OFT, 0, 32, 0x1);
+	wait_on_value((1 << 17)|(1 << 16), 0, l4per_base + CM_L4PER_GPIO4_CLKCTRL_OFT, LDELAY);
+	sr32(l4per_base + CM_L4PER_GPIO5_CLKCTRL_OFT, 0, 32, 0x1);
+	wait_on_value((1 << 17)|(1 << 16), 0, l4per_base + CM_L4PER_GPIO5_CLKCTRL_OFT, LDELAY);
+	sr32(l4per_base + CM_L4PER_GPIO6_CLKCTRL_OFT, 0, 32, 0x1);
+	wait_on_value((1 << 17)|(1 << 16), 0, l4per_base + CM_L4PER_GPIO6_CLKCTRL_OFT, LDELAY);
+
+	sr32(l4per_base + CM_L4PER_HDQ1W_CLKCTRL_OFT, 0, 32, 0x1);
+
+	/* I2C clocks */
+	sr32(l4per_base + CM_L4PER_I2C1_CLKCTRL_OFT, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, l4per_base + CM_L4PER_I2C1_CLKCTRL_OFT, LDELAY);
+	sr32(l4per_base + CM_L4PER_I2C2_CLKCTRL_OFT, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, l4per_base + CM_L4PER_I2C2_CLKCTRL_OFT, LDELAY);
+	sr32(l4per_base + CM_L4PER_I2C3_CLKCTRL_OFT, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, l4per_base + CM_L4PER_I2C3_CLKCTRL_OFT, LDELAY);
+	sr32(l4per_base + CM_L4PER_I2C4_CLKCTRL_OFT, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, l4per_base + CM_L4PER_I2C4_CLKCTRL_OFT, LDELAY);
+
+	/* MCSPI clocks */
+	sr32(l4per_base + CM_L4PER_MCSPI1_CLKCTRL_OFT, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, l4per_base + CM_L4PER_MCSPI1_CLKCTRL_OFT, LDELAY);
+	sr32(l4per_base + CM_L4PER_MCSPI2_CLKCTRL_OFT, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, l4per_base + CM_L4PER_MCSPI2_CLKCTRL_OFT, LDELAY);
+	sr32(l4per_base + CM_L4PER_MCSPI3_CLKCTRL_OFT, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, l4per_base + CM_L4PER_MCSPI3_CLKCTRL_OFT, LDELAY);
+	sr32(l4per_base + CM_L4PER_MCSPI4_CLKCTRL_OFT, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, l4per_base + CM_L4PER_MCSPI4_CLKCTRL_OFT, LDELAY);
+
+	/* MMC3-5 clocks */
+	sr32(l4per_base + CM_L4PER_MMC3_CLKCTRL_OFT, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, l4per_base + CM_L4PER_MMC3_CLKCTRL_OFT, LDELAY);
+	sr32(l4per_base + CM_L4PER_MMC4_CLKCTRL_OFT, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, l4per_base + CM_L4PER_MMC4_CLKCTRL_OFT, LDELAY);
+	sr32(l4per_base + CM_L4PER_MMC5_CLKCTRL_OFT, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, l4per_base + CM_L4PER_MMC5_CLKCTRL_OFT, LDELAY);
+
+	/* UART clocks */
+	sr32(l4per_base + CM_L4PER_UART1_CLKCTRL_OFT, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, l4per_base + CM_L4PER_UART1_CLKCTRL_OFT, LDELAY);
+	sr32(l4per_base + CM_L4PER_UART2_CLKCTRL_OFT, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, l4per_base + CM_L4PER_UART2_CLKCTRL_OFT, LDELAY);
+	sr32(l4per_base + CM_L4PER_UART3_CLKCTRL_OFT, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, l4per_base + CM_L4PER_UART3_CLKCTRL_OFT, LDELAY);
+	sr32(l4per_base + CM_L4PER_UART4_CLKCTRL_OFT, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, l4per_base + CM_L4PER_UART4_CLKCTRL_OFT, LDELAY);
+
+	/* MMC1-2 clocks */
+	sr32(l3init_base + CM_L3INIT_MMC1_CLKCTRL_OFT, 0, 2, 0x2);
+	sr32(l3init_base + CM_L3INIT_MMC1_CLKCTRL_OFT, 24, 1, 0x1);
+	sr32(l3init_base + CM_L3INIT_MMC1_CLKCTRL_OFT, 25, 1, 0x0);
+	sr32(l3init_base + CM_L3INIT_MMC2_CLKCTRL_OFT, 0, 2, 0x2);
+	sr32(l3init_base + CM_L3INIT_MMC2_CLKCTRL_OFT, 24, 1, 0x1);
+	sr32(l3init_base + CM_L3INIT_MMC2_CLKCTRL_OFT, 25, 1, 0x0);
+
+	/* WKUP clocks */
+	sr32(wkup_base + CM_WKUPAON_GPIO1_CLKCTRL_OFT, 0, 32, 0x1);
+	wait_on_value((1 << 17)|(1 << 16), 0, wkup_base + CM_WKUPAON_GPIO1_CLKCTRL_OFT, LDELAY);
+	sr32(wkup_base + CM_WKUPAON_TIMER1_CLKCTRL_OFT, 0, 32, 0x01000002);
+	wait_on_value((1 << 17)|(1 << 16), 0, wkup_base + CM_WKUPAON_TIMER1_CLKCTRL_OFT, LDELAY);
+	sr32(wkup_base + CM_WKUPAON_KBD_CLKCTRL_OFT, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, wkup_base + CM_WKUPAON_KBD_CLKCTRL_OFT, LDELAY);
+
+	sr32(CM_DMA_CLKSTCTRL, 0, 32, 0x0);
+	sr32(CM_EMIF_CLKSTCTRL, 0, 32, 0x3);
+	sr32(CM_EMIF_EMIF1_CLKCTRL, 0, 32, 0x1);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_EMIF_EMIF1_CLKCTRL, LDELAY);
+	sr32(CM_EMIF_EMIF2_CLKCTRL, 0, 32, 0x1);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_EMIF_EMIF2_CLKCTRL, LDELAY);
+	sr32(CM_C2C_CLKSTCTRL, 0, 32, 0x3);
+	sr32(CM_L3MAIN2_GPMC_CLKCTRL, 0, 32, 0x1);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_L3MAIN2_GPMC_CLKCTRL, LDELAY);
+	sr32(CM_L3INSTR_L3_MAIN_3_CLKCTRL, 0, 32, 0x1);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_L3INSTR_L3_MAIN_3_CLKCTRL, LDELAY);
+	sr32(CM_L3INSTR_L3_INSTR_CLKCTRL, 0, 32, 0x1);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_L3INSTR_L3_INSTR_CLKCTRL, LDELAY);
+	sr32(CM_L3INSTR_OCP_WP_NOC_CLKCTRL, 0, 32, 0x1);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_L3INSTR_OCP_WP_NOC_CLKCTRL, LDELAY);
+
+	/* WDT clocks */
+	sr32(wkup_base + CM_WKUPAON_WD_TIMER2_CLKCTRL_OFT, 0, 32, 0x2);
+	wait_on_value((1 << 17)|(1 << 16), 0, wkup_base + CM_WKUPAON_WD_TIMER2_CLKCTRL_OFT, LDELAY);
+
+	/* Enable Camera clocks */
+	sr32(cam_base, 0, 32, 0x3);
+	sr32(cam_base + CM_CAM_ISS_CLKCTRL_OFT, 0, 32, 0x102);
+	sr32(cam_base + CM_CAM_FDIF_CLKCTRL_OFT, 0, 32, 0x2);
+	sr32(cam_base, 0, 32, 0x0);
+
+	/* Enable DSS clocks */
+	/* PM_DSS_PWRSTCTRL ON State and LogicState = 1 (Retention) */
+	__raw_writel(7, PM_DSS_PWRSTCTRL); /* DSS_PRM */
+
+	sr32(dss_base, 0, 32, 0x2);
+	sr32(dss_base + CM_DSS_DSS_CLKCTRL_OFT, 0, 32, 0xf02);
+
+	/* Check for DSS Clocks */
+	while ((__raw_readl(dss_base) & 0xF00) != 0xE00)
+	;
+	/* Set HW_AUTO transition mode */
+	sr32(dss_base, 0, 32, 0x3);
+
+	/* Enable GPU clocks */
+	sr32(gpu_base, 0, 32, 0x2);
+	sr32(gpu_base + CM_GPU_GPU_CLKCTRL_OFT, 0, 32, 0x2);
+
+	/* Enable hsi/unipro/usb/sata clocks */
+	sr32(l3init_base + CM_L3INIT_HSI_CLKCTRL_OFT, 0, 32, 0x1);
+	sr32(l3init_base + CM_L3INIT_UNIPRO2_CLKCTRL_OFT, 0, 32, 0x2);
+	sr32(l3init_base + CM_L3INIT_USB_HOST_HS_CLKCTRL_OFT, 0, 32, 0x2);
+	sr32(l3init_base + CM_L3INIT_USB_TLL_HS_CLKCTRL_OFT, 0, 32, 0x1);
+	sr32(l3init_base + CM_L3INIT_IEEE1500_2_OCP_CLKCTRL_OFT, 0, 32, 0x2);
+	sr32(l3init_base + CM_L3INIT_SATA_CLKCTRL_OFT, 0, 32, 0x2);
+	sr32(l3init_base + CM_L3INIT_OCP2SCP1_CLKCTRL_OFT, 0, 32, 0x1);
+	sr32(l3init_base + CM_L3INIT_OCP2SCP3_CLKCTRL_OFT, 0, 32, 0x1);
+	sr32(l3init_base + CM_L3INIT_USB_OTG_SS_CLKCTRL_OFT, 0, 32, 0x1);
+}
diff --git a/arch/arm/mach-omap/omap5_generic.c b/arch/arm/mach-omap/omap5_generic.c
new file mode 100644
index 0000000..debe849
--- /dev/null
+++ b/arch/arm/mach-omap/omap5_generic.c
@@ -0,0 +1,510 @@
+/*
+ * (C) Copyright 2013
+ * Sam Solutions, <sam-solutions.com>
+ *
+ * Authors:
+ *	Uladzimir Bely <u.bely@sam-solutions.com>
+ *	Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>
+ *
+ * Derived from OMAP4 work
+ */
+
+#include <common.h>
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <mach/clocks.h>
+#include <mach/omap5-clock.h>
+#include <mach/omap5-silicon.h>
+#include <mach/omap5-mux.h>
+#include <mach/syslib.h>
+#include <mach/generic.h>
+#include <mach/gpmc.h>
+#include <mach/gpio.h>
+
+#define MIDR_CORTEX_A15_R0P0				0x410FC0F0
+
+#define CONTROL_ID_CODE					0x4A002204
+
+#define OMAP5430_CONTROL_ID_CODE_ES1_0			0x0B94202F
+#define OMAP5432_CONTROL_ID_CODE_ES1_0			0x0B99802F
+#define OMAP5430_CONTROL_ID_CODE_ES2_0			0x1B94202F
+#define OMAP5432_CONTROL_ID_CODE_ES2_0			0x1B99802F
+
+/* EMIF_L3_CONFIG register value */
+#define EMIF_L3_CONFIG_VAL_SYS_10_LL_0			0x0A0000FF
+#define EMIF_L3_CONFIG_VAL_SYS_10_MPU_3_LL_0		0x0A300000
+#define EMIF_L3_CONFIG_VAL_SYS_10_MPU_5_LL_0		0x0A500000
+
+void __noreturn reset_cpu(unsigned long addr)
+{
+	writel(PRM_RSTCTRL_RESET, PRM_RSTCTRL);
+
+	while (1);
+}
+
+#define WATCHDOG_WSPR					0x48
+#define WATCHDOG_WWPS					0x34
+
+static void wait_for_command_complete(void)
+{
+	int pending = 1;
+
+	do {
+		pending = readl(OMAP54XX_WDT2_BASE + WATCHDOG_WWPS);
+	} while (pending);
+}
+
+/* EMIF */
+#define EMIF_REVISION					0x0000
+#define EMIF_STATUS					0x0004
+#define EMIF_SDRAM_CONFIG				0x0008
+#define EMIF_SDRAM_CONFIG_2				0x000C
+#define EMIF_SDRAM_REFRESH_CONTROL			0x0010
+#define EMIF_SDRAM_REFRESH_CONTROL_SHADOW		0x0014
+#define EMIF_SDRAM_TIMING_1				0x0018
+#define EMIF_SDRAM_TIMING_1_SHADOW			0x001C
+#define EMIF_SDRAM_TIMING_2				0x0020
+#define EMIF_SDRAM_TIMING_2_SHADOW			0x0024
+#define EMIF_SDRAM_TIMING_3				0x0028
+#define EMIF_SDRAM_TIMING_3_SHADOW			0x002C
+#define EMIF_POWER_MANAGEMENT_CONTROL			0x0038
+#define EMIF_POWER_MANAGEMENT_CONTROL_SHADOW		0x003C
+#define EMIF_LPDDR2_MODE_REG_DATA			0x0040
+#define EMIF_LPDDR2_MODE_REG_CONFIG			0x0050
+#define EMIF_OCP_CONFIG					0x0054
+#define EMIF_OCP_CFG_VALUE_1				0x0058
+#define EMIF_OCP_CFG_VALUE_2				0x005C
+#define EMIF_PERFORMANCE_COUNTER_1			0x0080
+#define EMIF_PERFORMANCE_COUNTER_2			0x0084
+#define EMIF_PERFORMANCE_COUNTER_CONFIG			0x0088
+#define EMIF_PERFORMANCE_COUNTER_MASTER_REGION_SELECT	0x008C
+#define EMIF_PERFORMANCE_COUNTER_TIME			0x0090
+#define EMIF_MISC_REG					0x0094
+#define EMIF_DLL_CALIB_CTRL				0x0098
+#define EMIF_DLL_CALIB_CTRL_SHADOW			0x009c
+
+#define EMIF_PWR_MGMT_CTRL				0x0038
+#define EMIF_PWR_MGMT_CTRL_SHADOW			0x003c
+#define EMIF_READ_IDLECTRL				0x0098
+#define EMIF_READ_IDLECTRL_SHADOW			0x009c
+#define EMIF_ZQ_CONFIG					0x00c8
+#define EMIF_TEMP_ALERT_CONFIG				0x00cc
+#define EMIF_L3_CONFIG					0x0054
+
+#define NUMBER_OF_EMIF_EXT_CTRL_REGISTERS		30
+
+#define EMIF_SDRAM_OUTPUT_IMPEDANCE_CALIBRATION_CONFIG	0x00C8
+
+#define EMIF_DDR_PHY_CTRL_1				0x00e4
+#define EMIF_DDR_PHY_CTRL_1_SHADOW			0x00e8
+#define EMIF_DDR_PHY_CTRL_2				0x00eC
+#define EMIF_DDR_EXT_PHY_CTRL_1				0x0200
+
+#define CS0						0
+#define CS1						1
+
+#define DMM_LISA_MAP_0					0x0040
+#define DMM_LISA_MAP_1					0x0044
+#define DMM_LISA_MAP_2					0x0048
+#define DMM_LISA_MAP_3					0x004C
+
+#define EMIF_REG_CS1NVMEN_MASK (1 << 30)
+#define EMIF_REG_INITREF_DIS_MASK (1 << 31)
+#define EMIF_REG_CS_SHIFT	31
+#define EMIF_REG_REFRESH_EN_MASK			0x40000000
+#define EMIF_REG_EBANK_MASK (1 << 3)
+
+#define MR0_ADDR					0
+#define MR1_ADDR					1
+#define MR2_ADDR					2
+#define MR3_ADDR					3
+#define MR4_ADDR					4
+#define MR10_ADDR					10
+#define MR16_ADDR					16
+#define RL_FINAL					8
+
+#define MR16_REF_FULL_ARRAY				0
+#define MR0_DAI_MASK					1
+
+#define REF_EN						0x40000000
+
+/* defines for MR1 */
+#define MR1_BL4						2
+#define MR1_BL8						3
+#define MR1_BL16					4
+
+#define MR1_BT_SEQ					0
+#define BT_INT						1
+
+#define MR1_WC						0
+#define MR1_NWC						1
+
+#define MR1_NWR3					1
+#define MR1_NWR4					2
+#define MR1_NWR5					3
+#define MR1_NWR6					4
+#define MR1_NWR7					5
+#define MR1_NWR8					6
+
+#define MR1_BL_8_BT_SEQ_WRAP_EN_NWR_8			0xc3
+
+/* defines for MR2 */
+#define MR2_RL3_WL1					1
+#define MR2_RL4_WL2					2
+#define MR2_RL5_WL2					3
+#define MR2_RL6_WL3					4
+
+/* defines for MR10 */
+#define MR10_ZQINIT					0xFF
+#define MR10_ZQRESET					0xC3
+#define MR10_ZQCL					0xAB
+#define MR10_ZQCS					0x56
+
+/* Elpida 2x2Gbit */
+#define SDRAM_CONFIG_INIT				0x80800EB1
+#define DDR_PHY_CTRL_1_INIT				0x849FFFF5
+#define READ_IDLE_CTRL					0x000501FF
+#define PWR_MGMT_CTRL					0x4000000f
+#define PWR_MGMT_CTRL_OPP100				0x4000000f
+#define ZQ_CONFIG					0x500b3215
+
+#define CS1_MR(mr)					((mr) | 0x80000000)
+
+/* CLKCTRL_IDLSET */
+#define MODULE_CLKCTRL_IDLEST_TRANSITIONING		1
+#define MODULE_CLKCTRL_IDLEST_DISABLED			3
+#define MODULE_CLKCTRL_IDLEST_SHIFT			16
+#define MODULE_CLKCTRL_IDLEST_MASK			(3 << 16)
+
+
+int omap5_emif_config(u32 base, const struct omap5_ddr_regs *regs)
+{
+	u32 *ext_phy_ctrl_base;
+	u32 *emif_ext_phy_ctrl_base;
+	int i;
+
+	/* Not NVM */
+	sr32(base + EMIF_SDRAM_CONFIG_2, 30, 1, 0);
+
+	/*
+	 * Keep REG_INITREF_DIS = 1 to prevent re-initialization of SDRAM
+	 * when EMIF_SDRAM_CONFIG register is written
+	 */
+	sr32(base + EMIF_SDRAM_REFRESH_CONTROL, 31, 1, 1);
+
+	/*
+	 * Set the SDRAM_CONFIG and PHY_CTRL for the
+	 * un-locked frequency & default RL
+	 */
+	writel(regs->sdram_config_init, base + EMIF_SDRAM_CONFIG);
+	writel(regs->emif_ddr_phy_ctlr_1_init, base + EMIF_DDR_PHY_CTRL_1);
+
+	ext_phy_ctrl_base = (u32 *) &(regs->emif_ddr_ext_phy_ctrl_1_init);
+	emif_ext_phy_ctrl_base = (u32 *) (base + EMIF_DDR_EXT_PHY_CTRL_1);
+
+	/* Configure external phy control registers */
+	for (i = 0; i < NUMBER_OF_EMIF_EXT_CTRL_REGISTERS; i++) {
+		writel(*ext_phy_ctrl_base++, emif_ext_phy_ctrl_base++);
+		/* Write the shadow register here as well */
+		writel(*ext_phy_ctrl_base++, emif_ext_phy_ctrl_base++);
+	}
+
+	writel(MR0_ADDR, base + EMIF_LPDDR2_MODE_REG_CONFIG);
+	writel(CS1_MR(MR0_ADDR), base + EMIF_LPDDR2_MODE_REG_CONFIG);
+	while (readl(base + EMIF_LPDDR2_MODE_REG_DATA) & MR0_DAI_MASK);
+
+	writel(MR10_ADDR, base + EMIF_LPDDR2_MODE_REG_CONFIG);
+	writel(MR10_ZQINIT, base + EMIF_LPDDR2_MODE_REG_DATA);
+	writel(CS1_MR(MR10_ADDR), base + EMIF_LPDDR2_MODE_REG_CONFIG);
+	writel(MR10_ZQINIT, base + EMIF_LPDDR2_MODE_REG_DATA);
+
+	/*
+	 * tZQINIT = 1 us
+	 * Enough loops assuming a maximum of 2GHz
+	 */
+	sdelay(2000);
+
+	writel(MR1_ADDR, base + EMIF_LPDDR2_MODE_REG_CONFIG);
+	writel(MR1_BL_8_BT_SEQ_WRAP_EN_NWR_8, base + EMIF_LPDDR2_MODE_REG_DATA);
+	writel(CS1_MR(MR1_ADDR), base + EMIF_LPDDR2_MODE_REG_CONFIG);
+	writel(MR1_BL_8_BT_SEQ_WRAP_EN_NWR_8, base + EMIF_LPDDR2_MODE_REG_DATA);
+
+	writel(MR16_ADDR, base + EMIF_LPDDR2_MODE_REG_CONFIG);
+	writel(MR16_REF_FULL_ARRAY, base + EMIF_LPDDR2_MODE_REG_DATA);
+	writel(CS1_MR(MR16_ADDR), base + EMIF_LPDDR2_MODE_REG_CONFIG);
+	writel(MR16_REF_FULL_ARRAY, base + EMIF_LPDDR2_MODE_REG_DATA);
+
+	/*
+	 * Enable refresh along with writing MR2
+	 * Encoding of RL in MR2 is (RL - 2)
+	 */
+	writel(MR2_ADDR | EMIF_REG_REFRESH_EN_MASK, base + EMIF_LPDDR2_MODE_REG_CONFIG);
+	writel(RL_FINAL - 2, base + EMIF_LPDDR2_MODE_REG_DATA);
+	writel(CS1_MR(MR2_ADDR) | EMIF_REG_REFRESH_EN_MASK, base + EMIF_LPDDR2_MODE_REG_CONFIG);
+	writel(RL_FINAL - 2, base + EMIF_LPDDR2_MODE_REG_DATA);
+
+	writel(MR3_ADDR, base + EMIF_LPDDR2_MODE_REG_CONFIG);
+	writel(0x1, base + EMIF_LPDDR2_MODE_REG_DATA);
+	writel(CS1_MR(MR3_ADDR), base + EMIF_LPDDR2_MODE_REG_CONFIG);
+	writel(0x1, base + EMIF_LPDDR2_MODE_REG_DATA);
+
+
+	writel(regs->sdram_config, base + EMIF_SDRAM_CONFIG);
+	writel(regs->emif_ddr_phy_ctlr_1, base + EMIF_DDR_PHY_CTRL_1);
+
+	/* Enable refresh now */
+	sr32(base + EMIF_SDRAM_REFRESH_CONTROL, 31, 1, 0);
+
+	/* Emif_update_timings */
+	writel(regs->ref_ctrl, base + EMIF_SDRAM_REFRESH_CONTROL_SHADOW);
+	writel(regs->sdram_tim1, base + EMIF_SDRAM_TIMING_1_SHADOW);
+	writel(regs->sdram_tim2, base + EMIF_SDRAM_TIMING_2_SHADOW);
+	writel(regs->sdram_tim3, base + EMIF_SDRAM_TIMING_3_SHADOW);
+
+	writel(0xF0F0, base + EMIF_PWR_MGMT_CTRL);
+	writel(0xF0F0, base + EMIF_PWR_MGMT_CTRL_SHADOW);
+	writel(regs->read_idle_ctrl, base + EMIF_READ_IDLECTRL_SHADOW);
+	writel(regs->zq_config, base + EMIF_ZQ_CONFIG);
+	writel(regs->temp_alert_config, base + EMIF_TEMP_ALERT_CONFIG);
+	writel(regs->emif_ddr_phy_ctlr_1, base + EMIF_DDR_PHY_CTRL_1_SHADOW);
+
+	writel(EMIF_L3_CONFIG_VAL_SYS_10_MPU_5_LL_0, base + EMIF_L3_CONFIG);
+	
+	return 0;
+}
+
+static inline void wait_for_clk_enable(u32 *clkctrl_addr)
+{
+	u32 clkctrl, idlest = MODULE_CLKCTRL_IDLEST_DISABLED;
+	u32 bound = LDELAY;
+
+	while ((idlest == MODULE_CLKCTRL_IDLEST_DISABLED) ||
+		(idlest == MODULE_CLKCTRL_IDLEST_TRANSITIONING)) {
+
+		clkctrl = readl(clkctrl_addr);
+		idlest = (clkctrl & MODULE_CLKCTRL_IDLEST_MASK) >>
+			 MODULE_CLKCTRL_IDLEST_SHIFT;
+		if (--bound == 0) {
+			debug("Clock enable failed for 0x%p idlest 0x%x\n",
+				clkctrl_addr, clkctrl);
+			return;
+		}
+	}
+}
+
+static unsigned int cortex_a15_rev(void)
+{
+	unsigned int rev;
+
+	/* Read Main ID Register (MIDR) */
+	asm ("mrc p15, 0, %0, c0, c0, 0" : "=r" (rev));
+
+	return rev;
+}
+
+unsigned int omap5_revision(void)
+{
+	unsigned int rev = cortex_a15_rev();
+
+	switch(rev) {
+	case MIDR_CORTEX_A15_R0P0:
+		switch(readl(CONTROL_ID_CODE)) {
+		case OMAP5430_CONTROL_ID_CODE_ES1_0:
+			return OMAP5430_ES1_0;
+			break;
+		case OMAP5430_CONTROL_ID_CODE_ES2_0:
+			return OMAP5430_ES2_0;
+			break;
+		case OMAP5432_CONTROL_ID_CODE_ES1_0:
+			return OMAP5432_ES1_0;
+			break;
+		case OMAP5432_CONTROL_ID_CODE_ES2_0:
+			return OMAP5432_ES2_0;
+			break;
+		default:
+			return OMAP5430_ES1_0;
+			break;
+		}
+	default:
+		return OMAP543X_SILICON_ID_INVALID;
+		break;
+	}
+}
+
+void omap5_ddr_init(const struct omap5_ddr_regs *ddr_regs, const struct dpll_param *core)
+{
+	/* DMM Configuration */
+	writel(0xFF020100, OMAP54XX_DMM_BASE + DMM_LISA_MAP_3);
+	writel(0x80740300, OMAP54XX_DMM_BASE + DMM_LISA_MAP_2);
+	writel(0x0, OMAP54XX_DMM_BASE + DMM_LISA_MAP_1);
+	writel(0x0, OMAP54XX_DMM_BASE + DMM_LISA_MAP_0);
+
+	writel(0xFF020100, OMAP54XX_MA_BASE + DMM_LISA_MAP_3);
+	writel(0x80740300, OMAP54XX_MA_BASE + DMM_LISA_MAP_2);
+	writel(0x0, OMAP54XX_MA_BASE + DMM_LISA_MAP_1);
+	writel(0x0, OMAP54XX_MA_BASE + DMM_LISA_MAP_0);
+
+	/*
+	 * DDR needs to be initialised @ 19.2 MHz
+	 * So put core DPLL in bypass mode
+	 * Configure the Core DPLL but don't lock it
+	 */
+	omap5_configure_core_dpll_no_lock(core);
+
+	omap5_emif_config(OMAP54XX_EMIF1_BASE, ddr_regs);
+	omap5_emif_config(OMAP54XX_EMIF2_BASE, ddr_regs);
+
+	/* Put EMIF clock domain in sw wakeup mode */
+	sr32(CM_EMIF_CLKSTCTRL, 0, 2, 2);
+
+	wait_for_clk_enable((u32*)CM_EMIF_EMIF1_CLKCTRL);
+	wait_for_clk_enable((u32*)CM_EMIF_EMIF2_CLKCTRL);
+
+	writel(0x00001709, CM_SHADOW_FREQ_CONFIG1);
+
+	if (!wait_on_value(1, 0, CM_SHADOW_FREQ_CONFIG1, LDELAY)) {
+		debug("FREQ UPDATE procedure failed!!");
+		hang();
+	}
+}
+
+void omap5_power_i2c_send(u32 r)
+{
+	u32 val;
+
+	writel(r, OMAP54XX_PRM_VC_VAL_BYPASS);
+
+	val = readl(OMAP54XX_PRM_VC_VAL_BYPASS);
+	val |= 0x1000000;
+	writel(val, OMAP54XX_PRM_VC_VAL_BYPASS);
+
+	while (readl(OMAP54XX_PRM_VC_VAL_BYPASS) & 0x1000000)
+		;
+
+	val = readl(OMAP54XX_PRM_IRQSTATUS_MPU);
+	writel(val, OMAP54XX_PRM_IRQSTATUS_MPU);
+}
+
+/* Shutdown watchdog */
+static int watchdog_init(void)
+{
+	void __iomem *wd2_base = (void *)OMAP54XX_WDT2_BASE;
+
+	writel(WD_UNLOCK1, wd2_base + WATCHDOG_WSPR);
+	wait_for_command_complete();
+	writel(WD_UNLOCK2, wd2_base + WATCHDOG_WSPR);
+
+	return 0;
+}
+late_initcall(watchdog_init);
+
+static int omap_vector_init(void)
+{
+	/*
+	 * omap4 usbboot interfaces with the omap4 ROM to reuse the USB port
+	 * used for booting.
+	 * The ROM code uses interrupts for the transfers, so do not modify the
+	 * interrupt vectors in this case.
+	 */
+	if (omap5_bootsrc() != OMAP_BOOTSRC_USB1) {
+		__asm__ __volatile__ (
+			"mov    r0, #0;"
+			"mcr    p15, #0, r0, c12, c0, #0;"
+			:
+			:
+			: "r0"
+		);
+	}
+
+	return 0;
+}
+core_initcall(omap_vector_init);
+
+#define OMAP5_TRACING_VECTOR3 0x4031f048
+
+enum omap_boot_src omap5_bootsrc(void)
+{
+	u32 bootsrc = readl(OMAP5_TRACING_VECTOR3);
+
+	if (bootsrc & (1 << 5))
+		return OMAP_BOOTSRC_MMC1;
+	if (bootsrc & (1 << 3))
+		return OMAP_BOOTSRC_NAND;
+	if (bootsrc & (1<<21))
+		return OMAP_BOOTSRC_USB1;
+	return OMAP_BOOTSRC_UNKNOWN;
+}
+
+/* Scaling vcore functions are taken from u-boot */
+void do_scale_vcore(u32 vcore_reg, u32 volt_mv)
+{
+	u32 temp, offset_code;
+	u32 step = 10000; /* 10 mV represented in uV */;
+
+	offset_code = (volt_mv * 1000 - SMPS_BASE_VOLT_UV + step - 1) / step + 6;
+
+	temp = SMPS_I2C_SLAVE_ADDR |
+		(vcore_reg << OMAP54XX_PRM_VC_VAL_BYPASS_REGADDR_SHIFT) |
+		(offset_code << OMAP54XX_PRM_VC_VAL_BYPASS_DATA_SHIFT) |
+		OMAP54XX_PRM_VC_VAL_BYPASS_VALID_BIT;
+	writel(temp, OMAP54XX_PRM_VC_VAL_BYPASS);
+	if (!wait_on_value(OMAP54XX_PRM_VC_VAL_BYPASS_VALID_BIT, 0,
+		OMAP54XX_PRM_VC_VAL_BYPASS, LDELAY)) {
+		debug("Scaling voltage failed for 0x%x\n", vcore_reg);
+	}
+}
+
+void omap5_scale_vcores(void)
+{
+	writel(0x150e, OMAP54XX_PRM_VC_CFG_I2C_CLK);
+	writel(0, OMAP54XX_PRM_VC_CFG_I2C_MODE);
+
+	/* Palmas settings */
+	do_scale_vcore(SMPS_REG_ADDR_12_MPU, VDD_MPU);
+	do_scale_vcore(SMPS_REG_ADDR_45_IVA, VDD_MM);
+	do_scale_vcore(SMPS_REG_ADDR_8_CORE, VDD_CORE);
+}
+
+void omap5_do_set_mux(u32 base, struct pad_conf_entry const *array, int size)
+{
+	int i;
+	struct pad_conf_entry *pad = (struct pad_conf_entry *) array;
+
+	for (i = 0; i < size; i++, pad++)
+		writew(pad->val, base + pad->offset);
+}
+
+/* GPMC timing for OMAP4 nand device */
+const struct gpmc_config omap5_nand_cfg = {
+	.cfg = {
+		0x00000800,	/* CONF1 */
+		0x00050500,	/* CONF2 */
+		0x00040400,	/* CONF3 */
+		0x03000300,	/* CONF4 */
+		0x00050808,	/* CONF5 */
+		0x00000000,	/* CONF6 */
+	},
+	/* GPMC address map as small as possible */
+	.base = 0x28000000,
+	.size = GPMC_SIZE_16M,
+};
+
+static int omap5_gpio_init(void)
+{
+	add_generic_device("omap-gpio", 0, NULL, OMAP54XX_GPIO1_BASE,
+				0xf00, IORESOURCE_MEM, NULL);
+	add_generic_device("omap-gpio", 1, NULL, OMAP54XX_GPIO2_BASE,
+				0xf00, IORESOURCE_MEM, NULL);
+	add_generic_device("omap-gpio", 2, NULL, OMAP54XX_GPIO3_BASE,
+				0xf00, IORESOURCE_MEM, NULL);
+	add_generic_device("omap-gpio", 3, NULL, OMAP54XX_GPIO4_BASE,
+				0xf00, IORESOURCE_MEM, NULL);
+	add_generic_device("omap-gpio", 4, NULL, OMAP54XX_GPIO5_BASE,
+				0xf00, IORESOURCE_MEM, NULL);
+	add_generic_device("omap-gpio", 5, NULL, OMAP54XX_GPIO6_BASE,
+				0xf00, IORESOURCE_MEM, NULL);
+
+	return 0;
+}
+coredevice_initcall(omap5_gpio_init);
diff --git a/arch/arm/mach-omap/omap_generic.c b/arch/arm/mach-omap/omap_generic.c
index 580ed3e..ca3e553 100644
--- a/arch/arm/mach-omap/omap_generic.c
+++ b/arch/arm/mach-omap/omap_generic.c
@@ -26,6 +26,8 @@ enum omap_boot_src omap_bootsrc(void)
 	return omap3_bootsrc();
 #elif defined(CONFIG_ARCH_OMAP4)
 	return omap4_bootsrc();
+#elif defined(CONFIG_ARCH_OMAP5)
+	return omap5_bootsrc();
 #elif defined(CONFIG_ARCH_AM33XX)
 	return am33xx_bootsrc();
 #endif
diff --git a/arch/arm/mach-omap/s32k_clksource.c b/arch/arm/mach-omap/s32k_clksource.c
index 7def8b1..0377e0d 100644
--- a/arch/arm/mach-omap/s32k_clksource.c
+++ b/arch/arm/mach-omap/s32k_clksource.c
@@ -27,13 +27,18 @@
 #include <io.h>
 #include <mach/omap3-silicon.h>
 #include <mach/omap4-silicon.h>
+#include <mach/omap5-silicon.h>
 #include <mach/clocks.h>
 #include <mach/timers.h>
 #include <mach/sys_info.h>
 #include <mach/syslib.h>
 
 /** Sync 32Khz Timer registers */
+#ifdef CONFIG_ARCH_OMAP5
+#define S32K_CR			0x30
+#else
 #define S32K_CR			0x10
+#endif
 #define S32K_FREQUENCY		32768
 
 static void __iomem *timerbase;
@@ -73,6 +78,8 @@ static int s32k_clocksource_init(void)
 		timerbase = (void *)OMAP3_32KTIMER_BASE;
 	else if (IS_ENABLED(CONFIG_ARCH_OMAP4))
 		timerbase = (void *)OMAP44XX_32KTIMER_BASE;
+	else if (IS_ENABLED(CONFIG_ARCH_OMAP5))
+		timerbase = (void *)OMAP54XX_32KTIMER_BASE;
 	else
 		BUG();
 
diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 9558f28..5aee417 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -67,7 +67,7 @@ config MCI_IMX_ESDHC_PIO
 
 config MCI_OMAP_HSMMC
 	bool "OMAP HSMMC"
-	depends on ARCH_OMAP4 || ARCH_OMAP3 || ARCH_AM33XX
+	depends on ARCH_OMAP5 || ARCH_OMAP4 || ARCH_OMAP3 || ARCH_AM33XX
 	help
 	  Enable this entry to add support to read and write SD cards on
 	  both OMAP3 and OMAP4 based systems.
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
