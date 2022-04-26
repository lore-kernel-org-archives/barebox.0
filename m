Delivery-date: Tue, 26 Apr 2022 09:06:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1njFHM-00FcM4-4J
	for lore@lore.pengutronix.de; Tue, 26 Apr 2022 09:06:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1njFHI-00018p-Hz
	for lore@pengutronix.de; Tue, 26 Apr 2022 09:06:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iqUuL+e5ZZ5xlvDce4PgWcRhkT+Bo45ZCxCn5uHIe9I=; b=btFmdwnmq54yuM
	JcUemCAxnez6JBwUIBOehMV378Jb41Kmm29VajWoPxfgXk60XkEmoAz0eLx/nAdewxcuPSLH++zhk
	wya75UTziIX9ie+7CCIywL9dmDFgAFzH2/Bk0AXGgG9v0U9ha+rfS1UDw4OLBMVIrzE85Bl1+kYNk
	bR4Hz//Esx/Lsxeiy0K9+YNowD28kySwGK9/JejF73V40wZXzMerBun3s3t9QCDeYGqWYaacFCluM
	zuqPEjO+Or1yVY+X9Qv1QRf906T3DsftMbjWplcHl1nRZNESXuv9xB8uTW5HWc0hcL1/7L6jt2BdO
	AjDXwmkAl5lHS/qMfeCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njFFo-00Crs9-HP; Tue, 26 Apr 2022 07:04:56 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njFFi-00Crr2-Ph
 for barebox@lists.infradead.org; Tue, 26 Apr 2022 07:04:52 +0000
Received: by mail-lf1-x130.google.com with SMTP id x17so30257309lfa.10
 for <barebox@lists.infradead.org>; Tue, 26 Apr 2022 00:04:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LdTzE9uCmaoaQHFYx1AzMYf3ipFzrEF0w7vukk/BOeA=;
 b=G7jwPWyi77Ki3ZDJxsFVsWO0a9GfNIMDXwJs+8PCBH9N1gCPnPzhQrGUcnqkB92Zwz
 tcwDxHxhwQA8k9c9Sm86vgwK/7CGl88ye+IEuhSfA1nxssz7ytqT5FCut/QpTdFhqObS
 eAyWFcD4MfhDOuiv23TTuPKZKafD17MH5HIAnszhR2YNZUjgm1yzX0GdRgfkgfjqxr0x
 y0G/7urqm5DJr8sxa1t5MSRrDVKAMLIaffE21ukW86WtYhGbxx4xaE7OkZAPrNyRRgIJ
 DUS/TJEnjWFO/l4dudHewMcAlx6he//hGWN6yS9iNDueVQz0C3uPzYKp8GeFplAysc0B
 hV6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LdTzE9uCmaoaQHFYx1AzMYf3ipFzrEF0w7vukk/BOeA=;
 b=dwXDOjDrlPeSiEJa+cpFdb+fPvhoCOWIEJhr2DC0KFg1GuzWlPHC2jj9GVWq6VE1ZN
 rIlaTWi0fKHryGqE7NGNltxGukAFh9oQbnwpHSty1EitGqP5neI6YobD+FW9GaD1yvkZ
 OjORw6dgOno1ruS8ieTZPlTiO+9IONg9/VRz5zevhB1LhVXW1qGWXfnJtqbM3z/ECzJB
 kG0AdIIpc82xfYEHT6ppBbn3Us3TisuteVZadSrpWk8WxAdSBrvjz4PSPCQlHXcNWtmM
 yJ/cvZhIhEE88IfkUOPhYORd8xp64fW1fKhr190n7SrXy3rnAZ+zljDOXTiMV3iYyxJH
 G6lA==
X-Gm-Message-State: AOAM5322LNsFkziKy6qrFsSiH3ol8tGPtVAOqV+LFqKxPCPthmvO18bN
 kxFCOhQTlvAIpIU8CzYSJWT+HC8ZhqaWxQ==
X-Google-Smtp-Source: ABdhPJz05ED+KJjbgd+aMvIDoi4nZ5JvAalfMz1PouoO0BXI17YEXnBps+iNtrIBDbvKH9F3cASjeA==
X-Received: by 2002:ac2:4988:0:b0:472:16fe:4314 with SMTP id
 f8-20020ac24988000000b0047216fe4314mr1558066lfl.219.1650956686992; 
 Tue, 26 Apr 2022 00:04:46 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
 by smtp.gmail.com with ESMTPSA id
 g5-20020a2e3905000000b0024db127ce67sm1406841lja.40.2022.04.26.00.04.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Apr 2022 00:04:46 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 26 Apr 2022 10:04:40 +0300
