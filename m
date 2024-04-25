Delivery-date: Thu, 25 Apr 2024 14:11:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzxwm-00Ggsk-01
	for lore@lore.pengutronix.de;
	Thu, 25 Apr 2024 14:11:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzxwi-0007aD-Te
	for lore@pengutronix.de; Thu, 25 Apr 2024 14:11:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZnUi8ahc6vsVBdyGNc+5F1kUu/14RcjO5pMLK4oDUPc=; b=C/ugtFUQxPLhj5
	CLRTG6wxCHB1YycVCphGKOp2q/dYUrd85vMMoBrIEKwNBGqWZMcFdO12dnO4WyslQB9dHoPRD6VvO
	RqRqIIZJDiZw+Ju4qJ/HqfBdup95rMn/kepdl6F8i9NATi7qw7B5aHj22eL6astR6FjV6oLDYeMgo
	ANRXmUhdrhWFa8ekOLkvA5CUPTBOanasiSnhDrc6T8/KCKqWgF0La7XCvOT3LmgTw3ScUKTKS99D7
	p5xzjOtekPstPbVLz0/iHSGaLU+7FRwxREkOk6592wOaMwI8jrr/dB0bf5t6NVpO48nkNeiSKCV61
	tt3D3dUdJU+azXrlAomw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzxw5-000000089qL-14SY;
	Thu, 25 Apr 2024 12:10:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzxvx-000000089ln-2eA0
	for barebox@lists.infradead.org;
	Thu, 25 Apr 2024 12:10:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxvg-0006ec-Cf; Thu, 25 Apr 2024 14:10:20 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxvf-00EFvN-OU; Thu, 25 Apr 2024 14:10:19 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxgY-009aQk-2J;
	Thu, 25 Apr 2024 13:54:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 25 Apr 2024 13:54:34 +0200
Message-Id: <20240425115439.2269239-11-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240425115439.2269239-1-s.hauer@pengutronix.de>
References: <20240425115439.2269239-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_051038_423974_8C61C563 
X-CRM114-Status: GOOD (  17.17  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Jan Weitzel <j.weitzel@phytec.de>, Vicente Bergas <vicencb@gmail.com>, Bo Shen <voice.shen@atmel.com>, Matthias Kaehlcke <matthias@kaehlcke.net>, Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 10/15] ARM: remove non PBL Atmel boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Some Atmel AT91 boards still do not have PBL support which becomes
mandatory soon. Remove these boards.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/Makefile                      |   3 -
 arch/arm/boards/sama5d3xek/Makefile           |   6 -
 .../defaultenv-sama5d3xek/bin/init_board      |  15 -
 .../sama5d3xek/defaultenv-sama5d3xek/config   |  44 --
 arch/arm/boards/sama5d3xek/hw_version.c       | 236 ---------
 arch/arm/boards/sama5d3xek/hw_version.h       |  40 --
 arch/arm/boards/sama5d3xek/init.c             | 475 ------------------
 arch/arm/boards/sama5d3xek/lowlevel.c         |  23 -
 arch/arm/boards/sama5d4_xplained/Makefile     |   4 -
 arch/arm/boards/sama5d4_xplained/env/boot/mmc |   8 -
 .../arm/boards/sama5d4_xplained/env/boot/nand |   8 -
 .../sama5d4_xplained/env/init/automount       |   5 -
 .../sama5d4_xplained/env/init/mtdparts-nand   |   6 -
 .../boards/sama5d4_xplained/env/init/splash   |  15 -
 .../sama5d4_xplained/env/nv/boot.default      |   1 -
 .../env/nv/linux.bootargs.console             |   1 -
 arch/arm/boards/sama5d4_xplained/lowlevel.c   |  23 -
 .../sama5d4_xplained/sama5d4_xplained.c       | 320 ------------
 arch/arm/boards/sama5d4ek/Makefile            |   4 -
 arch/arm/boards/sama5d4ek/env/boot/nand       |   6 -
 .../boards/sama5d4ek/env/init/mtdparts-nand   |   6 -
 .../boards/sama5d4ek/env/init/mtdparts-nor    |   6 -
 arch/arm/boards/sama5d4ek/env/init/splash     |  10 -
 arch/arm/boards/sama5d4ek/env/nv/boot.default |   1 -
 arch/arm/boards/sama5d4ek/env/nv/hostname     |   1 -
 .../sama5d4ek/env/nv/linux.bootargs.console   |   1 -
 arch/arm/boards/sama5d4ek/lowlevel.c          |  23 -
 arch/arm/boards/sama5d4ek/sama5d4ek.c         | 318 ------------
 arch/arm/configs/sama5d4_xplained_defconfig   |  84 ----
 arch/arm/configs/sama5d4ek_defconfig          |  83 ---
 arch/arm/mach-at91/Kconfig                    |  36 --
 31 files changed, 1812 deletions(-)
 delete mode 100644 arch/arm/boards/sama5d3xek/Makefile
 delete mode 100644 arch/arm/boards/sama5d3xek/defaultenv-sama5d3xek/bin/init_board
 delete mode 100644 arch/arm/boards/sama5d3xek/defaultenv-sama5d3xek/config
 delete mode 100644 arch/arm/boards/sama5d3xek/hw_version.c
 delete mode 100644 arch/arm/boards/sama5d3xek/hw_version.h
 delete mode 100644 arch/arm/boards/sama5d3xek/init.c
 delete mode 100644 arch/arm/boards/sama5d3xek/lowlevel.c
 delete mode 100644 arch/arm/boards/sama5d4_xplained/Makefile
 delete mode 100644 arch/arm/boards/sama5d4_xplained/env/boot/mmc
 delete mode 100644 arch/arm/boards/sama5d4_xplained/env/boot/nand
 delete mode 100644 arch/arm/boards/sama5d4_xplained/env/init/automount
 delete mode 100644 arch/arm/boards/sama5d4_xplained/env/init/mtdparts-nand
 delete mode 100644 arch/arm/boards/sama5d4_xplained/env/init/splash
 delete mode 100644 arch/arm/boards/sama5d4_xplained/env/nv/boot.default
 delete mode 100644 arch/arm/boards/sama5d4_xplained/env/nv/linux.bootargs.console
 delete mode 100644 arch/arm/boards/sama5d4_xplained/lowlevel.c
 delete mode 100644 arch/arm/boards/sama5d4_xplained/sama5d4_xplained.c
 delete mode 100644 arch/arm/boards/sama5d4ek/Makefile
 delete mode 100644 arch/arm/boards/sama5d4ek/env/boot/nand
 delete mode 100644 arch/arm/boards/sama5d4ek/env/init/mtdparts-nand
 delete mode 100644 arch/arm/boards/sama5d4ek/env/init/mtdparts-nor
 delete mode 100644 arch/arm/boards/sama5d4ek/env/init/splash
 delete mode 100644 arch/arm/boards/sama5d4ek/env/nv/boot.default
 delete mode 100644 arch/arm/boards/sama5d4ek/env/nv/hostname
 delete mode 100644 arch/arm/boards/sama5d4ek/env/nv/linux.bootargs.console
 delete mode 100644 arch/arm/boards/sama5d4ek/lowlevel.c
 delete mode 100644 arch/arm/boards/sama5d4ek/sama5d4ek.c
 delete mode 100644 arch/arm/configs/sama5d4_xplained_defconfig
 delete mode 100644 arch/arm/configs/sama5d4ek_defconfig

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 6e9e6798ba..fc8c032ec1 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -103,13 +103,10 @@ obj-$(CONFIG_MACH_SKOV_IMX8MP)			+= skov-imx8mp/
 obj-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB)	+= freescale-mx6sx-sabresdb/
 obj-$(CONFIG_MACH_SAMA5D27_GIANTBOARD)		+= sama5d27-giantboard/
 obj-$(CONFIG_MACH_SAMA5D27_SOM1)		+= sama5d27-som1/
-obj-$(CONFIG_MACH_SAMA5D3XEK)			+= sama5d3xek/
 obj-$(CONFIG_MACH_SAMA5D3_XPLAINED)		+= sama5d3_xplained/
 obj-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB)	+= microchip-ksz9477-evb/
 obj-$(CONFIG_MACH_MICROCHIP_SAMA5D3_EDS)	+= microchip-sama5d3-eds/
-obj-$(CONFIG_MACH_SAMA5D4_XPLAINED)		+= sama5d4_xplained/
 obj-$(CONFIG_MACH_SAMA5D4_WIFX)			+= sama5d4_wifx/
-obj-$(CONFIG_MACH_SAMA5D4EK)			+= sama5d4ek/
 obj-$(CONFIG_MACH_SCB9328)			+= scb9328/
 obj-$(CONFIG_MACH_SEEED_ODYSSEY)		+= seeed-odyssey/
 obj-$(CONFIG_MACH_SOCFPGA_ALTERA_SOCDK)		+= altera-socdk/
