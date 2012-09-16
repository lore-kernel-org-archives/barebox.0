Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TDAeN-0006HB-09
 for barebox@lists.infradead.org; Sun, 16 Sep 2012 08:56:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 16 Sep 2012 10:56:20 +0200
Message-Id: <1347785781-13201-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1347785781-13201-1-git-send-email-s.hauer@pengutronix.de>
References: <1347785781-13201-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ARM i.MX: Add Ka-Ro TX53 board support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile                                |    1 +
 arch/arm/boards/karo-tx53/Makefile               |    2 +
 arch/arm/boards/karo-tx53/board.c                |  240 ++++++++++++++++++++++
 arch/arm/boards/karo-tx53/config.h               |   24 +++
 arch/arm/boards/karo-tx53/env/init/bootargs-base |    8 +
 arch/arm/boards/karo-tx53/env/init/hostname      |    8 +
 arch/arm/boards/karo-tx53/flash_header.c         |  147 +++++++++++++
 arch/arm/mach-imx/Kconfig                        |    8 +
 8 files changed, 438 insertions(+)
 create mode 100644 arch/arm/boards/karo-tx53/Makefile
 create mode 100644 arch/arm/boards/karo-tx53/board.c
 create mode 100644 arch/arm/boards/karo-tx53/config.h
 create mode 100644 arch/arm/boards/karo-tx53/env/init/bootargs-base
 create mode 100644 arch/arm/boards/karo-tx53/env/init/hostname
 create mode 100644 arch/arm/boards/karo-tx53/flash_header.c

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 8e660be..14e4d6a 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -141,6 +141,7 @@ board-$(CONFIG_MACH_TOSHIBA_AC100)		:= toshiba-ac100
 board-$(CONFIG_MACH_CCMX51)			:= ccxmx51
 board-$(CONFIG_MACH_TINY210)			:= friendlyarm-tiny210
 board-$(CONFIG_MACH_SABRELITE)			:= freescale-mx6-sabrelite
+board-$(CONFIG_MACH_TX53)			:= karo-tx53
 
 machdirs := $(patsubst %,arch/arm/mach-%/,$(machine-y))
 
