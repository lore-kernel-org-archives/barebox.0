Delivery-date: Tue, 24 May 2022 08:06:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ntNgt-007G64-61
	for lore@lore.pengutronix.de; Tue, 24 May 2022 08:06:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ntNgq-0004Td-0X
	for lore@pengutronix.de; Tue, 24 May 2022 08:06:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QW1zuezNTJGMLoigY+eKJLKKH4y/zdZX3rbO/qYKmmY=; b=wIwtiP0b7XAE2G
	n7XhKY3aYwRZwrNpKBWpIKKMLUBBD3FLJrOxwhe9UXeinVOddvEOsUmbrn/8DHVrjtQpFt/RhkN5y
	Oqsw3QB8vouiO1AxZRovJYPJQ5jEg9ktx1RH0+IFYR3BJwiv0X8bYLKPCT7wrsutQHH6DAnSboDG2
	YbUIh/a2WDr74bdUtvY2w7ICrXsAkg73To5dd9OxYWcfdzthp0jo3gOPZ8Tj25wzspi8q1vM2Q5Ps
	UWm/sRWTAHRhzZMSTAL5y7XBPdcZO1HEbBKD3MV5d3X5jtUPRsccgHyvTX3GKifCg6X1ZxoLkpfsk
	+o4vOGwDp15teBMrEL8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ntNer-006uX6-Ld; Tue, 24 May 2022 06:04:41 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ntNek-006uUM-PH
 for barebox@lists.infradead.org; Tue, 24 May 2022 06:04:38 +0000
Received: by mail-lf1-x12f.google.com with SMTP id p4so27653059lfg.4
 for <barebox@lists.infradead.org>; Mon, 23 May 2022 23:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4ZolZIp0fZZKjKKV0eLFQcseS3CoNTD6Wpfxf7Ne5Dk=;
 b=Fdf+kZdvTS8J6E8V+oiqVYB9vy3EBFF0zpUj65KVkhHEA9c7Jc2t/VpTwgbjQLNAfV
 GTV/Y5MQ0Y4EeFhSXPWfTOq6CDbzkdTFRXTh6WaeT/cBdBAX6Z3yCpQvefRZE3ulbbeN
 l/i4G208bYGmR+NI4TbQQJ2E404k9vJj9QIrOZiEQvYZ2xLLCwj70kGuFLa8b7NfJ81P
 YeyMxmm9miINmEYm/GJzPvMvmsD+kRhghGnjMWOFKDBviY9ilmLC0BC0HW9XXzg/iTXy
 GOgvl3f4gc4nG2kbnCI/Owo8MFTBmkOR6ncubNHuv9gmmaIXybs9FSzMRj8YKkuMit2L
 +LSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4ZolZIp0fZZKjKKV0eLFQcseS3CoNTD6Wpfxf7Ne5Dk=;
 b=Ln9Vh+WrmUxJvbwyprAwwO7gAgaVpH1VRbIY//b2LVvADF3f0T31YFMKHEykS7Vq8B
 wFKgUy4Vsh8yiYor7AMorvov0LYX+2e/Sxm8H+6iPQcP7S1Y8eWJ0P5EAPJ6frOM/6XN
 1WPAQVNsCMT5mv/J7EeJDiIhiKdGnh33UJaQutdx0PFApp4vYtina6ZkkRcZGEA9KAw3
 CuWc5dBaLy6jy0LxISmDvmjCDQIbFbYn32lYii9lP1foMLWWouxOTlsP79kEYHBgkkIj
 IZF/JQah14GtfY+RzEdcxkuSfj/AYPXaMnshjdfvViztmChG4SNieh0uJrWxp7UxH9u5
 QnEg==
X-Gm-Message-State: AOAM533td70pru1yF30TMfVFrktgI95ltt4fx6VQyFGD42xBUnPVGt6U
 h4Vv2+c8Nh+5lPLCuCzgaUQZHvkrvpM=
X-Google-Smtp-Source: ABdhPJz7zoaKUy6OL4ni7Cy381MMsyqzchrZbp1ZOEMH8jUuthoyZGXaoPt6FKmraG7T+UOTsDgYOA==
X-Received: by 2002:a05:6512:3b0e:b0:478:7c53:4d0a with SMTP id
 f14-20020a0565123b0e00b004787c534d0amr4142327lfv.373.1653372261181; 
 Mon, 23 May 2022 23:04:21 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
 by smtp.gmail.com with ESMTPSA id
 4-20020ac24824000000b0047255d211c8sm2346461lft.247.2022.05.23.23.04.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 May 2022 23:04:20 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 24 May 2022 09:04:11 +0300
