Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.megiteam.pl ([31.186.83.105])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQZB6-0006zL-M3
 for barebox@lists.infradead.org; Wed, 06 Jun 2018 14:12:46 +0000
From: Marcin Niestroj <m.niestroj@grinn-global.com>
Date: Wed,  6 Jun 2018 16:12:07 +0200
Message-Id: <20180606141207.29686-1-m.niestroj@grinn-global.com>
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
Subject: [PATCH] ARM: i.MX: Add liteboard support
To: barebox@lists.infradead.org
Cc: Marcin Niestroj <m.niestroj@grinn-global.com>

liteboard is a development board which uses liteSOM as its
base. liteSOM can't exist on its own, but is used as part
of other boards - it only contains processor and memory.

Hardware specification:
 * liteSOM:
   - i.MX6UL
   - 256M or 512M DDR3 RAM
   - eMMC (uSDHC2)
 * Ethernet PHY
 * USB host (usb_otg1)
 * MicroSD slot (uSDHC1)

Signed-off-by: Marcin Niestroj <m.niestroj@grinn-global.com>
---
Developed and tested on master branch: 03f2a17b10d0
  ("usb: gadget: fastboot: fix barebox update without using buffer").

 arch/arm/boards/Makefile                      |  1 +
 arch/arm/boards/grinn-liteboard/Makefile      |  2 +
 arch/arm/boards/grinn-liteboard/board.c       | 67 ++++++++++++++
 .../flash-header-liteboard-256mb.imxcfg       |  6 ++
 .../flash-header-liteboard-512mb.imxcfg       |  6 ++
 .../grinn-liteboard/flash-header-liteboard.h  | 68 ++++++++++++++
 arch/arm/boards/grinn-liteboard/lowlevel.c    | 89 ++++++++++++++++++
 arch/arm/configs/imx_v7_defconfig             |  1 +
 arch/arm/dts/Makefile                         |  1 +
 arch/arm/dts/imx6ul-liteboard.dts             | 90 +++++++++++++++++++
 arch/arm/mach-imx/Kconfig                     |  4 +
 images/Makefile.imx                           | 10 +++
 12 files changed, 345 insertions(+)
 create mode 100644 arch/arm/boards/grinn-liteboard/Makefile
 create mode 100644 arch/arm/boards/grinn-liteboard/board.c
 create mode 100644 arch/arm/boards/grinn-liteboard/flash-header-liteboard-256mb.imxcfg
 create mode 100644 arch/arm/boards/grinn-liteboard/flash-header-liteboard-512mb.imxcfg
 create mode 100644 arch/arm/boards/grinn-liteboard/flash-header-liteboard.h
 create mode 100644 arch/arm/boards/grinn-liteboard/lowlevel.c
 create mode 100644 arch/arm/dts/imx6ul-liteboard.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index b2fea4a40..343843750 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -52,6 +52,7 @@ obj-$(CONFIG_MACH_GE863)			+= telit-evk-pro3/
 obj-$(CONFIG_MACH_GK802)			+= gk802/
 obj-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG)		+= globalscale-guruplug/
 obj-$(CONFIG_MACH_GLOBALSCALE_MIRABOX)		+= globalscale-mirabox/
+obj-$(CONFIG_MACH_GRINN_LITEBOARD)		+= grinn-liteboard/
 obj-$(CONFIG_MACH_GUF_CUPID)			+= guf-cupid/
 obj-$(CONFIG_MACH_GUF_SANTARO)			+= guf-santaro/
 obj-$(CONFIG_MACH_GUF_VINCELL)			+= guf-vincell/
