Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dxVrF-00034q-QF
 for barebox@lists.infradead.org; Thu, 28 Sep 2017 10:15:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Sep 2017 12:15:31 +0200
Message-Id: <20170928101531.5333-3-s.hauer@pengutronix.de>
In-Reply-To: <20170928101531.5333-1-s.hauer@pengutronix.de>
References: <20170928101531.5333-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: Add i.MX6ull evk support
To: Barebox List <barebox@lists.infradead.org>

The i.MX6ull-EVK is a evaluation board for the i.MX6ull from NXP.
The upstream DTS is used, support should be fairly complete:

- 2x fec ethernet
- 1x USB Host
- 1x USB OTG
- 2x SD

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/Makefile                           |  1 +
 arch/arm/boards/nxp-imx6ull-evk/Makefile           |  2 +
 arch/arm/boards/nxp-imx6ull-evk/board.c            | 50 +++++++++++++++
 .../flash-header-nxp-imx6ull-evk.imxcfg            | 75 ++++++++++++++++++++++
 arch/arm/boards/nxp-imx6ull-evk/lowlevel.c         | 74 +++++++++++++++++++++
 arch/arm/dts/Makefile                              |  1 +
 arch/arm/dts/imx6ull-14x14-evk.dts                 | 29 +++++++++
 arch/arm/mach-imx/Kconfig                          |  8 +++
 arch/arm/mach-imx/include/mach/imx6-regs.h         |  1 +
 images/Makefile.imx                                |  5 ++
 10 files changed, 246 insertions(+)
 create mode 100644 arch/arm/boards/nxp-imx6ull-evk/Makefile
 create mode 100644 arch/arm/boards/nxp-imx6ull-evk/board.c
 create mode 100644 arch/arm/boards/nxp-imx6ull-evk/flash-header-nxp-imx6ull-evk.imxcfg
 create mode 100644 arch/arm/boards/nxp-imx6ull-evk/lowlevel.c
 create mode 100644 arch/arm/dts/imx6ull-14x14-evk.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index d6011adb28..456e6fea4b 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -78,6 +78,7 @@ obj-$(CONFIG_MACH_NOMADIK_8815NHK)		+= nhk8815/
 obj-$(CONFIG_MACH_NVIDIA_BEAVER)		+= nvidia-beaver/
 obj-$(CONFIG_MACH_NVIDIA_JETSON)		+= nvidia-jetson-tk1/
 obj-$(CONFIG_MACH_NXDB500)			+= netx/
+obj-$(CONFIG_MACH_NXP_IMX6ULL_EVK)		+= nxp-imx6ull-evk/
 obj-$(CONFIG_MACH_OMAP343xSDP)			+= omap343xdsp/
 obj-$(CONFIG_MACH_OMAP3EVM)			+= omap3evm/
 obj-$(CONFIG_MACH_PANDA)			+= panda/
