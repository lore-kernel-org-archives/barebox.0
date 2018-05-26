Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x242.google.com ([2607:f8b0:400e:c01::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fMg6g-0005O8-Vi
 for barebox@lists.infradead.org; Sat, 26 May 2018 20:50:01 +0000
Received: by mail-pl0-x242.google.com with SMTP id t12-v6so5020507plo.7
 for <barebox@lists.infradead.org>; Sat, 26 May 2018 13:47:56 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 26 May 2018 13:44:50 -0700
Message-Id: <20180526204451.16530-48-andrew.smirnov@gmail.com>
In-Reply-To: <20180526204451.16530-1-andrew.smirnov@gmail.com>
References: <20180526204451.16530-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 47/48] ARM: i.MX8: Add i.MX8mq EVK support
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/boards/imx.rst                  |   10 +-
 Documentation/boards/imx/nxp-imx8mq-evk.rst   |  124 ++
 arch/arm/boards/Makefile                      |    1 +
 arch/arm/boards/nxp-imx8mq-evk/.gitignore     |    1 +
 arch/arm/boards/nxp-imx8mq-evk/Makefile       |   10 +
 arch/arm/boards/nxp-imx8mq-evk/board.c        |   44 +
 arch/arm/boards/nxp-imx8mq-evk/ddr.h          |  559 +++++++++
 arch/arm/boards/nxp-imx8mq-evk/ddr_init.c     |  223 ++++
 arch/arm/boards/nxp-imx8mq-evk/ddrphy_train.c | 1026 +++++++++++++++++
 .../flash-header-imx8mq-evk.imxcfg            |    4 +
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c     |   81 ++
 arch/arm/dts/Makefile                         |    1 +
 arch/arm/dts/imx8mq-evk.dts                   |  444 +++++++
 arch/arm/mach-imx/Kconfig                     |    4 +
 images/Makefile.imx                           |    7 +
 scripts/Makefile.lib                          |   22 +
 16 files changed, 2560 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/boards/imx/nxp-imx8mq-evk.rst
 create mode 100644 arch/arm/boards/nxp-imx8mq-evk/.gitignore
 create mode 100644 arch/arm/boards/nxp-imx8mq-evk/Makefile
 create mode 100644 arch/arm/boards/nxp-imx8mq-evk/board.c
 create mode 100644 arch/arm/boards/nxp-imx8mq-evk/ddr.h
 create mode 100644 arch/arm/boards/nxp-imx8mq-evk/ddr_init.c
 create mode 100644 arch/arm/boards/nxp-imx8mq-evk/ddrphy_train.c
 create mode 100644 arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
 create mode 100644 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
 create mode 100644 arch/arm/dts/imx8mq-evk.dts

diff --git a/Documentation/boards/imx.rst b/Documentation/boards/imx.rst
index 196513520..9ceb68bef 100644
--- a/Documentation/boards/imx.rst
+++ b/Documentation/boards/imx.rst
@@ -38,12 +38,19 @@ SD card::
   # otherwise:
   cat barebox-flash-image > /dev/sdd
 
+NOTE: Commands above will not work on i.MX8
+
 The above will overwrite the MBR (and consequently the partition table)
 on the destination SD card. To preserve the MBR while writing the rest
 of the image to the card, use::
 
   dd if=images/barebox-freescale-imx51-babbage.img of=/dev/sdd bs=1024 skip=1 seek=1
 
+NOTE: MaskROM on i.MX8 expects image to start at +33KiB mark, so the
+following command has to be used instead:
+
+  dd if=images/barebox-nxp-imx8mq-evk.img of=/dev/sdd bs=1024 skip=1 seek=33
+
 The images can also always be started second stage::
 
   bootm /mnt/tftp/barebox-freescale-imx51-babbage.img
@@ -59,7 +66,8 @@ options in this file are:
 Header:
 
 +----------------+--------------------------------------------------------------+
-| soc <soctype>  | soctype can be one of imx35, imx51, imx53, imx6, imx7, vf610 |
+| soc <soctype>  |soctype can be one of imx35, imx51, imx53, imx6, imx7, vf610, |
+|                |                             imx8                             |
 +----------------+--------------------------------------------------------------+
 | loadaddr <adr> |     The address the binary is uploaded to                    |
 +----------------+--------------------------------------------------------------+
diff --git a/Documentation/boards/imx/nxp-imx8mq-evk.rst b/Documentation/boards/imx/nxp-imx8mq-evk.rst
new file mode 100644
index 000000000..bf9008061
--- /dev/null
+++ b/Documentation/boards/imx/nxp-imx8mq-evk.rst
@@ -0,0 +1,124 @@
+NXP i.MX8MQ EVK Evaluation Board
+================================
+
+Board comes with:
+
+* 3GiB of LPDDR4 RAM
+* 16GiB eMMC
+
+Not including booting via serial, the device can boot from either SD or eMMC.
+
+Downloading DDR PHY Firmware
+----------------------------
+
+As a part of DDR intialization routine NXP i.MX8MQ EVK requires and
+uses several binary firmware blobs that are distributed under a
+separate EULA and cannot be included in Barebox. In order to obtain
+the do the following::
+
+ wget https://www.nxp.com/lgfiles/NMG/MAD/YOCTO/firmware-imx-7.2.bin
+ chmod +x firmware-imx-7.2.bin
+ ./firmware-imx-7.2.bin
+
+Executing that file should produce a EULA acceptance dialog as well as
+result int the following files:
+
+- lpddr4_pmu_train_1d_dmem.bin
+- lpddr4_pmu_train_1d_imem.bin
+- lpddr4_pmu_train_2d_dmem.bin
+- lpddr4_pmu_train_2d_imem.bin
+
+As a last step of this process those files need to be placed in
+"arch/arm/boards/nxp-imx8mq-evk"::
+
+  for f in lpddr4_pmu_train_1d_dmem  \
+           lpddr4_pmu_train_1d_imem  \
+	   lpddr4_pmu_train_2d_dmem  \
+	   lpddr4_pmu_train_2d_imem; \
+  do \
+	   cp firmware-imx-7.2/firmware/ddr/synopsys/${f}.bin \
+	      arch/arm/boards/nxp-imx8mq-evk/${f}.ddr-phy-fw; \
+  done
+
+DDR Configuration Code
+======================
+
+The following two files:
+
+  - ddr_init.c
+  - ddrphy_train.c
+
+were obtained by running i.MX 8M DDR Tool that can be found here:
+
+https://community.nxp.com/docs/DOC-340179
+
+Only minimal amount of necessary changes were made to those files.
+All of the "impedance matching" code is located in "ddr.h".
+
+Build Barebox
+=============
+
+ make imv_v8_defconfig
+ make
+
+Flashing the binary onto the SD card
+====================================
+
+Due to changes to MaskROM behaviour, i.MX8 deviates in this procedure
+slighty and command for placing barebox onto an SD card is as follows::
+
+  dd if=images/barebox-nxp-imx8mq-evk.img of=/dev/sdb bs=1024 skip=1 seek=33
+
+Boot Configuration
+==================
+
+The NXM i.MX8MQ EVK Evaluation Board has has two switches responsible
+for configuring bootsource/boot mode:
+
+ * SW802 for selecting appropriate BMOD
+ * SW801 for selecting appropriate boot medium
+
+In order to select internal boot set SW802 as follows::
+
+  +-----+
+  |     |
+  | O | | <--- on = high level
+  | | | |
+  | | O | <--- off = low level
+  |     |
+  | 1 2 |
+  +-----+
+
+Bootsource is the internal eMMC::
+
+  +---------+
+  |         |
+  | | | O | |
+  | | | | | |  <---- eMMC
+  | O O O O |
+  |         |
+  | 1 2 3 4 |
+  +---------+
+
+Bootsource is the SD2 slot::
+
+  +---------+
+  |         |
+  | O O | | |
+  | | | | | |  <---- SD2
+  | | | O O |
+  |         |
+  | 1 2 3 4 |
+  +---------+
+
+
+Serial boot SW802 setting needed for i.MX8 DDR Tool is as follows::
+
+  +-----+
+  |     |
+  | | O | <--- on = high level
+  | | | |
+  | O | | <--- off = low level
+  |     |
+  | 1 2 |
+  +-----+
\ No newline at end of file
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index b2fea4a40..711f9548f 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -80,6 +80,7 @@ obj-$(CONFIG_MACH_NVIDIA_BEAVER)		+= nvidia-beaver/
 obj-$(CONFIG_MACH_NVIDIA_JETSON)		+= nvidia-jetson-tk1/
 obj-$(CONFIG_MACH_NXDB500)			+= netx/
 obj-$(CONFIG_MACH_NXP_IMX6ULL_EVK)		+= nxp-imx6ull-evk/
+obj-$(CONFIG_MACH_NXP_IMX8MQ_EVK)		+= nxp-imx8mq-evk/
 obj-$(CONFIG_MACH_OMAP343xSDP)			+= omap343xdsp/
 obj-$(CONFIG_MACH_OMAP3EVM)			+= omap3evm/
 obj-$(CONFIG_MACH_PANDA)			+= panda/
diff --git a/arch/arm/boards/nxp-imx8mq-evk/.gitignore b/arch/arm/boards/nxp-imx8mq-evk/.gitignore
new file mode 100644
index 000000000..ef13747c9
--- /dev/null
+++ b/arch/arm/boards/nxp-imx8mq-evk/.gitignore
@@ -0,0 +1 @@
+*.ddr-phy-fw*
diff --git a/arch/arm/boards/nxp-imx8mq-evk/Makefile b/arch/arm/boards/nxp-imx8mq-evk/Makefile
new file mode 100644
index 000000000..c94a10dec
--- /dev/null
+++ b/arch/arm/boards/nxp-imx8mq-evk/Makefile
@@ -0,0 +1,10 @@
+obj-y += board.o
+lwl-y += lowlevel.o ddr_init.o ddrphy_train.o
+
+pbl-y += lpddr4_pmu_train_1d_dmem.ddr-phy-fw.o
+pbl-y += lpddr4_pmu_train_1d_imem.ddr-phy-fw.o
+pbl-y += lpddr4_pmu_train_2d_dmem.ddr-phy-fw.o
+pbl-y += lpddr4_pmu_train_2d_imem.ddr-phy-fw.o
+
+
+
diff --git a/arch/arm/boards/nxp-imx8mq-evk/board.c b/arch/arm/boards/nxp-imx8mq-evk/board.c
new file mode 100644
index 000000000..d93e21da1
--- /dev/null
+++ b/arch/arm/boards/nxp-imx8mq-evk/board.c
@@ -0,0 +1,44 @@
+/*
+ * Copyright (C) 2018 Sascha Hauer, Pengutronix
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
+#include <asm/memory.h>
+#include <linux/sizes.h>
+
+static int imx8mq_evk_mem_init(void)
+{
+	arm_add_mem_device("ram0", 0x40000000, SZ_2G);
+
+	request_sdram_region("ATF", 0x40000000, SZ_128K);
+
+	return 0;
+}
+mem_initcall(imx8mq_evk_mem_init);
+
+static int nxp_imx8mq_evk_init(void)
+{
+	if (!of_machine_is_compatible("fsl,imx8mq-evk"))
+		return 0;
+
+	barebox_set_hostname("imx8mq-evk");
+
+	return 0;
+}
+device_initcall(nxp_imx8mq_evk_init);
diff --git a/arch/arm/boards/nxp-imx8mq-evk/ddr.h b/arch/arm/boards/nxp-imx8mq-evk/ddr.h
new file mode 100644
index 000000000..056dcbd0c
--- /dev/null
+++ b/arch/arm/boards/nxp-imx8mq-evk/ddr.h
@@ -0,0 +1,559 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Copyright (c) 2018 Zodiac Inflight Innovation
+ * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
+ *
+ * Varios wrappers and macros needed to intgrate code generated by
+ * i.MX8M DDR Tool into rest of Barebox
+ */
+#include <common.h>
+#include <io.h>
+#include <mach/imx8mq-regs.h>
+#include <mach/imx8-ddrc.h>
+
+/*
+ * Code generated by i.MX8 M DDT Tool doesn't have any prefixes in the
+ * global identifiers below, so in order to avoid symbol name
+ * collisions with other boards we re-name them via a #define
+ */
+#define ddr_init	nxp_imx8mq_evk_ddr_init
+#define ddr_cfg_phy	nxp_imx8mq_evk_ddr_cfg_phy
+
+void nxp_imx8mq_evk_ddr_init(void);
+
+DDRC_PHY_FIRMWARE_DECLARE(lpddr4_pmu_train_1d_dmem);
+DDRC_PHY_FIRMWARE_DECLARE(lpddr4_pmu_train_1d_imem);
+DDRC_PHY_FIRMWARE_DECLARE(lpddr4_pmu_train_2d_dmem);
+DDRC_PHY_FIRMWARE_DECLARE(lpddr4_pmu_train_2d_imem);
+
+#define FW_1D_IMAGE					\
+	DDRC_PHY_FIRMWARE(lpddr4_pmu_train_1d_imem),	\
+	DDRC_PHY_FIRMWARE(lpddr4_pmu_train_1d_dmem)
+
+#define FW_2D_IMAGE					\
+	DDRC_PHY_FIRMWARE(lpddr4_pmu_train_2d_imem),	\
+	DDRC_PHY_FIRMWARE(lpddr4_pmu_train_2d_dmem)
+
+static inline void wait_ddrphy_training_complete(void)
+{
+	ddrc_phy_wait_training_complete(IOMEM(MX8MQ_DDRC_PHY_BASE_ADDR));
+}
+
+static inline void ddr_load_train_code(const u16 *imem, size_t imem_size,
+				       const u16 *dmem, size_t dmem_size)
+{
+	void __iomem *phy = IOMEM(MX8MQ_DDRC_PHY_BASE_ADDR);
+
+	ddrc_phy_load_firmware(phy, DDRC_PHY_IMEM, imem, imem_size);
+	ddrc_phy_load_firmware(phy, DDRC_PHY_DMEM, dmem, dmem_size);
+}
+
+#define reg32_write(a, v)	writel(v, a)
+#define reg32_read(a)		readl(a)
+
+#define DDRC_DDR_SS_GPR0         0x3d000000
+
+#define DDRC_IPS_BASE_ADDR(X) (0x3d400000 + (X * 0x2000000))
+#define DDRC_IPS_BASE_ADDR_0	0x3f400000
+
+#define DDRC_MSTR_0             0x3d400000
+#define DDRC_STAT_0             0x3d400004
+#define DDRC_MSTR1_0            0x3d400008
+#define DDRC_MRCTRL0_0          0x3d400010
+#define DDRC_MRCTRL1_0          0x3d400014
+#define DDRC_MRSTAT_0           0x3d400018
+#define DDRC_MRCTRL2_0          0x3d40001c
+#define DDRC_DERATEEN_0         0x3d400020
+#define DDRC_DERATEINT_0        0x3d400024
+#define DDRC_MSTR2_0            0x3d400028
+#define DDRC_PWRCTL_0           0x3d400030
+#define DDRC_PWRTMG_0           0x3d400034
+#define DDRC_HWLPCTL_0          0x3d400038
+#define DDRC_HWFFCCTL_0         0x3d40003c
+#define DDRC_HWFFCSTAT_0        0x3d400040
+#define DDRC_RFSHCTL0_0         0x3d400050
+#define DDRC_RFSHCTL1_0         0x3d400054
+#define DDRC_RFSHCTL2_0         0x3d400058
+#define DDRC_RFSHCTL3_0         0x3d400060
+#define DDRC_RFSHTMG_0          0x3d400064
+#define DDRC_ECCCFG0_0          0x3d400070
+#define DDRC_ECCCFG1_0          0x3d400074
+#define DDRC_ECCSTAT_0          0x3d400078
+#define DDRC_ECCCLR_0           0x3d40007c
+#define DDRC_ECCERRCNT_0        0x3d400080
+#define DDRC_ECCCADDR0_0        0x3d400084
+#define DDRC_ECCCADDR1_0        0x3d400088
+#define DDRC_ECCCSYN0_0         0x3d40008c
+#define DDRC_ECCCSYN1_0         0x3d400090
+#define DDRC_ECCCSYN2_0         0x3d400094
+#define DDRC_ECCBITMASK0_0      0x3d400098
+#define DDRC_ECCBITMASK1_0      0x3d40009c
+#define DDRC_ECCBITMASK2_0      0x3d4000a0
+#define DDRC_ECCUADDR0_0        0x3d4000a4
+#define DDRC_ECCUADDR1_0        0x3d4000a8
+#define DDRC_ECCUSYN0_0         0x3d4000ac
+#define DDRC_ECCUSYN1_0         0x3d4000b0
+#define DDRC_ECCUSYN2_0         0x3d4000b4
+#define DDRC_ECCPOISONADDR0_0   0x3d4000b8
+#define DDRC_ECCPOISONADDR1_0   0x3d4000bc
+#define DDRC_CRCPARCTL0_0       0x3d4000c0
+#define DDRC_CRCPARCTL1_0       0x3d4000c4
+#define DDRC_CRCPARCTL2_0       0x3d4000c8
+#define DDRC_CRCPARSTAT_0       0x3d4000cc
+#define DDRC_INIT0_0            0x3d4000d0
+#define DDRC_INIT1_0            0x3d4000d4
+#define DDRC_INIT2_0            0x3d4000d8
+#define DDRC_INIT3_0            0x3d4000dc
+#define DDRC_INIT4_0            0x3d4000e0
+#define DDRC_INIT5_0            0x3d4000e4
+#define DDRC_INIT6_0            0x3d4000e8
+#define DDRC_INIT7_0            0x3d4000ec
+#define DDRC_DIMMCTL_0          0x3d4000f0
+#define DDRC_RANKCTL_0          0x3d4000f4
+#define DDRC_DRAMTMG0_0         0x3d400100
+#define DDRC_DRAMTMG1_0         0x3d400104
+#define DDRC_DRAMTMG2_0         0x3d400108
+#define DDRC_DRAMTMG3_0         0x3d40010c
+#define DDRC_DRAMTMG4_0         0x3d400110
+#define DDRC_DRAMTMG5_0         0x3d400114
+#define DDRC_DRAMTMG6_0         0x3d400118
+#define DDRC_DRAMTMG7_0         0x3d40011c
+#define DDRC_DRAMTMG8_0         0x3d400120
+#define DDRC_DRAMTMG9_0         0x3d400124
+#define DDRC_DRAMTMG10_0        0x3d400128
+#define DDRC_DRAMTMG11_0        0x3d40012c
+#define DDRC_DRAMTMG12_0        0x3d400130
+#define DDRC_DRAMTMG13_0        0x3d400134
+#define DDRC_DRAMTMG14_0        0x3d400138
+#define DDRC_DRAMTMG15_0        0x3d40013C
+#define DDRC_DRAMTMG16_0        0x3d400140
+#define DDRC_DRAMTMG17_0        0x3d400144
+//
+#define DDRC_ZQCTL0_0           0x3d400180
+#define DDRC_ZQCTL1_0           0x3d400184
+#define DDRC_ZQCTL2_0           0x3d400188
+#define DDRC_ZQSTAT_0           0x3d40018c
+#define DDRC_DFITMG0_0          0x3d400190
+#define DDRC_DFITMG1_0          0x3d400194
+#define DDRC_DFILPCFG0_0        0x3d400198
+#define DDRC_DFILPCFG1_0        0x3d40019c
+#define DDRC_DFIUPD0_0          0x3d4001a0
+#define DDRC_DFIUPD1_0          0x3d4001a4
+#define DDRC_DFIUPD2_0          0x3d4001a8
+//#define DDRC_DFIUPD3(X)       (  DDRC_IPS_BASE_ADDR(X) + 0x1ac)     // iMX8 hasn't it
+#define DDRC_DFIMISC_0          0x3d4001b0
+#define DDRC_DFITMG2_0          0x3d4001b4
+#define DDRC_DFITMG3_0          0x3d4001b8
+#define DDRC_DFISTAT_0          0x3d4001bc
+//
+#define DDRC_DBICTL_0           0x3d4001c0
+#define DDRC_DFIPHYMSTR_0       0x3d4001c4
+#define DDRC_TRAINCTL0_0        0x3d4001d0
+#define DDRC_TRAINCTL1_0        0x3d4001d4
+#define DDRC_TRAINCTL2_0        0x3d4001d8
+#define DDRC_TRAINSTAT_0        0x3d4001dc
+#define DDRC_ADDRMAP0_0         0x3d400200
+#define DDRC_ADDRMAP1_0         0x3d400204
+#define DDRC_ADDRMAP2_0         0x3d400208
+#define DDRC_ADDRMAP3_0         0x3d40020c
+#define DDRC_ADDRMAP4_0         0x3d400210
+#define DDRC_ADDRMAP5_0         0x3d400214
+#define DDRC_ADDRMAP6_0         0x3d400218
+#define DDRC_ADDRMAP7_0         0x3d40021c
+#define DDRC_ADDRMAP8_0         0x3d400220
+#define DDRC_ADDRMAP9_0         0x3d400224
+#define DDRC_ADDRMAP10_0        0x3d400228
+#define DDRC_ADDRMAP11_0        0x3d40022c
+//
+#define DDRC_ODTCFG_0           0x3d400240
+#define DDRC_ODTMAP_0           0x3d400244
+#define DDRC_SCHED_0            0x3d400250
+#define DDRC_SCHED1_0           0x3d400254
+#define DDRC_PERFHPR1_0         0x3d40025c
+#define DDRC_PERFLPR1_0         0x3d400264
+#define DDRC_PERFWR1_0          0x3d40026c
+#define DDRC_PERFVPR1_0         0x3d400274
+//
+#define DDRC_PERFVPW1_0         0x3d400278
+//
+#define DDRC_DQMAP0_0           0x3d400280
+#define DDRC_DQMAP1_0           0x3d400284
+#define DDRC_DQMAP2_0           0x3d400288
+#define DDRC_DQMAP3_0           0x3d40028c
+#define DDRC_DQMAP4_0           0x3d400290
+#define DDRC_DQMAP5_0           0x3d400294
+#define DDRC_DBG0_0             0x3d400300
+#define DDRC_DBG1_0             0x3d400304
+#define DDRC_DBGCAM_0           0x3d400308
+#define DDRC_DBGCMD_0           0x3d40030c
+#define DDRC_DBGSTAT_0          0x3d400310
+//
+#define DDRC_SWCTL_0            0x3d400320
+#define DDRC_SWSTAT_0           0x3d400324
+#define DDRC_OCPARCFG0_0        0x3d400330
+#define DDRC_OCPARCFG1_0        0x3d400334
+#define DDRC_OCPARCFG2_0        0x3d400338
+#define DDRC_OCPARCFG3_0        0x3d40033c
+#define DDRC_OCPARSTAT0_0       0x3d400340
+#define DDRC_OCPARSTAT1_0       0x3d400344
+#define DDRC_OCPARWLOG0_0       0x3d400348
+#define DDRC_OCPARWLOG1_0       0x3d40034c
+#define DDRC_OCPARWLOG2_0       0x3d400350
+#define DDRC_OCPARAWLOG0_0      0x3d400354
+#define DDRC_OCPARAWLOG1_0      0x3d400358
+#define DDRC_OCPARRLOG0_0       0x3d40035c
+#define DDRC_OCPARRLOG1_0       0x3d400360
+#define DDRC_OCPARARLOG0_0      0x3d400364
+#define DDRC_OCPARARLOG1_0      0x3d400368
+#define DDRC_POISONCFG_0        0x3d40036C
+#define DDRC_POISONSTAT_0       0x3d400370
+#define DDRC_ADVECCINDEX_0      0x3d400003
+#define DDRC_ADVECCSTAT_0       0x3d400003
+#define DDRC_ECCPOISONPAT0_0    0x3d400003
+#define DDRC_ECCPOISONPAT1_0    0x3d400003
+#define DDRC_ECCPOISONPAT2_0    0x3d400003
+#define DDRC_HIFCTL_0           0x3d400003
+
+#define DDRC_PSTAT_0            0x3d4003fc
+#define DDRC_PCCFG_0            0x3d400400
+#define DDRC_PCFGR_0_0          0x3d400404
+#define DDRC_PCFGR_1_0          0x3d4004b4
+#define DDRC_PCFGR_2_0          0x3d400564
+#define DDRC_PCFGR_3_0          0x3d400614
+#define DDRC_PCFGW_0_0          0x3d400408
+#define DDRC_PCFGW_1_0          0x3d400408
+#define DDRC_PCFGW_2_0          0x3d400568
+#define DDRC_PCFGW_3_0          0x3d400618
+#define DDRC_PCFGC_0_0          0x3d40040c
+#define DDRC_PCFGIDMASKCH_0     0x3d400410
+#define DDRC_PCFGIDVALUECH_0    0x3d400414
+#define DDRC_PCTRL_0_0          0x3d400490
+#define DDRC_PCTRL_1_0          0x3d400540
+#define DDRC_PCTRL_2_0          0x3d4005f0
+#define DDRC_PCTRL_3_0          0x3d4006a0
+#define DDRC_PCFGQOS0_0_0       0x3d400494
+#define DDRC_PCFGQOS1_0_0       0x3d400498
+#define DDRC_PCFGWQOS0_0_0      0x3d40049c
+#define DDRC_PCFGWQOS1_0_0      0x3d4004a0
+#define DDRC_SARBASE0_0         0x3d400f04
+#define DDRC_SARSIZE0_0         0x3d400f08
+#define DDRC_SBRCTL_0           0x3d400f24
+#define DDRC_SBRSTAT_0          0x3d400f28
+#define DDRC_SBRWDATA0_0        0x3d400f2c
+#define DDRC_SBRWDATA1_0        0x3d400f30
+#define DDRC_PDCH_0             0x3d400f34
+
+/**********************/
+#define DDRC_MSTR(X)             (DDRC_IPS_BASE_ADDR(X) + 0x00)
+#define DDRC_STAT(X)             (DDRC_IPS_BASE_ADDR(X) + 0x04)
+#define DDRC_MSTR1(X)            (DDRC_IPS_BASE_ADDR(X) + 0x08)
+#define DDRC_MRCTRL0(X)          (DDRC_IPS_BASE_ADDR(X) + 0x10)
+#define DDRC_MRCTRL1(X)          (DDRC_IPS_BASE_ADDR(X) + 0x14)
+#define DDRC_MRSTAT(X)           (DDRC_IPS_BASE_ADDR(X) + 0x18)
+#define DDRC_MRCTRL2(X)          (DDRC_IPS_BASE_ADDR(X) + 0x1c)
+#define DDRC_DERATEEN(X)         (DDRC_IPS_BASE_ADDR(X) + 0x20)
+#define DDRC_DERATEINT(X)        (DDRC_IPS_BASE_ADDR(X) + 0x24)
+#define DDRC_MSTR2(X)            (DDRC_IPS_BASE_ADDR(X) + 0x28)
+#define DDRC_PWRCTL(X)           (DDRC_IPS_BASE_ADDR(X) + 0x30)
+#define DDRC_PWRTMG(X)           (DDRC_IPS_BASE_ADDR(X) + 0x34)
+#define DDRC_HWLPCTL(X)          (DDRC_IPS_BASE_ADDR(X) + 0x38)
+#define DDRC_HWFFCCTL(X)         (DDRC_IPS_BASE_ADDR(X) + 0x3c)
+#define DDRC_HWFFCSTAT(X)        (DDRC_IPS_BASE_ADDR(X) + 0x40)
+#define DDRC_RFSHCTL0(X)         (DDRC_IPS_BASE_ADDR(X) + 0x50)
+#define DDRC_RFSHCTL1(X)         (DDRC_IPS_BASE_ADDR(X) + 0x54)
+#define DDRC_RFSHCTL2(X)         (DDRC_IPS_BASE_ADDR(X) + 0x58)
+#define DDRC_RFSHCTL3(X)         (DDRC_IPS_BASE_ADDR(X) + 0x60)
+#define DDRC_RFSHTMG(X)          (DDRC_IPS_BASE_ADDR(X) + 0x64)
+#define DDRC_ECCCFG0(X)          (DDRC_IPS_BASE_ADDR(X) + 0x70)
+#define DDRC_ECCCFG1(X)          (DDRC_IPS_BASE_ADDR(X) + 0x74)
+#define DDRC_ECCSTAT(X)          (DDRC_IPS_BASE_ADDR(X) + 0x78)
+#define DDRC_ECCCLR(X)           (DDRC_IPS_BASE_ADDR(X) + 0x7c)
+#define DDRC_ECCERRCNT(X)        (DDRC_IPS_BASE_ADDR(X) + 0x80)
+#define DDRC_ECCCADDR0(X)        (DDRC_IPS_BASE_ADDR(X) + 0x84)
+#define DDRC_ECCCADDR1(X)        (DDRC_IPS_BASE_ADDR(X) + 0x88)
+#define DDRC_ECCCSYN0(X)         (DDRC_IPS_BASE_ADDR(X) + 0x8c)
+#define DDRC_ECCCSYN1(X)         (DDRC_IPS_BASE_ADDR(X) + 0x90)
+#define DDRC_ECCCSYN2(X)         (DDRC_IPS_BASE_ADDR(X) + 0x94)
+#define DDRC_ECCBITMASK0(X)      (DDRC_IPS_BASE_ADDR(X) + 0x98)
+#define DDRC_ECCBITMASK1(X)      (DDRC_IPS_BASE_ADDR(X) + 0x9c)
+#define DDRC_ECCBITMASK2(X)      (DDRC_IPS_BASE_ADDR(X) + 0xa0)
+#define DDRC_ECCUADDR0(X)        (DDRC_IPS_BASE_ADDR(X) + 0xa4)
+#define DDRC_ECCUADDR1(X)        (DDRC_IPS_BASE_ADDR(X) + 0xa8)
+#define DDRC_ECCUSYN0(X)         (DDRC_IPS_BASE_ADDR(X) + 0xac)
+#define DDRC_ECCUSYN1(X)         (DDRC_IPS_BASE_ADDR(X) + 0xb0)
+#define DDRC_ECCUSYN2(X)         (DDRC_IPS_BASE_ADDR(X) + 0xb4)
+#define DDRC_ECCPOISONADDR0(X)   (DDRC_IPS_BASE_ADDR(X) + 0xb8)
+#define DDRC_ECCPOISONADDR1(X)   (DDRC_IPS_BASE_ADDR(X) + 0xbc)
+#define DDRC_CRCPARCTL0(X)       (DDRC_IPS_BASE_ADDR(X) + 0xc0)
+#define DDRC_CRCPARCTL1(X)       (DDRC_IPS_BASE_ADDR(X) + 0xc4)
+#define DDRC_CRCPARCTL2(X)       (DDRC_IPS_BASE_ADDR(X) + 0xc8)
+#define DDRC_CRCPARSTAT(X)       (DDRC_IPS_BASE_ADDR(X) + 0xcc)
+#define DDRC_INIT0(X)            (DDRC_IPS_BASE_ADDR(X) + 0xd0)
+#define DDRC_INIT1(X)            (DDRC_IPS_BASE_ADDR(X) + 0xd4)
+#define DDRC_INIT2(X)            (DDRC_IPS_BASE_ADDR(X) + 0xd8)
+#define DDRC_INIT3(X)            (DDRC_IPS_BASE_ADDR(X) + 0xdc)
+#define DDRC_INIT4(X)            (DDRC_IPS_BASE_ADDR(X) + 0xe0)
+#define DDRC_INIT5(X)            (DDRC_IPS_BASE_ADDR(X) + 0xe4)
+#define DDRC_INIT6(X)            (DDRC_IPS_BASE_ADDR(X) + 0xe8)
+#define DDRC_INIT7(X)            (DDRC_IPS_BASE_ADDR(X) + 0xec)
+#define DDRC_DIMMCTL(X)          (DDRC_IPS_BASE_ADDR(X) + 0xf0)
+#define DDRC_RANKCTL(X)          (DDRC_IPS_BASE_ADDR(X) + 0xf4)
+#define DDRC_DRAMTMG0(X)         (DDRC_IPS_BASE_ADDR(X) + 0x100)
+#define DDRC_DRAMTMG1(X)         (DDRC_IPS_BASE_ADDR(X) + 0x104)
+#define DDRC_DRAMTMG2(X)         (DDRC_IPS_BASE_ADDR(X) + 0x108)
+#define DDRC_DRAMTMG3(X)         (DDRC_IPS_BASE_ADDR(X) + 0x10c)
+#define DDRC_DRAMTMG4(X)         (DDRC_IPS_BASE_ADDR(X) + 0x110)
+#define DDRC_DRAMTMG5(X)         (DDRC_IPS_BASE_ADDR(X) + 0x114)
+#define DDRC_DRAMTMG6(X)         (DDRC_IPS_BASE_ADDR(X) + 0x118)
+#define DDRC_DRAMTMG7(X)         (DDRC_IPS_BASE_ADDR(X) + 0x11c)
+#define DDRC_DRAMTMG8(X)         (DDRC_IPS_BASE_ADDR(X) + 0x120)
+#define DDRC_DRAMTMG9(X)         (DDRC_IPS_BASE_ADDR(X) + 0x124)
+#define DDRC_DRAMTMG10(X)        (DDRC_IPS_BASE_ADDR(X) + 0x128)
+#define DDRC_DRAMTMG11(X)        (DDRC_IPS_BASE_ADDR(X) + 0x12c)
+#define DDRC_DRAMTMG12(X)        (DDRC_IPS_BASE_ADDR(X) + 0x130)
+#define DDRC_DRAMTMG13(X)        (DDRC_IPS_BASE_ADDR(X) + 0x134)
+#define DDRC_DRAMTMG14(X)        (DDRC_IPS_BASE_ADDR(X) + 0x138)
+#define DDRC_DRAMTMG15(X)        (DDRC_IPS_BASE_ADDR(X) + 0x13C)
+#define DDRC_DRAMTMG16(X)        (DDRC_IPS_BASE_ADDR(X) + 0x140)
+#define DDRC_DRAMTMG17(X)        (DDRC_IPS_BASE_ADDR(X) + 0x144)
+//
+#define DDRC_ZQCTL0(X)           (DDRC_IPS_BASE_ADDR(X) + 0x180)
+#define DDRC_ZQCTL1(X)           (DDRC_IPS_BASE_ADDR(X) + 0x184)
+#define DDRC_ZQCTL2(X)           (DDRC_IPS_BASE_ADDR(X) + 0x188)
+#define DDRC_ZQSTAT(X)           (DDRC_IPS_BASE_ADDR(X) + 0x18c)
+#define DDRC_DFITMG0(X)          (DDRC_IPS_BASE_ADDR(X) + 0x190)
+#define DDRC_DFITMG1(X)          (DDRC_IPS_BASE_ADDR(X) + 0x194)
+#define DDRC_DFILPCFG0(X)        (DDRC_IPS_BASE_ADDR(X) + 0x198)
+#define DDRC_DFILPCFG1(X)        (DDRC_IPS_BASE_ADDR(X) + 0x19c)
+#define DDRC_DFIUPD0(X)          (DDRC_IPS_BASE_ADDR(X) + 0x1a0)
+#define DDRC_DFIUPD1(X)          (DDRC_IPS_BASE_ADDR(X) + 0x1a4)
+#define DDRC_DFIUPD2(X)          (DDRC_IPS_BASE_ADDR(X) + 0x1a8)
+//#define DDRC_DFIUPD3(X)        (  DDRC_IPS_BASE_ADDR(X) + 0x1ac)     // iMX8 hasn't it
+#define DDRC_DFIMISC(X)          (DDRC_IPS_BASE_ADDR(X) + 0x1b0)
+#define DDRC_DFITMG2(X)          (DDRC_IPS_BASE_ADDR(X) + 0x1b4)
+#define DDRC_DFITMG3(X)          (DDRC_IPS_BASE_ADDR(X) + 0x1b8)
+#define DDRC_DFISTAT(X)          (DDRC_IPS_BASE_ADDR(X) + 0x1bc)
+//
+#define DDRC_DBICTL(X)           (DDRC_IPS_BASE_ADDR(X) + 0x1c0)
+#define DDRC_DFIPHYMSTR(X)       (DDRC_IPS_BASE_ADDR(X) + 0x1c4)
+#define DDRC_TRAINCTL0(X)        (DDRC_IPS_BASE_ADDR(X) + 0x1d0)
+#define DDRC_TRAINCTL1(X)        (DDRC_IPS_BASE_ADDR(X) + 0x1d4)
+#define DDRC_TRAINCTL2(X)        (DDRC_IPS_BASE_ADDR(X) + 0x1d8)
+#define DDRC_TRAINSTAT(X)        (DDRC_IPS_BASE_ADDR(X) + 0x1dc)
+#define DDRC_ADDRMAP0(X)         (DDRC_IPS_BASE_ADDR(X) + 0x200)
+#define DDRC_ADDRMAP1(X)         (DDRC_IPS_BASE_ADDR(X) + 0x204)
+#define DDRC_ADDRMAP2(X)         (DDRC_IPS_BASE_ADDR(X) + 0x208)
+#define DDRC_ADDRMAP3(X)         (DDRC_IPS_BASE_ADDR(X) + 0x20c)
+#define DDRC_ADDRMAP4(X)         (DDRC_IPS_BASE_ADDR(X) + 0x210)
+#define DDRC_ADDRMAP5(X)         (DDRC_IPS_BASE_ADDR(X) + 0x214)
+#define DDRC_ADDRMAP6(X)         (DDRC_IPS_BASE_ADDR(X) + 0x218)
+#define DDRC_ADDRMAP7(X)         (DDRC_IPS_BASE_ADDR(X) + 0x21c)
+#define DDRC_ADDRMAP8(X)         (DDRC_IPS_BASE_ADDR(X) + 0x220)
+#define DDRC_ADDRMAP9(X)         (DDRC_IPS_BASE_ADDR(X) + 0x224)
+#define DDRC_ADDRMAP10(X)        (DDRC_IPS_BASE_ADDR(X) + 0x228)
+#define DDRC_ADDRMAP11(X)        (DDRC_IPS_BASE_ADDR(X) + 0x22c)
+//
+#define DDRC_ODTCFG(X)           (DDRC_IPS_BASE_ADDR(X) + 0x240)
+#define DDRC_ODTMAP(X)           (DDRC_IPS_BASE_ADDR(X) + 0x244)
+#define DDRC_SCHED(X)            (DDRC_IPS_BASE_ADDR(X) + 0x250)
+#define DDRC_SCHED1(X)           (DDRC_IPS_BASE_ADDR(X) + 0x254)
+#define DDRC_PERFHPR1(X)         (DDRC_IPS_BASE_ADDR(X) + 0x25c)
+#define DDRC_PERFLPR1(X)         (DDRC_IPS_BASE_ADDR(X) + 0x264)
+#define DDRC_PERFWR1(X)          (DDRC_IPS_BASE_ADDR(X) + 0x26c)
+#define DDRC_PERFVPR1(X)         (DDRC_IPS_BASE_ADDR(X) + 0x274)
+//
+#define DDRC_PERFVPW1(X)         (DDRC_IPS_BASE_ADDR(X) + 0x278)
+//
+#define DDRC_DQMAP0(X)           (DDRC_IPS_BASE_ADDR(X) + 0x280)
+#define DDRC_DQMAP1(X)           (DDRC_IPS_BASE_ADDR(X) + 0x284)
+#define DDRC_DQMAP2(X)           (DDRC_IPS_BASE_ADDR(X) + 0x288)
+#define DDRC_DQMAP3(X)           (DDRC_IPS_BASE_ADDR(X) + 0x28c)
+#define DDRC_DQMAP4(X)           (DDRC_IPS_BASE_ADDR(X) + 0x290)
+#define DDRC_DQMAP5(X)           (DDRC_IPS_BASE_ADDR(X) + 0x294)
+#define DDRC_DBG0(X)             (DDRC_IPS_BASE_ADDR(X) + 0x300)
+#define DDRC_DBG1(X)             (DDRC_IPS_BASE_ADDR(X) + 0x304)
+#define DDRC_DBGCAM(X)           (DDRC_IPS_BASE_ADDR(X) + 0x308)
+#define DDRC_DBGCMD(X)           (DDRC_IPS_BASE_ADDR(X) + 0x30c)
+#define DDRC_DBGSTAT(X)          (DDRC_IPS_BASE_ADDR(X) + 0x310)
+//
+#define DDRC_SWCTL(X)            (DDRC_IPS_BASE_ADDR(X) + 0x320)
+#define DDRC_SWSTAT(X)           (DDRC_IPS_BASE_ADDR(X) + 0x324)
+#define DDRC_OCPARCFG0(X)        (DDRC_IPS_BASE_ADDR(X) + 0x330)
+#define DDRC_OCPARCFG1(X)        (DDRC_IPS_BASE_ADDR(X) + 0x334)
+#define DDRC_OCPARCFG2(X)        (DDRC_IPS_BASE_ADDR(X) + 0x338)
+#define DDRC_OCPARCFG3(X)        (DDRC_IPS_BASE_ADDR(X) + 0x33c)
+#define DDRC_OCPARSTAT0(X)       (DDRC_IPS_BASE_ADDR(X) + 0x340)
+#define DDRC_OCPARSTAT1(X)       (DDRC_IPS_BASE_ADDR(X) + 0x344)
+#define DDRC_OCPARWLOG0(X)       (DDRC_IPS_BASE_ADDR(X) + 0x348)
+#define DDRC_OCPARWLOG1(X)       (DDRC_IPS_BASE_ADDR(X) + 0x34c)
+#define DDRC_OCPARWLOG2(X)       (DDRC_IPS_BASE_ADDR(X) + 0x350)
+#define DDRC_OCPARAWLOG0(X)      (DDRC_IPS_BASE_ADDR(X) + 0x354)
+#define DDRC_OCPARAWLOG1(X)      (DDRC_IPS_BASE_ADDR(X) + 0x358)
+#define DDRC_OCPARRLOG0(X)       (DDRC_IPS_BASE_ADDR(X) + 0x35c)
+#define DDRC_OCPARRLOG1(X)       (DDRC_IPS_BASE_ADDR(X) + 0x360)
+#define DDRC_OCPARARLOG0(X)      (DDRC_IPS_BASE_ADDR(X) + 0x364)
+#define DDRC_OCPARARLOG1(X)      (DDRC_IPS_BASE_ADDR(X) + 0x368)
+#define DDRC_POISONCFG(X)        (DDRC_IPS_BASE_ADDR(X) + 0x36C)
+#define DDRC_POISONSTAT(X)       (DDRC_IPS_BASE_ADDR(X) + 0x370)
+#define DDRC_ADVECCINDEX(X)      (DDRC_IPS_BASE_ADDR(X) + 0x3)
+#define DDRC_ADVECCSTAT(X)       (DDRC_IPS_BASE_ADDR(X) + 0x3)
+#define DDRC_ECCPOISONPAT0(X)    (DDRC_IPS_BASE_ADDR(X) + 0x3)
+#define DDRC_ECCPOISONPAT1(X)    (DDRC_IPS_BASE_ADDR(X) + 0x3)
+#define DDRC_ECCPOISONPAT2(X)    (DDRC_IPS_BASE_ADDR(X) + 0x3)
+#define DDRC_HIFCTL(X)           (DDRC_IPS_BASE_ADDR(X) + 0x3)
+
+#define DDRC_PSTAT(X)            (DDRC_IPS_BASE_ADDR(X) + 0x3fc)
+#define DDRC_PCCFG(X)            (DDRC_IPS_BASE_ADDR(X) + 0x400)
+#define DDRC_PCFGR_0(X)          (DDRC_IPS_BASE_ADDR(X) + 0x404)
+#define DDRC_PCFGR_1(X)          (DDRC_IPS_BASE_ADDR(X) + 1*0xb0+0x404)
+#define DDRC_PCFGR_2(X)          (DDRC_IPS_BASE_ADDR(X) + 2*0xb0+0x404)
+#define DDRC_PCFGR_3(X)          (DDRC_IPS_BASE_ADDR(X) + 3*0xb0+0x404)
+#define DDRC_PCFGW_0(X)          (DDRC_IPS_BASE_ADDR(X) + 0x408)
+#define DDRC_PCFGW_1(X)          (DDRC_IPS_BASE_ADDR(X) + 1*0xb0+0x408)
+#define DDRC_PCFGW_2(X)          (DDRC_IPS_BASE_ADDR(X) + 2*0xb0+0x408)
+#define DDRC_PCFGW_3(X)          (DDRC_IPS_BASE_ADDR(X) + 3*0xb0+0x408)
+#define DDRC_PCFGC_0(X)          (DDRC_IPS_BASE_ADDR(X) + 0x40c)
+#define DDRC_PCFGIDMASKCH(X)     (DDRC_IPS_BASE_ADDR(X) + 0x410)
+#define DDRC_PCFGIDVALUECH(X)    (DDRC_IPS_BASE_ADDR(X) + 0x414)
+#define DDRC_PCTRL_0(X)          (DDRC_IPS_BASE_ADDR(X) + 0x490)
+#define DDRC_PCTRL_1(X)          (DDRC_IPS_BASE_ADDR(X) + 0x490 + 1*0xb0)
+#define DDRC_PCTRL_2(X)          (DDRC_IPS_BASE_ADDR(X) + 0x490 + 2*0xb0)
+#define DDRC_PCTRL_3(X)          (DDRC_IPS_BASE_ADDR(X) + 0x490 + 3*0xb0)
+#define DDRC_PCFGQOS0_0(X)       (DDRC_IPS_BASE_ADDR(X) + 0x494)
+#define DDRC_PCFGQOS1_0(X)       (DDRC_IPS_BASE_ADDR(X) + 0x498)
+#define DDRC_PCFGWQOS0_0(X)      (DDRC_IPS_BASE_ADDR(X) + 0x49c)
+#define DDRC_PCFGWQOS1_0(X)      (DDRC_IPS_BASE_ADDR(X) + 0x4a0)
+#define DDRC_SARBASE0(X)         (DDRC_IPS_BASE_ADDR(X) + 0xf04)
+#define DDRC_SARSIZE0(X)         (DDRC_IPS_BASE_ADDR(X) + 0xf08)
+#define DDRC_SBRCTL(X)           (DDRC_IPS_BASE_ADDR(X) + 0xf24)
+#define DDRC_SBRSTAT(X)          (DDRC_IPS_BASE_ADDR(X) + 0xf28)
+#define DDRC_SBRWDATA0(X)        (DDRC_IPS_BASE_ADDR(X) + 0xf2c)
+#define DDRC_SBRWDATA1(X)        (DDRC_IPS_BASE_ADDR(X) + 0xf30)
+#define DDRC_PDCH(X)             (DDRC_IPS_BASE_ADDR(X) + 0xf34)
+/*
+#define DDRC_PCFGW_0_0_ADDR     ((vuint8_t*)&(DDRC_PCFGW_0(0)))
+#define DDRC_PCFGW_0_1_ADDR     ((vuint8_t*)&(DDRC_PCFGW_0(1)))
+#define DDRC_PCFGW_0_2_ADDR     ((vuint8_t*)&(DDRC_PCFGW_0(2)))
+#define DDRC_PCFGW_0_3_ADDR     ((vuint8_t*)&(DDRC_PCFGW_0(3)))
+
+#define DDRC_MRCTRL1_0_ADDR     ((vuint8_t*)&(DDRC_MRCTRL1(0)))
+#define DDRC_MRCTRL1_1_ADDR     ((vuint8_t*)&(DDRC_MRCTRL1(1)))
+#define DDRC_MRCTRL1_2_ADDR     ((vuint8_t*)&(DDRC_MRCTRL1(2)))
+#define DDRC_FREQ1_MRCTRL1_3_ADDR     ((vuint8_t*)&(DDRC_MRCTRL1(3)))
+*/
+
+// SHADOW registers
+
+#define DDRC_FREQ1_DERATEEN(X)         (DDRC_IPS_BASE_ADDR(X) + 0x2020)
+#define DDRC_FREQ1_DERATEINT(X)        (DDRC_IPS_BASE_ADDR(X) + 0x2024)
+#define DDRC_FREQ1_RFSHCTL0(X)         (DDRC_IPS_BASE_ADDR(X) + 0x2050)
+#define DDRC_FREQ1_RFSHTMG(X)          (DDRC_IPS_BASE_ADDR(X) + 0x2064)
+#define DDRC_FREQ1_INIT3(X)            (DDRC_IPS_BASE_ADDR(X) + 0x20dc)
+#define DDRC_FREQ1_INIT4(X)            (DDRC_IPS_BASE_ADDR(X) + 0x20e0)
+#define DDRC_FREQ1_INIT6(X)            (DDRC_IPS_BASE_ADDR(X) + 0x20e8)
+#define DDRC_FREQ1_INIT7(X)            (DDRC_IPS_BASE_ADDR(X) + 0x20ec)
+#define DDRC_FREQ1_DRAMTMG0(X)         (DDRC_IPS_BASE_ADDR(X) + 0x2100)
+#define DDRC_FREQ1_DRAMTMG1(X)         (DDRC_IPS_BASE_ADDR(X) + 0x2104)
+#define DDRC_FREQ1_DRAMTMG2(X)         (DDRC_IPS_BASE_ADDR(X) + 0x2108)
+#define DDRC_FREQ1_DRAMTMG3(X)         (DDRC_IPS_BASE_ADDR(X) + 0x210c)
+#define DDRC_FREQ1_DRAMTMG4(X)         (DDRC_IPS_BASE_ADDR(X) + 0x2110)
+#define DDRC_FREQ1_DRAMTMG5(X)         (DDRC_IPS_BASE_ADDR(X) + 0x2114)
+#define DDRC_FREQ1_DRAMTMG6(X)         (DDRC_IPS_BASE_ADDR(X) + 0x2118)
+#define DDRC_FREQ1_DRAMTMG7(X)         (DDRC_IPS_BASE_ADDR(X) + 0x211c)
+#define DDRC_FREQ1_DRAMTMG8(X)         (DDRC_IPS_BASE_ADDR(X) + 0x2120)
+#define DDRC_FREQ1_DRAMTMG9(X)         (DDRC_IPS_BASE_ADDR(X) + 0x2124)
+#define DDRC_FREQ1_DRAMTMG10(X)        (DDRC_IPS_BASE_ADDR(X) + 0x2128)
+#define DDRC_FREQ1_DRAMTMG11(X)        (DDRC_IPS_BASE_ADDR(X) + 0x212c)
+#define DDRC_FREQ1_DRAMTMG12(X)        (DDRC_IPS_BASE_ADDR(X) + 0x2130)
+#define DDRC_FREQ1_DRAMTMG13(X)        (DDRC_IPS_BASE_ADDR(X) + 0x2134)
+#define DDRC_FREQ1_DRAMTMG14(X)        (DDRC_IPS_BASE_ADDR(X) + 0x2138)
+#define DDRC_FREQ1_DRAMTMG15(X)        (DDRC_IPS_BASE_ADDR(X) + 0x213C)
+#define DDRC_FREQ1_DRAMTMG16(X)        (DDRC_IPS_BASE_ADDR(X) + 0x2140)
+#define DDRC_FREQ1_DRAMTMG17(X)        (DDRC_IPS_BASE_ADDR(X) + 0x2144)
+#define DDRC_FREQ1_ZQCTL0(X)           (DDRC_IPS_BASE_ADDR(X) + 0x2180)
+#define DDRC_FREQ1_DFITMG0(X)          (DDRC_IPS_BASE_ADDR(X) + 0x2190)
+#define DDRC_FREQ1_DFITMG1(X)          (DDRC_IPS_BASE_ADDR(X) + 0x2194)
+#define DDRC_FREQ1_DFITMG2(X)          (DDRC_IPS_BASE_ADDR(X) + 0x21b4)
+#define DDRC_FREQ1_DFITMG3(X)          (DDRC_IPS_BASE_ADDR(X) + 0x21b8)
+#define DDRC_FREQ1_ODTCFG(X)           (DDRC_IPS_BASE_ADDR(X) + 0x2240)
+
+#define DDRC_FREQ2_DERATEEN(X)         (DDRC_IPS_BASE_ADDR(X) + 0x3020)
+#define DDRC_FREQ2_DERATEINT(X)        (DDRC_IPS_BASE_ADDR(X) + 0x3024)
+#define DDRC_FREQ2_RFSHCTL0(X)         (DDRC_IPS_BASE_ADDR(X) + 0x3050)
+#define DDRC_FREQ2_RFSHTMG(X)          (DDRC_IPS_BASE_ADDR(X) + 0x3064)
+#define DDRC_FREQ2_INIT3(X)            (DDRC_IPS_BASE_ADDR(X) + 0x30dc)
+#define DDRC_FREQ2_INIT4(X)            (DDRC_IPS_BASE_ADDR(X) + 0x30e0)
+#define DDRC_FREQ2_INIT6(X)            (DDRC_IPS_BASE_ADDR(X) + 0x30e8)
+#define DDRC_FREQ2_INIT7(X)            (DDRC_IPS_BASE_ADDR(X) + 0x30ec)
+#define DDRC_FREQ2_DRAMTMG0(X)         (DDRC_IPS_BASE_ADDR(X) + 0x3100)
+#define DDRC_FREQ2_DRAMTMG1(X)         (DDRC_IPS_BASE_ADDR(X) + 0x3104)
+#define DDRC_FREQ2_DRAMTMG2(X)         (DDRC_IPS_BASE_ADDR(X) + 0x3108)
+#define DDRC_FREQ2_DRAMTMG3(X)         (DDRC_IPS_BASE_ADDR(X) + 0x310c)
+#define DDRC_FREQ2_DRAMTMG4(X)         (DDRC_IPS_BASE_ADDR(X) + 0x3110)
+#define DDRC_FREQ2_DRAMTMG5(X)         (DDRC_IPS_BASE_ADDR(X) + 0x3114)
+#define DDRC_FREQ2_DRAMTMG6(X)         (DDRC_IPS_BASE_ADDR(X) + 0x3118)
+#define DDRC_FREQ2_DRAMTMG7(X)         (DDRC_IPS_BASE_ADDR(X) + 0x311c)
+#define DDRC_FREQ2_DRAMTMG8(X)         (DDRC_IPS_BASE_ADDR(X) + 0x3120)
+#define DDRC_FREQ2_DRAMTMG9(X)         (DDRC_IPS_BASE_ADDR(X) + 0x3124)
+#define DDRC_FREQ2_DRAMTMG10(X)        (DDRC_IPS_BASE_ADDR(X) + 0x3128)
+#define DDRC_FREQ2_DRAMTMG11(X)        (DDRC_IPS_BASE_ADDR(X) + 0x312c)
+#define DDRC_FREQ2_DRAMTMG12(X)        (DDRC_IPS_BASE_ADDR(X) + 0x3130)
+#define DDRC_FREQ2_DRAMTMG13(X)        (DDRC_IPS_BASE_ADDR(X) + 0x3134)
+#define DDRC_FREQ2_DRAMTMG14(X)        (DDRC_IPS_BASE_ADDR(X) + 0x3138)
+#define DDRC_FREQ2_DRAMTMG15(X)        (DDRC_IPS_BASE_ADDR(X) + 0x313C)
+#define DDRC_FREQ2_DRAMTMG16(X)        (DDRC_IPS_BASE_ADDR(X) + 0x3140)
+#define DDRC_FREQ2_DRAMTMG17(X)        (DDRC_IPS_BASE_ADDR(X) + 0x3144)
+#define DDRC_FREQ2_ZQCTL0(X)           (DDRC_IPS_BASE_ADDR(X) + 0x3180)
+#define DDRC_FREQ2_DFITMG0(X)          (DDRC_IPS_BASE_ADDR(X) + 0x3190)
+#define DDRC_FREQ2_DFITMG1(X)          (DDRC_IPS_BASE_ADDR(X) + 0x3194)
+#define DDRC_FREQ2_DFITMG2(X)          (DDRC_IPS_BASE_ADDR(X) + 0x31b4)
+#define DDRC_FREQ2_DFITMG3(X)          (DDRC_IPS_BASE_ADDR(X) + 0x31b8)
+#define DDRC_FREQ2_ODTCFG(X)           (DDRC_IPS_BASE_ADDR(X) + 0x3240)
+
+#define DDRC_FREQ3_DERATEEN(X)         (DDRC_IPS_BASE_ADDR(X) + 0x4020)
+#define DDRC_FREQ3_DERATEINT(X)        (DDRC_IPS_BASE_ADDR(X) + 0x4024)
+#define DDRC_FREQ3_RFSHCTL0(X)         (DDRC_IPS_BASE_ADDR(X) + 0x4050)
+#define DDRC_FREQ3_RFSHTMG(X)          (DDRC_IPS_BASE_ADDR(X) + 0x4064)
+#define DDRC_FREQ3_INIT3(X)            (DDRC_IPS_BASE_ADDR(X) + 0x40dc)
+#define DDRC_FREQ3_INIT4(X)            (DDRC_IPS_BASE_ADDR(X) + 0x40e0)
+#define DDRC_FREQ3_INIT6(X)            (DDRC_IPS_BASE_ADDR(X) + 0x40e8)
+#define DDRC_FREQ3_INIT7(X)            (DDRC_IPS_BASE_ADDR(X) + 0x40ec)
+#define DDRC_FREQ3_DRAMTMG0(X)         (DDRC_IPS_BASE_ADDR(X) + 0x4100)
+#define DDRC_FREQ3_DRAMTMG1(X)         (DDRC_IPS_BASE_ADDR(X) + 0x4104)
+#define DDRC_FREQ3_DRAMTMG2(X)         (DDRC_IPS_BASE_ADDR(X) + 0x4108)
+#define DDRC_FREQ3_DRAMTMG3(X)         (DDRC_IPS_BASE_ADDR(X) + 0x410c)
+#define DDRC_FREQ3_DRAMTMG4(X)         (DDRC_IPS_BASE_ADDR(X) + 0x4110)
+#define DDRC_FREQ3_DRAMTMG5(X)         (DDRC_IPS_BASE_ADDR(X) + 0x4114)
+#define DDRC_FREQ3_DRAMTMG6(X)         (DDRC_IPS_BASE_ADDR(X) + 0x4118)
+#define DDRC_FREQ3_DRAMTMG7(X)         (DDRC_IPS_BASE_ADDR(X) + 0x411c)
+#define DDRC_FREQ3_DRAMTMG8(X)         (DDRC_IPS_BASE_ADDR(X) + 0x4120)
+#define DDRC_FREQ3_DRAMTMG9(X)         (DDRC_IPS_BASE_ADDR(X) + 0x4124)
+#define DDRC_FREQ3_DRAMTMG10(X)        (DDRC_IPS_BASE_ADDR(X) + 0x4128)
+#define DDRC_FREQ3_DRAMTMG11(X)        (DDRC_IPS_BASE_ADDR(X) + 0x412c)
+#define DDRC_FREQ3_DRAMTMG12(X)        (DDRC_IPS_BASE_ADDR(X) + 0x4130)
+#define DDRC_FREQ3_DRAMTMG13(X)        (DDRC_IPS_BASE_ADDR(X) + 0x4134)
+#define DDRC_FREQ3_DRAMTMG14(X)        (DDRC_IPS_BASE_ADDR(X) + 0x4138)
+#define DDRC_FREQ3_DRAMTMG15(X)        (DDRC_IPS_BASE_ADDR(X) + 0x413C)
+#define DDRC_FREQ3_DRAMTMG16(X)        (DDRC_IPS_BASE_ADDR(X) + 0x4140)
+#if 0
+/*todo fix*/
+#define DDRC_FREQ3_DRAMTMG16(X)        (DDRC_IPS_BASE_ADDR(X) + 0x4144)
+#define DDRC_FREQ3_DRAMTMG17(X)        (DDRC_IPS_BASE_ADDR(X) + 0x4140)
+#endif
+#define DDRC_FREQ3_ZQCTL0(X)           (DDRC_IPS_BASE_ADDR(X) + 0x4180)
+#define DDRC_FREQ3_DFITMG0(X)          (DDRC_IPS_BASE_ADDR(X) + 0x4190)
+#define DDRC_FREQ3_DFITMG1(X)          (DDRC_IPS_BASE_ADDR(X) + 0x4194)
+#define DDRC_FREQ3_DFITMG2(X)          (DDRC_IPS_BASE_ADDR(X) + 0x41b4)
+#define DDRC_FREQ3_DFITMG3(X)          (DDRC_IPS_BASE_ADDR(X) + 0x41b8)
+#define DDRC_FREQ3_ODTCFG(X)           (DDRC_IPS_BASE_ADDR(X) + 0x4240)
+#define DDRC_DFITMG0_SHADOW(X)         (DDRC_IPS_BASE_ADDR(X) + 0x2190)
+#define DDRC_DFITMG1_SHADOW(X)         (DDRC_IPS_BASE_ADDR(X) + 0x2194)
+#define DDRC_DFITMG2_SHADOW(X)         (DDRC_IPS_BASE_ADDR(X) + 0x21b4)
+#define DDRC_DFITMG3_SHADOW(X)         (DDRC_IPS_BASE_ADDR(X) + 0x21b8)
+#define DDRC_ODTCFG_SHADOW(X)          (DDRC_IPS_BASE_ADDR(X) + 0x2240)
+
+//#define IP2APB_DDRPHY_IPS_BASE_ADDR(X)     DDRPHY1_IPS_BASE_ADDR - X*0x00030000
+//#define IP2APB_DDRPHY_IPS_BASE_ADDR(X) 0xbc000000 + (X * 0x2000000)
+//#define DDRPHY_MEM(X) 0xbc000000 + (X * 0x2000000) + 0x50000
+#define IP2APB_DDRPHY_IPS_BASE_ADDR(X) (0x3c000000 + (X * 0x2000000))
+#define DDRPHY_MEM(X) (0x3c000000 + (X * 0x2000000) + 0x50000)
diff --git a/arch/arm/boards/nxp-imx8mq-evk/ddr_init.c b/arch/arm/boards/nxp-imx8mq-evk/ddr_init.c
new file mode 100644
index 000000000..81691b2fa
--- /dev/null
+++ b/arch/arm/boards/nxp-imx8mq-evk/ddr_init.c
@@ -0,0 +1,223 @@
+/*
+ * Copyright 2017 NXP
+ *
+ * SPDX-License-Identifier:	GPL-2.0+
+ * Generated code from MX8_DDR_tool
+ */
+
+#include "ddr.h"
+
+void ddr_cfg_phy(void);
+void ddr_init(void)
+{
+	volatile unsigned int tmp, tmp_t;
+	
+	/** Initialize DDR clock and DDRC registers **/
+	reg32_write(0x3038a088,0x7070000);
+	reg32_write(0x3038a084,0x4030000);
+	reg32_write(0x303a00ec,0xffff);
+	tmp=reg32_read(0x303a00f8);
+	tmp |= 0x20;
+	reg32_write(0x303a00f8,tmp);
+	reg32_write(0x30391000,0x8f000000);
+	reg32_write(0x30391004,0x8f000000);
+	reg32_write(0x30360068,0xbbe580);
+	tmp=reg32_read(0x30360060);
+	tmp &= ~0x80;
+	reg32_write(0x30360060,tmp);
+	tmp=reg32_read(0x30360060);
+	tmp |= 0x200;
+	reg32_write(0x30360060,tmp);
+	tmp=reg32_read(0x30360060);
+	tmp &= ~0x20;
+	reg32_write(0x30360060,tmp);
+	tmp=reg32_read(0x30360060);
+	tmp &= ~0x10;
+	reg32_write(0x30360060,tmp);
+	do{
+		tmp=reg32_read(0x30360060);
+		if(tmp&0x80000000) break;
+	}while(1);
+	reg32_write(0x30391000,0x8f000006);
+	reg32_write(0x3d400304,0x1);
+	reg32_write(0x3d400030,0x1);
+	reg32_write(0x3d400000,0x83080020);
+	reg32_write(0x3d400064,0x6100e0);
+	reg32_write(0x3d4000d0,0xc003061c);
+	reg32_write(0x3d4000d4,0x9e0000);
+	reg32_write(0x3d4000dc,0xd4002d);
+	reg32_write(0x3d4000e0,0x310008);
+	reg32_write(0x3d4000e8,0x46004d);
+	reg32_write(0x3d4000ec,0x15004d);
+	reg32_write(0x3d4000f4,0x639);
+	reg32_write(0x3d400100,0x1a201b22);
+	reg32_write(0x3d400104,0x60633);
+	reg32_write(0x3d400108,0x70e1214);
+	reg32_write(0x3d40010c,0xc0c000);
+	reg32_write(0x3d400110,0xf04080f);
+	reg32_write(0x3d400114,0x2040c0c);
+	reg32_write(0x3d400118,0x1010007);
+	reg32_write(0x3d40011c,0x401);
+	reg32_write(0x3d400130,0x20600);
+	reg32_write(0x3d400134,0xc100002);
+	reg32_write(0x3d400138,0xe6);
+	reg32_write(0x3d400144,0xa00050);
+	reg32_write(0x3d400180,0x3200018);
+	reg32_write(0x3d400184,0x28061a8);
+	reg32_write(0x3d400190,0x497820a);
+	reg32_write(0x3d400194,0x80303);
+	reg32_write(0x3d4001b4,0x170a);
+	reg32_write(0x3d4001b0,0x11);
+	reg32_write(0x3d4001a0,0xe0400018);
+	reg32_write(0x3d4001a4,0xdf00e4);
+	reg32_write(0x3d4001a8,0x0);
+	reg32_write(0x3d4001c0,0x1);
+	reg32_write(0x3d4001c4,0x1);
+	reg32_write(0x3d400200,0x15);
+	reg32_write(0x3d40020c,0x0);
+	reg32_write(0x3d400210,0x1f1f);
+	reg32_write(0x3d400204,0x80808);
+	reg32_write(0x3d400214,0x7070707);
+	reg32_write(0x3d400218,0x48080707);
+	reg32_write(0x3d400244,0x0);
+	reg32_write(0x3d400490,0x1);
+	reg32_write(0x3d400250,0x29001f01);
+	reg32_write(0x3d400254,0x2c);
+	reg32_write(0x3d400264,0x900093e7);
+	reg32_write(0x3d40026c,0x2005574);
+	reg32_write(0x3d400400,0x400);
+	reg32_write(0x3d400408,0x72ff);
+	reg32_write(0x3d400494,0x10e00);
+	reg32_write(0x3d400498,0x620096);
+	reg32_write(0x3d40049c,0x10e00);
+	reg32_write(0x3d4004a0,0x12c);
+	reg32_write(0x30391000,0x8f000004);
+	reg32_write(0x30391000,0x8f000000);
+	reg32_write(0x3d400304,0x0);
+	reg32_write(0x3d400030,0xa8);
+	reg32_write(0x3d400320,0x0);
+	reg32_write(0x3d000000,0x1);
+	reg32_write(0x3d4001b0,0x10);
+	reg32_write(0x3d402100,0xa040305);
+	reg32_write(0x3d402104,0x30407);
+	reg32_write(0x3d402108,0x203060b);
+	reg32_write(0x3d40210c,0x505000);
+	reg32_write(0x3d402110,0x2040202);
+	reg32_write(0x3d402114,0x2030202);
+	reg32_write(0x3d402118,0x1010004);
+	reg32_write(0x3d40211c,0x301);
+	reg32_write(0x3d402138,0x1d);
+	reg32_write(0x3d402144,0x14000a);
+	reg32_write(0x3d403024,0x30d400);
+	reg32_write(0x3d402050,0x20d040);
+	reg32_write(0x3d402190,0x3818200);
+	reg32_write(0x3d4021b4,0x100);
+	reg32_write(0x3d402064,0xc001c);
+	reg32_write(0x3d4020dc,0x840000);
+	reg32_write(0x3d4020e8,0x46004d);
+	reg32_write(0x3d4020ec,0x15004d);
+	reg32_write(0x3d4020e0,0x310000);
+	reg32_write(0x3d403100,0x6010102);
+	reg32_write(0x3d403104,0x30404);
+	reg32_write(0x3d403108,0x203060b);
+	reg32_write(0x3d40310c,0x505000);
+	reg32_write(0x3d403110,0x2040202);
+	reg32_write(0x3d403114,0x2030202);
+	reg32_write(0x3d403118,0x1010004);
+	reg32_write(0x3d40311c,0x301);
+	reg32_write(0x3d403138,0x8);
+	reg32_write(0x3d403144,0x50003);
+	reg32_write(0x3d403024,0xc3500);
+	reg32_write(0x3d403050,0x20d040);
+	reg32_write(0x3d403190,0x3818200);
+	reg32_write(0x3d4031b4,0x100);
+	reg32_write(0x3d403064,0x30007);
+	reg32_write(0x3d4030dc,0x840000);
+	reg32_write(0x3d4030e8,0x46004d);
+	reg32_write(0x3d4030ec,0x15004d);
+	reg32_write(0x3d4030e0,0x310000);
+	reg32_write(0x3c040280,0x0);
+	reg32_write(0x3c040284,0x1);
+	reg32_write(0x3c040288,0x2);
+	reg32_write(0x3c04028c,0x3);
+	reg32_write(0x3c040290,0x4);
+	reg32_write(0x3c040294,0x5);
+	reg32_write(0x3c040298,0x6);
+	reg32_write(0x3c04029c,0x7);
+	reg32_write(0x3c044280,0x0);
+	reg32_write(0x3c044284,0x1);
+	reg32_write(0x3c044288,0x2);
+	reg32_write(0x3c04428c,0x3);
+	reg32_write(0x3c044290,0x4);
+	reg32_write(0x3c044294,0x5);
+	reg32_write(0x3c044298,0x6);
+	reg32_write(0x3c04429c,0x7);
+	reg32_write(0x3c048280,0x0);
+	reg32_write(0x3c048284,0x1);
+	reg32_write(0x3c048288,0x2);
+	reg32_write(0x3c04828c,0x3);
+	reg32_write(0x3c048290,0x4);
+	reg32_write(0x3c048294,0x5);
+	reg32_write(0x3c048298,0x6);
+	reg32_write(0x3c04829c,0x7);
+	reg32_write(0x3c04c280,0x0);
+	reg32_write(0x3c04c284,0x1);
+	reg32_write(0x3c04c288,0x2);
+	reg32_write(0x3c04c28c,0x3);
+	reg32_write(0x3c04c290,0x4);
+	reg32_write(0x3c04c294,0x5);
+	reg32_write(0x3c04c298,0x6);
+	reg32_write(0x3c04c29c,0x7);
+
+	/* Configure DDR PHY's registers */
+	ddr_cfg_phy();
+
+	reg32_write(DDRC_RFSHCTL3(0), 0x00000000);
+	reg32_write(DDRC_SWCTL(0), 0x0000);
+	/*
+	 * ------------------- 9 -------------------
+	 * Set DFIMISC.dfi_init_start to 1 
+	 *  -----------------------------------------
+	 */
+	reg32_write(DDRC_DFIMISC(0), 0x00000030);
+	reg32_write(DDRC_SWCTL(0), 0x0001);
+
+	/* wait DFISTAT.dfi_init_complete to 1 */
+	tmp_t = 0;
+	while(tmp_t==0){
+		tmp  = reg32_read(DDRC_DFISTAT(0));
+		tmp_t = tmp & 0x01;
+		tmp  = reg32_read(DDRC_MRSTAT(0));
+	}
+
+	reg32_write(DDRC_SWCTL(0), 0x0000);
+
+	/* clear DFIMISC.dfi_init_complete_en */
+	reg32_write(DDRC_DFIMISC(0), 0x00000010);
+	reg32_write(DDRC_DFIMISC(0), 0x00000011);
+	reg32_write(DDRC_PWRCTL(0), 0x00000088);
+
+	tmp = reg32_read(DDRC_CRCPARSTAT(0));
+	/*
+	 * set SWCTL.sw_done to enable quasi-dynamic register
+	 * programming outside reset.
+	 */
+	reg32_write(DDRC_SWCTL(0), 0x00000001);
+
+	/* wait SWSTAT.sw_done_ack to 1 */
+	while((reg32_read(DDRC_SWSTAT(0)) & 0x1) == 0)
+		;
+
+	/* wait STAT.operating_mode([1:0] for ddr3) to normal state */
+	while ((reg32_read(DDRC_STAT(0)) & 0x3) != 0x1)
+		;
+
+	reg32_write(DDRC_PWRCTL(0), 0x00000088);
+	/* reg32_write(DDRC_PWRCTL(0), 0x018a); */
+	tmp = reg32_read(DDRC_CRCPARSTAT(0));
+
+	/* enable port 0 */
+	reg32_write(DDRC_PCTRL_0(0), 0x00000001);
+	tmp = reg32_read(DDRC_CRCPARSTAT(0));
+	reg32_write(DDRC_RFSHCTL3(0), 0x00000000);
+}
\ No newline at end of file
diff --git a/arch/arm/boards/nxp-imx8mq-evk/ddrphy_train.c b/arch/arm/boards/nxp-imx8mq-evk/ddrphy_train.c
new file mode 100644
index 000000000..156d7cf87
--- /dev/null
+++ b/arch/arm/boards/nxp-imx8mq-evk/ddrphy_train.c
@@ -0,0 +1,1026 @@
+/*
+ * Copyright 2017 NXP
+ *
+ * SPDX-License-Identifier:	GPL-2.0+
+ */
+
+#include "ddr.h"
+
+void ddr_cfg_phy(void) {
+	unsigned int tmp, tmp_t;
+
+	//Init DDRPHY register...
+	reg32_write(0x3c080440,0x2);
+	reg32_write(0x3c080444,0x3);
+	reg32_write(0x3c080448,0x4);
+	reg32_write(0x3c08044c,0x5);
+	reg32_write(0x3c080450,0x0);
+	reg32_write(0x3c080454,0x1);
+	reg32_write(0x3c04017c,0x1ff);
+	reg32_write(0x3c04057c,0x1ff);
+	reg32_write(0x3c04417c,0x1ff);
+	reg32_write(0x3c04457c,0x1ff);
+	reg32_write(0x3c04817c,0x1ff);
+	reg32_write(0x3c04857c,0x1ff);
+	reg32_write(0x3c04c17c,0x1ff);
+	reg32_write(0x3c04c57c,0x1ff);
+	reg32_write(0x3c44017c,0x1ff);
+	reg32_write(0x3c44057c,0x1ff);
+	reg32_write(0x3c44417c,0x1ff);
+	reg32_write(0x3c44457c,0x1ff);
+	reg32_write(0x3c44817c,0x1ff);
+	reg32_write(0x3c44857c,0x1ff);
+	reg32_write(0x3c44c17c,0x1ff);
+	reg32_write(0x3c44c57c,0x1ff);
+	reg32_write(0x3c84017c,0x1ff);
+	reg32_write(0x3c84057c,0x1ff);
+	reg32_write(0x3c84417c,0x1ff);
+	reg32_write(0x3c84457c,0x1ff);
+	reg32_write(0x3c84817c,0x1ff);
+	reg32_write(0x3c84857c,0x1ff);
+	reg32_write(0x3c84c17c,0x1ff);
+	reg32_write(0x3c84c57c,0x1ff);
+	reg32_write(0x3c000154,0x1ff);
+	reg32_write(0x3c004154,0x1ff);
+	reg32_write(0x3c008154,0x1ff);
+	reg32_write(0x3c00c154,0x1ff);
+	reg32_write(0x3c010154,0x1ff);
+	reg32_write(0x3c014154,0x1ff);
+	reg32_write(0x3c018154,0x1ff);
+	reg32_write(0x3c01c154,0x1ff);
+	reg32_write(0x3c020154,0x1ff);
+	reg32_write(0x3c024154,0x1ff);
+	reg32_write(0x3c080314,0x19);
+	reg32_write(0x3c480314,0x7);
+	reg32_write(0x3c880314,0x7);
+	reg32_write(0x3c0800b8,0x2);
+	reg32_write(0x3c4800b8,0x2);
+	reg32_write(0x3c8800b8,0x2);
+	reg32_write(0x3c240810,0x0);
+	reg32_write(0x3c640810,0x0);
+	reg32_write(0x3ca40810,0x0);
+	reg32_write(0x3c080090,0xab);
+	reg32_write(0x3c0800e8,0x0);
+	reg32_write(0x3c480090,0xab);
+	reg32_write(0x3c0800e8,0x0);
+	reg32_write(0x3c880090,0xab);
+	reg32_write(0x3c0800e8,0x0);
+	reg32_write(0x3c080158,0x7);
+	reg32_write(0x3c480158,0xa);
+	reg32_write(0x3c880158,0xa);
+	reg32_write(0x3c040134,0xe00);
+	reg32_write(0x3c040534,0xe00);
+	reg32_write(0x3c044134,0xe00);
+	reg32_write(0x3c044534,0xe00);
+	reg32_write(0x3c048134,0xe00);
+	reg32_write(0x3c048534,0xe00);
+	reg32_write(0x3c04c134,0xe00);
+	reg32_write(0x3c04c534,0xe00);
+	reg32_write(0x3c440134,0xe00);
+	reg32_write(0x3c440534,0xe00);
+	reg32_write(0x3c444134,0xe00);
+	reg32_write(0x3c444534,0xe00);
+	reg32_write(0x3c448134,0xe00);
+	reg32_write(0x3c448534,0xe00);
+	reg32_write(0x3c44c134,0xe00);
+	reg32_write(0x3c44c534,0xe00);
+	reg32_write(0x3c840134,0xe00);
+	reg32_write(0x3c840534,0xe00);
+	reg32_write(0x3c844134,0xe00);
+	reg32_write(0x3c844534,0xe00);
+	reg32_write(0x3c848134,0xe00);
+	reg32_write(0x3c848534,0xe00);
+	reg32_write(0x3c84c134,0xe00);
+	reg32_write(0x3c84c534,0xe00);
+	reg32_write(0x3c040124,0xfbe);
+	reg32_write(0x3c040524,0xfbe);
+	reg32_write(0x3c044124,0xfbe);
+	reg32_write(0x3c044524,0xfbe);
+	reg32_write(0x3c048124,0xfbe);
+	reg32_write(0x3c048524,0xfbe);
+	reg32_write(0x3c04c124,0xfbe);
+	reg32_write(0x3c04c524,0xfbe);
+	reg32_write(0x3c440124,0xfbe);
+	reg32_write(0x3c440524,0xfbe);
+	reg32_write(0x3c444124,0xfbe);
+	reg32_write(0x3c444524,0xfbe);
+	reg32_write(0x3c448124,0xfbe);
+	reg32_write(0x3c448524,0xfbe);
+	reg32_write(0x3c44c124,0xfbe);
+	reg32_write(0x3c44c524,0xfbe);
+	reg32_write(0x3c840124,0xfbe);
+	reg32_write(0x3c840524,0xfbe);
+	reg32_write(0x3c844124,0xfbe);
+	reg32_write(0x3c844524,0xfbe);
+	reg32_write(0x3c848124,0xfbe);
+	reg32_write(0x3c848524,0xfbe);
+	reg32_write(0x3c84c124,0xfbe);
+	reg32_write(0x3c84c524,0xfbe);
+	reg32_write(0x3c00010c,0x63);
+	reg32_write(0x3c00410c,0x63);
+	reg32_write(0x3c00810c,0x63);
+	reg32_write(0x3c00c10c,0x63);
+	reg32_write(0x3c01010c,0x63);
+	reg32_write(0x3c01410c,0x63);
+	reg32_write(0x3c01810c,0x63);
+	reg32_write(0x3c01c10c,0x63);
+	reg32_write(0x3c02010c,0x63);
+	reg32_write(0x3c02410c,0x63);
+	reg32_write(0x3c080060,0x3);
+	reg32_write(0x3c0801d4,0x4);
+	reg32_write(0x3c080140,0x0);
+	reg32_write(0x3c080020,0x320);
+	reg32_write(0x3c480020,0x64);
+	reg32_write(0x3c880020,0x19);
+	reg32_write(0x3c080220,0x9);
+	reg32_write(0x3c0802c8,0xdc);
+	reg32_write(0x3c04010c,0x5a1);
+	reg32_write(0x3c04050c,0x5a1);
+	reg32_write(0x3c04410c,0x5a1);
+	reg32_write(0x3c04450c,0x5a1);
+	reg32_write(0x3c04810c,0x5a1);
+	reg32_write(0x3c04850c,0x5a1);
+	reg32_write(0x3c04c10c,0x5a1);
+	reg32_write(0x3c04c50c,0x5a1);
+	reg32_write(0x3c4802c8,0xdc);
+	reg32_write(0x3c44010c,0x5a1);
+	reg32_write(0x3c44050c,0x5a1);
+	reg32_write(0x3c44410c,0x5a1);
+	reg32_write(0x3c44450c,0x5a1);
+	reg32_write(0x3c44810c,0x5a1);
+	reg32_write(0x3c44850c,0x5a1);
+	reg32_write(0x3c44c10c,0x5a1);
+	reg32_write(0x3c44c50c,0x5a1);
+	reg32_write(0x3c8802c8,0xdc);
+	reg32_write(0x3c84010c,0x5a1);
+	reg32_write(0x3c84050c,0x5a1);
+	reg32_write(0x3c84410c,0x5a1);
+	reg32_write(0x3c84450c,0x5a1);
+	reg32_write(0x3c84810c,0x5a1);
+	reg32_write(0x3c84850c,0x5a1);
+	reg32_write(0x3c84c10c,0x5a1);
+	reg32_write(0x3c84c50c,0x5a1);
+	reg32_write(0x3c0803e8,0x1);
+	reg32_write(0x3c4803e8,0x1);
+	reg32_write(0x3c8803e8,0x1);
+	reg32_write(0x3c080064,0x1);
+	reg32_write(0x3c480064,0x1);
+	reg32_write(0x3c880064,0x1);
+	reg32_write(0x3c0803c0,0x660);
+	reg32_write(0x3c0803c4,0x0);
+	reg32_write(0x3c0803c8,0x4444);
+	reg32_write(0x3c0803cc,0x8888);
+	reg32_write(0x3c0803d0,0x5665);
+	reg32_write(0x3c0803d4,0x0);
+	reg32_write(0x3c0803d8,0x0);
+	reg32_write(0x3c0803dc,0xf000);
+	reg32_write(0x3c080094,0x0);
+	reg32_write(0x3c0800b4,0x0);
+	reg32_write(0x3c4800b4,0x0);
+	reg32_write(0x3c8800b4,0x0);
+	reg32_write(0x3c080180,0x2);
+
+	//enable APB bus to access DDRPHY RAM
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0000, 0x0);
+	//load the 1D training image
+	ddr_load_train_code(FW_1D_IMAGE);
+
+	//configure DDRPHY-FW DMEM structure @clock0...
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x1);
+
+	//set the PHY input clock to the desired frequency for pstate 0
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54003,0xc80);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54004,0x2);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54006,0x11);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54008,0x131f);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54009,0xc8);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5400b,0x2);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54012,0x310);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54019,0x2dd4);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5401a,0x31);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5401b,0x4d46);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5401c,0x4d08);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5401e,0x15);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5401f,0x2dd4);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54020,0x31);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54021,0x4d46);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54022,0x4d08);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54024,0x15);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5402b,0x1000);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5402c,0x3);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54032,0xd400);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54033,0x312d);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54034,0x4600);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54035,0x84d);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54036,0x4d);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54037,0x1500);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54038,0xd400);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54039,0x312d);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5403a,0x4600);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5403b,0x84d);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5403c,0x4d);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5403d,0x1500);
+
+	//disable APB bus to access DDRPHY RAM
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0000, 0x1);
+	//Reset MPU and run
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x9);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x1);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x0);
+	wait_ddrphy_training_complete();
+
+	//configure DDRPHY-FW DMEM structure @clock1...
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x1);
+
+	//set the PHY input clock to the desired frequency for pstate 1
+	reg32_write(0x3038a008,0x7070000);
+	reg32_write(0x3038a004,0x5000000);
+	reg32_write(0x3038a088,0x7070000);
+	reg32_write(0x3038a084,0x2010000);
+	reg32_write(0x303a00ec,0xffff);
+	tmp=reg32_read(0x303a00f8);
+	tmp |= 0x20;
+	reg32_write(0x303a00f8,tmp);
+	reg32_write(0x30389804,0x1000000);
+
+	//enable APB bus to access DDRPHY RAM
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0000, 0x0);
+
+	reg32_write(0x3c150008,0x101);
+	reg32_write(0x3c15000c,0x190);
+	reg32_write(0x3c150020,0x121f);
+	reg32_write(0x3c150064,0x84);
+	reg32_write(0x3c150068,0x31);
+	reg32_write(0x3c15006c,0x4d46);
+	reg32_write(0x3c150070,0x4d08);
+	reg32_write(0x3c150074,0x0);
+	reg32_write(0x3c150078,0x15);
+	reg32_write(0x3c15007c,0x84);
+	reg32_write(0x3c150080,0x31);
+	reg32_write(0x3c150084,0x4d46);
+	reg32_write(0x3c150088,0x4d08);
+	reg32_write(0x3c15008c,0x0);
+	reg32_write(0x3c150090,0x15);
+	reg32_write(0x3c1500c8,0x8400);
+	reg32_write(0x3c1500cc,0x3100);
+	reg32_write(0x3c1500d0,0x4600);
+	reg32_write(0x3c1500d4,0x84d);
+	reg32_write(0x3c1500d8,0x4d);
+	reg32_write(0x3c1500dc,0x1500);
+	reg32_write(0x3c1500e0,0x8400);
+	reg32_write(0x3c1500e4,0x3100);
+	reg32_write(0x3c1500e8,0x4600);
+	reg32_write(0x3c1500ec,0x84d);
+	reg32_write(0x3c1500f0,0x4d);
+	reg32_write(0x3c1500f4,0x1500);
+	reg32_write(0x3c1500f8,0x0);
+
+	//disable APB bus to access DDRPHY RAM
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0000, 0x1);
+	//Reset MPU and run
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x9);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x1);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x0);
+	wait_ddrphy_training_complete();
+
+	//configure DDRPHY-FW DMEM structure @clock2...
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x1);
+
+	//set the PHY input clock to the desired frequency for pstate 2
+	reg32_write(0x3038a008,0x7070000);
+	reg32_write(0x3038a004,0x2000000);
+	reg32_write(0x3038a088,0x7070000);
+	reg32_write(0x3038a084,0x2010000);
+	reg32_write(0x303a00ec,0xffff);
+	tmp=reg32_read(0x303a00f8);
+	tmp |= 0x20;
+	reg32_write(0x303a00f8,tmp);
+	reg32_write(0x30389804,0x1000000);
+
+	//enable APB bus to access DDRPHY RAM
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0000, 0x0);
+
+	reg32_write(0x3c150008,0x102);
+	reg32_write(0x3c15000c,0x64);
+	reg32_write(0x3c150020,0x121f);
+	reg32_write(0x3c150064,0x84);
+	reg32_write(0x3c150068,0x31);
+	reg32_write(0x3c15006c,0x4d46);
+	reg32_write(0x3c150070,0x4d08);
+	reg32_write(0x3c150074,0x0);
+	reg32_write(0x3c150078,0x15);
+	reg32_write(0x3c15007c,0x84);
+	reg32_write(0x3c150080,0x31);
+	reg32_write(0x3c150084,0x4d46);
+	reg32_write(0x3c150088,0x4d08);
+	reg32_write(0x3c15008c,0x0);
+	reg32_write(0x3c150090,0x15);
+	reg32_write(0x3c1500c8,0x8400);
+	reg32_write(0x3c1500cc,0x3100);
+	reg32_write(0x3c1500d0,0x4600);
+	reg32_write(0x3c1500d4,0x84d);
+	reg32_write(0x3c1500d8,0x4d);
+	reg32_write(0x3c1500dc,0x1500);
+	reg32_write(0x3c1500e0,0x8400);
+	reg32_write(0x3c1500e4,0x3100);
+	reg32_write(0x3c1500e8,0x4600);
+	reg32_write(0x3c1500ec,0x84d);
+	reg32_write(0x3c1500f0,0x4d);
+	reg32_write(0x3c1500f4,0x1500);
+	reg32_write(0x3c1500f8,0x0);
+
+	//disable APB bus to access DDRPHY RAM
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0000, 0x1);
+	//Reset MPU and run
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x9);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x1);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x0);
+	wait_ddrphy_training_complete();
+
+	//set the PHY input clock to the desired frequency for pstate 0
+	reg32_write(0x3038a088,0x7070000);
+	reg32_write(0x3038a084,0x4030000);
+	reg32_write(0x303a00ec,0xffff);
+	tmp=reg32_read(0x303a00f8);
+	tmp |= 0x20;
+	reg32_write(0x303a00f8,tmp);
+	reg32_write(0x30360068,0xbbe580);
+	tmp=reg32_read(0x30360060);
+	tmp &= ~0x80;
+	reg32_write(0x30360060,tmp);
+	tmp=reg32_read(0x30360060);
+	tmp |= 0x200;
+	reg32_write(0x30360060,tmp);
+	tmp=reg32_read(0x30360060);
+	tmp &= ~0x20;
+	reg32_write(0x30360060,tmp);
+	tmp=reg32_read(0x30360060);
+	tmp &= ~0x10;
+	reg32_write(0x30360060,tmp);
+	do{
+		tmp=reg32_read(0x30360060);
+		if(tmp&0x80000000) break;
+	}while(1);
+	reg32_write(0x30389808,0x1000000);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x1);
+
+
+	//enable APB bus to access DDRPHY RAM
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0000, 0x0);
+	//load the 2D training image
+	ddr_load_train_code(FW_2D_IMAGE);
+
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54003,0xc80);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54006,0x11);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54008,0x61);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54009,0xc8);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5400b,0x2);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5400f,0x100);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54010,0x1f7f);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54012,0x310);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54019,0x2dd4);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5401a,0x31);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5401b,0x4d46);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5401c,0x4d08);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5401e,0x15);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5401f,0x2dd4);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54020,0x31);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54021,0x4d46);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54022,0x4d08);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54024,0x15);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5402b,0x1000);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5402c,0x3);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54032,0xd400);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54033,0x312d);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54034,0x4600);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54035,0x84d);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54036,0x4d);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54037,0x1500);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54038,0xd400);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54039,0x312d);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5403a,0x4600);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5403b,0x84d);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5403c,0x4d);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5403d,0x1500);
+
+	//disable APB bus to access DDRPHY RAM
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0000, 0x1);
+	//Reset MPU and run
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x9);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x1);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x0);
+	wait_ddrphy_training_complete();
+
+	//Halt MPU
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x1);
+	//enable APB bus to access DDRPHY RAM
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0000, 0x0);
+
+	//Load firmware PIE image
+	reg32_write(0x3c240000,0x10);
+	reg32_write(0x3c240004,0x400);
+	reg32_write(0x3c240008,0x10e);
+	reg32_write(0x3c24000c,0x0);
+	reg32_write(0x3c240010,0x0);
+	reg32_write(0x3c240014,0x8);
+	reg32_write(0x3c2400a4,0xb);
+	reg32_write(0x3c2400a8,0x480);
+	reg32_write(0x3c2400ac,0x109);
+	reg32_write(0x3c2400b0,0x8);
+	reg32_write(0x3c2400b4,0x448);
+	reg32_write(0x3c2400b8,0x139);
+	reg32_write(0x3c2400bc,0x8);
+	reg32_write(0x3c2400c0,0x478);
+	reg32_write(0x3c2400c4,0x109);
+	reg32_write(0x3c2400c8,0x0);
+	reg32_write(0x3c2400cc,0xe8);
+	reg32_write(0x3c2400d0,0x109);
+	reg32_write(0x3c2400d4,0x2);
+	reg32_write(0x3c2400d8,0x10);
+	reg32_write(0x3c2400dc,0x139);
+	reg32_write(0x3c2400e0,0xf);
+	reg32_write(0x3c2400e4,0x7c0);
+	reg32_write(0x3c2400e8,0x139);
+	reg32_write(0x3c2400ec,0x44);
+	reg32_write(0x3c2400f0,0x630);
+	reg32_write(0x3c2400f4,0x159);
+	reg32_write(0x3c2400f8,0x14f);
+	reg32_write(0x3c2400fc,0x630);
+	reg32_write(0x3c240100,0x159);
+	reg32_write(0x3c240104,0x47);
+	reg32_write(0x3c240108,0x630);
+	reg32_write(0x3c24010c,0x149);
+	reg32_write(0x3c240110,0x4f);
+	reg32_write(0x3c240114,0x630);
+	reg32_write(0x3c240118,0x179);
+	reg32_write(0x3c24011c,0x8);
+	reg32_write(0x3c240120,0xe0);
+	reg32_write(0x3c240124,0x109);
+	reg32_write(0x3c240128,0x0);
+	reg32_write(0x3c24012c,0x7c8);
+	reg32_write(0x3c240130,0x109);
+	reg32_write(0x3c240134,0x0);
+	reg32_write(0x3c240138,0x1);
+	reg32_write(0x3c24013c,0x8);
+	reg32_write(0x3c240140,0x0);
+	reg32_write(0x3c240144,0x45a);
+	reg32_write(0x3c240148,0x9);
+	reg32_write(0x3c24014c,0x0);
+	reg32_write(0x3c240150,0x448);
+	reg32_write(0x3c240154,0x109);
+	reg32_write(0x3c240158,0x40);
+	reg32_write(0x3c24015c,0x630);
+	reg32_write(0x3c240160,0x179);
+	reg32_write(0x3c240164,0x1);
+	reg32_write(0x3c240168,0x618);
+	reg32_write(0x3c24016c,0x109);
+	reg32_write(0x3c240170,0x40c0);
+	reg32_write(0x3c240174,0x630);
+	reg32_write(0x3c240178,0x149);
+	reg32_write(0x3c24017c,0x8);
+	reg32_write(0x3c240180,0x4);
+	reg32_write(0x3c240184,0x48);
+	reg32_write(0x3c240188,0x4040);
+	reg32_write(0x3c24018c,0x630);
+	reg32_write(0x3c240190,0x149);
+	reg32_write(0x3c240194,0x0);
+	reg32_write(0x3c240198,0x4);
+	reg32_write(0x3c24019c,0x48);
+	reg32_write(0x3c2401a0,0x40);
+	reg32_write(0x3c2401a4,0x630);
+	reg32_write(0x3c2401a8,0x149);
+	reg32_write(0x3c2401ac,0x10);
+	reg32_write(0x3c2401b0,0x4);
+	reg32_write(0x3c2401b4,0x18);
+	reg32_write(0x3c2401b8,0x0);
+	reg32_write(0x3c2401bc,0x4);
+	reg32_write(0x3c2401c0,0x78);
+	reg32_write(0x3c2401c4,0x549);
+	reg32_write(0x3c2401c8,0x630);
+	reg32_write(0x3c2401cc,0x159);
+	reg32_write(0x3c2401d0,0xd49);
+	reg32_write(0x3c2401d4,0x630);
+	reg32_write(0x3c2401d8,0x159);
+	reg32_write(0x3c2401dc,0x94a);
+	reg32_write(0x3c2401e0,0x630);
+	reg32_write(0x3c2401e4,0x159);
+	reg32_write(0x3c2401e8,0x441);
+	reg32_write(0x3c2401ec,0x630);
+	reg32_write(0x3c2401f0,0x149);
+	reg32_write(0x3c2401f4,0x42);
+	reg32_write(0x3c2401f8,0x630);
+	reg32_write(0x3c2401fc,0x149);
+	reg32_write(0x3c240200,0x1);
+	reg32_write(0x3c240204,0x630);
+	reg32_write(0x3c240208,0x149);
+	reg32_write(0x3c24020c,0x0);
+	reg32_write(0x3c240210,0xe0);
+	reg32_write(0x3c240214,0x109);
+	reg32_write(0x3c240218,0xa);
+	reg32_write(0x3c24021c,0x10);
+	reg32_write(0x3c240220,0x109);
+	reg32_write(0x3c240224,0x9);
+	reg32_write(0x3c240228,0x3c0);
+	reg32_write(0x3c24022c,0x149);
+	reg32_write(0x3c240230,0x9);
+	reg32_write(0x3c240234,0x3c0);
+	reg32_write(0x3c240238,0x159);
+	reg32_write(0x3c24023c,0x18);
+	reg32_write(0x3c240240,0x10);
+	reg32_write(0x3c240244,0x109);
+	reg32_write(0x3c240248,0x0);
+	reg32_write(0x3c24024c,0x3c0);
+	reg32_write(0x3c240250,0x109);
+	reg32_write(0x3c240254,0x18);
+	reg32_write(0x3c240258,0x4);
+	reg32_write(0x3c24025c,0x48);
+	reg32_write(0x3c240260,0x18);
+	reg32_write(0x3c240264,0x4);
+	reg32_write(0x3c240268,0x58);
+	reg32_write(0x3c24026c,0xa);
+	reg32_write(0x3c240270,0x10);
+	reg32_write(0x3c240274,0x109);
+	reg32_write(0x3c240278,0x2);
+	reg32_write(0x3c24027c,0x10);
+	reg32_write(0x3c240280,0x109);
+	reg32_write(0x3c240284,0x5);
+	reg32_write(0x3c240288,0x7c0);
+	reg32_write(0x3c24028c,0x109);
+	reg32_write(0x3c240290,0x10);
+	reg32_write(0x3c240294,0x10);
+	reg32_write(0x3c240298,0x109);
+	reg32_write(0x3c100000,0x811);
+	reg32_write(0x3c100080,0x880);
+	reg32_write(0x3c100100,0x0);
+	reg32_write(0x3c100180,0x0);
+	reg32_write(0x3c100004,0x4008);
+	reg32_write(0x3c100084,0x83);
+	reg32_write(0x3c100104,0x4f);
+	reg32_write(0x3c100184,0x0);
+	reg32_write(0x3c100008,0x4040);
+	reg32_write(0x3c100088,0x83);
+	reg32_write(0x3c100108,0x51);
+	reg32_write(0x3c100188,0x0);
+	reg32_write(0x3c10000c,0x811);
+	reg32_write(0x3c10008c,0x880);
+	reg32_write(0x3c10010c,0x0);
+	reg32_write(0x3c10018c,0x0);
+	reg32_write(0x3c100010,0x720);
+	reg32_write(0x3c100090,0xf);
+	reg32_write(0x3c100110,0x1740);
+	reg32_write(0x3c100190,0x0);
+	reg32_write(0x3c100014,0x16);
+	reg32_write(0x3c100094,0x83);
+	reg32_write(0x3c100114,0x4b);
+	reg32_write(0x3c100194,0x0);
+	reg32_write(0x3c100018,0x716);
+	reg32_write(0x3c100098,0xf);
+	reg32_write(0x3c100118,0x2001);
+	reg32_write(0x3c100198,0x0);
+	reg32_write(0x3c10001c,0x716);
+	reg32_write(0x3c10009c,0xf);
+	reg32_write(0x3c10011c,0x2800);
+	reg32_write(0x3c10019c,0x0);
+	reg32_write(0x3c100020,0x716);
+	reg32_write(0x3c1000a0,0xf);
+	reg32_write(0x3c100120,0xf00);
+	reg32_write(0x3c1001a0,0x0);
+	reg32_write(0x3c100024,0x720);
+	reg32_write(0x3c1000a4,0xf);
+	reg32_write(0x3c100124,0x1400);
+	reg32_write(0x3c1001a4,0x0);
+	reg32_write(0x3c100028,0xe08);
+	reg32_write(0x3c1000a8,0xc15);
+	reg32_write(0x3c100128,0x0);
+	reg32_write(0x3c1001a8,0x0);
+	reg32_write(0x3c10002c,0x623);
+	reg32_write(0x3c1000ac,0x15);
+	reg32_write(0x3c10012c,0x0);
+	reg32_write(0x3c1001ac,0x0);
+	reg32_write(0x3c100030,0x4028);
+	reg32_write(0x3c1000b0,0x80);
+	reg32_write(0x3c100130,0x0);
+	reg32_write(0x3c1001b0,0x0);
+	reg32_write(0x3c100034,0xe08);
+	reg32_write(0x3c1000b4,0xc1a);
+	reg32_write(0x3c100134,0x0);
+	reg32_write(0x3c1001b4,0x0);
+	reg32_write(0x3c100038,0x623);
+	reg32_write(0x3c1000b8,0x1a);
+	reg32_write(0x3c100138,0x0);
+	reg32_write(0x3c1001b8,0x0);
+	reg32_write(0x3c10003c,0x4040);
+	reg32_write(0x3c1000bc,0x80);
+	reg32_write(0x3c10013c,0x0);
+	reg32_write(0x3c1001bc,0x0);
+	reg32_write(0x3c100040,0x2604);
+	reg32_write(0x3c1000c0,0x15);
+	reg32_write(0x3c100140,0x0);
+	reg32_write(0x3c1001c0,0x0);
+	reg32_write(0x3c100044,0x708);
+	reg32_write(0x3c1000c4,0x5);
+	reg32_write(0x3c100144,0x0);
+	reg32_write(0x3c1001c4,0x2002);
+	reg32_write(0x3c100048,0x8);
+	reg32_write(0x3c1000c8,0x80);
+	reg32_write(0x3c100148,0x0);
+	reg32_write(0x3c1001c8,0x0);
+	reg32_write(0x3c10004c,0x2604);
+	reg32_write(0x3c1000cc,0x1a);
+	reg32_write(0x3c10014c,0x0);
+	reg32_write(0x3c1001cc,0x0);
+	reg32_write(0x3c100050,0x708);
+	reg32_write(0x3c1000d0,0xa);
+	reg32_write(0x3c100150,0x0);
+	reg32_write(0x3c1001d0,0x2002);
+	reg32_write(0x3c100054,0x4040);
+	reg32_write(0x3c1000d4,0x80);
+	reg32_write(0x3c100154,0x0);
+	reg32_write(0x3c1001d4,0x0);
+	reg32_write(0x3c100058,0x60a);
+	reg32_write(0x3c1000d8,0x15);
+	reg32_write(0x3c100158,0x1200);
+	reg32_write(0x3c1001d8,0x0);
+	reg32_write(0x3c10005c,0x61a);
+	reg32_write(0x3c1000dc,0x15);
+	reg32_write(0x3c10015c,0x1300);
+	reg32_write(0x3c1001dc,0x0);
+	reg32_write(0x3c100060,0x60a);
+	reg32_write(0x3c1000e0,0x1a);
+	reg32_write(0x3c100160,0x1200);
+	reg32_write(0x3c1001e0,0x0);
+	reg32_write(0x3c100064,0x642);
+	reg32_write(0x3c1000e4,0x1a);
+	reg32_write(0x3c100164,0x1300);
+	reg32_write(0x3c1001e4,0x0);
+	reg32_write(0x3c100068,0x4808);
+	reg32_write(0x3c1000e8,0x880);
+	reg32_write(0x3c100168,0x0);
+	reg32_write(0x3c1001e8,0x0);
+	reg32_write(0x3c24029c,0x0);
+	reg32_write(0x3c2402a0,0x790);
+	reg32_write(0x3c2402a4,0x11a);
+	reg32_write(0x3c2402a8,0x8);
+	reg32_write(0x3c2402ac,0x7aa);
+	reg32_write(0x3c2402b0,0x2a);
+	reg32_write(0x3c2402b4,0x10);
+	reg32_write(0x3c2402b8,0x7b2);
+	reg32_write(0x3c2402bc,0x2a);
+	reg32_write(0x3c2402c0,0x0);
+	reg32_write(0x3c2402c4,0x7c8);
+	reg32_write(0x3c2402c8,0x109);
+	reg32_write(0x3c2402cc,0x10);
+	reg32_write(0x3c2402d0,0x2a8);
+	reg32_write(0x3c2402d4,0x129);
+	reg32_write(0x3c2402d8,0x8);
+	reg32_write(0x3c2402dc,0x370);
+	reg32_write(0x3c2402e0,0x129);
+	reg32_write(0x3c2402e4,0xa);
+	reg32_write(0x3c2402e8,0x3c8);
+	reg32_write(0x3c2402ec,0x1a9);
+	reg32_write(0x3c2402f0,0xc);
+	reg32_write(0x3c2402f4,0x408);
+	reg32_write(0x3c2402f8,0x199);
+	reg32_write(0x3c2402fc,0x14);
+	reg32_write(0x3c240300,0x790);
+	reg32_write(0x3c240304,0x11a);
+	reg32_write(0x3c240308,0x8);
+	reg32_write(0x3c24030c,0x4);
+	reg32_write(0x3c240310,0x18);
+	reg32_write(0x3c240314,0xe);
+	reg32_write(0x3c240318,0x408);
+	reg32_write(0x3c24031c,0x199);
+	reg32_write(0x3c240320,0x8);
+	reg32_write(0x3c240324,0x8568);
+	reg32_write(0x3c240328,0x108);
+	reg32_write(0x3c24032c,0x18);
+	reg32_write(0x3c240330,0x790);
+	reg32_write(0x3c240334,0x16a);
+	reg32_write(0x3c240338,0x8);
+	reg32_write(0x3c24033c,0x1d8);
+	reg32_write(0x3c240340,0x169);
+	reg32_write(0x3c240344,0x10);
+	reg32_write(0x3c240348,0x8558);
+	reg32_write(0x3c24034c,0x168);
+	reg32_write(0x3c240350,0x70);
+	reg32_write(0x3c240354,0x788);
+	reg32_write(0x3c240358,0x16a);
+	reg32_write(0x3c24035c,0x1ff8);
+	reg32_write(0x3c240360,0x85a8);
+	reg32_write(0x3c240364,0x1e8);
+	reg32_write(0x3c240368,0x50);
+	reg32_write(0x3c24036c,0x798);
+	reg32_write(0x3c240370,0x16a);
+	reg32_write(0x3c240374,0x60);
+	reg32_write(0x3c240378,0x7a0);
+	reg32_write(0x3c24037c,0x16a);
+	reg32_write(0x3c240380,0x8);
+	reg32_write(0x3c240384,0x8310);
+	reg32_write(0x3c240388,0x168);
+	reg32_write(0x3c24038c,0x8);
+	reg32_write(0x3c240390,0xa310);
+	reg32_write(0x3c240394,0x168);
+	reg32_write(0x3c240398,0xa);
+	reg32_write(0x3c24039c,0x408);
+	reg32_write(0x3c2403a0,0x169);
+	reg32_write(0x3c2403a4,0x6e);
+	reg32_write(0x3c2403a8,0x0);
+	reg32_write(0x3c2403ac,0x68);
+	reg32_write(0x3c2403b0,0x0);
+	reg32_write(0x3c2403b4,0x408);
+	reg32_write(0x3c2403b8,0x169);
+	reg32_write(0x3c2403bc,0x0);
+	reg32_write(0x3c2403c0,0x8310);
+	reg32_write(0x3c2403c4,0x168);
+	reg32_write(0x3c2403c8,0x0);
+	reg32_write(0x3c2403cc,0xa310);
+	reg32_write(0x3c2403d0,0x168);
+	reg32_write(0x3c2403d4,0x1ff8);
+	reg32_write(0x3c2403d8,0x85a8);
+	reg32_write(0x3c2403dc,0x1e8);
+	reg32_write(0x3c2403e0,0x68);
+	reg32_write(0x3c2403e4,0x798);
+	reg32_write(0x3c2403e8,0x16a);
+	reg32_write(0x3c2403ec,0x78);
+	reg32_write(0x3c2403f0,0x7a0);
+	reg32_write(0x3c2403f4,0x16a);
+	reg32_write(0x3c2403f8,0x68);
+	reg32_write(0x3c2403fc,0x790);
+	reg32_write(0x3c240400,0x16a);
+	reg32_write(0x3c240404,0x8);
+	reg32_write(0x3c240408,0x8b10);
+	reg32_write(0x3c24040c,0x168);
+	reg32_write(0x3c240410,0x8);
+	reg32_write(0x3c240414,0xab10);
+	reg32_write(0x3c240418,0x168);
+	reg32_write(0x3c24041c,0xa);
+	reg32_write(0x3c240420,0x408);
+	reg32_write(0x3c240424,0x169);
+	reg32_write(0x3c240428,0x58);
+	reg32_write(0x3c24042c,0x0);
+	reg32_write(0x3c240430,0x68);
+	reg32_write(0x3c240434,0x0);
+	reg32_write(0x3c240438,0x408);
+	reg32_write(0x3c24043c,0x169);
+	reg32_write(0x3c240440,0x0);
+	reg32_write(0x3c240444,0x8b10);
+	reg32_write(0x3c240448,0x168);
+	reg32_write(0x3c24044c,0x0);
+	reg32_write(0x3c240450,0xab10);
+	reg32_write(0x3c240454,0x168);
+	reg32_write(0x3c240458,0x0);
+	reg32_write(0x3c24045c,0x1d8);
+	reg32_write(0x3c240460,0x169);
+	reg32_write(0x3c240464,0x80);
+	reg32_write(0x3c240468,0x790);
+	reg32_write(0x3c24046c,0x16a);
+	reg32_write(0x3c240470,0x18);
+	reg32_write(0x3c240474,0x7aa);
+	reg32_write(0x3c240478,0x6a);
+	reg32_write(0x3c24047c,0xa);
+	reg32_write(0x3c240480,0x0);
+	reg32_write(0x3c240484,0x1e9);
+	reg32_write(0x3c240488,0x8);
+	reg32_write(0x3c24048c,0x8080);
+	reg32_write(0x3c240490,0x108);
+	reg32_write(0x3c240494,0xf);
+	reg32_write(0x3c240498,0x408);
+	reg32_write(0x3c24049c,0x169);
+	reg32_write(0x3c2404a0,0xc);
+	reg32_write(0x3c2404a4,0x0);
+	reg32_write(0x3c2404a8,0x68);
+	reg32_write(0x3c2404ac,0x9);
+	reg32_write(0x3c2404b0,0x0);
+	reg32_write(0x3c2404b4,0x1a9);
+	reg32_write(0x3c2404b8,0x0);
+	reg32_write(0x3c2404bc,0x408);
+	reg32_write(0x3c2404c0,0x169);
+	reg32_write(0x3c2404c4,0x0);
+	reg32_write(0x3c2404c8,0x8080);
+	reg32_write(0x3c2404cc,0x108);
+	reg32_write(0x3c2404d0,0x8);
+	reg32_write(0x3c2404d4,0x7aa);
+	reg32_write(0x3c2404d8,0x6a);
+	reg32_write(0x3c2404dc,0x0);
+	reg32_write(0x3c2404e0,0x8568);
+	reg32_write(0x3c2404e4,0x108);
+	reg32_write(0x3c2404e8,0xb7);
+	reg32_write(0x3c2404ec,0x790);
+	reg32_write(0x3c2404f0,0x16a);
+	reg32_write(0x3c2404f4,0x1f);
+	reg32_write(0x3c2404f8,0x0);
+	reg32_write(0x3c2404fc,0x68);
+	reg32_write(0x3c240500,0x8);
+	reg32_write(0x3c240504,0x8558);
+	reg32_write(0x3c240508,0x168);
+	reg32_write(0x3c24050c,0xf);
+	reg32_write(0x3c240510,0x408);
+	reg32_write(0x3c240514,0x169);
+	reg32_write(0x3c240518,0xc);
+	reg32_write(0x3c24051c,0x0);
+	reg32_write(0x3c240520,0x68);
+	reg32_write(0x3c240524,0x0);
+	reg32_write(0x3c240528,0x408);
+	reg32_write(0x3c24052c,0x169);
+	reg32_write(0x3c240530,0x0);
+	reg32_write(0x3c240534,0x8558);
+	reg32_write(0x3c240538,0x168);
+	reg32_write(0x3c24053c,0x8);
+	reg32_write(0x3c240540,0x3c8);
+	reg32_write(0x3c240544,0x1a9);
+	reg32_write(0x3c240548,0x3);
+	reg32_write(0x3c24054c,0x370);
+	reg32_write(0x3c240550,0x129);
+	reg32_write(0x3c240554,0x20);
+	reg32_write(0x3c240558,0x2aa);
+	reg32_write(0x3c24055c,0x9);
+	reg32_write(0x3c240560,0x0);
+	reg32_write(0x3c240564,0x400);
+	reg32_write(0x3c240568,0x10e);
+	reg32_write(0x3c24056c,0x8);
+	reg32_write(0x3c240570,0xe8);
+	reg32_write(0x3c240574,0x109);
+	reg32_write(0x3c240578,0x0);
+	reg32_write(0x3c24057c,0x8140);
+	reg32_write(0x3c240580,0x10c);
+	reg32_write(0x3c240584,0x10);
+	reg32_write(0x3c240588,0x8138);
+	reg32_write(0x3c24058c,0x10c);
+	reg32_write(0x3c240590,0x8);
+	reg32_write(0x3c240594,0x7c8);
+	reg32_write(0x3c240598,0x101);
+	reg32_write(0x3c24059c,0x8);
+	reg32_write(0x3c2405a0,0x0);
+	reg32_write(0x3c2405a4,0x8);
+	reg32_write(0x3c2405a8,0x8);
+	reg32_write(0x3c2405ac,0x448);
+	reg32_write(0x3c2405b0,0x109);
+	reg32_write(0x3c2405b4,0xf);
+	reg32_write(0x3c2405b8,0x7c0);
+	reg32_write(0x3c2405bc,0x109);
+	reg32_write(0x3c2405c0,0x0);
+	reg32_write(0x3c2405c4,0xe8);
+	reg32_write(0x3c2405c8,0x109);
+	reg32_write(0x3c2405cc,0x47);
+	reg32_write(0x3c2405d0,0x630);
+	reg32_write(0x3c2405d4,0x109);
+	reg32_write(0x3c2405d8,0x8);
+	reg32_write(0x3c2405dc,0x618);
+	reg32_write(0x3c2405e0,0x109);
+	reg32_write(0x3c2405e4,0x8);
+	reg32_write(0x3c2405e8,0xe0);
+	reg32_write(0x3c2405ec,0x109);
+	reg32_write(0x3c2405f0,0x0);
+	reg32_write(0x3c2405f4,0x7c8);
+	reg32_write(0x3c2405f8,0x109);
+	reg32_write(0x3c2405fc,0x8);
+	reg32_write(0x3c240600,0x8140);
+	reg32_write(0x3c240604,0x10c);
+	reg32_write(0x3c240608,0x0);
+	reg32_write(0x3c24060c,0x1);
+	reg32_write(0x3c240610,0x8);
+	reg32_write(0x3c240614,0x8);
+	reg32_write(0x3c240618,0x4);
+	reg32_write(0x3c24061c,0x8);
+	reg32_write(0x3c240620,0x8);
+	reg32_write(0x3c240624,0x7c8);
+	reg32_write(0x3c240628,0x101);
+	reg32_write(0x3c240018,0x0);
+	reg32_write(0x3c24001c,0x0);
+	reg32_write(0x3c240020,0x8);
+	reg32_write(0x3c240024,0x0);
+	reg32_write(0x3c240028,0x0);
+	reg32_write(0x3c24002c,0x0);
+	reg32_write(0x3c34039c,0x400);
+	reg32_write(0x3c24005c,0x0);
+	reg32_write(0x3c24007c,0x2a);
+	reg32_write(0x3c240098,0x6a);
+	reg32_write(0x3c100340,0x0);
+	reg32_write(0x3c100344,0x101);
+	reg32_write(0x3c100348,0x105);
+	reg32_write(0x3c10034c,0x107);
+	reg32_write(0x3c100350,0x10f);
+	reg32_write(0x3c100354,0x202);
+	reg32_write(0x3c100358,0x20a);
+	reg32_write(0x3c10035c,0x20b);
+	reg32_write(0x3c0800e8,0x2);
+	reg32_write(0x3c08002c,0x65);
+	reg32_write(0x3c080030,0xc9);
+	reg32_write(0x3c080034,0x7d1);
+	reg32_write(0x3c080038,0x2c);
+	reg32_write(0x3c48002c,0x65);
+	reg32_write(0x3c480030,0xc9);
+	reg32_write(0x3c480034,0x7d1);
+	reg32_write(0x3c480038,0x2c);
+	reg32_write(0x3c88002c,0x65);
+	reg32_write(0x3c880030,0xc9);
+	reg32_write(0x3c880034,0x7d1);
+	reg32_write(0x3c880038,0x2c);
+	reg32_write(0x3c240030,0x0);
+	reg32_write(0x3c240034,0x173);
+	reg32_write(0x3c240038,0x60);
+	reg32_write(0x3c24003c,0x6110);
+	reg32_write(0x3c240040,0x2152);
+	reg32_write(0x3c240044,0xdfbd);
+	reg32_write(0x3c240048,0x60);
+	reg32_write(0x3c24004c,0x6152);
+	reg32_write(0x3c080040,0x5a);
+	reg32_write(0x3c080044,0x3);
+	reg32_write(0x3c480040,0x5a);
+	reg32_write(0x3c480044,0x3);
+	reg32_write(0x3c880040,0x5a);
+	reg32_write(0x3c880044,0x3);
+	reg32_write(0x3c100200,0xe0);
+	reg32_write(0x3c100204,0x12);
+	reg32_write(0x3c100208,0xe0);
+	reg32_write(0x3c10020c,0x12);
+	reg32_write(0x3c100210,0xe0);
+	reg32_write(0x3c100214,0x12);
+	reg32_write(0x3c500200,0xe0);
+	reg32_write(0x3c500204,0x12);
+	reg32_write(0x3c500208,0xe0);
+	reg32_write(0x3c50020c,0x12);
+	reg32_write(0x3c500210,0xe0);
+	reg32_write(0x3c500214,0x12);
+	reg32_write(0x3c900200,0xe0);
+	reg32_write(0x3c900204,0x12);
+	reg32_write(0x3c900208,0xe0);
+	reg32_write(0x3c90020c,0x12);
+	reg32_write(0x3c900210,0xe0);
+	reg32_write(0x3c900214,0x12);
+	reg32_write(0x3c1003f4,0xf);
+	reg32_write(0x3c040044,0x1);
+	reg32_write(0x3c040048,0x1);
+	reg32_write(0x3c04004c,0x180);
+	reg32_write(0x3c040060,0x1);
+	reg32_write(0x3c040008,0x6209);
+	reg32_write(0x3c0402c8,0x1);
+	reg32_write(0x3c0406d0,0x1);
+	reg32_write(0x3c040ad0,0x1);
+	reg32_write(0x3c040ed0,0x1);
+	reg32_write(0x3c0412d0,0x1);
+	reg32_write(0x3c0416d0,0x1);
+	reg32_write(0x3c041ad0,0x1);
+	reg32_write(0x3c041ed0,0x1);
+	reg32_write(0x3c0422d0,0x1);
+	reg32_write(0x3c044044,0x1);
+	reg32_write(0x3c044048,0x1);
+	reg32_write(0x3c04404c,0x180);
+	reg32_write(0x3c044060,0x1);
+	reg32_write(0x3c044008,0x6209);
+	reg32_write(0x3c0442c8,0x1);
+	reg32_write(0x3c0446d0,0x1);
+	reg32_write(0x3c044ad0,0x1);
+	reg32_write(0x3c044ed0,0x1);
+	reg32_write(0x3c0452d0,0x1);
+	reg32_write(0x3c0456d0,0x1);
+	reg32_write(0x3c045ad0,0x1);
+	reg32_write(0x3c045ed0,0x1);
+	reg32_write(0x3c0462d0,0x1);
+	reg32_write(0x3c048044,0x1);
+	reg32_write(0x3c048048,0x1);
+	reg32_write(0x3c04804c,0x180);
+	reg32_write(0x3c048060,0x1);
+	reg32_write(0x3c048008,0x6209);
+	reg32_write(0x3c0482c8,0x1);
+	reg32_write(0x3c0486d0,0x1);
+	reg32_write(0x3c048ad0,0x1);
+	reg32_write(0x3c048ed0,0x1);
+	reg32_write(0x3c0492d0,0x1);
+	reg32_write(0x3c0496d0,0x1);
+	reg32_write(0x3c049ad0,0x1);
+	reg32_write(0x3c049ed0,0x1);
+	reg32_write(0x3c04a2d0,0x1);
+	reg32_write(0x3c04c044,0x1);
+	reg32_write(0x3c04c048,0x1);
+	reg32_write(0x3c04c04c,0x180);
+	reg32_write(0x3c04c060,0x1);
+	reg32_write(0x3c04c008,0x6209);
+	reg32_write(0x3c04c2c8,0x1);
+	reg32_write(0x3c04c6d0,0x1);
+	reg32_write(0x3c04cad0,0x1);
+	reg32_write(0x3c04ced0,0x1);
+	reg32_write(0x3c04d2d0,0x1);
+	reg32_write(0x3c04d6d0,0x1);
+	reg32_write(0x3c04dad0,0x1);
+	reg32_write(0x3c04ded0,0x1);
+	reg32_write(0x3c04e2d0,0x1);
+	reg32_write(0x3c0800e8,0x2);
+	reg32_write(0x3c300200,0x2);
+	//customer Post Train
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x00020010, 0x0000006a);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x0002001d, 0x00000001);
+	/*
+	 * CalBusy.0 =1, indicates the calibrator is actively calibrating.
+	 * Wait Calibrating done.
+	 */
+	tmp_t = 1;
+	while(tmp_t) {
+		tmp = reg32_read(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x20097);
+		tmp_t = tmp & 0x01;
+	}
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0000, 0x0);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x2006e, 0x0);
+	//disable APB bus to access DDRPHY RAM
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0000, 0x1);
+}
\ No newline at end of file
diff --git a/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg b/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
new file mode 100644
index 000000000..585f8fe33
--- /dev/null
+++ b/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
@@ -0,0 +1,4 @@
+soc imx8
+
+loadaddr 0x007E1000
+dcdofs 0x400
diff --git a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
new file mode 100644
index 000000000..1ed918ee0
--- /dev/null
+++ b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
@@ -0,0 +1,81 @@
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
+#include <mach/imx8-ccm-regs.h>
+#include <mach/iomux-mx8.h>
+#include <mach/imx8-ddrc.h>
+#include <mach/xload.h>
+#include <io.h>
+#include <debug_ll.h>
+#include <asm/cache.h>
+#include <asm/sections.h>
+#include <asm/mmu.h>
+
+#include "ddr.h"
+
+extern char __dtb_imx8mq_evk_start[];
+
+#define UART_PAD_CTRL	MUX_PAD_CTRL(PAD_CTL_DSE_3P3V_45_OHM)
+
+static void setup_uart(void)
+{
+	void __iomem *iomux = IOMEM(MX8MQ_IOMUXC_BASE_ADDR);
+	void __iomem *ccm   = IOMEM(MX8MQ_CCM_BASE_ADDR);
+
+	writel(CCM_CCGR_SETTINGn_NEEDED(0),
+	       ccm + CCM_CCGRn_CLR(CCM_CCGR_UART1));
+	writel(CCM_TARGET_ROOTn_ENABLE | UART1_CLK_ROOT__25M_REF_CLK,
+	       ccm + CCM_TARGET_ROOTn(UART1_CLK_ROOT));
+	writel(CCM_CCGR_SETTINGn_NEEDED(0),
+	       ccm + CCM_CCGRn_SET(CCM_CCGR_UART1));
+
+	imx_setup_pad(iomux, IMX8MQ_PAD_UART1_TXD__UART1_TX | UART_PAD_CTRL);
+
+	imx8_uart_setup_ll();
+
+	putc_ll('>');
+}
+
+static void nxp_imx8mq_evk_sram_setup(void)
+{
+	enum bootsource src = BOOTSOURCE_UNKNOWN;
+	int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
+	int ret = -ENOTSUPP;
+
+	ddr_init();
+
+	imx8_get_boot_source(&src, &instance);
+
+	if (src == BOOTSOURCE_MMC)
+		ret = imx8_esdhc_start_image(instance);
+
+	BUG_ON(ret);
+}
+
+ENTRY_FUNCTION(start_nxp_imx8mq_evk, r0, r1, r2)
+{
+	arm_cpu_lowlevel_init();
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		setup_uart();
+
+	if (get_pc() < MX8MQ_DDR_CSD1_BASE_ADDR)
+		nxp_imx8mq_evk_sram_setup();
+
+	barebox_arm_entry(MX8MQ_DDR_CSD1_BASE_ADDR,
+			  SZ_2G + SZ_1G, __dtb_imx8mq_evk_start);
+}
+
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index b69592e64..10fcfbf1f 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -86,6 +86,7 @@ pbl-dtb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += imx6dl-hummingboard.dtb.o imx6q-humm
 pbl-dtb-$(CONFIG_MACH_TECHNEXION_WANDBOARD) += imx6q-wandboard.dtb.o imx6dl-wandboard.dtb.o
 pbl-dtb-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += imx6ul-pico-hobbit.dtb.o
 pbl-dtb-$(CONFIG_MACH_NXP_IMX6ULL_EVK) += imx6ull-14x14-evk.dtb.o
