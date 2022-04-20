Delivery-date: Wed, 20 Apr 2022 11:55:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nh73g-0090lf-Ds
	for lore@lore.pengutronix.de; Wed, 20 Apr 2022 11:55:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nh73c-000206-W3
	for lore@pengutronix.de; Wed, 20 Apr 2022 11:55:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GqNI8psHgImX5YMwJwpwxIFiWWan4wIDcZfoCMagP9Q=; b=Iy0rOJSrONL4ba
	vYZ+V84ld/ZLS8z3zhHxUf9wDDuIYycJv7n0T99PvMzeVIwpsQLQY3W55s9kcUhPtSYU+D32VRQKz
	6dP8GmfZSH2++Jiq3XrYo+qdjiiqszgzuFFS+WIT4Fgg/K+NVg+6YpF2rb5WwDDzI3S+lP3aDlCDp
	pr+pF34L5X/DOOkBiirXwXA6IKfPRYsipM12fKd2Rc1mNoA+jQCbu7Fm0XQnM8dg969S2bbG5g+a2
	WyKZ84IGTE0yCIr/UajtOtQkfGpTgzlQP/kuHX4ZjPgXGxxtnT18moL4czVJeIh8oHzPL4dGwOWgy
	LLpyCyuyWS+JF0IEkZSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nh71p-008QAw-JI; Wed, 20 Apr 2022 09:53:41 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nh71j-008QAG-Ht
 for barebox@lists.infradead.org; Wed, 20 Apr 2022 09:53:37 +0000
Received: by mail-lf1-x134.google.com with SMTP id bq30so1921783lfb.3
 for <barebox@lists.infradead.org>; Wed, 20 Apr 2022 02:53:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DXmjVW4nV/FkKmQSOSQKM/jR2CI/Ems0b2n3pYG0/qU=;
 b=UJug6Oce7T1uVV+n/g5VoQdQocAzxzoep84iG5I2S5JgUAyjKtyPgFrt0ptON1RqxY
 oICERDL62jbmF1aLf6PwwSnR+JKpdlIuPhocVl+0Brgzmh04jdyrrMZ0f+3YXGxsmDRW
 N8lSdlGg8hyfioBLlxEQl2wpUYGWYB3+NWyMyV78odPcQHUpeZLHqiw9zPIV2xbGUcuL
 9HJVCAsrrPshF9DWa0pqrTDTR0ug1+BTVKRpX02sDZSbxRbLmS1TFyB5Jx7CK9ANnroP
 QugbFS134lWUdtkiuJGp0VXcTJntVJjKmOMTfoyEhxFfXfXnar0tGsTu4ng3Yju4ENas
 8RAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DXmjVW4nV/FkKmQSOSQKM/jR2CI/Ems0b2n3pYG0/qU=;
 b=Wqn5XRkXxgrkTbOA6ng05Dc9WHRmeVsx56soB1vaBzL+5c0hVqLkiQK++t8IYMisW/
 m3+WhFazWPztFlyHYKLnF1/MQzPjyVoYsts8QXr7SUdfQLv7T8tQufvoQaS9KT+/Xrm/
 GzIdjnCL8wjPuN5AnfEOD0lpFKTDhRrWxOKXo7m/dnNIp9AvwDiShmTQ2Q29n1PFKJRC
 T9AnO6RnDF15sYz3kyzjFwpGIoiUXm0XxA3QtI036iPo0KrvjFKJsPnjZRVkb3YtBKuH
 Uu066vE2osmTlnvl3+oqwcE5D9a3oeb52LhKs0zV2fhLdPkjt0eZr3L3hglZyMnqUIpe
 +HJQ==
X-Gm-Message-State: AOAM532g7xSdpK6le0zr5B9l4xpU21q//MKG7tp/JA+mjmA6EQuTiU1d
 eKdyBqcHHz/OcU0F/tFqzCgVyvR0YaGgxGtJ
X-Google-Smtp-Source: ABdhPJxLbKZdU7YMpnb1huyOmmsMeTn4s5Ayx3jW3zeUp3f5VKmIQR8xdWntBQH5ZCJRtcy2TIayYw==
X-Received: by 2002:a2e:300d:0:b0:24d:b7ad:ccb1 with SMTP id
 w13-20020a2e300d000000b0024db7adccb1mr9975094ljw.43.1650448410968; 
 Wed, 20 Apr 2022 02:53:30 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
 by smtp.gmail.com with ESMTPSA id
 b19-20020a196713000000b004718d3eeebfsm952732lfc.275.2022.04.20.02.53.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Apr 2022 02:53:30 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 20 Apr 2022 12:53:22 +0300
