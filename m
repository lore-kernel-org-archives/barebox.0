Delivery-date: Thu, 25 Apr 2024 13:56:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzxiK-00GfC8-1O
	for lore@lore.pengutronix.de;
	Thu, 25 Apr 2024 13:56:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzxi8-00079e-0X
	for lore@pengutronix.de; Thu, 25 Apr 2024 13:56:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1dGW4YcEFeZk9vs2CQY9PDBiJq5hMQ8jy2Hli33NP2g=; b=uRmR+kSkaQtAih
	0yT+j4VeqQT0cPfpoP5ON+z4lZXCz8d2kMnXzOzVBKnEvn6kALWB4Lbw6pVZ+hlGdeay2+CHYclVQ
	UNOEINoWYQSXPruHn9peDoio5SjwH+H99iNU3yfEq6qrGUqKcEjhuop0A2ZbqWCFOImQUK001MMPH
	6Hu5K3L1zGh5FmbV1PC3QH0d3K1AQSyowMJrn/Iozy/kbYtF23dAsq3fwMwJg1RjEf0q96z74WvVE
	ltJXw21yuPAomxdbwOlo/dAubNZeS7Jh3gPgJbla9WG+CP97HdXUU6Z3LjOrEmBpukUwo2tQLCMlu
	WRTlai4xd6qJ9KyBFTKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzxh6-000000085RS-3Yi1;
	Thu, 25 Apr 2024 11:55:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzxgy-000000085KT-2c54
	for barebox@lists.infradead.org;
	Thu, 25 Apr 2024 11:55:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxgZ-00062j-8l; Thu, 25 Apr 2024 13:54:43 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxgY-00EFqw-Ky; Thu, 25 Apr 2024 13:54:42 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxgY-009aQk-1h;
	Thu, 25 Apr 2024 13:54:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 25 Apr 2024 13:54:32 +0200
Message-Id: <20240425115439.2269239-9-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240425115439.2269239-1-s.hauer@pengutronix.de>
References: <20240425115439.2269239-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_045509_195764_80D77A10 
X-CRM114-Status: GOOD (  22.35  )
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
Subject: [PATCH 08/15] ARM: remove nomadik
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Nomadik was mainlined once and has never got any attention. It still
doesn't have PBL support or device tree support. Remove the ancient
and likely unused architecture.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                              |  10 --
 arch/arm/Makefile                             |   1 -
 arch/arm/boards/Makefile                      |   1 -
 arch/arm/boards/nhk8815/Makefile              |   5 -
 .../boards/nhk8815/defaultenv-nhk8815/config  |  43 -------
 arch/arm/boards/nhk8815/lowlevel.c            |  12 --
 arch/arm/boards/nhk8815/setup.c               | 113 ------------------
 arch/arm/configs/nhk8815_defconfig            |  50 --------
 arch/arm/include/asm/debug_ll.h               |   2 -
 arch/arm/include/asm/mach-types.h             |  12 --
 arch/arm/mach-nomadik/8815.c                  |  71 -----------
 arch/arm/mach-nomadik/Kconfig                 |  23 ----
 arch/arm/mach-nomadik/Makefile                |   4 -
 arch/arm/mach-nomadik/clock.c                 |  55 ---------
 arch/arm/mach-nomadik/clock.h                 |  14 ---
 arch/arm/mach-nomadik/reset.c                 |  42 -------
 arch/arm/mach-nomadik/timer.c                 |  33 -----
 include/mach/nomadik/board.h                  |  24 ----
 include/mach/nomadik/fsmc.h                   |  30 -----
 include/mach/nomadik/hardware.h               |  87 --------------
 include/mach/nomadik/nand.h                   |  15 ---
 21 files changed, 647 deletions(-)
 delete mode 100644 arch/arm/boards/nhk8815/Makefile
 delete mode 100644 arch/arm/boards/nhk8815/defaultenv-nhk8815/config
 delete mode 100644 arch/arm/boards/nhk8815/lowlevel.c
 delete mode 100644 arch/arm/boards/nhk8815/setup.c
 delete mode 100644 arch/arm/configs/nhk8815_defconfig
 delete mode 100644 arch/arm/mach-nomadik/8815.c
 delete mode 100644 arch/arm/mach-nomadik/Kconfig
 delete mode 100644 arch/arm/mach-nomadik/Makefile
 delete mode 100644 arch/arm/mach-nomadik/clock.c
 delete mode 100644 arch/arm/mach-nomadik/clock.h
 delete mode 100644 arch/arm/mach-nomadik/reset.c
 delete mode 100644 arch/arm/mach-nomadik/timer.c
 delete mode 100644 include/mach/nomadik/board.h
 delete mode 100644 include/mach/nomadik/fsmc.h
 delete mode 100644 include/mach/nomadik/hardware.h
 delete mode 100644 include/mach/nomadik/nand.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 7f84a1a12b..bf3240df96 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -93,15 +93,6 @@ config ARCH_MXS
 	select HAS_DEBUG_LL
 	select HAVE_PBL_MULTI_IMAGES
 
