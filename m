Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo5.mail-out.ovh.net ([178.33.45.10]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Ty9Ce-00076I-4P
 for barebox@lists.infradead.org; Wed, 23 Jan 2013 22:53:59 +0000
Received: from mail634.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id A470EFFAA77
 for <barebox@lists.infradead.org>; Thu, 24 Jan 2013 00:03:45 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 23 Jan 2013 23:52:33 +0100
Message-Id: <1358981553-20756-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1358981553-20756-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130123225007.GT26329@game.jcrosoft.org>
 <1358981553-20756-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] at91: add at91sam9m10ihd tablet support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/Makefile                                  |    1 +
 arch/arm/boards/at91sam9m10ihd/Makefile            |    2 +
 arch/arm/boards/at91sam9m10ihd/config.h            |    6 +
 arch/arm/boards/at91sam9m10ihd/env/boot/android    |   11 +
 arch/arm/boards/at91sam9m10ihd/env/boot/mmc        |   19 ++
 arch/arm/boards/at91sam9m10ihd/env/boot/net        |   16 ++
 arch/arm/boards/at91sam9m10ihd/env/boot/net-usb    |   22 ++
 arch/arm/boards/at91sam9m10ihd/env/config          |   21 ++
 arch/arm/boards/at91sam9m10ihd/env/init/automount  |   17 ++
 .../boards/at91sam9m10ihd/env/init/config-board    |    8 +
 .../at91sam9m10ihd/env/init/mtdparts-001-nand      |   11 +
 .../at91sam9m10ihd/env/init/mtdparts-002-m25p80    |   11 +
 arch/arm/boards/at91sam9m10ihd/env/init/ps1        |    9 +
 arch/arm/boards/at91sam9m10ihd/hw_version.c        |  216 +++++++++++++++++++
 arch/arm/boards/at91sam9m10ihd/hw_version.h        |   31 +++
 arch/arm/boards/at91sam9m10ihd/init.c              |  220 ++++++++++++++++++++
 arch/arm/configs/at91sam9m10ihd_defconfig          |   94 +++++++++
 arch/arm/mach-at91/Kconfig                         |    6 +
 18 files changed, 721 insertions(+)
 create mode 100644 arch/arm/boards/at91sam9m10ihd/Makefile
 create mode 100644 arch/arm/boards/at91sam9m10ihd/config.h
 create mode 100644 arch/arm/boards/at91sam9m10ihd/env/boot/android
 create mode 100644 arch/arm/boards/at91sam9m10ihd/env/boot/mmc
 create mode 100644 arch/arm/boards/at91sam9m10ihd/env/boot/net
 create mode 100644 arch/arm/boards/at91sam9m10ihd/env/boot/net-usb
 create mode 100644 arch/arm/boards/at91sam9m10ihd/env/config
 create mode 100644 arch/arm/boards/at91sam9m10ihd/env/init/automount
 create mode 100644 arch/arm/boards/at91sam9m10ihd/env/init/config-board
 create mode 100644 arch/arm/boards/at91sam9m10ihd/env/init/mtdparts-001-nand
 create mode 100644 arch/arm/boards/at91sam9m10ihd/env/init/mtdparts-002-m25p80
 create mode 100644 arch/arm/boards/at91sam9m10ihd/env/init/ps1
 create mode 100644 arch/arm/boards/at91sam9m10ihd/hw_version.c
 create mode 100644 arch/arm/boards/at91sam9m10ihd/hw_version.h
 create mode 100644 arch/arm/boards/at91sam9m10ihd/init.c
 create mode 100644 arch/arm/configs/at91sam9m10ihd_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index a36adfb..631c215 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -77,6 +77,7 @@ board-$(CONFIG_MACH_AT91SAM9G10EK)		:= at91sam9261ek
 board-$(CONFIG_MACH_AT91SAM9G20EK)		:= at91sam9260ek
 board-$(CONFIG_MACH_AT91SAM9N12EK)		:= at91sam9n12ek
 board-$(CONFIG_MACH_AT91SAM9X5EK)		:= at91sam9x5ek
+board-$(CONFIG_MACH_AT91SAM9M10IHD)		:= at91sam9m10ihd
 board-$(CONFIG_MACH_AT91SAM9M10G45EK)		:= at91sam9m10g45ek
 board-$(CONFIG_MACH_CLEP7212)			:= clep7212
 board-$(CONFIG_MACH_DSS11)			:= dss11
