Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x244.google.com ([2607:f8b0:400e:c05::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fV9QX-0003O8-Be
 for barebox@lists.infradead.org; Tue, 19 Jun 2018 05:43:42 +0000
Received: by mail-pg0-x244.google.com with SMTP id a14-v6so8626686pgw.10
 for <barebox@lists.infradead.org>; Mon, 18 Jun 2018 22:43:26 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 18 Jun 2018 22:43:07 -0700
Message-Id: <20180619054307.30618-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180619054307.30618-1-andrew.smirnov@gmail.com>
References: <20180619054307.30618-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/2] ARM: i.MX: Add support for ZII RDU1 board
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Nikita Yushchenko <nikita.yoush@cogentembedded.com>

ZII RDU1 is a i.MX51 based, Babbade board derivative supported by
upstream kernel. This commit adds support for it to Barebox.

Signed-off-by: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/Makefile                      |  1 +
 arch/arm/boards/zii-imx51-rdu1/Makefile       |  2 +
 arch/arm/boards/zii-imx51-rdu1/board.c        | 38 ++++++++++++
 .../flash-header-imx51-zii-rdu1.imxcfg        | 60 +++++++++++++++++++
 arch/arm/boards/zii-imx51-rdu1/lowlevel.c     | 46 ++++++++++++++
 arch/arm/configs/imx_v7_defconfig             |  1 +
 arch/arm/dts/Makefile                         |  1 +
 arch/arm/dts/imx51-zii-rdu1.dts               | 46 ++++++++++++++
 arch/arm/mach-imx/Kconfig                     |  5 ++
 images/Makefile.imx                           |  5 ++
 10 files changed, 205 insertions(+)
 create mode 100644 arch/arm/boards/zii-imx51-rdu1/Makefile
 create mode 100644 arch/arm/boards/zii-imx51-rdu1/board.c
 create mode 100644 arch/arm/boards/zii-imx51-rdu1/flash-header-imx51-zii-rdu1.imxcfg
 create mode 100644 arch/arm/boards/zii-imx51-rdu1/lowlevel.c
 create mode 100644 arch/arm/dts/imx51-zii-rdu1.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index f1dc4c685..e5d217f52 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -150,5 +150,6 @@ obj-$(CONFIG_MACH_VSCOM_BALTOS)			+= vscom-baltos/
 obj-$(CONFIG_MACH_QEMU_VIRT64)			+= qemu-virt64/
 obj-$(CONFIG_MACH_WARP7)			+= element14-warp7/
 obj-$(CONFIG_MACH_VF610_TWR)			+= freescale-vf610-twr/
+obj-$(CONFIG_MACH_ZII_RDU1)			+= zii-imx51-rdu1/
 obj-$(CONFIG_MACH_ZII_RDU2)			+= zii-imx6q-rdu2/
 obj-$(CONFIG_MACH_ZII_VF610_DEV)		+= zii-vf610-dev/
diff --git a/arch/arm/boards/zii-imx51-rdu1/Makefile b/arch/arm/boards/zii-imx51-rdu1/Makefile
new file mode 100644
index 000000000..01c7a259e
--- /dev/null
+++ b/arch/arm/boards/zii-imx51-rdu1/Makefile
@@ -0,0 +1,2 @@
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/zii-imx51-rdu1/board.c b/arch/arm/boards/zii-imx51-rdu1/board.c
new file mode 100644
index 000000000..5e8f96ebd
--- /dev/null
+++ b/arch/arm/boards/zii-imx51-rdu1/board.c
@@ -0,0 +1,38 @@
+/*
+ * Copyright (C) 2015 Nikita Yushchenko, CogentEmbedded, Inc
+ * Copyright (C) 2015 Andrey Gusakov, CogentEmbedded, Inc
+ * Copyright (C) 2007 Sascha Hauer, Pengutronix
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
+ *
+ */
+
+#define pr_fmt(fmt) "zii-rdu1: " fmt
+
+#include <common.h>
+#include <init.h>
+#include <mach/bbu.h>
+
+static int zii_rdu1_init(void)
+{
+	if (!of_machine_is_compatible("zii,imx51-rdu1"))
+		return 0;
+
+	barebox_set_hostname("rdu1");
+
+	imx51_bbu_internal_mmc_register_handler("mmc", "/dev/mmc0", 0);
+	imx51_bbu_internal_spi_i2c_register_handler("spi",
+						    "/dev/dataflash0.barebox",
+						    BBU_HANDLER_FLAG_DEFAULT);
+	return 0;
+}
+coredevice_initcall(zii_rdu1_init);
\ No newline at end of file
diff --git a/arch/arm/boards/zii-imx51-rdu1/flash-header-imx51-zii-rdu1.imxcfg b/arch/arm/boards/zii-imx51-rdu1/flash-header-imx51-zii-rdu1.imxcfg
new file mode 100644
index 000000000..76f4c6b59
--- /dev/null
+++ b/arch/arm/boards/zii-imx51-rdu1/flash-header-imx51-zii-rdu1.imxcfg
@@ -0,0 +1,60 @@
+soc imx51
+loadaddr 0x90000000
+dcdofs 0x400
+
+wm 32 0x73fa88a0 0x00000200
+wm 32 0x73fa850c 0x000020c5
+wm 32 0x73fa8510 0x000020c5
+wm 32 0x73fa883c 0x00000002
+wm 32 0x73fa8848 0x00000002
+wm 32 0x73fa84b8 0x000000e7
+wm 32 0x73fa84bc 0x00000045
+wm 32 0x73fa84c0 0x00000045
+wm 32 0x73fa84c4 0x00000045
+wm 32 0x73fa84c8 0x00000045
+wm 32 0x73fa8820 0x00000000
+wm 32 0x73fa84a4 0x00000003
+wm 32 0x73fa84a8 0x00000003
+wm 32 0x73fa84ac 0x000000e3
+wm 32 0x73fa84b0 0x000000e3
+wm 32 0x73fa84b4 0x000000e3
+wm 32 0x73fa84cc 0x000000e3
+wm 32 0x73fa84d0 0x000000e2
+wm 32 0x73fa882c 0x00000004
+wm 32 0x73fa88a4 0x00000004
+wm 32 0x73fa88ac 0x00000004
+wm 32 0x73fa88b8 0x00000004
+wm 32 0x83fd9000 0x82a20000
+wm 32 0x83fd9008 0x82a20000
+wm 32 0x83fd9010 0x000ad0d0
+wm 32 0x83fd9004 0x3f3584ab
+wm 32 0x83fd900c 0x3f3584ab
+wm 32 0x83fd9014 0x04008008
+wm 32 0x83fd9014 0x0000801a
+wm 32 0x83fd9014 0x0000801b
+wm 32 0x83fd9014 0x00448019
+wm 32 0x83fd9014 0x07328018
+wm 32 0x83fd9014 0x04008008
+wm 32 0x83fd9014 0x00008010
+wm 32 0x83fd9014 0x00008010
+wm 32 0x83fd9014 0x06328018
+wm 32 0x83fd9014 0x03808019
+wm 32 0x83fd9014 0x00408019
+wm 32 0x83fd9014 0x00008000
+wm 32 0x83fd9014 0x0400800c
+wm 32 0x83fd9014 0x0000801e
+wm 32 0x83fd9014 0x0000801f
+wm 32 0x83fd9014 0x0000801d
+wm 32 0x83fd9014 0x0732801c
+wm 32 0x83fd9014 0x0400800c
+wm 32 0x83fd9014 0x00008014
+wm 32 0x83fd9014 0x00008014
+wm 32 0x83fd9014 0x0632801c
+wm 32 0x83fd9014 0x0380801d
+wm 32 0x83fd9014 0x0040801d
+wm 32 0x83fd9014 0x00008004
+wm 32 0x83fd9000 0xb2a20000
+wm 32 0x83fd9008 0xb2a20000
+wm 32 0x83fd9010 0x000ad6d0
+wm 32 0x83fd9034 0x90000000
+wm 32 0x83fd9014 0x00000000
diff --git a/arch/arm/boards/zii-imx51-rdu1/lowlevel.c b/arch/arm/boards/zii-imx51-rdu1/lowlevel.c
new file mode 100644
index 000000000..c28ca8653
--- /dev/null
+++ b/arch/arm/boards/zii-imx51-rdu1/lowlevel.c
@@ -0,0 +1,46 @@
+#include <debug_ll.h>
+#include <mach/clock-imx51_53.h>
+#include <mach/iomux-mx51.h>
+#include <common.h>
+#include <mach/esdctl.h>
+#include <mach/generic.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+
+static inline void setup_uart(void)
+{
+	void __iomem *iomuxbase = IOMEM(MX51_IOMUXC_BASE_ADDR);
+	void __iomem *ccmbase = IOMEM(MX51_CCM_BASE_ADDR);
+
+	/*
+	 * Restore CCM values that might be changed by the Mask ROM
+	 * code.
+	 *
+	 * Source: RealView debug scripts provided by Freescale
+	 */
+	writel(MX5_CCM_CBCDR_RESET_VALUE,  ccmbase + MX5_CCM_CBCDR);
+	writel(MX5_CCM_CSCMR1_RESET_VALUE, ccmbase + MX5_CCM_CSCMR1);
+	writel(MX5_CCM_CSCDR1_RESET_VALUE, ccmbase + MX5_CCM_CSCDR1);
+
+	imx_setup_pad(iomuxbase, MX51_PAD_UART1_TXD__UART1_TXD);
+
+	imx51_uart_setup_ll();
+
+	putc_ll('>');
+}
+
+extern char __dtb_imx51_zii_rdu1_start[];
+
+ENTRY_FUNCTION(start_imx51_zii_rdu1, r0, r1, r2)
+{
+	void *fdt;
+
+	imx5_cpu_lowlevel_init();
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		setup_uart();
+
+	fdt = __dtb_imx51_zii_rdu1_start + get_runtime_offset();
+
+	imx51_barebox_entry(fdt);
+}
\ No newline at end of file
diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index 8aef9d6ef..0fc3c9c50 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -35,6 +35,7 @@ CONFIG_MACH_CM_FX6=y
 CONFIG_MACH_ADVANTECH_ROM_742X=y
 CONFIG_MACH_WARP7=y
 CONFIG_MACH_VF610_TWR=y
+CONFIG_MACH_ZII_RDU1=y
 CONFIG_MACH_ZII_RDU2=y
 CONFIG_MACH_ZII_VF610_DEV=y
 CONFIG_MACH_PHYTEC_PHYCORE_IMX7=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index b69592e64..1c94193d1 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -102,6 +102,7 @@ pbl-dtb-$(CONFIG_MACH_VEXPRESS) += vexpress-v2p-ca15.dtb.o
 pbl-dtb-$(CONFIG_MACH_VSCOM_BALTOS) += am335x-baltos-minimal.dtb.o
 pbl-dtb-$(CONFIG_MACH_WARP7) += imx7s-warp.dtb.o
 pbl-dtb-$(CONFIG_MACH_VF610_TWR) += vf610-twr.dtb.o
+pbl-dtb-$(CONFIG_MACH_ZII_RDU1) += imx51-zii-rdu1.dtb.o
 pbl-dtb-$(CONFIG_MACH_ZII_RDU2) += imx6q-zii-rdu2.dtb.o imx6qp-zii-rdu2.dtb.o
 pbl-dtb-$(CONFIG_MACH_ZII_VF610_DEV) += \
 	vf610-zii-dev-rev-b.dtb.o 	\
diff --git a/arch/arm/dts/imx51-zii-rdu1.dts b/arch/arm/dts/imx51-zii-rdu1.dts
new file mode 100644
index 000000000..e7b0bc743
--- /dev/null
+++ b/arch/arm/dts/imx51-zii-rdu1.dts
@@ -0,0 +1,46 @@
+/*
+ * Copyright 2018 CogentEmbedded, Inc.
+ * Copyright 2011 Freescale Semiconductor, Inc.
+ * Copyright 2011 Linaro Ltd.
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+#include <arm/imx51-zii-rdu1.dts>
+
+/ {
+	compatible = "zii,imx51-rdu1", "fsl,imx51-babbage-power", "fsl,imx51";
+
+	chosen {
+		stdout-path = &uart1;
+
+		environment-spi {
+			compatible = "barebox,environment";
+			device-path = &spinor, "partname:barebox-environment";
+		};
+	};
+};
+
+&ecspi1 {
+	spinor: flash@1 {
+		partition@0 {
+			label = "config";
+			reg = <0x0 0x400>;
+		};
+
+		partition@400 {
+			label = "barebox";
+			reg = <0x400 0xdfc00>;
+		};
+
+		partition@e0000 {
+			label = "barebox-environment";
+			reg = <0xe0000 0x20000>;
+		};
+	};
+};
\ No newline at end of file
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 6a6710c39..83d32f30c 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -423,6 +423,11 @@ config MACH_VF610_TWR
 	bool "Freescale VF610 Tower Board"
 	select ARCH_VF610
 
+config MACH_ZII_RDU1
+	bool "ZII i.MX51 RDU1"
+	select ARCH_IMX51
+	select MACH_FREESCALE_MX51_PDK_POWER
+
 config MACH_ZII_RDU2
 	bool "ZII i.MX6Q(+) RDU2"
 	select ARCH_IMX6
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 43505b1ff..e3f3b2c8c 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -76,6 +76,11 @@ CFG_start_imx51_babbage_xload.pblx.imximg = $(board)/freescale-mx51-babbage/flas
 FILE_barebox-freescale-imx51-babbage-xload.img = start_imx51_babbage_xload.pblx.imximg
 imx-xload-$(CONFIG_MACH_FREESCALE_MX51_PDK) += barebox-freescale-imx51-babbage-xload.img
 
+pblx-$(CONFIG_MACH_ZII_RDU1) += start_imx51_zii_rdu1
+CFG_start_imx51_zii_rdu1.pblx.imximg = $(board)/zii-imx51-rdu1/flash-header-imx51-zii-rdu1.imxcfg
+FILE_barebox-zii-imx51-rdu1.img = start_imx51_zii_rdu1.pblx.imximg
+imx-barebox-$(CONFIG_MACH_ZII_RDU1) += barebox-zii-imx51-rdu1.img
+
 ifdef CONFIG_ARCH_IMX_XLOAD
 image-y += $(imx-xload-y)
 else
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