diff --git a/arch/arm/boards/sama5d3xek/Makefile b/arch/arm/boards/sama5d3xek/Makefile
deleted file mode 100644
index 9691f07917..0000000000
--- a/arch/arm/boards/sama5d3xek/Makefile
+++ /dev/null
@@ -1,6 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-obj-y += init.o
-obj-$(CONFIG_W1) += hw_version.o
-lwl-y += lowlevel.o
-bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-sama5d3xek
diff --git a/arch/arm/boards/sama5d3xek/defaultenv-sama5d3xek/bin/init_board b/arch/arm/boards/sama5d3xek/defaultenv-sama5d3xek/bin/init_board
deleted file mode 100644
index f3d417e356..0000000000
--- a/arch/arm/boards/sama5d3xek/defaultenv-sama5d3xek/bin/init_board
+++ /dev/null
@@ -1,15 +0,0 @@
-#!/bin/sh
-
-PATH=/env/bin
-export PATH
-
-. /env/config
-
-splash=/env/splash.png
-
-if [ -f ${splash} -a -e /dev/fb0 ]; then
-	splash -o ${splash}
-	fb0.enable=1
-fi
-
-exit 1
diff --git a/arch/arm/boards/sama5d3xek/defaultenv-sama5d3xek/config b/arch/arm/boards/sama5d3xek/defaultenv-sama5d3xek/config
deleted file mode 100644
index a7fd930ed1..0000000000
--- a/arch/arm/boards/sama5d3xek/defaultenv-sama5d3xek/config
+++ /dev/null
@@ -1,44 +0,0 @@
-#!/bin/sh
-
-# use 'dhcp' to do dhcp in barebox and in kernel
-# use 'none' if you want to skip kernel ip autoconfiguration
-ip=dhcp-barebox
-global.dhcp.vendor_id=barebox-sama5d3xek
-global.dhcp.client_id="${sama5d3xcm.board}-${sama5d3xcm.vendor}"
-
-# or set your networking parameters here
-#eth0.ipaddr=a.b.c.d
-#eth0.netmask=a.b.c.d
-#eth0.gateway=a.b.c.d
-#eth0.serverip=a.b.c.d
-
-# can be either 'nfs', 'tftp', 'nor' or 'nand'
-kernel_loc=nfs
-# can be either 'net', 'nor', 'nand' or 'initrd'
-rootfs_loc=net
-# can be either 'nfs', 'tftp', 'nand' or empty
-oftree_loc=nfs
-
-# can be either 'jffs2' or 'ubifs'
-rootfs_type=ubifs
-rootfsimage=root.$rootfs_type
-ubiroot=rootfs
-
-# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
-kernelimage=zImage
-#kernelimage=uImage
-#kernelimage=Image
-#kernelimage=Image.lzo
-
-nand_device=atmel_nand
-nand_parts="256k(at91bootstrap),384k(barebox)ro,256k@768k(bareboxenv),256k(bareboxenv2),128k@1536k(oftree),5M@2M(kernel),-@8M(rootfs)"
-rootfs_mtdblock_nand=6
-
-m25p80_parts="64k(bootstrap),384k(barebox),256k(bareboxenv),256k(bareboxenv2),128k(oftree),-(updater)"
-
-autoboot_timeout=3
-
-bootargs="console=ttyS0,115200"
-
-# set a fancy prompt (if support is compiled in)
-PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m\n# "
diff --git a/arch/arm/boards/sama5d3xek/hw_version.c b/arch/arm/boards/sama5d3xek/hw_version.c
deleted file mode 100644
index c64d4566c6..0000000000
--- a/arch/arm/boards/sama5d3xek/hw_version.c
+++ /dev/null
@@ -1,236 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
-
-#include <common.h>
-#include <fs.h>
-#include <fcntl.h>
-#include <libbb.h>
-#include <libfile.h>
-#include <asm/armlinux.h>
-#include <of.h>
-
-#include "hw_version.h"
-
-enum board_type {
-	BOARD_TYPE_MB,
-	BOARD_TYPE_DM,
-	BOARD_TYPE_CPU,
-};
-
-static struct board_info {
-	char *name;
-	enum board_type type;
-	unsigned char id;
-} board_list[] = {
-	{"SAMA5D3x-MB",		BOARD_TYPE_MB,		0},
-	{"SAMA5D3x-DM",		BOARD_TYPE_DM,		1},
-	{"SAMA5D31-CM",		BOARD_TYPE_CPU,		2},
-	{"SAMA5D33-CM",		BOARD_TYPE_CPU,		3},
-	{"SAMA5D34-CM",		BOARD_TYPE_CPU,		4},
-	{"SAMA5D35-CM",		BOARD_TYPE_CPU,		5},
-	{"PDA-DM",		BOARD_TYPE_DM,		7},
-};
-
-static struct board_info* get_board_info_by_name(const char *name)
-{
-	int i;
-
-	for (i = 0; i < ARRAY_SIZE(board_list); i++) {
-		char *bname = board_list[i].name;
-		if (strncmp(name, bname, strlen(bname)) == 0)
-			return &board_list[i];
-	}
-
-	return NULL;
-}
-
-static struct vendor_info {
-	char *name;
-	enum vendor_id id;
-} vendor_list[] = {
-	{"EMBEST",		VENDOR_EMBEST},
-	{"FLEX",		VENDOR_FLEX},
-	{"RONETIX",		VENDOR_RONETIX},
-	{"COGENT",		VENDOR_COGENT},
-	{"PDA",			VENDOR_PDA},
-};
-
-static struct vendor_info* get_vendor_info_by_name(const char *name)
-{
-	int i;
-
-	for (i = 0; i < ARRAY_SIZE(vendor_list); i++) {
-		char *vname = vendor_list[i].name;
-		if (strncmp(name, vname, strlen(vname)) == 0)
-			return &vendor_list[i];
-	}
-
-	return NULL;
-}
-
-#define BOARD_NAME_LEN			12
-#define VENDOR_NAME_LEN			10
-#define VENDOR_COUNTRY_LEN		2
-
-struct one_wire_info {
-	u8 total_bytes;
-	u8 vendor_name[VENDOR_NAME_LEN];
-	u8 vendor_country[VENDOR_COUNTRY_LEN];
-	u8 board_name[BOARD_NAME_LEN];
-	u8 year;
-	u8 week;
-	u8 revision_board;
-	u8 revision_schema;
-	u8 revision_bom;
-	u8 checksum_l;
-	u8 checksum_h;
-}__attribute__ ((packed));
-
-static int at91sama5d3xek_read_w1(const char *file, struct one_wire_info *info)
-{
-	int fd;
-	int ret;
-
-	fd = open(file, O_RDONLY);
-	if (fd < 0) {
-		ret = fd;
-		goto err;
-	}
-
-	ret = read_full(fd, info, sizeof(*info));
-	if (ret < 0)
-		goto err_open;
-
-	if (ret < sizeof(*info)) {
-		ret =  -EINVAL;
-		goto err_open;
-	}
-
-	pr_debug("total_bytes = %d\n", info->total_bytes);
-	pr_debug("vendor_name = %s\n", info->vendor_name);
-	pr_debug("vendor_country = %.2s\n", info->vendor_country);
-	pr_debug("board_name = %s\n", info->board_name);
-	pr_debug("year = %d\n", info->year);
-	pr_debug("week = %d\n", info->week);
-	pr_debug("revision_board = %x\n", info->revision_board);
-	pr_debug("revision_schema = %x\n", info->revision_schema);
-	pr_debug("revision_bom = %x\n", info->revision_bom);
-	pr_debug("checksum_l = %x\n", info->checksum_l);
-	pr_debug("checksum_h = %x\n", info->checksum_h);
-
-	ret = 0;
-
-err_open:
-	close(fd);
-err:
-	if (ret)
-		pr_err("can not read 1-wire %s (%s)\n", file, strerror(ret));
-	return ret;
-}
-
-static u32 sn = 0;
-static u32 rev = 0;
-
-bool at91sama5d3xek_cm_is_vendor(enum vendor_id vid)
-{
-	return ((sn >> 5) & 0x1f) == vid;
-}
-
-bool at91sama5d3xek_ek_is_vendor(enum vendor_id vid)
-{
-	return ((sn >> 25) & 0x1f) == vid;
-}
-
-bool at91sama5d3xek_dm_is_vendor(enum vendor_id vid)
-{
-	return ((sn >> 15) & 0x1f) == vid;
-}
-
-static void at91sama5d3xek_devices_detect_one(const char *name)
-{
-	struct one_wire_info info;
-	struct board_info* binfo;
-	struct vendor_info* vinfo;
-	struct device *dev = NULL;
-	char str[16];
-	char *bname, *vname;
-	u8 vendor_id = 0;
-
-	if (at91sama5d3xek_read_w1(name, &info))
-		return;
-
-	binfo = get_board_info_by_name(info.board_name);
-
-	if (!binfo) {
-		pr_err("board %s no supported\n", info.board_name);
-		return;
-	}
-	bname = binfo->name;
-
-	vinfo = get_vendor_info_by_name(info.vendor_name);
-	vname = info.vendor_name;
-	if (vinfo) {
-		vendor_id = vinfo->id;
-		vname = vinfo->name;
-	}
-
-	switch (binfo->type) {
-	case BOARD_TYPE_CPU:
-		dev = add_generic_device_res("sama5d3xcm", DEVICE_ID_SINGLE, NULL, 0, NULL);
-		if (!dev)
-			return;
-		sn  |= (binfo->id & 0x1f);
-		sn  |= ((vendor_id & 0x1f) << 5);
-		rev |= (info.revision_board - 'A');
-		rev |= (((info.revision_schema - '0') & 0x3) << 15);
-		pr_info("CM");
-		break;
-	case BOARD_TYPE_MB:
-		dev = add_generic_device_res("sama5d3xmb", DEVICE_ID_SINGLE, NULL, 0, NULL);
-		if (!dev)
-			return;
-		sn  |= ((binfo->id & 0x1f) << 20);
-		sn  |= ((vendor_id & 0x1f) << 25);
-		rev |= ((info.revision_board - 'A') << 10);
-		rev |= (((info.revision_schema - '0') & 0x3) << 21);
-		pr_info("MB");
-		break;
-	case BOARD_TYPE_DM:
-		dev = add_generic_device_res("sama5d3xdm", DEVICE_ID_SINGLE, NULL, 0, NULL);
-		if (!dev)
-			return;
-		sn  |= ((binfo->id & 0x1f) << 10);
-		sn  |= ((vendor_id & 0x1f) << 15);
-		rev |= ((info.revision_board - 'A') << 5);
-		rev |= (((info.revision_schema - '0') & 0x3) << 18);
-		pr_info("DM");
-		break;
-	}
-
-	pr_info(": %s [%c%c] from %s\n",
-		bname, info.revision_board, info.revision_schema, vname);
-
-	dev_add_param_fixed(dev, "vendor", vname);
-	dev_add_param_fixed(dev, "board", bname);
-	sprintf(str, "%.2s", info.vendor_country);
-	dev_add_param_fixed(dev, "country", str);
-	dev_add_param_uint32_fixed(dev, "year", info.year, "%u");
-	dev_add_param_uint32_fixed(dev, "week", info.week, "%u");
-	sprintf(str, "%c", info.revision_board);
-	dev_add_param_fixed(dev, "revision_board", str);
-	sprintf(str, "%c", info.revision_schema);
-	dev_add_param_fixed(dev, "revision_schema", str);
-	sprintf(str, "%c", info.revision_bom);
-	dev_add_param_fixed(dev, "revision_bom", str);
-}
-
-void at91sama5d3xek_devices_detect_hw(void)
-{
-	at91sama5d3xek_devices_detect_one("/dev/ds24310");
-	at91sama5d3xek_devices_detect_one("/dev/ds28ec200");
-	at91sama5d3xek_devices_detect_one("/dev/ds24330");
-
-	pr_info("sn: 0x%x, rev: 0x%x\n", sn, rev);
-	armlinux_set_revision(rev);
-	armlinux_set_serial(sn);
-}
diff --git a/arch/arm/boards/sama5d3xek/hw_version.h b/arch/arm/boards/sama5d3xek/hw_version.h
deleted file mode 100644
index d90c751629..0000000000
--- a/arch/arm/boards/sama5d3xek/hw_version.h
+++ /dev/null
@@ -1,40 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
-
-#ifndef __HW_REVISION_H__
-#define __HW_REVISION_H__
-
-enum vendor_id {
-	VENDOR_UNKNOWN	= 0,
-	VENDOR_EMBEST	= 1,
-	VENDOR_FLEX	= 2,
-	VENDOR_RONETIX	= 3,
-	VENDOR_COGENT	= 4,
-	VENDOR_PDA	= 5,
-};
-
-#ifdef CONFIG_W1
-bool at91sama5d3xek_cm_is_vendor(enum vendor_id vid);
-bool at91sama5d3xek_ek_is_vendor(enum vendor_id vid);
-bool at91sama5d3xek_dm_is_vendor(enum vendor_id vid);
-void at91sama5d3xek_devices_detect_hw(void);
-#else
-bool at91sama5d3xek_cm_is_vendor(enum vendor_id vid)
-{
-	return false;
-}
-
-bool at91sama5d3xek_ek_is_vendor(enum vendor_id vid)
-{
-	return false;
-}
-
-bool at91sama5d3xek_dm_is_vendor(enum vendor_id vid)
-{
-	return false;
-}
-
-void at91sama5d3xek_devices_detect_hw(void) {}
-#endif
-
-#endif /* __HW_REVISION_H__ */
diff --git a/arch/arm/boards/sama5d3xek/init.c b/arch/arm/boards/sama5d3xek/init.c
deleted file mode 100644
index b75856198e..0000000000
--- a/arch/arm/boards/sama5d3xek/init.c
+++ /dev/null
@@ -1,475 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
-
-#include <common.h>
-#include <net.h>
-#include <init.h>
-#include <environment.h>
-#include <asm/armlinux.h>
-#include <asm/mach-types.h>
-#include <fs.h>
-#include <fcntl.h>
-#include <io.h>
-#include <envfs.h>
-#include <mach/at91/hardware.h>
-#include <nand.h>
-#include <linux/sizes.h>
-#include <linux/mtd/nand.h>
-#include <linux/mtd/rawnand.h>
-#include <mach/at91/board.h>
-#include <mach/at91/at91sam9_smc.h>
-#include <gpio.h>
-#include <mach/at91/iomux.h>
-#include <mach/at91/at91_pmc.h>
-#include <mach/at91/at91_rstc.h>
-#include <mach/at91/at91sam9x5_matrix.h>
-#include <input/qt1070.h>
-#include <readkey.h>
-#include <poller.h>
-#include <linux/w1-gpio.h>
-#include <w1_mac_address.h>
-#include <spi/spi.h>
-#include <linux/clk.h>
-#include <linux/phy.h>
-#include <linux/micrel_phy.h>
-
-#include "hw_version.h"
-
-#ifdef CONFIG_W1_MASTER_GPIO
-struct w1_gpio_platform_data w1_pdata = {
-	.pin = AT91_PIN_PE25,
-	.ext_pullup_enable_pin = -EINVAL,
-	.is_open_drain = 0,
-};
-#endif
-
-#if defined(CONFIG_NAND_ATMEL)
-static struct atmel_nand_data nand_pdata = {
-	.ale		= 21,
-	.cle		= 22,
-	.det_pin	= -EINVAL,
-	.rdy_pin	= -EINVAL,
-	.enable_pin	= -EINVAL,
-	.ecc_mode	= NAND_ECC_HW,
-	.has_pmecc	= 1,
-	.pmecc_sector_size = 512,
-	.pmecc_corr_cap = 4,
-#if defined(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16)
-	.bus_width_16	= 1,
-#endif
-	.on_flash_bbt	= 1,
-};
-
-static struct sam9_smc_config cm_nand_smc_config = {
-	.ncs_read_setup		= 1,
-	.nrd_setup		= 2,
-	.ncs_write_setup	= 1,
-	.nwe_setup		= 2,
-
-	.ncs_read_pulse		= 5,
-	.nrd_pulse		= 3,
-	.ncs_write_pulse	= 5,
-	.nwe_pulse		= 3,
-
-	.read_cycle		= 8,
-	.write_cycle		= 8,
-
-	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE | AT91_SMC_EXNWMODE_DISABLE,
-	.tdf_cycles		= 3,
-
-	.tclr			= 3,
-	.tadl			= 10,
-	.tar			= 3,
-	.ocms			= 0,
-	.trr			= 4,
-	.twb			= 5,
-	.rbnsel			= 3,
-	.nfsel			= 1
-};
-
-static void ek_add_device_nand(void)
-{
-	struct clk *clk = clk_get(NULL, "smc_clk");
-
-	clk_enable(clk);
-
-	/* setup bus-width (8 or 16) */
-	if (nand_pdata.bus_width_16)
-		cm_nand_smc_config.mode |= AT91_SMC_DBW_16;
-	else
-		cm_nand_smc_config.mode |= AT91_SMC_DBW_8;
-
-	/* configure chip-select 3 (NAND) */
-	sama5_smc_configure(0, 3, &cm_nand_smc_config);
-
-	at91_add_device_nand(&nand_pdata);
-}
-#else
-static void ek_add_device_nand(void) {}
-#endif
-
-#if defined(CONFIG_DRIVER_NET_MACB)
-static struct macb_platform_data gmac_pdata = {
-	.phy_interface = PHY_INTERFACE_MODE_RGMII,
-	.phy_addr = -1,
-};
-
-static struct macb_platform_data macb_pdata = {
-	.phy_interface = PHY_INTERFACE_MODE_RMII,
-	.phy_addr = -1,
-};
-
-static bool used_23 = false;
-static bool used_43 = false;
-
-static int ek_register_mac_address_23(int id)
-{
-	if (used_23)
-		return -EBUSY;
-
-	used_23 = true;
-
-	return w1_local_mac_address_register(id, "tml", "w1-23-0");
-}
-
-static int ek_register_mac_address_43(int id)
-{
-	if (used_43)
-		return -EBUSY;
-
-	used_43 = true;
-
-	return w1_local_mac_address_register(id, "tml", "w1-43-0");
-}
-
-static int ksz9021rn_phy_fixup(struct phy_device *phy)
-{
-	int value;
-
-#define GMII_RCCPSR	260
-#define GMII_RRDPSR	261
-#define GMII_ERCR	11
-#define GMII_ERDWR	12
-
-	/* Set delay values */
-	value = GMII_RCCPSR | 0x8000;
-	phy_write(phy, GMII_ERCR, value);
-	value = 0xF2F4;
-	phy_write(phy, GMII_ERDWR, value);
-	value = GMII_RRDPSR | 0x8000;
-	phy_write(phy, GMII_ERCR, value);
-	value = 0x2222;
-	phy_write(phy, GMII_ERDWR, value);
-
-	return 0;
-}
-
-static void ek_add_device_eth(void)
-{
-	if (w1_local_mac_address_register(0, "tml", "w1-2d-0"))
-		if (ek_register_mac_address_23(0))
-			ek_register_mac_address_43(0);
-
-	if (ek_register_mac_address_23(1))
-		ek_register_mac_address_43(1);
-
-	phy_register_fixup_for_uid(PHY_ID_KSZ9021, MICREL_PHY_ID_MASK,
-					   ksz9021rn_phy_fixup);
-
-	at91_add_device_eth(0, &gmac_pdata);
-	at91_add_device_eth(1, &macb_pdata);
-}
-#else
-static void ek_add_device_eth(void) {}
-#endif
-
-#if defined(CONFIG_DRIVER_VIDEO_ATMEL_HLCD)
-/*
- * LCD Controller
- */
-static struct fb_videomode at91_tft_vga_modes[] = {
-	{
-		.name		= "LG",
-		.refresh	= 60,
-		.xres		= 800,		.yres		= 480,
-		.pixclock	= KHZ2PICOS(33260),
-
-		.left_margin	= 88,		.right_margin	= 168,
-		.upper_margin	= 8,		.lower_margin	= 37,
-		.hsync_len	= 128,		.vsync_len	= 2,
-
-		.sync		= 0,
-		.vmode		= FB_VMODE_NONINTERLACED,
-	},
-};
-
-/* Default output mode is TFT 24 bit */
-#define BPP_OUT_DEFAULT_LCDCFG5	(LCDC_LCDCFG5_MODE_OUTPUT_24BPP)
-
-/* Driver datas */
-static struct atmel_lcdfb_platform_data ek_lcdc_data = {
-	.lcdcon_is_backlight		= true,
-	.default_bpp			= 16,
-	.default_dmacon			= ATMEL_LCDC_DMAEN,
-	.default_lcdcon2		= BPP_OUT_DEFAULT_LCDCFG5,
-	.guard_time			= 9,
-	.lcd_wiring_mode		= ATMEL_LCDC_WIRING_RGB,
-	.mode_list			= at91_tft_vga_modes,
-	.num_modes			= ARRAY_SIZE(at91_tft_vga_modes),
-};
-
-static void ek_add_device_lcdc(void)
-{
-	at91_add_device_lcdc(&ek_lcdc_data);
-}
-
-#else
-static void ek_add_device_lcdc(void) {}
-#endif
-
-#if defined(CONFIG_MCI_ATMEL)
-/*
- * MCI (SD/MMC)
- */
-static struct atmel_mci_platform_data mci0_data = {
-	.bus_width	= 4,
-	.detect_pin	= AT91_PIN_PD17,
-	.wp_pin		= -EINVAL,
-};
-
-static struct atmel_mci_platform_data mci1_data = {
-	.bus_width	= 4,
-	.detect_pin	= AT91_PIN_PD18,
-	.wp_pin		= -EINVAL,
-};
-
-static void ek_add_device_mci(void)
-{
-	/* MMC0 */
-	at91_add_device_mci(0, &mci0_data);
-	/* MMC1 */
-	at91_add_device_mci(1, &mci1_data);
-}
-#else
-static void ek_add_device_mci(void) {}
-#endif
-
-#if defined(CONFIG_I2C_GPIO)
-struct qt1070_platform_data qt1070_pdata = {
-	.irq_pin	= AT91_PIN_PE31,
-};
-
-static struct i2c_board_info i2c_devices[] = {
-	{
-		.platform_data = &qt1070_pdata,
-		I2C_BOARD_INFO("qt1070", 0x1b),
-	},
-};
-
-static void ek_add_device_i2c(void)
-{
-	at91_set_gpio_input(qt1070_pdata.irq_pin, 0);
-	at91_set_deglitch(qt1070_pdata.irq_pin, 1);
-	at91_add_device_i2c(1, i2c_devices, ARRAY_SIZE(i2c_devices));
-	at91_add_device_i2c(0, NULL, 0);
-}
-#else
-static void ek_add_device_i2c(void) {}
-#endif
-
-#if defined(CONFIG_DRIVER_SPI_ATMEL)
-static const struct spi_board_info ek_spi_devices[] = {
-	{
-		.name		= "m25p80",
-		.chip_select	= 0,
-		.max_speed_hz	= 30 * 1000 * 1000,
-		.bus_num	= 0,
-	}
-};
-
-static unsigned spi0_standard_cs[] = { AT91_PIN_PD13 };
-static struct at91_spi_platform_data spi_pdata = {
-	.chipselect = spi0_standard_cs,
-	.num_chipselect = ARRAY_SIZE(spi0_standard_cs),
-};
-
-static void ek_add_device_spi(void)
-{
-	spi_register_board_info(ek_spi_devices, ARRAY_SIZE(ek_spi_devices));
-	at91_add_device_spi(0, &spi_pdata);
-}
-#else
-static void ek_add_device_spi(void) {}
-#endif
-
-#ifdef CONFIG_LED_GPIO
-struct gpio_led leds[] = {
-	{
-		.gpio	= AT91_PIN_PE24,
-		.active_low	= 1,
-		.led	= {
-			.name = "d1",
-		},
-	}, {
-#ifndef CONFIG_W1_MASTER_GPIO
-		.gpio	= AT91_PIN_PE25,
-		.active_low	= 1,
-		.led	= {
-			.name = "d2",
-		},
-#endif
-	},
-};
-
-static void ek_add_led(void)
-{
-	int i;
-
-	for (i = 0; i < ARRAY_SIZE(leds); i++) {
-		at91_set_gpio_output(leds[i].gpio, leds[i].active_low);
-		led_gpio_register(&leds[i]);
-	}
-	led_set_trigger(LED_TRIGGER_HEARTBEAT, &leds[0].led);
-}
-#else
-static void ek_add_led(void) {}
-#endif
-
-static int at91sama5d3xek_mem_init(void)
-{
-	at91_add_device_sdram(0);
-
-	return 0;
-}
-mem_initcall(at91sama5d3xek_mem_init);
-
-#ifdef CONFIG_W1_MASTER_GPIO
-static void ek_add_device_w1(void)
-{
-	at91_set_gpio_input(w1_pdata.pin, 0);
-	at91_set_multi_drive(w1_pdata.pin, 1);
-	add_generic_device_res("w1-gpio", DEVICE_ID_SINGLE, NULL, 0, &w1_pdata);
-
-	at91sama5d3xek_devices_detect_hw();
-}
-#else
-static void ek_add_device_w1(void) {}
-#endif
-
-#ifdef CONFIG_POLLER
-/*
- * The SiI9022A (HDMI) and QT1070 share the same irq
- * but if the SiI9022A is not reset the irq is pull down
- * So do it. As the SiI9022A need 1s to reset (500ms up then 500ms down then up)
- * do it poller to do not slow down the boot
- */
-static int hdmi_reset_pin = AT91_PIN_PC31;
-static uint64_t hdmi_reset_start;
-struct poller_struct hdmi_poller;
-
-static void hdmi_on_poller(struct poller_struct *poller)
-{
-	if (!is_timeout_non_interruptible(hdmi_reset_start, 500 * MSECOND))
-		return;
-
-	gpio_set_value(hdmi_reset_pin, 1);
-
-	poller_unregister(poller);
-	ek_add_device_i2c();
-}
-
-static void hdmi_off_poller(struct poller_struct *poller)
-{
-	if (!is_timeout_non_interruptible(hdmi_reset_start, 500 * MSECOND))
-		return;
-
-	gpio_set_value(hdmi_reset_pin, 0);
-
-	hdmi_reset_start = get_time_ns();
-	poller->func = hdmi_on_poller;
-}
-
-static void ek_add_device_hdmi(void)
-{
-	at91_set_gpio_output(hdmi_reset_pin, 1);
-	hdmi_reset_start = get_time_ns();
-	hdmi_poller.func = hdmi_off_poller;
-
-	poller_register(&hdmi_poller, "hdmi-reset");
-}
-#else
-static void ek_add_device_hdmi(void)
-{
-	ek_add_device_i2c();
-}
-#endif
-
-static const struct devfs_partition at91sama5d3xek_nand0_partitions[] = {
-	{
-		.offset = 0x00000,
-		.size = SZ_256K,
-		.flags = DEVFS_PARTITION_FIXED,
-		.name = "at91bootstrap_raw",
-		.bbname = "at91bootstrap",
-	}, {
-		.offset = DEVFS_PARTITION_APPEND, /* 256 KiB */
-		.size = SZ_256K + SZ_128K,
-		.flags = DEVFS_PARTITION_FIXED,
-		.name = "self_raw",
-		.bbname = "self0",
-	},
-	/* hole of 128 KiB */
-	{
-		.offset = SZ_512K + SZ_256K,
-		.size = SZ_256K,
-		.flags = DEVFS_PARTITION_FIXED,
-		.name = "env_raw",
-		.bbname = "env0",
-	}, {
-		.offset = DEVFS_PARTITION_APPEND, /* 1 MiB */
-		.size = SZ_256K,
-		.flags = DEVFS_PARTITION_FIXED,
-		.name = "env_raw1",
-		.bbname = "env1",
-	}, {
-		/* sentinel */
-	}
-};
-
-static int at91sama5d3xek_devices_init(void)
-{
-	ek_add_device_w1();
-	ek_add_device_hdmi();
-	ek_add_device_nand();
-	ek_add_led();
-	ek_add_device_eth();
-	ek_add_device_spi();
-	ek_add_device_mci();
-	ek_add_device_lcdc();
-
-	devfs_create_partitions("nand0", at91sama5d3xek_nand0_partitions);
-
-	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
-		defaultenv_append_directory(defaultenv_sama5d3xek);
-
-	return 0;
-}
-device_initcall(at91sama5d3xek_devices_init);
-
-static int at91sama5d3xek_console_init(void)
-{
-	barebox_set_model("Atmel sama5d3x-ek");
-	barebox_set_hostname("sama5d3x-ek");
-
-	at91_register_uart(0, 0);
-	at91_register_uart(2, 0);
-	return 0;
-}
-console_initcall(at91sama5d3xek_console_init);
-
-static int at91sama5d3xek_main_clock(void)
-{
-	at91_set_main_clock(12000000);
-	return 0;
-}
-pure_initcall(at91sama5d3xek_main_clock);
diff --git a/arch/arm/boards/sama5d3xek/lowlevel.c b/arch/arm/boards/sama5d3xek/lowlevel.c
deleted file mode 100644
index fe5f172127..0000000000
--- a/arch/arm/boards/sama5d3xek/lowlevel.c
+++ /dev/null
@@ -1,23 +0,0 @@
-/*
- * Copyright (C) 2009-2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
- *
- * Under GPLv2
- */
-
-#include <common.h>
-#include <init.h>
-
-#include <asm/barebox-arm-head.h>
-#include <asm/barebox-arm.h>
-
-#include <mach/at91/at91_ddrsdrc.h>
-#include <mach/at91/hardware.h>
-
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
-{
-	arm_cpu_lowlevel_init();
-
-	arm_setup_stack(SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE);
-
-	barebox_arm_entry(SAMA5_DDRCS, at91sama5d3_get_ddram_size(), NULL);
-}
diff --git a/arch/arm/boards/sama5d4_xplained/Makefile b/arch/arm/boards/sama5d4_xplained/Makefile
deleted file mode 100644
index eece4cc381..0000000000
--- a/arch/arm/boards/sama5d4_xplained/Makefile
+++ /dev/null
@@ -1,4 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-obj-y += sama5d4_xplained.o
-lwl-y += lowlevel.o
diff --git a/arch/arm/boards/sama5d4_xplained/env/boot/mmc b/arch/arm/boards/sama5d4_xplained/env/boot/mmc
deleted file mode 100644
index 75a0f9b696..0000000000
--- a/arch/arm/boards/sama5d4_xplained/env/boot/mmc
+++ /dev/null
@@ -1,8 +0,0 @@
-#!/bin/sh
-
-global.bootm.oftree="/mnt/mmcblk0p1/at91-sama5d4_xplained.dtb"
-global.bootm.image="/mnt/mmcblk0p1/zImage"
-
-bootargs-ip
-
-global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rw rootwait"
diff --git a/arch/arm/boards/sama5d4_xplained/env/boot/nand b/arch/arm/boards/sama5d4_xplained/env/boot/nand
deleted file mode 100644
index d1485c6c86..0000000000
--- a/arch/arm/boards/sama5d4_xplained/env/boot/nand
+++ /dev/null
@@ -1,8 +0,0 @@
-#!/bin/sh
-
-global.bootm.image="/dev/nand0.kernel.bb"
-global.bootm.oftree="/dev/nand0.oftree.bb"
-
-bootargs-ip
-
-global.linux.bootargs.dyn.root="root=ubi0:rootfs ubi.mtd=rootfs rootfstype=ubifs noinitrd"
diff --git a/arch/arm/boards/sama5d4_xplained/env/init/automount b/arch/arm/boards/sama5d4_xplained/env/init/automount
deleted file mode 100644
index 3476922753..0000000000
--- a/arch/arm/boards/sama5d4_xplained/env/init/automount
+++ /dev/null
@@ -1,5 +0,0 @@
-#!/bin/sh
-
-# SD card slot, first partition
-mkdir -p /mnt/mmcblk0p1
-automount -d /mnt/mmcblk0p1 'mount /dev/disk0.0 /mnt/mmcblk0p1'
diff --git a/arch/arm/boards/sama5d4_xplained/env/init/mtdparts-nand b/arch/arm/boards/sama5d4_xplained/env/init/mtdparts-nand
deleted file mode 100644
index c947910643..0000000000
--- a/arch/arm/boards/sama5d4_xplained/env/init/mtdparts-nand
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-
-mtdparts="256k(at91bootstrap),512k(barebox)ro,256k(bareboxenv),256k(bareboxenv2),256k(spare),512k(oftree),6M(kernel),-(rootfs)"
-kernelname="atmel_nand"
-
-mtdparts-add -b -d nand0 -k ${kernelname} -p ${mtdparts}
diff --git a/arch/arm/boards/sama5d4_xplained/env/init/splash b/arch/arm/boards/sama5d4_xplained/env/init/splash
deleted file mode 100644
index f3d417e356..0000000000
--- a/arch/arm/boards/sama5d4_xplained/env/init/splash
+++ /dev/null
@@ -1,15 +0,0 @@
-#!/bin/sh
-
-PATH=/env/bin
-export PATH
-
-. /env/config
-
-splash=/env/splash.png
-
-if [ -f ${splash} -a -e /dev/fb0 ]; then
-	splash -o ${splash}
-	fb0.enable=1
-fi
-
-exit 1
diff --git a/arch/arm/boards/sama5d4_xplained/env/nv/boot.default b/arch/arm/boards/sama5d4_xplained/env/nv/boot.default
deleted file mode 100644
index 026a25cc7e..0000000000
--- a/arch/arm/boards/sama5d4_xplained/env/nv/boot.default
+++ /dev/null
@@ -1 +0,0 @@
-nand
diff --git a/arch/arm/boards/sama5d4_xplained/env/nv/linux.bootargs.console b/arch/arm/boards/sama5d4_xplained/env/nv/linux.bootargs.console
deleted file mode 100644
index 476b1fbe49..0000000000
--- a/arch/arm/boards/sama5d4_xplained/env/nv/linux.bootargs.console
+++ /dev/null
@@ -1 +0,0 @@
-console=ttyS0,115200
diff --git a/arch/arm/boards/sama5d4_xplained/lowlevel.c b/arch/arm/boards/sama5d4_xplained/lowlevel.c
deleted file mode 100644
index 183bd9c5a9..0000000000
--- a/arch/arm/boards/sama5d4_xplained/lowlevel.c
+++ /dev/null
@@ -1,23 +0,0 @@
-/*
- * Copyright (C) 2009-2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
- *
- * Under GPLv2
- */
-
-#include <common.h>
-#include <init.h>
-
-#include <asm/barebox-arm-head.h>
-#include <asm/barebox-arm.h>
-
-#include <mach/at91/at91_ddrsdrc.h>
-#include <mach/at91/hardware.h>
-
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
-{
-	arm_cpu_lowlevel_init();
-
-	arm_setup_stack(SAMA5D4_SRAM_BASE + SAMA5D4_SRAM_SIZE);
-
-	barebox_arm_entry(SAMA5_DDRCS, at91sama5d4_get_ddram_size(), NULL);
-}
diff --git a/arch/arm/boards/sama5d4_xplained/sama5d4_xplained.c b/arch/arm/boards/sama5d4_xplained/sama5d4_xplained.c
deleted file mode 100644
index c88f0d090a..0000000000
--- a/arch/arm/boards/sama5d4_xplained/sama5d4_xplained.c
+++ /dev/null
@@ -1,320 +0,0 @@
-/*
- * SAMA5D4 XPLAINED ULTRA board configuration.
- *
- * Copyright (C) 2014 Atmel Corporation,
- *		      Bo Shen <voice.shen@atmel.com>
- *
- * Licensed under GPLv2 or later.
- */
-
-#include <common.h>
-#include <net.h>
-#include <init.h>
-#include <environment.h>
-#include <asm/armlinux.h>
-#include <fs.h>
-#include <fcntl.h>
-#include <io.h>
-#include <mach/at91/hardware.h>
-#include <nand.h>
-#include <linux/sizes.h>
-#include <linux/mtd/nand.h>
-#include <linux/mtd/rawnand.h>
-#include <mach/at91/board.h>
-#include <mach/at91/at91sam9_smc.h>
-#include <gpio.h>
-#include <mach/at91/iomux.h>
-#include <mach/at91/at91_pmc.h>
-#include <mach/at91/at91_rstc.h>
-#include <mach/at91/at91sam9x5_matrix.h>
-#include <input/qt1070.h>
-#include <readkey.h>
-#include <spi/spi.h>
-#include <linux/clk.h>
-
-#if defined(CONFIG_NAND_ATMEL)
-static struct atmel_nand_data nand_pdata = {
-	.ale		= 21,
-	.cle		= 22,
-	.det_pin	= -EINVAL,
-	.rdy_pin	= -EINVAL,
-	.enable_pin	= -EINVAL,
-	.ecc_mode	= NAND_ECC_HW,
-	.has_pmecc	= 1,
-	.pmecc_sector_size = 512,
-	.pmecc_corr_cap = 8,
-	.on_flash_bbt	= 1,
-};
-
-static struct sam9_smc_config cm_nand_smc_config = {
-	.ncs_read_setup		= 1,
-	.nrd_setup		= 1,
-	.ncs_write_setup	= 1,
-	.nwe_setup		= 1,
-
-	.ncs_read_pulse		= 3,
-	.nrd_pulse		= 2,
-	.ncs_write_pulse	= 3,
-	.nwe_pulse		= 2,
-
-	.read_cycle		= 5,
-	.write_cycle		= 5,
-
-	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE | AT91_SMC_EXNWMODE_DISABLE,
-	.tdf_cycles		= 3,
-
-	.tclr			= 2,
-	.tadl			= 7,
-	.tar			= 2,
-	.ocms			= 0,
-	.trr			= 3,
-	.twb			= 7,
-	.rbnsel			= 3,
-	.nfsel			= 1,
-};
-
-static void ek_add_device_nand(void)
-{
-	struct clk *clk = clk_get(NULL, "smc_clk");
-
-	clk_enable(clk);
-
-	/* configure chip-select 3 (NAND) */
-	sama5_smc_configure(0, 3, &cm_nand_smc_config);
-
-	at91_add_device_nand(&nand_pdata);
-}
-#else
-static void ek_add_device_nand(void) {}
-#endif
-
-#if defined(CONFIG_DRIVER_NET_MACB)
-static struct macb_platform_data macb0_pdata = {
-	.phy_interface = PHY_INTERFACE_MODE_RMII,
-	.phy_addr = 0,
-};
-
-static void ek_add_device_eth(void)
-{
-	at91_add_device_eth(0, &macb0_pdata);
-}
-#else
-static void ek_add_device_eth(void) {}
-#endif
-
-#if defined(CONFIG_DRIVER_VIDEO_ATMEL_HLCD)
-static struct fb_videomode at91_tft_vga_modes[] = {
-	{
-		.name		= "TM4301",
-		.refresh	= 60,
-		.xres		= 480,		.yres		= 272,
-		.pixclock	= KHZ2PICOS(9000),
-
-		.left_margin	= 2,		.right_margin	= 2,
-		.upper_margin	= 2,		.lower_margin	= 2,
-		.hsync_len	= 41,		.vsync_len	= 11,
-
-		.sync		= 0,
-		.vmode		= FB_VMODE_NONINTERLACED,
-	},
-};
-
-/* Output mode is TFT 24 bits */
-#define BPP_OUT_DEFAULT_LCDCFG5	(LCDC_LCDCFG5_MODE_OUTPUT_24BPP)
-
-static struct atmel_lcdfb_platform_data ek_lcdc_data = {
-	.lcdcon_is_backlight		= true,
-	.default_bpp			= 16,
-	.default_dmacon			= ATMEL_LCDC_DMAEN,
-	.default_lcdcon2		= BPP_OUT_DEFAULT_LCDCFG5,
-	.guard_time			= 9,
-	.lcd_wiring_mode		= ATMEL_LCDC_WIRING_RGB,
-	.mode_list			= at91_tft_vga_modes,
-	.num_modes			= ARRAY_SIZE(at91_tft_vga_modes),
-};
-
-static void ek_add_device_lcdc(void)
-{
-	/* On sama5d4 xplained ultra board, we use 24bits connection */
-	at91_set_A_periph(AT91_PIN_PA0, 0);	/* LCDD0 */
-	at91_set_A_periph(AT91_PIN_PA1, 0);	/* LCDD1 */
-	at91_set_A_periph(AT91_PIN_PA8, 0);	/* LCDD8 */
-	at91_set_A_periph(AT91_PIN_PA9, 0);	/* LCDD9 */
-	at91_set_A_periph(AT91_PIN_PA16, 0);	/* LCDD16 */
-	at91_set_A_periph(AT91_PIN_PA17, 0);	/* LCDD17 */
-
-	at91_add_device_lcdc(&ek_lcdc_data);
-}
-#else
-static void ek_add_device_lcdc(void) {}
-#endif
-
-#if defined(CONFIG_MCI_ATMEL)
-static struct atmel_mci_platform_data mci1_data = {
-	.bus_width	= 4,
-	.detect_pin	= AT91_PIN_PE3,
-	.wp_pin		= -EINVAL,
-};
-
-static void ek_add_device_mci(void)
-{
-	/* MMC1 */
-	at91_add_device_mci(1, &mci1_data);
-
-	/* power on MCI1 */
-	at91_set_gpio_output(AT91_PIN_PE4, 0);
-}
-#else
-static void ek_add_device_mci(void) {}
-#endif
-
-#if defined(CONFIG_I2C_GPIO)
-struct qt1070_platform_data qt1070_pdata = {
-	.irq_pin	= AT91_PIN_PE10,
-};
-
-static struct i2c_board_info i2c_devices[] = {
-	{
-		.platform_data = &qt1070_pdata,
-		I2C_BOARD_INFO("qt1070", 0x1b),
-	},
-};
-
-static void ek_add_device_i2c(void)
-{
-	at91_set_gpio_input(qt1070_pdata.irq_pin, 0);
-	at91_set_deglitch(qt1070_pdata.irq_pin, 1);
-	at91_add_device_i2c(0, i2c_devices, ARRAY_SIZE(i2c_devices));
-}
-#else
-static void ek_add_device_i2c(void) {}
-#endif
-
-#if defined(CONFIG_DRIVER_SPI_ATMEL)
-static const struct spi_board_info ek_spi_devices[] = {
-	{
-		.name		= "m25p80",
-		.chip_select	= 0,
-		.max_speed_hz	= 30 * 1000 * 1000,
-		.bus_num	= 0,
-	}
-};
-
-static unsigned spi0_standard_cs[] = { AT91_PIN_PC3 };
-static struct at91_spi_platform_data spi_pdata = {
-	.chipselect = spi0_standard_cs,
-	.num_chipselect = ARRAY_SIZE(spi0_standard_cs),
-};
-
-static void ek_add_device_spi(void)
-{
-	spi_register_board_info(ek_spi_devices, ARRAY_SIZE(ek_spi_devices));
-	at91_add_device_spi(0, &spi_pdata);
-}
-#else
-static void ek_add_device_spi(void) {}
-#endif
-
-#ifdef CONFIG_LED_GPIO
-struct gpio_led leds[] = {
-	{
-		.gpio	= AT91_PIN_PD30,
-		.active_low	= 0,
-		.led	= {
-			.name = "d8",
-		},
-	}, {
-		.gpio	= AT91_PIN_PE15,
-		.active_low	= 0,
-		.led	= {
-			.name = "d10",
-		},
-	},
-};
-
-static void ek_add_led(void)
-{
-	int i;
-
-	for (i = 0; i < ARRAY_SIZE(leds); i++) {
-		at91_set_gpio_output(leds[i].gpio, leds[i].active_low);
-		led_gpio_register(&leds[i]);
-	}
-	led_set_trigger(LED_TRIGGER_HEARTBEAT, &leds[0].led);
-}
-#else
-static void ek_add_led(void) {}
-#endif
-
-static int sama5d4_xplained_mem_init(void)
-{
-	at91_add_device_sdram(0);
-
-	return 0;
-}
-mem_initcall(sama5d4_xplained_mem_init);
-
-static const struct devfs_partition sama5d4_xplained_nand0_partitions[] = {
-	{
-		.offset = 0x00000,
-		.size = SZ_256K,
-		.flags = DEVFS_PARTITION_FIXED,
-		.name = "at91bootstrap_raw",
-		.bbname = "at91bootstrap",
-	}, {
-		.offset = DEVFS_PARTITION_APPEND,
-		.size = SZ_512K,
-		.flags = DEVFS_PARTITION_FIXED,
-		.name = "bootloader_raw",
-		.bbname = "bootloader",
-	}, {
-		.offset = DEVFS_PARTITION_APPEND,
-		.size = SZ_256K,
-		.flags = DEVFS_PARTITION_FIXED,
-		.name = "env_raw",
-		.bbname = "env0",
-	}, {
-		.offset = DEVFS_PARTITION_APPEND,
-		.size = SZ_256K,
-		.flags = DEVFS_PARTITION_FIXED,
-		.name = "env_raw1",
-		.bbname = "env1",
-	}, {
-		/* sentinel */
-	}
-};
-
-static int sama5d4_xplained_devices_init(void)
-{
-	ek_add_device_i2c();
-	ek_add_device_nand();
-	ek_add_led();
-	ek_add_device_eth();
-	ek_add_device_spi();
-	ek_add_device_mci();
-	ek_add_device_lcdc();
-
-	devfs_create_partitions("nand0", sama5d4_xplained_nand0_partitions);
-
-	return 0;
-}
-device_initcall(sama5d4_xplained_devices_init);
-
-static int sama5d4_xplained_console_init(void)
-{
-	barebox_set_model("Atmel sama5d4_xplained");
-	barebox_set_hostname("sama5d4_xplained");
-
-	at91_register_uart(4, 0);
-
-	return 0;
-}
-console_initcall(sama5d4_xplained_console_init);
-
-static int sama5d4_xplained_main_clock(void)
-{
-	at91_set_main_clock(12000000);
-
-	return 0;
-}
-pure_initcall(sama5d4_xplained_main_clock);
diff --git a/arch/arm/boards/sama5d4ek/Makefile b/arch/arm/boards/sama5d4ek/Makefile
deleted file mode 100644
index 82ffe9771c..0000000000
--- a/arch/arm/boards/sama5d4ek/Makefile
+++ /dev/null
@@ -1,4 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-obj-y += sama5d4ek.o
-lwl-y += lowlevel.o
diff --git a/arch/arm/boards/sama5d4ek/env/boot/nand b/arch/arm/boards/sama5d4ek/env/boot/nand
deleted file mode 100644
index 29489bf613..0000000000
--- a/arch/arm/boards/sama5d4ek/env/boot/nand
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-
-global.bootm.image="/dev/nand0.kernel.bb"
-global.bootm.oftree="/dev/nand0.oftree.bb"
-
-global.linux.bootargs.dyn.root="root=ubi0:rootfs ubi.mtd=rootfs rootfstype=ubifs noinitrd"
diff --git a/arch/arm/boards/sama5d4ek/env/init/mtdparts-nand b/arch/arm/boards/sama5d4ek/env/init/mtdparts-nand
deleted file mode 100644
index c947910643..0000000000
--- a/arch/arm/boards/sama5d4ek/env/init/mtdparts-nand
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-
-mtdparts="256k(at91bootstrap),512k(barebox)ro,256k(bareboxenv),256k(bareboxenv2),256k(spare),512k(oftree),6M(kernel),-(rootfs)"
-kernelname="atmel_nand"
-
-mtdparts-add -b -d nand0 -k ${kernelname} -p ${mtdparts}
diff --git a/arch/arm/boards/sama5d4ek/env/init/mtdparts-nor b/arch/arm/boards/sama5d4ek/env/init/mtdparts-nor
deleted file mode 100644
index 01fa752c3c..0000000000
--- a/arch/arm/boards/sama5d4ek/env/init/mtdparts-nor
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-
-mtdparts="64k(bootstrap),64k(bareboxenv),512k(barebox),384k(oftree),-(kernel)"
-kernelname="m25p800"
-
-mtdparts-add -d m25p0 -k ${kernelname} -p ${mtdparts}
diff --git a/arch/arm/boards/sama5d4ek/env/init/splash b/arch/arm/boards/sama5d4ek/env/init/splash
deleted file mode 100644
index 190ef3149e..0000000000
--- a/arch/arm/boards/sama5d4ek/env/init/splash
+++ /dev/null
@@ -1,10 +0,0 @@
-#!/bin/sh
-
-splash=/env/splash.png
-
-if [ -f ${splash} -a -e /dev/fb0 ]; then
-	splash -o ${splash}
-	fb0.enable=1
-fi
-
-exit 1
diff --git a/arch/arm/boards/sama5d4ek/env/nv/boot.default b/arch/arm/boards/sama5d4ek/env/nv/boot.default
deleted file mode 100644
index d287b22cbb..0000000000
--- a/arch/arm/boards/sama5d4ek/env/nv/boot.default
+++ /dev/null
@@ -1 +0,0 @@
-nand net
diff --git a/arch/arm/boards/sama5d4ek/env/nv/hostname b/arch/arm/boards/sama5d4ek/env/nv/hostname
deleted file mode 100644
index b74056d082..0000000000
--- a/arch/arm/boards/sama5d4ek/env/nv/hostname
+++ /dev/null
@@ -1 +0,0 @@
-sama5d4ek
diff --git a/arch/arm/boards/sama5d4ek/env/nv/linux.bootargs.console b/arch/arm/boards/sama5d4ek/env/nv/linux.bootargs.console
deleted file mode 100644
index 476b1fbe49..0000000000
--- a/arch/arm/boards/sama5d4ek/env/nv/linux.bootargs.console
+++ /dev/null
@@ -1 +0,0 @@
-console=ttyS0,115200
diff --git a/arch/arm/boards/sama5d4ek/lowlevel.c b/arch/arm/boards/sama5d4ek/lowlevel.c
deleted file mode 100644
index 183bd9c5a9..0000000000
--- a/arch/arm/boards/sama5d4ek/lowlevel.c
+++ /dev/null
@@ -1,23 +0,0 @@
-/*
- * Copyright (C) 2009-2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
- *
- * Under GPLv2
- */
-
-#include <common.h>
-#include <init.h>
-
-#include <asm/barebox-arm-head.h>
-#include <asm/barebox-arm.h>
-
-#include <mach/at91/at91_ddrsdrc.h>
-#include <mach/at91/hardware.h>
-
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
-{
-	arm_cpu_lowlevel_init();
-
-	arm_setup_stack(SAMA5D4_SRAM_BASE + SAMA5D4_SRAM_SIZE);
-
-	barebox_arm_entry(SAMA5_DDRCS, at91sama5d4_get_ddram_size(), NULL);
-}
diff --git a/arch/arm/boards/sama5d4ek/sama5d4ek.c b/arch/arm/boards/sama5d4ek/sama5d4ek.c
deleted file mode 100644
index 0dda34614a..0000000000
--- a/arch/arm/boards/sama5d4ek/sama5d4ek.c
+++ /dev/null
@@ -1,318 +0,0 @@
-/*
- * SAMA5D4EK board configuration.
- *
- * Copyright (C) 2014 Atmel Corporation,
- *		      Bo Shen <voice.shen@atmel.com>
- *
- * Licensed under GPLv2 or later.
- */
-
-#include <common.h>
-#include <net.h>
-#include <init.h>
-#include <environment.h>
-#include <asm/armlinux.h>
-#include <fs.h>
-#include <fcntl.h>
-#include <io.h>
-#include <mach/at91/hardware.h>
-#include <nand.h>
-#include <linux/sizes.h>
-#include <linux/mtd/nand.h>
-#include <linux/mtd/rawnand.h>
-#include <mach/at91/board.h>
-#include <mach/at91/at91sam9_smc.h>
-#include <gpio.h>
-#include <mach/at91/iomux.h>
-#include <mach/at91/at91_pmc.h>
-#include <mach/at91/at91_rstc.h>
-#include <mach/at91/at91sam9x5_matrix.h>
-#include <input/qt1070.h>
-#include <readkey.h>
-#include <spi/spi.h>
-#include <linux/clk.h>
-
-#if defined(CONFIG_NAND_ATMEL)
-static struct atmel_nand_data nand_pdata = {
-	.ale		= 21,
-	.cle		= 22,
-	.det_pin	= -EINVAL,
-	.rdy_pin	= -EINVAL,
-	.enable_pin	= -EINVAL,
-	.ecc_mode	= NAND_ECC_HW,
-	.has_pmecc	= 1,
-	.pmecc_sector_size = 512,
-	.pmecc_corr_cap = 8,
-	.on_flash_bbt	= 1,
-};
-
-static struct sam9_smc_config cm_nand_smc_config = {
-	.ncs_read_setup		= 1,
-	.nrd_setup		= 1,
-	.ncs_write_setup	= 1,
-	.nwe_setup		= 1,
-
-	.ncs_read_pulse		= 3,
-	.nrd_pulse		= 2,
-	.ncs_write_pulse	= 3,
-	.nwe_pulse		= 2,
-
-	.read_cycle		= 5,
-	.write_cycle		= 5,
-
-	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE | AT91_SMC_EXNWMODE_DISABLE,
-	.tdf_cycles		= 3,
-
-	.tclr			= 2,
-	.tadl			= 7,
-	.tar			= 2,
-	.ocms			= 0,
-	.trr			= 3,
-	.twb			= 7,
-	.rbnsel			= 3,
-	.nfsel			= 1,
-};
-
-static void ek_add_device_nand(void)
-{
-	struct clk *clk = clk_get(NULL, "smc_clk");
-
-	clk_enable(clk);
-
-	/* configure chip-select 3 (NAND) */
-	sama5_smc_configure(0, 3, &cm_nand_smc_config);
-
-	at91_add_device_nand(&nand_pdata);
-}
-#else
-static void ek_add_device_nand(void) {}
-#endif
-
-#if defined(CONFIG_DRIVER_NET_MACB)
-static struct macb_platform_data macb0_pdata = {
-	.phy_interface = PHY_INTERFACE_MODE_RMII,
-	.phy_addr = 0,
-};
-
-static void ek_add_device_eth(void)
-{
-	at91_add_device_eth(0, &macb0_pdata);
-}
-#else
-static void ek_add_device_eth(void) {}
-#endif
-
-#if defined(CONFIG_DRIVER_VIDEO_ATMEL_HLCD)
-static struct fb_videomode at91_tft_vga_modes[] = {
-	{
-		.name		= "LG",
-		.refresh	= 60,
-		.xres		= 800,		.yres		= 480,
-		.pixclock	= KHZ2PICOS(33260),
-
-		.left_margin	= 88,		.right_margin	= 168,
-		.upper_margin	= 8,		.lower_margin	= 37,
-		.hsync_len	= 128,		.vsync_len	= 2,
-
-		.sync		= 0,
-		.vmode		= FB_VMODE_NONINTERLACED,
-	},
-};
-
-/* Output mode is TFT 18 bits */
-#define BPP_OUT_DEFAULT_LCDCFG5	(LCDC_LCDCFG5_MODE_OUTPUT_18BPP)
-
-static struct atmel_lcdfb_platform_data ek_lcdc_data = {
-	.lcdcon_is_backlight		= true,
-	.default_bpp			= 16,
-	.default_dmacon			= ATMEL_LCDC_DMAEN,
-	.default_lcdcon2		= BPP_OUT_DEFAULT_LCDCFG5,
-	.guard_time			= 9,
-	.lcd_wiring_mode		= ATMEL_LCDC_WIRING_RGB,
-	.mode_list			= at91_tft_vga_modes,
-	.num_modes			= ARRAY_SIZE(at91_tft_vga_modes),
-};
-
-static void ek_add_device_lcdc(void)
-{
-	at91_add_device_lcdc(&ek_lcdc_data);
-}
-#else
-static void ek_add_device_lcdc(void) {}
-#endif
-
-#if defined(CONFIG_MCI_ATMEL)
-static struct atmel_mci_platform_data mci1_data = {
-	.bus_width	= 4,
-	.detect_pin	= AT91_PIN_PE6,
-	.wp_pin		= -EINVAL,
-};
-
-static void ek_add_device_mci(void)
-{
-	/* MMC1 */
-	at91_add_device_mci(1, &mci1_data);
-
-	/* power on MCI1 */
-	at91_set_gpio_output(AT91_PIN_PE15, 0);
-}
-#else
-static void ek_add_device_mci(void) {}
-#endif
-
-#if defined(CONFIG_I2C_GPIO)
-struct qt1070_platform_data qt1070_pdata = {
-	.irq_pin	= AT91_PIN_PE25,
-};
-
-static struct i2c_board_info i2c_devices[] = {
-	{
-		.platform_data = &qt1070_pdata,
-		I2C_BOARD_INFO("qt1070", 0x1b),
-	},
-};
-
-static void ek_add_device_i2c(void)
-{
-	at91_set_gpio_input(qt1070_pdata.irq_pin, 0);
-	at91_set_deglitch(qt1070_pdata.irq_pin, 1);
-	at91_add_device_i2c(0, i2c_devices, ARRAY_SIZE(i2c_devices));
-}
-#else
-static void ek_add_device_i2c(void) {}
-#endif
-
-#if defined(CONFIG_DRIVER_SPI_ATMEL)
-static const struct spi_board_info ek_spi_devices[] = {
-	{
-		.name		= "m25p80",
-		.chip_select	= 0,
-		.max_speed_hz	= 30 * 1000 * 1000,
-		.bus_num	= 0,
-	}
-};
-
-static unsigned spi0_standard_cs[] = { AT91_PIN_PC3 };
-static struct at91_spi_platform_data spi_pdata = {
-	.chipselect = spi0_standard_cs,
-	.num_chipselect = ARRAY_SIZE(spi0_standard_cs),
-};
-
-static void ek_add_device_spi(void)
-{
-	spi_register_board_info(ek_spi_devices, ARRAY_SIZE(ek_spi_devices));
-	at91_add_device_spi(0, &spi_pdata);
-}
-#else
-static void ek_add_device_spi(void) {}
-#endif
-
-#ifdef CONFIG_LED_GPIO
-struct gpio_led leds[] = {
-	{
-		.gpio	= AT91_PIN_PE28,
-		.active_low	= 0,
-		.led	= {
-			.name = "d8",
-		},
-	}, {
-		.gpio	= AT91_PIN_PE9,
-		.active_low	= 1,
-		.led	= {
-			.name = "d9",
-		},
-	}, {
-		.gpio	= AT91_PIN_PE8,
-		.active_low	= 0,
-		.led	= {
-			.name = "d10",
-		},
-	},
-};
-
-static void ek_add_led(void)
-{
-	int i;
-
-	for (i = 0; i < ARRAY_SIZE(leds); i++) {
-		at91_set_gpio_output(leds[i].gpio, leds[i].active_low);
-		led_gpio_register(&leds[i]);
-	}
-	led_set_trigger(LED_TRIGGER_HEARTBEAT, &leds[0].led);
-}
-#else
-static void ek_add_led(void) {}
-#endif
-
-static int sama5d4ek_mem_init(void)
-{
-	at91_add_device_sdram(0);
-
-	return 0;
-}
-mem_initcall(sama5d4ek_mem_init);
-
-static const struct devfs_partition sama5d4ek_nand0_partitions[] = {
-	{
-		.offset = 0x00000,
-		.size = SZ_256K,
-		.flags = DEVFS_PARTITION_FIXED,
-		.name = "at91bootstrap_raw",
-		.bbname = "at91bootstrap",
-	}, {
-		.offset = DEVFS_PARTITION_APPEND,
-		.size = SZ_512K,
-		.flags = DEVFS_PARTITION_FIXED,
-		.name = "bootloader_raw",
-		.bbname = "bootloader",
-	}, {
-		.offset = DEVFS_PARTITION_APPEND,
-		.size = SZ_256K,
-		.flags = DEVFS_PARTITION_FIXED,
-		.name = "env_raw",
-		.bbname = "env0",
-	}, {
-		.offset = DEVFS_PARTITION_APPEND,
-		.size = SZ_256K,
-		.flags = DEVFS_PARTITION_FIXED,
-		.name = "env_raw1",
-		.bbname = "env1",
-	}, {
-		/* sentinel */
-	}
-};
-
-static int sama5d4ek_devices_init(void)
-{
-	ek_add_device_i2c();
-	ek_add_device_nand();
-	ek_add_led();
-	ek_add_device_eth();
-	ek_add_device_spi();
-	ek_add_device_mci();
-	ek_add_device_lcdc();
-
-	devfs_create_partitions("nand0", sama5d4ek_nand0_partitions);
-
-	return 0;
-}
-device_initcall(sama5d4ek_devices_init);
-
-static int sama5d4ek_console_init(void)
-{
-	barebox_set_model("Atmel sama5d4ek");
-	barebox_set_hostname("sama5d4ek");
-
-	at91_register_uart(4, 0);
-
-	return 0;
-}
-console_initcall(sama5d4ek_console_init);
-
-static int sama5d4ek_main_clock(void)
-{
-	at91_set_main_clock(12000000);
-
-	return 0;
-}
-pure_initcall(sama5d4ek_main_clock);
diff --git a/arch/arm/configs/sama5d4_xplained_defconfig b/arch/arm/configs/sama5d4_xplained_defconfig
deleted file mode 100644
index 90a45b97c2..0000000000
--- a/arch/arm/configs/sama5d4_xplained_defconfig
+++ /dev/null
@@ -1,84 +0,0 @@
-CONFIG_TEXT_BASE=0x26f00000
-CONFIG_ARCH_AT91=y
-CONFIG_ARCH_SAMA5D4=y
-CONFIG_MACH_SAMA5D4_XPLAINED=y
-CONFIG_AEABI=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_MMU=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x60000
-CONFIG_MALLOC_SIZE=0xA00000
-CONFIG_EXPERIMENTAL=y
-CONFIG_MALLOC_TLSF=y
-CONFIG_PROMPT="A5D4_XPLAINED:"
-CONFIG_PROMPT_HUSH_PS2="y"
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CONSOLE_ACTIVATE_ALL=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/sama5d4_xplained/env"
-# CONFIG_CMD_ARM_CPUINFO is not set
-CONFIG_LONGHELP=y
-CONFIG_CMD_MEMINFO=y
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_UIMAGE=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_FILETYPE=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_MIITOOL=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SPLASH=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_SPI=y
-CONFIG_CMD_OFTREE=y
-CONFIG_NET=y
-CONFIG_NET_NFS=y
-CONFIG_OFDEVICE=y
-CONFIG_DRIVER_NET_MACB=y
-CONFIG_MICREL_PHY=y
-CONFIG_DRIVER_SPI_ATMEL=y
-CONFIG_I2C=y
-CONFIG_I2C_GPIO=y
-CONFIG_MTD=y
-CONFIG_MTD_RAW_DEVICE=y
-CONFIG_MTD_M25P80=y
-CONFIG_NAND=y
-CONFIG_NAND_ATMEL=y
-CONFIG_NAND_ATMEL_PMECC=y
-CONFIG_VIDEO=y
-CONFIG_DRIVER_VIDEO_ATMEL_HLCD=y
-CONFIG_MCI=y
-CONFIG_MCI_STARTUP=y
-CONFIG_MCI_ATMEL=y
-CONFIG_LED=y
-CONFIG_LED_GPIO=y
-CONFIG_LED_TRIGGERS=y
-CONFIG_KEYBOARD_GPIO=y
-CONFIG_KEYBOARD_QT1070=y
-CONFIG_FS_EXT4=y
-CONFIG_FS_TFTP=y
-CONFIG_FS_FAT=y
-CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
-CONFIG_PNG=y
diff --git a/arch/arm/configs/sama5d4ek_defconfig b/arch/arm/configs/sama5d4ek_defconfig
deleted file mode 100644
index ba06991c4a..0000000000
--- a/arch/arm/configs/sama5d4ek_defconfig
+++ /dev/null
@@ -1,83 +0,0 @@
-CONFIG_TEXT_BASE=0x26f00000
-CONFIG_ARCH_AT91=y
-CONFIG_ARCH_SAMA5D4=y
-CONFIG_AEABI=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_MMU=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x60000
-CONFIG_MALLOC_SIZE=0xA00000
-CONFIG_EXPERIMENTAL=y
-CONFIG_MALLOC_TLSF=y
-CONFIG_PROMPT="A5D4EK:"
-CONFIG_PROMPT_HUSH_PS2="y"
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CONSOLE_ACTIVATE_ALL=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/sama5d4ek/env"
-# CONFIG_CMD_ARM_CPUINFO is not set
-CONFIG_LONGHELP=y
-CONFIG_CMD_MEMINFO=y
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_UIMAGE=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_FILETYPE=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_MIITOOL=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SPLASH=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_SPI=y
-CONFIG_CMD_OFTREE=y
-CONFIG_NET=y
-CONFIG_NET_NFS=y
-CONFIG_OFDEVICE=y
-CONFIG_DRIVER_NET_MACB=y
-CONFIG_MICREL_PHY=y
-CONFIG_DRIVER_SPI_ATMEL=y
-CONFIG_I2C=y
-CONFIG_I2C_GPIO=y
-CONFIG_MTD=y
-CONFIG_MTD_RAW_DEVICE=y
-CONFIG_MTD_M25P80=y
-CONFIG_NAND=y
-CONFIG_NAND_ATMEL=y
-CONFIG_NAND_ATMEL_PMECC=y
-CONFIG_VIDEO=y
-CONFIG_DRIVER_VIDEO_ATMEL_HLCD=y
-CONFIG_MCI=y
-CONFIG_MCI_STARTUP=y
-CONFIG_MCI_ATMEL=y
-CONFIG_LED=y
-CONFIG_LED_GPIO=y
-CONFIG_LED_TRIGGERS=y
-CONFIG_KEYBOARD_GPIO=y
-CONFIG_KEYBOARD_QT1070=y
-CONFIG_FS_EXT4=y
-CONFIG_FS_TFTP=y
-CONFIG_FS_FAT=y
-CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
-CONFIG_PNG=y
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 0e89916c9c..b68a9f4e25 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -541,42 +541,6 @@ endchoice
 
 endif
 
-# ----------------------------------------------------------
-
-if ARCH_SAMA5D3
-
-choice
-	prompt "SAMA5D3 Board Type"
-
-config MACH_SAMA5D3XEK
-	bool "Atmel SAMA5D3X Evaluation Kit"
-	help
-	  Select this if you are using Atmel's SAMA5D3X-EK Evaluation Kit.
-
-endchoice
-
-endif
-
-# ----------------------------------------------------------
-
-if ARCH_SAMA5D4
-
-choice
-	prompt "SAMA5D4 Board Type"
-
-config MACH_SAMA5D4EK
-	bool "Atmel SAMA5D4 Evaluation Kit"
-	help
-	  Select this if you are using Atmel's SAMA5D4-EK Evaluation Kit.
-
-config MACH_SAMA5D4_XPLAINED
-	bool "Atmel SAMA5D4 XPLAINED ULTRA Evaluation Kit"
-	help
-	  Select this if you are using Atmel's SAMA5D4_XPLAINED ULTRA Evaluation Kit.
-
-endchoice
-
-endif
 endif
 
 # ----------------------------------------------------------
-- 
2.39.2