diff --git a/arch/arm/boards/at91sam9m10ihd/Makefile b/arch/arm/boards/at91sam9m10ihd/Makefile
new file mode 100644
index 0000000..f2acf20
--- /dev/null
+++ b/arch/arm/boards/at91sam9m10ihd/Makefile
@@ -0,0 +1,2 @@
+obj-y += init.o
+obj-y += hw_version.o
diff --git a/arch/arm/boards/at91sam9m10ihd/config.h b/arch/arm/boards/at91sam9m10ihd/config.h
new file mode 100644
index 0000000..ac3114d
--- /dev/null
+++ b/arch/arm/boards/at91sam9m10ihd/config.h
@@ -0,0 +1,6 @@
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#define AT91_MAIN_CLOCK		12000000	/* from 12 MHz crystal */
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/at91sam9m10ihd/env/boot/android b/arch/arm/boards/at91sam9m10ihd/env/boot/android
new file mode 100644
index 0000000..e440f18
--- /dev/null
+++ b/arch/arm/boards/at91sam9m10ihd/env/boot/android
@@ -0,0 +1,11 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	boot-menu-add-entry "$0" "android (nand)"
+	exit
+fi
+
+global.bootm.image="/dev/nand0.kernel.bb"
+global.linux.bootargs.dyn.root="root=/dev/mtdblock1 rootfstype=jffs2 rw init=/init rootdelay=1"
+# clean the mtdparts otherwise android does not boot
+global -r linux.mtdparts.
diff --git a/arch/arm/boards/at91sam9m10ihd/env/boot/mmc b/arch/arm/boards/at91sam9m10ihd/env/boot/mmc
new file mode 100644
index 0000000..89c66ee
--- /dev/null
+++ b/arch/arm/boards/at91sam9m10ihd/env/boot/mmc
@@ -0,0 +1,19 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	boot-menu-add-entry "$0" "MMC slot"
+	exit
+fi
+
+path="/mnt/mmc"
+
+global.bootm.image="${path}/zimage"
+
+oftree=${path}/oftree
+if [ -f $oftree ]; then
+	global.bootm.oftree="$oftree"
+fi
+
+# The rootdevice may actually be mmcblk1p2 if a card
+# is inserted to the back MMC slot
+global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2"
diff --git a/arch/arm/boards/at91sam9m10ihd/env/boot/net b/arch/arm/boards/at91sam9m10ihd/env/boot/net
new file mode 100644
index 0000000..cdb2520
--- /dev/null
+++ b/arch/arm/boards/at91sam9m10ihd/env/boot/net
@@ -0,0 +1,16 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	boot-menu-add-entry "$0" "network (tftp, nfs) (macb)"
+	exit
+fi
+
+ethact eth0
+
+path="/mnt/tftp"
+
+global.bootm.image="${path}/${global.user}-linux-${global.hostname}"
+#global.bootm.oftree="${path}/${global.user}-oftree-${global.hostname}"
+nfsroot="/home/${global.user}/nfsroot/${global.hostname}"
+bootargs-ip
+global.linux.bootargs.dyn.root="root=/dev/nfs nfsroot=$nfsroot,v3,tcp"
diff --git a/arch/arm/boards/at91sam9m10ihd/env/boot/net-usb b/arch/arm/boards/at91sam9m10ihd/env/boot/net-usb
new file mode 100644
index 0000000..6e341a0
--- /dev/null
+++ b/arch/arm/boards/at91sam9m10ihd/env/boot/net-usb
@@ -0,0 +1,22 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	boot-menu-add-entry "$0" "network (tftp, nfs) (usb ethernet)"
+	exit
+fi
+
+usb -f
+ethact eth1
+
+if [ $? -ne 0 ]; then
+	echo "ERROR: usb ethernet not found"
+	exit 1
+fi
+
+path="/mnt/tftp"
+
+global.bootm.image="${path}/${global.user}-linux-${global.hostname}"
+#global.bootm.oftree="${path}/${global.user}-oftree-${global.hostname}"
+nfsroot="/home/${global.user}/nfsroot/${global.hostname}"
+bootargs-ip
+global.linux.bootargs.dyn.root="root=/dev/nfs nfsroot=$nfsroot,v3,tcp"
diff --git a/arch/arm/boards/at91sam9m10ihd/env/config b/arch/arm/boards/at91sam9m10ihd/env/config
new file mode 100644
index 0000000..bc2119e
--- /dev/null
+++ b/arch/arm/boards/at91sam9m10ihd/env/config
@@ -0,0 +1,21 @@
+#!/bin/sh
+
+# change network settings in /env/network/eth0
+# change mtd partition settings and automountpoints in /env/init/*
+
+#global.hostname=
+
+# set to false if you do not want to have colors
+global.allow_color=true
+
+# user (used for network filenames)
+global.user=none
+
+# timeout in seconds before the default boot entry is started
+global.autoboot_timeout=3
+
+# default boot entry (one of /env/boot/*)
+global.boot.default=android
+
+# base bootargs
+#global.linux.bootargs.base="console=ttyS0,115200"
diff --git a/arch/arm/boards/at91sam9m10ihd/env/init/automount b/arch/arm/boards/at91sam9m10ihd/env/init/automount
new file mode 100644
index 0000000..5bb63cc
--- /dev/null
+++ b/arch/arm/boards/at91sam9m10ihd/env/init/automount
@@ -0,0 +1,17 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "Automountpoints"
+	exit
+fi
+
+# automount tftp server based on $eth0.serverip
+
+mkdir -p /mnt/tftp
+automount /mnt/tftp 'ifup eth0 && mount -t tftp $eth0.serverip /mnt/tftp'
+
+# automount nfs server example
+
+# SD card slot, first partition
+mkdir -p /mnt/mmc
+automount -d /mnt/mmc 'mount /dev/disk0.0 /mnt/mmc'
diff --git a/arch/arm/boards/at91sam9m10ihd/env/init/config-board b/arch/arm/boards/at91sam9m10ihd/env/init/config-board
new file mode 100644
index 0000000..32c1071
--- /dev/null
+++ b/arch/arm/boards/at91sam9m10ihd/env/init/config-board
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+# board defaults, do not change in running system. Change /env/config
+# instead
+
+global.hostname=at91sam9m10ihd
+global.linux.bootargs.base="console=ttyS0,115200"
+global.boot.default=android
diff --git a/arch/arm/boards/at91sam9m10ihd/env/init/mtdparts-001-nand b/arch/arm/boards/at91sam9m10ihd/env/init/mtdparts-001-nand
new file mode 100644
index 0000000..ac516d8
--- /dev/null
+++ b/arch/arm/boards/at91sam9m10ihd/env/init/mtdparts-001-nand
@@ -0,0 +1,11 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "NAND partitions"
+	exit
+fi
+
+mtdparts="128k(nand0.at91bootstrap),256k(nand0.barebox)ro,128k(nand0.bareboxenv),128k(nand0.bareboxenv2),128k(nand0.oftree),1280k(nand0.free),3M(nand0.kernel),195M(nand0.rootfs),300M(nand0.userdata),-(nand0.cache)"
+kernelname="atmel_nand"
+
+mtdparts-add -b -d nand0 -k ${kernelname} -p ${mtdparts}
diff --git a/arch/arm/boards/at91sam9m10ihd/env/init/mtdparts-002-m25p80 b/arch/arm/boards/at91sam9m10ihd/env/init/mtdparts-002-m25p80
new file mode 100644
index 0000000..44198c8
--- /dev/null
+++ b/arch/arm/boards/at91sam9m10ihd/env/init/mtdparts-002-m25p80
@@ -0,0 +1,11 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "SPI NOR partitions"
+	exit
+fi
+
+mtdparts="32k(m25p0.at91bootstrap)ro,256k(m25p0.barebox),128k(m25p0.bareboxenv),128k(m25p0.bareboxenv2),128k(m25p0.oftree),-(m25p0.kernel)"
+kernelname="m25p0"
+
+mtdparts-add -d m25p0 -k ${kernelname} -p ${mtdparts}
diff --git a/arch/arm/boards/at91sam9m10ihd/env/init/ps1 b/arch/arm/boards/at91sam9m10ihd/env/init/ps1
new file mode 100644
index 0000000..a94acc1
--- /dev/null
+++ b/arch/arm/boards/at91sam9m10ihd/env/init/ps1
@@ -0,0 +1,9 @@
+#!/bin/sh
+
+/env/config
+
+if [ ${global.allow_color} = "true" ]; then
+	export PS1="\e[1;32mbarebox@\e[1;36m\h:\w\e[0m\n# "
+else
+	export PS1="barebox@\h:\w\n# "
+fi
diff --git a/arch/arm/boards/at91sam9m10ihd/hw_version.c b/arch/arm/boards/at91sam9m10ihd/hw_version.c
new file mode 100644
index 0000000..cd522f7
--- /dev/null
+++ b/arch/arm/boards/at91sam9m10ihd/hw_version.c
@@ -0,0 +1,216 @@
+/*
+ * Copyright (C) 2012-2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
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
+	BOARD_TYPE_DB,
+	BOARD_TYPE_CPU,
+};
+
+static struct board_info {
+	char *name;
+	enum board_type type;
+	unsigned char id;
+} board_list[] = {
+	{"SAM9M10-CM",		BOARD_TYPE_CPU,		0},
+	{"IHD-DB-9M10",		BOARD_TYPE_DB,		1},
+};
+
+static struct board_info* get_board_info_by_name(const char *name)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(board_list); i++)
+		if (strcmp(name, board_list[i].name) == 0)
+			return &board_list[i];
+
+	return NULL;
+}
+
+static struct vendor_info {
+	char *name;
+	enum vendor_id id;
+} vendor_list[] = {
+	{"ATMEL_SH",		VENDOR_ATMEL},
+	{"FLEX",		VENDOR_FLEX},
+};
+
+static struct vendor_info* get_vendor_info_by_name(const char *name)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(vendor_list); i++)
+		if (strcmp(name, vendor_list[i].name) == 0)
+			return &vendor_list[i];
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
+	u8 revision_code;
+	u8 revision_id;
+	u8 reserved;
+	u8 checksum_l;
+	u8 checksum_h;
+}__attribute__ ((packed));
+
+static int at91sam9m10ihd_read_w1(const char *file, struct one_wire_info *info)
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
+	pr_debug("revision_code = %x\n", info->revision_code);
+	pr_debug("revision_id = %x\n", info->revision_id);
+	pr_debug("reserved = %x\n", info->reserved);
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
+bool at91sam9m10ihd_cm_is_vendor(enum vendor_id vid)
+{
+	return ((sn >> 5) & 0x1f) == vid;
+}
+
+bool at91sam9m10ihd_db_is_vendor(enum vendor_id vid)
+{
+	return ((sn >> 15) & 0x1f) == vid;
+}
+
+static void at91sam9m10ihd_devices_detect_one(const char *name)
+{
+	struct one_wire_info info;
+	struct board_info* binfo;
+	struct vendor_info* vinfo;
+	struct device_d *dev = NULL;
+	char str[16];
+	u8 vendor_id = 0;
+
+	if (at91sam9m10ihd_read_w1(name, &info))
+		return;
+
+	binfo = get_board_info_by_name(info.board_name);
+
+	if (!binfo) {
+		pr_err("board %s no supported\n", info.board_name);
+		return;
+	}
+
+	vinfo = get_vendor_info_by_name(info.vendor_name);
+	if (vinfo)
+		vendor_id = vinfo->id;
+
+	switch (binfo->type) {
+	case BOARD_TYPE_CPU:
+		dev = add_generic_device_res("at91sam9m10ihd", DEVICE_ID_SINGLE, NULL, 0, NULL);
+		if (!dev)
+			return;
+		sn  |= (binfo->id & 0x1f);
+		sn  |= ((vendor_id & 0x1f) << 5);
+		rev |= (info.revision_code - 'A');
+		rev |= (((info.revision_id - '0') & 0x3) << 15);
+		pr_info("CM");
+		break;
+	case BOARD_TYPE_DB:
+		dev = add_generic_device_res("at91sam9m10ihd-db", DEVICE_ID_SINGLE, NULL, 0, NULL);
+		if (!dev)
+			return;
+		sn  |= ((binfo->id & 0x1f) << 20);
+		sn  |= ((vendor_id & 0x1f) << 25);
+		rev |= ((info.revision_code - 'A') << 10);
+		rev |= (((info.revision_id - '0') & 0x3) << 21);
+		pr_info("DB");
+		break;
+	}
+
+	pr_info(": %s [%c%c] from %s\n",
+		info.board_name, info.revision_code, info.revision_id,
+		info.vendor_name);
+
+	dev_add_param_fixed(dev, "vendor", info.vendor_name);
+	dev_add_param_fixed(dev, "board", info.board_name);
+	sprintf(str, "%.2s", info.vendor_country);
+	dev_add_param_fixed(dev, "country", str);
+	sprintf(str, "%d", info.year);
+	dev_add_param_fixed(dev, "year", str);
+	sprintf(str, "%d", info.week);
+	dev_add_param_fixed(dev, "week", str);
+	sprintf(str, "%c", info.revision_code);
+	dev_add_param_fixed(dev, "revision_code", str);
+	sprintf(str, "%c", info.revision_id);
+	dev_add_param_fixed(dev, "revision_id", str);
+}
+
+void at91sam9m10ihd_devices_detect_hw(void)
+{
+	at91sam9m10ihd_devices_detect_one("/dev/ds24310");
+	at91sam9m10ihd_devices_detect_one("/dev/ds24330");
+
+	pr_info("sn: 0x%x, rev: 0x%x\n", sn, rev);
+	armlinux_set_revision(rev);
+	armlinux_set_serial(sn);
+}
diff --git a/arch/arm/boards/at91sam9m10ihd/hw_version.h b/arch/arm/boards/at91sam9m10ihd/hw_version.h
new file mode 100644
index 0000000..b913344
--- /dev/null
+++ b/arch/arm/boards/at91sam9m10ihd/hw_version.h
@@ -0,0 +1,31 @@
+/*
+ * Copyright (C) 2012-2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
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
+	VENDOR_ATMEL	= 1,
+	VENDOR_FLEX	= 2,
+};
+
+void at91sam9m10ihd_devices_detect_hw(void);
+
+bool at91sam9m10ihd_cm_is_vendor(enum vendor_id vid);
+bool at91sam9m10ihd_db_is_vendor(enum vendor_id vid);
+
+#endif /* __HW_REVISION_H__ */
diff --git a/arch/arm/boards/at91sam9m10ihd/init.c b/arch/arm/boards/at91sam9m10ihd/init.c
new file mode 100644
index 0000000..beede0b
--- /dev/null
+++ b/arch/arm/boards/at91sam9m10ihd/init.c
@@ -0,0 +1,220 @@
+/*
+ * Copyright (C) 2009-2012 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ */
+
+#include <common.h>
+#include <net.h>
+#include <mci.h>
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
+#include <gpio.h>
+#include <mach/io.h>
+#include <mach/at91sam9_smc.h>
+#include <input/qt1070.h>
+#include <readkey.h>
+#include <linux/w1-gpio.h>
+#include <w1_mac_address.h>
+#include <spi/spi.h>
+
+#include "hw_version.h"
+
+struct w1_gpio_platform_data w1_pdata = {
+	.pin = AT91_PIN_PB25,
+	.ext_pullup_enable_pin = -EINVAL,
+	.is_open_drain = 0,
+};
+
+static struct atmel_nand_data nand_pdata = {
+	.ale		= 21,
+	.cle		= 22,
+	.det_pin	= -EINVAL,
+	.rdy_pin	= AT91_PIN_PC15,
+	.enable_pin	= AT91_PIN_PC14,
+	.bus_width_16	= 0,
+	.on_flash_bbt	= 1,
+};
+
+static struct sam9_smc_config ek_nand_smc_config = {
+	.ncs_read_setup		= 0,
+	.nrd_setup		= 2,
+	.ncs_write_setup	= 0,
+	.nwe_setup		= 2,
+
+	.ncs_read_pulse		= 4,
+	.nrd_pulse		= 4,
+	.ncs_write_pulse	= 4,
+	.nwe_pulse		= 4,
+
+	.read_cycle		= 7,
+	.write_cycle		= 7,
+
+	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE | AT91_SMC_EXNWMODE_DISABLE,
+	.tdf_cycles		= 3,
+};
+
+static void ek_add_device_nand(void)
+{
+	/* setup bus-width (8 or 16) */
+	if (nand_pdata.bus_width_16)
+		ek_nand_smc_config.mode |= AT91_SMC_DBW_16;
+	else
+		ek_nand_smc_config.mode |= AT91_SMC_DBW_8;
+
+	/* configure chip-select 3 (NAND) */
+	sam9_smc_configure(0, 3, &ek_nand_smc_config);
+
+	at91_add_device_nand(&nand_pdata);
+}
+
+static struct at91_ether_platform_data macb_pdata = {
+	.is_rmii = 1,
+	.phy_addr = 0,
+};
+
+static void ek_add_device_eth(void)
+{
+	if (w1_local_mac_address_register(0, "tml", "w1-2d-0"))
+		w1_local_mac_address_register(0, "tml", "w1-23-0");
+
+	at91_add_device_eth(0, &macb_pdata);
+}
+
+#if defined(CONFIG_MCI_ATMEL)
+static struct atmel_mci_platform_data ek_mci0_data = {
+	.bus_width	= 4,
+	.detect_pin	= AT91_PIN_PC25,
+};
+
+static void ek_add_device_mci(void)
+{
+	at91_add_device_mci(0, &ek_mci0_data);
+}
+#else
+static void ek_add_device_mci(void) {}
+#endif
+
+struct qt1070_platform_data qt1070_pdata = {
+	.irq_pin	= AT91_PIN_PB19,
+	.code		= { KEY_ENTER, KEY_ENTER, KEY_UP, KEY_DOWN, },
+	.nb_code	= 4,
+};
+
+static struct i2c_board_info i2c_devices[] = {
+	{
+		.platform_data = &qt1070_pdata,
+		I2C_BOARD_INFO("qt1070", 0x1b),
+	}, {
+		I2C_BOARD_INFO("24c512", 0x51)
+	},
+};
+
+static void ek_add_device_i2c(void)
+{
+	at91_set_gpio_input(qt1070_pdata.irq_pin, 0);
+	at91_set_deglitch(qt1070_pdata.irq_pin, 1);
+	at91_add_device_i2c(0, i2c_devices, ARRAY_SIZE(i2c_devices));
+}
+
+static const struct spi_board_info ek_spi_devices[] = {
+	{
+		.name		= "m25p80",
+		.chip_select	= 0,
+		.max_speed_hz	= 15 * 1000 * 1000,
+		.bus_num	= 0,
+	}
+};
+
+static unsigned spi0_standard_cs[] = { AT91_PIN_PB3 };
+static struct at91_spi_platform_data spi_pdata = {
+	.chipselect = spi0_standard_cs,
+	.num_chipselect = ARRAY_SIZE(spi0_standard_cs),
+};
+
+static void ek_add_device_spi(void)
+{
+	spi_register_board_info(ek_spi_devices,
+				ARRAY_SIZE(ek_spi_devices));
+	at91_add_device_spi(0, &spi_pdata);
+}
+
+/*
+ * USB HS Host port (common to OHCI & EHCI)
+ */
+static struct at91_usbh_data ek_usbh_hs_data = {
+	.ports			= 1,
+	.vbus_pin		= {AT91_PIN_PC30, -EINVAL},
+	.vbus_pin_active_low	= {1, 0},
+};
+
+static void ek_add_device_usb(void)
+{
+	at91_add_device_usbh_ohci(&ek_usbh_hs_data);
+	at91_add_device_usbh_ehci(&ek_usbh_hs_data);
+}
+
+static int at91sam9m10g45ek_mem_init(void)
+{
+	at91_add_device_sdram(128 * 1024 * 1024);
+
+	return 0;
+}
+mem_initcall(at91sam9m10g45ek_mem_init);
+
+static void ek_add_device_w1(void)
+{
+	at91_set_gpio_input(w1_pdata.pin, 0);
+	at91_set_multi_drive(w1_pdata.pin, 1);
+	add_generic_device_res("w1-gpio", DEVICE_ID_SINGLE, NULL, 0, &w1_pdata);
+
+	at91sam9m10ihd_devices_detect_hw();
+}
+
+static int at91sam9m10ihd_devices_init(void)
+{
+	ek_add_device_w1();
+	ek_add_device_nand();
+	ek_add_device_eth();
+	ek_add_device_mci();
+	ek_add_device_spi();
+	ek_add_device_i2c();
+	ek_add_device_usb();
+
+	devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
+	dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
+	devfs_add_partition("nand0", SZ_128K, SZ_256K, DEVFS_PARTITION_FIXED, "self_raw");
+	dev_add_bb_dev("self_raw", "self0");
+	devfs_add_partition("nand0", SZ_256K + SZ_128K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw");
+	dev_add_bb_dev("env_raw", "env0");
+	devfs_add_partition("nand0", SZ_512K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw1");
+	dev_add_bb_dev("env_raw1", "env1");
+
+	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_6 + 0x100));
+	/*
+	 * The internal Atmel kernel use the SAM9M10G45EK machine id
+	 * The mainline use DT
+	 */
+	armlinux_set_architecture(MACH_TYPE_AT91SAM9M10G45EK);
+
+	return 0;
+}
+device_initcall(at91sam9m10ihd_devices_init);
+
+static int at91sam9m10ihd_console_init(void)
+{
+	at91_register_uart(0, 0);
+	return 0;
+}
+console_initcall(at91sam9m10ihd_console_init);
diff --git a/arch/arm/configs/at91sam9m10ihd_defconfig b/arch/arm/configs/at91sam9m10ihd_defconfig
new file mode 100644
index 0000000..f6c3ef7
--- /dev/null
+++ b/arch/arm/configs/at91sam9m10ihd_defconfig
@@ -0,0 +1,94 @@
+CONFIG_ARCH_AT91SAM9G45=y
+CONFIG_MACH_AT91SAM9M10IHD=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
+CONFIG_AEABI=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_PBL_IMAGE=y
+CONFIG_MMU=y
+CONFIG_MALLOC_TLSF=y
+CONFIG_PROMPT="9M10IHD:"
+CONFIG_LONGHELP=y
+CONFIG_PROMPT_HUSH_PS2=">"
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_PASSWD_SUM_SHA1=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/at91sam9m10ihd/env"
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_PASSWD=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_UBIFORMAT=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_CMD_BOOTM_AIMAGE=y
+CONFIG_CMD_UIMAGE=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_SPI=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_NFS=y
+CONFIG_NET_PING=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_NET_RESOLV=y
+CONFIG_DRIVER_NET_MACB=y
+CONFIG_NET_USB=y
+CONFIG_NET_USB_ASIX=y
+CONFIG_DRIVER_SPI_ATMEL=y
+CONFIG_I2C=y
+CONFIG_I2C_GPIO=y
+CONFIG_MTD=y
+# CONFIG_MTD_OOB_DEVICE is not set
+CONFIG_MTD_M25P80=y
+CONFIG_NAND=y
+# CONFIG_NAND_ECC_HW is not set
+# CONFIG_NAND_ECC_HW_SYNDROME is not set
+# CONFIG_NAND_ECC_HW_NONE is not set
+CONFIG_NAND_ATMEL=y
+CONFIG_UBI=y
+CONFIG_USB=y
+CONFIG_USB_EHCI=y
+CONFIG_USB_EHCI_ATMEL=y
+CONFIG_USB_STORAGE=y
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_ATMEL=y
+CONFIG_EEPROM_AT24=y
+CONFIG_KEYBOARD_QT1070=y
+CONFIG_W1=y
+CONFIG_W1_MASTER_GPIO=y
+CONFIG_W1_SLAVE_DS2431=y
+CONFIG_W1_SLAVE_DS2433=y
+CONFIG_FS_EXT4=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 4323d7c..b1e4a50 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -31,6 +31,7 @@ config BOARDINFO
 	default "Atmel at91sam9263-ek" if MACH_AT91SAM9263EK
 	default "Atmel at91sam9g10-ek" if MACH_AT91SAM9G10EK
 	default "Atmel at91sam9g20-ek" if MACH_AT91SAM9G20EK
+	default "Atmel at91sam9m10ihd" if MACH_AT91SAM9M10IHD
 	default "Atmel at91sam9m10g45-ek" if MACH_AT91SAM9M10G45EK
 	default "Atmel at91sam9n12-ek" if MACH_AT91SAM9N12EK
 	default "Atmel at91sam9x5-ek" if MACH_AT91SAM9X5EK
@@ -371,6 +372,11 @@ if ARCH_AT91SAM9G45
 choice
 	prompt "AT91SAM9G45 or AT91SAM9M10 Board Type"
 
+config MACH_AT91SAM9M10IHD
+	bool "Atmel AT91SAM9M10IDH Tablet"
+	help
+	  Select this if you are using Atmel's AT91SAM9M10IHD Tablet
+
 config MACH_AT91SAM9M10G45EK
 	bool "Atmel AT91SAM9M10G45-EK Evaluation Kit"
 	select HAVE_NAND_ATMEL_BUSWIDTH_16
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
