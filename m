Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x229.google.com ([2607:f8b0:400e:c03::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zzd7i-0003Ty-Rz
 for barebox@lists.infradead.org; Fri, 20 Nov 2015 04:16:37 +0000
Received: by pabfh17 with SMTP id fh17so106453633pab.0
 for <barebox@lists.infradead.org>; Thu, 19 Nov 2015 20:16:14 -0800 (PST)
From: Jason Cobham <cobham.jason@gmail.com>
Date: Thu, 19 Nov 2015 20:16:08 -0800
Message-Id: <1447992968-14149-1-git-send-email-cobham.jason@gmail.com>
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
Subject: [PATCH v2] Add support for Digi ConnectCore ccxmx53 board.
To: barebox@lists.infradead.org
Cc: cobham.jason@gmail.com

Based on the i.MX53 SoC. Tested with a 512M and 1GB module on a JSK dev board.

This v2 patch addresses the suggested v1 comments:
- device tree mmc bus width is configured correctly
- ARCH_TEXT_BASE define is not necessary
- fec phy reset pin configured in device tree
- simplify board_init
- single patch

Signed-off-by: Jason Cobham <cobham.jason@gmail.com>
---
 arch/arm/boards/Makefile                           |   1 +
 arch/arm/boards/ccxmx53/Makefile                   |   2 +
 arch/arm/boards/ccxmx53/board.c                    | 160 +++++++++++++++
 .../ccxmx53/flash-header-imx53-ccxmx53_1gib.imxcfg |  67 +++++++
 .../flash-header-imx53-ccxmx53_512mb.imxcfg        |  67 +++++++
 arch/arm/boards/ccxmx53/lowlevel.c                 |  53 +++++
 arch/arm/configs/imx_v7_defconfig                  |   1 +
 arch/arm/dts/Makefile                              |   1 +
 arch/arm/dts/imx53-ccxmx53.dts                     |  15 ++
 arch/arm/dts/imx53-ccxmx53.dtsi                    |  35 ++++
 arch/arm/mach-imx/Kconfig                          |   7 +
 dts/src/arm/imx53-ccxmx53.dts                      | 104 ++++++++++
 dts/src/arm/imx53-ccxmx53.dtsi                     | 223 +++++++++++++++++++++
 images/Makefile.imx                                |  10 +
 14 files changed, 746 insertions(+)
 create mode 100644 arch/arm/boards/ccxmx53/Makefile
 create mode 100644 arch/arm/boards/ccxmx53/board.c
 create mode 100644 arch/arm/boards/ccxmx53/flash-header-imx53-ccxmx53_1gib.imxcfg
 create mode 100644 arch/arm/boards/ccxmx53/flash-header-imx53-ccxmx53_512mb.imxcfg
 create mode 100644 arch/arm/boards/ccxmx53/lowlevel.c
 create mode 100644 arch/arm/dts/imx53-ccxmx53.dts
 create mode 100644 arch/arm/dts/imx53-ccxmx53.dtsi
 create mode 100644 dts/src/arm/imx53-ccxmx53.dts
 create mode 100644 dts/src/arm/imx53-ccxmx53.dtsi

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 2229817..7da8992 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -17,6 +17,7 @@ obj-$(CONFIG_MACH_CANON_A1100)			+= canon-a1100/
 obj-$(CONFIG_MACH_CM_FX6)			+= cm-fx6/
 obj-$(CONFIG_MACH_NITROGEN6X)			+= boundarydevices-nitrogen6x/
 obj-$(CONFIG_MACH_CCMX51)			+= ccxmx51/
+obj-$(CONFIG_MACH_CCMX53)			+= ccxmx53/
 obj-$(CONFIG_MACH_CFA10036)			+= crystalfontz-cfa10036/
 obj-$(CONFIG_MACH_CHUMBY)			+= chumby_falconwing/
 obj-$(CONFIG_MACH_CLEP7212)			+= clep7212/
diff --git a/arch/arm/boards/ccxmx53/Makefile b/arch/arm/boards/ccxmx53/Makefile
new file mode 100644
index 0000000..01c7a25
--- /dev/null
+++ b/arch/arm/boards/ccxmx53/Makefile
@@ -0,0 +1,2 @@
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/ccxmx53/board.c b/arch/arm/boards/ccxmx53/board.c
new file mode 100644
index 0000000..6136152
--- /dev/null
+++ b/arch/arm/boards/ccxmx53/board.c
@@ -0,0 +1,160 @@
+/*
+ * Copyright (C) 2015 Jason Cobham <cobham.jason@gmail.com>
+ *
+ * Board specific file for the Digi ConnectCore ccxmx53 SoM
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <linux/sizes.h>
+#include <i2c/i2c.h>
+#include <gpio.h>
+
+#include <generated/mach-types.h>
+#include <mach/imx5.h>
+#include <mach/generic.h>
+#include <mach/imx53-regs.h>
+#include <mach/esdctl.h>
+#include <asm/armlinux.h>
+#include <mach/bbu.h>
+#include <mach/iim.h>
+
+
+struct ccwmx53_ident {
+	const char	*id_string;
+	const int	mem_sz;
+	const char	industrial;
+	const char	eth0;
+	const char	eth1;
+	const char	wless;
+};
+
+static struct ccwmx53_ident ccwmx53_ids[] = {
+/* 0x00 - 5500xxxx-xx */	{ "Unknown",											0,			0,		0,		0,		0},
+/* 0x01 - 5500xxxx-xx */	{ "Not supported",										0,			0,		0,		0,		0},
+/* 0x02 - 55001604-01 */	{ "i.MX535@1000MHz, Wireless, PHY, Ext. Eth, Accel",	SZ_512M,	0,		1,		1,		1},
+/* 0x03 - 55001605-01 */	{ "i.MX535@1000MHz, PHY, Accel",						SZ_512M,	0,		1,		0,		0},
+/* 0x04 - 55001604-02 */	{ "i.MX535@1000MHz, Wireless, PHY, Ext. Eth, Accel",	SZ_512M,	0,		1,		1,		1},
+/* 0x05 - 5500xxxx-xx */	{ "i.MX535@1000MHz, PHY, Ext. Eth, Accel",				SZ_512M,	0,		1,		1,		0},
+/* 0x06 - 55001604-03 */	{ "i.MX535@1000MHz, Wireless, PHY, Accel",				SZ_512M,	0,		1,		0,		1},
+/* 0x07 - 5500xxxx-xx */	{ "i.MX535@1000MHz, PHY, Accel",						SZ_512M,	0,		1,		0,		0},
+/* 0x08 - 55001604-04 */	{ "i.MX537@800MHz, Wireless, PHY, Accel",				SZ_512M,	1,		1,		0,		1},
+/* 0x09 - 55001605-02 */	{ "i.MX537@800MHz, PHY, Accel",							SZ_512M,	1,		1,		0,		0},
+/* 0x0a - 5500xxxx-xx */	{ "i.MX537@800MHz, Wireless, PHY, Ext. Eth, Accel",		SZ_512M,	1,		1,		1,		1},
+/* 0x0b - 55001605-03 */	{ "i.MX537@800MHz, PHY, Ext. Eth, Accel",				SZ_1G,		1,		1,		1,		0},
+/* 0x0c - 5500xxxx-xx */	{ "Reserved for future use",							0,			0,		0,		0,		0},
+/* 0x0d - 55001605-05 */	{ "i.MX537@800MHz, PHY, Accel",							SZ_1G,		1,		1,		0,		0},
+/* 0x0e - 5500xxxx-xx */	{ "Reserved for future use",							0,			0,		0,		0,		0},
+/* 0x0f - 5500xxxx-xx */	{ "Reserved for future use",							0,			0,		0,		0,		0},
+};
+
+struct ccwmx53_ident *ccwmx53_id;
+
+/* On these boards, memory information is encoded in the MAC address.
+ * Print device memory, and option info from lookup table.
+ * */
+static int ccwmx53_devices_init(void)
+{
+	u8 hwid[6] = {0};
+	char manloc = 0;
+
+	if ((imx_iim_read(1, 9, hwid, sizeof(hwid)) != sizeof(hwid)) || (hwid[0] < 0x02) || (hwid[0] >= ARRAY_SIZE(ccwmx53_ids)))
+	{
+		printf("Module Variant: Unknown (0x%02x) (0x%02x) (0x%02x) (0x%02x) (0x%02x) (0x%02x)\n", hwid[0],hwid[1],hwid[2],hwid[3],hwid[4],hwid[5]);
+		memset(hwid, 0x00, sizeof(hwid));
+	}
+	
+	ccwmx53_id = &ccwmx53_ids[hwid[0]];
+	printf("Module Variant: %s (0x%02x)\n", ccwmx53_id->id_string, hwid[0]);
+
+	if (hwid[0]) {
+		printf("Module HW Rev : %02x\n", hwid[1] + 1);
+		switch (hwid[2] & 0xc0) {
+		case 0x00:
+			manloc = 'B';
+			break;
+		case 0x40:
+			manloc = 'W';
+			break;
+		case 0x80:
+			manloc = 'S';
+			break;
+		default:
+			manloc = 'N';
+			break;
+		}
+		printf("Module Serial : %c%d\n", manloc, ((hwid[2] & 0x3f) << 24) | (hwid[3] << 16) | (hwid[4] << 8) | hwid[5]);
+		printf("Module RAM    : %dK\n", (ccwmx53_id->mem_sz)/1024);
+
+	} else {
+		return -ENOSYS;
+	}
+	
+	armlinux_set_architecture(MACH_TYPE_CCWMX53);
+
+	return 0;
+}
+device_initcall(ccwmx53_devices_init);
+
+static int ccxmx53_init(void)
+{
+	unsigned char value = 0;
+	struct i2c_adapter *adapter = NULL;
+	struct i2c_client client;
+	int	addr = 0x68;	/* da9053 device address is 0x68 */
+	int	bus = 0;	/* I2C0 bus */
+	
+	if (!of_machine_is_compatible("digi,imx53-ccxmx53"))
+			return 0;
+
+	adapter = i2c_get_adapter(bus);
+	if (adapter)
+	{		
+		client.adapter = adapter;
+		client.addr = addr;
+		/* Enable 3.3V ext regulator. */
+		value = 0xfa;
+		if (i2c_write_reg(&client, 0x19, &value, 1) < 0){
+			printf("Can't set regulator. I2C write failed\n");
+			return -ENOSYS;
+		}	
+	}
+	else
+	{
+		printf("Can't set regulator. No I2C Adapter\n");
+		return -ENOSYS;
+	}
+	
+	armlinux_set_architecture(MACH_TYPE_CCMX53);
+
+	barebox_set_model("Digi CCMX53");
+	barebox_set_hostname("ccxmx53");
+
+	imx53_bbu_internal_nand_register_handler("nand",
+		BBU_HANDLER_FLAG_DEFAULT, SZ_512K);
+		
+	return 0;
+}
+late_initcall(ccxmx53_init);
+
+static int ccxmx53_postcore_init(void)
+{
+	if (!of_machine_is_compatible("digi,imx53-ccxmx53"))
+		return 0;
+
+	imx53_init_lowlevel(800);
+
+	return 0;
+}
+postcore_initcall(ccxmx53_postcore_init);
diff --git a/arch/arm/boards/ccxmx53/flash-header-imx53-ccxmx53_1gib.imxcfg b/arch/arm/boards/ccxmx53/flash-header-imx53-ccxmx53_1gib.imxcfg
new file mode 100644
index 0000000..6f1cab6
--- /dev/null
+++ b/arch/arm/boards/ccxmx53/flash-header-imx53-ccxmx53_1gib.imxcfg
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
+wm 32 0x63fd9000 0xc4110000
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
new file mode 100644
index 0000000..a6d2098
--- /dev/null
+++ b/arch/arm/boards/ccxmx53/lowlevel.c
@@ -0,0 +1,53 @@
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
+#include <common.h>
+#include <mach/esdctl.h>
+#include <mach/generic.h>
+#include <image-metadata.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <asm/sections.h>
+#include <asm/cache.h>
+#include <asm/mmu.h>
+
+BAREBOX_IMD_TAG_STRING(ccxmx53_memsize_SZ_512M, IMD_TYPE_PARAMETER, "memsize=512", 0);
+BAREBOX_IMD_TAG_STRING(ccxmx53_memsize_SZ_1G, IMD_TYPE_PARAMETER, "memsize=1024", 0);
+
+static void __noreturn start_imx53_ccxmx53_common(uint32_t size,
+						void *fdt_blob_fixed_offset)
+{
+	void *fdt;
+
+	imx5_cpu_lowlevel_init();
+	arm_setup_stack(0xf8020000 - 8);
+
+	fdt = fdt_blob_fixed_offset - get_runtime_offset();
+	barebox_arm_entry(0x70000000, size, fdt);
+}
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
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index c87bd93..a03e490 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -18,6 +18,7 @@ pbl-dtb-$(CONFIG_MACH_EMBEST_RIOTBOARD) += imx6s-riotboard.dtb.o
 pbl-dtb-$(CONFIG_MACH_EMBEDSKY_E9) += imx6q-embedsky-e9.dtb.o
 pbl-dtb-$(CONFIG_MACH_FREESCALE_MX51_PDK) += imx51-babbage.dtb.o
 pbl-dtb-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += imx53-qsb.dtb.o imx53-qsrb.dtb.o
+pbl-dtb-$(CONFIG_MACH_CCMX53) += imx53-ccxmx53.dtb.o
 pbl-dtb-$(CONFIG_MACH_FREESCALE_MX53_VMX53) += imx53-voipac-bsb.dtb.o
 pbl-dtb-$(CONFIG_MACH_GK802) += imx6q-gk802.dtb.o
 pbl-dtb-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG) += kirkwood-guruplug-server-plus-bb.dtb.o
