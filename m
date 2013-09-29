Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VQN7n-00023Y-5H
 for barebox@lists.infradead.org; Sun, 29 Sep 2013 19:57:55 +0000
Received: from tellur.localdomain (p54831980.dip0.t-ipconnect.de
 [84.131.25.128]) by lynxeye.de (Postfix) with ESMTPA id 14A8526C2002
 for <barebox@lists.infradead.org>; Sun, 29 Sep 2013 21:56:11 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 29 Sep 2013 21:59:36 +0200
Message-Id: <1380484776-32266-9-git-send-email-dev@lynxeye.de>
In-Reply-To: <1380484776-32266-1-git-send-email-dev@lynxeye.de>
References: <1380484776-32266-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 8/8] tegra: switch to multi image
To: barebox@lists.infradead.org

To keep things clean I removed all support for the old way to build
images. There is now a single tegra_v7 defconfig which builds both
supported Tegra boards as images.
The new image generation also paves the way for integration of the
tegra-cbootimage tool to produce directly flashable images.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/Kconfig                                  |  3 +-
 arch/arm/boards/Makefile                          |  1 +
 arch/arm/boards/toradex-colibri-t20-iris/Makefile |  2 ++
 arch/arm/boards/toradex-colibri-t20-iris/entry.c  | 36 +++++++++++++++++++
 arch/arm/boards/toshiba-ac100/Makefile            |  2 ++
 arch/arm/boards/toshiba-ac100/entry.c             | 36 +++++++++++++++++++
 arch/arm/configs/tegra20_colibri_iris_defconfig   | 24 -------------
 arch/arm/configs/tegra_v7_defconfig               | 27 +++++++++++++++
 arch/arm/configs/toshiba_ac100_defconfig          | 42 -----------------------
 arch/arm/dts/Makefile                             |  5 +++
 arch/arm/mach-tegra/Kconfig                       | 20 ++++-------
 arch/arm/mach-tegra/include/mach/lowlevel.h       | 15 ++++++++
 arch/arm/mach-tegra/include/mach/tegra20-pmc.h    |  2 ++
 arch/arm/mach-tegra/tegra_avp_init.c              | 19 +++-------
 arch/arm/mach-tegra/tegra_maincomplex_init.c      |  4 ++-
 images/Makefile                                   |  1 +
 images/Makefile.tegra                             | 14 ++++++++
 17 files changed, 157 insertions(+), 96 deletions(-)
 create mode 100644 arch/arm/boards/toradex-colibri-t20-iris/Makefile
 create mode 100644 arch/arm/boards/toradex-colibri-t20-iris/entry.c
 create mode 100644 arch/arm/boards/toshiba-ac100/entry.c
 delete mode 100644 arch/arm/configs/tegra20_colibri_iris_defconfig
 create mode 100644 arch/arm/configs/tegra_v7_defconfig
 delete mode 100644 arch/arm/configs/toshiba_ac100_defconfig
 create mode 100644 images/Makefile.tegra

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 2ad8f6a..b4b430f 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -165,12 +165,13 @@ config ARCH_TEGRA
 	bool "NVIDIA Tegra"
 	select CPU_V7
 	select HAS_DEBUG_LL
-	select BUILTIN_DTB
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
 	select CLKDEV_LOOKUP
 	select GPIOLIB
 	select GPIO_TEGRA
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
+	select HAVE_PBL_MULTI_IMAGES
 	select OFDEVICE
 	select OFTREE
 	select RELOCATABLE
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 2210fd4..c273f0c 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -80,6 +80,7 @@ obj-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT)	+= terasic-sockit/
 obj-$(CONFIG_MACH_TNY_A9260)			+= tny-a926x/
 obj-$(CONFIG_MACH_TNY_A9263)			+= tny-a926x/
 obj-$(CONFIG_MACH_TNY_A9G20)			+= tny-a926x/