Message-Id: <20220524060411.7754-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220523_230434_881838_36642802 
X-CRM114-Status: GOOD (  27.04  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2] ARM: clps711x: Switch to devicetree usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This is a complex patch that switches the ARM CLPS711X architecture
to work with the device tree. Includes changes to board initialization
and any architecture drivers used.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/Kconfig                              |   4 +
 arch/arm/boards/clep7212/Makefile             |   4 +-
 arch/arm/boards/clep7212/board.c              |  15 ++
 arch/arm/boards/clep7212/clep7212.c           |  57 -------
 arch/arm/boards/clep7212/lowlevel.c           |  23 ++-
 arch/arm/configs/clps711x_defconfig           |   5 +-
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/ep7212-clep7212.dts              |  64 ++++++++
 arch/arm/mach-clps711x/Kconfig                |   9 --
 arch/arm/mach-clps711x/Makefile               |   2 +-
 arch/arm/mach-clps711x/clock.c                |  46 +++---
 arch/arm/mach-clps711x/common.c               | 149 ++++++++++++++++++
 .../arm/mach-clps711x/include/mach/clps711x.h |  28 ++--
 .../arm/mach-clps711x/include/mach/debug_ll.h |  21 +++
 arch/arm/mach-clps711x/include/mach/devices.h |   9 --
 arch/arm/mach-clps711x/lowlevel.c             |  72 +++++----
 arch/arm/mach-clps711x/reset.c                |  29 ----
 drivers/clocksource/clps711x.c                |   7 +-
 drivers/gpio/gpio-clps711x.c                  |   7 +-
 drivers/serial/serial_clps711x.c              |  57 ++++---
 images/Makefile                               |   1 +
 images/Makefile.clps711x                      |   8 +
 22 files changed, 395 insertions(+), 223 deletions(-)
 create mode 100644 arch/arm/boards/clep7212/board.c
 delete mode 100644 arch/arm/boards/clep7212/clep7212.c
 create mode 100644 arch/arm/dts/ep7212-clep7212.dts
 create mode 100644 arch/arm/mach-clps711x/common.c
 create mode 100644 arch/arm/mach-clps711x/include/mach/debug_ll.h
 delete mode 100644 arch/arm/mach-clps711x/include/mach/devices.h
 delete mode 100644 arch/arm/mach-clps711x/reset.c
 create mode 100644 images/Makefile.clps711x

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 299e0ab080..8a1d75c19b 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -66,9 +66,13 @@ config ARCH_CLPS711X
 	select CLKDEV_LOOKUP
 	select CLOCKSOURCE_CLPS711X
 	select COMMON_CLK
+	select COMMON_CLK_OF_PROVIDER
 	select CPU_32v4T
 	select GPIOLIB
+	select HAS_DEBUG_LL
+	select HAVE_PBL_MULTI_IMAGES
 	select MFD_SYSCON
+	select RELOCATABLE
 
 config ARCH_DAVINCI
 	bool "TI Davinci"
diff --git a/arch/arm/boards/clep7212/Makefile b/arch/arm/boards/clep7212/Makefile
index 096120e567..85d92c8a7f 100644
--- a/arch/arm/boards/clep7212/Makefile
+++ b/arch/arm/boards/clep7212/Makefile
@@ -1,5 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-obj-y += clep7212.o
+obj-y += board.o
 lwl-y += lowlevel.o
-bbenv-y += defaultenv-clep7212
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT) += defaultenv-clep7212
diff --git a/arch/arm/boards/clep7212/board.c b/arch/arm/boards/clep7212/board.c
new file mode 100644
index 0000000000..b3983f2f49
--- /dev/null
+++ b/arch/arm/boards/clep7212/board.c
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// SPDX-FileCopyrightText: Alexander Shiyan <shc_work@mail.ru>
+
+#include <envfs.h>
+#include <init.h>
+#include <of.h>
+
+static __init int clep7212_init(void)
+{
+	if (of_machine_is_compatible("cirrus,clep7212"))
+		defaultenv_append_directory(defaultenv_clep7212);
+
+	return 0;
+}
+device_initcall(clep7212_init);
diff --git a/arch/arm/boards/clep7212/clep7212.c b/arch/arm/boards/clep7212/clep7212.c
deleted file mode 100644
index 3b497a6bd2..0000000000
--- a/arch/arm/boards/clep7212/clep7212.c
+++ /dev/null
@@ -1,57 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2012 Alexander Shiyan <shc_work@mail.ru>
-
-#include <common.h>
-#include <driver.h>
-#include <envfs.h>
-#include <init.h>
-#include <partition.h>
-#include <io.h>
-#include <linux/sizes.h>
-#include <asm/armlinux.h>
-#include <asm/mmu.h>
-#include <generated/mach-types.h>
-
-#include <mach/clps711x.h>
-#include <mach/devices.h>
-
-static int clps711x_devices_init(void)
-{
-	u32 serial_h = 0, serial_l = readl(UNIQID);
-	void *cfi_io;
-
-	/* Setup Chipselects */
-	clps711x_setup_memcfg(0, MEMCFG_WAITSTATE_6_1 | MEMCFG_BUS_WIDTH_16);
-	clps711x_setup_memcfg(1, MEMCFG_WAITSTATE_6_1 | MEMCFG_BUS_WIDTH_8);
-	clps711x_setup_memcfg(2, MEMCFG_WAITSTATE_8_3 | MEMCFG_BUS_WIDTH_16 |
-			      MEMCFG_CLKENB);
-	clps711x_setup_memcfg(3, MEMCFG_WAITSTATE_7_1 | MEMCFG_BUS_WIDTH_32);
-
-	cfi_io = map_io_sections(CS0_BASE, (void *)0x90000000, SZ_32M);
-	add_cfi_flash_device(DEVICE_ID_DYNAMIC, (unsigned long)cfi_io, SZ_32M,
-			     IORESOURCE_MEM);
-
-	devfs_add_partition("nor0", 0x00000, SZ_512K, DEVFS_PARTITION_FIXED,
-			    "self0");
-	devfs_add_partition("nor0", SZ_256K, SZ_256K, DEVFS_PARTITION_FIXED,
-			    "env0");
-
-	armlinux_set_architecture(MACH_TYPE_CLEP7212);
-	armlinux_set_serial(((u64)serial_h << 32) | serial_l);
-
-	defaultenv_append_directory(defaultenv_clep7212);
-
-	return 0;
-}
-device_initcall(clps711x_devices_init);
-
-static int clps711x_console_init(void)
-{
-	barebox_set_model("Cirrus Logic CLEP7212");
-	barebox_set_hostname("clep7212");
-
-	clps711x_add_uart(0);
-
-	return 0;
-}
-console_initcall(clps711x_console_init);
diff --git a/arch/arm/boards/clep7212/lowlevel.c b/arch/arm/boards/clep7212/lowlevel.c
index 41827dfa16..09f2762fac 100644
--- a/arch/arm/boards/clep7212/lowlevel.c
+++ b/arch/arm/boards/clep7212/lowlevel.c
@@ -1,22 +1,21 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2012 Alexander Shiyan <shc_work@mail.ru>
+// SPDX-FileCopyrightText: Alexander Shiyan <shc_work@mail.ru>
 
 #include <common.h>