diff --git a/arch/arm/boards/grinn-liteboard/Makefile b/arch/arm/boards/grinn-liteboard/Makefile
new file mode 100644
index 000000000..01c7a259e
--- /dev/null
+++ b/arch/arm/boards/grinn-liteboard/Makefile
@@ -0,0 +1,2 @@
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/grinn-liteboard/board.c b/arch/arm/boards/grinn-liteboard/board.c
new file mode 100644
index 000000000..d776ea24b
--- /dev/null
+++ b/arch/arm/boards/grinn-liteboard/board.c
@@ -0,0 +1,67 @@
+/*
+ * Copyright (C) 2018 Grinn
+ *
+ * Author: Marcin Niestroj <m.niestroj@grinn-global.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; version 2.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
+ * General Public License for more details.
+ */
+
+#define pr_fmt(fmt) "liteboard: " fmt
+
+#include <bootsource.h>
+#include <common.h>
+#include <envfs.h>
+#include <init.h>
+#include <mach/bbu.h>
+#include <mach/imx6.h>
+#include <malloc.h>
+#include <mfd/imx6q-iomuxc-gpr.h>
+#include <of.h>
+
+#define SD_IDX		0
+#define EMMC_IDX	1
+
+static const struct {
+	const char *name;
+	const char *path;
+} envs[] = {
+	{"SD", "/chosen/environment-sd"},
+	{"eMMC", "/chosen/environment-emmc"},
+};
+
+static int liteboard_devices_init(void)
+{
+	int mmc_idx = 0;
+	int ret;
+
+	if (!of_machine_is_compatible("grinn,imx6ul-liteboard"))
+		return 0;
+
+	barebox_set_hostname("liteboard");
+
+	if (bootsource_get() == BOOTSOURCE_MMC)
+		mmc_idx = bootsource_get_instance();
+
+	ret = of_device_enable_path(envs[mmc_idx].path);
+	if (ret < 0)
+		pr_warn("Failed to enable environment partition '%s' (%d)\n",
+			envs[mmc_idx].path, ret);
+
+	pr_notice("Using environment in %s\n", envs[mmc_idx].name);
+
+	imx6_bbu_internal_mmc_register_handler("sd", "/dev/mmc0.barebox",
+		mmc_idx == SD_IDX ? BBU_HANDLER_FLAG_DEFAULT : 0);
+
+	imx6_bbu_internal_mmc_register_handler("emmc", "/dev/mmc1.barebox",
+		mmc_idx == EMMC_IDX ? BBU_HANDLER_FLAG_DEFAULT : 0);
+
+	return 0;
+}
+device_initcall(liteboard_devices_init);
diff --git a/arch/arm/boards/grinn-liteboard/flash-header-liteboard-256mb.imxcfg b/arch/arm/boards/grinn-liteboard/flash-header-liteboard-256mb.imxcfg
new file mode 100644
index 000000000..1b980c784
--- /dev/null
+++ b/arch/arm/boards/grinn-liteboard/flash-header-liteboard-256mb.imxcfg
@@ -0,0 +1,6 @@
+
+#define SETUP_MDASP_MDCTL		\
+	wm 32 0x021B0040 0x00000047;	\
+	wm 32 0x021B0000 0x83180000
+
+#include "flash-header-liteboard.h"
diff --git a/arch/arm/boards/grinn-liteboard/flash-header-liteboard-512mb.imxcfg b/arch/arm/boards/grinn-liteboard/flash-header-liteboard-512mb.imxcfg
new file mode 100644
index 000000000..c93a2cc0f
--- /dev/null
+++ b/arch/arm/boards/grinn-liteboard/flash-header-liteboard-512mb.imxcfg
@@ -0,0 +1,6 @@
+
+#define SETUP_MDASP_MDCTL		\
+	wm 32 0x021B0040 0x0000004F;	\
+	wm 32 0x021B0000 0x84180000
+
+#include "flash-header-liteboard.h"
diff --git a/arch/arm/boards/grinn-liteboard/flash-header-liteboard.h b/arch/arm/boards/grinn-liteboard/flash-header-liteboard.h
new file mode 100644
index 000000000..60a39f524
--- /dev/null
+++ b/arch/arm/boards/grinn-liteboard/flash-header-liteboard.h
@@ -0,0 +1,68 @@
+
+loadaddr 0x80000000
+soc imx6
+dcdofs 0x400
+
+wm 32 0x020c4068 0xffffffff
+wm 32 0x020c406c 0xffffffff
+wm 32 0x020c4070 0xffffffff
+wm 32 0x020c4074 0xffffffff
+wm 32 0x020c4078 0xffffffff
+wm 32 0x020c407c 0xffffffff
+wm 32 0x020c4080 0xffffffff
+
+wm 32 0x020E04B4 0x000C0000
+wm 32 0x020E04AC 0x00000000
+wm 32 0x020E027C 0x00000030
+wm 32 0x020E0250 0x00000030
+wm 32 0x020E024C 0x00000030
+wm 32 0x020E0490 0x00000030
+wm 32 0x020E0288 0x00000030
+wm 32 0x020E0270 0x00000000
+wm 32 0x020E0260 0x00000030
+wm 32 0x020E0264 0x00000030
+wm 32 0x020E04A0 0x00000030
+wm 32 0x020E0494 0x00020000
+wm 32 0x020E0280 0x00000030
+wm 32 0x020E0284 0x00000030
+wm 32 0x020E04B0 0x00020000
+wm 32 0x020E0498 0x00000030
+wm 32 0x020E04A4 0x00000030
+wm 32 0x020E0244 0x00000030
+wm 32 0x020E0248 0x00000030
+wm 32 0x021B001C 0x00008000
+wm 32 0x021B0800 0xA1390003
+wm 32 0x021B080C 0x00000000
+wm 32 0x021B083C 0x41480148
+wm 32 0x021B0848 0x40403E42
+wm 32 0x021B0850 0x40405852
+wm 32 0x021B081C 0x33333333
+wm 32 0x021B0820 0x33333333
+wm 32 0x021B082C 0xf3333333
+wm 32 0x021B0830 0xf3333333
+wm 32 0x021B08C0 0x00922012
+wm 32 0x021B0858 0x00000F00
+wm 32 0x021B08b8 0x00000800
+wm 32 0x021B0004 0x0002002D
+wm 32 0x021B0008 0x1B333030
+wm 32 0x021B000C 0x676B52F3
+wm 32 0x021B0010 0xB66D0B63
+wm 32 0x021B0014 0x01FF00DB
+wm 32 0x021B0018 0x00211740
+wm 32 0x021B001C 0x00008000
+wm 32 0x021B002C 0x000026D2
+wm 32 0x021B0030 0x006B1023
+
+SETUP_MDASP_MDCTL
+
+wm 32 0x021b0890 0x00400A38
+wm 32 0x021B001C 0x02008032
+wm 32 0x021B001C 0x00008033
+wm 32 0x021B001C 0x00048031
+wm 32 0x021B001C 0x15208030
+wm 32 0x021B001C 0x04008040
+wm 32 0x021B0020 0x00007800
+wm 32 0x021B0818 0x00000227
+wm 32 0x021B0004 0x0002556D
+wm 32 0x021B0404 0x00011006
+wm 32 0x021B001C 0x00000000
diff --git a/arch/arm/boards/grinn-liteboard/lowlevel.c b/arch/arm/boards/grinn-liteboard/lowlevel.c
new file mode 100644
index 000000000..03f2660f9
--- /dev/null
+++ b/arch/arm/boards/grinn-liteboard/lowlevel.c
@@ -0,0 +1,89 @@
+/*
+ * Copyright (C) 2018 Grinn
+ *
+ * Author: Marcin Niestroj <m.niestroj@grinn-global.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; version 2.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
+ * General Public License for more details.
+ */
+
+#include <debug_ll.h>
+#include <common.h>
+#include <linux/sizes.h>
+#include <io.h>
+#include <image-metadata.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <asm/sections.h>
+#include <asm/cache.h>
+#include <asm/mmu.h>
+#include <mach/esdctl.h>
+#include <mach/imx6.h>
+
+static inline void setup_uart(void)
+{
+	void __iomem *iomuxbase = IOMEM(MX6_IOMUXC_BASE_ADDR);
+	void __iomem *uart = IOMEM(MX6_UART1_BASE_ADDR);
+
+	imx6_ungate_all_peripherals();
+
+	/* TX */
+	writel(0x0, iomuxbase + 0x84);
+	writel(0x1b0b1, iomuxbase + 0x0310);
+
+	/* RX */
+	writel(0x0, iomuxbase + 0x88);
+	writel(0x1b0b0, iomuxbase + 0x0314);
+	writel(0x3, iomuxbase + 0x624);
+
+	imx6_uart_setup(uart);
+
+	pbl_set_putc(imx_uart_putc, uart);
+
+	putc_ll('>');
+}
+
+BAREBOX_IMD_TAG_STRING(liteboard_memsize_SZ_256M, IMD_TYPE_PARAMETER, "memsize=256", 0);
+BAREBOX_IMD_TAG_STRING(liteboard_memsize_SZ_512M, IMD_TYPE_PARAMETER, "memsize=512", 0);
+
+extern char __dtb_imx6ul_liteboard_start[];
+
+static void __noreturn start_imx6_liteboard(void)
+{
+	imx6ul_cpu_lowlevel_init();
+
+	arm_setup_stack(0x00910000 - 8);
+
+	arm_early_mmu_cache_invalidate();
+
+	relocate_to_current_adr();
+	setup_c();
+	barrier();
+
+	setup_uart();
+
+	/* disable watchdog powerdown counters */
+	writew(0x0, IOMEM(MX6_WDOG1_BASE_ADDR + 0x8));
+	writew(0x0, IOMEM(MX6_WDOG2_BASE_ADDR + 0x8));
+	writew(0x0, IOMEM(MX6ULL_WDOG3_BASE_ADDR + 0x8));
+
+	imx6ul_barebox_entry(__dtb_imx6ul_liteboard_start);
+}
+
+#define LITEBOARD_ENTRY(name, memory_size)	\
+	ENTRY_FUNCTION(name, r0, r1, r2)				\
+	{								\
+		IMD_USED(liteboard_memsize_##memory_size);		\
+									\
+		start_imx6_liteboard();					\
+	}
+
+
+LITEBOARD_ENTRY(start_imx6ul_liteboard_256mb, SZ_256M);
+LITEBOARD_ENTRY(start_imx6ul_liteboard_512mb, SZ_512M);
diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index 8aef9d6ef..fd1f413d2 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -40,6 +40,7 @@ CONFIG_MACH_ZII_VF610_DEV=y
 CONFIG_MACH_PHYTEC_PHYCORE_IMX7=y
 CONFIG_MACH_FREESCALE_MX7_SABRESD=y
 CONFIG_MACH_NXP_IMX6ULL_EVK=y
+CONFIG_MACH_GRINN_LITEBOARD=y
 CONFIG_IMX_IIM=y
 CONFIG_IMX_IIM_FUSE_BLOW=y
 CONFIG_THUMB2_BAREBOX=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index b69592e64..87b31b536 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -27,6 +27,7 @@ pbl-dtb-$(CONFIG_MACH_FREESCALE_MX7_SABRESD) += imx7d-sdb.dtb.o
 pbl-dtb-$(CONFIG_MACH_GK802) += imx6q-gk802.dtb.o
 pbl-dtb-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG) += kirkwood-guruplug-server-plus-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_GLOBALSCALE_MIRABOX) += armada-370-mirabox-bb.dtb.o
