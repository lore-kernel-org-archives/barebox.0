Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U0BQe-0007Ds-Ra
 for barebox@lists.infradead.org; Tue, 29 Jan 2013 13:40:51 +0000
Received: from mail606.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id C4434DC2241
 for <barebox@lists.infradead.org>; Tue, 29 Jan 2013 14:50:44 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 29 Jan 2013 14:39:28 +0100
Message-Id: <1359466768-11741-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359466768-11741-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130129133706.GV26329@game.jcrosoft.org>
 <1359466768-11741-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] at91: add sama5d3xek board support
To: barebox@lists.infradead.org

currently missing the GMAC support

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/Makefile                       |    1 +
 arch/arm/boards/sama5d3xek/Makefile     |    2 +
 arch/arm/boards/sama5d3xek/config.h     |    6 +
 arch/arm/boards/sama5d3xek/env/config   |   44 ++++
 arch/arm/boards/sama5d3xek/hw_version.c |  251 ++++++++++++++++++++++
 arch/arm/boards/sama5d3xek/hw_version.h |   34 +++
 arch/arm/boards/sama5d3xek/init.c       |  351 +++++++++++++++++++++++++++++++
 arch/arm/configs/sama5d3xek_defconfig   |   91 ++++++++
 arch/arm/mach-at91/Kconfig              |   17 ++
 9 files changed, 797 insertions(+)
 create mode 100644 arch/arm/boards/sama5d3xek/Makefile
 create mode 100644 arch/arm/boards/sama5d3xek/config.h
 create mode 100644 arch/arm/boards/sama5d3xek/env/config
 create mode 100644 arch/arm/boards/sama5d3xek/hw_version.c
 create mode 100644 arch/arm/boards/sama5d3xek/hw_version.h
 create mode 100644 arch/arm/boards/sama5d3xek/init.c
 create mode 100644 arch/arm/configs/sama5d3xek_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 66c9933..81fa64b 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -80,6 +80,7 @@ board-$(CONFIG_MACH_AT91SAM9N12EK)		:= at91sam9n12ek
 board-$(CONFIG_MACH_AT91SAM9X5EK)		:= at91sam9x5ek
 board-$(CONFIG_MACH_AT91SAM9M10IHD)		:= at91sam9m10ihd
 board-$(CONFIG_MACH_AT91SAM9M10G45EK)		:= at91sam9m10g45ek
+board-$(CONFIG_MACH_SAMA5D3XEK)			:= sama5d3xek
 board-$(CONFIG_MACH_CLEP7212)			:= clep7212
 board-$(CONFIG_MACH_DSS11)			:= dss11
 board-$(CONFIG_MACH_EDB9301)			:= edb93xx