-#include <init.h>
-
-#include <asm/barebox-arm-head.h>
-
+#include <asm/barebox-arm.h>
+#include <linux/sizes.h>
 #include <mach/clps711x.h>
 
-#ifdef CONFIG_CLPS711X_RAISE_CPUFREQ
-# define CLPS711X_CPU_PLL_MULT	50
-#else
-# define CLPS711X_CPU_PLL_MULT	40
-#endif
+extern char __dtb_ep7212_clep7212_start[];
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+ENTRY_FUNCTION_WITHSTACK(start_ep7212_clep7212,
+			 CS6_BASE + 48 * SZ_1K, r0, r1, r2)
 {
+	void *fdt;
+
 	arm_cpu_lowlevel_init();
 
-	clps711x_barebox_entry(CLPS711X_CPU_PLL_MULT, NULL);
+	fdt = __dtb_ep7212_clep7212_start;
+
+	clps711x_start(fdt + get_runtime_offset());
 }
diff --git a/arch/arm/configs/clps711x_defconfig b/arch/arm/configs/clps711x_defconfig
index d9eab565b9..684ae79e22 100644
--- a/arch/arm/configs/clps711x_defconfig
+++ b/arch/arm/configs/clps711x_defconfig
@@ -1,8 +1,8 @@
 CONFIG_ARCH_CLPS711X=y
+CONFIG_CLPS711X_RAISE_CPUFREQ=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 # CONFIG_MEMINFO is not set
-CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
 CONFIG_EXPERIMENTAL=y
 CONFIG_BAUDRATE=57600
@@ -28,6 +28,8 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_CRC_CMP=y
 CONFIG_CMD_FLASH=y
+CONFIG_OFDEVICE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
 # CONFIG_SPI is not set
 CONFIG_MTD=y
 CONFIG_DRIVER_CFI=y
@@ -36,6 +38,7 @@ CONFIG_DRIVER_CFI=y
 CONFIG_DISK=y
 CONFIG_DISK_WRITE=y
 CONFIG_DISK_INTF_PLATFORM_IDE=y
+# CONFIG_PINCTRL is not set
 CONFIG_FS_CRAMFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 46e5e67672..d67d10bde8 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -8,6 +8,7 @@ lwl-$(CONFIG_MACH_ADVANTECH_ROM_742X) += imx6dl-advantech-rom-7421.dtb.o
 lwl-$(CONFIG_MACH_AFI_GF) += am335x-afi-gf.dtb.o
 lwl-$(CONFIG_MACH_BEAGLEBONE) += am335x-bone.dtb.o am335x-boneblack.dtb.o am335x-bone-common.dtb.o
 lwl-$(CONFIG_MACH_CANON_A1100) += canon-a1100.dtb.o
+lwl-$(CONFIG_MACH_CLEP7212) += ep7212-clep7212.dtb.o
 lwl-$(CONFIG_MACH_CM_FX6) += imx6dl-cm-fx6.dtb.o imx6q-cm-fx6.dtb.o imx6q-utilite.dtb.o
 lwl-$(CONFIG_MACH_DFI_FS700_M60) += imx6q-dfi-fs700-m60-6q.dtb.o imx6dl-dfi-fs700-m60-6s.dtb.o
 lwl-$(CONFIG_MACH_DUCKBILL) += imx28-duckbill.dtb.o
diff --git a/arch/arm/dts/ep7212-clep7212.dts b/arch/arm/dts/ep7212-clep7212.dts
new file mode 100644
index 0000000000..84c5e79548
--- /dev/null
+++ b/arch/arm/dts/ep7212-clep7212.dts
@@ -0,0 +1,64 @@
+// SPDX-License-Identifier: GPL-2.0+
+/* Author: Alexander Shiyan <shc_work@mail.ru> */
+
+#include <arm/ep7211.dtsi>
+
+/ {
+	model = "Cirrus Logic EP7212";
+	compatible = "cirrus,clep7212", "cirrus,ep7212", "cirrus,ep7209";
+
+	memory@c0000000 {
+		device_type = "memory";
+		reg = <0xc0000000 0x02000000>;
+	};
+
+	chosen {
+		stdout-path = &uart1;
+
+		environment {
+			compatible = "barebox,environment";
+			device-path = &flash, "partname:env";
+		};
+	};
+};
+
+&bus {
+	/* Setup Memory Timings */
+	/* CS0 = WAITSTATE_6_1 | BUS_WIDTH_16 */
+	/* CS1 = WAITSTATE_6_1 | BUS_WIDTH_8 */
+	/* CS2 = WAITSTATE_8_3 | BUS_WIDTH_16 | CLKENB */
+	/* CS3 = WAITSTATE_7_1 | BUS_WIDTH_32 */
+	barebox,ep7209-memcfg1 = <0x25802b28>;
+
+	flash: nor@0,0 {
+		compatible = "cfi-flash";
+		reg = <0 0x00000000 0x02000000>;
+		bank-width = <2>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "boot";
+				reg = <0x00000 0x80000>;
+			};
+
+			partition@80000 {
+				label = "env";
+				reg = <0x80000 0x40000>;
+			};
+
+			partition@c0000 {
+				label = "kernel";
+				reg = <0xc0000 0x340000>;
+			};
+
+			partition@400000 {
+				label = "root";
+				reg = <0x400000 0>;
+			};
+		};
+	};
+};
diff --git a/arch/arm/mach-clps711x/Kconfig b/arch/arm/mach-clps711x/Kconfig
index 52cf8468c0..6cf6bc37a2 100644
--- a/arch/arm/mach-clps711x/Kconfig
+++ b/arch/arm/mach-clps711x/Kconfig
@@ -16,7 +16,6 @@ menu "CLPS711X specific settings"
 
 config CLPS711X_RAISE_CPUFREQ
 	bool "Raise CPU frequency to 90 MHz"