+pbl-dtb-$(CONFIG_MACH_NXP_IMX8MQ_EVK) += imx8mq-evk.dtb.o
 pbl-dtb-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += tegra20-colibri-iris.dtb.o
 pbl-dtb-$(CONFIG_MACH_TOSHIBA_AC100) += tegra20-paz00.dtb.o
 pbl-dtb-$(CONFIG_MACH_TQMA53) += imx53-mba53.dtb.o
diff --git a/arch/arm/dts/imx8mq-evk.dts b/arch/arm/dts/imx8mq-evk.dts
new file mode 100644
index 000000000..3ac13baa1
--- /dev/null
+++ b/arch/arm/dts/imx8mq-evk.dts
@@ -0,0 +1,444 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2017 NXP
+ * Copyright (C) 2017 Pengutronix, Lucas Stach <kernel@pengutronix.de>
+ */
+
+/dts-v1/;
+
+#include "imx8mq.dtsi"
+
+/ {
+	model = "NXP i.MX8MQ EVK";
+	compatible = "fsl,imx8mq-evk", "fsl,imx8mq";
+
+	chosen {
+		stdout-path = &uart1;
+	};
+
+	memory@40000000 {
+		device_type = "memory";
+		reg = <0x00000000 0x40000000 0 0xc0000000>;
+	};
+
+	reg_usdhc2_vmmc: regulator-vsd-3v3 {
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_reg_usdhc2>;
+		compatible = "regulator-fixed";
+		regulator-name = "VSD_3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+};
+
+&dcss {
+	status = "okay";
+};
+
+&fec1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec1_mdc>, <&pinctrl_fec1_mdio>,
+	            <&pinctrl_fec1_data_tx>, <&pinctrl_fec1_data_rx>,
+	            <&pinctrl_fec1_phy_reset>;
+	phy-mode = "rgmii-id";
+	status = "okay";
+};
+
+&hdmi {
+	status ="okay";
+};
+
+&i2c1 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+
+	pmic@8 {
+		compatible = "fsl,pfuze100";
+		reg = <0x8>;
+
+		regulators {
+			sw1a_reg: sw1ab {
+				regulator-min-microvolt = <825000>;
+				regulator-max-microvolt = <1100000>;
+			};
+
+			sw1c_reg: sw1c {
+				regulator-min-microvolt = <825000>;
+				regulator-max-microvolt = <1100000>;
+			};
+
+			sw2_reg: sw2 {
+				regulator-min-microvolt = <1100000>;
+				regulator-max-microvolt = <1100000>;
+				regulator-always-on;
+			};
+
+			sw3a_reg: sw3ab {
+				regulator-min-microvolt = <825000>;
+				regulator-max-microvolt = <1100000>;
+				regulator-always-on;
+			};
+
+			sw4_reg: sw4 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-always-on;
+			};
+
+			swbst_reg: swbst {
+				regulator-min-microvolt = <5000000>;
+				regulator-max-microvolt = <5150000>;
+			};
+
+			snvs_reg: vsnvs {
+				regulator-min-microvolt = <1000000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-always-on;
+			};
+
+			vref_reg: vrefddr {
+				regulator-always-on;
+			};
+
+			vgen1_reg: vgen1 {
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1550000>;
+			};
+
+			vgen2_reg: vgen2 {
+				regulator-min-microvolt = <850000>;
+				regulator-max-microvolt = <975000>;
+				regulator-always-on;
+			};
+
+			vgen3_reg: vgen3 {
+				regulator-min-microvolt = <1675000>;
+				regulator-max-microvolt = <1975000>;
+				regulator-always-on;
+			};
+
+			vgen4_reg: vgen4 {
+				regulator-min-microvolt = <1625000>;
+				regulator-max-microvolt = <1875000>;
+				regulator-always-on;
+			};
+
+			vgen5_reg: vgen5 {
+				regulator-min-microvolt = <3075000>;
+				regulator-max-microvolt = <3625000>;
+				regulator-always-on;
+			};
+
+			vgen6_reg: vgen6 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+			};
+		};
+	};
+};
+
+&ocotp {
+	barebox,provide-mac-address = <&fec1 0x640>;
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	status = "okay";
+};
+
+&usb3_phy1 {
+	status = "okay";
+};
+
+&usb3_1 {
+	status = "okay";
+};
+
+&usb_dwc3_1 {
+	status = "okay";
+	dr_mode = "host";
+};
+
+&usdhc1 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc1_cd_reset>, <&pinctrl_usdhc1_clk_strobe>,
+	            <&pinctrl_usdhc1_data>;
+	pinctrl-1 = <&pinctrl_usdhc1_cd_reset>,
+	            <&pinctrl_usdhc1_clk_strobe_100mhz>,
+	            <&pinctrl_usdhc1_data_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc1_cd_reset>,
+	            <&pinctrl_usdhc1_clk_strobe_200mhz>,
+	            <&pinctrl_usdhc1_data_200mhz>;
+	vqmmc-supply = <&sw4_reg>;
+	bus-width = <8>;
+	non-removable;
+	no-sd;
+	no-sdio;
+	status = "okay";
+};
+
+&usdhc2 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc2_vselect>, <&pinctrl_usdhc2_clk>,
+	            <&pinctrl_usdhc2_data>;
+	pinctrl-1 = <&pinctrl_usdhc2_vselect>, <&pinctrl_usdhc2_clk_100mhz>,
+	            <&pinctrl_usdhc2_data_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc2_vselect>, <&pinctrl_usdhc2_clk_200mhz>,
+	            <&pinctrl_usdhc2_data_200mhz>;
+	cd-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
+	vmmc-supply = <&reg_usdhc2_vmmc>;
+	status = "okay";
+};
+
+&wdog1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_wdog>;
+	fsl,ext-reset-output;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl_fec1_mdc: fec1mdcgrp {
+		pinmux = <MX8MQ_IOMUXC_ENET_MDC_ENET1_MDC>;
+		drive-strength = <3>;
+		slew-rate = <0>;
+	};
+
+	pinctrl_fec1_mdio: fec1mdiogrp {
+		pinmux = <MX8MQ_IOMUXC_ENET_MDIO_ENET1_MDIO>;
+		drive-strength = <3>;
+		slew-rate = <0>;
+		drive-open-drain;
+	};
+
+	pinctrl_fec1_phy_reset: fec1phyresetgrp {
+		pinmux = <MX8MQ_IOMUXC_GPIO1_IO09_GPIO1_IO9>;
+		drive-strength = <1>;
+		slew-rate = <0>;
+	};
+
+	pinctrl_fec1_data_tx: fec1datatxgrp {
+		pinmux = <
+			MX8MQ_IOMUXC_ENET_TD3_ENET1_RGMII_TD3
+			MX8MQ_IOMUXC_ENET_TD2_ENET1_RGMII_TD2
+			MX8MQ_IOMUXC_ENET_TD1_ENET1_RGMII_TD1
+			MX8MQ_IOMUXC_ENET_TD0_ENET1_RGMII_TD0
+			MX8MQ_IOMUXC_ENET_TXC_ENET1_RGMII_TXC
+			MX8MQ_IOMUXC_ENET_TX_CTL_ENET1_RGMII_TX_CTL
+		>;
+		drive-strength = <7>;
+		slew-rate = <3>;
+	};
+
+	pinctrl_fec1_data_rx: fec1datarxgrp {
+		pinmux = <
+			MX8MQ_IOMUXC_ENET_RD3_ENET1_RGMII_RD3
+			MX8MQ_IOMUXC_ENET_RD2_ENET1_RGMII_RD2
+			MX8MQ_IOMUXC_ENET_RD1_ENET1_RGMII_RD1
+			MX8MQ_IOMUXC_ENET_RD0_ENET1_RGMII_RD0
+			MX8MQ_IOMUXC_ENET_RXC_ENET1_RGMII_RXC
+			MX8MQ_IOMUXC_ENET_RX_CTL_ENET1_RGMII_RX_CTL
+		>;
+		drive-strength = <1>;
+		slew-rate = <2>;
+		input-schmitt-enable;
+	};
+
+	pinctrl_i2c1: i2c1grp {
+		pinmux = <
+			MX8MQ_IOMUXC_I2C1_SCL_I2C1_SCL
+			MX8MQ_IOMUXC_I2C1_SDA_I2C1_SDA
+		>;
+		drive-strength = <7>;
+		slew-rate = <0>;
+		drive-open-drain;
+		input-enable;
+	};
+
+	pinctrl_reg_usdhc2: regusdhc2grpgpio {
+		pinmux = <MX8MQ_IOMUXC_SD2_RESET_B_GPIO2_IO19>;
+		drive-strength = <1>;
+		slew-rate = <0>;
+		bias-pull-up;
+	};
+
+	pinctrl_uart1: uart1grp {
+		pinmux = <
+			MX8MQ_IOMUXC_UART1_RXD_UART1_DCE_RX
+			MX8MQ_IOMUXC_UART1_TXD_UART1_DCE_TX
+		>;
+		drive-strength = <1>;
+		slew-rate = <0>;
+		bias-pull-up;
+	};
+
+	pinctrl_usdhc1_cd_reset: usdhc1cdgrp {
+		pinmux = <
+			MX8MQ_IOMUXC_SD2_CD_B_GPIO2_IO12
+			MX8MQ_IOMUXC_SD1_RESET_B_USDHC1_RESET_B
+			>;
+		drive-strength = <1>;
+		slew-rate = <0>;
+		bias-pull-up;
+	};
+
+	pinctrl_usdhc1_clk_strobe: usdhc1clkgrp {
+		pinmux = <
+			MX8MQ_IOMUXC_SD1_CLK_USDHC1_CLK
+			MX8MQ_IOMUXC_SD1_STROBE_USDHC1_STROBE
+			>;
+		drive-strength = <3>;
+		slew-rate = <0>;
+	};
+
+	pinctrl_usdhc1_data: usdhc1datagrp {
+		pinmux = <
+			MX8MQ_IOMUXC_SD1_CMD_USDHC1_CMD
+			MX8MQ_IOMUXC_SD1_DATA0_USDHC1_DATA0
+			MX8MQ_IOMUXC_SD1_DATA1_USDHC1_DATA1
+			MX8MQ_IOMUXC_SD1_DATA2_USDHC1_DATA2
+			MX8MQ_IOMUXC_SD1_DATA3_USDHC1_DATA3
+			MX8MQ_IOMUXC_SD1_DATA4_USDHC1_DATA4
+			MX8MQ_IOMUXC_SD1_DATA5_USDHC1_DATA5
+			MX8MQ_IOMUXC_SD1_DATA6_USDHC1_DATA6
+			MX8MQ_IOMUXC_SD1_DATA7_USDHC1_DATA7
+			>;
+		drive-strength = <3>;
+		slew-rate = <0>;
+		bias-pull-up;
+		input-schmitt-enable;
+	};
+
+	pinctrl_usdhc1_clk_strobe_100mhz: usdhc1clk100grp {
+		pinmux = <
+			MX8MQ_IOMUXC_SD1_CLK_USDHC1_CLK
+			MX8MQ_IOMUXC_SD1_STROBE_USDHC1_STROBE
+			>;
+		drive-strength = <3>;
+		slew-rate = <0>;
+	};
+
+	pinctrl_usdhc1_data_100mhz: usdhc1data100grp {
+		pinmux = <
+			MX8MQ_IOMUXC_SD1_CMD_USDHC1_CMD
+			MX8MQ_IOMUXC_SD1_DATA0_USDHC1_DATA0
+			MX8MQ_IOMUXC_SD1_DATA1_USDHC1_DATA1
+			MX8MQ_IOMUXC_SD1_DATA2_USDHC1_DATA2
+			MX8MQ_IOMUXC_SD1_DATA3_USDHC1_DATA3
+			MX8MQ_IOMUXC_SD1_DATA4_USDHC1_DATA4
+			MX8MQ_IOMUXC_SD1_DATA5_USDHC1_DATA5
+			MX8MQ_IOMUXC_SD1_DATA6_USDHC1_DATA6
+			MX8MQ_IOMUXC_SD1_DATA7_USDHC1_DATA7
+			>;
+		drive-strength = <5>;
+		slew-rate = <1>;
+		bias-pull-up;
+		input-schmitt-enable;
+	};
+
+	pinctrl_usdhc1_clk_strobe_200mhz: usdhc1clk200grp {
+		pinmux = <
+			MX8MQ_IOMUXC_SD1_CLK_USDHC1_CLK
+			MX8MQ_IOMUXC_SD1_STROBE_USDHC1_STROBE
+			>;
+		drive-strength = <7>;
+		slew-rate = <3>;
+	};
+
+	pinctrl_usdhc1_data_200mhz: usdhc1data200grp {
+		pinmux = <
+			MX8MQ_IOMUXC_SD1_CMD_USDHC1_CMD
+			MX8MQ_IOMUXC_SD1_DATA0_USDHC1_DATA0
+			MX8MQ_IOMUXC_SD1_DATA1_USDHC1_DATA1
+			MX8MQ_IOMUXC_SD1_DATA2_USDHC1_DATA2
+			MX8MQ_IOMUXC_SD1_DATA3_USDHC1_DATA3
+			MX8MQ_IOMUXC_SD1_DATA4_USDHC1_DATA4
+			MX8MQ_IOMUXC_SD1_DATA5_USDHC1_DATA5
+			MX8MQ_IOMUXC_SD1_DATA6_USDHC1_DATA6
+			MX8MQ_IOMUXC_SD1_DATA7_USDHC1_DATA7
+			>;
+		drive-strength = <7>;
+		slew-rate = <3>;
+		bias-pull-up;
+		input-schmitt-enable;
+	};
+
+	pinctrl_usdhc2_vselect: usdhc2vselectgrp {
+		pinmux = <MX8MQ_IOMUXC_GPIO1_IO04_USDHC2_VSELECT>;
+		drive-strength = <1>;
+		slew-rate = <0>;
+		bias-pull-up;
+	};
+
+	pinctrl_usdhc2_clk: usdhc2clkgrp {
+		pinmux = <MX8MQ_IOMUXC_SD2_CLK_USDHC2_CLK>;
+		drive-strength = <3>;
+		slew-rate = <0>;
+	};
+
+	pinctrl_usdhc2_data: usdhc2datagrp {
+		pinmux = <
+			MX8MQ_IOMUXC_SD2_CMD_USDHC2_CMD
+			MX8MQ_IOMUXC_SD2_DATA0_USDHC2_DATA0
+			MX8MQ_IOMUXC_SD2_DATA1_USDHC2_DATA1
+			MX8MQ_IOMUXC_SD2_DATA2_USDHC2_DATA2
+			MX8MQ_IOMUXC_SD2_DATA3_USDHC2_DATA3
+			>;
+		drive-strength = <3>;
+		slew-rate = <0>;
+		bias-pull-up;
+		input-schmitt-enable;
+	};
+
+	pinctrl_usdhc2_clk_100mhz: usdhc2clk100grp {
+		pinmux = <MX8MQ_IOMUXC_SD2_CLK_USDHC2_CLK>;
+		drive-strength = <5>;
+		slew-rate = <1>;
+	};
+
+	pinctrl_usdhc2_data_100mhz: usdhc2data100grp {
+		pinmux = <
+			MX8MQ_IOMUXC_SD2_CMD_USDHC2_CMD
+			MX8MQ_IOMUXC_SD2_DATA0_USDHC2_DATA0
+			MX8MQ_IOMUXC_SD2_DATA1_USDHC2_DATA1
+			MX8MQ_IOMUXC_SD2_DATA2_USDHC2_DATA2
+			MX8MQ_IOMUXC_SD2_DATA3_USDHC2_DATA3
+			>;
+		drive-strength = <5>;
+		slew-rate = <1>;
+		bias-pull-up;
+		input-schmitt-enable;
+	};
+
+	pinctrl_usdhc2_clk_200mhz: usdhc2clk200grp {
+		pinmux = <MX8MQ_IOMUXC_SD2_CLK_USDHC2_CLK>;
+		drive-strength = <7>;
+		slew-rate = <3>;
+	};
+
+	pinctrl_usdhc2_data_200mhz: usdhc2data200grp {
+		pinmux = <
+			MX8MQ_IOMUXC_SD2_CMD_USDHC2_CMD
+			MX8MQ_IOMUXC_SD2_DATA0_USDHC2_DATA0
+			MX8MQ_IOMUXC_SD2_DATA1_USDHC2_DATA1
+			MX8MQ_IOMUXC_SD2_DATA2_USDHC2_DATA2
+			MX8MQ_IOMUXC_SD2_DATA3_USDHC2_DATA3
+			>;
+		drive-strength = <7>;
+		slew-rate = <3>;
+		bias-pull-up;
+		input-schmitt-enable;
+	};
+
+	pinctrl_wdog: wdoggrp {
+		pinmux = <MX8MQ_IOMUXC_GPIO1_IO02_WDOG1_WDOG_B>;
+		drive-strength = <6>;
+		slew-rate = <0>;
+		bias-pull-up;
+	};
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 020b6fa05..d77f22df2 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -444,6 +444,10 @@ config MACH_NXP_IMX6ULL_EVK
 	bool "NXP i.MX6ull EVK Board"
 	select ARCH_IMX6UL
 
