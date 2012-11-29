Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tdys2-0000hy-9n
 for barebox@lists.infradead.org; Thu, 29 Nov 2012 07:49:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 29 Nov 2012 08:49:13 +0100
Message-Id: <1354175353-8717-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH v2] ARM i.MX: Add Garz+Fricke Vincell Board support
To: barebox@lists.infradead.org

This adds support for the Garz+Fricke Vincell board. This has
a i.MX53 Processor with 512MB of DDR3 RAM.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---

changes since v1:

- remove hunks which shouldn't be there as noted by Eric

 arch/arm/Makefile                                  |    1 +
 arch/arm/boards/guf-vincell/Makefile               |    3 +
 arch/arm/boards/guf-vincell/board.c                |  323 ++++++++++++++++++++
 arch/arm/boards/guf-vincell/config.h               |   24 ++
 arch/arm/boards/guf-vincell/env/boot/nand-ubi      |   10 +
 arch/arm/boards/guf-vincell/env/init/bootargs-base |    8 +
 arch/arm/boards/guf-vincell/env/init/hostname      |    8 +
 arch/arm/boards/guf-vincell/env/init/mtdparts-nand |   11 +
 arch/arm/boards/guf-vincell/flash_header.c         |   41 +++
 arch/arm/boards/guf-vincell/lowlevel.c             |  164 ++++++++++
 arch/arm/configs/vincell_defconfig                 |   82 +++++
 arch/arm/mach-imx/Kconfig                          |    9 +
 12 files changed, 684 insertions(+)
 create mode 100644 arch/arm/boards/guf-vincell/Makefile
 create mode 100644 arch/arm/boards/guf-vincell/board.c
 create mode 100644 arch/arm/boards/guf-vincell/config.h
 create mode 100644 arch/arm/boards/guf-vincell/env/boot/nand-ubi
 create mode 100644 arch/arm/boards/guf-vincell/env/init/bootargs-base
 create mode 100644 arch/arm/boards/guf-vincell/env/init/hostname
 create mode 100644 arch/arm/boards/guf-vincell/env/init/mtdparts-nand
 create mode 100644 arch/arm/boards/guf-vincell/flash_header.c
 create mode 100644 arch/arm/boards/guf-vincell/lowlevel.c
 create mode 100644 arch/arm/configs/vincell_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index d911ffe..3bd645f 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -149,6 +149,7 @@ board-$(CONFIG_MACH_CCMX51)			:= ccxmx51
 board-$(CONFIG_MACH_TINY210)			:= friendlyarm-tiny210
 board-$(CONFIG_MACH_SABRELITE)			:= freescale-mx6-sabrelite
 board-$(CONFIG_MACH_TX53)			:= karo-tx53
+board-$(CONFIG_MACH_GUF_VINCELL)		:= guf-vincell
 
 machdirs := $(patsubst %,arch/arm/mach-%/,$(machine-y))
 