Message-Id: <20220420095322.89880-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220420_025335_659805_6BFFDB30 
X-CRM114-Status: GOOD (  19.71  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] arm: boards: Add support for MYIR MYD-AM335X Development Board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The MYD-AM335X Development Board designed by MYIR is a high-performance
ARM Evaluation Module (EVM) using the MYC-AM335X CPU module as the core
controller board. It is based on up to 1GHz Texas Instruments (TI)
Sitara AM335x family of ARM Cortex-A8 Microprocessors (MPUs) that deliver
high DMIPs at a low cost while also delivering optional 3D graphics
acceleration and key peripherals.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/myirtech-x335x/Makefile       |   3 +
 arch/arm/boards/myirtech-x335x/board.c        |  44 +++++++
 .../defaultenv-myirtech-x335x/boot/nand       |   4 +
 .../defaultenv-myirtech-x335x/nv/boot.default |   1 +
 .../nv/linux.bootargs.console                 |   1 +
 arch/arm/boards/myirtech-x335x/lowlevel.c     | 113 ++++++++++++++++++
 arch/arm/configs/am335x_mlo_defconfig         |   1 +
 .../arm/configs/myirtech_am335x_myd_defconfig | 109 +++++++++++++++++
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/am335x-myirtech-myd.dts          |  23 ++++
 arch/arm/mach-omap/Kconfig                    |   6 +
 .../arm/mach-omap/include/mach/am33xx-clock.h |   1 +
 .../mach-omap/include/mach/am33xx-silicon.h   |   2 +
 images/Makefile.am33xx                        |   8 ++
 15 files changed, 318 insertions(+)
 create mode 100644 arch/arm/boards/myirtech-x335x/Makefile
 create mode 100644 arch/arm/boards/myirtech-x335x/board.c
 create mode 100644 arch/arm/boards/myirtech-x335x/defaultenv-myirtech-x335x/boot/nand
 create mode 100644 arch/arm/boards/myirtech-x335x/defaultenv-myirtech-x335x/nv/boot.default
 create mode 100644 arch/arm/boards/myirtech-x335x/defaultenv-myirtech-x335x/nv/linux.bootargs.console
 create mode 100644 arch/arm/boards/myirtech-x335x/lowlevel.c
 create mode 100644 arch/arm/configs/myirtech_am335x_myd_defconfig
 create mode 100644 arch/arm/dts/am335x-myirtech-myd.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 75e15cbda4..d303999614 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -77,6 +77,7 @@ obj-$(CONFIG_MACH_MB7707)			+= module-mb7707/
 obj-$(CONFIG_MACH_MIOA701)			+= mioa701/
 obj-$(CONFIG_MACH_MX23EVK)			+= freescale-mx23-evk/
 obj-$(CONFIG_MACH_MX28EVK)			+= freescale-mx28-evk/
+obj-$(CONFIG_MACH_MYIRTECH_X335X)		+= myirtech-x335x/
 obj-$(CONFIG_MACH_NESO)				+= guf-neso/
 obj-$(CONFIG_MACH_NETGEAR_RN104)		+= netgear-rn104/
 obj-$(CONFIG_MACH_NETGEAR_RN2120)		+= netgear-rn2120/