diff --git a/arch/arm/dts/imx53-ccxmx53.dts b/arch/arm/dts/imx53-ccxmx53.dts
new file mode 100644
index 0000000..ac6103a
--- /dev/null
+++ b/arch/arm/dts/imx53-ccxmx53.dts
@@ -0,0 +1,15 @@
+/*
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
+#include <arm/imx53-ccxmx53.dts>
+#include "imx53-ccxmx53.dtsi"
+#include "imx53.dtsi"
diff --git a/arch/arm/dts/imx53-ccxmx53.dtsi b/arch/arm/dts/imx53-ccxmx53.dtsi
new file mode 100644
index 0000000..6f76d28
--- /dev/null
+++ b/arch/arm/dts/imx53-ccxmx53.dtsi
@@ -0,0 +1,35 @@
+/ {
+	chosen {
+		linux,stdout-path = &uart1;
+
+		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &nfc, "partname:environment";
+		};
+	};
+};
+
+&nfc {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0x80000>;
+	};
+
+	partition@1 {
+		label = "environment";
+		reg = <0x80000 0x80000>;
+	};
+
+	partition@2 {
+		label = "kernel";
+		reg = <0x100000 0x400000>;
+	};
+
+	partition@3 {
+		label = "rootfs";
+		reg = <0x500000 0x07B00000>;
+	};
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 0a7b517..9eb47df 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -246,6 +246,13 @@ config MACH_FREESCALE_MX51_PDK
 	select DRIVER_SPI_IMX
 	select MFD_MC13XXX
 
+config MACH_CCMX53
+	bool "Digi ConnectCore i.MX53"
+	select ARCH_IMX53
+	help
+	  Say Y here if you are using the Digi ConnectCore ccxmx53 
+	  series SoM
+	  
 config MACH_FREESCALE_MX53_LOCO
 	bool "Freescale i.MX53 LOCO"
 	select ARCH_IMX53
diff --git a/dts/src/arm/imx53-ccxmx53.dts b/dts/src/arm/imx53-ccxmx53.dts
new file mode 100644
index 0000000..85d20c3
--- /dev/null
+++ b/dts/src/arm/imx53-ccxmx53.dts
@@ -0,0 +1,104 @@
+/*
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
+/dts-v1/;
+#include "imx53-ccxmx53.dtsi"
+
+/ {
+	model = "Digi ConnectCore ccxmx53";
+	compatible = "digi,imx53-ccxmx53", "fsl,imx53";
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	imx53-ccxmx53 {
+		pinctrl_hog: hoggrp {
+
+		};
+
+		pinctrl_esdhc2: esdhc2grp {
+			fsl,pins = <
+				MX53_PAD_SD2_CMD__ESDHC2_CMD		0x1d5
+				MX53_PAD_SD2_CLK__ESDHC2_CLK		0x1d5
+				MX53_PAD_SD2_DATA0__ESDHC2_DAT0		0x1d5
+				MX53_PAD_SD2_DATA1__ESDHC2_DAT1		0x1d5
+				MX53_PAD_SD2_DATA2__ESDHC2_DAT2		0x1d5
+				MX53_PAD_SD2_DATA3__ESDHC2_DAT3		0x1d5
+				/* SD2_CD */
+				MX53_PAD_GPIO_4__GPIO1_4			0x1d5
+				/* SD2_WP */
+				MX53_PAD_GPIO_2__GPIO1_2			0x1d5
+			>;
+		};
+
+		pinctrl_esdhc3: esdhc3grp {
+			fsl,pins = <
+				MX53_PAD_PATA_DATA8__ESDHC3_DAT0	0x1d5
+				MX53_PAD_PATA_DATA9__ESDHC3_DAT1	0x1d5
+				MX53_PAD_PATA_DATA10__ESDHC3_DAT2	0x1d5
+				MX53_PAD_PATA_DATA11__ESDHC3_DAT3	0x1d5
+				MX53_PAD_PATA_IORDY__ESDHC3_CLK		0x1d5
+				MX53_PAD_PATA_RESET_B__ESDHC3_CMD	0x1d5
+			>;
+		};
+	};
+};
+
+&i2c2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	clock-frequency = <400000>;
+	status = "okay";
+};
+
+&i2c3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c3>;
+	clock-frequency = <400000>;
+	status = "okay";
+};
+
+&esdhc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_esdhc2>;
+	cd-gpios = <&gpio1 4 GPIO_ACTIVE_HIGH>;
+	wp-gpios = <&gpio1 2 GPIO_ACTIVE_HIGH>;
+	bus-width = <4>;
+	status = "okay";
+};
+
+&esdhc3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_esdhc3>;
+	bus-width = <4>;
+	non-removable;
+	status = "okay";
+};
+
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec>;
+	phy-mode = "rmii";
+	phy-reset-gpios = <&gpio7 6 0>;
+	phy-reset-duration = <10>;
+	status = "okay";
+};
+
+&sata {
+	status = "okay";
+};
+
+&iim {
+	barebox,provide-mac-address = <&fec 1 9>;
+};
diff --git a/dts/src/arm/imx53-ccxmx53.dtsi b/dts/src/arm/imx53-ccxmx53.dtsi
new file mode 100644
index 0000000..c9cb46c
--- /dev/null
+++ b/dts/src/arm/imx53-ccxmx53.dtsi
@@ -0,0 +1,223 @@
+/*
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
+#include "imx53.dtsi"
+
+/ {
+	memory {
+		reg = <0x70000000 0x40000000>;
+	};
+
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	imx53-ccxmx53 {
+		pinctrl_hog: hoggrp {
+
+		};
+		
+		pinctrl_fec: fecgrp {
+			fsl,pins = <
+				MX53_PAD_FEC_MDC__FEC_MDC			0x80000000
+				MX53_PAD_FEC_MDIO__FEC_MDIO			0x80000000
+				MX53_PAD_FEC_REF_CLK__FEC_TX_CLK	0x80000000
+				MX53_PAD_FEC_RX_ER__FEC_RX_ER		0x80000000
+				MX53_PAD_FEC_CRS_DV__FEC_RX_DV		0x80000000
+				MX53_PAD_FEC_RXD1__FEC_RDATA_1		0x80000000
+				MX53_PAD_FEC_RXD0__FEC_RDATA_0		0x80000000
+				MX53_PAD_FEC_TX_EN__FEC_TX_EN		0x80000000
+				MX53_PAD_FEC_TXD1__FEC_TDATA_1		0x80000000
+				MX53_PAD_FEC_TXD0__FEC_TDATA_0		0x80000000
+			>;
+		};
+
+		pinctrl_i2c1: i2c1grp {
+			fsl,pins = <
+				MX53_PAD_CSI0_DAT8__I2C1_SDA		0xc0000000
+				MX53_PAD_CSI0_DAT9__I2C1_SCL		0xc0000000
+			>;
+		};
+
+		pinctrl_i2c2: i2c2grp {
+			fsl,pins = <
+				MX53_PAD_KEY_ROW3__I2C2_SDA			0xc0000000
+				MX53_PAD_KEY_COL3__I2C2_SCL			0xc0000000
+			>;
+		};
+		
+		pinctrl_i2c3: i2c3grp {
+			 fsl,pins = <
+				 MX53_PAD_GPIO_6__I2C3_SDA 			0xc0000000
+				 MX53_PAD_GPIO_5__I2C3_SCL 			0xc0000000
+			 >;
+		};
+
+		pinctrl_uart1: uart1grp {
+			fsl,pins = <
+				MX53_PAD_PATA_DIOW__UART1_TXD_MUX	0x1e4
+				MX53_PAD_PATA_DMACK__UART1_RXD_MUX	0x1e4
+			>;
+		};
+
+		pinctrl_nand: nandgrp {
+			fsl,pins = <
+				MX53_PAD_NANDF_WE_B__EMI_NANDF_WE_B	0x4
+				MX53_PAD_NANDF_RE_B__EMI_NANDF_RE_B	0x4
+				MX53_PAD_NANDF_CLE__EMI_NANDF_CLE	0x4
+				MX53_PAD_NANDF_ALE__EMI_NANDF_ALE	0x4
+				MX53_PAD_NANDF_WP_B__EMI_NANDF_WP_B	0xe0
+				MX53_PAD_NANDF_RB0__EMI_NANDF_RB_0	0xe0
+				MX53_PAD_NANDF_CS0__EMI_NANDF_CS_0	0x4
+				MX53_PAD_PATA_DATA0__EMI_NANDF_D_0	0xa4
+				MX53_PAD_PATA_DATA1__EMI_NANDF_D_1	0xa4
+				MX53_PAD_PATA_DATA2__EMI_NANDF_D_2	0xa4
+				MX53_PAD_PATA_DATA3__EMI_NANDF_D_3	0xa4
+				MX53_PAD_PATA_DATA4__EMI_NANDF_D_4	0xa4
+				MX53_PAD_PATA_DATA5__EMI_NANDF_D_5	0xa4
+				MX53_PAD_PATA_DATA6__EMI_NANDF_D_6	0xa4
+				MX53_PAD_PATA_DATA7__EMI_NANDF_D_7	0xa4
+			>;
+		};
+	};
+};
+
+&i2c1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	clock-frequency = <400000>;
+	status = "okay";
+
+	pmic: dialog@68 {
+		compatible = "dlg,da9053-aa";
+		reg = <0x68>;
+		interrupt-parent = <&gpio7>;
+		interrupts = <11 0x8>; /* low-level active IRQ at GPIO7_11 */
+
+		regulators {
+			buck1_reg: buck1 {
+				regulator-name = "BUCKCORE";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1400000>;
+				regulator-always-on;
+			};
+
+			buck2_reg: buck2 {
+				regulator-name = "BUCKPRO";
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-always-on;
+			};
+
+			buck3_reg: buck3 {
+				regulator-name = "BUCKMEM";
+				regulator-min-microvolt = <1420000>;
+				regulator-max-microvolt = <1580000>;
+				regulator-always-on;
+			};
+
+			buck4_reg: buck4 {
+				regulator-name = "BUCKPERI";
+				regulator-min-microvolt = <2370000>;
+				regulator-max-microvolt = <2630000>;
+				regulator-always-on;
+			};
+
+			ldo1_reg: ldo1 {
+				regulator-name = "ldo1_1v3";
+				regulator-min-microvolt = <1250000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo2_reg: ldo2 {
+				regulator-name = "ldo2_1v3";
+				regulator-min-microvolt = <1250000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-always-on;
+			};
+
+			ldo3_reg: ldo3 {
+				regulator-name = "ldo3_3v3";
+				regulator-min-microvolt = <3250000>;
+				regulator-max-microvolt = <3350000>;
+				regulator-always-on;
+			};
+
+			ldo4_reg: ldo4 {
+				regulator-name = "ldo4_2v775";
+				regulator-min-microvolt = <2770000>;
+				regulator-max-microvolt = <2780000>;
+				regulator-always-on;
+			};
+
+			ldo5_reg: ldo5 {
+				regulator-name = "ldo5_3v3";
+				regulator-min-microvolt = <3250000>;
+				regulator-max-microvolt = <3350000>;
+				regulator-always-on;
+			};
+
+			ldo6_reg: ldo6 {
+				regulator-name = "ldo6_1v3";
+				regulator-min-microvolt = <1250000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-always-on;
+			};
+
+			ldo7_reg: ldo7 {
+				regulator-name = "ldo7_2v75";
+				regulator-min-microvolt = <2700000>;
+				regulator-max-microvolt = <2800000>;
+				regulator-always-on;
+			};
+
+			ldo8_reg: ldo8 {
+				regulator-name = "ldo8_1v8";
+				regulator-min-microvolt = <1750000>;
+				regulator-max-microvolt = <1850000>;
+				regulator-always-on;
+			};
+
+			ldo9_reg: ldo9 {
+				regulator-name = "ldo9_1v5";
+				regulator-min-microvolt = <1450000>;
+				regulator-max-microvolt = <1550000>;
+				regulator-always-on;
+			};
+
+			ldo10_reg: ldo10 {
+				regulator-name = "ldo10_1v3";
+				regulator-min-microvolt = <1250000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-always-on;
+			};
+		};
+	};
+};
+
+&nfc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_nand>;
+	nand-bus-width = <8>;
+	nand-ecc-mode = "hw";
+	status = "okay";
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	status = "okay";
+};
diff --git a/images/Makefile.imx b/images/Makefile.imx
index a09afd6..ad171d8 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -76,6 +76,16 @@ CFG_start_imx53_loco_r.pblx.imximg = $(board)/freescale-mx53-qsb/flash-header-im
 FILE_barebox-freescale-imx53-loco-r.img = start_imx53_loco_r.pblx.imximg
 image-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += barebox-freescale-imx53-loco-r.img
 
