Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.eu ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YJ0XO-0008Ac-Om
 for barebox@lists.infradead.org; Wed, 04 Feb 2015 14:02:47 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id D830AA0043A
 for <barebox@lists.infradead.org>; Wed,  4 Feb 2015 15:02:55 +0100 (CET)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Wed, 4 Feb 2015 15:00:51 +0100
Message-Id: <1423058453-17012-3-git-send-email-w.egorov@phytec.de>
In-Reply-To: <1423058453-17012-1-git-send-email-w.egorov@phytec.de>
References: <1423058453-17012-1-git-send-email-w.egorov@phytec.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/5] boards: Add phytec-som-am335x
To: barebox@lists.infradead.org

The main idea behind this patch is to avoid redundant board code.
Because of the module similarities of all am335x based phytec boards, we can
merge its code.
The phytec-som-am335x merges the code of all am335x based phytec SOMs.
So we will have only one "board" in the barebox for phyCORE, phyFLEX.

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
 arch/arm/boards/Makefile                           |   1 +
 arch/arm/boards/phytec-som-am335x/Makefile         |   3 +
 arch/arm/boards/phytec-som-am335x/board.c          | 104 ++++++++++++++
 .../defaultenv-physom-am335x/boot/mmc              |   8 ++
 .../defaultenv-physom-am335x/boot/nand             |   8 ++
 .../defaultenv-physom-am335x/boot/spi              |   9 ++
 .../defaultenv-physom-am335x/init/bootsource       |  15 ++
 .../defaultenv-physom-am335x/nv/bootargs.base      |   1 +
 arch/arm/boards/phytec-som-am335x/lowlevel.c       | 133 ++++++++++++++++++
 arch/arm/boards/phytec-som-am335x/ram-timings.h    | 154 +++++++++++++++++++++
 arch/arm/configs/am335x_defconfig                  |   1 +
 arch/arm/configs/am335x_mlo_defconfig              |   1 +
 arch/arm/dts/Makefile                              |   1 +
 arch/arm/mach-omap/Kconfig                         |   6 +
 images/Makefile.am33xx                             |  36 +++++
 15 files changed, 481 insertions(+)
 create mode 100644 arch/arm/boards/phytec-som-am335x/Makefile
 create mode 100644 arch/arm/boards/phytec-som-am335x/board.c
 create mode 100644 arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/mmc
 create mode 100644 arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/nand
 create mode 100644 arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/spi
 create mode 100644 arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/init/bootsource
 create mode 100644 arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/nv/bootargs.base
 create mode 100644 arch/arm/boards/phytec-som-am335x/lowlevel.c
 create mode 100644 arch/arm/boards/phytec-som-am335x/ram-timings.h

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 9961ca8..88de2b6 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -80,6 +80,7 @@ obj-$(CONFIG_MACH_PCM043)			+= phytec-phycore-imx35/
 obj-$(CONFIG_MACH_PCM049)			+= phytec-phycore-omap4460/
 obj-$(CONFIG_MACH_PCM051)			+= phytec-phycore-am335x/
 obj-$(CONFIG_MACH_PFLA03)			+= phytec-phyflex-am335x/
+obj-$(CONFIG_MACH_PHYTEC_SOM_AM335X)		+= phytec-som-am335x/
 obj-$(CONFIG_MACH_PHYTEC_PFLA02)		+= phytec-phyflex-imx6/
 obj-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3)	+= plathome-openblocks-ax3/
 obj-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6)	+= plathome-openblocks-a6/
