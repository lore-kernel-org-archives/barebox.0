Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout02.posteo.de ([185.67.36.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1grS8r-0000n8-SY
 for barebox@lists.infradead.org; Wed, 06 Feb 2019 18:41:55 +0000
Received: from submission (posteo.de [89.146.220.130]) 
 by mout02.posteo.de (Postfix) with ESMTPS id A29362400E5
 for <barebox@lists.infradead.org>; Wed,  6 Feb 2019 19:41:38 +0100 (CET)
From: Christian Hemp <christian.hemp@posteo.de>
Date: Wed,  6 Feb 2019 19:41:22 +0100
Message-Id: <20190206184122.14423-1-christian.hemp@posteo.de>
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
Subject: [PATCH] ARM: phyCORE-i.MX8M SOM support
To: barebox@lists.infradead.org
Cc: Christian Hemp <christian.hemp@posteo.de>

The phyCORE-i.MX8M aka PCL-066 is a SoM containing a i.MX8M SoC.

phyCORE-i.MX8M:
 - 1GB LPDDR4 RAM
 - eMMC
 - microSD
 - Ethernet

Signed-off-by: Christian Hemp <christian.hemp@posteo.de>
---
 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/phytec-som-imx8m/.gitignore   |   1 +
 arch/arm/boards/phytec-som-imx8m/Makefile     |   2 +
 arch/arm/boards/phytec-som-imx8m/board.c      |  55 +
 arch/arm/boards/phytec-som-imx8m/ddr.h        |  28 +
 arch/arm/boards/phytec-som-imx8m/ddr_init.c   | 225 +++++
 .../boards/phytec-som-imx8m/ddrphy_train.c    | 947 ++++++++++++++++++
 .../flash-header-phycore-imx8mq.imxcfg        |   5 +
 arch/arm/boards/phytec-som-imx8m/lowlevel.c   | 127 +++
 arch/arm/configs/imx_v8_defconfig             |   2 +
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/imx8mq-phytec-phycore-som.dts    | 328 ++++++
 arch/arm/mach-imx/Kconfig                     |   7 +
 images/Makefile.imx                           |   5 +
 14 files changed, 1734 insertions(+)
 create mode 100644 arch/arm/boards/phytec-som-imx8m/.gitignore
 create mode 100644 arch/arm/boards/phytec-som-imx8m/Makefile
 create mode 100644 arch/arm/boards/phytec-som-imx8m/board.c
 create mode 100644 arch/arm/boards/phytec-som-imx8m/ddr.h
 create mode 100644 arch/arm/boards/phytec-som-imx8m/ddr_init.c
 create mode 100644 arch/arm/boards/phytec-som-imx8m/ddrphy_train.c
 create mode 100644 arch/arm/boards/phytec-som-imx8m/flash-header-phycore-imx8mq.imxcfg
 create mode 100644 arch/arm/boards/phytec-som-imx8m/lowlevel.c
 create mode 100644 arch/arm/dts/imx8mq-phytec-phycore-som.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index ab5191fe0..b39bbe8c2 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -95,6 +95,7 @@ obj-$(CONFIG_MACH_PCM049)			+= phytec-phycore-omap4460/
 obj-$(CONFIG_MACH_PHYTEC_SOM_AM335X)		+= phytec-som-am335x/
 obj-$(CONFIG_MACH_PHYTEC_SOM_IMX6)		+= phytec-som-imx6/
 obj-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7)		+= phytec-phycore-imx7/
+obj-$(CONFIG_MACH_PHYTEC_SOM_IMX8M)		+= phytec-som-imx8m/
 obj-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3)	+= plathome-openblocks-ax3/
 obj-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6)	+= plathome-openblocks-a6/
 obj-$(CONFIG_MACH_PM9261)			+= pm9261/