-	depends on MACH_CLEP7212
 	help
 	  Raise CPU frequency to 90 MHz. This operation can be performed
 	  only for devices which allow to operate at 90 MHz.
@@ -24,12 +23,4 @@ config CLPS711X_RAISE_CPUFREQ
 
 endmenu
 
-config ARCH_TEXT_BASE
-	hex
-	default 0xc0740000 if MACH_CLEP7212
-
-config BAREBOX_MAX_IMAGE_SIZE
-	hex
-	default 0x00080000 if MACH_CLEP7212
-
 endif
diff --git a/arch/arm/mach-clps711x/Makefile b/arch/arm/mach-clps711x/Makefile
index 4d5950d9b5..871c5f7e9c 100644
--- a/arch/arm/mach-clps711x/Makefile
+++ b/arch/arm/mach-clps711x/Makefile
@@ -1,4 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-obj-y += clock.o devices.o reset.o
+obj-y += clock.o common.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/mach-clps711x/clock.c b/arch/arm/mach-clps711x/clock.c
index 2c5137c582..8674b8c801 100644
--- a/arch/arm/mach-clps711x/clock.c
+++ b/arch/arm/mach-clps711x/clock.c
@@ -1,11 +1,5 @@
-/*
- * Copyright (C) 2012-2016 Alexander Shiyan <shc_work@mail.ru>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- */
+// SPDX-License-Identifier: GPL-2.0-or-later
+// SPDX-FileCopyrightText: Alexander Shiyan <shc_work@mail.ru>
 
 #include <common.h>
 #include <init.h>
@@ -21,13 +15,15 @@
 #define CLPS711X_EXT_FREQ	13000000
 
 static struct clk *clks[CLPS711X_CLK_MAX];
+static struct clk_onecell_data clk_data;
 
-static struct clk_div_table tdiv_tbl[] = {
+static const struct clk_div_table tdiv_tbl[] = {
 	{ .val = 0, .div = 256, },
 	{ .val = 1, .div = 1, },
+	{ }
 };
 
-static __init int clps711x_clk_init(void)
+static int clps711x_clk_probe(struct device_d *dev)
 {
 	unsigned int f_cpu, f_bus, f_uart, f_timer_ref, pll;
 	u32 tmp;
@@ -50,7 +46,7 @@ static __init int clps711x_clk_init(void)
 			f_bus = 36864000 / 2;
 	}
 
-	f_uart = f_bus / 10;
+	f_uart = DIV_ROUND_CLOSEST(f_bus, 10);
 
 	if (tmp & SYSFLG2_CKMODE) {
 		tmp = readw(SYSCON2);
@@ -72,23 +68,25 @@ static __init int clps711x_clk_init(void)
 	clks[CLPS711X_CLK_UART] = clk_fixed("uart", f_uart);
 	clks[CLPS711X_CLK_TIMERREF] = clk_fixed("timer_ref", f_timer_ref);
 	clks[CLPS711X_CLK_TIMER1] = clk_divider_table("timer1", "timer_ref", 0,
-		IOMEM(SYSCON1), 5, 1, tdiv_tbl, ARRAY_SIZE(tdiv_tbl));
+		IOMEM(SYSCON1), 5, 1, tdiv_tbl, 0);
 	clks[CLPS711X_CLK_TIMER2] = clk_divider_table("timer2", "timer_ref", 0,
-		IOMEM(SYSCON1), 7, 1, tdiv_tbl, ARRAY_SIZE(tdiv_tbl));
+		IOMEM(SYSCON1), 7, 1, tdiv_tbl, 0);
 
-	clkdev_add_physbase(clks[CLPS711X_CLK_UART], UARTDR1, NULL);
-	clkdev_add_physbase(clks[CLPS711X_CLK_UART], UARTDR2, NULL);
-	clkdev_add_physbase(clks[CLPS711X_CLK_TIMER2], TC2D, NULL);
+	clk_data.clks = clks;
+	clk_data.clk_num = CLPS711X_CLK_MAX;
+	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get, &clk_data);
 
 	return 0;
 }
-postcore_initcall(clps711x_clk_init);
 