diff --git a/arch/arm/boards/phytec-som-am335x/Makefile b/arch/arm/boards/phytec-som-am335x/Makefile
new file mode 100644
index 0000000..78397bd
--- /dev/null
+++ b/arch/arm/boards/phytec-som-am335x/Makefile
@@ -0,0 +1,3 @@
+lwl-y += lowlevel.o
+obj-y += board.o
+bbenv-y += defaultenv-physom-am335x
diff --git a/arch/arm/boards/phytec-som-am335x/board.c b/arch/arm/boards/phytec-som-am335x/board.c
new file mode 100644
index 0000000..d084898
--- /dev/null
+++ b/arch/arm/boards/phytec-som-am335x/board.c
@@ -0,0 +1,104 @@
+/*
+ * Copyright (C) 2015 Wadim Egorov, PHYTEC Messtechnik GmbH
+ *
+ * Device initialization for the following modules and board variants:
+ *   - phyCORE: PCM-953, phyBOARD-MAIA, phyBOARD-WEGA
+ *   - phyFLEX: PBA-B-01
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
+#include <bootsource.h>
+#include <common.h>
+#include <nand.h>
+#include <init.h>
+#include <io.h>
+#include <linux/sizes.h>
+#include <envfs.h>
+#include <asm/armlinux.h>
+#include <generated/mach-types.h>
+#include <linux/phy.h>
+#include <linux/micrel_phy.h>
+#include <mach/am33xx-generic.h>
+#include <mach/am33xx-silicon.h>
+#include <mach/bbu.h>
+
+static int physom_coredevice_init(void)
+{
+	if (!of_machine_is_compatible("phytec,am335x-som"))
+		return 0;
+
+	am33xx_register_ethaddr(0, 0);
+
+	return 0;
+}
+coredevice_initcall(physom_coredevice_init);
+
+static struct omap_barebox_part physom_barebox_part = {
+	.nand_offset = SZ_512K,
+	.nand_size = SZ_512K,
+	.nor_offset = SZ_128K,
+	.nor_size = SZ_512K,
+};
+
+static char *xloadslots[] = {
+	"/dev/nand0.xload.bb",
+	"/dev/nand0.xload_backup1.bb",
+	"/dev/nand0.xload_backup2.bb",
+	"/dev/nand0.xload_backup3.bb"
+};
+
+static int physom_devices_init(void)
+{
+	if (!of_machine_is_compatible("phytec,am335x-som"))
+		return 0;
+
+	switch (bootsource_get()) {
+	case BOOTSOURCE_SPI:
+		of_device_enable_path("/chosen/environment-spi");
+		break;
+	case BOOTSOURCE_MMC:
+		omap_set_bootmmc_devname("mmc0");
+		break;
+	default:
+		of_device_enable_path("/chosen/environment-nand");
+		break;
+	}
+
+	omap_set_barebox_part(&physom_barebox_part);
+	defaultenv_append_directory(defaultenv_physom_am335x);
+
+	/* Special module set up */
+	if (of_machine_is_compatible("phytec,phycore-am335x-som")) {
+		armlinux_set_architecture(MACH_TYPE_PCM051);
+		barebox_set_hostname("pcm051");
+	}
+
+	if (of_machine_is_compatible("phytec,phyflex-am335x-som")) {
+		armlinux_set_architecture(MACH_TYPE_PFLA03);
+		am33xx_select_rmii2_crs_dv();
+		barebox_set_hostname("pfla03");
+	}
+
+	/* Register update handler */
+	am33xx_bbu_spi_nor_mlo_register_handler("MLO.spi", "/dev/m25p0.xload");
+	am33xx_bbu_spi_nor_register_handler("spi", "/dev/m25p0.barebox");
+	am33xx_bbu_nand_xloadslots_register_handler("MLO.nand",
+		xloadslots, ARRAY_SIZE(xloadslots));
+	am33xx_bbu_nand_register_handler("nand", "/dev/nand0.barebox.bb");
+
+	if (IS_ENABLED(CONFIG_SHELL_NONE))
+		return am33xx_of_register_bootdevice();
+
+	return 0;
+}
+device_initcall(physom_devices_init);
diff --git a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/mmc b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/mmc
new file mode 100644
index 0000000..1a642f9
--- /dev/null
+++ b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/mmc
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+global.bootm.image=/boot/linuximage
+global.bootm.oftree=/boot/oftree
+
+bootargs-ip
+
+global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rootfstype=ext3 rw rootwait"
diff --git a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/nand b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/nand
new file mode 100644
index 0000000..c6e49be
--- /dev/null
+++ b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/nand
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+global.bootm.image="/dev/nand0.kernel.bb"
+global.bootm.oftree="/dev/nand0.oftree.bb"
+
+bootargs-ip
+
+global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=root rw rootfstype=ubifs"
diff --git a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/spi b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/spi
new file mode 100644
index 0000000..a9c0fe8
--- /dev/null
+++ b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/spi
@@ -0,0 +1,9 @@
+#!/bin/sh
+
+global.bootm.image="/dev/m25p0.kernel"
+global.bootm.oftree="/dev/m25p0.oftree"
+
+bootargs-ip
+
+# Use rootfs from NAND
+global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=nand0.root,2048 rw rootfstype=ubifs"
diff --git a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/init/bootsource b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/init/bootsource
new file mode 100644
index 0000000..3f2ff4b
--- /dev/null
+++ b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/init/bootsource
@@ -0,0 +1,15 @@
+#!/bin/sh
+
+if [ -n "$nv.boot.default" ]; then
+	exit
+fi
+
+if [ $bootsource = mmc ]; then
+	global.boot.default="mmc nand spi net"
+elif [ $bootsource = nand ]; then
+	global.boot.default="nand spi mmc net"
+elif [ $bootsource = spi ]; then
+	global.boot.default="spi nand mmc net"
+elif [ $bootsource = net ]; then
+	global.boot.default="net nand spi mmc"
+fi
diff --git a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/nv/bootargs.base b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/nv/bootargs.base
new file mode 100644
index 0000000..d7b01a1
--- /dev/null
+++ b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/nv/bootargs.base
@@ -0,0 +1 @@
+console=ttyO0,115200
diff --git a/arch/arm/boards/phytec-som-am335x/lowlevel.c b/arch/arm/boards/phytec-som-am335x/lowlevel.c
new file mode 100644
index 0000000..87ad1f3
--- /dev/null
+++ b/arch/arm/boards/phytec-som-am335x/lowlevel.c
@@ -0,0 +1,133 @@
+/*
+ * Copyright (C) 2015 Wadim Egorov, PHYTEC Messtechnik GmbH
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
+#include <linux/sizes.h>
+#include <io.h>
+#include <init.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/am33xx-silicon.h>
+#include <mach/am33xx-clock.h>
+#include <mach/generic.h>
+#include <mach/sdrc.h>
+#include <mach/sys_info.h>
+#include <mach/syslib.h>
+#include <mach/am33xx-mux.h>
+#include <mach/am33xx-generic.h>
+#include <mach/wdt.h>
+#include <debug_ll.h>
+
+#include "ram-timings.h"
+
+#define CLK_M_OSC_MHZ	25
+#define DDR_IOCTRL	0x18B
+
+static const struct am33xx_cmd_control physom_cmd = {
+	.slave_ratio0	= 0x80,
+	.dll_lock_diff0	= 0x0,
+	.invert_clkout0	= 0x0,
+	.slave_ratio1	= 0x80,
+	.dll_lock_diff1	= 0x0,
+	.invert_clkout1	= 0x0,
+	.slave_ratio2	= 0x80,
+	.dll_lock_diff2	= 0x0,
+	.invert_clkout2	= 0x0,
+};
+
+/**
+ * @brief The basic entry point for board initialization.
+ *
+ * This is called as part of machine init (after arch init).
+ * This is again called with stack in SRAM, so not too many
+ * constructs possible here.
+ *
+ * @return void
+ */
+static noinline void physom_board_init(int sdram, void *fdt)
+{
+	struct am335x_sdram_timings *timing = &physom_timings[sdram];
+
+	/*
+	 * WDT1 is already running when the bootloader gets control
+	 * Disable it to avoid "random" resets
+	 */
+	writel(WDT_DISABLE_CODE1, AM33XX_WDT_REG(WSPR));
+	while (readl(AM33XX_WDT_REG(WWPS)) != 0x0);
+
+
+	writel(WDT_DISABLE_CODE2, AM33XX_WDT_REG(WSPR));
+	while (readl(AM33XX_WDT_REG(WWPS)) != 0x0);
+
+	am33xx_pll_init(MPUPLL_M_600, CLK_M_OSC_MHZ, DDRPLL_M_400);
+
+	am335x_sdram_init(DDR_IOCTRL, &physom_cmd,
+			&timing->regs,
+			&timing->data);
+
+	am33xx_uart_soft_reset((void *)AM33XX_UART0_BASE);
+	am33xx_enable_uart0_pin_mux();
+	omap_uart_lowlevel_init((void *)AM33XX_UART0_BASE);
+	putc_ll('>');
+
+	am335x_barebox_entry(fdt);
+}
+
+static noinline void physom_board_entry(unsigned long bootinfo, int sdram, void *fdt)
+{
+	am33xx_save_bootinfo((void *)bootinfo);
+
+	arm_cpu_lowlevel_init();
+
+	/*
+	 * Setup C environment, the board init code uses global variables.
+	 * Stackpointer has already been initialized by the ROM code.
+	 */
+	relocate_to_current_adr();
+	setup_c();
+
+	physom_board_init(sdram, fdt);
+}
+
+#define PHYTEC_ENTRY_MLO(name, fdt_name, sdram)			\
+	ENTRY_FUNCTION(name, bootinfo, r1, r2)			\
+	{							\
+		extern char __dtb_##fdt_name##_start[];		\
+		void *fdt =__dtb_##fdt_name##_start -		\
+			get_runtime_offset();			\
+		physom_board_entry(bootinfo, sdram, fdt);	\
+	}
+
+#define PHYTEC_ENTRY(name, fdt_name)				\
+	ENTRY_FUNCTION(name, r0, r1, r2)			\
+	{							\
+		extern char __dtb_##fdt_name##_start[];		\
+		void *fdt =__dtb_##fdt_name##_start -		\
+			get_runtime_offset();			\
+		am335x_barebox_entry(fdt);			\
+	}
+
+/* phycore-som */
+PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_sram_128mb, am335x_phytec_phycore_som_mlo, PHYCORE_MT41J64M1615IT_128MB);
+PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_sram_256mb, am335x_phytec_phycore_som_mlo, PHYCORE_MT41J128M16125IT_256MB);
+PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_sram_512mb, am335x_phytec_phycore_som_mlo, PHYCORE_MT41J256M16HA15EIT_512MB);
+PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_sram_2x512mb, am335x_phytec_phycore_som_mlo, PHYCORE_MT41J512M8125IT_2x512MB);
+PHYTEC_ENTRY(start_am33xx_phytec_phycore_sdram, am335x_phytec_phycore_som);
+PHYTEC_ENTRY(start_am33xx_phytec_phycore_no_spi_sdram, am335x_phytec_phycore_som_no_spi);
+
+/* phyflex-som */
+PHYTEC_ENTRY_MLO(start_am33xx_phytec_phyflex_sram_256mb, am335x_phytec_phyflex_som_mlo, PHYFLEX_MT41K128M16JT_256MB);
+PHYTEC_ENTRY_MLO(start_am33xx_phytec_phyflex_sram_512mb, am335x_phytec_phyflex_som_mlo, PHYFLEX_MT41K256M16HA_512MB);
+PHYTEC_ENTRY(start_am33xx_phytec_phyflex_sdram, am335x_phytec_phyflex_som);
diff --git a/arch/arm/boards/phytec-som-am335x/ram-timings.h b/arch/arm/boards/phytec-som-am335x/ram-timings.h
new file mode 100644
index 0000000..6d1993e
--- /dev/null
+++ b/arch/arm/boards/phytec-som-am335x/ram-timings.h
@@ -0,0 +1,154 @@
+/*
+ * Copyright (C) 2015 Wadim Egorov, PHYTEC Messtechnik GmbH
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
+#ifndef __RAM_TIMINGS_H
+#define __RAM_TIMINGS_H
+
+struct am335x_sdram_timings {
+	struct am33xx_emif_regs regs;
+	struct am33xx_ddr_data data;
+};
+
+enum {
+	PHYFLEX_MT41K128M16JT_256MB,
+	PHYFLEX_MT41K256M16HA_512MB,
+
+	PHYCORE_MT41J128M16125IT_256MB,
+	PHYCORE_MT41J64M1615IT_128MB,
+	PHYCORE_MT41J256M16HA15EIT_512MB,
+	PHYCORE_MT41J512M8125IT_2x512MB,
+};
+
+struct am335x_sdram_timings physom_timings[] = {
+	/* 256 MB */
+	[PHYFLEX_MT41K128M16JT_256MB] = {
+		.regs = {
+			.emif_read_latency	= 0x7,
+			.emif_tim1		= 0x0AAAD4DB,
+			.emif_tim2		= 0x26437FDA,
+			.emif_tim3		= 0x501F83FF,
+			.sdram_config		= 0x61C052B2,
+			.zq_config		= 0x50074BE4,
+			.sdram_ref_ctrl		= 0x00000C30,
+		},
+		.data = {
+			.rd_slave_ratio0	= 0x34,
+			.wr_dqs_slave_ratio0	= 0x47,
+			.fifo_we_slave_ratio0	= 0x9a,
+			.wr_slave_ratio0	= 0x7e,
+			.use_rank0_delay	= 0x0,
+			.dll_lock_diff0		= 0x0,
+		},
+	},
+
+	/* 512 MB */
+	[PHYFLEX_MT41K256M16HA_512MB] = {
+		.regs = {
+			.emif_read_latency	= 0x7,
+			.emif_tim1		= 0x0AAAE4DB,
+			.emif_tim2		= 0x266B7FDA,
+			.emif_tim3		= 0x501F867F,
+			.sdram_config		= 0x61C05332,
+			.zq_config		= 0x50074BE4,
+			.sdram_ref_ctrl		= 0x00000C30,
+		},
+		.data = {
+			.rd_slave_ratio0	= 0x36,
+			.wr_dqs_slave_ratio0	= 0x47,
+			.fifo_we_slave_ratio0	= 0x95,
+			.wr_slave_ratio0	= 0x7f,
+			.use_rank0_delay	= 0x0,
+			.dll_lock_diff0		= 0x0,
+		},
+	},
+
+	/* 256MB */
+	[PHYCORE_MT41J128M16125IT_256MB] = {
+		.regs = {
+			.emif_read_latency	= 0x7,
+			.emif_tim1		= 0x0AAAD4DB,
+			.emif_tim2		= 0x26437FDA,
+			.emif_tim3		= 0x501F83FF,
+			.sdram_config		= 0x61C052B2,
+			.zq_config		= 0x50074BE4,
+			.sdram_ref_ctrl		= 0x00000C30,
+		},
+		.data = {
+			.rd_slave_ratio0	= 0x3B,
+			.wr_dqs_slave_ratio0	= 0x33,
+			.fifo_we_slave_ratio0	= 0x9c,
+			.wr_slave_ratio0	= 0x6f,
+		},
+	},
+
+	/* 128MB */
+	[PHYCORE_MT41J64M1615IT_128MB] = {
+		.regs =  {
+			.emif_read_latency	= 0x7,
+			.emif_tim1		= 0x0AAAE4DB,
+			.emif_tim2		= 0x262F7FDA,
+			.emif_tim3		= 0x501F82BF,
+			.sdram_config		= 0x61C05232,
+			.zq_config		= 0x50074BE4,
+			.sdram_ref_ctrl		= 0x00000C30,
+		},
+		.data = {
+			.rd_slave_ratio0	= 0x38,
+			.wr_dqs_slave_ratio0	= 0x34,
+			.fifo_we_slave_ratio0	= 0xA2,
+			.wr_slave_ratio0	= 0x72,
+		},
+	},
+
+	/* 512MB */
+	[PHYCORE_MT41J256M16HA15EIT_512MB] = {
+		.regs = {
+			.emif_read_latency	= 0x7,
+			.emif_tim1		= 0x0AAAE4DB,
+			.emif_tim2		= 0x266B7FDA,
+			.emif_tim3		= 0x501F867F,
+			.sdram_config		= 0x61C05332,
+			.zq_config		= 0x50074BE4,
+			.sdram_ref_ctrl		= 0x00000C30
+		},
+		.data = {
+			.rd_slave_ratio0	= 0x35,
+			.wr_dqs_slave_ratio0	= 0x43,
+			.fifo_we_slave_ratio0	= 0x97,
+			.wr_slave_ratio0	= 0x7b,
+		},
+	},
+
+	/* 1024MB */
+	[PHYCORE_MT41J512M8125IT_2x512MB] = {
+		.regs = {
+			.emif_read_latency	= 0x7,
+			.emif_tim1		= 0x0AAAE4DB,
+			.emif_tim2		= 0x266B7FDA,
+			.emif_tim3		= 0x501F867F,
+			.sdram_config		= 0x61C053B2,
+			.zq_config		= 0x50074BE4,
+			.sdram_ref_ctrl		= 0x00000C30
+		},
+		.data = {
+			.rd_slave_ratio0	= 0x32,
+			.wr_dqs_slave_ratio0	= 0x48,
+			.fifo_we_slave_ratio0	= 0x99,
+			.wr_slave_ratio0	= 0x80,
+		},
+	},
+};
+
+#endif
diff --git a/arch/arm/configs/am335x_defconfig b/arch/arm/configs/am335x_defconfig
index e9bc1ba..5387548 100644
--- a/arch/arm/configs/am335x_defconfig
+++ b/arch/arm/configs/am335x_defconfig
@@ -6,6 +6,7 @@ CONFIG_MACH_AFI_GF=y
 CONFIG_MACH_BEAGLEBONE=y
 CONFIG_MACH_PCM051=y
 CONFIG_MACH_PFLA03=y
