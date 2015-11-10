Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x232.google.com ([2a00:1450:400c:c09::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zw0NK-0001bN-Ky
 for barebox@lists.infradead.org; Tue, 10 Nov 2015 04:17:45 +0000
Received: by wmww144 with SMTP id w144so101638742wmw.1
 for <barebox@lists.infradead.org>; Mon, 09 Nov 2015 20:17:21 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 9 Nov 2015 20:17:20 -0800
Message-ID: <CAKu_b=K0JvT5g-Zzvs1nRBHjBK2ssWou3ZNhMuviZOZ4dt2W=w@mail.gmail.com>
From: Jason Cobham <cobham.jason@gmail.com>
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
Subject: [PATCH] ARM: i.mx53: Add support for Digi ConnectCore ccwmx53 SOM
To: barebox@lists.infradead.org

This patch adds board support for the Digi ConnectCore ccwmx53 based SoM.

512M/1GB RAM, 10/100M Ethernet, NAND, SD, UART, I2C
Tested on Jumpstart Kit eval board.


diff -ruN barebox/arch/arm/boards/ccwmx53/board.c
barebox/arch/arm/boards/ccwmx53/board.c
--- a/barebox/arch/arm/boards/ccwmx53/board.c 1969-12-31
16:00:00.000000000 -0800
+++ b/barebox/arch/arm/boards/ccwmx53/board.c 2015-11-08
21:16:10.598460665 -0800
@@ -0,0 +1,313 @@
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
+#include <linux/sizes.h>
+#include <gpio.h>
+
+#include <i2c/i2c.h>
+#include <generated/mach-types.h>
+
+#include <mach/imx53-regs.h>
+#include <mach/iomux-mx53.h>
+#include <mach/devices-imx53.h>
+#include <mach/generic.h>
+#include <mach/imx-nand.h>
+#include <mach/iim.h>
+#include <mach/imx5.h>
+#include <mach/esdctl.h>
+
+#include <asm/armlinux.h>
+#include <io.h>
+#include <asm/mmu.h>
+#include "ccwmx53.h"
+
+static struct ccwmx53_ident ccwmx53_ids[] = {
+/* 0x00 - 5500xxxx-xx */ { "Unknown",         0, 0, 0, 0,      0},
+/* 0x01 - 5500xxxx-xx */ { "Not supported",         0, 0, 0, 0,      0},
+/* 0x02 - 55001604-01 */ { "i.MX535@1000MHz, Wireless, PHY, Ext. Eth,
Accel", SZ_512M, 0, 1, 1, 1},
+/* 0x03 - 55001605-01 */ { "i.MX535@1000MHz, PHY, Accel", SZ_512M, 0, 1, 0, 0},
+/* 0x04 - 55001604-02 */ { "i.MX535@1000MHz, Wireless, PHY, Ext. Eth,
Accel", SZ_512M, 0, 1, 1, 1},
+/* 0x05 - 5500xxxx-xx */ { "i.MX535@1000MHz, PHY, Ext. Eth, Accel",
SZ_512M, 0, 1, 1, 0},
+/* 0x06 - 55001604-03 */ { "i.MX535@1000MHz, Wireless, PHY, Accel",
SZ_512M, 0, 1, 0, 1},
+/* 0x07 - 5500xxxx-xx */ { "i.MX535@1000MHz, PHY, Accel", SZ_512M, 0, 1, 0, 0},
+/* 0x08 - 55001604-04 */ { "i.MX537@800MHz, Wireless, PHY, Accel",
SZ_512M, 1, 1, 0, 1},
+/* 0x09 - 55001605-02 */ { "i.MX537@800MHz, PHY, Accel", SZ_512M, 1, 1, 0, 0},
+/* 0x0a - 5500xxxx-xx */ { "i.MX537@800MHz, Wireless, PHY, Ext. Eth,
Accel", SZ_512M, 1, 1, 1, 1},
+/* 0x0b - 55001605-03 */ { "i.MX537@800MHz, PHY, Ext. Eth, Accel",
SZ_1G, 1, 1, 1, 0},
+/* 0x0c - 5500xxxx-xx */ { "Reserved for future use",         0,
0,      0, 0,    0},
+/* 0x0d - 55001605-05 */ { "i.MX537@800MHz, PHY, Accel", SZ_1G, 1,   1, 0, 0},
+/* 0x0e - 5500xxxx-xx */ { "Reserved for future use",         0,
0,      0,   0, 0},
+/* 0x0f - 5500xxxx-xx */ { "Reserved for future use",         0,
0,      0, 0,    0},
+};
+
+struct ccwmx53_ident *ccwmx53_id;
+
+static struct fec_platform_data fec_info = {
+ .xcv_type = PHY_INTERFACE_MODE_RMII,
+};
+
+static iomux_v3_cfg_t ccwmx53_pads[] = {
+ /* UART1 */
+ MX53_PAD_PATA_DIOW__UART1_TXD_MUX,
+ MX53_PAD_PATA_DMACK__UART1_RXD_MUX,
+
+ /* FEC */
+ MX53_PAD_FEC_MDC__FEC_MDC,
+ MX53_PAD_FEC_MDIO__FEC_MDIO,
+ MX53_PAD_FEC_REF_CLK__FEC_TX_CLK,
+ MX53_PAD_FEC_RX_ER__FEC_RX_ER,
+ MX53_PAD_FEC_CRS_DV__FEC_RX_DV,
+ MX53_PAD_FEC_RXD1__FEC_RDATA_1,
+ MX53_PAD_FEC_RXD0__FEC_RDATA_0,
+ MX53_PAD_FEC_TX_EN__FEC_TX_EN,
+ MX53_PAD_FEC_TXD1__FEC_TDATA_1,
+ MX53_PAD_FEC_TXD0__FEC_TDATA_0,
+ /* FEC_nRST */
+ MX53_PAD_PATA_DA_0__GPIO7_6,
+
+ /* SD2 */
+ MX53_PAD_SD2_CMD__ESDHC2_CMD,
+ MX53_PAD_SD2_CLK__ESDHC2_CLK,
+ MX53_PAD_SD2_DATA0__ESDHC2_DAT0,
+ MX53_PAD_SD2_DATA1__ESDHC2_DAT1,
+ MX53_PAD_SD2_DATA2__ESDHC2_DAT2,
+ MX53_PAD_SD2_DATA3__ESDHC2_DAT3,
+ /* SD2_CD */
+ MX53_PAD_GPIO_4__GPIO1_4,
+ /* SD2_WP */
+ MX53_PAD_GPIO_2__GPIO1_2,
+
+ /* SD3 */
+ MX53_PAD_PATA_DATA8__ESDHC3_DAT0,
+ MX53_PAD_PATA_DATA9__ESDHC3_DAT1,
+ MX53_PAD_PATA_DATA10__ESDHC3_DAT2,
+ MX53_PAD_PATA_DATA11__ESDHC3_DAT3,
+ MX53_PAD_PATA_IORDY__ESDHC3_CLK,
+ MX53_PAD_PATA_RESET_B__ESDHC3_CMD,
+
+ /* I2C1 */
+ MX53_PAD_CSI0_DAT8__I2C1_SDA,
+ MX53_PAD_CSI0_DAT9__I2C1_SCL,
+
+ /* I2C2 */
+ MX53_PAD_KEY_ROW3__I2C2_SDA,
+ MX53_PAD_KEY_COL3__I2C2_SCL,
+
+ /* I2C3 */
+ MX53_PAD_GPIO_6__I2C3_SDA,
+ MX53_PAD_GPIO_5__I2C3_SCL,
+
+ /* NAND */
+ MX53_PAD_PATA_DATA0__EMI_NANDF_D_0,
+ MX53_PAD_PATA_DATA1__EMI_NANDF_D_1,
+ MX53_PAD_PATA_DATA2__EMI_NANDF_D_2,
+ MX53_PAD_PATA_DATA3__EMI_NANDF_D_3,
+ MX53_PAD_PATA_DATA4__EMI_NANDF_D_4,
+ MX53_PAD_PATA_DATA5__EMI_NANDF_D_5,
+ MX53_PAD_PATA_DATA6__EMI_NANDF_D_6,
+ MX53_PAD_PATA_DATA7__EMI_NANDF_D_7,
+ MX53_PAD_NANDF_CS0__EMI_NANDF_CS_0,
+ MX53_PAD_NANDF_RE_B__EMI_NANDF_RE_B,
+ MX53_PAD_NANDF_WE_B__EMI_NANDF_WE_B,
+ MX53_PAD_NANDF_WP_B__EMI_NANDF_WP_B,
+ MX53_PAD_NANDF_ALE__EMI_NANDF_ALE,
+ MX53_PAD_NANDF_CLE__EMI_NANDF_CLE,
+ MX53_PAD_NANDF_RB0__EMI_NANDF_RB_0,
+};
+
+#define ccwmx53_FEC_PHY_RST IMX_GPIO_NR(7, 6)
+
+static void ccwmx53_fec_reset(void)
+{
+ gpio_direction_output(ccwmx53_FEC_PHY_RST, 0);
+ mdelay(1);
+ gpio_set_value(ccwmx53_FEC_PHY_RST, 1);
+}
+
+static struct esdhc_platform_data sd2_data = {
+ .cd_type = IMX_GPIO_NR(1, 4),
+ .wp_type = IMX_GPIO_NR(1, 2),
+};
+
+static struct esdhc_platform_data sd3_data = {
+ .wp_type = ESDHC_WP_NONE,
+ .cd_type = ESDHC_CD_PERMANENT,
+};
+
+struct imx_nand_platform_data nand_info = {
+ .width = 1,
+ .hw_ecc = 1,
+ .flash_bbt = 1,
+};
+
+/*
+ * On this board the SDRAM is always configured for 512Mib. The real
+ * size is determined by the board id read from the IIM module.
+ */
+static int ccxmx53_sdram_fixup(void)
+{
+ imx_esdctl_disable();
+
+ return 0;
+}
+postcore_initcall(ccxmx53_sdram_fixup);
+
+static int ccxmx53_memory0_init(void)
+{
+ arm_add_mem_device("ram0", MX53_CSD0_BASE_ADDR, SZ_128M);
+
+ return 0;
+}
+mem_initcall(ccxmx53_memory0_init);
+
+static int ccwmx53_devices_init(void)
+{
+ u8 hwid[6] = {0};
+ char manloc = 0;
+
+ if ((imx_iim_read(1, 9, hwid, sizeof(hwid)) != sizeof(hwid)) ||
(hwid[0] < 0x02) || (hwid[0] >= ARRAY_SIZE(ccwmx53_ids)))
+ {
+ printf("Module Variant: Unknown (0x%02x) (0x%02x) (0x%02x) (0x%02x)
(0x%02x) (0x%02x)\n",
hwid[0],hwid[1],hwid[2],hwid[3],hwid[4],hwid[5]);
+ memset(hwid, 0x00, sizeof(hwid));
+ }
+
+ ccwmx53_id = &ccwmx53_ids[hwid[0]];
+ printf("Module Variant: %s (0x%02x)\n", ccwmx53_id->id_string, hwid[0]);
+
+ if (hwid[0]) {
+ printf("Module HW Rev : %02x\n", hwid[1] + 1);
+ switch (hwid[2] & 0xc0) {
+ case 0x00:
+ manloc = 'B';
+ break;
+ case 0x40:
+ manloc = 'W';
+ break;
+ case 0x80:
+ manloc = 'S';
+ break;
+ default:
+ manloc = 'N';
+ break;
+ }
+ printf("Module Serial : %c%d\n", manloc, ((hwid[2] & 0x3f) << 24) |
(hwid[3] << 16) | (hwid[4] << 8) | hwid[5]);
+ printf("Module RAM    : %dK\n", (ccwmx53_id->mem_sz)/1024);
+ if ((ccwmx53_id->mem_sz - SZ_128M) > 0)
+ {
+ arm_add_mem_device("ram1", MX53_CSD0_BASE_ADDR+SZ_128M,
ccwmx53_id->mem_sz-SZ_128M);
+ }
+ } else {
+ return -ENOSYS;
+ }
+
+ imx53_iim_register_fec_ethaddr();
+ imx53_add_fec(&fec_info);
+ imx53_add_mmc2(&sd2_data);
+ imx53_add_mmc1(&sd3_data);
+ imx53_add_i2c2(NULL);
+ imx53_add_nand(&nand_info);
+ imx53_add_sata();
+ ccwmx53_fec_reset();
+
+ armlinux_set_architecture(MACH_TYPE_CCWMX53);
+
+ return 0;
+}
+device_initcall(ccwmx53_devices_init);
+
+static int ccwmx53_late_init(void)
+{
+
+ unsigned char value = 0;
+ struct i2c_adapter *adapter = NULL;
+ struct i2c_client client;
+ int addr = -1, bus = 0;
+
+ /* I2C2 bus */
+ bus = 2;
+
+ /* da9053 device address is 0x68 */
+ addr = 0x68;
+
+ adapter = i2c_get_adapter(bus);
+ if (!adapter){
+ printf("****No I2C Adapter\n");
+ return -ENODEV;
+ }
+
+ client.adapter = adapter;
+ client.addr = addr;
+
+ /* Enable 3.3V ext regulator */
+ value = 0xfa;
+ if (i2c_write_reg(&client, 0x19, &value, 1) < 0){
+ printf("****I2C write failed\n");
+ return -ENOSYS;
+ }
+
+ return 0;
+}
+late_initcall(ccwmx53_late_init);
+
+static int ccwmx53_part_init(void)
+{
+ const char *envdev;
+
+ switch (bootsource_get()) {
+ case BOOTSOURCE_MMC:
+ devfs_add_partition("disk0", 0x00000, SZ_512K,
DEVFS_PARTITION_FIXED, "self0");
+ devfs_add_partition("disk0", SZ_512K, SZ_1M, DEVFS_PARTITION_FIXED, "env0");
+ envdev = "MMC";
+ break;
+ case BOOTSOURCE_NAND:
+ default:
+ devfs_add_partition("nand0", 0x00000, SZ_512K,
DEVFS_PARTITION_FIXED, "self_raw");
+ dev_add_bb_dev("self_raw", "self0");
+ devfs_add_partition("nand0", SZ_512K, SZ_1M, DEVFS_PARTITION_FIXED,
"env_raw");
+ dev_add_bb_dev("env_raw", "env0");
+ envdev = "NAND";
+ break;
+ }
+
+ printf("Using environment in %s\n", envdev);
+
+ return 0;
+}
+late_initcall(ccwmx53_part_init);
+
+static int ccwmx53_console_init(void)
+{
+ mxc_iomux_v3_setup_multiple_pads(ccwmx53_pads, ARRAY_SIZE(ccwmx53_pads));
+
+ barebox_set_model("Digi CCWMX53");
+ barebox_set_hostname("ccwmx53");
+
+ imx53_init_lowlevel(1000);
+
+ imx53_add_uart0();
+
+ return 0;
+}
+console_initcall(ccwmx53_console_init);
diff -ruN barebox/arch/arm/boards/ccwmx53/ccwmx53.h
barebox/arch/arm/boards/ccwmx53/ccwmx53.h
--- a/barebox/arch/arm/boards/ccwmx53/ccwmx53.h 1969-12-31
16:00:00.000000000 -0800
+++ b/barebox/arch/arm/boards/ccwmx53/ccwmx53.h 2015-11-08
21:16:10.598460665 -0800
@@ -0,0 +1,35 @@
+/*
+ * Copyright 2010 Digi International Inc. All Rights Reserved.
+ */
+
+/*
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+#ifndef _CCWMX53_H_
+#define _CCWMX53_H_
+
+struct ccwmx53_hwid {
+ u8 variant;
+ u8 version;
+ u32 sn;
+ char mloc;
+};
+
+struct ccwmx53_ident {
+ const char *id_string;
+ const int mem_sz;
+ const char industrial;
+ const char eth0;
+ const char eth1;
+ const char wless;
+};
+
+extern struct ccwmx53_ident *ccwmx53_id;
+
+#endif /* _CCWMX53_H_ */
diff -ruN barebox/arch/arm/boards/ccwmx53/env/config
barebox/arch/arm/boards/ccwmx53/env/config
--- a/barebox/arch/arm/boards/ccwmx53/env/config 1969-12-31
16:00:00.000000000 -0800
+++ b/barebox/arch/arm/boards/ccwmx53/env/config 2015-11-05
18:29:31.030527983 -0800
@@ -0,0 +1,45 @@
+#!/bin/sh
+
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
+rootfsimage=root-${global.hostname}.$rootfs_type
+
+kernelimage=zImage-${global.hostname}
+#kernelimage=uImage-${global.hostname}
+#kernelimage=Image-${global.hostname}
+#kernelimage=Image-${global.hostname}.lzo
+
+if [ -n $user ]; then
+ kernelimage="$user"-"$kernelimage"
+ nfsroot="$eth0.serverip:/home/$user/nfsroot/${global.hostname}"
+ rootfsimage="$user"-"$rootfsimage"
+else
+ nfsroot="$eth0.serverip:/path/to/nfs/root"
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
diff -ruN barebox/arch/arm/boards/ccwmx53/flash-header.imxcfg
barebox/arch/arm/boards/ccwmx53/flash-header.imxcfg
--- a/barebox/arch/arm/boards/ccwmx53/flash-header.imxcfg 1969-12-31
16:00:00.000000000 -0800
+++ b/barebox/arch/arm/boards/ccwmx53/flash-header.imxcfg 2015-11-05
18:29:31.030527983 -0800
@@ -0,0 +1,67 @@
+loadaddr 0x70000000
+soc imx53
+dcdofs 0x400
+wm 32 0x53fa8554 0x00200000
+wm 32 0x53fa8558 0x00200040
+wm 32 0x53fa8560 0x00200000
+wm 32 0x53fa8564 0x00200040
+wm 32 0x53fa8568 0x00200040
+wm 32 0x53fa8570 0x00200000
+wm 32 0x53fa8574 0x00200000
+wm 32 0x53fa8578 0x00200000
+wm 32 0x53fa857c 0x00200040
+wm 32 0x53fa8580 0x00200040
+wm 32 0x53fa8584 0x00200000
+wm 32 0x53fa8588 0x00200000
+wm 32 0x53fa8590 0x00200040
+wm 32 0x53fa8594 0x00200000
+wm 32 0x53fa86f0 0x00200000
+wm 32 0x53fa86f4 0x00000200
+wm 32 0x53fa86fc 0x00000000
+wm 32 0x53fa8714 0x00000000
+wm 32 0x53fa8718 0x00200000
+wm 32 0x53fa871c 0x00200000
+wm 32 0x53fa8720 0x00200000
+wm 32 0x53fa8724 0x06000000
+wm 32 0x53fa8728 0x00200000
+wm 32 0x53fa872c 0x00200000
+wm 32 0x63fd9088 0x2d313331
+wm 32 0x63fd9090 0x393b3836
+wm 32 0x63fd90f8 0x00000800
+wm 32 0x63fd907c 0x020c0211
+wm 32 0x63fd9080 0x014c0155
+wm 32 0x63fd9018 0x000016d0
+wm 32 0x63fd9000 0xc4110000
+wm 32 0x63fd900c 0x4d5122d2
+wm 32 0x63fd9010 0x92d18a22
+wm 32 0x63fd9014 0x00c70092
+wm 32 0x63fd902c 0x000026d2
+wm 32 0x63fd9030 0x009f000e
+wm 32 0x63fd9008 0x12272000
+wm 32 0x63fd9004 0x00030012
+wm 32 0x63fd901c 0x04008010
+wm 32 0x63fd901c 0x00008032
+wm 32 0x63fd901c 0x00008033
+wm 32 0x63fd901c 0x00008031
+wm 32 0x63fd901c 0x0b5280b0
+wm 32 0x63fd901c 0x04008010
+wm 32 0x63fd901c 0x00008020
+wm 32 0x63fd901c 0x00008020
+wm 32 0x63fd901c 0x0a528030
+wm 32 0x63fd901c 0x03c68031
+wm 32 0x63fd901c 0x00448031
+wm 32 0x63fd901c 0x04008018
+wm 32 0x63fd901c 0x0000803a
+wm 32 0x63fd901c 0x0000803b
+wm 32 0x63fd901c 0x00008039
+wm 32 0x63fd901c 0x0b528138
+wm 32 0x63fd901c 0x04008018
+wm 32 0x63fd901c 0x00008028
+wm 32 0x63fd901c 0x00008028
+wm 32 0x63fd901c 0x0a528038
+wm 32 0x63fd901c 0x03c68039
+wm 32 0x63fd901c 0x00448039
+wm 32 0x63fd9020 0x00005800
+wm 32 0x63fd9058 0x00022225
+wm 32 0x63fd901c 0x00000000
+wm 32 0x63fd9040 0x04b80003
diff -ruN barebox/arch/arm/boards/ccwmx53/lowlevel.c
barebox/arch/arm/boards/ccwmx53/lowlevel.c
--- a/barebox/arch/arm/boards/ccwmx53/lowlevel.c 1969-12-31
16:00:00.000000000 -0800
+++ b/barebox/arch/arm/boards/ccwmx53/lowlevel.c 2015-11-08
21:16:10.598460665 -0800
@@ -0,0 +1,12 @@
+#include <common.h>
+#include <mach/esdctl.h>
+#include <mach/generic.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+#include <mach/imx53-regs.h>
+
+void __naked barebox_arm_reset_vector(void)
+{
+ imx5_cpu_lowlevel_init();
+ barebox_arm_entry(MX53_CSD0_BASE_ADDR, SZ_128M, NULL);
+}
diff -ruN barebox/arch/arm/boards/ccwmx53/Makefile
barebox/arch/arm/boards/ccwmx53/Makefile
--- a/barebox/arch/arm/boards/ccwmx53/Makefile 1969-12-31
16:00:00.000000000 -0800
+++ b/barebox/arch/arm/boards/ccwmx53/Makefile 2015-11-05
18:29:31.026527983 -0800
@@ -0,0 +1,2 @@
+obj-y += board.o
+lwl-y += lowlevel.o
diff -ruN barebox/arch/arm/boards/Makefile barebox/arch/arm/boards/Makefile
--- a/barebox/arch/arm/boards/Makefile 2015-11-08 21:31:27.854453898 -0800
+++ b/barebox/arch/arm/boards/Makefile 2015-11-05 18:29:31.018527983 -0800
@@ -17,6 +17,7 @@
 obj-$(CONFIG_MACH_CM_FX6) += cm-fx6/
 obj-$(CONFIG_MACH_NITROGEN6X) += boundarydevices-nitrogen6x/
 obj-$(CONFIG_MACH_CCMX51) += ccxmx51/
+obj-$(CONFIG_MACH_CCWMX53)          += ccwmx53/
 obj-$(CONFIG_MACH_CFA10036) += crystalfontz-cfa10036/
 obj-$(CONFIG_MACH_CHUMBY) += chumby_falconwing/
 obj-$(CONFIG_MACH_CLEP7212) += clep7212/
diff -ruN barebox/arch/arm/configs/ccwmx53_defconfig
barebox/arch/arm/configs/ccwmx53_defconfig
--- a/barebox/arch/arm/configs/ccwmx53_defconfig 1969-12-31
16:00:00.000000000 -0800
+++ b/barebox/arch/arm/configs/ccwmx53_defconfig 2015-11-05
18:29:31.066527982 -0800
@@ -0,0 +1,289 @@
+CONFIG_ARM=y
+CONFIG_ARM_LINUX=y
+CONFIG_ARCH_IMX=y
+CONFIG_CPU_32=y
+CONFIG_CPU_V7=y
+CONFIG_CPU_32v7=y
+CONFIG_ARCH_TEXT_BASE=0x7ff00000
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0xffffffff
+CONFIG_ARCH_IMX_INTERNAL_BOOT=y
+CONFIG_ARCH_IMX_IMXIMAGE=y
+CONFIG_ARCH_IMX_INTERNAL_BOOT_NAND=y
+CONFIG_ARCH_IMX53=y
+CONFIG_MACH_CCWMX53=y
+CONFIG_ARCH_IMX_USBLOADER=y
+CONFIG_IMX_IIM=y
+CONFIG_IMX_IIM_FUSE_BLOW=y
+CONFIG_AEABI=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_EXCEPTIONS=y
+CONFIG_ARM_UNWIND=y
+CONFIG_DEFCONFIG_LIST="$ARCH_DEFCONFIG"
+CONFIG_GREGORIAN_CALENDER=y
+CONFIG_HAS_KALLSYMS=y
+CONFIG_HAS_MODULES=y
+CONFIG_ENV_HANDLING=y
+CONFIG_HAS_CACHE=y
+CONFIG_HAS_DMA=y
+CONFIG_GENERIC_GPIO=y
+CONFIG_BOOTM=y
+CONFIG_BLOCK=y
+CONFIG_BLOCK_WRITE=y
+CONFIG_FILETYPE=y
+CONFIG_BINFMT=y
+CONFIG_UIMAGE=y
+CONFIG_GLOBALVAR=y
+CONFIG_STDDEV=y
+
+CONFIG_LOCALVERSION=""
+CONFIG_LOCALVERSION_AUTO=y
+CONFIG_BANNER=y
+CONFIG_MEMINFO=y
+CONFIG_ENVIRONMENT_VARIABLES=y
+
+CONFIG_HAVE_PBL_IMAGE=y
+CONFIG_HAVE_IMAGE_COMPRESSION=y
+
+CONFIG_MMU=y
+CONFIG_MMU_EARLY=y
+CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
+CONFIG_TEXT_BASE=0x7ff00000
+CONFIG_BAREBOX_MAX_BARE_INIT_SIZE=0xffffffff
+CONFIG_STACK_SIZE=0x8000
+CONFIG_MALLOC_SIZE=0x2000000
+
+CONFIG_MALLOC_TLSF=y
+CONFIG_KALLSYMS=y
+
+CONFIG_PROMPT="barebox:"
+CONFIG_BAUDRATE=115200
+CONFIG_CBSIZE=1024
+CONFIG_SHELL_HUSH=y
+
+CONFIG_GLOB=y
+
+CONFIG_PROMPT_HUSH_PS2="> "
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_DYNAMIC_CRC_TABLE=y
+CONFIG_ERRNO_MESSAGES=y
+CONFIG_TIMESTAMP=y
+CONFIG_CONSOLE_FULL=y
+# CONFIG_CONSOLE_SIMPLE is not set
+# CONFIG_CONSOLE_NONE is not set
+CONFIG_CONSOLE_ACTIVATE_FIRST=y
+# CONFIG_CONSOLE_ACTIVATE_ALL is not set
+# CONFIG_CONSOLE_ACTIVATE_NONE is not set
+CONFIG_PARTITION=y
+CONFIG_PARTITION_DISK=y
+CONFIG_PARTITION_DISK_DOS=y
+# CONFIG_PARTITION_DISK_EFI is not set
+CONFIG_DEFAULT_ENVIRONMENT=y
+# CONFIG_DEFAULT_COMPRESSION_GZIP is not set
+CONFIG_DEFAULT_COMPRESSION_LZO=y
+# CONFIG_DEFAULT_COMPRESSION_NONE is not set
+# CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW is not set
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/ccwmx53/env"
+CONFIG_BAREBOXENV_TARGET=y
+
+CONFIG_POLLER=y
+CONFIG_RESET_SOURCE=y
+
+CONFIG_COMPILE_LOGLEVEL=7
+CONFIG_DEFAULT_LOGLEVEL=6
+# CONFIG_DEBUG_INFO is not set
+
+CONFIG_DEBUG_IMX53_UART=y
+CONFIG_DEBUG_IMX_UART_PORT=1
+CONFIG_COMMAND_SUPPORT=y
+CONFIG_COMPILE_MEMORY=y
+
+CONFIG_CMD_ARM_CPUINFO=y
+CONFIG_CMD_DEVINFO=y
+
+CONFIG_CMD_DRVINFO=y
+CONFIG_CMD_HELP=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+
+CONFIG_CMD_MEMINFO=y
+
+CONFIG_CMD_VERSION=y
+
+CONFIG_FLEXIBLE_BOOTARGS=y
+CONFIG_CMD_BOOT=y
+CONFIG_CMD_BOOTM=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+# CONFIG_CMD_BOOTM_AIMAGE is not set
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_BOOTZ=y
+CONFIG_CMD_GO=y
+# CONFIG_CMD_LOADB is not set
+# CONFIG_CMD_LOADS is not set
+# CONFIG_CMD_LOADY is not set
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
+
+#
+# Partition
+#
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_AUTOMOUNT=y
+CONFIG_CMD_MOUNT=y
+CONFIG_CMD_UMOUNT=y
+
+#
+# Environment
+#
+CONFIG_CMD_NV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_DEFAULTENV=y
+CONFIG_CMD_GLOBAL=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_CAT=y
+CONFIG_CMD_CD=y
+CONFIG_CMD_CP=y
+
+CONFIG_CMD_LS=y
+
+CONFIG_CMD_MKDIR=y
+CONFIG_CMD_PWD=y
+
+CONFIG_CMD_RM=y
+CONFIG_CMD_RMDIR=y
+
+CONFIG_CMD_UNCOMPRESS=y
+
+CONFIG_CMD_FALSE=y
+CONFIG_CMD_GETOPT=y
+
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_TEST=y
+CONFIG_CMD_TRUE=y
+
+CONFIG_CMD_DHCP=y
+
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+
+CONFIG_CMD_CLEAR=y
+CONFIG_CMD_ECHO=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_MD=y
+CONFIG_CMD_MEMCMP=y
+CONFIG_CMD_MEMCPY=y
+CONFIG_CMD_MEMSET=y
+
+CONFIG_CMD_MW=y
+
+CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_NAND=y
+
+CONFIG_CMD_USB=y
+CONFIG_CMD_TIME=y
+
+CONFIG_NET=y
+CONFIG_NET_NFS=y
+CONFIG_NET_NETCONSOLE=y
+
+CONFIG_NET_IFUP=y
+CONFIG_NET_DHCP=y
+
+CONFIG_OFTREE=y
+CONFIG_OFTREE_MEM_GENERIC=y
+CONFIG_DTC=y
+
+CONFIG_OF_NET=y
+
+CONFIG_DRIVER_SERIAL_IMX=y
+
+CONFIG_ARCH_HAS_FEC_IMX=y
+CONFIG_PHYLIB=y
+
+CONFIG_DRIVER_NET_FEC_IMX=y
+CONFIG_SMSC_PHY=y
+
+CONFIG_I2C=y
+
+CONFIG_I2C_IMX=y
+CONFIG_MTD=y
+CONFIG_MTD_WRITE=y
+CONFIG_MTD_OOB_DEVICE=y
+CONFIG_NAND=y
+CONFIG_NAND_ECC_SOFT=y
+
+CONFIG_NAND_ECC_HW_NONE=y
+CONFIG_NAND_INFO=y
+CONFIG_NAND_READ_OOB=y
+CONFIG_NAND_BBT=y
+
+CONFIG_NAND_IMX=y
+CONFIG_NAND_IMX_BBM=y
+
+CONFIG_MTD_NAND_IDS=y
+CONFIG_DISK=y
+CONFIG_DISK_WRITE=y
+CONFIG_DISK_ATA=y
+CONFIG_DISK_AHCI=y
+CONFIG_DISK_AHCI_IMX=y
+CONFIG_USB=y
+CONFIG_USB_HOST=y
+CONFIG_USB_IMX_CHIPIDEA=y
+CONFIG_USB_EHCI=y
+CONFIG_USB_STORAGE=y
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_INFO=y
+CONFIG_MCI_WRITE=y
+CONFIG_MCI_MMC_BOOT_PARTITIONS=y
+CONFIG_MCI_IMX_ESDHC=y
+CONFIG_HAVE_CLK=y
+CONFIG_CLKDEV_LOOKUP=y
+CONFIG_COMMON_CLK=y
+CONFIG_CLOCKSOURCE_DUMMY_RATE=1000
+CONFIG_MFD_DA9053=y
+CONFIG_WATCHDOG_IMX_RESET_SOURCE=y
+CONFIG_WATCHDOG=y
+CONFIG_WATCHDOG_IMX=y
+CONFIG_GPIOLIB=y
+CONFIG_GPIO_GENERIC=y
+CONFIG_GPIO_GENERIC_PLATFORM=y
+CONFIG_GPIO_IMX=y
+CONFIG_PINCTRL_IMX_IOMUX_V3=y
+CONFIG_FS=y
+CONFIG_FS_AUTOMOUNT=y
+CONFIG_FS_EXT4=y
+CONFIG_FS_RAMFS=y
+CONFIG_FS_DEVFS=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
+CONFIG_PARAMETER=y
+CONFIG_UNCOMPRESS=y
+CONFIG_ZLIB=y
+CONFIG_PROCESS_ESCAPE_SEQUENCE=y
+CONFIG_LZO_DECOMPRESS=y
+CONFIG_CRC32=y
diff -ruN barebox/arch/arm/mach-imx/Kconfig barebox/arch/arm/mach-imx/Kconfig
--- a/barebox/arch/arm/mach-imx/Kconfig 2015-11-08 21:31:27.902453898 -0800
+++ b/barebox/arch/arm/mach-imx/Kconfig 2015-11-05 18:29:31.090527982 -0800
@@ -27,6 +27,7 @@
  default 0x7ff00000 if MACH_TQMA53
  default 0x97f00000 if MACH_TX51
  default 0x97f00000 if MACH_CCMX51
+ default 0x7ff00000 if MACH_CCWMX53
  default 0x4fc00000 if MACH_SABRELITE
  default 0x8fe00000 if MACH_TX53
  default 0x97f00000 if MACH_EFIKA_MX_SMARTBOOK
@@ -536,6 +537,17 @@
  bool "Freescale i.MX53 SMD"
  select ARCH_IMX53

+config MACH_CCWMX53
+ bool "ConnectCore i.MX53"
+ select ARCH_IMX53
+ select IMX_IIM
+ select I2C
+ select DRIVER_I2C_IMX
+ select MFD_DA9053
+ help
+  Say Y here if you are using Digi ConnectCore (W)i-i.MX53
+  equipped with a Freescale i.MX53 Processor
+
 config MACH_TX53
  bool "Ka-Ro TX53"
  select ARCH_IMX53
diff -ruN barebox/arch/arm/Makefile barebox/arch/arm/Makefile
--- a/barebox/arch/arm/Makefile 2015-11-08 21:31:27.854453898 -0800
+++ b/barebox/arch/arm/Makefile 2015-11-05 18:29:31.018527983 -0800
@@ -220,6 +220,7 @@
 boarddir = $(srctree)/arch/arm/boards
 imxcfg-$(CONFIG_MACH_FREESCALE_MX53_SMD) +=
$(boarddir)/freescale-mx53-smd/flash-header.imxcfg
 imxcfg-$(CONFIG_MACH_CCMX51) += $(boarddir)/ccxmx51/flash-header.imxcfg
+imxcfg-$(CONFIG_MACH_CCWMX53) += $(boarddir)/ccwmx53/flash-header.imxcfg
 imxcfg-$(CONFIG_MACH_TX51) +=
$(boarddir)/karo-tx51/flash-header-karo-tx51.imxcfg
 imxcfg-$(CONFIG_MACH_GUF_VINCELL) +=
$(boarddir)/guf-vincell/flash-header.imxcfg
 imxcfg-$(CONFIG_MACH_EUKREA_CPUIMX51SD) +=
$(boarddir)/eukrea_cpuimx51/flash-header.imxcfg

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