-config ARCH_NOMADIK
-	bool "STMicroelectronics Nomadik"
-	depends on 32BIT
-	select CPU_ARM926T
-	select CLOCKSOURCE_NOMADIK
-	select HAVE_LEGACY_CLK
-	help
-	  Support for the Nomadik platform by ST-Ericsson
-
 config ARCH_OMAP_SINGLE
 	bool "TI OMAP"
 	depends on 32BIT
@@ -271,7 +262,6 @@ source "arch/arm/mach-imx/Kconfig"
 source "arch/arm/mach-layerscape/Kconfig"
 source "arch/arm/mach-mxs/Kconfig"
 source "arch/arm/mach-mvebu/Kconfig"
-source "arch/arm/mach-nomadik/Kconfig"
 source "arch/arm/mach-k3/Kconfig"
 source "arch/arm/mach-omap/Kconfig"
 source "arch/arm/mach-pxa/Kconfig"
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index beb1c102c9..67362d2023 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -90,7 +90,6 @@ machine-$(CONFIG_ARCH_K3)		+= k3
 machine-$(CONFIG_ARCH_LAYERSCAPE)	+= layerscape
 machine-$(CONFIG_ARCH_MXS)		+= mxs
 machine-$(CONFIG_ARCH_MVEBU)		+= mvebu
-machine-$(CONFIG_ARCH_NOMADIK)		+= nomadik
 machine-$(CONFIG_ARCH_OMAP)		+= omap
 machine-$(CONFIG_ARCH_PXA)		+= pxa
 machine-$(CONFIG_ARCH_ROCKCHIP)		+= rockchip
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index fc7a829900..ca6f8f2137 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -63,7 +63,6 @@ obj-$(CONFIG_MACH_MX28EVK)			+= freescale-mx28-evk/
 obj-$(CONFIG_MACH_MYIRTECH_X335X)		+= myirtech-x335x/
 obj-$(CONFIG_MACH_NETGEAR_RN104)		+= netgear-rn104/
 obj-$(CONFIG_MACH_NETGEAR_RN2120)		+= netgear-rn2120/
-obj-$(CONFIG_MACH_NOMADIK_8815NHK)		+= nhk8815/
 obj-$(CONFIG_MACH_NVIDIA_BEAVER)		+= nvidia-beaver/
 obj-$(CONFIG_MACH_NVIDIA_JETSON)		+= nvidia-jetson-tk1/
 obj-$(CONFIG_MACH_NXP_IMX6ULL_EVK)		+= nxp-imx6ull-evk/