-static __init int clps711x_core_init(void)
-{
-	add_generic_device("clps711x-cs", DEVICE_ID_SINGLE, NULL,
-			   TC2D, SZ_2, IORESOURCE_MEM, NULL);
+static const struct of_device_id __maybe_unused clps711x_clk_dt_ids[] = {
+	{ .compatible = "cirrus,ep7209-clk", },
+	{ }
+};
 
-	return 0;
-}
-coredevice_initcall(clps711x_core_init);
+static struct driver_d clps711x_clk_driver = {
+	.probe = clps711x_clk_probe,
+	.name = "clps711x-clk",
+	.of_compatible = DRV_OF_COMPAT(clps711x_clk_dt_ids),
+};
+postcore_platform_driver(clps711x_clk_driver);
diff --git a/arch/arm/mach-clps711x/common.c b/arch/arm/mach-clps711x/common.c
new file mode 100644
index 0000000000..c0b817872d
--- /dev/null
+++ b/arch/arm/mach-clps711x/common.c
@@ -0,0 +1,149 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// SPDX-FileCopyrightText: Alexander Shiyan <shc_work@mail.ru>
+
+#include <common.h>
+#include <driver.h>
+#include <restart.h>
+#include <asm/io.h>
+#include <asm/mmu.h>
+#include <mach/clps711x.h>
+
+#define CLPS711X_MAP_ADDR	0x90000000
+
+static u32 remap_size = 0;
+
+static void __noreturn clps711x_restart(struct restart_handler *rst)
+{
+	shutdown_barebox();
+
+	asm("mov pc, #0");
+
+	hang();
+}
+
+static __init int is_clps711x_compatible(void)
+{
+	return of_machine_is_compatible("cirrus,ep7209");
+}
+
+static __init int clps711x_init(void)
+{
+	char *serial;
+
+	if (!is_clps711x_compatible())
+		return 0;
+
+	restart_handler_register_fn("vector", clps711x_restart);
+
+	serial = basprintf("%08x%08x", 0, readl(UNIQID));
+
+	barebox_set_serial_number(serial);
+
+	free(serial);
+
+	return 0;
+}
+postcore_initcall(clps711x_init);
+
+static int __init clps711x_bus_map(void)
+{
+	if (is_clps711x_compatible() && remap_size)
+		map_io_sections(0, (void *)CLPS711X_MAP_ADDR, remap_size);
+
+	return 0;
+}
+postmmu_initcall(clps711x_bus_map);
+
+/* Scan for devices that start at zero address and maps them
+ * to a different unused address.
+ * To start the kernel, a fixup is used that rewrites the address
+ * of the patched device to its original state.
+ */
+
+static void clps711x_bus_patch(struct device_node *node,
+			       u32 compare, u32 change)
+{
+	const __be32 *ranges;
+	int rsize;
+
+	ranges = of_get_property(node, "ranges", &rsize);
+
+	if (ranges) {
+		int banks = rsize / (sizeof(u32) * 4);
+		__be32 *fixed, *fixedptr;
+
+		fixed = xmalloc(rsize);
+		fixedptr = fixed;
+
+		while (banks--) {
+			u32 bank, cell, addr, size;
+
+			bank = be32_to_cpu(*ranges++);
+			cell = be32_to_cpu(*ranges++);
+			addr = be32_to_cpu(*ranges++);
+			size = be32_to_cpu(*ranges++);
+
+			if (addr == compare) {
+				addr = change;
+				remap_size = size;
+			}
+
+			*fixedptr++ = cpu_to_be32(bank);
+			*fixedptr++ = cpu_to_be32(cell);
+			*fixedptr++ = cpu_to_be32(addr);
+			*fixedptr++ = cpu_to_be32(size);
+		}
+
+		of_set_property(node, "ranges", fixed, rsize, 0);
+
+		free(fixed);
+	}
+}
+
+static int clps711x_bus_fixup(struct device_node *root, void *context)
+{
+	struct device_node *node = context;
+
+	if (remap_size)
+		clps711x_bus_patch(node, CLPS711X_MAP_ADDR, 0);
+
+	return 0;
+}
+
+static int clps711x_bus_probe(struct device_d *dev)
+{
+	u32 mcfg;
+
+	/* Setup bus timings */
+	if (!of_property_read_u32(dev->device_node,
+				  "barebox,ep7209-memcfg1", &mcfg))
+		writel(mcfg, MEMCFG1);
+	if (!of_property_read_u32(dev->device_node,
+				  "barebox,ep7209-memcfg2", &mcfg))
+		writel(mcfg, MEMCFG2);
+
+	clps711x_bus_patch(dev->device_node, 0, CLPS711X_MAP_ADDR);
+
+	of_platform_populate(dev->device_node, NULL, dev);
+
+	of_register_fixup(clps711x_bus_fixup, dev->device_node);
+
+	return 0;
+}
+
+static const struct of_device_id __maybe_unused clps711x_bus_dt_ids[] = {
+	{ .compatible = "cirrus,ep7209-bus", },
+	{ }
+};
+
+static struct driver_d clps711x_bus_driver = {
+	.name = "clps711x-bus",
+	.probe = clps711x_bus_probe,
+	.of_compatible = DRV_OF_COMPAT(clps711x_bus_dt_ids),
+};
+
+static int __init clps711x_bus_init(void)
+{
+	return platform_driver_register(&clps711x_bus_driver);
+}
+core_initcall(clps711x_bus_init);
diff --git a/arch/arm/mach-clps711x/include/mach/clps711x.h b/arch/arm/mach-clps711x/include/mach/clps711x.h
index 957b2b8477..9aef7f3fd3 100644
--- a/arch/arm/mach-clps711x/include/mach/clps711x.h
+++ b/arch/arm/mach-clps711x/include/mach/clps711x.h
@@ -1,13 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
- *  Hardware definitions for Cirrus Logic CLPS711X
- *
- *  Copyright (C) 2000 Deep Blue Solutions Ltd.
- *  Copyright (C) 2012 Alexander Shiyan <shc_work@mail.ru>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
+ * Copyright (C) 2000 Deep Blue Solutions Ltd.
+ * Copyright (C) 2012-2022 Alexander Shiyan <shc_work@mail.ru>
  */
 
 #ifndef __MACH_CLPS711X_H