diff --git a/arch/arm/boards/nxp-imx6ull-evk/Makefile b/arch/arm/boards/nxp-imx6ull-evk/Makefile
new file mode 100644
index 0000000000..01c7a259e9
--- /dev/null
+++ b/arch/arm/boards/nxp-imx6ull-evk/Makefile
@@ -0,0 +1,2 @@
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/nxp-imx6ull-evk/board.c b/arch/arm/boards/nxp-imx6ull-evk/board.c
new file mode 100644
index 0000000000..a0ca268f82
--- /dev/null
+++ b/arch/arm/boards/nxp-imx6ull-evk/board.c
@@ -0,0 +1,50 @@
+/*
+ * Copyright (C) 2017 Sascha Hauer, Pengutronix
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation.
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <mach/bbu.h>
+#include <linux/phy.h>
+
+#include <linux/micrel_phy.h>
+
+static int ksz8081_phy_fixup(struct phy_device *dev)
+{
+	phy_write(dev, 0x1f, 0x8190);
+	phy_write(dev, 0x16, 0x202);
+
+	return 0;
+}
+
+static int nxp_imx6ull_evk_init(void)
+{
+	if (!of_machine_is_compatible("fsl,imx6ull-14x14-evk"))
+		return 0;
+
+	phy_register_fixup_for_uid(PHY_ID_KSZ8081, MICREL_PHY_ID_MASK,
+			ksz8081_phy_fixup);
+
+	imx6_bbu_internal_mmc_register_handler("mmc", "/dev/mmc1.barebox",
+			BBU_HANDLER_FLAG_DEFAULT);
+
+	barebox_set_hostname("imx6ull-evk");
+
+	return 0;
+}
+device_initcall(nxp_imx6ull_evk_init);
diff --git a/arch/arm/boards/nxp-imx6ull-evk/flash-header-nxp-imx6ull-evk.imxcfg b/arch/arm/boards/nxp-imx6ull-evk/flash-header-nxp-imx6ull-evk.imxcfg
new file mode 100644
index 0000000000..a507ab3e24
--- /dev/null
+++ b/arch/arm/boards/nxp-imx6ull-evk/flash-header-nxp-imx6ull-evk.imxcfg
@@ -0,0 +1,75 @@
+/*
+ * Copyright (C) 2016 Freescale Semiconductor, Inc.
+ *
+ * SPDX-License-Identifier:	GPL-2.0+
+ *
+ * Values taken from U-Boot-2017.07-rc1
+ *
+ */
+
+loadaddr 0x80000000
+soc imx6
+dcdofs 0x400
+
+/* Enable all clocks */
+wm 32 0x020c4068 0xffffffff
+wm 32 0x020c406c 0xffffffff
+wm 32 0x020c4070 0xffffffff
+wm 32 0x020c4074 0xffffffff
+wm 32 0x020c4078 0xffffffff
+wm 32 0x020c407c 0xffffffff
+wm 32 0x020c4080 0xffffffff
+
+wm 32 0x020e04b4 0x000c0000
+wm 32 0x020e04ac 0x00000000
+wm 32 0x020e027c 0x00000030
+wm 32 0x020e0250 0x00000030
+wm 32 0x020e024c 0x00000030
+wm 32 0x020e0490 0x00000030
+wm 32 0x020e0288 0x000c0030
+wm 32 0x020e0270 0x00000000
+wm 32 0x020e0260 0x00000030
+wm 32 0x020e0264 0x00000030
+wm 32 0x020e04a0 0x00000030
+wm 32 0x020e0494 0x00020000
+wm 32 0x020e0280 0x00000030
+wm 32 0x020e0284 0x00000030
+wm 32 0x020e04b0 0x00020000
+wm 32 0x020e0498 0x00000030
+wm 32 0x020e04a4 0x00000030
+wm 32 0x020e0244 0x00000030
+wm 32 0x020e0248 0x00000030
+wm 32 0x021b001c 0x00008000
+wm 32 0x021b0800 0xa1390003
+wm 32 0x021b080c 0x00000004
+wm 32 0x021b083c 0x41640158
+wm 32 0x021b0848 0x40403237
+wm 32 0x021b0850 0x40403c33
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b082c 0xf3333333
+wm 32 0x021b0830 0xf3333333
+wm 32 0x021b08c0 0x00944009
+wm 32 0x021b08b8 0x00000800
+wm 32 0x021b0004 0x0002002d
+wm 32 0x021b0008 0x1b333030
+wm 32 0x021b000c 0x676b52f3
+wm 32 0x021b0010 0xb66d0b63
+wm 32 0x021b0014 0x01ff00db
+wm 32 0x021b0018 0x00201740
+wm 32 0x021b001c 0x00008000
+wm 32 0x021b002c 0x000026d2
+wm 32 0x021b0030 0x006b1023
+wm 32 0x021b0040 0x0000004f
+wm 32 0x021b0000 0x84180000
+wm 32 0x021b0890 0x00400000
+wm 32 0x021b001c 0x02008032
+wm 32 0x021b001c 0x00008033
+wm 32 0x021b001c 0x00048031
+wm 32 0x021b001c 0x15208030
+wm 32 0x021b001c 0x04008040
+wm 32 0x021b0020 0x00000800
+wm 32 0x021b0818 0x00000227
+wm 32 0x021b0004 0x0002552d
+wm 32 0x021b0404 0x00011006
+wm 32 0x021b001c 0x00000000
diff --git a/arch/arm/boards/nxp-imx6ull-evk/lowlevel.c b/arch/arm/boards/nxp-imx6ull-evk/lowlevel.c
new file mode 100644
index 0000000000..bb2e3623dc
--- /dev/null
+++ b/arch/arm/boards/nxp-imx6ull-evk/lowlevel.c
@@ -0,0 +1,74 @@
+/*
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
+#include <common.h>
+#include <linux/sizes.h>
+#include <mach/generic.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/imx6-regs.h>
+#include <io.h>
+#include <debug_ll.h>
+#include <mach/esdctl.h>
+#include <asm/cache.h>
+#include <asm/sections.h>
+#include <image-metadata.h>
+
+static inline void setup_uart(void)
+{
+	void __iomem *iomuxbase = IOMEM(MX6_IOMUXC_BASE_ADDR);
+	void __iomem *uart = IOMEM(MX6_UART1_BASE_ADDR);
+
+	imx6_ungate_all_peripherals();
+
+	writel(0x0, iomuxbase + 0x84);
+	writel(0x1b0b1, iomuxbase + 0x0310);
+
+	writel(0x0, iomuxbase + 0x88);
+	writel(0x1b0b0, iomuxbase + 0x0314);
+
+	writel(0x3, iomuxbase + 0x624);
+
+	imx6_uart_setup(uart);
+
+	pbl_set_putc(imx_uart_putc, uart);
+
+	putc_ll('>');
+}
+
+extern char __dtb_imx6ull_14x14_evk_start[];
+
+static noinline void nxp_imx6_ull(void)
+{
+	imx6ul_barebox_entry(__dtb_imx6ull_14x14_evk_start);
+}
+
+ENTRY_FUNCTION(start_nxp_imx6ull_evk, r0, r1, r2)
+{
+
+	imx6ul_cpu_lowlevel_init();
+
+	arm_setup_stack(0x00910000 - 8);
+
+	arm_early_mmu_cache_invalidate();
+
+	relocate_to_current_adr();
+	setup_c();
+
+	setup_uart();
+
+	/* disable all watchdog powerdown counters */
+	writew(0x0, IOMEM(MX6_WDOG1_BASE_ADDR + 0x8));
+	writew(0x0, IOMEM(MX6_WDOG2_BASE_ADDR + 0x8));
+	writew(0x0, IOMEM(MX6ULL_WDOG3_BASE_ADDR + 0x8));
+
+	nxp_imx6_ull();
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index cf9d8ea940..33b2fff0f7 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -80,6 +80,7 @@ pbl-dtb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += imx6dl-hummingboard.dtb.o imx6q-humm
 				imx6q-h100.dtb.o
 pbl-dtb-$(CONFIG_MACH_TECHNEXION_WANDBOARD) += imx6q-wandboard.dtb.o imx6dl-wandboard.dtb.o
 pbl-dtb-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += imx6ul-pico-hobbit.dtb.o