+pblx-$(CONFIG_MACH_CCMX53) += start_ccxmx53_512mb
+CFG_start_ccxmx53_512mb.pblx.imximg = $(board)/ccxmx53/flash-header-imx53-ccxmx53_512mb.imxcfg
+FILE_barebox-imx53-ccxmx53_512mb.img = start_ccxmx53_512mb.pblx.imximg
+image-$(CONFIG_MACH_CCMX53) += barebox-imx53-ccxmx53_512mb.img
+
+pblx-$(CONFIG_MACH_CCMX53) += start_ccxmx53_1gib
+CFG_start_ccxmx53_1gib.pblx.imximg = $(board)/ccxmx53/flash-header-imx53-ccxmx53_1gib.imxcfg
+FILE_barebox-imx53-ccxmx53_1gib.img = start_ccxmx53_1gib.pblx.imximg
+image-$(CONFIG_MACH_CCMX53) += barebox-imx53-ccxmx53_1gib.img
+
 pblx-$(CONFIG_MACH_FREESCALE_MX53_VMX53) += start_imx53_vmx53
 CFG_start_imx53_vmx53.pblx.imximg = $(board)/freescale-mx53-vmx53/flash-header-imx53-vmx53.imxcfg
 FILE_barebox-freescale-imx53-vmx53.img = start_imx53_vmx53.pblx.imximg
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