diff --git a/arch/arm/boards/myirtech-x335x/Makefile b/arch/arm/boards/myirtech-x335x/Makefile
new file mode 100644
index 0000000000..05d9fc7bc3
--- /dev/null
+++ b/arch/arm/boards/myirtech-x335x/Makefile
@@ -0,0 +1,3 @@
+lwl-y					+= lowlevel.o
+obj-y					+= board.o
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT)	+= defaultenv-myirtech-x335x
diff --git a/arch/arm/boards/myirtech-x335x/board.c b/arch/arm/boards/myirtech-x335x/board.c
new file mode 100644
index 0000000000..b5af651254
--- /dev/null
+++ b/arch/arm/boards/myirtech-x335x/board.c
@@ -0,0 +1,44 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/* SPDX-FileCopyrightText: Alexander Shiyan <shc_work@mail.ru> */
+
+#include <bootsource.h>
+#include <common.h>
+#include <driver.h>
+#include <envfs.h>
+#include <init.h>
+#include <linux/sizes.h>
+#include <mach/am33xx-generic.h>
+
+static struct omap_barebox_part myir_barebox_part = {
+	.nand_offset = SZ_128K,
+	.nand_size = SZ_512K,
+};
+
+static __init int myir_devices_init(void)
+{
+	if (!of_machine_is_compatible("myir,myc-am335x"))
+		return 0;
+
+	am33xx_register_ethaddr(0, 0);
+	am33xx_register_ethaddr(1, 1);
+
+	switch (bootsource_get()) {
+	case BOOTSOURCE_MMC:
+		omap_set_bootmmc_devname("mmc0");
+		break;
+	case BOOTSOURCE_NAND:
+		omap_set_barebox_part(&myir_barebox_part);
+		break;
+	default:
+		break;
+	}
+
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT))
+		defaultenv_append_directory(defaultenv_myirtech_x335x);
+
+	if (IS_ENABLED(CONFIG_SHELL_NONE))
+		return am33xx_of_register_bootdevice();
+
+	return 0;
+}
+coredevice_initcall(myir_devices_init);
diff --git a/arch/arm/boards/myirtech-x335x/defaultenv-myirtech-x335x/boot/nand b/arch/arm/boards/myirtech-x335x/defaultenv-myirtech-x335x/boot/nand
new file mode 100644
index 0000000000..aca093eebb
--- /dev/null
+++ b/arch/arm/boards/myirtech-x335x/defaultenv-myirtech-x335x/boot/nand
@@ -0,0 +1,4 @@
+#!/bin/sh
+
+global.bootm.image="/dev/nand0.system.ubi.kernel"
+global.linux.bootargs.dyn.root="ubi.mtd=system ubi.block=0,root ro"
diff --git a/arch/arm/boards/myirtech-x335x/defaultenv-myirtech-x335x/nv/boot.default b/arch/arm/boards/myirtech-x335x/defaultenv-myirtech-x335x/nv/boot.default
new file mode 100644
index 0000000000..026a25cc7e
--- /dev/null
+++ b/arch/arm/boards/myirtech-x335x/defaultenv-myirtech-x335x/nv/boot.default
@@ -0,0 +1 @@
+nand
diff --git a/arch/arm/boards/myirtech-x335x/defaultenv-myirtech-x335x/nv/linux.bootargs.console b/arch/arm/boards/myirtech-x335x/defaultenv-myirtech-x335x/nv/linux.bootargs.console
new file mode 100644
index 0000000000..4310fdd693
--- /dev/null
+++ b/arch/arm/boards/myirtech-x335x/defaultenv-myirtech-x335x/nv/linux.bootargs.console
@@ -0,0 +1 @@
+console=ttyS0,115200n8 earlyprintk
diff --git a/arch/arm/boards/myirtech-x335x/lowlevel.c b/arch/arm/boards/myirtech-x335x/lowlevel.c
new file mode 100644
index 0000000000..a57f9167df
--- /dev/null
+++ b/arch/arm/boards/myirtech-x335x/lowlevel.c
@@ -0,0 +1,113 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/* SPDX-FileCopyrightText: Alexander Shiyan <shc_work@mail.ru> */
+
+#include <io.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <debug_ll.h>
+#include <init.h>
+#include <linux/sizes.h>
+#include <mach/am33xx-clock.h>
+#include <mach/am33xx-generic.h>
+#include <mach/am33xx-mux.h>
+#include <mach/generic.h>
+#include <mach/sdrc.h>
+#include <mach/sys_info.h>
+#include <mach/wdt.h>
+
+#define AM335X_ZCZ_1000		0x1c2f
+
+static const struct am33xx_ddr_data ddr3_data = {
+	.rd_slave_ratio0	= 0x38,
+	.wr_dqs_slave_ratio0	= 0x44,
+	.fifo_we_slave_ratio0	= 0x94,
+	.wr_slave_ratio0	= 0x7d,
+	.use_rank0_delay	= 0x01,
+	.dll_lock_diff0		= 0x00,
+};
+
+static const struct am33xx_cmd_control ddr3_cmd_ctrl = {
+	.slave_ratio0	= 0x80,
+	.dll_lock_diff0	= 0x01,
+	.invert_clkout0	= 0x00,
+	.slave_ratio1	= 0x80,
+	.dll_lock_diff1	= 0x01,
+	.invert_clkout1	= 0x00,
+	.slave_ratio2	= 0x80,
+	.dll_lock_diff2	= 0x01,
+	.invert_clkout2	= 0x00,
+};
+
+/* CPU module contains 512MB (2*256MB) DDR3 SDRAM (2*128MB compatible),
+ * so we configure EMIF for 512MB then detect real size of memory.
+ */
+static const struct am33xx_emif_regs ddr3_regs = {
+	.emif_read_latency	= 0x00100007,
+	.emif_tim1		= 0x0aaad4db,
+	.emif_tim2		= 0x266b7fda,
+	.emif_tim3		= 0x501f867f,
+	.zq_config		= 0x50074be4,
+	.sdram_config		= 0x61c05332,
+	.sdram_config2		= 0x00,
+	.sdram_ref_ctrl		= 0xc30,
+};
+
+extern char __dtb_z_am335x_myirtech_myd_start[];
+
+ENTRY_FUNCTION(start_am33xx_myirtech_sram, bootinfo, r1, r2)
+{
+	int mpupll;
+	void *fdt;
+
+	am33xx_save_bootinfo((void *)bootinfo);
+
+	relocate_to_current_adr();
+	setup_c();
+
+	fdt = __dtb_z_am335x_myirtech_myd_start;
+
+	/* WDT1 is already running when the bootloader gets control
+	 * Disable it to avoid "random" resets
+	 */
+	__raw_writel(WDT_DISABLE_CODE1, AM33XX_WDT_REG(WSPR));
+	while (__raw_readl(AM33XX_WDT_REG(WWPS)) != 0x0);
+	__raw_writel(WDT_DISABLE_CODE2, AM33XX_WDT_REG(WSPR));
+	while (__raw_readl(AM33XX_WDT_REG(WWPS)) != 0x0);
+
+	mpupll = MPUPLL_M_800;
+	if (am33xx_get_cpu_rev() == AM335X_ES2_1) {
+		u32 deviceid = readl(AM33XX_EFUSE_SMA) & 0x1fff;
+		if (deviceid == AM335X_ZCZ_1000)
+			mpupll = MPUPLL_M_1000;
+	}
+
+	am33xx_pll_init(mpupll, DDRPLL_M_400);
+
+	am335x_sdram_init(0x18b, &ddr3_cmd_ctrl, &ddr3_regs, &ddr3_data);
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
+		am33xx_uart_soft_reset((void *)AM33XX_UART0_BASE);
+		am33xx_enable_uart0_pin_mux();
+		omap_uart_lowlevel_init((void *)AM33XX_UART0_BASE);
+		putc_ll('>');
+	}
+
+	barebox_arm_entry(AM33XX_DRAM_ADDR_SPACE_START, SZ_256M, fdt);
+}
+
+ENTRY_FUNCTION(start_am33xx_myirtech_sdram, r0, r1, r2)
+{
+	void *fdt;
+	u32 sdram_size;
+
+	fdt = __dtb_z_am335x_myirtech_myd_start;
+
+	fdt += get_runtime_offset();
+
+	/* Detect 256M/512M module variant */
+	__raw_writel(SZ_512M, AM33XX_DRAM_ADDR_SPACE_START + SZ_256M);
+	__raw_writel(SZ_256M, AM33XX_DRAM_ADDR_SPACE_START + 0);
+	sdram_size = __raw_readl(AM33XX_DRAM_ADDR_SPACE_START + SZ_256M);
+
+	barebox_arm_entry(AM33XX_DRAM_ADDR_SPACE_START, sdram_size, fdt);
+}
diff --git a/arch/arm/configs/am335x_mlo_defconfig b/arch/arm/configs/am335x_mlo_defconfig
index 51d238db3e..83bb20e4b5 100644
--- a/arch/arm/configs/am335x_mlo_defconfig
+++ b/arch/arm/configs/am335x_mlo_defconfig
@@ -5,6 +5,7 @@ CONFIG_OMAP_SERIALBOOT=y
 CONFIG_OMAP_MULTI_BOARDS=y
 CONFIG_MACH_AFI_GF=y
 CONFIG_MACH_BEAGLEBONE=y