diff --git a/arch/arm/boards/sama5d3xek/Makefile b/arch/arm/boards/sama5d3xek/Makefile
new file mode 100644
index 0000000..f2acf20
--- /dev/null
+++ b/arch/arm/boards/sama5d3xek/Makefile
@@ -0,0 +1,2 @@
+obj-y += init.o
+obj-y += hw_version.o
diff --git a/arch/arm/boards/sama5d3xek/config.h b/arch/arm/boards/sama5d3xek/config.h
new file mode 100644
index 0000000..d971810
--- /dev/null
+++ b/arch/arm/boards/sama5d3xek/config.h
@@ -0,0 +1,6 @@
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#define AT91_MAIN_CLOCK		12000000	/* 12 MHz crystal */
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/sama5d3xek/env/config b/arch/arm/boards/sama5d3xek/env/config
new file mode 100644
index 0000000..375e90d
--- /dev/null
+++ b/arch/arm/boards/sama5d3xek/env/config
@@ -0,0 +1,44 @@
+#!/bin/sh
+
+# use 'dhcp' to do dhcp in barebox and in kernel
+# use 'none' if you want to skip kernel ip autoconfiguration
+ip=dhcp-barebox
+global.dhcp.vendor_id=barebox-sama5d3xek
+global.dhcp.client_id="${sama5d3xcm.board}-${sama5d3xcm.vendor}"
+
+# or set your networking parameters here
+#eth0.ipaddr=a.b.c.d
+#eth0.netmask=a.b.c.d
+#eth0.gateway=a.b.c.d
+#eth0.serverip=a.b.c.d
+
+# can be either 'nfs', 'tftp', 'nor' or 'nand'
+kernel_loc=nfs
+# can be either 'net', 'nor', 'nand' or 'initrd'
+rootfs_loc=net
+# can be either 'nfs', 'tftp', 'nand' or empty
+oftree_loc=nfs
+
+# can be either 'jffs2' or 'ubifs'
+rootfs_type=ubifs
+rootfsimage=root.$rootfs_type
+ubiroot=rootfs
+
+# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
+kernelimage=zImage
+#kernelimage=uImage
+#kernelimage=Image
+#kernelimage=Image.lzo
+
+nand_device=atmel_nand
+nand_parts="256k(at91bootstrap),384k(barebox)ro,256k@768k(bareboxenv),256k(bareboxenv2),128k@1536k(oftree),5M@2M(kernel),-@8M(rootfs)"
+rootfs_mtdblock_nand=7
+
+m25p80_parts="64k(bootstrap),384k(barebox),256k(bareboxenv),256k(bareboxenv2),128k(oftree),-(updater)"
+
+autoboot_timeout=3
+
+bootargs="console=ttyS0,115200"
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m\n# "
diff --git a/arch/arm/boards/sama5d3xek/hw_version.c b/arch/arm/boards/sama5d3xek/hw_version.c
new file mode 100644
index 0000000..a9fcf7d
--- /dev/null
+++ b/arch/arm/boards/sama5d3xek/hw_version.c
@@ -0,0 +1,251 @@
+/*
+ * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
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
+ *
+ */
+
+#include <common.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <libbb.h>
+#include <asm/armlinux.h>
+#include <of.h>
+#include <libfdt.h>
+
+#include "hw_version.h"
+
+enum board_type {
+	BOARD_TYPE_MB,
+	BOARD_TYPE_DM,
+	BOARD_TYPE_CPU,
+};
+
+static struct board_info {
+	char *name;
+	enum board_type type;
+	unsigned char id;
+} board_list[] = {
+	{"SAMA5D3x-MB",		BOARD_TYPE_MB,		0},
+	{"SAMA5D3x-DM",		BOARD_TYPE_DM,		1},
+	{"SAMA5D31-CM",		BOARD_TYPE_CPU,		2},
+	{"SAMA5D33-CM",		BOARD_TYPE_CPU,		3},
+	{"SAMA5D34-CM",		BOARD_TYPE_CPU,		4},
+	{"SAMA5D35-CM",		BOARD_TYPE_CPU,		5},
+	{"PDA-DM",		BOARD_TYPE_DM,		7},
+};
+
+static struct board_info* get_board_info_by_name(const char *name)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(board_list); i++) {
+		char *bname = board_list[i].name;
+		if (strncmp(name, bname, strlen(bname)) == 0)
+			return &board_list[i];
+	}
+
+	return NULL;
+}
+
+static struct vendor_info {
+	char *name;
+	enum vendor_id id;
+} vendor_list[] = {
+	{"EMBEST",		VENDOR_EMBEST},
+	{"FLEX",		VENDOR_FLEX},
+	{"RONETIX",		VENDOR_RONETIX},
+	{"COGENT",		VENDOR_COGENT},
+	{"PDA",			VENDOR_PDA},
+};
+
+static struct vendor_info* get_vendor_info_by_name(const char *name)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(vendor_list); i++) {
+		char *vname = vendor_list[i].name;
+		if (strncmp(name, vname, strlen(vname)) == 0)
+			return &vendor_list[i];
+	}
+
+	return NULL;
+}
+
+#define BOARD_NAME_LEN			12
+#define VENDOR_NAME_LEN			10
+#define VENDOR_COUNTRY_LEN		2
+
+struct one_wire_info {
+	u8 total_bytes;
+	u8 vendor_name[VENDOR_NAME_LEN];
+	u8 vendor_country[VENDOR_COUNTRY_LEN];
+	u8 board_name[BOARD_NAME_LEN];
+	u8 year;
+	u8 week;
+	u8 revision_board;
+	u8 revision_schema;
+	u8 revision_bom;
+	u8 checksum_l;
+	u8 checksum_h;
+}__attribute__ ((packed));
+
+static int at91sama5d3xek_read_w1(const char *file, struct one_wire_info *info)
+{
+	int fd;
+	int ret;
+
+	fd = open(file, O_RDONLY);
+	if (fd < 0) {
+		ret = fd;
+		goto err;
+	}
+
+	ret = read_full(fd, info, sizeof(*info));
+	if (ret < 0)
+		goto err_open;
+
+	if (ret < sizeof(*info)) {
+		ret =  -EINVAL;
+		goto err_open;
+	}
+
+	pr_debug("total_bytes = %d\n", info->total_bytes);
+	pr_debug("vendor_name = %s\n", info->vendor_name);
+	pr_debug("vendor_country = %.2s\n", info->vendor_country);
+	pr_debug("board_name = %s\n", info->board_name);
+	pr_debug("year = %d\n", info->year);
+	pr_debug("week = %d\n", info->week);
+	pr_debug("revision_board = %x\n", info->revision_board);
+	pr_debug("revision_schema = %x\n", info->revision_schema);
+	pr_debug("revision_bom = %x\n", info->revision_bom);
+	pr_debug("checksum_l = %x\n", info->checksum_l);
+	pr_debug("checksum_h = %x\n", info->checksum_h);
+
+	ret = 0;
+
+err_open:
+	close(fd);
+err:
+	if (ret)
+		pr_err("can not read 1-wire %s (%s)\n", file, strerror(ret));
+	return ret;
+}
+
+static u32 sn = 0;
+static u32 rev = 0;
+
+bool at91sama5d3xek_cm_is_vendor(enum vendor_id vid)
+{
+	return ((sn >> 5) & 0x1f) == vid;
+}
+
+bool at91sama5d3xek_ek_is_vendor(enum vendor_id vid)
+{
+	return ((sn >> 25) & 0x1f) == vid;
+}
+
+bool at91sama5d3xek_dm_is_vendor(enum vendor_id vid)
+{
+	return ((sn >> 15) & 0x1f) == vid;
+}
+
+static void at91sama5d3xek_devices_detect_one(const char *name)
+{
+	struct one_wire_info info;
+	struct board_info* binfo;
+	struct vendor_info* vinfo;
+	struct device_d *dev = NULL;
+	char str[16];
+	char *bname, *vname;
+	u8 vendor_id = 0;
+
+	if (at91sama5d3xek_read_w1(name, &info))
+		return;
+
+	binfo = get_board_info_by_name(info.board_name);
+
+	if (!binfo) {
+		pr_err("board %s no supported\n", info.board_name);
+		return;
+	}
+	bname = binfo->name;
+
+	vinfo = get_vendor_info_by_name(info.vendor_name);
+	vname = info.vendor_name;
+	if (vinfo) {
+		vendor_id = vinfo->id;
+		vname = vinfo->name;
+	}
+
+	switch (binfo->type) {
+	case BOARD_TYPE_CPU:
+		dev = add_generic_device_res("sama5d3xcm", DEVICE_ID_SINGLE, NULL, 0, NULL);
+		if (!dev)
+			return;
+		sn  |= (binfo->id & 0x1f);
+		sn  |= ((vendor_id & 0x1f) << 5);
+		rev |= (info.revision_board - 'A');
+		rev |= (((info.revision_schema - '0') & 0x3) << 15);
+		pr_info("CM");
+		break;
+	case BOARD_TYPE_MB:
+		dev = add_generic_device_res("sama5d3xmb", DEVICE_ID_SINGLE, NULL, 0, NULL);
+		if (!dev)
+			return;
+		sn  |= ((binfo->id & 0x1f) << 20);
+		sn  |= ((vendor_id & 0x1f) << 25);
+		rev |= ((info.revision_board - 'A') << 10);
+		rev |= (((info.revision_schema - '0') & 0x3) << 21);
+		pr_info("MB");
+		break;
+	case BOARD_TYPE_DM:
+		dev = add_generic_device_res("sama5d3xdm", DEVICE_ID_SINGLE, NULL, 0, NULL);
+		if (!dev)
+			return;
+		sn  |= ((binfo->id & 0x1f) << 10);
+		sn  |= ((vendor_id & 0x1f) << 15);
+		rev |= ((info.revision_board - 'A') << 5);
+		rev |= (((info.revision_schema - '0') & 0x3) << 18);
+		pr_info("DM");
+		break;
+	}
+
+	pr_info(": %s [%c%c] from %s\n",
+		bname, info.revision_board, info.revision_schema, vname);
+
+	dev_add_param_fixed(dev, "vendor", vname);
+	dev_add_param_fixed(dev, "board", bname);
+	sprintf(str, "%.2s", info.vendor_country);
+	dev_add_param_fixed(dev, "country", str);
+	sprintf(str, "%d", info.year);
+	dev_add_param_fixed(dev, "year", str);
+	sprintf(str, "%d", info.week);
+	dev_add_param_fixed(dev, "week", str);
+	sprintf(str, "%c", info.revision_board);
+	dev_add_param_fixed(dev, "revision_board", str);
+	sprintf(str, "%c", info.revision_schema);
+	dev_add_param_fixed(dev, "revision_schema", str);
+	sprintf(str, "%c", info.revision_bom);
+	dev_add_param_fixed(dev, "revision_bom", str);
+}
+
+void at91sama5d3xek_devices_detect_hw(void)
+{
+	at91sama5d3xek_devices_detect_one("/dev/ds24310");
+	at91sama5d3xek_devices_detect_one("/dev/ds28ec200");
+	at91sama5d3xek_devices_detect_one("/dev/ds24330");
+
+	pr_info("sn: 0x%x, rev: 0x%x\n", sn, rev);
+	armlinux_set_revision(rev);
+	armlinux_set_serial(sn);
+}
diff --git a/arch/arm/boards/sama5d3xek/hw_version.h b/arch/arm/boards/sama5d3xek/hw_version.h
new file mode 100644
index 0000000..1976241
--- /dev/null
+++ b/arch/arm/boards/sama5d3xek/hw_version.h
@@ -0,0 +1,34 @@
+/*
+ * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
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
+ *
+ */
+
+#ifndef __HW_REVISION_H__
+#define __HW_REVISION_H__
+
+enum vendor_id {
+	VENDOR_UNKNOWN	= 0,
+	VENDOR_EMBEST	= 1,
+	VENDOR_FLEX	= 2,
+	VENDOR_RONETIX	= 3,
+	VENDOR_COGENT	= 4,
+	VENDOR_PDA	= 5,
+};
+
+bool at91sama5d3xek_cm_is_vendor(enum vendor_id vid);
+bool at91sama5d3xek_ek_is_vendor(enum vendor_id vid);
+bool at91sama5d3xek_dm_is_vendor(enum vendor_id vid);
+void at91sama5d3xek_devices_detect_hw(void);
+
+#endif /* __HW_REVISION_H__ */
diff --git a/arch/arm/boards/sama5d3xek/init.c b/arch/arm/boards/sama5d3xek/init.c
new file mode 100644
index 0000000..95ed457
--- /dev/null
+++ b/arch/arm/boards/sama5d3xek/init.c
@@ -0,0 +1,351 @@
+/*
+ * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
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
+ *
+ */
+
+#include <common.h>
+#include <net.h>
+#include <init.h>
+#include <environment.h>
+#include <asm/armlinux.h>
+#include <generated/mach-types.h>
+#include <partition.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <io.h>
+#include <asm/hardware.h>
+#include <nand.h>
+#include <sizes.h>
+#include <linux/mtd/nand.h>
+#include <mach/board.h>
+#include <mach/at91sam9_smc.h>
+#include <mach/at91sam9_smc.h>
+#include <gpio.h>
+#include <mach/io.h>
+#include <mach/at91_pmc.h>
+#include <mach/at91_rstc.h>
+#include <mach/at91sam9x5_matrix.h>
+#include <input/qt1070.h>
+#include <readkey.h>
+#include <poller.h>
+#include <linux/w1-gpio.h>
+#include <w1_mac_address.h>
+#include <spi/spi.h>
+#include <linux/clk.h>
+#include <linux/phy.h>
+#include <linux/micrel_phy.h>
+
+#include "hw_version.h"
+
+struct w1_gpio_platform_data w1_pdata = {
+	.pin = AT91_PIN_PE25,
+	.ext_pullup_enable_pin = -EINVAL,
+	.is_open_drain = 0,
+};
+
+#if defined(CONFIG_NAND_ATMEL)
+static struct atmel_nand_data nand_pdata = {
+	.ale		= 21,
+	.cle		= 22,
+	.det_pin	= -EINVAL,
+	.rdy_pin	= -EINVAL,
+	.enable_pin	= -EINVAL,
+	.ecc_mode	= NAND_ECC_HW,
+	.pmecc_sector_size = 512,
+	.pmecc_corr_cap = 2,
+#if defined(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16)
+	.bus_width_16	= 1,
+#endif
+	.on_flash_bbt	= 1,
+};
+
+static struct sam9_smc_config cm_nand_smc_config = {
+	.ncs_read_setup		= 0,
+	.nrd_setup		= 1,
+	.ncs_write_setup	= 0,
+	.nwe_setup		= 1,
+
+	.ncs_read_pulse		= 6,
+	.nrd_pulse		= 4,
+	.ncs_write_pulse	= 5,
+	.nwe_pulse		= 3,
+
+	.read_cycle		= 6,
+	.write_cycle		= 5,
+
+	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE | AT91_SMC_EXNWMODE_DISABLE,
+	.tdf_cycles		= 1,
+};
+
+static void ek_add_device_nand(void)
+{
+	struct clk *clk = clk_get(NULL, "smc_clk");
+
+	clk_enable(clk);
+
+	/* setup bus-width (8 or 16) */
+	if (nand_pdata.bus_width_16)
+		cm_nand_smc_config.mode |= AT91_SMC_DBW_16;
+	else
+		cm_nand_smc_config.mode |= AT91_SMC_DBW_8;
+
+	/* configure chip-select 3 (NAND) */
+	sam9_smc_configure(0, 3, &cm_nand_smc_config);
+
+	at91_add_device_nand(&nand_pdata);
+}
+#else
+static void ek_add_device_nand(void) {}
+#endif
+
+#if defined(CONFIG_DRIVER_NET_MACB)
+static struct at91_ether_platform_data macb_pdata = {
+	.phy_interface = PHY_INTERFACE_MODE_RMII,
+	.phy_addr = 0,
+};
+
+static bool used_23 = false;
+static bool used_43 = false;
+
+static int ek_register_mac_address_23(int id)
+{
+	if (used_23)
+		return -EBUSY;
+
+	used_23 = true;
+
+	return w1_local_mac_address_register(id, "tml", "w1-23-0");
+}
+
+static int ek_register_mac_address_43(int id)
+{
+	if (used_43)
+		return -EBUSY;
+
+	used_43 = true;
+
+	return w1_local_mac_address_register(id, "tml", "w1-43-0");
+}
+
+static void ek_add_device_eth(void)
+{
+	if (w1_local_mac_address_register(0, "tml", "w1-2d-0"))
+		if (ek_register_mac_address_23(0))
+			ek_register_mac_address_43(0);
+
+	if (ek_register_mac_address_23(1))
+		ek_register_mac_address_43(1);
+
+	at91_add_device_eth(1, &macb_pdata);
+}
+#else
+static void ek_add_device_eth(void) {}
+#endif
+
+#if defined(CONFIG_MCI_ATMEL)
+/*
+ * MCI (SD/MMC)
+ */
+static struct atmel_mci_platform_data mci0_data = {
+	.bus_width	= 4,
+	.detect_pin	= AT91_PIN_PD17,
+	.wp_pin		= -EINVAL,
+};
+
+static struct atmel_mci_platform_data mci1_data = {
+	.bus_width	= 4,
+	.detect_pin	= AT91_PIN_PD18,
+	.wp_pin		= -EINVAL,
+};
+
+static void ek_add_device_mci(void)
+{
+	/* MMC0 */
+	at91_add_device_mci(0, &mci0_data);
+	/* MMC1 */
+	at91_add_device_mci(1, &mci1_data);
+}
+#else
+static void ek_add_device_mci(void) {}
+#endif
+
+#if defined(CONFIG_I2C_GPIO)
+struct qt1070_platform_data qt1070_pdata = {
+	.irq_pin	= AT91_PIN_PE31,
+};
+
+static struct i2c_board_info i2c_devices[] = {
+	{
+		.platform_data = &qt1070_pdata,
+		I2C_BOARD_INFO("qt1070", 0x1b),
+	},
+};
+
+static void ek_add_device_i2c(void)
+{
+	at91_set_gpio_input(qt1070_pdata.irq_pin, 0);
+	at91_set_deglitch(qt1070_pdata.irq_pin, 1);
+	at91_add_device_i2c(1, i2c_devices, ARRAY_SIZE(i2c_devices));
+	at91_add_device_i2c(0, NULL, 0);
+}
+#else
+static void ek_add_device_i2c(void) {}
+#endif
+
+#if defined(CONFIG_DRIVER_SPI_ATMEL)
+static const struct spi_board_info ek_spi_devices[] = {
+	{
+		.name		= "m25p80",
+		.chip_select	= 0,
+		.max_speed_hz	= 30 * 1000 * 1000,
+		.bus_num	= 0,
+	}
+};
+
+static unsigned spi0_standard_cs[] = { AT91_PIN_PD13 };
+static struct at91_spi_platform_data spi_pdata = {
+	.chipselect = spi0_standard_cs,
+	.num_chipselect = ARRAY_SIZE(spi0_standard_cs),
+};
+
+static void ek_add_device_spi(void)
+{
+	spi_register_board_info(ek_spi_devices, ARRAY_SIZE(ek_spi_devices));
+	at91_add_device_spi(0, &spi_pdata);
+}
+#else
+static void ek_add_device_spi(void) {}
+#endif
+
+#ifdef CONFIG_LED_GPIO
+struct gpio_led leds[] = {
+	{
+		.gpio	= AT91_PIN_PE24,
+		.active_low	= 1,
+		.led	= {
+			.name = "d1",
+		},
+	}, {
+		.gpio	= AT91_PIN_PE25,
+		.active_low	= 1,
+		.led	= {
+			.name = "d2",
+		},
+	},
+};
+
+static void ek_add_led(void)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(leds); i++) {
+		at91_set_gpio_output(leds[i].gpio, leds[i].active_low);
+		led_gpio_register(&leds[i]);
+	}
+	led_set_trigger(LED_TRIGGER_HEARTBEAT, &leds[0].led);
+}
+#else
+static void ek_add_led(void) {}
+#endif
+
+static int at91sama5d3xek_mem_init(void)
+{
+	at91_add_device_sdram(0);
+
+	return 0;
+}
+mem_initcall(at91sama5d3xek_mem_init);
+
+static void ek_add_device_w1(void)
+{
+	at91_set_gpio_input(w1_pdata.pin, 0);
+	at91_set_multi_drive(w1_pdata.pin, 1);
+	add_generic_device_res("w1-gpio", DEVICE_ID_SINGLE, NULL, 0, &w1_pdata);
+
+	at91sama5d3xek_devices_detect_hw();
+}
+
+/*
+ * The SiI9022A (HDMI) and QT1070 share the same irq
+ * but if the SiI9022A is not reset the irq is pull down
+ * So do it. As the SiI9022A need 1s to reset (500ms up then 500ms down then up)
+ * do it poller to do not slow down the boot
+ */
+static int hdmi_reset_pin = AT91_PIN_PC31;
+static uint64_t hdmi_reset_start;
+struct poller_struct hdmi_poller;
+
+static void hdmi_on_poller(struct poller_struct *poller)
+{
+	if (!is_timeout_non_interruptible(hdmi_reset_start, 500 * MSECOND))
+		return;
+
+	gpio_set_value(hdmi_reset_pin, 1);
+
+	poller_unregister(poller);
+	ek_add_device_i2c();
+}
+
+static void hdmi_off_poller(struct poller_struct *poller)
+{
+	if (!is_timeout_non_interruptible(hdmi_reset_start, 500 * MSECOND))
+		return;
+
+	gpio_set_value(hdmi_reset_pin, 0);
+
+	hdmi_reset_start = get_time_ns();
+	poller->func = hdmi_on_poller;
+}
+
+static void ek_add_device_hdmi(void)
+{
+	at91_set_gpio_output(hdmi_reset_pin, 1);
+	hdmi_reset_start = get_time_ns();
+	hdmi_poller.func = hdmi_off_poller;
+
+	poller_register(&hdmi_poller);
+}
+
+static int at91sama5d3xek_devices_init(void)
+{
+	ek_add_device_w1();
+	ek_add_device_hdmi();
+	ek_add_device_nand();
+	ek_add_led();
+	ek_add_device_eth();
+	ek_add_device_spi();
+	ek_add_device_mci();
+
+	armlinux_set_bootparams((void *)(SAMA5_DDRCS + 0x100));
+
+	devfs_add_partition("nand0", 0x00000, SZ_256K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
+	dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
+	devfs_add_partition("nand0", SZ_256K, SZ_256K + SZ_128K, DEVFS_PARTITION_FIXED, "self_raw");
+	dev_add_bb_dev("self_raw", "self0");
+	devfs_add_partition("nand0", SZ_512K + SZ_256K, SZ_256K, DEVFS_PARTITION_FIXED, "env_raw");
+	dev_add_bb_dev("env_raw", "env0");
+	devfs_add_partition("nand0", SZ_1M, SZ_256K, DEVFS_PARTITION_FIXED, "env_raw1");
+	dev_add_bb_dev("env_raw1", "env1");
+
+	return 0;
+}
+device_initcall(at91sama5d3xek_devices_init);
+
+static int at91sama5d3xek_console_init(void)
+{
+	at91_register_uart(0, 0);
+	at91_register_uart(2, 0);
+	return 0;
+}
+console_initcall(at91sama5d3xek_console_init);
diff --git a/arch/arm/configs/sama5d3xek_defconfig b/arch/arm/configs/sama5d3xek_defconfig
new file mode 100644
index 0000000..c94419a
--- /dev/null
+++ b/arch/arm/configs/sama5d3xek_defconfig
@@ -0,0 +1,91 @@
+CONFIG_ARCH_SAMA5D3=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x60000
+CONFIG_AEABI=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_PBL_IMAGE=y
+CONFIG_MMU=y
+CONFIG_TEXT_BASE=0x26f00000
+CONFIG_MALLOC_SIZE=0xA00000
+CONFIG_EXPERIMENTAL=y
+CONFIG_MALLOC_TLSF=y
+CONFIG_PROMPT="A5D3X-EK:"
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_PROMPT_HUSH_PS2="y"
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/sama5d3xek/env"
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_CMD_UIMAGE=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_SPI=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_NFS=y
+CONFIG_NET_PING=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_MICREL_PHY=y
+CONFIG_DRIVER_NET_MACB=y
+CONFIG_DRIVER_SPI_ATMEL=y
+CONFIG_I2C=y
+CONFIG_I2C_GPIO=y
+CONFIG_MTD=y
+# CONFIG_MTD_OOB_DEVICE is not set
+CONFIG_MTD_M25P80=y
+CONFIG_NAND=y
+# CONFIG_NAND_ECC_SOFT is not set
+# CONFIG_NAND_ECC_HW_SYNDROME is not set
+# CONFIG_NAND_ECC_HW_NONE is not set
+CONFIG_NAND_ATMEL=y
+CONFIG_NAND_ATMEL_PMECC=y
+CONFIG_UBI=y
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_ATMEL=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_TRIGGERS=y
+CONFIG_KEYBOARD_GPIO=y
+CONFIG_KEYBOARD_QT1070=y
+CONFIG_W1=y
+CONFIG_W1_MASTER_GPIO=y
+CONFIG_W1_SLAVE_DS2431=y
+CONFIG_W1_SLAVE_DS2433=y
+CONFIG_W1_DUAL_SEARCH=y
+CONFIG_FS_EXT4=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 81718d9..2da3283 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -43,6 +43,7 @@ config BOARDINFO
 	default "Atmel at91sam9m10g45-ek" if MACH_AT91SAM9M10G45EK
 	default "Atmel at91sam9n12-ek" if MACH_AT91SAM9N12EK
 	default "Atmel at91sam9x5-ek" if MACH_AT91SAM9X5EK
+	default "Atmel sama5d3x-ek" if MACH_SAMA5D3XEK
 	default "Bucyrus MMC-CPU" if MACH_MMCCPU
 	default "Calao USB-A9260" if MACH_USB_A9260
 	default "Calao USB-A9263" if MACH_USB_A9263
@@ -450,6 +451,22 @@ endif
 
 # ----------------------------------------------------------
 
+if ARCH_SAMA5D3
+
+choice
+	prompt "SAMA5D3 Board Type"
+
+config MACH_SAMA5D3XEK
+	bool "Atmel SAMA5D3X Evaluation Kit"
+	help
+	  Select this if you are using Atmel's SAMA5D3X-EK Evaluation Kit.
+
+endchoice
+
+endif
+
+# ----------------------------------------------------------
+
 comment "AT91 Board Options"
 
 config MTD_AT91_DATAFLASH_CARD
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