+obj-$(CONFIG_MACH_TORADEX_COLIBRI_T20_IRIS)	+= toradex-colibri-t20-iris/
 obj-$(CONFIG_MACH_TOSHIBA_AC100)		+= toshiba-ac100/
 obj-$(CONFIG_MACH_TQMA53)			+= tqma53/
 obj-$(CONFIG_MACH_TQMA6X)			+= tqma6x/
diff --git a/arch/arm/boards/toradex-colibri-t20-iris/Makefile b/arch/arm/boards/toradex-colibri-t20-iris/Makefile
new file mode 100644
index 0000000..5be3dd0
--- /dev/null
+++ b/arch/arm/boards/toradex-colibri-t20-iris/Makefile
@@ -0,0 +1,2 @@
+CFLAGS_pbl-entry.o := -mcpu=arm7tdmi -march=armv4t
+lwl-y += entry.o
diff --git a/arch/arm/boards/toradex-colibri-t20-iris/entry.c b/arch/arm/boards/toradex-colibri-t20-iris/entry.c
new file mode 100644
index 0000000..30a13e0
--- /dev/null
+++ b/arch/arm/boards/toradex-colibri-t20-iris/entry.c
@@ -0,0 +1,36 @@
+/*
+ * Copyright (C) 2013 Lucas Stach <l.stach@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+#include <mach/lowlevel.h>
+
+extern char __dtb_tegra20_colibri_iris_start[];
+
+ENTRY_FUNCTION(start_toradex_colibri_t20_iris)(void)
+{
+	uint32_t fdt;
+
+	__barebox_arm_head();
+
+	tegra_cpu_lowlevel_setup();
+
+	fdt = (uint32_t)__dtb_tegra20_colibri_iris_start - get_runtime_offset();
+
+	tegra_avp_reset_vector(fdt);
+}
diff --git a/arch/arm/boards/toshiba-ac100/Makefile b/arch/arm/boards/toshiba-ac100/Makefile
index dcfc293..4ef18c0 100644
--- a/arch/arm/boards/toshiba-ac100/Makefile
+++ b/arch/arm/boards/toshiba-ac100/Makefile
@@ -1 +1,3 @@
+CFLAGS_pbl-entry.o := -mcpu=arm7tdmi -march=armv4t
+lwl-y += entry.o
 obj-y += board.o
diff --git a/arch/arm/boards/toshiba-ac100/entry.c b/arch/arm/boards/toshiba-ac100/entry.c
new file mode 100644
index 0000000..372d596
--- /dev/null
+++ b/arch/arm/boards/toshiba-ac100/entry.c
@@ -0,0 +1,36 @@
+/*
+ * Copyright (C) 2013 Lucas Stach <l.stach@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+#include <mach/lowlevel.h>
+
+extern char __dtb_tegra20_paz00_start[];
+
+ENTRY_FUNCTION(start_toshiba_ac100)(void)
+{
+	uint32_t fdt;
+
+	__barebox_arm_head();
+
+	tegra_cpu_lowlevel_setup();
+
+	fdt = (uint32_t)__dtb_tegra20_paz00_start - get_runtime_offset();
+
+	tegra_avp_reset_vector(fdt);
+}
diff --git a/arch/arm/configs/tegra20_colibri_iris_defconfig b/arch/arm/configs/tegra20_colibri_iris_defconfig
deleted file mode 100644
index 37a0e8a..0000000
--- a/arch/arm/configs/tegra20_colibri_iris_defconfig
+++ /dev/null
@@ -1,24 +0,0 @@
-CONFIG_BUILTIN_DTB_NAME="tegra20-colibri-iris"
-CONFIG_ARCH_TEGRA=y
-CONFIG_AEABI=y
-CONFIG_CMD_ARM_MMUINFO=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_STACK_SIZE=0x10000
-CONFIG_MALLOC_SIZE=0x4000000
-CONFIG_LONGHELP=y
-CONFIG_GLOB=y
-CONFIG_GLOB_SORT=y
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_HUSH_GETOPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_BOOTZ=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_CLK=y
-CONFIG_DRIVER_SERIAL_NS16550=y
diff --git a/arch/arm/configs/tegra_v7_defconfig b/arch/arm/configs/tegra_v7_defconfig
new file mode 100644
index 0000000..677a955
--- /dev/null
+++ b/arch/arm/configs/tegra_v7_defconfig
@@ -0,0 +1,27 @@
+CONFIG_ARCH_TEGRA=y
+CONFIG_MACH_TORADEX_COLIBRI_T20_IRIS=y
+CONFIG_MACH_TOSHIBA_AC100=y
+CONFIG_AEABI=y
+CONFIG_CMD_ARM_MMUINFO=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_UNWIND=y
+CONFIG_MMU=y
+CONFIG_STACK_SIZE=0x10000
+CONFIG_MALLOC_SIZE=0x4000000
+CONFIG_LONGHELP=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_BOOTZ=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_CLK=y
+CONFIG_DRIVER_SERIAL_NS16550=y
diff --git a/arch/arm/configs/toshiba_ac100_defconfig b/arch/arm/configs/toshiba_ac100_defconfig
deleted file mode 100644
index 1903910..0000000
--- a/arch/arm/configs/toshiba_ac100_defconfig
+++ /dev/null
@@ -1,42 +0,0 @@
-CONFIG_BUILTIN_DTB_NAME="tegra20-paz00"
-CONFIG_ARCH_TEGRA=y
-CONFIG_TEGRA_UART_A=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_TEXT_BASE=0x01000000
-CONFIG_BROKEN=y
-CONFIG_EXPERIMENTAL=y
-CONFIG_PROMPT="toshiba ac100> "
-CONFIG_LONGHELP=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-# CONFIG_ERRNO_MESSAGES is not set
-# CONFIG_DEFAULT_ENVIRONMENT is not set
-CONFIG_POLLER=y
-CONFIG_ENABLE_DEVICE_NOISE=y
-CONFIG_CMD_SLEEP=y
-# CONFIG_CMD_TRUE is not set
-# CONFIG_CMD_FALSE is not set
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_LOADY=y
-CONFIG_CMD_LOADS=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_SHA1SUM=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_NET=y
-CONFIG_NET_DHCP=y
-CONFIG_NET_PING=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_NET_USB=y
-CONFIG_NET_USB_ASIX=y
-# CONFIG_SPI is not set
-CONFIG_USB=y
-CONFIG_USB_EHCI=y
-CONFIG_USB_STORAGE=y
-CONFIG_FS_TFTP=y
-CONFIG_FS_FAT=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 7782874..511adf4 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -13,6 +13,9 @@ dtb-$(CONFIG_ARCH_IMX6) += imx6q-gk802.dtb \
 dtb-$(CONFIG_ARCH_MVEBU) += dove-cubox.dtb
 dtb-$(CONFIG_ARCH_SOCFPGA) += socfpga_cyclone5_sockit.dtb \
 	socfpga_cyclone5_socrates.dtb
+dtb-$(CONFIG_ARCH_TEGRA) += \
+	tegra20-colibri-iris.dtb \
+	tegra20-paz00.dtb
 
 BUILTIN_DTB := $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_NAME))
 obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
@@ -25,6 +28,8 @@ pbl-$(CONFIG_MACH_PHYTEC_PFLA02) += imx6q-phytec-pbab01.dtb.o
 pbl-$(CONFIG_MACH_REALQ7) += imx6q-dmo-realq7.dtb.o
 pbl-$(CONFIG_MACH_SOLIDRUN_CUBOX) += dove-cubox.dtb.o
 pbl-$(CONFIG_MACH_GK802) += imx6q-gk802.dtb.o
+pbl-$(CONFIG_MACH_TORADEX_COLIBRI_T20_IRIS) += tegra20-colibri-iris.dtb.o
+pbl-$(CONFIG_MACH_TOSHIBA_AC100) += tegra20-paz00.dtb.o
 pbl-$(CONFIG_MACH_TQMA6X) += imx6dl-mba6x.dtb.o imx6q-mba6x.dtb.o
 pbl-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += socfpga_cyclone5_socrates.dtb.o
 pbl-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += socfpga_cyclone5_sockit.dtb.o
diff --git a/arch/arm/mach-tegra/Kconfig b/arch/arm/mach-tegra/Kconfig
index 4363bce..3becb84 100644
--- a/arch/arm/mach-tegra/Kconfig
+++ b/arch/arm/mach-tegra/Kconfig
@@ -4,6 +4,9 @@ config ARCH_TEXT_BASE
 	hex
 	default 0x0
 
+config BOARDINFO
+	default ""
+
 choice
 	prompt "Tegra debug UART"
 	help
@@ -43,26 +46,17 @@ config ARCH_TEGRA_2x_SOC
 	bool
 	select PINCTRL_TEGRA20
 
-choice
-	prompt "select Tegra Board"
+menu "select Tegra boards to be built"
 
-config MACH_TEGRA20_GENERIC
-	bool "Generic DT based board"
+config MACH_TORADEX_COLIBRI_T20_IRIS
+	bool "Toradex Colibri T20 on Iris Carrier"
 	select ARCH_TEGRA_2x_SOC
-	help
-	  Say Y here if you are building for a generic DT based board.
 
 config MACH_TOSHIBA_AC100
 	bool "Toshiba AC100"
 	select ARCH_TEGRA_2x_SOC
-	help
-	  Say Y here if you are using Toshiba AC100 smartbook.
-
-endchoice
-
-if MACH_TEGRA20_GENERIC
 
-endif #MACH_TEGRA20_GENERIC
+endmenu
 
 # ---------------------------------------------------------
 
diff --git a/arch/arm/mach-tegra/include/mach/lowlevel.h b/arch/arm/mach-tegra/include/mach/lowlevel.h
index 2d3f312..472348a 100644
--- a/arch/arm/mach-tegra/include/mach/lowlevel.h
+++ b/arch/arm/mach-tegra/include/mach/lowlevel.h
@@ -172,5 +172,20 @@ int tegra_get_osc_clock(void)
 	}
 }
 
+static inline __attribute__((always_inline))
+void tegra_cpu_lowlevel_setup(void)
+{
+	uint32_t r;
+
+	/* set the cpu to SVC32 mode */
+	__asm__ __volatile__("mrs %0, cpsr":"=r"(r));
+	r &= ~0x1f;
+	r |= 0xd3;
+	__asm__ __volatile__("msr cpsr, %0" : : "r"(r));
+}
+
+/* reset vector for the AVP, to be called from board reset vector */
+void tegra_avp_reset_vector(uint32_t boarddata);
+
 /* reset vector for the main CPU complex */
 void tegra_maincomplex_entry(void);