diff --git a/arch/arm/boards/phytec-som-imx8m/.gitignore b/arch/arm/boards/phytec-som-imx8m/.gitignore
new file mode 100644
index 000000000..ef13747c9
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx8m/.gitignore
@@ -0,0 +1 @@
+*.ddr-phy-fw*
diff --git a/arch/arm/boards/phytec-som-imx8m/Makefile b/arch/arm/boards/phytec-som-imx8m/Makefile
new file mode 100644
index 000000000..2995f06f0
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx8m/Makefile
@@ -0,0 +1,2 @@
+obj-y += board.o
+lwl-y += lowlevel.o ddr_init.o ddrphy_train.o
diff --git a/arch/arm/boards/phytec-som-imx8m/board.c b/arch/arm/boards/phytec-som-imx8m/board.c
new file mode 100644
index 000000000..7779946d1
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx8m/board.c
@@ -0,0 +1,55 @@
+/*
+ * Copyright (C) 2018 Christian Hemp
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
+#include <asm/memory.h>
+#include <bootsource.h>
+#include <environment.h>
+#include <common.h>
+#include <init.h>
+#include <linux/sizes.h>
+#include <mach/bbu.h>
+
+#include <envfs.h>
+
+static int physom_imx8m_devices_init(void)
+{
+	int flags;
+
+	if (!of_machine_is_compatible("phytec,imx8mq-pcl066"))
+		return 0;
+
+	barebox_set_hostname("phycore-imx8mq");
+
+	flags = bootsource_get_instance() == 0 ? BBU_HANDLER_FLAG_DEFAULT : 0;
+	imx8mq_bbu_internal_mmc_register_handler("eMMC",
+						 "/dev/mmc0.barebox", flags);
+
+	flags = bootsource_get_instance() == 1 ? BBU_HANDLER_FLAG_DEFAULT : 0;
+	imx8mq_bbu_internal_mmc_register_handler("SD",
+						 "/dev/mmc1.barebox", flags);
+
+	if (bootsource_get_instance() == 0)
+		of_device_enable_path("/chosen/environment-emmc");
+	else
+		of_device_enable_path("/chosen/environment-sd");
+
+	return 0;
+}
+device_initcall(physom_imx8m_devices_init);
+
diff --git a/arch/arm/boards/phytec-som-imx8m/ddr.h b/arch/arm/boards/phytec-som-imx8m/ddr.h
new file mode 100644
index 000000000..7d195e600
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx8m/ddr.h
@@ -0,0 +1,28 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Copyright (c) 2018 Christian Hemp
+ *
+ * Varios wrappers and macros needed to intgrate code generated by
+ * i.MX8M DDR Tool into rest of Barebox
+ */
+#include <common.h>
+#include <io.h>
+#include <mach/imx8-ddrc.h>
+
+/*
+ * Code generated by i.MX8 M DDR Tool doesn't have any prefixes in the
+ * global identifiers below, so in order to avoid symbol name
+ * collisions with other boards we re-name them via a #define
+ */
+#define ddr_init	phytec_imx8mq_phycore_ddr_init
+#define ddr_cfg_phy	phytec_imx8mq_phycore_ddr_cfg_phy
+
+void phytec_imx8mq_phycore_ddr_init(void);
+void phytec_imx8mq_phycore_ddr_cfg_phy(void);
+
+#define FW_1D_IMAGE	imx_lpddr4_pmu_train_1d_imem_bin, \
+			imx_lpddr4_pmu_train_1d_dmem_bin
+#define FW_2D_IMAGE	imx_lpddr4_pmu_train_2d_imem_bin, \
+			imx_lpddr4_pmu_train_2d_dmem_bin
+
+
diff --git a/arch/arm/boards/phytec-som-imx8m/ddr_init.c b/arch/arm/boards/phytec-som-imx8m/ddr_init.c
new file mode 100644
index 000000000..e4e54fd54
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx8m/ddr_init.c
@@ -0,0 +1,225 @@
+/*
+ * Copyright 2017 NXP
+ *
+ * SPDX-License-Identifier:	GPL-2.0+
+ *
+ * Generated code from MX8M_DDR_tool
+ * Align with uboot-imx_v2017.03_4.9.51_imx8m_ga
+ */
+
+#include "ddr.h"
+
+void ddr_cfg_phy(void);
+volatile unsigned int tmp, tmp_t, i;
+void ddr_init(void)
+{
+	/** Initialize DDR clock and DDRC registers **/
+	reg32_write(0x3038a088,0x7070000);
+	reg32_write(0x3038a084,0x4030000);
+	reg32_write(0x303a00ec,0xffff);
+	tmp=reg32_read(0x303a00f8);
+	tmp |= 0x20;
+	reg32_write(0x303a00f8,tmp);
+	reg32_write(0x30391000,0x8f000000);
+	reg32_write(0x30391004,0x8f000000);
+	reg32_write(0x30360068,0xece580);
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
+	reg32_write(0x3d400000,0xa1080020);
+	reg32_write(0x3d400028,0x0);
+	reg32_write(0x3d400020,0x203);
+	reg32_write(0x3d400024,0x186a000);
+	reg32_write(0x3d400064,0x6100e0);
+	reg32_write(0x3d4000d0,0xc003061c);
+	reg32_write(0x3d4000d4,0x9e0000);
+	reg32_write(0x3d4000dc,0xd4002d);
+	reg32_write(0x3d4000e0,0x310008);
+	reg32_write(0x3d4000e8,0x66004a);
+	reg32_write(0x3d4000ec,0x16004a);
+	reg32_write(0x3d400100,0x1a201b22);
+	reg32_write(0x3d400104,0x60633);
+	reg32_write(0x3d40010c,0xc0c000);
+	reg32_write(0x3d400110,0xf04080f);
+	reg32_write(0x3d400114,0x2040c0c);
+	reg32_write(0x3d400118,0x1010007);
+	reg32_write(0x3d40011c,0x401);
+	reg32_write(0x3d400130,0x20600);
+	reg32_write(0x3d400134,0xc100002);
+	reg32_write(0x3d400138,0xe6);
+	reg32_write(0x3d400144,0xa00050);
+	reg32_write(0x3d400180,0xc3200018);
+	reg32_write(0x3d400184,0x28061a8);
+	reg32_write(0x3d400188,0x0);
+	reg32_write(0x3d400190,0x497820a);
+	reg32_write(0x3d400194,0x80303);
+	reg32_write(0x3d4001a0,0xe0400018);
+	reg32_write(0x3d4001a4,0xdf00e4);
+	reg32_write(0x3d4001a8,0x80000000);
+	reg32_write(0x3d4001b0,0x11);
+	reg32_write(0x3d4001b4,0x170a);
+	reg32_write(0x3d4001c0,0x1);
+	reg32_write(0x3d4001c4,0x1);
+	reg32_write(0x3d4000f4,0x639);
+	reg32_write(0x3d400108,0x70e1617);
+	reg32_write(0x3d400200,0x1f);
+	reg32_write(0x3d40020c,0x0);
+	reg32_write(0x3d400210,0x1f1f);
+	reg32_write(0x3d400204,0x80808);
+	reg32_write(0x3d400214,0x7070707);
+	reg32_write(0x3d400218,0xf070707);
+	reg32_write(0x3d402020,0x1);
+	reg32_write(0x3d402024,0x518b00);
+	reg32_write(0x3d402050,0x20d040);
+	reg32_write(0x3d402064,0x14002f);
+	reg32_write(0x3d4020dc,0x940009);
+	reg32_write(0x3d4020e0,0x310000);
+	reg32_write(0x3d4020e8,0x66004a);
+	reg32_write(0x3d4020ec,0x16004a);
+	reg32_write(0x3d402100,0xb070508);
+	reg32_write(0x3d402104,0x3040b);
+	reg32_write(0x3d402108,0x305090c);
+	reg32_write(0x3d40210c,0x505000);
+	reg32_write(0x3d402110,0x4040204);
+	reg32_write(0x3d402114,0x2030303);
+	reg32_write(0x3d402118,0x1010004);
+	reg32_write(0x3d40211c,0x301);
+	reg32_write(0x3d402130,0x20300);
+	reg32_write(0x3d402134,0xa100002);
+	reg32_write(0x3d402138,0x31);
+	reg32_write(0x3d402144,0x220011);
+	reg32_write(0x3d402180,0xc0a70006);
+	reg32_write(0x3d402190,0x3858202);
+	reg32_write(0x3d402194,0x80303);
+	reg32_write(0x3d4021b4,0x502);
+	reg32_write(0x3d400244,0x0);
+	reg32_write(0x3d400250,0x29001505);
+	reg32_write(0x3d400254,0x2c);
+	reg32_write(0x3d40025c,0x5900575b);
+	reg32_write(0x3d400264,0x90000096);
+	reg32_write(0x3d40026c,0x1000012c);
+	reg32_write(0x3d400300,0x16);
+	reg32_write(0x3d400304,0x0);
+	reg32_write(0x3d40030c,0x0);
+	reg32_write(0x3d400320,0x1);
+	reg32_write(0x3d40036c,0x11);
+	reg32_write(0x3d400400,0x111);
+	reg32_write(0x3d400404,0x10f3);
+	reg32_write(0x3d400408,0x72ff);
+	reg32_write(0x3d400490,0x1);
+	reg32_write(0x3d400494,0xe00);
+	reg32_write(0x3d400498,0x62ffff);
+	reg32_write(0x3d40049c,0xe00);
+	reg32_write(0x3d4004a0,0xffff);
+	reg32_write(0x30391000,0x8f000004);
+	reg32_write(0x30391000,0x8f000000);
+	reg32_write(0x3d400030,0xa8);
+	do{
+		tmp=reg32_read(0x3d400004);
+		if(tmp&0x223) break;
+	}while(1);
+	reg32_write(0x3d400320,0x0);
+	reg32_write(0x3d000000,0x1);
+	reg32_write(0x3d4001b0,0x10);
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
+	/* enable DDR auto-refresh mode */
+	tmp = reg32_read(DDRC_RFSHCTL3(0)) & ~0x1;
+	reg32_write(DDRC_RFSHCTL3(0), tmp);
+}
diff --git a/arch/arm/boards/phytec-som-imx8m/ddrphy_train.c b/arch/arm/boards/phytec-som-imx8m/ddrphy_train.c
new file mode 100644
index 000000000..56af64782
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx8m/ddrphy_train.c
@@ -0,0 +1,947 @@
+/*
+ * Copyright 2017 NXP
+ *
+ * SPDX-License-Identifier:	GPL-2.0+
+ *
+ * Generated code from MX8M_DDR_tool
+ * Align with uboot-imx_v2017.03_4.9.51_imx8m_ga
+ */
+
+#include "ddr.h"
+
+extern void wait_ddrphy_training_complete(void);
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
+	reg32_write(0x3c0800b8,0x2);
+	reg32_write(0x3c4800b8,0x1);
+	reg32_write(0x3c240810,0x0);
+	reg32_write(0x3c640810,0x0);
+	reg32_write(0x3c080090,0x1ab);
+	reg32_write(0x3c0800e8,0x0);
+	reg32_write(0x3c480090,0x1ab);
+	reg32_write(0x3c0800e8,0x0);
+	reg32_write(0x3c080158,0x3);
+	reg32_write(0x3c480158,0xa);
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
+	reg32_write(0x3c480020,0xa7);
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
+	reg32_write(0x3c0803e8,0x1);
+	reg32_write(0x3c4803e8,0x1);
+	reg32_write(0x3c080064,0x1);
+	reg32_write(0x3c480064,0x1);
+	reg32_write(0x3c0803c0,0x0);
+	reg32_write(0x3c0803c4,0x0);
+	reg32_write(0x3c0803c8,0x4444);
+	reg32_write(0x3c0803cc,0x8888);
+	reg32_write(0x3c0803d0,0x5555);
+	reg32_write(0x3c0803d4,0x0);
+	reg32_write(0x3c0803d8,0x0);
+	reg32_write(0x3c0803dc,0xf000);
+	reg32_write(0x3c080094,0x0);
+	reg32_write(0x3c0800b4,0x0);
+	reg32_write(0x3c4800b4,0x0);
+	reg32_write(0x3c08031c,0x80);
+	reg32_write(0x3c48031c,0x80);
+	reg32_write(0x3c080328,0x106);
+	reg32_write(0x3c480328,0x106);
+
+	//enable APB bus to access DDRPHY RAM
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0000, 0x0);
+	//load the 1D training image
+	ddr_load_train_code(FW_1D_IMAGE);
+
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54003,0xc80);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54004,0x2);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54005,0x1e28);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54006,0x11);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54008,0x131f);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54009,0xc8);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5400b,0x2);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5400d,0x100);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54012,0x110);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54019,0x2dd4);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5401a,0x31);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5401b,0x4a66);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5401c,0x4a08);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5401e,0x16);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5401f,0x2dd4);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54020,0x31);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54021,0x4a66);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54022,0x4a08);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54024,0x16);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5402b,0x1000);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5402c,0x1);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54032,0xd400);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54033,0x312d);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54034,0x6600);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54035,0x84a);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54036,0x4a);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54037,0x1600);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54038,0xd400);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54039,0x312d);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5403a,0x6600);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5403b,0x84a);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5403c,0x4a);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5403d,0x1600);
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
+	reg32_write(0x3038a088,0x7070000);
+	reg32_write(0x3038a084,0x4030000);
+	reg32_write(0x303a00ec,0xffff);
+	tmp=reg32_read(0x303a00f8);
+	tmp |= 0x20;
+	reg32_write(0x303a00f8,tmp);
+	reg32_write(0x30360068,0xf5a406);
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
+
+	//enable APB bus to access DDRPHY RAM
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0000, 0x0);
+	//load the 1D training image
+	ddr_load_train_code(FW_1D_IMAGE);
+
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54002,0x1);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54003,0x29c);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54004,0x2);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54005,0x1e28);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54006,0x11);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54008,0x121f);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54009,0xc8);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5400b,0x2);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5400d,0x100);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54012,0x110);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54019,0x994);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5401a,0x31);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5401b,0x4a66);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5401c,0x4a08);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5401e,0x16);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5401f,0x994);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54020,0x31);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54021,0x4a66);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54022,0x4a08);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54024,0x16);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5402b,0x1000);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5402c,0x1);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54032,0x9400);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54033,0x3109);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54034,0x6600);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54035,0x84a);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54036,0x4a);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54037,0x1600);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54038,0x9400);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54039,0x3109);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5403a,0x6600);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5403b,0x84a);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5403c,0x4a);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5403d,0x1600);
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
+	reg32_write(0x30360068,0xece580);
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
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54004,0x2);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54005,0x1e28);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54006,0x11);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54008,0x61);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54009,0xc8);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5400b,0x2);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5400f,0x100);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54010,0x1f7f);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54012,0x110);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54019,0x2dd4);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5401a,0x31);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5401b,0x4a66);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5401c,0x4a08);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5401e,0x16);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5401f,0x2dd4);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54020,0x31);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54021,0x4a66);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54022,0x4a08);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54024,0x16);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5402b,0x1000);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5402c,0x1);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54032,0xd400);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54033,0x312d);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54034,0x6600);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54035,0x84a);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54036,0x4a);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54037,0x1600);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54038,0xd400);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54039,0x312d);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5403a,0x6600);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5403b,0x84a);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5403c,0x4a);
+	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5403d,0x1600);
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
+	reg32_write(0x3c08002c,0x64);
+	reg32_write(0x3c080030,0xc8);
+	reg32_write(0x3c080034,0x7d0);
+	reg32_write(0x3c080038,0x2c);
+	reg32_write(0x3c48002c,0x14);
+	reg32_write(0x3c480030,0x29);
+	reg32_write(0x3c480034,0x1a1);
+	reg32_write(0x3c480038,0x10);
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
diff --git a/arch/arm/boards/phytec-som-imx8m/flash-header-phycore-imx8mq.imxcfg b/arch/arm/boards/phytec-som-imx8m/flash-header-phycore-imx8mq.imxcfg
new file mode 100644
index 000000000..aff8321b9
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx8m/flash-header-phycore-imx8mq.imxcfg
@@ -0,0 +1,5 @@
+soc imx8mq
+
+loadaddr 0x007E1000
+max_load_size 0x3F000
+dcdofs 0x400
diff --git a/arch/arm/boards/phytec-som-imx8m/lowlevel.c b/arch/arm/boards/phytec-som-imx8m/lowlevel.c
new file mode 100644
index 000000000..4a1054a5e
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx8m/lowlevel.c
@@ -0,0 +1,127 @@
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
+#include <mach/atf.h>
+#include <mach/esdctl.h>
+
+#include "ddr.h"
+
+extern char __dtb_imx8mq_phytec_phycore_som_start[];
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
+static void phytec_imx8mq_som_sram_setup(void)
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
+/*
+ * Power-on execution flow of start_phytec_phycore_imx8mq() might not be
+ * obvious for a very first read, so here's, hopefully helpful,
+ * summary:
+ *
+ * 1. MaskROM uploads PBL into OCRAM and that's where this function is
+ *    executed for the first time
+ *
+ * 2. DDR is initialized and full i.MX image is loaded to the
+ *    beginning of RAM
+ *
+ * 3. start_phytec_phycore_imx8mq, now in RAM, is executed again
+ *
+ * 4. BL31 blob is uploaded to OCRAM and the control is transfer to it
+ *
+ * 5. BL31 exits EL3 into EL2 at address MX8MQ_ATF_BL33_BASE_ADDR,
+ *    executing start_phytec_phycore_imx8mq() the third time
+ *
+ * 6. Standard barebox boot flow continues
+ */
+ENTRY_FUNCTION(start_phytec_phycore_imx8mq, r0, r1, r2)
+{
+	arm_cpu_lowlevel_init();
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		setup_uart();
+
+	if (get_pc() < MX8MQ_DDR_CSD1_BASE_ADDR) {
+		/*
+		 * We assume that we were just loaded by MaskROM into
+		 * SRAM if we are not running from DDR. We also assume
+		 * that means DDR needs to be initialized for the
+		 * first time.
+		 */
+		phytec_imx8mq_som_sram_setup();
+	}
+	/*
+	 * Straight from the power-on we are at EL3, so the following
+	 * code _will_ load and jump to ATF.
+	 *
+	 * However when we are re-executed upon exit from ATF's
+	 * initialization routine, it is EL2 which means we'll skip
+	 * loadting ATF blob again
+	 */
+	if (current_el() == 3) {
+		const u8 *bl31;
+		size_t bl31_size;
+
+		get_builtin_firmware(imx_imx8m_bl31_bin, &bl31, &bl31_size);
+		imx8mq_atf_load_bl31(bl31, bl31_size);
+	}
+
+	/*
+	 * Standard entry we hit once we initialized both DDR and ATF
+	 */
+	imx8mq_barebox_entry(__dtb_imx8mq_phytec_phycore_som_start);
+}
+
diff --git a/arch/arm/configs/imx_v8_defconfig b/arch/arm/configs/imx_v8_defconfig
index cc41f4975..da0623181 100644
--- a/arch/arm/configs/imx_v8_defconfig
+++ b/arch/arm/configs/imx_v8_defconfig
@@ -1,6 +1,7 @@
 CONFIG_ARCH_IMX=y
 CONFIG_IMX_MULTI_BOARDS=y
 CONFIG_MACH_NXP_IMX8MQ_EVK=y