+CONFIG_MACH_PHYTEC_SOM_AM335X=y
 CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_BOARD_APPEND_ATAG=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
diff --git a/arch/arm/configs/am335x_mlo_defconfig b/arch/arm/configs/am335x_mlo_defconfig
index 9734da6..c06519c 100644
--- a/arch/arm/configs/am335x_mlo_defconfig
+++ b/arch/arm/configs/am335x_mlo_defconfig
@@ -6,6 +6,7 @@ CONFIG_MACH_AFI_GF=y
 CONFIG_MACH_BEAGLEBONE=y
 CONFIG_MACH_PCM051=y
 CONFIG_MACH_PFLA03=y
+CONFIG_MACH_PHYTEC_SOM_AM335X=y
 CONFIG_THUMB2_BAREBOX=y
 # CONFIG_MEMINFO is not set
 CONFIG_MMU=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index e87e612..a228b2d 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -30,6 +30,7 @@ pbl-dtb-$(CONFIG_MACH_PCAAXL3) += imx6q-phytec-pbaa03.dtb.o
 pbl-dtb-$(CONFIG_MACH_PCM038) += imx27-phytec-phycore-rdk.dtb.o
 pbl-dtb-$(CONFIG_MACH_PCM051) += am335x-phytec-phycore-som.dtb.o am335x-phytec-phycore-som-no-spi.dtb.o am335x-phytec-phycore-som-mlo.dtb.o
 pbl-dtb-$(CONFIG_MACH_PFLA03) += am335x-phytec-phyflex-som.dtb.o am335x-phytec-phyflex-som-mlo.dtb.o