+pbl-dtb-$(CONFIG_MACH_GRINN_LITEBOARD) += imx6ul-liteboard.dtb.o
 pbl-dtb-$(CONFIG_MACH_GUF_SANTARO) += imx6q-guf-santaro.dtb.o
 pbl-dtb-$(CONFIG_MACH_GUF_VINCELL) += imx53-guf-vincell.dtb.o imx53-guf-vincell-lt.dtb.o
 pbl-dtb-$(CONFIG_MACH_GW_VENTANA) += imx6q-gw54xx.dtb.o
diff --git a/arch/arm/dts/imx6ul-liteboard.dts b/arch/arm/dts/imx6ul-liteboard.dts
new file mode 100644
index 000000000..ca3a5e57b
--- /dev/null
+++ b/arch/arm/dts/imx6ul-liteboard.dts
@@ -0,0 +1,90 @@
+/*
+ * Copyright 2018 Grinn
+ *
+ * Author: Marcin Niestroj <m.niestroj@grinn-global.com>
+ *
+ * This file is dual-licensed: you can use it either under the terms
+ * of the GPL or the X11 license, at your option. Note that this dual
+ * licensing only applies to this file, and not this project as a
+ * whole.
+ *
+ *  a) This file is free software; you can redistribute it and/or
+ *     modify it under the terms of the GNU General Public License
+ *     version 2 as published by the Free Software Foundation.
+ *
+ *     This file is distributed in the hope that it will be useful,
+ *     but WITHOUT ANY WARRANTY; without even the implied warranty of
+ *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ *     GNU General Public License for more details.
+ *
+ * Or, alternatively,
+ *
+ *  b) Permission is hereby granted, free of charge, to any person
+ *     obtaining a copy of this software and associated documentation
+ *     files (the "Software"), to deal in the Software without
+ *     restriction, including without limitation the rights to use,
+ *     copy, modify, merge, publish, distribute, sublicense, and/or
+ *     sell copies of the Software, and to permit persons to whom the
+ *     Software is furnished to do so, subject to the following
+ *     conditions:
+ *
+ *     The above copyright notice and this permission notice shall be
+ *     included in all copies or substantial portions of the Software.
+ *
+ *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
+ *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
+ *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
+ *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
+ *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
+ *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
+ *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
+ *     OTHER DEALINGS IN THE SOFTWARE.
+ */
+
+#include <arm/imx6ul-liteboard.dts>
+
+/ {
+	chosen {
+		environment-sd {
+			compatible = "barebox,environment";
+			device-path = &environment_sd;
+			status = "disabled";
+		};
+
+		environment-emmc {
+			compatible = "barebox,environment";
+			device-path = &environment_emmc;
+			status = "disabled";
+		};
+	};
+};
+
+&usdhc1 {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0xe0000>;
+	};
+
+	environment_sd: partition@e0000 {
+		label = "barebox-environment";
+		reg = <0xe0000 0x20000>;
+	};
+};
+
+&usdhc2 {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0xe0000>;
+	};
+
+	environment_emmc: partition@e0000 {
+		label = "barebox-environment";
+		reg = <0xe0000 0x20000>;
+	};
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index e6956acbd..be56acd3a 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -435,6 +435,10 @@ config MACH_NXP_IMX6ULL_EVK
 	bool "NXP i.MX6ull EVK Board"
 	select ARCH_IMX6UL
 