@@ -159,6 +153,10 @@
 #define SYSCON2_CLKENSL		(1 << 13)
 #define SYSCON2_BUZFREQ		(1 << 14)
 
+#define SYSCON_UARTEN		(1 << 8)
+#define SYSFLG_UBUSY		(1 << 11)
+#define SYSFLG_UTXFF		(1 << 23)
+
 #define SYNCIO_FRMLEN(x)	(((x) & 0x1f) << 8)
 #define SYNCIO_SMCKEN		(1 << 13)
 #define SYNCIO_TXFRMEN		(1 << 14)
@@ -247,6 +245,16 @@
 #define MEMCFG_WAITSTATE_2_0	(14 << 2)
 #define MEMCFG_WAITSTATE_1_0	(15 << 2)
 
-void clps711x_barebox_entry(u32, void *);
+#define UBRLCR_BREAK		(1 << 12)
+#define UBRLCR_PRTEN		(1 << 13)
+#define UBRLCR_EVENPRT		(1 << 14)
+#define UBRLCR_XSTOP		(1 << 15)
+#define UBRLCR_FIFOEN		(1 << 16)
+#define UBRLCR_WRDLEN5		(0 << 17)
+#define UBRLCR_WRDLEN6		(1 << 17)
+#define UBRLCR_WRDLEN7		(2 << 17)
+#define UBRLCR_WRDLEN8		(3 << 17)
+
+void clps711x_start(void *);
 
 #endif
diff --git a/arch/arm/mach-clps711x/include/mach/debug_ll.h b/arch/arm/mach-clps711x/include/mach/debug_ll.h
new file mode 100644
index 0000000000..342bb7628a
--- /dev/null
+++ b/arch/arm/mach-clps711x/include/mach/debug_ll.h
@@ -0,0 +1,21 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// SPDX-FileCopyrightText: Alexander Shiyan <shc_work@mail.ru>
+
+#ifndef __MACH_DEBUG_LL_H__
+#define __MACH_DEBUG_LL_H__
+
+#include <asm/io.h>
+#include <mach/clps711x.h>
+
+static inline void PUTC_LL(char c)
+{
+	do {
+	} while (readl(SYSFLG1) & SYSFLG_UTXFF);
+
+	writew(c, UARTDR1);
+
+	do {
+	} while (readl(SYSFLG1) & SYSFLG_UBUSY);
+}
+
+#endif
diff --git a/arch/arm/mach-clps711x/include/mach/devices.h b/arch/arm/mach-clps711x/include/mach/devices.h
deleted file mode 100644
index 77c43be25c..0000000000
--- a/arch/arm/mach-clps711x/include/mach/devices.h
+++ /dev/null
@@ -1,9 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-#ifndef __MACH_DEVICES_H
-#define __MACH_DEVICES_H
-
-void clps711x_setup_memcfg(int bank, u32 val);
-void clps711x_add_uart(unsigned int id);
-
-#endif
diff --git a/arch/arm/mach-clps711x/lowlevel.c b/arch/arm/mach-clps711x/lowlevel.c
index 35b8b35e87..608f0778d7 100644
--- a/arch/arm/mach-clps711x/lowlevel.c
+++ b/arch/arm/mach-clps711x/lowlevel.c
@@ -1,25 +1,31 @@
-/*
- * Copyright (C) 2012 Alexander Shiyan <shc_work@mail.ru>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- */
+// SPDX-License-Identifier: GPL-2.0-or-later
+// SPDX-FileCopyrightText: Alexander Shiyan <shc_work@mail.ru>
 
+#include <asm/io.h>
+#include <asm/barebox-arm.h>
 #include <common.h>
-#include <init.h>
+#include <debug_ll.h>
 #include <linux/sizes.h>
+#include <mach/clps711x.h>
 
-#include <asm/io.h>
-#include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
+#define DEBUG_LL_BAUDRATE	(57600)
 
-#include <mach/clps711x.h>
+static inline void setup_uart(const u32 bus_speed)
+{
+	u32 baud_base = DIV_ROUND_CLOSEST(bus_speed, 10);
+	u32 baud_divisor =
+		DIV_ROUND_CLOSEST(baud_base, DEBUG_LL_BAUDRATE * 16) - 1;
+
+	writel(baud_divisor | UBRLCR_FIFOEN | UBRLCR_WRDLEN8, UBRLCR1);
+	writel(0, STFCLR);
+	writel(SYSCON_UARTEN, SYSCON1);
 
-void __naked __bare_init clps711x_barebox_entry(u32 pllmult, void *data)
+	putc_ll('>');
+}
+
+void clps711x_start(void *fdt)
 {
-	u32 cpu, bus;
+	u32 bus, pll;
 
 	/* Check if we running from external 13 MHz clock */
 	if (!(readl(SYSFLG2) & SYSFLG2_CKMODE)) {
@@ -27,24 +33,17 @@ void __naked __bare_init clps711x_barebox_entry(u32 pllmult, void *data)
 		writel(SYSCON3_CLKCTL0 | SYSCON3_CLKCTL1, SYSCON3);
 		asm("nop");
 
-		/* Check valid multiplier, default to 74 MHz */
-		if ((pllmult < 20) || (pllmult > 50))
-			pllmult = 40;
+		if (IS_ENABLED(CONFIG_CLPS711X_RAISE_CPUFREQ)) {
+			/* Setup PLL to 92160000 Hz */
+			writel(50 << 24, PLLW);
+			asm("nop");
+		}
 
-		/* Setup PLL */
-		writel(pllmult << 24, PLLW);
-		asm("nop");
-
-		/* Check for old CPUs without PLL */
-		if ((readl(PLLR) >> 24) != pllmult)
-			cpu = 73728000;
-		else
-			cpu = pllmult * 3686400;
-
-		if (cpu >= 36864000)
-			bus = cpu / 2;
+		pll = readl(PLLR) >> 24;
+		if (pll)
+			bus = (pll * 3686400) / 4;
 		else
-			bus = 36864000 / 2;
+			bus = 73728000 / 4;
 	} else {
 		bus = 13000000;
 		/* Setup bus wait state scaling factor to 1  */
@@ -52,6 +51,13 @@ void __naked __bare_init clps711x_barebox_entry(u32 pllmult, void *data)
 		asm("nop");
 	}
 
+
+	/* Disable UART, IrDa, LCD */
+	writel(0, SYSCON1);
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		setup_uart(bus);
+
 	/* CLKEN select, SDRAM width=32 */
 	writel(SYSCON2_CLKENSL, SYSCON2);
 
@@ -62,12 +68,10 @@ void __naked __bare_init clps711x_barebox_entry(u32 pllmult, void *data)
 	/* Setup Refresh Rate (64ms 8K Blocks) */
 	writel((64 * bus) / (8192 * 1000), SDRFPR);
 
-	/* Disable UART, IrDa, LCD */
-	writel(0, SYSCON1);
 	/* Disable PWM */
 	writew(0, PMPCON);
 	/* Disable LED flasher */
 	writew(0, LEDFLSH);
 
-	barebox_arm_entry(SDRAM0_BASE, SZ_8M, data);
+	barebox_arm_entry(SDRAM0_BASE, SZ_8M, fdt);
 }