diff --git a/arch/arm/boards/nhk8815/Makefile b/arch/arm/boards/nhk8815/Makefile
deleted file mode 100644
index 0367fa7dd5..0000000000
--- a/arch/arm/boards/nhk8815/Makefile
+++ /dev/null
@@ -1,5 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-obj-y += setup.o
-lwl-y += lowlevel.o
-bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-nhk8815
diff --git a/arch/arm/boards/nhk8815/defaultenv-nhk8815/config b/arch/arm/boards/nhk8815/defaultenv-nhk8815/config
deleted file mode 100644
index c05ed2704e..0000000000
--- a/arch/arm/boards/nhk8815/defaultenv-nhk8815/config
+++ /dev/null
@@ -1,43 +0,0 @@
-#!/bin/sh
-
-# use 'dhcp' to do dhcp in barebox and in kernel
-# use 'none' if you want to skip kernel ip autoconfiguration
-ip=dhcp
-
-# or set your networking parameters here
-#eth0.ipaddr=a.b.c.d
-#eth0.netmask=a.b.c.d
-#eth0.gateway=a.b.c.d
-#eth0.serverip=a.b.c.d
-
-# can be either 'nfs', 'tftp' or 'nand'
-kernel_loc=tftp
-# can be either 'net', 'nand' or 'initrd'
-rootfs_loc=net
-
-# can be either 'jffs2' or 'ubifs'
-rootfs_type=ubifs
-rootfsimage=root.$rootfs_type
-
-#kernelimage=zImage
-kernelimage=uImage
-#kernelimage=Image
-#kernelimage=Image.lzo
-
-# Partition			Size	Start
-# XloaderTOC + X-Loader		256KB	0x00000000
-# Memory init function		256KB	0x00040000
-# Barebox + env			2MB	0x00080000
-# Kernel Image			3MB	0x00280000
-# JFFS2 Root filesystem		22MB	0x00580000
-# JFFS2 User Data		100MB	0x01b80000
-
-nand_parts="256k(xloader)ro,256k(meminit),2M(barebox),3M(kernel),22M(rootfs),100M(userfs),384k(free),128k(bareboxenv)"
-
-autoboot_timeout=3
-
-bootargs="root=/dev/ram0 console=ttyAMA1,115200n8 init=linuxrc"
-
-# set a fancy prompt (if support is compiled in)
-PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
-
diff --git a/arch/arm/boards/nhk8815/lowlevel.c b/arch/arm/boards/nhk8815/lowlevel.c
deleted file mode 100644
index 9ba5bbffad..0000000000
--- a/arch/arm/boards/nhk8815/lowlevel.c
+++ /dev/null
@@ -1,12 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-
-#include <common.h>
-#include <linux/sizes.h>
-#include <asm/barebox-arm-head.h>
-#include <asm/barebox-arm.h>
-
-void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
-{
-	arm_cpu_lowlevel_init();
-	barebox_arm_entry(0x0, SZ_64M, NULL);
-}
diff --git a/arch/arm/boards/nhk8815/setup.c b/arch/arm/boards/nhk8815/setup.c
deleted file mode 100644
index c7a2afdbfe..0000000000
--- a/arch/arm/boards/nhk8815/setup.c
+++ /dev/null
@@ -1,113 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2009 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
-
-#include <common.h>
-#include <init.h>
-#include <linux/mtd/mtd.h>
-#include <linux/mtd/nand.h>
-#include <nand.h>
-#include <asm/armlinux.h>
-#include <asm/mach-types.h>
-#include <io.h>
-#include <envfs.h>
-
-#include <mach/nomadik/hardware.h>
-#include <mach/nomadik/board.h>
-#include <mach/nomadik/nand.h>
-#include <mach/nomadik/fsmc.h>
-
-static int nhk8815_nand_init(void)
-{
-	/* FSMC setup for nand chip select (8-bit nand in 8815NHK) */
-	writel(0x0000000E, FSMC_PCR(0));
-	writel(0x000D0A00, FSMC_PMEM(0));
-	writel(0x00100A00, FSMC_PATT(0));
-
-	/* enable access to the chip select area */
-	writel(readl(FSMC_PCR(0)) | 0x04, FSMC_PCR(0));
-
-	return 0;
-}
-
-static struct nomadik_nand_platform_data nhk8815_nand_data = {
-	.init		= nhk8815_nand_init,
-};
-
-static struct resource nhk8815_nand_resources[] = {
-	{
-		.name	= "nand_addr",
-		.start	= NAND_IO_ADDR,
-		.end	= NAND_IO_ADDR + 0xfff,
-		.flags	= IORESOURCE_MEM,
-	}, {
-		.name	= "nand_cmd",
-		.start	= NAND_IO_CMD,
-		.end	= NAND_IO_CMD + 0xfff,
-		.flags	= IORESOURCE_MEM,
-	}, {
-		.name	= "nand_data",
-		.start	= NAND_IO_DATA,
-		.end	= NAND_IO_DATA + 0xfff,
-		.flags	= IORESOURCE_MEM,
-	}
-};
-
-static struct device nhk8815_nand_device = {
-	.id		= DEVICE_ID_DYNAMIC,
-	.name		= "nomadik_nand",
-	.num_resources	= ARRAY_SIZE(nhk8815_nand_resources),
-	.resource	= nhk8815_nand_resources,
-	.platform_data	= &nhk8815_nand_data,
-};
-
-static int nhk8815_mem_init(void)
-{
-	st8815_add_device_sdram(64 * 1024 *1024);
-
-	return 0;
-}
-mem_initcall(nhk8815_mem_init);
-
-static int nhk8815_devices_init(void)
-{
-	writel(0xC37800F0, NOMADIK_GPIO1_BASE + 0x20);
-	writel(0x00000000, NOMADIK_GPIO1_BASE + 0x24);
-	writel(0x00000000, NOMADIK_GPIO1_BASE + 0x28);
-	writel(readl(NOMADIK_SRC_BASE) | 0x8000, NOMADIK_SRC_BASE);
-
-	/* Set up SMCS1 for Ethernet: sram-like, enabled, timing values */
-	writel(0x0000305b, FSMC_BCR(1));
-	writel(0x00033f33, FSMC_BTR(1));
-
-	add_generic_device("smc91c111", DEVICE_ID_DYNAMIC, NULL, 0x34000300, 16,
-			   IORESOURCE_MEM, NULL);
-
-	platform_device_register(&nhk8815_nand_device);
-
-	armlinux_set_architecture(MACH_TYPE_NOMADIK);
-
-	devfs_add_partition("nand0", 0x0000000, 0x040000, DEVFS_PARTITION_FIXED, "xloader_raw");
-	devfs_add_partition("nand0", 0x0040000, 0x080000, DEVFS_PARTITION_FIXED, "meminit_raw");
-	devfs_add_partition("nand0", 0x0080000, 0x200000, DEVFS_PARTITION_FIXED, "self_raw");
-	dev_add_bb_dev("self_raw", "self0");
-	devfs_add_partition("nand0", 0x7FE0000, 0x020000, DEVFS_PARTITION_FIXED, "env_raw");
-	dev_add_bb_dev("env_raw", "env0");
-
-	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
-		defaultenv_append_directory(defaultenv_nhk8815);
-
-	return 0;
-}
-device_initcall(nhk8815_devices_init);
-
-static int nhk8815_console_init(void)
-{
-	barebox_set_model("Nomadik nhk8815");
-	barebox_set_hostname("nhk8815");
-
-	st8815_register_uart(1);
-
-	return 0;
-}
-
-console_initcall(nhk8815_console_init);
diff --git a/arch/arm/configs/nhk8815_defconfig b/arch/arm/configs/nhk8815_defconfig
deleted file mode 100644
index b2816f563b..0000000000
--- a/arch/arm/configs/nhk8815_defconfig
+++ /dev/null
@@ -1,50 +0,0 @@
-CONFIG_TEXT_BASE=0x03F80000
-CONFIG_ARCH_NOMADIK=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PROMPT="Nomadik:"
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_MENU=y
-CONFIG_PASSWD_SUM_SHA1=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_LOGIN=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_PASSWD=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_FLASH=y
-CONFIG_NET=y
-CONFIG_NET_NFS=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_NET_RESOLV=y
-CONFIG_SERIAL_AMBA_PL011=y
-CONFIG_DRIVER_NET_SMC91111=y
-# CONFIG_SPI is not set
-CONFIG_MTD=y
-CONFIG_NAND=y
-CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC=y
-CONFIG_MTD_NAND_NOMADIK=y
-CONFIG_FS_CRAMFS=y
-CONFIG_FS_TFTP=y
-CONFIG_DIGEST_SHA256_GENERIC=y
diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index 43baea2207..0cc3d28662 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -48,8 +48,6 @@
 #include <mach/socfpga/debug_ll.h>
 #elif defined CONFIG_ARCH_PXA
 #include <mach/pxa/debug_ll.h>