+pbl-dtb-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += am335x-phytec-phyflex-som.dtb.o am335x-phytec-phyflex-som-mlo.dtb.o am335x-phytec-phycore-som.dtb.o am335x-phytec-phycore-som-no-spi.dtb.o am335x-phytec-phycore-som-mlo.dtb.o
 pbl-dtb-$(CONFIG_MACH_PHYTEC_PFLA02) += imx6s-phytec-pbab01.dtb.o imx6dl-phytec-pbab01.dtb.o imx6q-phytec-pbab01.dtb.o imx6q-phytec-phyboard-alcor.dtb.o imx6dl-phytec-phyboard-subra.dtb.o
 pbl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += armada-xp-openblocks-ax3-4-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6) += kirkwood-openblocks_a6-bb.dtb.o
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 7aa37eb..32efe5c 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -158,6 +158,12 @@ config MACH_PFLA03
 	select ARCH_AM33XX
 	help
 	  Say Y here if you are using Phytecs phyFLEX pfla03 board
+
+config MACH_PHYTEC_SOM_AM335X
+	bool "Phytec AM335X SOMs"
+	select ARCH_AM33XX
+	help
+	  Say Y here if you are using a am335x based Phytecs SOM
 endif
 
 choice
diff --git a/images/Makefile.am33xx b/images/Makefile.am33xx
index 002c103..75dfb9a 100644
--- a/images/Makefile.am33xx
+++ b/images/Makefile.am33xx
@@ -51,6 +51,42 @@ pblx-$(CONFIG_MACH_PFLA03) += start_am33xx_phytec_phyflex_sram_512mb
 FILE_barebox-am33xx-phytec-phyflex-mlo-512mb.img = start_am33xx_phytec_phyflex_sram_512mb.pblx.mlo
 am33xx-mlo-$(CONFIG_MACH_PFLA03) += barebox-am33xx-phytec-phyflex-mlo-512mb.img
 
+pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_sdram
+FILE_barebox-am33xx-phytec-phycore.img = start_am33xx_phytec_phycore_sdram.pblx
+am33xx-barebox-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore.img
+
+pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_no_spi_sdram
+FILE_barebox-am33xx-phytec-phycore-no-spi.img = start_am33xx_phytec_phycore_no_spi_sdram.pblx
+am33xx-barebox-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-no-spi.img
+
+pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_sram_256mb
+FILE_barebox-am33xx-phytec-phycore-mlo-256mb.img = start_am33xx_phytec_phycore_sram_256mb.pblx.mlo
+am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-mlo-256mb.img
+
+pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_sram_128mb
+FILE_barebox-am33xx-phytec-phycore-mlo-128mb.img = start_am33xx_phytec_phycore_sram_128mb.pblx.mlo
+am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-mlo-128mb.img
+
+pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_sram_512mb
+FILE_barebox-am33xx-phytec-phycore-mlo-512mb.img = start_am33xx_phytec_phycore_sram_512mb.pblx.mlo
+am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-mlo-512mb.img
+
+pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_sram_2x512mb
+FILE_barebox-am33xx-phytec-phycore-mlo-2x512mb.img = start_am33xx_phytec_phycore_sram_2x512mb.pblx.mlo
+am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-mlo-2x512mb.img
+
+pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phyflex_sdram
+FILE_barebox-am33xx-phytec-phyflex.img = start_am33xx_phytec_phyflex_sdram.pblx
+am33xx-barebox-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phyflex.img
+
+pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phyflex_sram_256mb
+FILE_barebox-am33xx-phytec-phyflex-mlo-256mb.img = start_am33xx_phytec_phyflex_sram_256mb.pblx.mlo
+am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phyflex-mlo-256mb.img
+
+pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phyflex_sram_512mb
+FILE_barebox-am33xx-phytec-phyflex-mlo-512mb.img = start_am33xx_phytec_phyflex_sram_512mb.pblx.mlo
+am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phyflex-mlo-512mb.img
+
 pblx-$(CONFIG_MACH_BEAGLEBONE) += start_am33xx_beaglebone_sdram
 FILE_barebox-am33xx-beaglebone.img = start_am33xx_beaglebone_sdram.pblx
 am33xx-barebox-$(CONFIG_MACH_BEAGLEBONE) += barebox-am33xx-beaglebone.img
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