diff --git a/arch/arm/mach-clps711x/reset.c b/arch/arm/mach-clps711x/reset.c
deleted file mode 100644
index 90ddb8f5d2..0000000000
--- a/arch/arm/mach-clps711x/reset.c
+++ /dev/null
@@ -1,29 +0,0 @@
-/*
- * Copyright (C) 2012 Alexander Shiyan <shc_work@mail.ru>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- */
-
-#include <common.h>
-#include <init.h>
-#include <restart.h>
-
-static void __noreturn clps711x_restart_soc(struct restart_handler *rst)
-{
-	shutdown_barebox();
-
-	asm("mov pc, #0");
-
-	hang();
-}
-
-static int restart_register_feature(void)
-{
-	restart_handler_register_fn("vector", clps711x_restart_soc);
-
-	return 0;
-}
-coredevice_initcall(restart_register_feature);
diff --git a/drivers/clocksource/clps711x.c b/drivers/clocksource/clps711x.c
index 1fe7f6c891..d6ab695afa 100644
--- a/drivers/clocksource/clps711x.c
+++ b/drivers/clocksource/clps711x.c
@@ -27,6 +27,11 @@ static int clps711x_cs_probe(struct device_d *dev)
 	struct resource *iores;
 	u32 rate;
 	struct clk *timer_clk;
+	int id;
+
+	id = of_alias_get_id(dev->device_node, "timer");
+	if (id != 1)
+		return 0;
 
 	timer_clk = clk_get(dev, NULL);
 	if (IS_ERR(timer_clk))
@@ -46,7 +51,7 @@ static int clps711x_cs_probe(struct device_d *dev)
 	return init_clock(&clps711x_cs);
 }
 