diff --git a/arch/arm/mach-tegra/include/mach/tegra20-pmc.h b/arch/arm/mach-tegra/include/mach/tegra20-pmc.h
index d56b845..3a05e0f 100644
--- a/arch/arm/mach-tegra/include/mach/tegra20-pmc.h
+++ b/arch/arm/mach-tegra/include/mach/tegra20-pmc.h
@@ -65,3 +65,5 @@
 #define PMC_PWRGATE_STATUS_VE		(1 << 2)
 #define PMC_PWRGATE_STATUS_TD		(1 << 1)
 #define PMC_PWRGATE_STATUS_CPU		(1 << 0)
+
+#define PMC_SCRATCH(i)			(0x050 + 0x4*i)
diff --git a/arch/arm/mach-tegra/tegra_avp_init.c b/arch/arm/mach-tegra/tegra_avp_init.c
index 557af66..6cabdb3 100644
--- a/arch/arm/mach-tegra/tegra_avp_init.c
+++ b/arch/arm/mach-tegra/tegra_avp_init.c
@@ -24,17 +24,6 @@
 #include <mach/tegra20-car.h>
 #include <mach/tegra20-pmc.h>
 
-static inline void tegra_cpu_lowlevel_setup(void)
-{
-	uint32_t r;
-
-	/* set the cpu to SVC32 mode */
-	__asm__ __volatile__("mrs %0, cpsr":"=r"(r));
-	r &= ~0x1f;
-	r |= 0xd3;
-	__asm__ __volatile__("msr cpsr, %0" : : "r"(r));
-}
-
 /* instruct the PMIC to enable the CPU power rail */
 static void enable_maincomplex_powerrail(void)
 {
@@ -186,13 +175,10 @@ static void maincomplex_powerup(void)
 		writel(reg, TEGRA_PMC_BASE + PMC_REMOVE_CLAMPING_CMD);
 	}
 }