+CONFIG_MACH_MYIRTECH_X335X=y
 CONFIG_MACH_PHYTEC_SOM_AM335X=y
 CONFIG_THUMB2_BAREBOX=y
 # CONFIG_MEMINFO is not set
diff --git a/arch/arm/configs/myirtech_am335x_myd_defconfig b/arch/arm/configs/myirtech_am335x_myd_defconfig
new file mode 100644
index 0000000000..e5bfdd6cbe
--- /dev/null
+++ b/arch/arm/configs/myirtech_am335x_myd_defconfig
@@ -0,0 +1,109 @@
+CONFIG_ARCH_OMAP=y
+CONFIG_BAREBOX_UPDATE_AM33XX_NAND=y
+CONFIG_BAREBOX_UPDATE_AM33XX_EMMC=y
+CONFIG_OMAP_MULTI_BOARDS=y
+CONFIG_MACH_MYIRTECH_X335X=y
+CONFIG_THUMB2_BAREBOX=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_UNWIND=y
+CONFIG_MMU=y
+CONFIG_MALLOC_SIZE=0x0
+CONFIG_EXPERIMENTAL=y
+CONFIG_MALLOC_TLSF=y
+CONFIG_KALLSYMS=y
+CONFIG_RELOCATABLE=y
+CONFIG_PANIC_HANG=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+# CONFIG_TIMESTAMP is not set
+CONFIG_BAREBOX_UPDATE=y
+CONFIG_CONSOLE_ACTIVATE_NONE=y
+CONFIG_CONSOLE_ALLOW_COLOR=y
+CONFIG_PBL_CONSOLE=y
+CONFIG_PARTITION_DISK_EFI=y
+# CONFIG_ENV_HANDLING is not set
+CONFIG_DEFAULT_ENVIRONMENT=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_RESET_SOURCE=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_ARM_MMUINFO=y
+CONFIG_CMD_REGULATOR=y
+# CONFIG_CMD_BOOTM is not set
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_RESET=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_UBIFORMAT=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_SPI=y
+CONFIG_CMD_WD=y
+CONFIG_CMD_WD_DEFAULT_TIMOUT=10
+CONFIG_CMD_2048=y
+CONFIG_NET=y
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
+CONFIG_DRIVER_NET_CPSW=y
+CONFIG_AT803X_PHY=y
+CONFIG_SPI_MEM=y
+CONFIG_DRIVER_SPI_OMAP3=y
+CONFIG_I2C=y
+CONFIG_I2C_OMAP=y
+CONFIG_MTD=y
+# CONFIG_MTD_OOB_DEVICE is not set
+CONFIG_NAND=y
+CONFIG_MTD_NAND_ECC_SOFT=y
+CONFIG_MTD_NAND_ECC_SW_BCH=y
+CONFIG_NAND_ECC_HW_SYNDROME=y
+CONFIG_NAND_ALLOW_ERASE_BAD=y
+CONFIG_NAND_OMAP_GPMC=y
+CONFIG_MTD_NAND_OMAP_ELM=y
+CONFIG_MTD_SPI_NOR=y
+CONFIG_MTD_UBI=y
+CONFIG_USB_HOST=y
+CONFIG_USB_STORAGE=y
+CONFIG_USB_HUB_USB251XB=y
+CONFIG_USB_MUSB=y
+CONFIG_USB_MUSB_AM335X=y
+CONFIG_USB_MUSB_HOST=y
+CONFIG_VIDEO=y
+CONFIG_MCI=y
+CONFIG_MCI_OMAP_HSMMC=y
+CONFIG_SRAM=y
+CONFIG_EEPROM_AT24=y
+CONFIG_WATCHDOG=y
+CONFIG_WATCHDOG_OMAP=y
+CONFIG_PWM=y
+CONFIG_GPIO_74164=y
+CONFIG_GPIO_GENERIC_PLATFORM=y
+CONFIG_GPIO_PCA953X=y
+CONFIG_PINCTRL_SINGLE=y
+CONFIG_BUS_OMAP_GPMC=y
+CONFIG_REGULATOR=y
+CONFIG_REGULATOR_FIXED=y
+CONFIG_RESET_CONTROLLER=y
+CONFIG_RTC_CLASS=y
+CONFIG_GENERIC_PHY=y
+CONFIG_FS_EXT4=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
+CONFIG_ZLIB=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 925ac12aa5..619354fcb6 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -40,6 +40,7 @@ lwl-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP) += armada-xp-gp-bb.dtb.o
 lwl-$(CONFIG_MACH_MARVELL_ARMADA_XP_DB) += armada-xp-db-bb.dtb.o
 lwl-$(CONFIG_MACH_MB7707) += module-mb7707.dtb.o
 lwl-$(CONFIG_MACH_MX28EVK) += imx28-evk.dtb.o