Message-Id: <20220426070440.12471-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_000450_904407_DA4B5BA8 
X-CRM114-Status: GOOD (  22.34  )
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
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3] arm: boards: Add support for MYIR MYD-AM335X Development
 Board
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
 arch/arm/boards/myirtech-x335x/lowlevel.c     | 115 ++++++++++++++++++
 arch/arm/configs/am335x_mlo_defconfig         |   1 +
 arch/arm/configs/omap_defconfig               |   3 +-
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/am335x-myirtech-myd.dts          |  47 +++++++
 arch/arm/mach-omap/Kconfig                    |   6 +
 .../arm/mach-omap/include/mach/am33xx-clock.h |   1 +
 .../mach-omap/include/mach/am33xx-silicon.h   |   2 +
 images/Makefile.am33xx                        |   8 ++
 14 files changed, 236 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/myirtech-x335x/Makefile
 create mode 100644 arch/arm/boards/myirtech-x335x/board.c
 create mode 100644 arch/arm/boards/myirtech-x335x/defaultenv-myirtech-x335x/boot/nand
 create mode 100644 arch/arm/boards/myirtech-x335x/defaultenv-myirtech-x335x/nv/boot.default
 create mode 100644 arch/arm/boards/myirtech-x335x/lowlevel.c
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
index 0000000000..c6d808284e
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
+	.nand_offset = SZ_128K * 4,
+	.nand_size = SZ_1M,
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
index 0000000000..c000041095
--- /dev/null
+++ b/arch/arm/boards/myirtech-x335x/defaultenv-myirtech-x335x/boot/nand
@@ -0,0 +1,4 @@
+#!/bin/sh
+
+global.bootm.image="/dev/nand0.system.ubi.kernel"
+global.linux.bootargs.dyn.root="ubi.mtd=system ubi.block=0,root root=fe00 ro"
diff --git a/arch/arm/boards/myirtech-x335x/defaultenv-myirtech-x335x/nv/boot.default b/arch/arm/boards/myirtech-x335x/defaultenv-myirtech-x335x/nv/boot.default
new file mode 100644
index 0000000000..026a25cc7e
--- /dev/null
+++ b/arch/arm/boards/myirtech-x335x/defaultenv-myirtech-x335x/nv/boot.default
@@ -0,0 +1 @@
+nand
diff --git a/arch/arm/boards/myirtech-x335x/lowlevel.c b/arch/arm/boards/myirtech-x335x/lowlevel.c
new file mode 100644
index 0000000000..e867a0be7d
--- /dev/null
+++ b/arch/arm/boards/myirtech-x335x/lowlevel.c
@@ -0,0 +1,115 @@
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
+	arm_cpu_lowlevel_init();
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
+		am33xx_uart_soft_reset(IOMEM(AM33XX_UART0_BASE));
+		am33xx_enable_uart0_pin_mux();
+		omap_uart_lowlevel_init(IOMEM(AM33XX_UART0_BASE));
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
diff --git a/arch/arm/configs/omap_defconfig b/arch/arm/configs/omap_defconfig
index 59892cb231..ae4d1a67da 100644
--- a/arch/arm/configs/omap_defconfig
+++ b/arch/arm/configs/omap_defconfig
@@ -6,6 +6,7 @@ CONFIG_OMAP_MULTI_BOARDS=y
 CONFIG_MACH_AFI_GF=y
 CONFIG_MACH_BEAGLE=y
 CONFIG_MACH_BEAGLEBONE=y
+CONFIG_MACH_MYIRTECH_X335X=y
 CONFIG_MACH_PHYTEC_SOM_AM335X=y
 CONFIG_MACH_VSCOM_BALTOS=y
 CONFIG_MACH_WAGO_PFC_AM35XX=y
@@ -46,6 +47,7 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_BOOTCHOOSER=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_UBIFORMAT=y
 CONFIG_CMD_EXPORT=y
@@ -93,7 +95,6 @@ CONFIG_CMD_OF_FIXUP_STATUS=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
 CONFIG_CMD_STATE=y
-CONFIG_CMD_BOOTCHOOSER=y
 CONFIG_NET=y
 CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
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
index 0000000000..178a22d266
--- /dev/null
+++ b/arch/arm/dts/am335x-myirtech-myd.dts
@@ -0,0 +1,47 @@
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
+			device-path = &nand0, "partname:env";
+		};
+	};
+
+};
+
+&nand0 {
+	/delete-node/ partition@0;
+	/delete-node/ partition@20000;
+
+	nand_parts: partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "MLO";
+			reg = <0x00000 0x20000>;
+		};
+
+		partition@80000 {
+			label = "boot";
+			reg = <0x80000 0x100000>;
+		};
+
+		partition@180000 {
+			label = "env";
+			reg = <0x180000 0x40000>;
+		};
+
+		partition@1c0000 {
+			label = "system";
+			reg = <0x1c0000 0>;
+		};
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