diff --git a/arch/arm/boards/karo-tx53/Makefile b/arch/arm/boards/karo-tx53/Makefile
new file mode 100644
index 0000000..b56ce7f
--- /dev/null
+++ b/arch/arm/boards/karo-tx53/Makefile
@@ -0,0 +1,2 @@
+obj-y += board.o
+obj-y += flash_header.o
diff --git a/arch/arm/boards/karo-tx53/board.c b/arch/arm/boards/karo-tx53/board.c
new file mode 100644
index 0000000..c8509be
--- /dev/null
+++ b/arch/arm/boards/karo-tx53/board.c
@@ -0,0 +1,240 @@
+/*
+ * Copyright (C) 2012 Sascha Hauer, Pengutronix
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
+
+#include <generated/mach-types.h>
+
+#include <mach/imx-regs.h>
+#include <mach/iomux-mx53.h>
+#include <mach/devices-imx53.h>
+#include <mach/generic.h>
+#include <mach/gpio.h>
+#include <mach/imx-nand.h>
+#include <mach/iim.h>
+#include <mach/imx5.h>
+
+#include <asm/armlinux.h>
+#include <io.h>
+#include <asm/mmu.h>
+
+static struct fec_platform_data fec_info = {
+	.xcv_type = RMII,
+};
+
+static iomux_v3_cfg_t tx53_pads[] = {
+	/* UART1 */
+	MX53_PAD_PATA_DIOW__UART1_TXD_MUX,
+	MX53_PAD_PATA_DMACK__UART1_RXD_MUX,
+
+	MX53_PAD_PATA_DMARQ__UART2_TXD_MUX,
+	MX53_PAD_PATA_BUFFER_EN__UART2_RXD_MUX,
+
+	MX53_PAD_PATA_CS_0__UART3_TXD_MUX,
+	MX53_PAD_PATA_CS_1__UART3_RXD_MUX,
+
+	/* setup FEC PHY pins for GPIO function */
+	MX53_PAD_FEC_REF_CLK__GPIO1_23,
+	MX53_PAD_FEC_MDC__GPIO1_31,
+	MX53_PAD_FEC_MDIO__GPIO1_22,
+	MX53_PAD_FEC_RXD0__GPIO1_27,
+	MX53_PAD_FEC_RXD1__GPIO1_26,
+	MX53_PAD_FEC_RX_ER__GPIO1_24,
+	MX53_PAD_FEC_TX_EN__GPIO1_28,
+	MX53_PAD_FEC_TXD0__GPIO1_30,
+	MX53_PAD_FEC_TXD1__GPIO1_29,
+	MX53_PAD_FEC_CRS_DV__GPIO1_25,
+
+	/* FEC PHY reset */
+	MX53_PAD_PATA_DA_0__GPIO7_6,
+	/* FEC PHY power */
+	MX53_PAD_EIM_D20__GPIO3_20,
+
+	/* SD1 */
+	MX53_PAD_SD1_CMD__ESDHC1_CMD,
+	MX53_PAD_SD1_CLK__ESDHC1_CLK,
+	MX53_PAD_SD1_DATA0__ESDHC1_DAT0,
+	MX53_PAD_SD1_DATA1__ESDHC1_DAT1,
+	MX53_PAD_SD1_DATA2__ESDHC1_DAT2,
+	MX53_PAD_SD1_DATA3__ESDHC1_DAT3,
+
+	/* SD1_CD */
+	MX53_PAD_EIM_D24__GPIO3_24,
+
+	MX53_PAD_GPIO_3__I2C3_SCL,
+	MX53_PAD_GPIO_6__I2C3_SDA,
+
+	MX53_PAD_CSI0_DAT12__IPU_CSI0_D_12,
+	MX53_PAD_CSI0_DAT13__IPU_CSI0_D_13,
+	MX53_PAD_CSI0_DAT14__IPU_CSI0_D_14,
+	MX53_PAD_CSI0_DAT15__IPU_CSI0_D_15,
+	MX53_PAD_CSI0_DAT16__IPU_CSI0_D_16,
+	MX53_PAD_CSI0_DAT17__IPU_CSI0_D_17,
+	MX53_PAD_CSI0_DAT18__IPU_CSI0_D_18,
+	MX53_PAD_CSI0_DAT19__IPU_CSI0_D_19,
+	MX53_PAD_CSI0_VSYNC__IPU_CSI0_VSYNC,
+	MX53_PAD_CSI0_MCLK__IPU_CSI0_HSYNC,
+	MX53_PAD_CSI0_PIXCLK__IPU_CSI0_PIXCLK,
+};
+
+static int tx53_mem_init(void)
+{
+	arm_add_mem_device("ram0", 0x70000000, SZ_1G);
+
+	return 0;
+}
+mem_initcall(tx53_mem_init);
+
+#define TX53_SD1_CD			IMX_GPIO_NR(3, 24)
+
+static struct esdhc_platform_data tx53_sd1_data = {
+	.cd_gpio = TX53_SD1_CD,
+	.cd_type = ESDHC_CD_GPIO,
+	.wp_type = ESDHC_WP_NONE,
+};
+
+struct imx_nand_platform_data nand_info = {
+	.width		= 1,
+	.hw_ecc		= 1,
+	.flash_bbt	= 1,
+};
+
+#define FEC_POWER_GPIO		IMX_GPIO_NR(3, 20)
+#define FEC_RESET_GPIO		IMX_GPIO_NR(7, 6)
+
+static struct tx53_fec_gpio_setup {
+	iomux_v3_cfg_t pad;
+	unsigned gpio:9,
+		dir:1,
+		level:1;
+} tx53_fec_gpios[] = {
+	{ MX53_PAD_PATA_DA_0__GPIO7_6, FEC_RESET_GPIO,	   1, 0, }, /* PHY reset */
+	{ MX53_PAD_EIM_D20__GPIO3_20, FEC_POWER_GPIO,	   1, 1, }, /* PHY power enable */
+	{ MX53_PAD_FEC_REF_CLK__GPIO1_23, IMX_GPIO_NR(1, 23), 0, }, /* ENET_CLK */
+	{ MX53_PAD_FEC_MDC__GPIO1_31, IMX_GPIO_NR(1, 31), 1, 0, }, /* MDC */
+	{ MX53_PAD_FEC_MDIO__GPIO1_22, IMX_GPIO_NR(1, 22), 1, 0, }, /* MDIO */
+	{ MX53_PAD_FEC_RXD0__GPIO1_27, IMX_GPIO_NR(1, 27), 1, 1, }, /* Mode0/RXD0 */
+	{ MX53_PAD_FEC_RXD1__GPIO1_26, IMX_GPIO_NR(1, 26), 1, 1, }, /* Mode1/RXD1 */
+	{ MX53_PAD_FEC_RX_ER__GPIO1_24, IMX_GPIO_NR(1, 24), 0, }, /* RX_ER */
+	{ MX53_PAD_FEC_TX_EN__GPIO1_28, IMX_GPIO_NR(1, 28), 1, 0, }, /* TX_EN */
+	{ MX53_PAD_FEC_TXD0__GPIO1_30, IMX_GPIO_NR(1, 30), 1, 0, }, /* TXD0 */
+	{ MX53_PAD_FEC_TXD1__GPIO1_29, IMX_GPIO_NR(1, 29), 1, 0, }, /* TXD1 */
+	{ MX53_PAD_FEC_CRS_DV__GPIO1_25, IMX_GPIO_NR(1, 25), 1, 1, }, /* Mode2/CRS_DV */
+};
+
+static iomux_v3_cfg_t tx53_fec_pads[] = {
+	MX53_PAD_FEC_REF_CLK__FEC_TX_CLK,
+	MX53_PAD_FEC_MDC__FEC_MDC,
+	MX53_PAD_FEC_MDIO__FEC_MDIO,
+	MX53_PAD_FEC_RXD0__FEC_RDATA_0,
+	MX53_PAD_FEC_RXD1__FEC_RDATA_1,
+	MX53_PAD_FEC_RX_ER__FEC_RX_ER,
+	MX53_PAD_FEC_TX_EN__FEC_TX_EN,
+	MX53_PAD_FEC_TXD0__FEC_TDATA_0,
+	MX53_PAD_FEC_TXD1__FEC_TDATA_1,
+	MX53_PAD_FEC_CRS_DV__FEC_RX_DV,
+};
+
+static inline void tx53_fec_init(void)
+{
+	int i;
+
+	/* Configure LAN8700 pads as GPIO and set up
+	 * necessary strap options for PHY
+	 */
+	for (i = 0; i < ARRAY_SIZE(tx53_fec_gpios); i++) {
+		struct tx53_fec_gpio_setup *gs = &tx53_fec_gpios[i];
+
+		if (gs->dir)
+			gpio_direction_output(gs->gpio, gs->level);
+		else
+			gpio_direction_input(gs->gpio);
+
+		mxc_iomux_v3_setup_pad(gs->pad);
+	}
+
+	/*
+	 *Turn on phy power, leave in reset state
+	 */
+	gpio_set_value(FEC_POWER_GPIO, 1);
+
+	/*
+	 * Wait some time to let the phy activate the internal regulator
+	 */
+	mdelay(10);
+
+	/*
+	 * Deassert reset, phy latches the rest of bootstrap pins
+	 */
+	gpio_set_value(FEC_RESET_GPIO, 1);
+
+	/* LAN7800 has an internal Power On Reset (POR) signal (OR'ed with
+	 * the external RESET signal) which is deactivated 21ms after
+	 * power on and latches the strap options.
+	 * Delay for 22ms to ensure, that the internal POR is inactive
+	 * before reconfiguring the strap pins.
+	 */
+	mdelay(22);
+
+	/*
+	 * The phy is ready, now configure imx51 pads for fec operation
+	 */
+	mxc_iomux_v3_setup_multiple_pads(tx53_fec_pads,
+			ARRAY_SIZE(tx53_fec_pads));
+}
+
+static int tx53_devices_init(void)
+{
+	imx53_iim_register_fec_ethaddr();
+	tx53_fec_init();
+	imx53_add_fec(&fec_info);
+	imx53_add_mmc0(&tx53_sd1_data);
+	imx53_add_nand(&nand_info);
+
+	armlinux_set_bootparams((void *)0x70000100);
+	armlinux_set_architecture(MACH_TYPE_TX53);
+
+	return 0;
+}
+
+device_initcall(tx53_devices_init);
+
+static int tx53_part_init(void)
+{
+	devfs_add_partition("disk0", 0x00000, SZ_512K, DEVFS_PARTITION_FIXED, "self0");
+	devfs_add_partition("disk0", SZ_512K, SZ_1M, DEVFS_PARTITION_FIXED, "env0");
+
+	return 0;
+}
+late_initcall(tx53_part_init);
+
+static int tx53_console_init(void)
+{
+	mxc_iomux_v3_setup_multiple_pads(tx53_pads, ARRAY_SIZE(tx53_pads));
+
+	imx53_init_lowlevel(1000);
+
+	imx53_add_uart0();
+	return 0;
+}
+console_initcall(tx53_console_init);
diff --git a/arch/arm/boards/karo-tx53/config.h b/arch/arm/boards/karo-tx53/config.h
new file mode 100644
index 0000000..b7effe5
--- /dev/null
+++ b/arch/arm/boards/karo-tx53/config.h
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
diff --git a/arch/arm/boards/karo-tx53/env/init/bootargs-base b/arch/arm/boards/karo-tx53/env/init/bootargs-base
new file mode 100644
index 0000000..d869754
--- /dev/null
+++ b/arch/arm/boards/karo-tx53/env/init/bootargs-base
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "Base bootargs"
+	exit
+fi
+
+global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/karo-tx53/env/init/hostname b/arch/arm/boards/karo-tx53/env/init/hostname
new file mode 100644
index 0000000..2de9130
--- /dev/null
+++ b/arch/arm/boards/karo-tx53/env/init/hostname
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "hostname"
+	exit
+fi
+
+global.hostname=tx53
diff --git a/arch/arm/boards/karo-tx53/flash_header.c b/arch/arm/boards/karo-tx53/flash_header.c
new file mode 100644
index 0000000..9b97fab
--- /dev/null
+++ b/arch/arm/boards/karo-tx53/flash_header.c
@@ -0,0 +1,147 @@
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
+#include <asm/byteorder.h>
+#include <mach/imx-flash-header.h>
+#include <asm/barebox-arm-head.h>
+
+void __naked __flash_header_start go(void)
+{
+	barebox_arm_head();
+}
+
+/*
+ * FIXME: These are the dcd values for a Ka-Ro TX53 1011 which
+ *        is not in production. It has 1GB DDR2 memory.
+ */
+struct imx_dcd_v2_entry __dcd_entry_section dcd_entry[] = {
+	{ .addr = cpu_to_be32(0x53fd406c), .val = cpu_to_be32(0xffffffff), },
+	{ .addr = cpu_to_be32(0x53fd4070), .val = cpu_to_be32(0xffffffff), },
+	{ .addr = cpu_to_be32(0x53fd4074), .val = cpu_to_be32(0xffffffff), },
+	{ .addr = cpu_to_be32(0x53fd4078), .val = cpu_to_be32(0xffffffff), },
+	{ .addr = cpu_to_be32(0x53fd407c), .val = cpu_to_be32(0xffffffff), },
+	{ .addr = cpu_to_be32(0x53fd4080), .val = cpu_to_be32(0xffffffff), },
+	{ .addr = cpu_to_be32(0x53fd4088), .val = cpu_to_be32(0xffffffff), },
+	{ .addr = cpu_to_be32(0x53fa8174), .val = cpu_to_be32(0x00000011), },
+	{ .addr = cpu_to_be32(0x63fd800c), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa8554), .val = cpu_to_be32(0x00200000), },
+	{ .addr = cpu_to_be32(0x53fa8560), .val = cpu_to_be32(0x00200000), },
+	{ .addr = cpu_to_be32(0x53fa8594), .val = cpu_to_be32(0x00200000), },
+	{ .addr = cpu_to_be32(0x53fa8584), .val = cpu_to_be32(0x00200000), },
+	{ .addr = cpu_to_be32(0x53fa8558), .val = cpu_to_be32(0x00200040), },
+	{ .addr = cpu_to_be32(0x53fa8568), .val = cpu_to_be32(0x00200040), },
+	{ .addr = cpu_to_be32(0x53fa8590), .val = cpu_to_be32(0x00200040), },
+	{ .addr = cpu_to_be32(0x53fa857c), .val = cpu_to_be32(0x00200040), },
+	{ .addr = cpu_to_be32(0x53fa8564), .val = cpu_to_be32(0x00200040), },
+	{ .addr = cpu_to_be32(0x53fa8580), .val = cpu_to_be32(0x00200040), },
+	{ .addr = cpu_to_be32(0x53fa8570), .val = cpu_to_be32(0x00200000), },
+	{ .addr = cpu_to_be32(0x53fa8578), .val = cpu_to_be32(0x00200000), },
+	{ .addr = cpu_to_be32(0x53fa872c), .val = cpu_to_be32(0x00200000), },
+	{ .addr = cpu_to_be32(0x53fa8728), .val = cpu_to_be32(0x00200000), },
+	{ .addr = cpu_to_be32(0x53fa871c), .val = cpu_to_be32(0x00200000), },
+	{ .addr = cpu_to_be32(0x53fa8718), .val = cpu_to_be32(0x00200000), },
+	{ .addr = cpu_to_be32(0x53fa8574), .val = cpu_to_be32(0x00280000), },
+	{ .addr = cpu_to_be32(0x53fa8588), .val = cpu_to_be32(0x00280000), },
+	{ .addr = cpu_to_be32(0x53fa86f0), .val = cpu_to_be32(0x00280000), },
+	{ .addr = cpu_to_be32(0x53fa8720), .val = cpu_to_be32(0x00280000), },
+	{ .addr = cpu_to_be32(0x53fa86fc), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa86f4), .val = cpu_to_be32(0x00000200), },
+	{ .addr = cpu_to_be32(0x53fa8714), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa8724), .val = cpu_to_be32(0x06000000), },
+	{ .addr = cpu_to_be32(0x63fd9088), .val = cpu_to_be32(0x36353b38), },
+	{ .addr = cpu_to_be32(0x63fd9090), .val = cpu_to_be32(0x49434942), },
+	{ .addr = cpu_to_be32(0x63fd90f8), .val = cpu_to_be32(0x00000800), },
+	{ .addr = cpu_to_be32(0x63fd907c), .val = cpu_to_be32(0x01350138), },
+	{ .addr = cpu_to_be32(0x63fd9080), .val = cpu_to_be32(0x01380139), },
+	{ .addr = cpu_to_be32(0x63fd9018), .val = cpu_to_be32(0x00001710), },
+	{ .addr = cpu_to_be32(0x63fd9000), .val = cpu_to_be32(0x84110000), },
+	{ .addr = cpu_to_be32(0x63fd900c), .val = cpu_to_be32(0x4d5122d2), },
+	{ .addr = cpu_to_be32(0x63fd9010), .val = cpu_to_be32(0xb6f18a22), },
+	{ .addr = cpu_to_be32(0x63fd9014), .val = cpu_to_be32(0x00c700db), },
+	{ .addr = cpu_to_be32(0x63fd902c), .val = cpu_to_be32(0x000026d2), },
+	{ .addr = cpu_to_be32(0x63fd9030), .val = cpu_to_be32(0x009f000e), },
+	{ .addr = cpu_to_be32(0x63fd9008), .val = cpu_to_be32(0x12272000), },
+	{ .addr = cpu_to_be32(0x63fd9004), .val = cpu_to_be32(0x00030012), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x04008010), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00008020), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00008020), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x0a528030), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x03868031), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00068031), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00008032), },
+	{ .addr = cpu_to_be32(0x63fd9020), .val = cpu_to_be32(0x00005800), },
+	{ .addr = cpu_to_be32(0x63fd9058), .val = cpu_to_be32(0x00033332), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00448031), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x04008018), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x63fd9040), .val = cpu_to_be32(0x04b80003), },
+	{ .addr = cpu_to_be32(0x53fa8004), .val = cpu_to_be32(0x00194005), },
+	{ .addr = cpu_to_be32(0x53fa819c), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa81a0), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa81a4), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa81a8), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa81ac), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa81b0), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa81b4), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa81b8), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa81dc), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa81e0), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa8228), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa822c), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa8230), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa8234), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa8238), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa84ec), .val = cpu_to_be32(0x000000e4), },
+	{ .addr = cpu_to_be32(0x53fa84f0), .val = cpu_to_be32(0x000000e4), },
+	{ .addr = cpu_to_be32(0x53fa84f4), .val = cpu_to_be32(0x000000e4), },
+	{ .addr = cpu_to_be32(0x53fa84f8), .val = cpu_to_be32(0x000000e4), },
+	{ .addr = cpu_to_be32(0x53fa84fc), .val = cpu_to_be32(0x000000e4), },
+	{ .addr = cpu_to_be32(0x53fa8500), .val = cpu_to_be32(0x000000e4), },
+	{ .addr = cpu_to_be32(0x53fa8504), .val = cpu_to_be32(0x000000e4), },
+	{ .addr = cpu_to_be32(0x53fa8508), .val = cpu_to_be32(0x000000e4), },
+	{ .addr = cpu_to_be32(0x53fa852c), .val = cpu_to_be32(0x00000004), },
+	{ .addr = cpu_to_be32(0x53fa8530), .val = cpu_to_be32(0x00000004), },
+	{ .addr = cpu_to_be32(0x53fa85a0), .val = cpu_to_be32(0x00000004), },
+	{ .addr = cpu_to_be32(0x53fa85a4), .val = cpu_to_be32(0x00000004), },
+	{ .addr = cpu_to_be32(0x53fa85a8), .val = cpu_to_be32(0x000000e4), },
+	{ .addr = cpu_to_be32(0x53fa85ac), .val = cpu_to_be32(0x000000e4), },
+	{ .addr = cpu_to_be32(0x53fa85b0), .val = cpu_to_be32(0x00000004), },
+};
+
+#define APP_DEST	0x70000000
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
+
+	.dcd.header.tag		= DCD_HEADER_TAG,
+	.dcd.header.length	= cpu_to_be16(sizeof(struct imx_dcd) + sizeof(dcd_entry)),
+	.dcd.header.version	= DCD_VERSION,
+
+	.dcd.command.tag	= DCD_COMMAND_WRITE_TAG,
+	.dcd.command.length	= cpu_to_be16(sizeof(struct imx_dcd_command) + sizeof(dcd_entry)),
+	.dcd.command.param	= DCD_COMMAND_WRITE_PARAM,
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index ce5edaa..7ab812a 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -27,6 +27,7 @@ config ARCH_TEXT_BASE
 	default 0x4fc00000 if MACH_MX6Q_ARM2
 	default 0x97f00000 if MACH_CCMX51
 	default 0x4fc00000 if MACH_SABRELITE
+	default 0x7fe00000 if MACH_TX53
 
 config BOARDINFO
 	default "Eukrea CPUIMX25" if MACH_EUKREA_CPUIMX25
@@ -53,6 +54,7 @@ config BOARDINFO
 	default "Freescale i.MX6q armadillo2" if MACH_MX6Q_ARM2
 	default "ConnectCore i.MX51" if MACH_CCMX51
 	default "Sabre Lite" if MACH_SABRELITE
+	default "Ka-Ro tx53" if MACH_TX53
 
 choice
 	prompt "Select boot mode"
@@ -459,6 +461,12 @@ config MACH_TQMA53_1GB_RAM
 	help
 	  use 1GiB of SDRAM (512MiB otherwise)
 
+config MACH_TX53
+	bool "Ka-Ro TX53"
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
+	help
+	  Say Y here if you are using the Ka-Ro tx53 board
+
 endchoice
 
 endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