-void barebox_arm_reset_vector(void)
+void tegra_avp_reset_vector(uint32_t boarddata)
 {
 	int num_cores;
 
-	/* minimal initialization, OK for both ARMv4 and ARMv7 */
-	tegra_cpu_lowlevel_setup();
-
 	/* get the number of cores in the main CPU complex of the current SoC */
 	num_cores = tegra_get_num_cores();
 
@@ -205,6 +191,9 @@ void barebox_arm_reset_vector(void)
 	writel(tegra_maincomplex_entry - get_runtime_offset(),
 	       TEGRA_EXCEPTION_VECTORS_BASE + 0x100);
 
+	/* put boarddata in scratch reg, for main CPU to fetch after startup */
+	writel(boarddata, TEGRA_PMC_BASE + PMC_SCRATCH(10));
+
 	/* bring up main CPU complex */
 	start_cpu0_clocks();
 	maincomplex_powerup();
diff --git a/arch/arm/mach-tegra/tegra_maincomplex_init.c b/arch/arm/mach-tegra/tegra_maincomplex_init.c
index c485760..b3d59ab 100644
--- a/arch/arm/mach-tegra/tegra_maincomplex_init.c
+++ b/arch/arm/mach-tegra/tegra_maincomplex_init.c
@@ -19,6 +19,7 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <mach/lowlevel.h>
+#include <mach/tegra20-pmc.h>
 
 void tegra_maincomplex_entry(void)
 {
@@ -36,5 +37,6 @@ void tegra_maincomplex_entry(void)
 		unreachable();
 	}
 
-	barebox_arm_entry(rambase, ramsize, 0);
+	barebox_arm_entry(rambase, ramsize,
+			  readl(TEGRA_PMC_BASE + PMC_SCRATCH(10)));
 }
