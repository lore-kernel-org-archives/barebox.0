Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo1.mail-out.ovh.net ([178.32.119.250]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RXaOA-0000pX-RT
 for barebox@lists.infradead.org; Mon, 05 Dec 2011 15:23:33 +0000
Received: from mail99.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id E4779FFB0B8
 for <barebox@lists.infradead.org>; Mon,  5 Dec 2011 16:23:36 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon,  5 Dec 2011 16:19:03 +0100
Message-Id: <1323098343-31863-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20111205151439.GC9192@game.jcrosoft.org>
References: <20111205151439.GC9192@game.jcrosoft.org>
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
Subject: [PATCH 4/4] imx: add mx53 SMD board support
To: barebox@lists.infradead.org

with:

 - uarts
 - sd and emmc
 - fec

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/Makefile                                 |    1 +
 arch/arm/boards/freescale-mx53-smd/Makefile       |    2 +
 arch/arm/boards/freescale-mx53-smd/board.c        |  170 +++++++++++++++++++++
 arch/arm/boards/freescale-mx53-smd/config.h       |   24 +++
 arch/arm/boards/freescale-mx53-smd/env/config     |   51 ++++++
 arch/arm/boards/freescale-mx53-smd/flash_header.c |  101 ++++++++++++
 arch/arm/boards/freescale-mx53-smd/mx53-smd.dox   |    4 +
 arch/arm/configs/freescale_mx53_smd_defconfig     |   51 ++++++
 arch/arm/mach-imx/Kconfig                         |    5 +
 arch/arm/mach-imx/include/mach/devices-imx53.h    |    5 +
 10 files changed, 414 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/freescale-mx53-smd/Makefile
 create mode 100644 arch/arm/boards/freescale-mx53-smd/board.c
 create mode 100644 arch/arm/boards/freescale-mx53-smd/config.h
 create mode 100644 arch/arm/boards/freescale-mx53-smd/env/config
 create mode 100644 arch/arm/boards/freescale-mx53-smd/flash_header.c
 create mode 100644 arch/arm/boards/freescale-mx53-smd/mx53-smd.dox
 create mode 100644 arch/arm/configs/freescale_mx53_smd_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 0c42f3d..d2e5378 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -103,6 +103,7 @@ board-$(CONFIG_MACH_CHUMBY)			:= chumby_falconwing
 board-$(CONFIG_MACH_TX28)			:= karo-tx28
 board-$(CONFIG_MACH_FREESCALE_MX51_PDK)		:= freescale-mx51-pdk
 board-$(CONFIG_MACH_FREESCALE_MX53_LOCO)	:= freescale-mx53-loco
+board-$(CONFIG_MACH_FREESCALE_MX53_SMD)		:= freescale-mx53-smd
 board-$(CONFIG_MACH_GUF_CUPID)			:= guf-cupid
 board-$(CONFIG_MACH_MINI2440)			:= mini2440
 board-$(CONFIG_MACH_USB_A9260)			:= usb-a926x
diff --git a/arch/arm/boards/freescale-mx53-smd/Makefile b/arch/arm/boards/freescale-mx53-smd/Makefile
new file mode 100644
index 0000000..b56ce7f
--- /dev/null
+++ b/arch/arm/boards/freescale-mx53-smd/Makefile
@@ -0,0 +1,2 @@
+obj-y += board.o
+obj-y += flash_header.o
diff --git a/arch/arm/boards/freescale-mx53-smd/board.c b/arch/arm/boards/freescale-mx53-smd/board.c
new file mode 100644
index 0000000..325458e
--- /dev/null
+++ b/arch/arm/boards/freescale-mx53-smd/board.c
@@ -0,0 +1,170 @@
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
+#include <mach/imx53.h>
+
+#include <asm/armlinux.h>
+#include <io.h>
+#include <asm/mmu.h>
+
+static struct fec_platform_data fec_info = {
+	.xcv_type = RMII,
+};
+
+static struct pad_desc smd_pads[] = {
+	/* UART1 */
+	MX53_PAD_CSI0_DAT10__UART1_TXD_MUX,
+	MX53_PAD_CSI0_DAT11__UART1_RXD_MUX,
+
+	/* UART2 */
+	MX53_PAD_PATA_BUFFER_EN__UART2_RXD_MUX,
+	MX53_PAD_PATA_DMARQ__UART2_TXD_MUX,
+
+	/* UART3 */
+	MX53_PAD_PATA_CS_0__UART3_TXD_MUX,
+	MX53_PAD_PATA_CS_1__UART3_RXD_MUX,
+	MX53_PAD_PATA_DA_1__UART3_CTS,
+	MX53_PAD_PATA_DA_2__UART3_RTS,
+
+	/* FEC */
+	MX53_PAD_FEC_MDC__FEC_MDC,
+	MX53_PAD_FEC_MDIO__FEC_MDIO,
+	MX53_PAD_FEC_REF_CLK__FEC_TX_CLK,
+	MX53_PAD_FEC_RX_ER__FEC_RX_ER,
+	MX53_PAD_FEC_CRS_DV__FEC_RX_DV,
+	MX53_PAD_FEC_RXD1__FEC_RDATA_1,
+	MX53_PAD_FEC_RXD0__FEC_RDATA_0,
+	MX53_PAD_FEC_TX_EN__FEC_TX_EN,
+	MX53_PAD_FEC_TXD1__FEC_TDATA_1,
+	MX53_PAD_FEC_TXD0__FEC_TDATA_0,
+	/* FEC_nRST */
+	MX53_PAD_PATA_DA_0__GPIO7_6,
+
+	/* SD1 */
+	MX53_PAD_SD1_CMD__ESDHC1_CMD,
+	MX53_PAD_SD1_CLK__ESDHC1_CLK,
+	MX53_PAD_SD1_DATA0__ESDHC1_DAT0,
+	MX53_PAD_SD1_DATA1__ESDHC1_DAT1,
+	MX53_PAD_SD1_DATA2__ESDHC1_DAT2,
+	MX53_PAD_SD1_DATA3__ESDHC1_DAT3,
+	/* SD1_CD */
+	MX53_PAD_EIM_DA13__GPIO3_13,
+	/* SD1_WP */
+	MX53_PAD_KEY_ROW2__GPIO4_11,
+
+	/* SD3 */
+	MX53_PAD_PATA_DATA8__ESDHC3_DAT0,
+	MX53_PAD_PATA_DATA9__ESDHC3_DAT1,
+	MX53_PAD_PATA_DATA10__ESDHC3_DAT2,
+	MX53_PAD_PATA_DATA11__ESDHC3_DAT3,
+	MX53_PAD_PATA_DATA0__ESDHC3_DAT4,
+	MX53_PAD_PATA_DATA1__ESDHC3_DAT5,
+	MX53_PAD_PATA_DATA2__ESDHC3_DAT6,
+	MX53_PAD_PATA_DATA3__ESDHC3_DAT7,
+	MX53_PAD_PATA_IORDY__ESDHC3_CLK,
+	MX53_PAD_PATA_RESET_B__ESDHC3_CMD,
+};
+
+static int smd_mem_init(void)
+{
+	arm_add_mem_device("ram0", 0x70000000, SZ_512M);
+	arm_add_mem_device("ram1", 0xb0000000, SZ_512M);
+
+	return 0;
+}
+mem_initcall(smd_mem_init);
+
+#define SMD_FEC_PHY_RST		IMX_GPIO_NR(7, 6)
+
+static void smd_fec_reset(void)
+{
+	gpio_direction_output(SMD_FEC_PHY_RST, 0);
+	mdelay(1);
+	gpio_set_value(SMD_FEC_PHY_RST, 1);
+}
+
+#define LOCO_SD1_CD			IMX_GPIO_NR(3, 13)
+#define LOCO_SD1_WP			IMX_GPIO_NR(4, 11)
+
+static struct esdhc_platform_data loco_sd1_data = {
+	.cd_gpio = LOCO_SD1_CD,
+	.wp_gpio = LOCO_SD1_WP,
+	.cd_type = ESDHC_CD_GPIO,
+	.wp_type = ESDHC_WP_GPIO,
+};
+
+static struct esdhc_platform_data loco_sd3_data = {
+	.wp_type = ESDHC_WP_NONE,
+	.cd_type = ESDHC_CD_PERMANENT,
+};
+
+static int smd_devices_init(void)
+{
+	imx51_iim_register_fec_ethaddr();
+	imx53_add_fec(&fec_info);
+	imx53_add_mmc0(&loco_sd1_data);
+	imx53_add_mmc2(&loco_sd3_data);
+
+	smd_fec_reset();
+
+	armlinux_set_bootparams((void *)0x70000100);
+	armlinux_set_architecture(MACH_TYPE_MX53_SMD);
+
+	return 0;
+}
+device_initcall(smd_devices_init);
+
+static int smd_part_init(void)
+{
+	devfs_add_partition("disk0", 0x00000, 0x40000, PARTITION_FIXED, "self0");
+	devfs_add_partition("disk0", 0x40000, 0x20000, PARTITION_FIXED, "env0");
+
+	return 0;
+}
+late_initcall(smd_part_init);
+
+static int smd_console_init(void)
+{
+	mxc_iomux_v3_setup_multiple_pads(smd_pads, ARRAY_SIZE(smd_pads));
+
+	mx53_init_lowlevel();
+
+	imx53_add_uart0();
+	imx53_add_uart1();
+	imx53_add_uart2();
+	return 0;
+}
+console_initcall(smd_console_init);
diff --git a/arch/arm/boards/freescale-mx53-smd/config.h b/arch/arm/boards/freescale-mx53-smd/config.h
new file mode 100644
index 0000000..b7effe5
--- /dev/null
+++ b/arch/arm/boards/freescale-mx53-smd/config.h
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
diff --git a/arch/arm/boards/freescale-mx53-smd/env/config b/arch/arm/boards/freescale-mx53-smd/env/config
new file mode 100644
index 0000000..3659a62
--- /dev/null
+++ b/arch/arm/boards/freescale-mx53-smd/env/config
@@ -0,0 +1,51 @@
+#!/bin/sh
+
+machine=loco
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
+# can be either 'nfs', 'tftp', 'nor' or 'nand'
+kernel_loc=tftp
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
+disk_parts="256k(barebox)ro,128k(bareboxenv),4M(kernel),-(root)"
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
diff --git a/arch/arm/boards/freescale-mx53-smd/flash_header.c b/arch/arm/boards/freescale-mx53-smd/flash_header.c
new file mode 100644
index 0000000..490e223
--- /dev/null
+++ b/arch/arm/boards/freescale-mx53-smd/flash_header.c
@@ -0,0 +1,101 @@
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
+
+void __naked __flash_header_start go(void)
+{
+	__asm__ __volatile__("b exception_vectors\n");
+}
+
+struct imx_dcd_v2_entry __dcd_entry_section dcd_entry[] = {
+	{ .addr = cpu_to_be32(0x53fa8554), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8558), .val = cpu_to_be32(0x00300040), },
+	{ .addr = cpu_to_be32(0x53fa8560), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8564), .val = cpu_to_be32(0x00300040), },
+	{ .addr = cpu_to_be32(0x53fa8568), .val = cpu_to_be32(0x00300040), },
+	{ .addr = cpu_to_be32(0x53fa8570), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8574), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8578), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa857c), .val = cpu_to_be32(0x00300040), },
+	{ .addr = cpu_to_be32(0x53fa8580), .val = cpu_to_be32(0x00300040), },
+	{ .addr = cpu_to_be32(0x53fa8584), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8588), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8590), .val = cpu_to_be32(0x00300040), },
+	{ .addr = cpu_to_be32(0x53fa8594), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa86f0), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa86f4), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa86fc), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa8714), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa8718), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa871c), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8720), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8724), .val = cpu_to_be32(0x04000000), },
+	{ .addr = cpu_to_be32(0x53fa8728), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa872c), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x63fd9088), .val = cpu_to_be32(0x35343535), },
+	{ .addr = cpu_to_be32(0x63fd9090), .val = cpu_to_be32(0x4d444c44), },
+	{ .addr = cpu_to_be32(0x63fd907c), .val = cpu_to_be32(0x01370138), },
+	{ .addr = cpu_to_be32(0x63fd9080), .val = cpu_to_be32(0x013b013c), },
+	{ .addr = cpu_to_be32(0x63fd9018), .val = cpu_to_be32(0x00011740), },
+	{ .addr = cpu_to_be32(0x63fd9000), .val = cpu_to_be32(0xc3190000), },
+	{ .addr = cpu_to_be32(0x63fd900c), .val = cpu_to_be32(0x9f5152e3), },
+	{ .addr = cpu_to_be32(0x63fd9010), .val = cpu_to_be32(0xb68e8a63), },
+	{ .addr = cpu_to_be32(0x63fd9014), .val = cpu_to_be32(0x01ff00db), },
+	{ .addr = cpu_to_be32(0x63fd902c), .val = cpu_to_be32(0x000026d2), },
+	{ .addr = cpu_to_be32(0x63fd9030), .val = cpu_to_be32(0x009f0e21), },
+	{ .addr = cpu_to_be32(0x63fd9008), .val = cpu_to_be32(0x12273030), },
+	{ .addr = cpu_to_be32(0x63fd9004), .val = cpu_to_be32(0x0002002d), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00008032), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00008033), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00028031), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x052080b0), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x04008040), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x0000803a), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x0000803b), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00028039), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x05208138), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x04008048), },
+	{ .addr = cpu_to_be32(0x63fd9020), .val = cpu_to_be32(0x00005800), },
+	{ .addr = cpu_to_be32(0x63fd9040), .val = cpu_to_be32(0x04b80003), },
+	{ .addr = cpu_to_be32(0x63fd9058), .val = cpu_to_be32(0x00022227), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00000000), },
+};
+
+#define APP_DEST	CONFIG_TEXT_BASE
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
+	.boot_data.size		= 0x40000,
+
+	.dcd.header.tag		= DCD_HEADER_TAG,
+	.dcd.header.length	= cpu_to_be16(sizeof(struct imx_dcd) + sizeof(dcd_entry)),
+	.dcd.header.version	= DCD_VERSION,
+
+	.dcd.command.tag	= DCD_COMMAND_WRITE_TAG,
+	.dcd.command.length	= cpu_to_be16(sizeof(struct imx_dcd_command) + sizeof(dcd_entry)),
+	.dcd.command.param	= DCD_COMMAND_WRITE_PARAM,
+};
diff --git a/arch/arm/boards/freescale-mx53-smd/mx53-smd.dox b/arch/arm/boards/freescale-mx53-smd/mx53-smd.dox
new file mode 100644
index 0000000..1960508
--- /dev/null
+++ b/arch/arm/boards/freescale-mx53-smd/mx53-smd.dox
@@ -0,0 +1,4 @@
+/** @page board_loco Freescale i.MX53 SMD Board
+
+
+*/
diff --git a/arch/arm/configs/freescale_mx53_smd_defconfig b/arch/arm/configs/freescale_mx53_smd_defconfig
new file mode 100644
index 0000000..1548b05
--- /dev/null
+++ b/arch/arm/configs/freescale_mx53_smd_defconfig
@@ -0,0 +1,51 @@
+CONFIG_ARCH_IMX=y
+CONFIG_ARCH_IMX53=y
+CONFIG_MACH_FREESCALE_MX53_SMD=y
+CONFIG_IMX_IIM=y
+CONFIG_IMX_IIM_FUSE_BLOW=y
+CONFIG_AEABI=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_UNWIND=y
+CONFIG_MMU=y
+CONFIG_TEXT_BASE=0x7ff00000
+CONFIG_MALLOC_SIZE=0x2000000
+CONFIG_KALLSYMS=y
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv arch/arm/boards/freescale-mx53-smd/env/"
+CONFIG_DEBUG_INFO=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_NFS=y
+CONFIG_NET_PING=y
+CONFIG_NET_TFTP=y
+CONFIG_NET_TFTP_PUSH=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_DRIVER_NET_FEC_IMX=y
+# CONFIG_SPI is not set
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_IMX_ESDHC=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 984d9dc..726920f 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -20,6 +20,7 @@ config ARCH_TEXT_BASE
 	default 0xa7e00000 if MACH_NESO
 	default 0x97f00000 if MACH_MX51_PDK
 	default 0x7ff00000 if MACH_MX53_LOCO