+config MACH_GRINN_LITEBOARD
+	bool "Grinn liteboard"
+	select ARCH_IMX6UL
+
 endif
 
 # ----------------------------------------------------------
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 43505b1ff..5fcfbbefb 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -490,6 +490,16 @@ CFG_start_imx6dl_samx6i.pblx.imximg = $(board)/kontron-samx6i/flash-header-samx6
 FILE_barebox-imx6dl-samx6i.img = start_imx6dl_samx6i.pblx.imximg
 image-$(CONFIG_MACH_KONTRON_SAMX6I) += barebox-imx6dl-samx6i.img
 
+pblx-$(CONFIG_MACH_GRINN_LITEBOARD) += start_imx6ul_liteboard_256mb
+CFG_start_imx6ul_liteboard_256mb.pblx.imximg = $(board)/grinn-liteboard/flash-header-liteboard-256mb.imxcfg
+FILE_barebox-grinn-liteboard-256mb.img = start_imx6ul_liteboard_256mb.pblx.imximg
+image-$(CONFIG_MACH_GRINN_LITEBOARD) += barebox-grinn-liteboard-256mb.img
+
+pblx-$(CONFIG_MACH_GRINN_LITEBOARD) += start_imx6ul_liteboard_512mb
+CFG_start_imx6ul_liteboard_512mb.pblx.imximg = $(board)/grinn-liteboard/flash-header-liteboard-512mb.imxcfg
+FILE_barebox-grinn-liteboard-512mb.img = start_imx6ul_liteboard_512mb.pblx.imximg
+image-$(CONFIG_MACH_GRINN_LITEBOARD) += barebox-grinn-liteboard-512mb.img
+
 pblx-$(CONFIG_MACH_GW_VENTANA) += start_imx6q_gw54xx_1gx64
 CFG_start_imx6q_gw54xx_1gx64.pblx.imximg = $(board)/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg
 FILE_barebox-gateworks-imx6q-ventana-1gx64.img = start_imx6q_gw54xx_1gx64.pblx.imximg
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