+pbl-dtb-$(CONFIG_MACH_NXP_IMX6ULL_EVK) += imx6ull-14x14-evk.dtb.o
 pbl-dtb-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += tegra20-colibri-iris.dtb.o
 pbl-dtb-$(CONFIG_MACH_TOSHIBA_AC100) += tegra20-paz00.dtb.o
 pbl-dtb-$(CONFIG_MACH_TQMA53) += imx53-mba53.dtb.o
diff --git a/arch/arm/dts/imx6ull-14x14-evk.dts b/arch/arm/dts/imx6ull-14x14-evk.dts
new file mode 100644
index 0000000000..9afe6402a2
--- /dev/null
+++ b/arch/arm/dts/imx6ull-14x14-evk.dts
@@ -0,0 +1,29 @@
+#include <arm/imx6ull-14x14-evk.dts>
+
+/{
+	chosen {
+		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &environment_usdhc2;
+		};
+	};
+};
+
+&usdhc2 {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0xc0000>;
+	};
+
+	environment_usdhc2: partition@c0000 {
+		label = "barebox-environment";
+		reg = <0xc0000 0x40000>;
+	};
+};
+
+&ocotp {
+	barebox,provide-mac-address = <&fec1 0x620 &fec2 0x632>;
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 92440e3a75..dab19a33ec 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -162,6 +162,10 @@ config ARCH_IMX6UL
 	bool
 	select ARCH_IMX6
 
+config ARCH_IMX6ULL
+	bool
+	select ARCH_IMX6
+
 config ARCH_IMX7
 	bool
 	select CPU_V7
@@ -414,6 +418,10 @@ config MACH_FREESCALE_MX7_SABRESD
 
 	  https://goo.gl/6EKGdk
 
+config MACH_NXP_IMX6ULL_EVK
+	bool "NXP i.MX6ull EVK Board"
+	select ARCH_IMX6ULL
+
 endif
 
 # ----------------------------------------------------------
diff --git a/arch/arm/mach-imx/include/mach/imx6-regs.h b/arch/arm/mach-imx/include/mach/imx6-regs.h
index e661c4ed12..ac2aa2109f 100644
--- a/arch/arm/mach-imx/include/mach/imx6-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx6-regs.h
@@ -107,6 +107,7 @@
 #define MX6_MIPI_CSI2_BASE_ADDR         (MX6_AIPS2_OFF_BASE_ADDR + 0x5C000)
 #define MX6_MIPI_DSI_BASE_ADDR          (MX6_AIPS2_OFF_BASE_ADDR + 0x60000)
 #define MX6_VDOA_BASE_ADDR              (MX6_AIPS2_OFF_BASE_ADDR + 0x64000)
+#define MX6ULL_WDOG3_BASE_ADDR          (MX6_AIPS2_OFF_BASE_ADDR + 0x64000)
 #define MX6_UART2_BASE_ADDR             (MX6_AIPS2_OFF_BASE_ADDR + 0x68000)
 #define MX6_UART3_BASE_ADDR             (MX6_AIPS2_OFF_BASE_ADDR + 0x6C000)
 #define MX6_UART4_BASE_ADDR             (MX6_AIPS2_OFF_BASE_ADDR + 0x70000)
diff --git a/images/Makefile.imx b/images/Makefile.imx
index e9176022bf..76e91ebd7d 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -325,6 +325,11 @@ CFG_start_imx6ul_pico_hobbit_512mb.pblx.imximg = $(board)/technexion-pico-hobbit
 FILE_barebox-imx6ul-pico-hobbit-512mb.img = start_imx6ul_pico_hobbit_512mb.pblx.imximg
 image-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += barebox-imx6ul-pico-hobbit-512mb.img
 
+pblx-$(CONFIG_MACH_NXP_IMX6ULL_EVK) += start_nxp_imx6ull_evk
+CFG_start_nxp_imx6ull_evk.pblx.imximg = $(board)/nxp-imx6ull-evk/flash-header-nxp-imx6ull-evk.imxcfg
+FILE_barebox-nxp-imx6ull-evk.img = start_nxp_imx6ull_evk.pblx.imximg
+image-$(CONFIG_MACH_NXP_IMX6ULL_EVK) += barebox-nxp-imx6ull-evk.img
+
 pblx-$(CONFIG_MACH_NITROGEN6) += start_imx6q_nitrogen6x_1g
 CFG_start_imx6q_nitrogen6x_1g.pblx.imximg = $(board)/boundarydevices-nitrogen6/flash-header-nitrogen6q-1g.imxcfg
 FILE_barebox-boundarydevices-imx6q-nitrogen6x-1g.img = start_imx6q_nitrogen6x_1g.pblx.imximg
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