+	default 0x7ff00000 if MACH_MX53_SMD
 	default 0x87f00000 if MACH_GUF_CUPID
 	default 0x93d00000 if MACH_TX25
 
@@ -40,6 +41,7 @@ config BOARDINFO
 	default "Garz+Fricke Neso" if MACH_NESO
 	default "Freescale i.MX51 PDK" if MACH_FREESCALE_MX51_PDK
 	default "Freescale i.MX53 LOCO" if MACH_FREESCALE_MX53_LOCO
+	default "Freescale i.MX53 SMD" if MACH_FREESCALE_MX53_SMD
 	default "Garz+Fricke Cupid" if MACH_GUF_CUPID
 	default "Ka-Ro tx25" if MACH_TX25
 
@@ -402,6 +404,9 @@ choice
 config MACH_FREESCALE_MX53_LOCO
 	bool "Freescale i.MX53 LOCO"
 
+config MACH_FREESCALE_MX53_SMD
+	bool "Freescale i.MX53 SMD"
+
 endchoice
 
 endif
diff --git a/arch/arm/mach-imx/include/mach/devices-imx53.h b/arch/arm/mach-imx/include/mach/devices-imx53.h
index bc01420..1fc2417 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx53.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx53.h
@@ -31,6 +31,11 @@ static inline struct device_d *imx53_add_uart1(void)
 	return imx_add_uart((void *)MX53_UART2_BASE_ADDR, 1);
 }
 
+static inline struct device_d *imx53_add_uart2(void)
+{
+	return imx_add_uart((void *)MX53_UART3_BASE_ADDR, 2);
+}
+
 static inline struct device_d *imx53_add_fec(struct fec_platform_data *pdata)
 {
 	return imx_add_fec((void *)MX53_FEC_BASE_ADDR, pdata);
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