+config MACH_NXP_IMX8MQ_EVK
+	bool "NXP i.MX8MQ EVK Board"
+	select ARCH_IMX8MQ
+
 endif
 
 # ----------------------------------------------------------
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 43505b1ff..0550686a1 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -530,7 +530,14 @@ CFG_start_zii_vf610_dev.pblx.imximg = $(board)/zii-vf610-dev/flash-header-zii-vf
 FILE_barebox-zii-vf610-dev.img = start_zii_vf610_dev.pblx.imximg
 image-$(CONFIG_MACH_ZII_VF610_DEV) += barebox-zii-vf610-dev.img
 
+# ----------------------- i.MX7 based boards ---------------------------
 pblx-$(CONFIG_MACH_FREESCALE_MX7_SABRESD) += start_imx7d_sabresd
 CFG_start_imx7d_sabresd.pblx.imximg = $(board)/freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg
 FILE_barebox-freescale-mx7-sabresd.img = start_imx7d_sabresd.pblx.imximg
 image-$(CONFIG_MACH_FREESCALE_MX7_SABRESD) += barebox-freescale-mx7-sabresd.img
+
+# ----------------------- i.MX8mq based boards --------------------------
+pblx-$(CONFIG_MACH_NXP_IMX8MQ_EVK) += start_nxp_imx8mq_evk
+CFG_start_nxp_imx8mq_evk.imx-sram-img = $(board)/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
+FILE_barebox-nxp-imx8mq-evk.img = start_nxp_imx8mq_evk.imx-sram-img
+image-$(CONFIG_MACH_NXP_IMX8MQ_EVK) += barebox-nxp-imx8mq-evk.img
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 3024b068e..405ea553a 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -467,3 +467,25 @@ quiet_cmd_b64dec = B64DEC  $@
 
 %: %.base64
 	$(call cmd,b64dec)