+CONFIG_MACH_PHYTEC_SOM_IMX8M=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
@@ -80,6 +81,7 @@ CONFIG_NET_RESOLV=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_NET_FEC_IMX=y
+CONFIG_DP83867_PHY=y
 CONFIG_DRIVER_SPI_IMX=y
 CONFIG_I2C=y
 CONFIG_I2C_IMX=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index caa97e713..dddce21c0 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -67,6 +67,7 @@ pbl-dtb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += imx6q-phytec-pbaa03.dtb.o \
 				imx6ull-phytec-phycore-som-lc.dtb.o \
 				imx6ull-phytec-phycore-som.dtb.o
 pbl-dtb-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7) += imx7d-phyboard-zeta.dtb.o
+pbl-dtb-$(CONFIG_MACH_PHYTEC_SOM_IMX8M) += imx8mq-phytec-phycore-som.dtb.o
 pbl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += armada-xp-openblocks-ax3-4-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6) += kirkwood-openblocks_a6-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
diff --git a/arch/arm/dts/imx8mq-phytec-phycore-som.dts b/arch/arm/dts/imx8mq-phytec-phycore-som.dts
new file mode 100644
index 000000000..7b566e32b
--- /dev/null
+++ b/arch/arm/dts/imx8mq-phytec-phycore-som.dts
@@ -0,0 +1,328 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2018 Christian Hemp <christian.hemp@posteo.de>
+ */
+
+/dts-v1/;
+
+#include <arm64/freescale/imx8mq.dtsi>
+#include <dt-bindings/net/ti-dp83867.h>
+#include "imx8mq.dtsi"
+#include "imx8mq-ddrc.dtsi"
+
+/ {
+	model = "Phytec phyCORE-i.MX8";
+	compatible = "phytec,imx8mq-pcl066", "fsl,imx8mq";
+
+	chosen {
+		stdout-path = &uart1;
+
+		environment-emmc {
+			compatible = "barebox,environment";
+			device-path = &usdhc1, "partname:barebox-environment";
+			status = "disabled";
+		};
+
+		environment-sd {
+			compatible = "barebox,environment";
+			device-path = &usdhc2, "partname:barebox-environment";
+			status = "disabled";
+		};
+	};
+};
+
+&fec1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec1>;
+	phy-mode = "rgmii-id";
+	phy-handle = <&ethphy0>;
+	fsl,magic-packet;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy0: ethernet-phy@0 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <1>;
+			interrupt-parent = <&gpio1>;
+			interrupts = <7 IRQ_TYPE_EDGE_FALLING>;
+			ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
+			ti,tx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
+			ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
+			enet-phy-lane-no-swap;
+		};
+	};
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
+&usdhc1 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc1>;
+	pinctrl-1 = <&pinctrl_usdhc1_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc1_200mhz>;
+	vqmmc-supply = <&sw4_reg>;
+	bus-width = <8>;
+	non-removable;
+	no-sd;
+	no-sdio;
+	status = "okay";
+
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0xe0000>;
+	};
+
+	partition@e0000 {
+		label = "barebox-environment";
+		reg = <0xe0000 0x20000>;
+	};
+};
+
+&usdhc2 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	pinctrl-1 = <&pinctrl_usdhc2_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc2_200mhz>;
+	cd-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
+	status = "okay";
+
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0xe0000>;
+	};
+
+	partition@e0000 {
+		label = "barebox-environment";
+		reg = <0xe0000 0x20000>;
+	};
+};
+
+&iomuxc {
+	pinctrl_fec1: fec1grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_ENET_MDC_ENET1_MDC			0x3
+			MX8MQ_IOMUXC_ENET_MDIO_ENET1_MDIO		0x23
+			MX8MQ_IOMUXC_ENET_TD3_ENET1_RGMII_TD3		0x1f
+			MX8MQ_IOMUXC_ENET_TD2_ENET1_RGMII_TD2		0x1f
+			MX8MQ_IOMUXC_ENET_TD1_ENET1_RGMII_TD1		0x1f
+			MX8MQ_IOMUXC_ENET_TD0_ENET1_RGMII_TD0		0x1f
+			MX8MQ_IOMUXC_ENET_RD3_ENET1_RGMII_RD3		0x91
+			MX8MQ_IOMUXC_ENET_RD2_ENET1_RGMII_RD2		0x91
+			MX8MQ_IOMUXC_ENET_RD1_ENET1_RGMII_RD1		0x91
+			MX8MQ_IOMUXC_ENET_RD0_ENET1_RGMII_RD0		0x91
+			MX8MQ_IOMUXC_ENET_TXC_ENET1_RGMII_TXC		0x1f
+			MX8MQ_IOMUXC_ENET_RXC_ENET1_RGMII_RXC		0x91
+			MX8MQ_IOMUXC_ENET_RX_CTL_ENET1_RGMII_RX_CTL	0x91
+			MX8MQ_IOMUXC_ENET_TX_CTL_ENET1_RGMII_TX_CTL	0x1f
+			MX8MQ_IOMUXC_GPIO1_IO07_GPIO1_IO7		0x19
+		>;
+	};
+	pinctrl_i2c1: i2c1grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_I2C1_SCL_I2C1_SCL			0x4000007f
+			MX8MQ_IOMUXC_I2C1_SDA_I2C1_SDA			0x4000007f
+		>;
+	};
+
+	pinctrl_uart1: uart1grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_UART1_RXD_UART1_DCE_RX		0x49
+			MX8MQ_IOMUXC_UART1_TXD_UART1_DCE_TX		0x49
+		>;
+	};
+
+	pinctrl_usdhc1: usdhc1grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SD1_CLK_USDHC1_CLK			0x83
+			MX8MQ_IOMUXC_SD1_CMD_USDHC1_CMD			0xc3
+			MX8MQ_IOMUXC_SD1_DATA0_USDHC1_DATA0		0xc3
+			MX8MQ_IOMUXC_SD1_DATA1_USDHC1_DATA1		0xc3
+			MX8MQ_IOMUXC_SD1_DATA2_USDHC1_DATA2		0xc3
+			MX8MQ_IOMUXC_SD1_DATA3_USDHC1_DATA3		0xc3
+			MX8MQ_IOMUXC_SD1_DATA4_USDHC1_DATA4		0xc3
+			MX8MQ_IOMUXC_SD1_DATA5_USDHC1_DATA5		0xc3
+			MX8MQ_IOMUXC_SD1_DATA6_USDHC1_DATA6		0xc3
+			MX8MQ_IOMUXC_SD1_DATA7_USDHC1_DATA7		0xc3
+			MX8MQ_IOMUXC_SD1_STROBE_USDHC1_STROBE		0x83
+			MX8MQ_IOMUXC_SD1_RESET_B_USDHC1_RESET_B		0xc1
+		>;
+	};
+
+	pinctrl_usdhc1_100mhz: usdhc1-100grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SD1_CLK_USDHC1_CLK			0x85
+			MX8MQ_IOMUXC_SD1_CMD_USDHC1_CMD			0xc5
+			MX8MQ_IOMUXC_SD1_DATA0_USDHC1_DATA0		0xc5
+			MX8MQ_IOMUXC_SD1_DATA1_USDHC1_DATA1		0xc5
+			MX8MQ_IOMUXC_SD1_DATA2_USDHC1_DATA2		0xc5
+			MX8MQ_IOMUXC_SD1_DATA3_USDHC1_DATA3		0xc5
+			MX8MQ_IOMUXC_SD1_DATA4_USDHC1_DATA4		0xc5
+			MX8MQ_IOMUXC_SD1_DATA5_USDHC1_DATA5		0xc5
+			MX8MQ_IOMUXC_SD1_DATA6_USDHC1_DATA6		0xc5
+			MX8MQ_IOMUXC_SD1_DATA7_USDHC1_DATA7		0xc5
+			MX8MQ_IOMUXC_SD1_STROBE_USDHC1_STROBE		0x85
+			MX8MQ_IOMUXC_SD1_RESET_B_USDHC1_RESET_B		0xc1
+		>;
+	};
+
+	pinctrl_usdhc1_200mhz: usdhc1-200grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SD1_CLK_USDHC1_CLK			0x87
+			MX8MQ_IOMUXC_SD1_CMD_USDHC1_CMD			0xc7
+			MX8MQ_IOMUXC_SD1_DATA0_USDHC1_DATA0		0xc7
+			MX8MQ_IOMUXC_SD1_DATA1_USDHC1_DATA1		0xc7
+			MX8MQ_IOMUXC_SD1_DATA2_USDHC1_DATA2		0xc7
+			MX8MQ_IOMUXC_SD1_DATA3_USDHC1_DATA3		0xc7
+			MX8MQ_IOMUXC_SD1_DATA4_USDHC1_DATA4		0xc7
+			MX8MQ_IOMUXC_SD1_DATA5_USDHC1_DATA5		0xc7
+			MX8MQ_IOMUXC_SD1_DATA6_USDHC1_DATA6		0xc7
+			MX8MQ_IOMUXC_SD1_DATA7_USDHC1_DATA7		0xc7
+			MX8MQ_IOMUXC_SD1_STROBE_USDHC1_STROBE		0x87
+			MX8MQ_IOMUXC_SD1_RESET_B_USDHC1_RESET_B		0xc1
+		>;
+	};
+
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SD2_CLK_USDHC2_CLK			0x83
+			MX8MQ_IOMUXC_SD2_CMD_USDHC2_CMD			0xc3
+			MX8MQ_IOMUXC_SD2_DATA0_USDHC2_DATA0		0xc3
+			MX8MQ_IOMUXC_SD2_DATA1_USDHC2_DATA1		0xc3
+			MX8MQ_IOMUXC_SD2_DATA2_USDHC2_DATA2		0xc3
+			MX8MQ_IOMUXC_SD2_DATA3_USDHC2_DATA3		0xc3
+			MX8MQ_IOMUXC_GPIO1_IO04_USDHC2_VSELECT		0xc1
+		>;
+	};
+
+	pinctrl_usdhc2_100mhz: usdhc2-100grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SD2_CLK_USDHC2_CLK			0x85
+			MX8MQ_IOMUXC_SD2_CMD_USDHC2_CMD			0xc5
+			MX8MQ_IOMUXC_SD2_DATA0_USDHC2_DATA0		0xc5
+			MX8MQ_IOMUXC_SD2_DATA1_USDHC2_DATA1		0xc5
+			MX8MQ_IOMUXC_SD2_DATA2_USDHC2_DATA2		0xc5
+			MX8MQ_IOMUXC_SD2_DATA3_USDHC2_DATA3		0xc5
+			MX8MQ_IOMUXC_GPIO1_IO04_USDHC2_VSELECT		0xc1
+		>;
+	};
+
+	pinctrl_usdhc2_200mhz: usdhc2-200grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SD2_CLK_USDHC2_CLK			0x87
+			MX8MQ_IOMUXC_SD2_CMD_USDHC2_CMD			0xc7
+			MX8MQ_IOMUXC_SD2_DATA0_USDHC2_DATA0		0xc7
+			MX8MQ_IOMUXC_SD2_DATA1_USDHC2_DATA1		0xc7
+			MX8MQ_IOMUXC_SD2_DATA2_USDHC2_DATA2		0xc7
+			MX8MQ_IOMUXC_SD2_DATA3_USDHC2_DATA3		0xc7
+			MX8MQ_IOMUXC_GPIO1_IO04_USDHC2_VSELECT		0xc1
+		>;
+	};
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 44ca27096..0fc36b5f5 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -470,6 +470,13 @@ config MACH_NXP_IMX8MQ_EVK
 	select FIRMWARE_IMX8MQ_ATF
 	select ARM_SMCCC
 