-static __maybe_unused struct of_device_id clps711x_timer_dt_ids[] = {
+static const struct of_device_id __maybe_unused clps711x_timer_dt_ids[] = {
 	{ .compatible = "cirrus,ep7209-timer", },
 	{ }
 };
diff --git a/drivers/gpio/gpio-clps711x.c b/drivers/gpio/gpio-clps711x.c
index a1965b33e4..cb4bd4025c 100644
--- a/drivers/gpio/gpio-clps711x.c
+++ b/drivers/gpio/gpio-clps711x.c
@@ -10,13 +10,10 @@
 static int clps711x_gpio_probe(struct device_d *dev)
 {
 	struct resource *iores;
-	int err, id = dev->id;
+	int err, id = of_alias_get_id(dev->device_node, "gpio");
 	void __iomem *dat, *dir = NULL, *dir_inv = NULL;
 	struct bgpio_chip *bgc;
 
-	if (dev->device_node)
-		id = of_alias_get_id(dev->device_node, "gpio");
-
 	if (id < 0 || id > 4)
 		return -ENODEV;
 
@@ -62,7 +59,7 @@ out_err:
 	return err;
 }
 
-static struct of_device_id __maybe_unused clps711x_gpio_dt_ids[] = {
+static const struct of_device_id __maybe_unused clps711x_gpio_dt_ids[] = {
 	{ .compatible = "cirrus,ep7209-gpio", },
 	{ /* sentinel */ }
 };
diff --git a/drivers/serial/serial_clps711x.c b/drivers/serial/serial_clps711x.c
index 7aac0970bf..cb7043d8e0 100644
--- a/drivers/serial/serial_clps711x.c
+++ b/drivers/serial/serial_clps711x.c
@@ -35,7 +35,7 @@
 
 struct clps711x_uart {
 	void __iomem		*base;
-	void __iomem		*syscon;
+	struct regmap		*regmap;
 	struct clk		*uart_clk;
 	struct console_device	cdev;
 };
@@ -61,8 +61,7 @@ static void clps711x_init_port(struct console_device *cdev)
 	u32 tmp;
 
 	/* Disable the UART */
-	tmp = readl(s->syscon + SYSCON);
-	writel(tmp & ~SYSCON_UARTEN, s->syscon + SYSCON);
+	regmap_update_bits(s->regmap, SYSCON, SYSCON_UARTEN, 0);
 
 	/* Setup Line Control Register */
 	tmp = readl(s->base + UBRLCR) & UBRLCR_BAUD_MASK;
@@ -70,17 +69,19 @@ static void clps711x_init_port(struct console_device *cdev)
 	writel(tmp, s->base + UBRLCR);
 
 	/* Enable the UART */
-	tmp = readl(s->syscon + SYSCON);
-	writel(tmp | SYSCON_UARTEN, s->syscon + SYSCON);
+	regmap_update_bits(s->regmap, SYSCON, SYSCON_UARTEN, SYSCON_UARTEN);
 }
 
 static void clps711x_putc(struct console_device *cdev, char c)
 {
 	struct clps711x_uart *s = cdev->dev->priv;
+	u32 tmp;
 
 	/* Wait until there is space in the FIFO */
 	do {
-	} while (readl(s->syscon + SYSFLG) & SYSFLG_UTXFF);
+		regmap_read(s->regmap, SYSFLG, &tmp);
+		
+	} while (tmp & SYSFLG_UTXFF);
 
 	/* Send the character */
 	writew(c, s->base + UARTDR);
@@ -90,10 +91,12 @@ static int clps711x_getc(struct console_device *cdev)
 {
 	struct clps711x_uart *s = cdev->dev->priv;
 	u16 data;
+	u32 tmp;
 
 	/* Wait until there is data in the FIFO */
 	do {
-	} while (readl(s->syscon + SYSFLG) & SYSFLG_URXFE);
+		regmap_read(s->regmap, SYSFLG, &tmp);
+	} while (tmp & SYSFLG_URXFE);
 
 	data = readw(s->base + UARTDR);
 
@@ -107,32 +110,32 @@ static int clps711x_getc(struct console_device *cdev)
 static int clps711x_tstc(struct console_device *cdev)
 {
 	struct clps711x_uart *s = cdev->dev->priv;
+	u32 tmp;
 
-	return !(readl(s->syscon + SYSFLG) & SYSFLG_URXFE);
+	regmap_read(s->regmap, SYSFLG, &tmp);
+
+	return !(tmp & SYSFLG_URXFE);
 }
 
 static void clps711x_flush(struct console_device *cdev)
 {
 	struct clps711x_uart *s = cdev->dev->priv;
+	u32 tmp;
 
 	do {
-	} while (readl(s->syscon + SYSFLG) & SYSFLG_UBUSY);
+		regmap_read(s->regmap, SYSFLG, &tmp);
+	} while (tmp & SYSFLG_UBUSY);
 }
 
 static int clps711x_probe(struct device_d *dev)
 {
+	struct device_node *syscon;
 	struct clps711x_uart *s;
-	int err, id = dev->id;
-	char syscon_dev[8];
 	const char *devname;
-
-	if (dev->device_node)
-		id = of_alias_get_id(dev->device_node, "serial");
-
-	if (id != 0 && id != 1)
-		return -EINVAL;
+	int err;
 
 	s = xzalloc(sizeof(struct clps711x_uart));
+
 	s->uart_clk = clk_get(dev, NULL);
 	if (IS_ERR(s->uart_clk)) {
 		err = PTR_ERR(s->uart_clk);
@@ -140,19 +143,15 @@ static int clps711x_probe(struct device_d *dev)
 	}
 
 	s->base = dev_get_mem_region(dev, 0);
-	if (IS_ERR(s->base))
-		return PTR_ERR(s->base);
-
-	if (!dev->device_node) {
-		sprintf(syscon_dev, "syscon%i", id + 1);
-		s->syscon = syscon_base_lookup_by_pdevname(syscon_dev);
-	} else {
-		s->syscon = syscon_base_lookup_by_phandle(dev->device_node,
-							  "syscon");
+	if (IS_ERR(s->base)) {
+		err = PTR_ERR(s->base);
+		goto out_err;
 	}
 
-	if (IS_ERR(s->syscon)) {
-		err = PTR_ERR(s->syscon);
+	syscon = of_parse_phandle(dev->device_node, "syscon", 0);
+	s->regmap = syscon_node_to_regmap(syscon);
+	if (IS_ERR(s->regmap)) {
+		err = PTR_ERR(s->regmap);
 		goto out_err;
 	}
 
@@ -182,7 +181,7 @@ out_err:
 	return err;
 }
 
-static struct of_device_id __maybe_unused clps711x_uart_dt_ids[] = {
+static const struct of_device_id __maybe_unused clps711x_uart_dt_ids[] = {
 	{ .compatible = "cirrus,ep7209-uart", },
 	{ /* sentinel */ }
 };
diff --git a/images/Makefile b/images/Makefile
index 5e2b9ecaaa..a148cf4176 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -152,6 +152,7 @@ include $(srctree)/images/Makefile.ar231x
 include $(srctree)/images/Makefile.ath79
 include $(srctree)/images/Makefile.bcm283x
 include $(srctree)/images/Makefile.bcm47xx
+include $(srctree)/images/Makefile.clps711x
 include $(srctree)/images/Makefile.imx
 include $(srctree)/images/Makefile.loongson
 include $(srctree)/images/Makefile.malta
diff --git a/images/Makefile.clps711x b/images/Makefile.clps711x
new file mode 100644
index 0000000000..d76911d627
--- /dev/null
+++ b/images/Makefile.clps711x
@@ -0,0 +1,8 @@
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# barebox image generation Makefile for CLPS711X images
+#
+
+pblb-$(CONFIG_MACH_CLEP7212) += start_ep7212_clep7212
+FILE_barebox-ep7212-clep7212.img = start_ep7212_clep7212.pblb
+image-$(CONFIG_MACH_CLEP7212) += barebox-ep7212-clep7212.img
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