+lwl-$(CONFIG_MACH_MYIRTECH_X335X) += am335x-myirtech-myd.dtb.o
 lwl-$(CONFIG_MACH_NETGEAR_RN104) += armada-370-rn104-bb.dtb.o
 lwl-$(CONFIG_MACH_NETGEAR_RN2120) += armada-xp-rn2120-bb.dtb.o
 lwl-$(CONFIG_MACH_NITROGEN6) += imx6q-nitrogen6x.dtb.o imx6dl-nitrogen6x.dtb.o imx6qp-nitrogen6_max.dtb.o
diff --git a/arch/arm/dts/am335x-myirtech-myd.dts b/arch/arm/dts/am335x-myirtech-myd.dts
new file mode 100644
index 0000000000..0d376f5eee
--- /dev/null
+++ b/arch/arm/dts/am335x-myirtech-myd.dts
@@ -0,0 +1,23 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* SPDX-FileCopyrightText: Alexander Shiyan, <shc_work@mail.ru> */
+
+/dts-v1/;
+
+#include <arm/am335x-myirtech-myd.dts>
+
+/ {
+	chosen {
+		environment {
+			compatible = "barebox,environment";
+			device-path = &env_nand;
+		};
+	};
+
+};
+
+&nand0 {
+	env_nand: partition@a0000 {
+		label = "env";
+		reg = <0xa0000 0x40000>;
+	};
+};
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 220b635167..f0e035e31e 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -168,6 +168,12 @@ config MACH_BEAGLEBONE
 	help
 	  Say Y here if you are using Beagle Bone
 
