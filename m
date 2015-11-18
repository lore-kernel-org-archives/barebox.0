Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x236.google.com ([2607:f8b0:400e:c03::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZyuLL-00029G-DY
 for barebox@lists.infradead.org; Wed, 18 Nov 2015 04:27:42 +0000
Received: by pabfh17 with SMTP id fh17so32349921pab.0
 for <barebox@lists.infradead.org>; Tue, 17 Nov 2015 20:27:18 -0800 (PST)
From: Jason Cobham <cobham.jason@gmail.com>
Date: Tue, 17 Nov 2015 20:27:03 -0800
Message-Id: <1447820824-12471-3-git-send-email-cobham.jason@gmail.com>
In-Reply-To: <1447820824-12471-1-git-send-email-cobham.jason@gmail.com>
References: <1447820824-12471-1-git-send-email-cobham.jason@gmail.com>
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
Subject: [PATCH 3/4] ARM: ccxmx53: Add 512MB and 1GB boards.
To: barebox@lists.infradead.org
Cc: cobham.jason@gmail.com

Tested with a 512M and 1GB module on a JSK dev board.
Signed-off-by: Jason Cobham <cobham.jason@gmail.com>
---
 arch/arm/boards/ccxmx53/Makefile                   |  3 +-
 arch/arm/boards/ccxmx53/board.c                    | 27 ++++-----
 ...xcfg => flash-header-imx53-ccxmx53_1gib.imxcfg} |  0
 .../flash-header-imx53-ccxmx53_512mb.imxcfg        | 67 ++++++++++++++++++++++
 arch/arm/boards/ccxmx53/lowlevel.c                 | 44 ++++++++++++--
 arch/arm/configs/imx_v7_defconfig                  |  1 +
 dts/src/arm/imx53-ccxmx53.dts                      |  3 +-
 dts/src/arm/imx53-ccxmx53.dtsi                     |  7 +--
 images/Makefile.imx                                | 13 +++--
 9 files changed, 132 insertions(+), 33 deletions(-)
 rename arch/arm/boards/ccxmx53/{flash-header-imx53-ccxmx53.imxcfg => flash-header-imx53-ccxmx53_1gib.imxcfg} (100%)
 create mode 100644 arch/arm/boards/ccxmx53/flash-header-imx53-ccxmx53_512mb.imxcfg

diff --git a/arch/arm/boards/ccxmx53/Makefile b/arch/arm/boards/ccxmx53/Makefile
index c5be481..01c7a25 100644
--- a/arch/arm/boards/ccxmx53/Makefile
+++ b/arch/arm/boards/ccxmx53/Makefile
@@ -1,3 +1,2 @@
-obj-y += board.o flash-header-imx53-ccxmx53.dcd.o
-extra-y += flash-header-imx53-ccxmx53.dcd.S flash-header-imx53-ccxmx53.dcd
+obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/ccxmx53/board.c b/arch/arm/boards/ccxmx53/board.c
index f6ba117..721eb0d 100644
--- a/arch/arm/boards/ccxmx53/board.c
+++ b/arch/arm/boards/ccxmx53/board.c
@@ -30,12 +30,6 @@
 #include <mach/bbu.h>
 #include <mach/iim.h>
 
-struct ccwmx53_hwid {
-	u8		variant;
-	u8		version;
-	u32		sn;
-	char	mloc;
-};
 
 struct ccwmx53_ident {
 	const char	*id_string;
@@ -47,9 +41,9 @@ struct ccwmx53_ident {
 };
 
 static struct ccwmx53_ident ccwmx53_ids[] = {
-/* 0x00 - 5500xxxx-xx */	{ "Unknown",						         			0,			0,		0,		0,      0},
-/* 0x01 - 5500xxxx-xx */	{ "Not supported",					         			0,			0,		0,		0,      0},
-/* 0x02 - 55001604-01 */	{ "i.MX535@1000MHz, Wireless, PHY, Ext. Eth, Accel",	SZ_512M,	0,		1,		1, 		1},
+/* 0x00 - 5500xxxx-xx */	{ "Unknown",											0,			0,		0,		0,		0},
+/* 0x01 - 5500xxxx-xx */	{ "Not supported",										0,			0,		0,		0,		0},
+/* 0x02 - 55001604-01 */	{ "i.MX535@1000MHz, Wireless, PHY, Ext. Eth, Accel",	SZ_512M,	0,		1,		1,		1},
 /* 0x03 - 55001605-01 */	{ "i.MX535@1000MHz, PHY, Accel",						SZ_512M,	0,		1,		0,		0},
 /* 0x04 - 55001604-02 */	{ "i.MX535@1000MHz, Wireless, PHY, Ext. Eth, Accel",	SZ_512M,	0,		1,		1,		1},
 /* 0x05 - 5500xxxx-xx */	{ "i.MX535@1000MHz, PHY, Ext. Eth, Accel",				SZ_512M,	0,		1,		1,		0},
@@ -59,10 +53,10 @@ static struct ccwmx53_ident ccwmx53_ids[] = {
 /* 0x09 - 55001605-02 */	{ "i.MX537@800MHz, PHY, Accel",							SZ_512M,	1,		1,		0,		0},
 /* 0x0a - 5500xxxx-xx */	{ "i.MX537@800MHz, Wireless, PHY, Ext. Eth, Accel",		SZ_512M,	1,		1,		1,		1},
 /* 0x0b - 55001605-03 */	{ "i.MX537@800MHz, PHY, Ext. Eth, Accel",				SZ_1G,		1,		1,		1,		0},
-/* 0x0c - 5500xxxx-xx */	{ "Reserved for future use",				        	0,     		0,      0,		0,	    0},
-/* 0x0d - 55001605-05 */	{ "i.MX537@800MHz, PHY, Accel",							SZ_1G,		1,  	1,		0,		0},
-/* 0x0e - 5500xxxx-xx */	{ "Reserved for future use",				         	0,     		0,      0,   	0,		0},
-/* 0x0f - 5500xxxx-xx */	{ "Reserved for future use",				        	0,     		0,      0,		0,	    0},
+/* 0x0c - 5500xxxx-xx */	{ "Reserved for future use",							0,			0,		0,		0,		0},
+/* 0x0d - 55001605-05 */	{ "i.MX537@800MHz, PHY, Accel",							SZ_1G,		1,		1,		0,		0},
+/* 0x0e - 5500xxxx-xx */	{ "Reserved for future use",							0,			0,		0,		0,		0},
+/* 0x0f - 5500xxxx-xx */	{ "Reserved for future use",							0,			0,		0,		0,		0},
 };
 
 struct ccwmx53_ident *ccwmx53_id;
@@ -77,8 +71,9 @@ static void ccwmx53_fec_reset(void)
 }
 
 /*
- * On this board the SDRAM is always configured for 512Mib in dt. The real
- * size is determined by the board id read from the IIM module.
+ * Configure this board for 256Mb. The real
+ * size is determined by the board id read from the IIM module
+ * and added as ram1.
  */
 
 static int ccwmx53_devices_init(void)
@@ -115,7 +110,7 @@ static int ccwmx53_devices_init(void)
 		printf("Module RAM    : %dK\n", (ccwmx53_id->mem_sz)/1024);
 		if ((ccwmx53_id->mem_sz - SZ_512M) > 0)
 		{
-			arm_add_mem_device("ram1", MX53_CSD0_BASE_ADDR+SZ_512M, ccwmx53_id->mem_sz-SZ_512M);
+			//arm_add_mem_device("ram1", MX53_CSD0_BASE_ADDR + SZ_512M, (ccwmx53_id->mem_sz)-SZ_512M);
 		}
 	} else {
 		return -ENOSYS;
diff --git a/arch/arm/boards/ccxmx53/flash-header-imx53-ccxmx53.imxcfg b/arch/arm/boards/ccxmx53/flash-header-imx53-ccxmx53_1gib.imxcfg
similarity index 100%
rename from arch/arm/boards/ccxmx53/flash-header-imx53-ccxmx53.imxcfg
rename to arch/arm/boards/ccxmx53/flash-header-imx53-ccxmx53_1gib.imxcfg
diff --git a/arch/arm/boards/ccxmx53/flash-header-imx53-ccxmx53_512mb.imxcfg b/arch/arm/boards/ccxmx53/flash-header-imx53-ccxmx53_512mb.imxcfg
new file mode 100644
index 0000000..b707dd6
--- /dev/null
+++ b/arch/arm/boards/ccxmx53/flash-header-imx53-ccxmx53_512mb.imxcfg
@@ -0,0 +1,67 @@
+loadaddr 0x70000000
+soc imx53
+dcdofs 0x400
+wm 32 0x53fa8554 0x00200000
+wm 32 0x53fa8558 0x00200040
+wm 32 0x53fa8560 0x00200000
+wm 32 0x53fa8564 0x00200040
+wm 32 0x53fa8568 0x00200040
+wm 32 0x53fa8570 0x00200000
+wm 32 0x53fa8574 0x00200000
+wm 32 0x53fa8578 0x00200000
+wm 32 0x53fa857c 0x00200040
+wm 32 0x53fa8580 0x00200040
+wm 32 0x53fa8584 0x00200000
+wm 32 0x53fa8588 0x00200000
+wm 32 0x53fa8590 0x00200040
+wm 32 0x53fa8594 0x00200000
+wm 32 0x53fa86f0 0x00200000
+wm 32 0x53fa86f4 0x00000200
+wm 32 0x53fa86fc 0x00000000
+wm 32 0x53fa8714 0x00000000
+wm 32 0x53fa8718 0x00200000
+wm 32 0x53fa871c 0x00200000
+wm 32 0x53fa8720 0x00200000
+wm 32 0x53fa8724 0x06000000
+wm 32 0x53fa8728 0x00200000
+wm 32 0x53fa872c 0x00200000
+wm 32 0x63fd9088 0x2d313331
+wm 32 0x63fd9090 0x393b3836
+wm 32 0x63fd90f8 0x00000800
+wm 32 0x63fd907c 0x020c0211
+wm 32 0x63fd9080 0x014c0155
+wm 32 0x63fd9018 0x000016d0
+wm 32 0x63fd9000 0xc2110000
+wm 32 0x63fd900c 0x4d5122d2
+wm 32 0x63fd9010 0x92d18a22
+wm 32 0x63fd9014 0x00c70092
+wm 32 0x63fd902c 0x000026d2
+wm 32 0x63fd9030 0x009f000e
+wm 32 0x63fd9008 0x12272000
+wm 32 0x63fd9004 0x00030012
+wm 32 0x63fd901c 0x04008010
+wm 32 0x63fd901c 0x00008032
+wm 32 0x63fd901c 0x00008033
+wm 32 0x63fd901c 0x00008031
+wm 32 0x63fd901c 0x0b5280b0
+wm 32 0x63fd901c 0x04008010
+wm 32 0x63fd901c 0x00008020
+wm 32 0x63fd901c 0x00008020
+wm 32 0x63fd901c 0x0a528030
+wm 32 0x63fd901c 0x03c68031
+wm 32 0x63fd901c 0x00448031
+wm 32 0x63fd901c 0x04008018
+wm 32 0x63fd901c 0x0000803a
+wm 32 0x63fd901c 0x0000803b
+wm 32 0x63fd901c 0x00008039
+wm 32 0x63fd901c 0x0b528138
+wm 32 0x63fd901c 0x04008018
+wm 32 0x63fd901c 0x00008028
+wm 32 0x63fd901c 0x00008028
+wm 32 0x63fd901c 0x0a528038
+wm 32 0x63fd901c 0x03c68039
+wm 32 0x63fd901c 0x00448039
+wm 32 0x63fd9020 0x00005800
+wm 32 0x63fd9058 0x00022225
+wm 32 0x63fd901c 0x00000000
+wm 32 0x63fd9040 0x04b80003
diff --git a/arch/arm/boards/ccxmx53/lowlevel.c b/arch/arm/boards/ccxmx53/lowlevel.c
index 3b37dff..a6d2098 100644
--- a/arch/arm/boards/ccxmx53/lowlevel.c
+++ b/arch/arm/boards/ccxmx53/lowlevel.c
@@ -1,19 +1,53 @@
+/*
+ * Copyright (C) 2013 Sascha Hauer <s.hauer@pengutronix.de>
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
 #include <common.h>
 #include <mach/esdctl.h>
 #include <mach/generic.h>
+#include <image-metadata.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
+#include <asm/sections.h>
+#include <asm/cache.h>
+#include <asm/mmu.h>
 
-extern char __dtb_imx53_ccxmx53_start[];
+BAREBOX_IMD_TAG_STRING(ccxmx53_memsize_SZ_512M, IMD_TYPE_PARAMETER, "memsize=512", 0);
+BAREBOX_IMD_TAG_STRING(ccxmx53_memsize_SZ_1G, IMD_TYPE_PARAMETER, "memsize=1024", 0);
 
-ENTRY_FUNCTION(start_imx53_ccxmx53, r0, r1, r2)
+static void __noreturn start_imx53_ccxmx53_common(uint32_t size,
+						void *fdt_blob_fixed_offset)
 {
 	void *fdt;
 
 	imx5_cpu_lowlevel_init();
 	arm_setup_stack(0xf8020000 - 8);
 
-	fdt = __dtb_imx53_ccxmx53_start - get_runtime_offset();
-
-	imx53_barebox_entry(fdt);
+	fdt = fdt_blob_fixed_offset - get_runtime_offset();
+	barebox_arm_entry(0x70000000, size, fdt);
 }
+
+#define CCMX53_ENTRY(name, fdt_name, memory_size)	\
+	ENTRY_FUNCTION(name, r0, r1, r2)				\
+	{								\
+		extern char __dtb_##fdt_name##_start[];			\
+									\
+		IMD_USED(ccxmx53_memsize_##memory_size);		\
+									\
+		start_imx53_ccxmx53_common(memory_size,  \
+					 __dtb_##fdt_name##_start);	\
+	}
+
+CCMX53_ENTRY(start_ccxmx53_512mb, imx53_ccxmx53, SZ_512M);
+CCMX53_ENTRY(start_ccxmx53_1gib, imx53_ccxmx53, SZ_1G);
diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index 0f38125..9c7a471 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -4,6 +4,7 @@ CONFIG_MACH_EFIKA_MX_SMARTBOOK=y
 CONFIG_MACH_EMBEDSKY_E9=y
 CONFIG_MACH_FREESCALE_MX51_PDK=y
 CONFIG_MACH_FREESCALE_MX53_LOCO=y
+CONFIG_MACH_CCMX53=y
 CONFIG_MACH_TQMA53=y
 CONFIG_MACH_FREESCALE_MX53_VMX53=y
 CONFIG_MACH_PCAAXL3=y
diff --git a/dts/src/arm/imx53-ccxmx53.dts b/dts/src/arm/imx53-ccxmx53.dts
index 178f481..e567e60 100644
--- a/dts/src/arm/imx53-ccxmx53.dts
+++ b/dts/src/arm/imx53-ccxmx53.dts
@@ -14,7 +14,8 @@
 #include "imx53-ccxmx53.dtsi"
 
 / {
-
+	model = "Digi ConnectCore ccxmx53";
+	compatible = "digi,imx53-ccxmx53", "fsl,imx53";
 };
 
 &iomuxc {
diff --git a/dts/src/arm/imx53-ccxmx53.dtsi b/dts/src/arm/imx53-ccxmx53.dtsi
index 5ca177b..c9cb46c 100644
--- a/dts/src/arm/imx53-ccxmx53.dtsi
+++ b/dts/src/arm/imx53-ccxmx53.dtsi
@@ -13,13 +13,10 @@
 #include "imx53.dtsi"
 
 / {
-	model = "Digi ConnectCore ccxmx53";
-	compatible = "digi,imx53-ccxmx53", "fsl,imx53";
-
 	memory {
-		device_type = "memory";
-		reg = <0x70000000 0x20000000>;
+		reg = <0x70000000 0x40000000>;
 	};
+
 };
 
 &iomuxc {
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 98eb9a1..ad171d8 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -76,10 +76,15 @@ CFG_start_imx53_loco_r.pblx.imximg = $(board)/freescale-mx53-qsb/flash-header-im
 FILE_barebox-freescale-imx53-loco-r.img = start_imx53_loco_r.pblx.imximg
 image-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += barebox-freescale-imx53-loco-r.img
 
-pblx-$(CONFIG_MACH_CCMX53) += start_imx53_ccxmx53
-CFG_start_imx53_ccxmx53.pblx.imximg = $(board)/ccxmx53/flash-header-imx53-ccxmx53.imxcfg
-FILE_barebox-imx53-ccxmx53.img = start_imx53_ccxmx53.pblx.imximg
-image-$(CONFIG_MACH_CCMX53) += barebox-imx53-ccxmx53.img
+pblx-$(CONFIG_MACH_CCMX53) += start_ccxmx53_512mb
+CFG_start_ccxmx53_512mb.pblx.imximg = $(board)/ccxmx53/flash-header-imx53-ccxmx53_512mb.imxcfg
+FILE_barebox-imx53-ccxmx53_512mb.img = start_ccxmx53_512mb.pblx.imximg
+image-$(CONFIG_MACH_CCMX53) += barebox-imx53-ccxmx53_512mb.img
+
+pblx-$(CONFIG_MACH_CCMX53) += start_ccxmx53_1gib
+CFG_start_ccxmx53_1gib.pblx.imximg = $(board)/ccxmx53/flash-header-imx53-ccxmx53_1gib.imxcfg
+FILE_barebox-imx53-ccxmx53_1gib.img = start_ccxmx53_1gib.pblx.imximg
+image-$(CONFIG_MACH_CCMX53) += barebox-imx53-ccxmx53_1gib.img
 
 pblx-$(CONFIG_MACH_FREESCALE_MX53_VMX53) += start_imx53_vmx53
 CFG_start_imx53_vmx53.pblx.imximg = $(board)/freescale-mx53-vmx53/flash-header-imx53-vmx53.imxcfg
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