diff --git a/arch/arm/boards/guf-vincell/Makefile b/arch/arm/boards/guf-vincell/Makefile
new file mode 100644
index 0000000..8f4f978
--- /dev/null
+++ b/arch/arm/boards/guf-vincell/Makefile
@@ -0,0 +1,3 @@
+obj-y += board.o
+obj-y += flash_header.o lowlevel.o
+pbl-y += flash_header.o lowlevel.o
diff --git a/arch/arm/boards/guf-vincell/board.c b/arch/arm/boards/guf-vincell/board.c
new file mode 100644
index 0000000..bfc0456
--- /dev/null
+++ b/arch/arm/boards/guf-vincell/board.c
@@ -0,0 +1,323 @@
+/*
+ * Copyright (C) 2007 Sascha Hauer, Pengutronix
+ * Copyright (C) 2011 Marc Kleine-Budde <mkl@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <environment.h>
+#include <fcntl.h>
+#include <fec.h>
+#include <fs.h>
+#include <init.h>
+#include <nand.h>
+#include <net.h>
+#include <partition.h>
+#include <sizes.h>
+#include <bbu.h>
+#include <gpio.h>
+#include <io.h>
+#include <i2c/i2c.h>
+
+#include <generated/mach-types.h>
+
+#include <mach/imx53-regs.h>
+#include <mach/iomux-mx53.h>
+#include <mach/devices-imx53.h>
+#include <mach/generic.h>
+#include <mach/imx-nand.h>
+#include <mach/iim.h>
+#include <mach/imx-nand.h>
+#include <mach/bbu.h>
+#include <mach/imx-flash-header.h>
+#include <mach/imx5.h>
+
+#include <asm/armlinux.h>
+#include <asm/mmu.h>
+
+static struct fec_platform_data fec_info = {
+	.xcv_type = RMII,
+};
+
+static iomux_v3_cfg_t vincell_pads[] = {
+	MX53_PAD_DISP0_DAT23__AUDMUX_AUD4_RXD,
+	MX53_PAD_DISP0_DAT20__AUDMUX_AUD4_TXC,
+	MX53_PAD_DISP0_DAT21__AUDMUX_AUD4_TXD,
+	MX53_PAD_DISP0_DAT22__AUDMUX_AUD4_TXFS,
+	MX53_PAD_GPIO_8__CAN1_RXCAN,
+	MX53_PAD_GPIO_7__CAN1_TXCAN,
+	MX53_PAD_KEY_ROW4__CAN2_RXCAN,
+	MX53_PAD_KEY_COL4__CAN2_TXCAN,
+	MX53_PAD_GPIO_3__CCM_CLKO2,
+	MX53_PAD_KEY_COL1__ECSPI1_MISO,
+	MX53_PAD_KEY_ROW0__ECSPI1_MOSI,
+	MX53_PAD_GPIO_19__ECSPI1_RDY,
+	MX53_PAD_KEY_COL0__ECSPI1_SCLK,
+	MX53_PAD_KEY_ROW1__GPIO4_9, /* ECSPI1_SS0 */
+	MX53_PAD_KEY_COL2__GPIO4_10, /* ECSPI1_SS1 */
+	MX53_PAD_KEY_ROW2__GPIO4_11, /* ECSPI1_SS2 */
+	MX53_PAD_KEY_COL3__GPIO4_12, /* ECSPI1_SS3 */
+	MX53_PAD_CSI0_DAT10__ECSPI2_MISO,
+	MX53_PAD_EIM_CS1__ECSPI2_MOSI,
+	MX53_PAD_EIM_A25__ECSPI2_RDY,
+	MX53_PAD_DISP0_DAT19__ECSPI2_SCLK,
+	MX53_PAD_DISP0_DAT18__GPIO5_12, /* ECSPI2_SS0 */
+	MX53_PAD_EIM_DA0__EMI_NAND_WEIM_DA_0,
+	MX53_PAD_EIM_DA1__EMI_NAND_WEIM_DA_1,
+	MX53_PAD_EIM_DA2__EMI_NAND_WEIM_DA_2,
+	MX53_PAD_EIM_DA3__EMI_NAND_WEIM_DA_3,
+	MX53_PAD_EIM_DA4__EMI_NAND_WEIM_DA_4,
+	MX53_PAD_EIM_DA5__EMI_NAND_WEIM_DA_5,
+	MX53_PAD_EIM_DA6__EMI_NAND_WEIM_DA_6,
+	MX53_PAD_EIM_DA7__EMI_NAND_WEIM_DA_7,
+	MX53_PAD_EIM_DA8__EMI_NAND_WEIM_DA_8,
+	MX53_PAD_EIM_DA9__EMI_NAND_WEIM_DA_9,
+	MX53_PAD_EIM_DA10__EMI_NAND_WEIM_DA_10,
+	MX53_PAD_EIM_DA11__EMI_NAND_WEIM_DA_11,
+	MX53_PAD_EIM_DA12__EMI_NAND_WEIM_DA_12,
+	MX53_PAD_EIM_DA13__EMI_NAND_WEIM_DA_13,
+	MX53_PAD_EIM_DA14__EMI_NAND_WEIM_DA_14,
+	MX53_PAD_EIM_DA15__EMI_NAND_WEIM_DA_15,
+	MX53_PAD_NANDF_ALE__EMI_NANDF_ALE,
+	MX53_PAD_NANDF_CLE__EMI_NANDF_CLE,
+	MX53_PAD_NANDF_CS0__EMI_NANDF_CS_0,
+	MX53_PAD_NANDF_CS1__EMI_NANDF_CS_1,
+	MX53_PAD_NANDF_CS2__EMI_NANDF_CS_2,
+	MX53_PAD_NANDF_CS3__EMI_NANDF_CS_3,
+	MX53_PAD_NANDF_RB0__EMI_NANDF_RB_0,
+	MX53_PAD_NANDF_RE_B__EMI_NANDF_RE_B,
+	MX53_PAD_NANDF_WE_B__EMI_NANDF_WE_B,
+	MX53_PAD_NANDF_WP_B__EMI_NANDF_WP_B,
+	MX53_PAD_EIM_A16__EMI_WEIM_A_16,
+	MX53_PAD_EIM_A17__EMI_WEIM_A_17,
+	MX53_PAD_EIM_A18__EMI_WEIM_A_18,
+	MX53_PAD_EIM_A19__EMI_WEIM_A_19,
+	MX53_PAD_EIM_A20__EMI_WEIM_A_20,
+	MX53_PAD_EIM_CS0__EMI_WEIM_CS_0,
+	MX53_PAD_EIM_D16__EMI_WEIM_D_16,
+	MX53_PAD_EIM_D17__EMI_WEIM_D_17,
+	MX53_PAD_EIM_D18__EMI_WEIM_D_18,
+	MX53_PAD_EIM_D19__EMI_WEIM_D_19,
+	MX53_PAD_EIM_D20__EMI_WEIM_D_20,
+	MX53_PAD_EIM_D21__EMI_WEIM_D_21,
+	MX53_PAD_EIM_D22__EMI_WEIM_D_22,
+	MX53_PAD_EIM_D23__EMI_WEIM_D_23,
+	MX53_PAD_EIM_D24__EMI_WEIM_D_24,
+	MX53_PAD_EIM_D25__EMI_WEIM_D_25,
+	MX53_PAD_EIM_D26__EMI_WEIM_D_26,
+	MX53_PAD_EIM_D27__EMI_WEIM_D_27,
+	MX53_PAD_EIM_D28__EMI_WEIM_D_28,
+	MX53_PAD_EIM_D29__EMI_WEIM_D_29,
+	MX53_PAD_EIM_D30__EMI_WEIM_D_30,
+	MX53_PAD_EIM_D31__EMI_WEIM_D_31,
+	MX53_PAD_EIM_EB0__EMI_WEIM_EB_0,
+	MX53_PAD_EIM_EB1__EMI_WEIM_EB_1,
+	MX53_PAD_EIM_OE__EMI_WEIM_OE,
+	MX53_PAD_EIM_RW__EMI_WEIM_RW,
+	MX53_PAD_SD1_CLK__ESDHC1_CLK,
+	MX53_PAD_SD1_CMD__ESDHC1_CMD,
+	MX53_PAD_SD1_DATA0__ESDHC1_DAT0,
+	MX53_PAD_SD1_DATA1__ESDHC1_DAT1,
+	MX53_PAD_SD1_DATA2__ESDHC1_DAT2,
+	MX53_PAD_SD1_DATA3__ESDHC1_DAT3,
+	MX53_PAD_DI0_PIN4__ESDHC1_WP,
+	MX53_PAD_FEC_MDC__FEC_MDC,
+	MX53_PAD_FEC_MDIO__FEC_MDIO,
+	MX53_PAD_FEC_RXD0__FEC_RDATA_0,
+	MX53_PAD_FEC_RXD1__FEC_RDATA_1,
+	MX53_PAD_FEC_CRS_DV__FEC_RX_DV,
+	MX53_PAD_FEC_RX_ER__FEC_RX_ER,
+	MX53_PAD_FEC_TXD0__FEC_TDATA_0,
+	MX53_PAD_FEC_TXD1__FEC_TDATA_1,
+	MX53_PAD_FEC_REF_CLK__FEC_TX_CLK,
+	MX53_PAD_FEC_TX_EN__FEC_TX_EN,
+	MX53_PAD_SD2_CLK__GPIO1_10,
+	MX53_PAD_SD2_DATA3__GPIO1_12,
+	MX53_PAD_GPIO_2__GPIO1_2,
+	MX53_PAD_GPIO_4__GPIO1_4,
+	MX53_PAD_PATA_DATA0__GPIO2_0,
+	MX53_PAD_PATA_DATA1__GPIO2_1,
+	MX53_PAD_PATA_DATA10__GPIO2_10,
+	MX53_PAD_PATA_DATA11__GPIO2_11,
+	MX53_PAD_PATA_DATA13__GPIO2_13,
+	MX53_PAD_PATA_DATA14__GPIO2_14,
+	MX53_PAD_PATA_DATA15__GPIO2_15,
+	MX53_PAD_PATA_DATA2__GPIO2_2,
+	MX53_PAD_PATA_DATA3__GPIO2_3,
+	MX53_PAD_EIM_EB2__GPIO2_30,
+	MX53_PAD_PATA_DATA4__PATA_DATA_4,
+	MX53_PAD_PATA_DATA5__GPIO2_5,
+	MX53_PAD_PATA_DATA6__GPIO2_6,
+	MX53_PAD_PATA_DATA7__GPIO2_7,
+	MX53_PAD_PATA_DATA8__GPIO2_8,
+	MX53_PAD_PATA_DATA9__GPIO2_9,
+	MX53_PAD_GPIO_10__GPIO4_0,
+	MX53_PAD_GPIO_11__GPIO4_1,
+	MX53_PAD_GPIO_12__GPIO4_2,
+	MX53_PAD_DISP0_DAT8__GPIO4_29,
+	MX53_PAD_GPIO_13__GPIO4_3,
+	MX53_PAD_DISP0_DAT16__GPIO5_10,
+	MX53_PAD_DISP0_DAT17__GPIO5_11,
+	MX53_PAD_CSI0_PIXCLK__GPIO5_18,
+	MX53_PAD_CSI0_MCLK__GPIO5_19,
+	MX53_PAD_CSI0_DATA_EN__GPIO5_20,
+	MX53_PAD_CSI0_VSYNC__GPIO5_21,
+	MX53_PAD_CSI0_DAT4__GPIO5_22,
+	MX53_PAD_CSI0_DAT5__GPIO5_23,
+	MX53_PAD_CSI0_DAT6__GPIO5_24,
+	MX53_PAD_DISP0_DAT14__GPIO5_8,
+	MX53_PAD_DISP0_DAT15__GPIO5_9,
+	MX53_PAD_PATA_DIOW__GPIO6_17,
+	MX53_PAD_PATA_DMACK__GPIO6_18,
+	MX53_PAD_GPIO_17__GPIO7_12,
+	MX53_PAD_GPIO_18__GPIO7_13,
+	MX53_PAD_PATA_RESET_B__GPIO7_4,
+	MX53_PAD_PATA_IORDY__GPIO7_5,
+	MX53_PAD_PATA_DA_0__GPIO7_6,
+	MX53_PAD_PATA_DA_2__GPIO7_8,
+	MX53_PAD_CSI0_DAT9__I2C1_SCL,
+	MX53_PAD_CSI0_DAT8__I2C1_SDA,
+	MX53_PAD_KEY_COL3__I2C2_SCL,
+	MX53_PAD_KEY_ROW3__I2C2_SDA,
+	MX53_PAD_GPIO_5__I2C3_SCL,
+	MX53_PAD_GPIO_6__I2C3_SDA,
+	MX53_PAD_KEY_COL0__KPP_COL_0,
+	MX53_PAD_KEY_COL1__KPP_COL_1,
+	MX53_PAD_KEY_COL2__KPP_COL_2,
+	MX53_PAD_KEY_COL3__KPP_COL_3,
+	MX53_PAD_GPIO_19__KPP_COL_5,
+	MX53_PAD_GPIO_9__KPP_COL_6,
+	MX53_PAD_SD2_DATA1__KPP_COL_7,
+	MX53_PAD_KEY_ROW0__KPP_ROW_0,
+	MX53_PAD_KEY_ROW1__KPP_ROW_1,
+	MX53_PAD_KEY_ROW2__KPP_ROW_2,
+	MX53_PAD_KEY_ROW3__KPP_ROW_3,
+	MX53_PAD_SD2_CMD__KPP_ROW_5,
+	MX53_PAD_SD2_DATA2__KPP_ROW_6,
+	MX53_PAD_SD2_DATA0__KPP_ROW_7,
+	MX53_PAD_LVDS0_CLK_P__LDB_LVDS0_CLK,
+	MX53_PAD_LVDS0_TX0_P__LDB_LVDS0_TX0,
+	MX53_PAD_LVDS0_TX1_P__LDB_LVDS0_TX1,
+	MX53_PAD_LVDS0_TX2_P__LDB_LVDS0_TX2,
+	MX53_PAD_LVDS0_TX3_P__LDB_LVDS0_TX3,
+	MX53_PAD_DISP0_DAT8__PWM1_PWMO,
+	MX53_PAD_DISP0_DAT9__PWM2_PWMO,
+	MX53_PAD_PATA_INTRQ__UART2_CTS,
+	MX53_PAD_PATA_DIOR__UART2_RTS,
+	MX53_PAD_PATA_BUFFER_EN__UART2_RXD_MUX,
+	MX53_PAD_PATA_DMARQ__UART2_TXD_MUX,
+	MX53_PAD_PATA_DA_1__UART3_CTS,
+	MX53_PAD_PATA_CS_1__UART3_RXD_MUX,
+	MX53_PAD_PATA_CS_0__UART3_TXD_MUX,
+	MX53_PAD_CSI0_DAT17__UART4_CTS,
+	MX53_PAD_CSI0_DAT16__UART4_RTS,
+	MX53_PAD_CSI0_DAT13__UART4_RXD_MUX,
+	MX53_PAD_CSI0_DAT12__UART4_TXD_MUX,
+	MX53_PAD_CSI0_DAT19__UART5_CTS,
+	MX53_PAD_CSI0_DAT18__UART5_RTS,
+	MX53_PAD_CSI0_DAT15__UART5_RXD_MUX,
+	MX53_PAD_CSI0_DAT14__UART5_TXD_MUX,
+	MX53_PAD_GPIO_0__USBOH3_USBH1_PWR,
+	MX53_PAD_DISP0_DAT12__USBOH3_USBH2_CLK,
+	MX53_PAD_DISP0_DAT0__USBOH3_USBH2_DATA_0,
+	MX53_PAD_DISP0_DAT1__USBOH3_USBH2_DATA_1,
+	MX53_PAD_DISP0_DAT2__USBOH3_USBH2_DATA_2,
+	MX53_PAD_DISP0_DAT3__USBOH3_USBH2_DATA_3,
+	MX53_PAD_DISP0_DAT4__USBOH3_USBH2_DATA_4,
+	MX53_PAD_DISP0_DAT5__USBOH3_USBH2_DATA_5,
+	MX53_PAD_DISP0_DAT6__USBOH3_USBH2_DATA_6,
+	MX53_PAD_DISP0_DAT7__USBOH3_USBH2_DATA_7,
+	MX53_PAD_DI0_DISP_CLK__USBOH3_USBH2_DIR,
+	MX53_PAD_DISP0_DAT11__USBOH3_USBH2_NXT,
+	MX53_PAD_DISP0_DAT10__USBOH3_USBH2_STP,
+	MX53_PAD_GPIO_1__WDOG2_WDOG_B,
+};
+
+#define LOCO_FEC_PHY_RST		IMX_GPIO_NR(7, 6)
+
+static void vincell_fec_reset(void)
+{
+	gpio_direction_output(LOCO_FEC_PHY_RST, 0);
+	mdelay(1);
+	gpio_set_value(LOCO_FEC_PHY_RST, 1);
+}
+
+static struct imx_nand_platform_data nand_info = {
+	.width		= 1,
+	.hw_ecc		= 1,
+	.flash_bbt	= 1,
+};
+
+static struct imx_dcd_v2_entry __dcd_entry_section dcd_entry[] = {
+};
+
+static struct i2c_board_info i2c_devices[] = {
+	{
+		I2C_BOARD_INFO("da9053", 0x48),
+	},
+};
+
+#include <linux/clk.h>
+
+static int vincell_devices_init(void)
+{
+	writel(0, MX53_M4IF_BASE_ADDR + 0xc);
+
+	console_flush();
+	imx53_init_lowlevel(1000);
+	clk_set_rate(clk_lookup("nfc_podf"), 66666667);
+
+	imx53_add_nand(&nand_info);
+	imx51_iim_register_fec_ethaddr();
+	imx53_add_fec(&fec_info);
+	imx53_add_mmc0(NULL);
+	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
+	imx53_add_i2c0(NULL);
+
+	vincell_fec_reset();
+
+	armlinux_set_bootparams((void *)0x70000100);
+	armlinux_set_architecture(3297);
+
+	devfs_add_partition("nand0", SZ_1M, SZ_512K, DEVFS_PARTITION_FIXED, "self_raw");
+	dev_add_bb_dev("self_raw", "self0");
+	devfs_add_partition("nand0", SZ_1M + SZ_512K, SZ_512K, DEVFS_PARTITION_FIXED, "env_raw");
+	dev_add_bb_dev("env_raw", "env0");
+
+	imx53_bbu_internal_nand_register_handler("nand",
+		BBU_HANDLER_FLAG_DEFAULT, dcd_entry, sizeof(dcd_entry), 3 * SZ_128K, 0xf8020000);
+
+	return 0;
+}
+
+device_initcall(vincell_devices_init);
+
+static int vincell_part_init(void)
+{
+	devfs_add_partition("disk0", 0x00000, 0x80000, DEVFS_PARTITION_FIXED, "self0");
+	devfs_add_partition("disk0", 0x80000, 0x80000, DEVFS_PARTITION_FIXED, "env0");
+
+	return 0;
+}
+late_initcall(vincell_part_init);
+
+static int vincell_console_init(void)
+{
+	mxc_iomux_v3_setup_multiple_pads(vincell_pads, ARRAY_SIZE(vincell_pads));
+
+	imx53_add_uart1();
+
+	return 0;
+}
+
+console_initcall(vincell_console_init);
diff --git a/arch/arm/boards/guf-vincell/config.h b/arch/arm/boards/guf-vincell/config.h
new file mode 100644
index 0000000..b7effe5
--- /dev/null
+++ b/arch/arm/boards/guf-vincell/config.h
@@ -0,0 +1,24 @@
+/**
+ * @file
+ * @brief Global defintions for the ARM i.MX51 based babbage board
+ *
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
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/guf-vincell/env/boot/nand-ubi b/arch/arm/boards/guf-vincell/env/boot/nand-ubi
new file mode 100644
index 0000000..a3f748e
--- /dev/null
+++ b/arch/arm/boards/guf-vincell/env/boot/nand-ubi
@@ -0,0 +1,10 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	boot-menu-add-entry "$0" "nand (UBI)"
+	exit
+fi
+
+global.bootm.image="/dev/nand0.kernel.bb"
+#global.bootm.oftree="/env/oftree"
+bootargs-root-ubi -r root -m nand0.root
diff --git a/arch/arm/boards/guf-vincell/env/init/bootargs-base b/arch/arm/boards/guf-vincell/env/init/bootargs-base
new file mode 100644
index 0000000..d869754
--- /dev/null
+++ b/arch/arm/boards/guf-vincell/env/init/bootargs-base
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "Base bootargs"
+	exit
+fi
+
+global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/guf-vincell/env/init/hostname b/arch/arm/boards/guf-vincell/env/init/hostname
new file mode 100644
index 0000000..ca2789d
--- /dev/null
+++ b/arch/arm/boards/guf-vincell/env/init/hostname
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "hostname"
+	exit
+fi
+
+global.hostname=vincell
diff --git a/arch/arm/boards/guf-vincell/env/init/mtdparts-nand b/arch/arm/boards/guf-vincell/env/init/mtdparts-nand
new file mode 100644
index 0000000..4fffefc
--- /dev/null
+++ b/arch/arm/boards/guf-vincell/env/init/mtdparts-nand
@@ -0,0 +1,11 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "NAND partitions"
+	exit
+fi
+
+mtdparts="512k(nand0.barebox)ro,512k(nand0.bareboxenv),4M(nand0.kernel),-(nand0.root)"
+kernelname="mxc_nand"
+
+mtdparts-add -b -d nand0 -k ${kernelname} -p ${mtdparts}
diff --git a/arch/arm/boards/guf-vincell/flash_header.c b/arch/arm/boards/guf-vincell/flash_header.c
new file mode 100644
index 0000000..df480d2
--- /dev/null
+++ b/arch/arm/boards/guf-vincell/flash_header.c
@@ -0,0 +1,41 @@
+/*
+ * Copyright (C) 2011 Marc Kleine-Budde <mkl@pengutronix.de>
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
+ */
+
+#include <common.h>
+#include <sizes.h>
+#include <asm/byteorder.h>
+#include <asm/barebox-arm-head.h>
+#include <mach/imx-flash-header.h>
+
+void __naked __flash_header_start go(void)
+{
+	barebox_arm_head();
+}
+
+#define APP_DEST	0xf8020000
+
+struct imx_flash_header_v2 __flash_header_section flash_header = {
+	.header.tag		= IVT_HEADER_TAG,
+	.header.length		= cpu_to_be16(32),
+	.header.version		= IVT_VERSION,
+
+	.entry			= APP_DEST + 0x1000,
+	.dcd_ptr		= APP_DEST + 0x400 + offsetof(struct imx_flash_header_v2, dcd),
+	.boot_data_ptr		= APP_DEST + 0x400 + offsetof(struct imx_flash_header_v2, boot_data),
+	.self			= APP_DEST + 0x400,
+
+	.boot_data.start	= APP_DEST,
+	.boot_data.size		= DCD_BAREBOX_SIZE,
+};
diff --git a/arch/arm/boards/guf-vincell/lowlevel.c b/arch/arm/boards/guf-vincell/lowlevel.c
new file mode 100644
index 0000000..2541117
--- /dev/null
+++ b/arch/arm/boards/guf-vincell/lowlevel.c
@@ -0,0 +1,164 @@
+#include <common.h>
+#include <io.h>
+#include <init.h>
+#include <mach/imx53-regs.h>
+#include <mach/imx5.h>
+#include <mach/iomux-v3.h>
+#include <mach/esdctl-v4.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+#include <io.h>
+
+void blink(void)
+{
+	volatile int i;
+
+	writel(0x1, 0x53fa82a8);
+	writel(0x2, 0x53f88004);
+
+	while (1) {
+		for (i = 0; i < 1000000; i++);
+		writel(0x2, 0x53f88000);
+		for (i = 0; i < 1000000; i++);
+		writel(0x0, 0x53f88000);
+	}
+}
+
+#define IOMUX_PADCTL_DDRI_DDR (1 << 9)
+
+#define IOMUX_PADCTL_DDRDSE(x)	((x) << 19)
+#define IOMUX_PADCTL_DDRSEL(x)	((x) << 25)
+
+#define IOMUXC_SW_PAD_CTL_PAD_DRAM_DQM3		0x554
+#define IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS3	0x558
+#define IOMUXC_SW_PAD_CTL_PAD_DRAM_DQM2		0x560
+#define IOMUXC_SW_PAD_CTL_PAD_DRAM_SDODT1	0x564
+#define IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS2	0x568
+#define IOMUXC_SW_PAD_CTL_PAD_DRAM_SDCLK_1	0x570
+#define IOMUXC_SW_PAD_CTL_PAD_DRAM_CAS		0x574
+#define IOMUXC_SW_PAD_CTL_PAD_DRAM_SDCLK_0	0x578
+#define IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS0	0x57c
+#define IOMUXC_SW_PAD_CTL_PAD_DRAM_SDODT0	0x580
+#define IOMUXC_SW_PAD_CTL_PAD_DRAM_RAS		0x588
+#define IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS1	0x590
+#define IOMUXC_SW_PAD_CTL_PAD_DRAM_DQM1		0x594
+#define IOMUXC_SW_PAD_CTL_PAD_DRAM_DQM0		0x584
+#define IOMUXC_SW_PAD_CTL_GRP_ADDDS		0x6f0
+#define IOMUXC_SW_PAD_CTL_GRP_DDRMODE_CTL	0x6f4
+#define IOMUXC_SW_PAD_CTL_GRP_DDRPKE		0x6fc
+#define IOMUXC_SW_PAD_CTL_GRP_DDRHYS		0x710
+#define IOMUXC_SW_PAD_CTL_GRP_DDRMODE		0x714
+#define IOMUXC_SW_PAD_CTL_GRP_B0DS		0x718
+#define IOMUXC_SW_PAD_CTL_GRP_B1DS		0x71c
+#define IOMUXC_SW_PAD_CTL_GRP_CTLDS		0x720
+#define IOMUXC_SW_PAD_CTL_GRP_DDR_TYPE		0x724
+#define IOMUXC_SW_PAD_CTL_GRP_B2DS		0x728
+#define IOMUXC_SW_PAD_CTL_GRP_B3DS		0x72c
+
+
+static void configure_dram_iomux(void)
+{
+	void __iomem *iomux = (void *)MX53_IOMUXC_BASE_ADDR;
+	u32 r1, r2, r4, r5, r6;
+
+	/* define the INPUT mode for DRAM_D[31:0] */
+	writel(0, iomux + IOMUXC_SW_PAD_CTL_GRP_DDRMODE);
+
+	/*
+	 * define the INPUT mode for SDQS[3:0]
+	 * (Freescale's documentation suggests DDR-mode for the
+	 * control line, but their source actually uses CMOS)
+	 */
+	writel(IOMUX_PADCTL_DDRI_DDR, iomux + IOMUXC_SW_PAD_CTL_GRP_DDRMODE_CTL);
+
+	r1 = IOMUX_PADCTL_DDRDSE(5);
+	r2 = IOMUX_PADCTL_DDRDSE(5) | PAD_CTL_PUE;
+	r4 = IOMUX_PADCTL_DDRSEL(2);
+	r5 = IOMUX_PADCTL_DDRDSE(5) | PAD_CTL_PKE | PAD_CTL_PUE | IOMUX_PADCTL_DDRI_DDR | PAD_CTL_PUS_47K_UP;
+	r6 = IOMUX_PADCTL_DDRDSE(4);
+
+	/*
+	 * this will adisable the Pull/Keeper for DRAM_x pins EXCEPT,
+	 * for DRAM_SDQS[3:0] and DRAM_SDODT[1:0]
+	 */
+	writel(0, iomux + IOMUXC_SW_PAD_CTL_GRP_DDRPKE);
+
+	/* set global drive strength for all DRAM_x pins */
+	writel(r4, iomux + IOMUXC_SW_PAD_CTL_GRP_DDR_TYPE);
+
+	/* set data dqs dqm drive strength */
+	writel(r6, iomux + IOMUXC_SW_PAD_CTL_GRP_B0DS);
+	writel(r6, iomux + IOMUXC_SW_PAD_CTL_PAD_DRAM_DQM0);
+	writel(r5, iomux + IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS0);
+
+	writel(r1, iomux + IOMUXC_SW_PAD_CTL_GRP_B1DS);
+	writel(r1, iomux + IOMUXC_SW_PAD_CTL_PAD_DRAM_DQM1);
+	writel(r5, iomux + IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS1);
+
+	writel(r6, iomux + IOMUXC_SW_PAD_CTL_GRP_B2DS);
+	writel(r6, iomux + IOMUXC_SW_PAD_CTL_PAD_DRAM_DQM2);
+	writel(r5, iomux + IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS2);
+
+	writel(r1, iomux + IOMUXC_SW_PAD_CTL_GRP_B3DS);
+	writel(r1, iomux + IOMUXC_SW_PAD_CTL_PAD_DRAM_DQM3);
+	writel(r5, iomux + IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS3);
+
+	/* SDCLK pad drive strength control options */
+	writel(r1, iomux + IOMUXC_SW_PAD_CTL_PAD_DRAM_SDCLK_0);
+	writel(r1, iomux + IOMUXC_SW_PAD_CTL_PAD_DRAM_SDCLK_1);
+
+	/* Control and addr bus pad drive strength control options */
+	writel(r1, iomux + IOMUXC_SW_PAD_CTL_PAD_DRAM_RAS);
+	writel(r1, iomux + IOMUXC_SW_PAD_CTL_PAD_DRAM_CAS);
+	writel(r1, iomux + IOMUXC_SW_PAD_CTL_GRP_ADDDS);
+	writel(r1, iomux + IOMUXC_SW_PAD_CTL_GRP_CTLDS);
+	writel(r2, iomux + IOMUXC_SW_PAD_CTL_PAD_DRAM_SDODT0);
+	writel(r2, iomux + IOMUXC_SW_PAD_CTL_PAD_DRAM_SDODT1);
+
+	/*
+	 * enable hysteresis on input pins
+	 * (Freescale's documentation suggests that enable hysteresis
+	 * would be better, but their source-code doesn't)
+	 */
+	writel(PAD_CTL_HYS, iomux + IOMUXC_SW_PAD_CTL_GRP_DDRHYS);
+}
+
+void disable_watchdog(void)
+{
+	/*
+	 * configure WDOG to generate external reset on trigger
+	 * and disable power down counter
+	 */
+	writew(0x38, MX53_WDOG1_BASE_ADDR);
+	writew(0x0, MX53_WDOG1_BASE_ADDR + 8);
+	writew(0x38, MX53_WDOG2_BASE_ADDR);
+	writew(0x0, MX53_WDOG2_BASE_ADDR + 8);
+}
+
+void sdram_init(void);
+
+void __bare_init __naked reset(void)
+{
+	u32 r;
+
+	common_reset();
+
+	/* Skip SDRAM initialization if we run from RAM */
+	r = get_pc();
+	if (r > 0x70000000 && r < 0xf0000000)
+		board_init_lowlevel_return();
+
+	/* Setup a preliminary stack */
+	r = 0xf8000000 + 0x60000 - 16;
+	__asm__ __volatile__("mov sp, %0" : : "r"(r));
+
+	disable_watchdog();
+
+	configure_dram_iomux();
+
+	imx5_init_lowlevel();
+
+	imx_esdctlv4_init();
+
+	board_init_lowlevel_return();
+}
diff --git a/arch/arm/configs/vincell_defconfig b/arch/arm/configs/vincell_defconfig
new file mode 100644
index 0000000..ac1f877
--- /dev/null
+++ b/arch/arm/configs/vincell_defconfig
@@ -0,0 +1,82 @@
+CONFIG_ARCH_IMX=y
+CONFIG_ARCH_IMX53=y
+CONFIG_MACH_GUF_VINCELL=y
+CONFIG_IMX_IIM=y
+CONFIG_IMX_IIM_FUSE_BLOW=y
+CONFIG_THUMB2_BAREBOX=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_UNWIND=y
+CONFIG_PBL_IMAGE=y
+CONFIG_MMU=y
+CONFIG_TEXT_BASE=0x7fe00000
+CONFIG_MALLOC_SIZE=0x2000000
+CONFIG_MALLOC_TLSF=y
+CONFIG_KALLSYMS=y
+CONFIG_LONGHELP=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/guf-vincell/env"
+CONFIG_DEBUG_INFO=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIME=y
+CONFIG_CMD_DIRNAME=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_READLINK=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_BAREBOX_UPDATE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_CLK=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_NFS=y
+CONFIG_NET_PING=y
+CONFIG_NET_RESOLV=y
+CONFIG_DRIVER_NET_FEC_IMX=y
+# CONFIG_SPI is not set
+CONFIG_I2C=y
+CONFIG_I2C_IMX=y
+CONFIG_MTD=y
+CONFIG_MTD_RAW_DEVICE=y
+CONFIG_NAND=y
+# CONFIG_NAND_ECC_SOFT is not set
+# CONFIG_NAND_ECC_HW_SYNDROME is not set
+# CONFIG_NAND_ECC_HW_NONE is not set
+CONFIG_NAND_IMX=y
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_IMX_ESDHC=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 548b107..1bc2e24 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -28,6 +28,7 @@ config ARCH_TEXT_BASE
 	default 0x97f00000 if MACH_CCMX51
 	default 0x4fc00000 if MACH_SABRELITE
 	default 0x8fe00000 if MACH_TX53
+	default 0x7fc00000 if MACH_GUF_VINCELL
 
 config BOARDINFO
 	default "Eukrea CPUIMX25" if MACH_EUKREA_CPUIMX25
@@ -55,6 +56,7 @@ config BOARDINFO
 	default "ConnectCore i.MX51" if MACH_CCMX51
 	default "Sabre Lite" if MACH_SABRELITE
 	default "Ka-Ro tx53" if MACH_TX53
+	default "Garz+Fricke Vincell" if MACH_GUF_VINCELL
 
 choice
 	prompt "Select boot mode"
@@ -469,6 +471,11 @@ config MACH_TX53
 	help
 	  Say Y here if you are using the Ka-Ro tx53 board
 
+config MACH_GUF_VINCELL
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
+	select MACH_HAS_LOWLEVEL_INIT
+	bool "Garz-Fricke Vincell"
+
 endchoice
 
 if MACH_TX53
@@ -478,7 +485,9 @@ config TX53_REV_1011
 	bool "1011"
 config TX53_REV_XX30
 	bool "8030 / 1030"
+
 endchoice
+
 endif
 
 endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