+
+#
+# Generate an assembly file to wrap DDR PHY firmware for i.MX8
+#
+extra-y	+= $(patsubst %.ddr-phy-fw.o,%.ddr-phy-fw.S,$(pbl-y))
+
+quiet_cmd_ddr_phy_fw_S = DDR-PHY-FW.S    $@
+cmd_ddr_phy_fw_S =							\
+(									\
+	echo '\#include <asm-generic/barebox.lds.h>';			\
+	echo '.section .ddr-phy-fw.rodata.$(subst -,_,$(*F)),"a"';	\
+	echo '.balign STRUCT_ALIGNMENT';				\
+	echo '.global __ddr_phy_fw_$(subst -,_,$(*F))_start';		\
+	echo '__ddr_phy_fw_$(subst -,_,$(*F))_start:';			\
+	echo '.incbin "$<" ';	   					\
+	echo '__ddr_phy_fw_$(subst -,_,$(*F))_end:';			\
+	echo '.global __ddr_phy_fw_$(subst -,_,$(*F))_end';		\
+	echo '.balign STRUCT_ALIGNMENT';   				\
+) > $@
+
+$(obj)/%.ddr-phy-fw.S: $(src)/%.ddr-phy-fw FORCE
+	$(call if_changed,ddr_phy_fw_S)
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