+config MACH_PHYTEC_SOM_IMX8M
+	bool "Phytec i.MX8M SOM"
+	select ARCH_IMX8MQ
+	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
+	select FIRMWARE_IMX8MQ_ATF
+	select ARM_SMCCC
+
 config MACH_GRINN_LITEBOARD
 	bool "Grinn liteboard"
 	select ARCH_IMX6UL
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 3d2e352a3..3d675d0e8 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -549,3 +549,8 @@ pblb-$(CONFIG_MACH_NXP_IMX8MQ_EVK) += start_nxp_imx8mq_evk
 CFG_start_nxp_imx8mq_evk.pblb.imximg = $(board)/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
 FILE_barebox-nxp-imx8mq-evk.img = start_nxp_imx8mq_evk.pblb.imximg
 image-$(CONFIG_MACH_NXP_IMX8MQ_EVK) += barebox-nxp-imx8mq-evk.img
+
+pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX8M) += start_phytec_phycore_imx8mq
+CFG_start_phytec_phycore_imx8mq.pblb.imximg = $(board)/phytec-som-imx8m/flash-header-phycore-imx8mq.imxcfg
+FILE_barebox-phytec-phycore-imx8mq.img = start_phytec_phycore_imx8mq.pblb.imximg
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX8M) += barebox-phytec-phycore-imx8mq.img
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