-#elif defined CONFIG_ARCH_NOMADIK
-#include <mach/nomadik/debug_ll.h>
 #elif defined CONFIG_ARCH_MXS
 #include <mach/mxs/debug_ll.h>
 #elif defined CONFIG_ARCH_CLPS711X
diff --git a/arch/arm/include/asm/mach-types.h b/arch/arm/include/asm/mach-types.h
index 259dc9568a..6b446d5185 100644
--- a/arch/arm/include/asm/mach-types.h
+++ b/arch/arm/include/asm/mach-types.h
@@ -101,18 +101,6 @@ extern unsigned int __machine_arch_type;
 # define machine_is_csb337()	(0)
 #endif
 
-#ifdef CONFIG_MACH_NOMADIK
-# ifdef machine_arch_type
-#  undef machine_arch_type
-#  define machine_arch_type	__machine_arch_type
-# else
-#  define machine_arch_type	MACH_TYPE_NOMADIK
-# endif
-# define machine_is_nomadik()	(machine_arch_type == MACH_TYPE_NOMADIK)
-#else
-# define machine_is_nomadik()	(0)
-#endif
-
 #ifdef CONFIG_MACH_SCB9328
 # ifdef machine_arch_type
 #  undef machine_arch_type
diff --git a/arch/arm/mach-nomadik/8815.c b/arch/arm/mach-nomadik/8815.c
deleted file mode 100644
index 78b4ed8d5e..0000000000
--- a/arch/arm/mach-nomadik/8815.c
+++ /dev/null
@@ -1,71 +0,0 @@
-/*
- * Copyright (C) 2009 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; version 2 of
- * the License.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- *
- */
-
-#include <common.h>
-#include <init.h>
-#include <linux/clkdev.h>
-#include <mach/nomadik/hardware.h>
-#include <mach/nomadik/board.h>
-#include <asm/armlinux.h>
-#include <asm/mach-types.h>
-#include <linux/amba/bus.h>
-
-#include "clock.h"
-
-static struct clk st8815_clk_48 = {
-       .rate = 48 * 1000 * 1000,
-};
-
-static struct clk st8815_clk_2_4 = {
-       .rate = 2400000,
-};
-
-static struct clk st8815_dummy;
-
-void st8815_add_device_sdram(u32 size)
-{
-	arm_add_mem_device("ram0", 0x00000000, size);
-}
-
-static struct clk_lookup clocks_lookups[] = {
-	CLKDEV_CON_ID("apb_pclk", &st8815_dummy),
-	CLKDEV_CON_ID("nomadik_mtu", &st8815_clk_2_4),
-	CLKDEV_DEV_ID("uart-pl0110", &st8815_clk_48),
-	CLKDEV_DEV_ID("uart-pl0111", &st8815_clk_48),
-};
-
-static int st8815_clkdev_init(void)
-{
-	clkdev_add_table(clocks_lookups, ARRAY_SIZE(clocks_lookups));
-
-	return 0;
-}
-postcore_initcall(st8815_clkdev_init);
-
-void st8815_register_uart(unsigned id)
-{
-	resource_size_t start;
-
-	switch (id) {
-	case 0:
-		start = NOMADIK_UART1_BASE;
-		break;
-	case 1:
-		start = NOMADIK_UART1_BASE;
-		break;
-	}
-	amba_apb_device_add(NULL, "uart-pl011", id, start, 4096, NULL, 0);
-}
diff --git a/arch/arm/mach-nomadik/Kconfig b/arch/arm/mach-nomadik/Kconfig
deleted file mode 100644
index 8237779173..0000000000
--- a/arch/arm/mach-nomadik/Kconfig
+++ /dev/null
@@ -1,23 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-if ARCH_NOMADIK
-
-config ARCH_TEXT_BASE
-	hex
-	default 0x03c00000 if MACH_NOMADIK_8815NHK
-
-choice
-	prompt "Nomadik boards"
-
-config MACH_NOMADIK_8815NHK
-	bool "ST 8815 Nomadik Hardware Kit (evaluation board)"
-	select NOMADIK_8815
-	select CLKDEV_LOOKUP
-
-endchoice
-
-config NOMADIK_8815
-	bool
-	select ARM_AMBA
-
-endif
diff --git a/arch/arm/mach-nomadik/Makefile b/arch/arm/mach-nomadik/Makefile
deleted file mode 100644
index 0ab83f61c8..0000000000
--- a/arch/arm/mach-nomadik/Makefile
+++ /dev/null
@@ -1,4 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-obj-y	+= clock.o reset.o timer.o
-obj-y	+= 8815.o
diff --git a/arch/arm/mach-nomadik/clock.c b/arch/arm/mach-nomadik/clock.c
deleted file mode 100644
index e68097ade8..0000000000
--- a/arch/arm/mach-nomadik/clock.c
+++ /dev/null
@@ -1,55 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-
-/*
- * linux/arch/arm/mach-nomadik/clock.c
- *
- * Copyright (C) 2009 Alessandro Rubini
- */
-#include <common.h>
-#include <errno.h>
-#include <linux/err.h>
-#include <linux/clk.h>
-#include <init.h>
-#include <linux/clkdev.h>
-
-#include "clock.h"
-
-/*
- * The nomadik board uses generic clocks, but the serial pl011 file
- * calls clk_enable(), clk_disable(), clk_get_rate(), so we provide them
- */
-unsigned long clk_get_rate(struct clk *clk)
-{
-	return clk->rate;
-}
-EXPORT_SYMBOL(clk_get_rate);
-
-int clk_set_rate(struct clk *clk, unsigned long rate)
-{
-	return 0;
-}
-EXPORT_SYMBOL(clk_set_rate);
-
-/* enable and disable do nothing */
-int clk_enable(struct clk *clk)
-{
-	return 0;
-}
-EXPORT_SYMBOL(clk_enable);
-
-void clk_disable(struct clk *clk)
-{
-}
-EXPORT_SYMBOL(clk_disable);
-
-/* Create a clock structure with the given name */
-int nmdk_clk_create(struct clk *clk, const char *dev_id)
-{
-	struct clk_lookup *clkdev;
-
-	clkdev = clkdev_alloc(clk, NULL, dev_id);
-	if (!clkdev)
-		return -ENOMEM;
-	clkdev_add(clkdev);
-	return 0;
-}
diff --git a/arch/arm/mach-nomadik/clock.h b/arch/arm/mach-nomadik/clock.h
deleted file mode 100644
index eade4a68ec..0000000000
--- a/arch/arm/mach-nomadik/clock.h
+++ /dev/null
@@ -1,14 +0,0 @@
-/*
- * linux/arch/arm/mach-nomadik/clock.h
- *
- * Copyright (C) 2009 Alessandro Rubini
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- */
-struct clk {
-	unsigned long	rate;
-};
-
-int nmdk_clk_create(struct clk *clk, const char *dev_id);
diff --git a/arch/arm/mach-nomadik/reset.c b/arch/arm/mach-nomadik/reset.c
deleted file mode 100644
index d3d54de07e..0000000000
--- a/arch/arm/mach-nomadik/reset.c
+++ /dev/null
@@ -1,42 +0,0 @@
-/*
- *  mach-nomadik/include/mach/system.h
- *
- *  Copyright (C) 2008 STMicroelectronics
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#include <common.h>
-#include <init.h>
-#include <io.h>
-#include <restart.h>
-#include <mach/nomadik/hardware.h>
-
-static void __noreturn nomadik_restart_soc(struct restart_handler *rst)
-{
-	void __iomem *src_rstsr = (void *)(NOMADIK_SRC_BASE + 0x18);
-
-	/* FIXME: use egpio when implemented */
-
-	/* Write anything to Reset status register */
-	writel(1, src_rstsr);
-
-	/* Not reached */
-	hang();
-}
-
-static int restart_register_feature(void)
-{
-	restart_handler_register_fn("soc", nomadik_restart_soc);
-
-	return 0;
-}
-coredevice_initcall(restart_register_feature);
diff --git a/arch/arm/mach-nomadik/timer.c b/arch/arm/mach-nomadik/timer.c
deleted file mode 100644
index 73abbe9b91..0000000000
--- a/arch/arm/mach-nomadik/timer.c
+++ /dev/null
@@ -1,33 +0,0 @@
-/*
- * linux/arch/arm/mach-nomadik/timer.c
- *
- * Copyright (C) 2008 STMicroelectronics
- * Copyright (C) 2009 Alessandro Rubini, somewhat based on at91sam926x
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2, as
- * published by the Free Software Foundation.
- */
-#include <common.h>
-#include <init.h>
-#include <io.h>
-#include <mach/nomadik/hardware.h>
-
-/* Initial value for SRC control register: all timers use MXTAL/8 source */
-#define SRC_CR_INIT_MASK	0x00007fff
-#define SRC_CR_INIT_VAL		0x2aaa8000
-
-static int st8815_timer_init(void)
-{
-	u32 src_cr;
-
-	/* Configure timer sources in "system reset controller" ctrl reg */
-	src_cr = readl(NOMADIK_SRC_BASE);
-	src_cr &= SRC_CR_INIT_MASK;
-	src_cr |= SRC_CR_INIT_VAL;
-	writel(src_cr, NOMADIK_SRC_BASE);
-
-	add_generic_device("nomadik_mtu", DEVICE_ID_SINGLE, NULL, NOMADIK_MTU0_BASE, 0x1000, IORESOURCE_MEM, NULL);
-	return 0;
-}
-coredevice_initcall(st8815_timer_init);
diff --git a/include/mach/nomadik/board.h b/include/mach/nomadik/board.h
deleted file mode 100644
index 49004a6825..0000000000
--- a/include/mach/nomadik/board.h
+++ /dev/null
@@ -1,24 +0,0 @@
-/*
- * Copyright (C) 2009 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; version 2 of
- * the License.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- *
- */
-
-#ifndef __ASM_ARCH_BOARD_H
-#define __ASM_ARCH_BOARD_H
-
-void st8815_add_device_sdram(u32 size);
-
-void st8815_register_uart(unsigned id);
-
-#endif
diff --git a/include/mach/nomadik/fsmc.h b/include/mach/nomadik/fsmc.h
deleted file mode 100644
index be0f9569b5..0000000000
--- a/include/mach/nomadik/fsmc.h
+++ /dev/null
@@ -1,30 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-/* Definitions for the Nomadik FSMC "Flexible Static Memory controller" */
-
-#ifndef __ASM_ARCH_FSMC_H
-#define __ASM_ARCH_FSMC_H
-
-#include <mach/nomadik/hardware.h>
-/*
- * Register list
- */
-
-/* bus control reg. and bus timing reg. for CS0..CS3 */
-#define FSMC_BCR(x)     (NOMADIK_FSMC_VA + (x << 3))
-#define FSMC_BTR(x)     (NOMADIK_FSMC_VA + (x << 3) + 0x04)
-
-/* PC-card and NAND:
- * PCR = control register
- * PMEM = memory timing
- * PATT = attribute timing
- * PIO = I/O timing
- * PECCR = ECC result
- */
-#define FSMC_PCR(x)     (NOMADIK_FSMC_VA + ((2 + x) << 5) + 0x00)
-#define FSMC_PMEM(x)    (NOMADIK_FSMC_VA + ((2 + x) << 5) + 0x08)
-#define FSMC_PATT(x)    (NOMADIK_FSMC_VA + ((2 + x) << 5) + 0x0c)
-#define FSMC_PIO(x)     (NOMADIK_FSMC_VA + ((2 + x) << 5) + 0x10)
-#define FSMC_PECCR(x)   (NOMADIK_FSMC_VA + ((2 + x) << 5) + 0x14)
-
-#endif /* __ASM_ARCH_FSMC_H */
diff --git a/include/mach/nomadik/hardware.h b/include/mach/nomadik/hardware.h
deleted file mode 100644
index 00b42cd1ff..0000000000
--- a/include/mach/nomadik/hardware.h
+++ /dev/null
@@ -1,87 +0,0 @@
-/*
- * This file contains the hardware definitions of the Nomadik.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
-#ifndef __MACH_NOMADIK_HARDWARE_H
-#define __MACH_NOMADIK_HARDWARE_H
-
-/* Nomadik registers live from 0x1000.0000 to 0x1023.0000 -- currently */
-#define NOMADIK_IO_VIRTUAL	0xF0000000	/* VA of IO */
-#define NOMADIK_IO_PHYSICAL	0x10000000	/* PA of IO */
-#define NOMADIK_IO_SIZE		0x00300000	/* 3MB for all regs */
-
-#ifndef CONFIG_MMU
-#define io_p2v(x) (x)
-#define io_v2p(x) (x)
-#else
-#define io_p2v(x) ((x) - NOMADIK_IO_PHYSICAL + NOMADIK_IO_VIRTUAL)
-#define io_v2p(x) ((x) - NOMADIK_IO_VIRTUAL + NOMADIK_IO_PHYSICAL)
-#endif
-
-#define IO_ADDRESS(x) (io_p2v(x)) /* used in asm and more */
-
-/*
- * Base address defination for Nomadik Onchip Logic Block
- */
-#define NOMADIK_FSMC_BASE	0x10100000	/* FSMC registers */
-#define NOMADIK_SDRAMC_BASE	0x10110000	/* SDRAM Controller */
-#define NOMADIK_CLCDC_BASE	0x10120000	/* CLCD Controller */
-#define NOMADIK_MDIF_BASE	0x10120000	/* MDIF */
-#define NOMADIK_DMA0_BASE	0x10130000	/* DMA0 Controller */
-#define NOMADIK_IC_BASE		0x10140000	/* Vectored Irq Controller */
-#define NOMADIK_DMA1_BASE	0x10150000	/* DMA1 Controller */
-#define NOMADIK_USB_BASE	0x10170000	/* USB-OTG conf reg base */
-#define NOMADIK_CRYP_BASE	0x10180000	/* Crypto processor */
-#define NOMADIK_SHA1_BASE	0x10190000	/* SHA-1 Processor */
-#define NOMADIK_XTI_BASE	0x101A0000	/* XTI */
-#define NOMADIK_RNG_BASE	0x101B0000	/* Random number generator */
-#define NOMADIK_SRC_BASE	0x101E0000	/* SRC base */
-#define NOMADIK_WDOG_BASE	0x101E1000	/* Watchdog */
-#define NOMADIK_MTU0_BASE	0x101E2000	/* Multiple Timer 0 */
-#define NOMADIK_MTU1_BASE	0x101E3000	/* Multiple Timer 1 */
-#define NOMADIK_GPIO0_BASE	0x101E4000	/* GPIO0 */
-#define NOMADIK_GPIO1_BASE	0x101E5000	/* GPIO1 */
-#define NOMADIK_GPIO2_BASE	0x101E6000	/* GPIO2 */
-#define NOMADIK_GPIO3_BASE	0x101E7000	/* GPIO3 */
-#define NOMADIK_RTC_BASE	0x101E8000	/* Real Time Clock base */
-#define NOMADIK_PMU_BASE	0x101E9000	/* Power Management Unit */
-#define NOMADIK_OWM_BASE	0x101EA000	/* One wire master */
-#define NOMADIK_SCR_BASE	0x101EF000	/* Secure Control registers */
-#define NOMADIK_MSP2_BASE	0x101F0000	/* MSP 2 interface */
-#define NOMADIK_MSP1_BASE	0x101F1000	/* MSP 1 interface */
-#define NOMADIK_UART2_BASE	0x101F2000	/* UART 2 interface */
-#define NOMADIK_SSIRx_BASE	0x101F3000	/* SSI 8-ch rx interface */
-#define NOMADIK_SSITx_BASE	0x101F4000	/* SSI 8-ch tx interface */
-#define NOMADIK_MSHC_BASE	0x101F5000	/* Memory Stick(Pro) Host */
-#define NOMADIK_SDI_BASE	0x101F6000	/* SD-card/MM-Card */
-#define NOMADIK_I2C1_BASE	0x101F7000	/* I2C1 interface */
-#define NOMADIK_I2C0_BASE	0x101F8000	/* I2C0 interface */
-#define NOMADIK_MSP0_BASE	0x101F9000	/* MSP 0 interface */
-#define NOMADIK_FIRDA_BASE	0x101FA000	/* FIrDA interface */
-#define NOMADIK_UART1_BASE	0x101FB000	/* UART 1 interface */
-#define NOMADIK_SSP_BASE	0x101FC000	/* SSP interface */
-#define NOMADIK_UART0_BASE	0x101FD000	/* UART 0 interface */
-#define NOMADIK_SGA_BASE	0x101FE000	/* SGA interface */
-#define NOMADIK_L2CC_BASE	0x10210000	/* L2 Cache controller */
-
-/* Other ranges, not for p2v/v2p */
-#define NOMADIK_BACKUP_RAM	0x80010000
-#define NOMADIK_EBROM		0x80000000	/* Embedded boot ROM */
-#define NOMADIK_HAMACV_DMEM_BASE 0xA0100000	/* HAMACV Data Memory Start */
-#define NOMADIK_HAMACV_DMEM_END	0xA01FFFFF	/* HAMACV Data Memory End */
-#define NOMADIK_HAMACA_DMEM	0xA0200000	/* HAMACA Data Memory Space */
-
-#define NOMADIK_FSMC_VA		IO_ADDRESS(NOMADIK_FSMC_BASE)
-#define NOMADIK_MTU0_VA		IO_ADDRESS(NOMADIK_MTU0_BASE)
-#define NOMADIK_MTU1_VA		IO_ADDRESS(NOMADIK_MTU1_BASE)
-
-#endif /* __MACH_NOMADIK_HARDWARE_H */
diff --git a/include/mach/nomadik/nand.h b/include/mach/nomadik/nand.h
deleted file mode 100644
index 419db3e33c..0000000000
--- a/include/mach/nomadik/nand.h
+++ /dev/null
@@ -1,15 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-#ifndef __ASM_ARCH_NAND_H
-#define __ASM_ARCH_NAND_H
-
-struct nomadik_nand_platform_data {
-	int options;
-	int (*init) (void);
-};
-
-#define NAND_IO_DATA	0x40000000
-#define NAND_IO_CMD	0x40800000
-#define NAND_IO_ADDR	0x41000000
-
-#endif				/* __ASM_ARCH_NAND_H */
-- 
2.39.2