diff --git a/images/Makefile b/images/Makefile
index ac5cf8c..31e74f3 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -109,6 +109,7 @@ $(obj)/%.img: $(obj)/$$(FILE_$$(@F))
 include $(srctree)/images/Makefile.imx
 include $(srctree)/images/Makefile.mvebu
 include $(srctree)/images/Makefile.socfpga
+include $(srctree)/images/Makefile.tegra
 
 targets += $(image-y) pbl.lds barebox.x barebox.z
 targets += $(patsubst %,%.pblx,$(pblx-y))
diff --git a/images/Makefile.tegra b/images/Makefile.tegra
new file mode 100644
index 0000000..1cf1432
--- /dev/null
+++ b/images/Makefile.tegra
@@ -0,0 +1,14 @@
+#
+# barebox image generation Makefile for Tegra images
+#
+
+board = $(srctree)/arch/$(ARCH)/boards
+
+# ----------------------- Tegra20 based boards ---------------------------
+pblx-$(CONFIG_MACH_TOSHIBA_AC100) += start_toshiba_ac100
+FILE_barebox-tegra20-toshiba-ac100.img = start_toshiba_ac100.pblx
+image-$(CONFIG_MACH_TOSHIBA_AC100) += barebox-tegra20-toshiba-ac100.img
+
+pblx-$(CONFIG_MACH_TORADEX_COLIBRI_T20_IRIS) += start_toradex_colibri_t20_iris
+FILE_barebox-tegra20-toradex-colibri-t20-iris.img = start_toradex_colibri_t20_iris.pblx
+image-$(CONFIG_MACH_TORADEX_COLIBRI_T20_IRIS) += barebox-tegra20-toradex-colibri-t20-iris.img
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