+config MACH_MYIRTECH_X335X
+	bool "MYIR Tech Limited SOMs"
+	select ARCH_AM33XX
+	help
+	  Say Y here if you are using a TI AM335X based MYIR SOM
+
 config MACH_PHYTEC_SOM_AM335X
 	bool "Phytec AM335X SOMs"
 	select ARCH_AM33XX
diff --git a/arch/arm/mach-omap/include/mach/am33xx-clock.h b/arch/arm/mach-omap/include/mach/am33xx-clock.h
index 3c2143d600..b0293db990 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-clock.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-clock.h
@@ -25,6 +25,7 @@
 #define MPUPLL_M_600	600	/* 125 * n */
 #define MPUPLL_M_720	720	/* 125 * n */
 #define MPUPLL_M_800	800
+#define MPUPLL_M_1000	1000
 
 #define MPUPLL_M2	1
 
diff --git a/arch/arm/mach-omap/include/mach/am33xx-silicon.h b/arch/arm/mach-omap/include/mach/am33xx-silicon.h
index 0729369255..0467dac03b 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-silicon.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-silicon.h
@@ -201,6 +201,8 @@
 #define AM33XX_MAC_ID1_HI	(AM33XX_CTRL_BASE + 0x63c)
 #define AM33XX_MAC_MII_SEL	(AM33XX_CTRL_BASE + 0x650)
 
+#define AM33XX_EFUSE_SMA	(AM33XX_CTRL_BASE + 0x7fc)
+
 struct am33xx_cmd_control {
 	u32 slave_ratio0;
 	u32 dll_lock_diff0;
diff --git a/images/Makefile.am33xx b/images/Makefile.am33xx
index add676117c..a63def771e 100644
--- a/images/Makefile.am33xx
+++ b/images/Makefile.am33xx
@@ -26,6 +26,14 @@ FILE_barebox-am33xx-afi-gf-mlo.spi.img = start_am33xx_afi_gf_sram.pblb.mlospi
 am33xx-mlo-$(CONFIG_MACH_AFI_GF) += barebox-am33xx-afi-gf-mlo.img
 am33xx-mlospi-$(CONFIG_MACH_AFI_GF) += barebox-am33xx-afi-gf-mlo.spi.img
 
+pblb-$(CONFIG_MACH_MYIRTECH_X335X) += start_am33xx_myirtech_sdram
+FILE_barebox-am33xx-myirtech.img = start_am33xx_myirtech_sdram.pblb
+am33xx-barebox-$(CONFIG_MACH_MYIRTECH_X335X) += barebox-am33xx-myirtech.img
+
+pblb-$(CONFIG_MACH_MYIRTECH_X335X) += start_am33xx_myirtech_sram
+FILE_barebox-am33xx-myirtech-mlo.img = start_am33xx_myirtech_sram.pblb.mlo
+am33xx-mlo-$(CONFIG_MACH_MYIRTECH_X335X) += barebox-am33xx-myirtech-mlo.img
+
 pblb-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_nand_sdram
 FILE_barebox-am33xx-phytec-phycore.img = start_am33xx_phytec_phycore_nand_sdram.pblb
 am33xx-barebox-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore.img
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

