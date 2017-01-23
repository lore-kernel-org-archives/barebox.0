Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-f67.google.com ([74.125.83.67])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cVXfE-0004iE-Ey
 for barebox@lists.infradead.org; Mon, 23 Jan 2017 05:59:41 +0000
Received: by mail-pg0-f67.google.com with SMTP id 75so12807847pgf.3
 for <barebox@lists.infradead.org>; Sun, 22 Jan 2017 21:59:15 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 22 Jan 2017 21:57:34 -0800
Message-Id: <20170123055735.1277-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] i.MX: vf610: Add support for ZII VF610 Dev Family
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add support for ZII VF610 Dev based designs such as:

    - VF610 Dev, revision B
    - VF610 Dev, revision C
    - CFU1, revision A
    - SPU3, revision A
    - SCU4 AIB, revision C

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---

Sascha, this patch is rebased on 'next' instead of 'master' so that
you won't have to resolve conflicts with RDU2 patches in 'next'. Let
me know if you'd rather have it rebased on 'master'.


 arch/arm/boards/Makefile                           |   1 +
 arch/arm/boards/zii-vf610-dev/Makefile             |   3 +
 arch/arm/boards/zii-vf610-dev/board.c              | 145 +++++++
 .../zii-vf610-dev/defaultenv-zii-vf610-dev/boot/sd |   4 +
 .../defaultenv-zii-vf610-dev/init/automount-sd     |  13 +
 .../defaultenv-zii-vf610-dev/init/choose-dtb       |   4 +
 .../flash-header-zii-vf610-dev.imxcfg              | 243 +++++++++++
 arch/arm/boards/zii-vf610-dev/lowlevel.c           | 132 ++++++
 arch/arm/configs/zii_vf610_dev_defconfig           | 164 ++++++++
 arch/arm/dts/Makefile                              |   7 +
 arch/arm/dts/vf610-zii-cfu1-rev-a.dts              | 208 ++++++++++
 arch/arm/dts/vf610-zii-dev-rev-b.dts               | 431 +++++++++++++++++++
 arch/arm/dts/vf610-zii-dev-rev-c.dts               | 445 ++++++++++++++++++++
 arch/arm/dts/vf610-zii-dev.dtsi                    | 436 ++++++++++++++++++++
 arch/arm/dts/vf610-zii-scu4-aib-rev-c.dts          | 457 +++++++++++++++++++++
 arch/arm/dts/vf610-zii-spu3-rev-a.dts              | 140 +++++++
 arch/arm/mach-imx/Kconfig                          |   5 +
 images/Makefile.imx                                |   5 +
 18 files changed, 2843 insertions(+)
 create mode 100644 arch/arm/boards/zii-vf610-dev/Makefile
 create mode 100644 arch/arm/boards/zii-vf610-dev/board.c
 create mode 100644 arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/boot/sd
 create mode 100644 arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/init/automount-sd
 create mode 100644 arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/init/choose-dtb
 create mode 100644 arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
 create mode 100644 arch/arm/boards/zii-vf610-dev/lowlevel.c
 create mode 100644 arch/arm/configs/zii_vf610_dev_defconfig
 create mode 100644 arch/arm/dts/vf610-zii-cfu1-rev-a.dts
 create mode 100644 arch/arm/dts/vf610-zii-dev-rev-b.dts
 create mode 100644 arch/arm/dts/vf610-zii-dev-rev-c.dts
 create mode 100644 arch/arm/dts/vf610-zii-dev.dtsi
 create mode 100644 arch/arm/dts/vf610-zii-scu4-aib-rev-c.dts
 create mode 100644 arch/arm/dts/vf610-zii-spu3-rev-a.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index fe5c209..cd8f49f 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -142,3 +142,4 @@ obj-$(CONFIG_MACH_VSCOM_BALTOS)			+= vscom-baltos/
 obj-$(CONFIG_MACH_QEMU_VIRT64)			+= qemu-virt64/
 obj-$(CONFIG_MACH_VF610_TWR)			+= freescale-vf610-twr/
 obj-$(CONFIG_MACH_ZII_RDU2)			+= zii-imx6q-rdu2/
+obj-$(CONFIG_MACH_ZII_VF610_DEV)		+= zii-vf610-dev/
diff --git a/arch/arm/boards/zii-vf610-dev/Makefile b/arch/arm/boards/zii-vf610-dev/Makefile
new file mode 100644
index 0000000..1297d81
--- /dev/null
+++ b/arch/arm/boards/zii-vf610-dev/Makefile
@@ -0,0 +1,3 @@
+obj-y += board.o
+lwl-y += lowlevel.o
+bbenv-y += defaultenv-zii-vf610-dev
diff --git a/arch/arm/boards/zii-vf610-dev/board.c b/arch/arm/boards/zii-vf610-dev/board.c
new file mode 100644
index 0000000..32f796a
--- /dev/null
+++ b/arch/arm/boards/zii-vf610-dev/board.c
@@ -0,0 +1,145 @@
+/*
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
+ */
+
+#include <common.h>
+#include <init.h>
+#include <gpio.h>
+#include <environment.h>
+#include <linux/clk.h>
+#include <dt-bindings/clock/vf610-clock.h>
+#include <envfs.h>
+
+struct named_signal {
+	unsigned int gpio;
+	const char *name;
+	int value;
+};
+
+static int expose_signals(const struct named_signal *signals,
+			      size_t signal_num)
+{
+	int ret, i;
+
+	for (i = 0; i < signal_num; i++) {
+		const struct named_signal *signal = &signals[i];
+
+		if (signal->value < 0)
+			ret = gpio_direction_input(signal->gpio);
+		else
+			ret = gpio_direction_output(signal->gpio, signal->value);
+
+		if (ret) {
+			pr_err("Failed to configure \"%s\"\n", signal->name);
+			return ret;
+		}
+
+		export_env_ull(signal->name, signal->gpio);
+	}
+
+	return 0;
+}
+
+static int zii_vf610_cfu1_expose_signals(void)
+{
+	static const struct named_signal signals[] = {
+		{ .gpio = 132, .name = "fim_sd",      .value = -1 },
+		{ .gpio = 118, .name = "fim_tdis",    .value =  0 },
+	};
+
+	if (!of_machine_is_compatible("zii,vf610cfu1-a"))
+		return 0;
+
+	return expose_signals(signals, ARRAY_SIZE(signals));
+}
+late_initcall(zii_vf610_cfu1_expose_signals);
+
+static int zii_vf610_cfu1_spu3_expose_signals(void)
+{
+	static const struct named_signal signals[] = {
+		{ .gpio = 107, .name = "soc_sw_rstn", .value =  1 },
+		{ .gpio =  98, .name = "e6352_intn",  .value = -1 },
+	};
+
+	if (!of_machine_is_compatible("zii,vf610spu3-a") &&
+	    !of_machine_is_compatible("zii,vf610cfu1-a"))
+		return 0;
+
+	return expose_signals(signals, ARRAY_SIZE(signals));
+}
+late_initcall(zii_vf610_cfu1_spu3_expose_signals);
+
+static int zii_vf610_dev_print_clocks(void)
+{
+	int i;
+	struct clk *clk;
+	struct device_node *ccm_np;
+	const unsigned long MHz = 1000000;
+	const char *clk_names[] = { "cpu", "ddr", "bus", "ipg" };
+
+	if (!of_machine_is_compatible("zii,vf610dev"))
+		return 0;
+
+	ccm_np = of_find_compatible_node(NULL, NULL, "fsl,vf610-ccm");
+	if (!ccm_np) {
+		pr_err("Couln't get CCM node\n");
+		return -ENOENT;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(clk_names); i++) {
+		unsigned long rate;
+		const char *name = clk_names[i];
+
+		clk = of_clk_get_by_name(ccm_np, name);
+		if (IS_ERR(clk)) {
+			pr_err("Failed to get '%s' clock (%ld)\n",
+			       name, PTR_ERR(clk));
+			return PTR_ERR(clk);
+		}
+
+		rate = clk_get_rate(clk);
+
+		pr_info("%s clock : %8lu MHz\n", name, rate / MHz);
+	}
+
+	return 0;
+}
+late_initcall(zii_vf610_dev_print_clocks);
+
+static int zii_vf610_dev_set_hostname(void)
+{
+	size_t i;
+	static const struct {
+		const char *compatible;
+		const char *hostname;
+	} boards[] = {
+		{ "zii,vf610spu3-a", "spu3-rev-a" },
+		{ "zii,vf610cfu1-a", "cfu1-rev-a" },
+		{ "zii,vf610dev-b", "dev-rev-b" },
+		{ "zii,vf610dev-c", "dev-rev-c" },
+		{ "zii,vf610scu4-aib-c", "scu4-aib-rev-c" },
+	};
+
+	if (!of_machine_is_compatible("zii,vf610dev"))
+		return 0;
+
+	for (i = 0; i < ARRAY_SIZE(boards); i++) {
+		if (of_machine_is_compatible(boards[i].compatible)) {
+			barebox_set_hostname(boards[i].hostname);
+			break;
+		}
+	}
+
+	defaultenv_append_directory(defaultenv_zii_vf610_dev);
+	return 0;
+}
+late_initcall(zii_vf610_dev_set_hostname);
diff --git a/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/boot/sd b/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/boot/sd
new file mode 100644
index 0000000..cf8eec3
--- /dev/null
+++ b/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/boot/sd
@@ -0,0 +1,4 @@
+#!/bin/sh
+
+global.bootm.image=/mnt/sd/zImage
+global.bootm.oftree=/mnt/sd/${global.bootm.oftree}
diff --git a/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/init/automount-sd b/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/init/automount-sd
new file mode 100644
index 0000000..f44dab3
--- /dev/null
+++ b/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/init/automount-sd
@@ -0,0 +1,13 @@
+#!/bin/sh
+
+if [ x${global.hostname} = xdev-rev-b -o x${global.hostname} = xdev-rev-c ];
+then
+    global sd=0
+else
+    global sd=1
+fi
+
+mkdir -p /mnt/sd
+automount /mnt/sd 'mci${global.sd}.probe=1 && mount /dev/disk${global.sd}.0 /mnt/sd'
+
+exit 0
diff --git a/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/init/choose-dtb b/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/init/choose-dtb
new file mode 100644
index 0000000..41a74c3
--- /dev/null
+++ b/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/init/choose-dtb
@@ -0,0 +1,4 @@
+#!/bin/sh
+
+global.bootm.oftree=vf610-zii-${global.hostname}.dtb
+
diff --git a/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg b/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
new file mode 100644
index 0000000..177f4e8
--- /dev/null
+++ b/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
@@ -0,0 +1,243 @@
+soc vf610
+loadaddr 0x80000000
+dcdofs 0x400
+
+#define VF610_DDR_PAD_CTRL	0x00000180 /* 25 Ohm drive strength */
+#define VF610_DDR_PAD_CTRL_1	0x00010180 /* 25 Ohm drive strength + differential input */
+
+#define DDRMC_PHY_DQ_TIMING	0x00002613
+#define DDRMC_PHY_DQS_TIMING	0x00002615
+#define DDRMC_PHY_CTRL		0x00210000
+#define DDRMC_PHY_MASTER_CTRL	0x0001012a
+#define DDRMC_PHY_SLAVE_CTRL	0x00002000
+#define DDRMC_PHY_OFF		0x00000000
+#define DDRMC_PHY_PROC_PAD_ODT	0x00010101
+
+#define CHECKPOINT(n) wm 32 0x3f000000 n
+
+CHECKPOINT(1)
+
+/* ======================= Clock initialization =======================*/
+
+/*
+ * Ungate all IP block clocks
+ */
+wm 32 0x4006b040 0xffffffff
+wm 32 0x4006b044 0xffffffff
+wm 32 0x4006b048 0xffffffff
+wm 32 0x4006b04c 0xffffffff
+wm 32 0x4006b050 0xffffffff
+wm 32 0x4006b058 0xffffffff
+wm 32 0x4006b05c 0xffffffff
+wm 32 0x4006b060 0xffffffff
+wm 32 0x4006b064 0xffffffff
+wm 32 0x4006b068 0xffffffff
+wm 32 0x4006b06c 0xffffffff
+
+
+/*
+ * Turn PLL2 on
+ */
+wm 32 0x40050030 0x00002001 /* Fout = Fin * 22 */
+
+CHECKPOINT(2)
+
+/*
+ * Wait for PLLs to lock
+ */
+check 32 while_any_bit_clear 0x40050030 0x80000000
+
+
+CHECKPOINT(3)
+
+clear_bits 32 0x4006b008 0x00000040
+set_bits   32 0x4006b008 0x00002000
+
+
+
+/* ======================= DDR IOMUX =======================*/
+
+CHECKPOINT(4)
+
+wm 32 0x40048220 0x00000180
+wm 32 0x40048224 0x00000180
+wm 32 0x40048228 0x00000180
+wm 32 0x4004822c 0x00000180
+wm 32 0x40048230 0x00000180
+wm 32 0x40048234 0x00000180
+wm 32 0x40048238 0x00000180
+wm 32 0x4004823c 0x00000180
+wm 32 0x40048240 0x00000180
+wm 32 0x40048244 0x00000180
+wm 32 0x40048248 0x00000180
+wm 32 0x4004824c 0x00000180
+wm 32 0x40048250 0x00000180
+wm 32 0x40048254 0x00000180
+wm 32 0x40048258 0x00000180
+wm 32 0x4004825c 0x00000180
+wm 32 0x40048260 0x00000180
+wm 32 0x40048264 0x00000180
+wm 32 0x40048268 0x00000180
+wm 32 0x4004826c 0x00000180
+wm 32 0x40048270 0x00000180
+wm 32 0x40048274 0x00000180
+wm 32 0x40048278 0x00000180
+wm 32 0x4004827c 0x00010180
+wm 32 0x40048280 0x00010180
+wm 32 0x40048284 0x00010180
+wm 32 0x40048288 0x00010180
+wm 32 0x4004828c 0x00010180
+wm 32 0x40048290 0x00010180
+wm 32 0x40048294 0x00010180
+wm 32 0x40048298 0x00010180
+wm 32 0x4004829c 0x00010180
+wm 32 0x400482a0 0x00010180
+wm 32 0x400482a4 0x00010180
+wm 32 0x400482a8 0x00010180
+wm 32 0x400482ac 0x00010180
+wm 32 0x400482b0 0x00010180
+wm 32 0x400482b4 0x00010180
+wm 32 0x400482b8 0x00010180
+wm 32 0x400482bc 0x00010180
+wm 32 0x400482c0 0x00010180
+wm 32 0x400482c4 0x00010180
+wm 32 0x400482c8 0x00010180
+wm 32 0x400482cc 0x00000180
+wm 32 0x400482d0 0x00000180
+wm 32 0x400482d4 0x00000180
+wm 32 0x400482d8 0x00000180
+wm 32 0x4004821c 0x00000180
+
+/* ======================= DDR Controller =======================*/
+
+CHECKPOINT(5)
+wm 32 0x400ae000 0x00000600
+wm 32 0x400ae008 0x00000005
+wm 32 0x400ae028 0x00013880
+wm 32 0x400ae02c 0x00030d40
+wm 32 0x400ae030 0x00000506
+wm 32 0x400ae034 0x06040400
+wm 32 0x400ae038 0x1006040e
+wm 32 0x400ae040 0x04040000
+wm 32 0x400ae044 0x006db00c
+wm 32 0x400ae048 0x00000403
+wm 32 0x400ae050 0x01000000
+wm 32 0x400ae054 0x00060001
+wm 32 0x400ae058 0x000c0000
+wm 32 0x400ae05c 0x03000200
+wm 32 0x400ae060 0x00000006
+wm 32 0x400ae064 0x00010000
+wm 32 0x400ae068 0x0c300068
+wm 32 0x400ae070 0x00000000
+wm 32 0x400ae074 0x00000003
+wm 32 0x400ae078 0x0000000a
+wm 32 0x400ae07c 0x006c0200
+wm 32 0x400ae084 0x00010000
+wm 32 0x400ae088 0x00050500
+wm 32 0x400ae098 0x00000000
+wm 32 0x400ae09c 0x04001002
+wm 32 0x400ae0a4 0x00000001
+wm 32 0x400ae0c0 0x00460420
+wm 32 0x400ae0c4 0x00000000
+wm 32 0x400ae0cc 0x00000000
+wm 32 0x400ae0e4 0x02000000
+wm 32 0x400ae108 0x01000200
+wm 32 0x400ae10c 0x00000040
+wm 32 0x400ae114 0x00000200
+wm 32 0x400ae118 0x00000040
+wm 32 0x400ae120 0x00000000
+wm 32 0x400ae124 0x0a010100
+wm 32 0x400ae128 0x01014040
+wm 32 0x400ae12c 0x01010101
+wm 32 0x400ae130 0x03030000
+wm 32 0x400ae134 0x01000101
+wm 32 0x400ae138 0x0700000c
+wm 32 0x400ae13c 0x00000000
+wm 32 0x400ae148 0x10000000
+wm 32 0x400ae15c 0x01000000
+wm 32 0x400ae160 0x00040000
+wm 32 0x400ae164 0x00000002
+wm 32 0x400ae16c 0x00020000
+wm 32 0x400ae180 0x00002819
+wm 32 0x400ae184 0x01000000
+wm 32 0x400ae188 0x00000000
+wm 32 0x400ae18c 0x00000000
+wm 32 0x400ae198 0x00000000
+wm 32 0x400ae1a4 0x00000c00
+wm 32 0x400ae1a8 0x00000000
+wm 32 0x400ae1b8 0x0000000c
+wm 32 0x400ae1c8 0x00000000
+wm 32 0x400ae1cc 0x00000000
+wm 32 0x400ae1d4 0x00000000
+wm 32 0x400ae1d8 0x01010000
+wm 32 0x400ae1e0 0x02020000
+wm 32 0x400ae1e4 0x00000202
+wm 32 0x400ae1e8 0x01010064
+wm 32 0x400ae1ec 0x00010101
+wm 32 0x400ae1f0 0x00000064
+wm 32 0x400ae1f8 0x00000800
+wm 32 0x400ae210 0x00000506
+wm 32 0x400ae224 0x00020000
+wm 32 0x400ae228 0x01000000
+wm 32 0x400ae22c 0x04070303
+wm 32 0x400ae230 0x00000040
+wm 32 0x400ae23c 0x06000080
+wm 32 0x400ae240 0x04070303
+wm 32 0x400ae244 0x00000040
+wm 32 0x400ae248 0x00000040
+wm 32 0x400ae24c 0x000f0000
+wm 32 0x400ae250 0x000f0000
+wm 32 0x400ae25c 0x00000101
+wm 32 0x400ae268 0x682c4000
+wm 32 0x400ae26c 0x00000012
+wm 32 0x400ae278 0x00000006
+wm 32 0x400ae284 0x00010202
+
+/* ======================= DDR PHY =======================*/
+
+CHECKPOINT(6)
+
+wm 32 0x400ae400 0x00002613
+wm 32 0x400ae440 0x00002613
+wm 32 0x400ae480 0x00002613
+wm 32 0x400ae404 0x00002615
+wm 32 0x400ae444 0x00002615
+wm 32 0x400ae408 0x00210000
+wm 32 0x400ae448 0x00210000
+wm 32 0x400ae488 0x00210000
+wm 32 0x400ae40c 0x0001012a
+wm 32 0x400ae44c 0x0001012a
+wm 32 0x400ae48c 0x0001012a
+wm 32 0x400ae410 0x00002000
+wm 32 0x400ae450 0x00002000
+wm 32 0x400ae490 0x00002000
+wm 32 0x400ae4c4 0x00000000
+wm 32 0x400ae4c8 0x00001100
+wm 32 0x400ae4d0 0x00010101
+wm 32 0x400ae000 0x00000601
+
+CHECKPOINT(7)
+
+check 32 while_any_bit_clear 0x400ae140 0x100
+# check 32 while_any_bit_clear 0x400ae42c 0x1
+# check 32 while_any_bit_clear 0x400ae46c 0x1
+# check 32 while_any_bit_clear 0x400ae4ac 0x1
+
+CHECKPOINT(8)
+
+wm 32 0x80000000 0xa5a5a5a5
+check 32 while_any_bit_clear 0x80000000 0xa5a5a5a5
+
+wm 32 0x400ae000 0x00000600
+wm 32 0x400ae000 0x00000601
+
+check 32 while_any_bit_clear 0x400ae140 0x100
+# check 32 while_any_bit_clear 0x400ae42c 0x1
+# check 32 while_any_bit_clear 0x400ae46c 0x1
+# check 32 while_any_bit_clear 0x400ae4ac 0x1
+
+/* wm 32 0x3f040000 0xf0
+ check 32 while_any_bit_clear 0x3f040000 0x0f */
+
+
+CHECKPOINT(9)
diff --git a/arch/arm/boards/zii-vf610-dev/lowlevel.c b/arch/arm/boards/zii-vf610-dev/lowlevel.c
new file mode 100644
index 0000000..4465632
--- /dev/null
+++ b/arch/arm/boards/zii-vf610-dev/lowlevel.c
@@ -0,0 +1,132 @@
+#include <common.h>
+#include <linux/sizes.h>
+#include <mach/generic.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/vf610-regs.h>
+#include <mach/clock-vf610.h>
+#include <mach/iomux-vf610.h>
+#include <debug_ll.h>
+
+#if defined(CONFIG_DEBUG_LL)
+#	if !defined(CONFIG_DEBUG_VF610_UART)
+#		warning "CONFIG_DEBUG_LL is enabled but CONFIG_DEBUG_VF610_UART is not"
+#	else
+#		if CONFIG_DEBUG_IMX_UART_PORT != 1
+#			warning "CONFIG_DEBUG_LL output is not drirected to port 1"
+#		endif
+#	endif
+#endif
+
+static inline void setup_uart(void)
+{
+	void __iomem *iomux = IOMEM(VF610_IOMUXC_BASE_ADDR);
+
+	vf610_ungate_all_peripherals();
+	vf610_setup_pad(iomux, VF610_PAD_PTB10__UART0_TX);
+	vf610_uart_setup_ll();
+
+	putc_ll('>');
+}
+
+enum zii_platform_vf610_type {
+	ZII_PLATFORM_VF610_DEV_REV_B	= 0x01,
+	ZII_PLATFORM_VF610_SCU4_AIB	= 0x02,
+	ZII_PLATFORM_VF610_SPU3		= 0x03,
+	ZII_PLATFORM_VF610_CFU1		= 0x04,
+	ZII_PLATFORM_VF610_DEV_REV_C	= 0x05,
+};
+
+unsigned int get_system_type(void)
+{
+#define GPIO_PDIR 0x10
+
+	u32 pdir;
+	void __iomem *gpio2 = IOMEM(VF610_GPIO2_BASE_ADDR);
+	void __iomem *iomux = IOMEM(VF610_IOMUXC_BASE_ADDR);
+	unsigned low, high;
+
+	/*
+	 * System type is encoded as a 4-bit number specified by the
+	 * following pins (pulled up or down with resistors on the
+	 * board).
+	*/
+	vf610_setup_pad(iomux, VF610_PAD_PTD16__GPIO_78);
+	vf610_setup_pad(iomux, VF610_PAD_PTD17__GPIO_77);
+	vf610_setup_pad(iomux, VF610_PAD_PTD18__GPIO_76);
+	vf610_setup_pad(iomux, VF610_PAD_PTD19__GPIO_75);
+
+	pdir = readl(gpio2 + GPIO_PDIR);
+
+	low  = 75 % 32;
+	high = 78 % 32;
+
+	pdir &= GENMASK(high, low);
+	pdir >>= low;
+
+	return pdir;
+}
+
+extern char __dtb_vf610_zii_dev_rev_b_start[];
+extern char __dtb_vf610_zii_dev_rev_c_start[];
+extern char __dtb_vf610_zii_cfu1_rev_a_start[];
+extern char __dtb_vf610_zii_spu3_rev_a_start[];
+extern char __dtb_vf610_zii_scu4_aib_rev_c_start[];
+
+ENTRY_FUNCTION(start_zii_vf610_dev, r0, r1, r2)
+{
+	void *fdt;
+	const unsigned int system_type = get_system_type();
+
+	vf610_cpu_lowlevel_init();
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		setup_uart();
+
+	switch (system_type) {
+	default:
+		/*
+		 * GCC can be smart enough to, when DEBUG_LL is
+		 * disabled, reduce this switch statement to a LUT
+		 * fetch. Unfortunately here, this early in the boot
+		 * process before any relocation/address fixups could
+		 * happen, the address of that LUT used by the code is
+		 * incorrect and any access to it would result in
+		 * bogus values.
+		 *
+		 * Adding the following barrier() statement seem to
+		 * force the compiler to always translate this block
+		 * to a sequence of consecutive checks and jumps with
+		 * relative fetches, which should work with or without
+		 * relocation/fixups.
+		 */
+		barrier();
+
+		if (IS_ENABLED(CONFIG_DEBUG_LL)) {
+			relocate_to_current_adr();
+			setup_c();
+			puts_ll("*********************************\n");
+			puts_ll("* Unknown system type: ");
+			puthex_ll(system_type);
+			puts_ll("\n* Assuming devboard revision B\n");
+			puts_ll("*********************************\n");
+		}
+	case ZII_PLATFORM_VF610_DEV_REV_B: /* FALLTHROUGH */
+		fdt = __dtb_vf610_zii_dev_rev_b_start;
+		break;
+	case ZII_PLATFORM_VF610_SCU4_AIB:
+		fdt = __dtb_vf610_zii_scu4_aib_rev_c_start;
+		break;
+	case ZII_PLATFORM_VF610_DEV_REV_C:
+		fdt = __dtb_vf610_zii_dev_rev_c_start;
+		break;
+	case ZII_PLATFORM_VF610_CFU1:
+		fdt = __dtb_vf610_zii_cfu1_rev_a_start;
+		break;
+	case ZII_PLATFORM_VF610_SPU3:
+		fdt = __dtb_vf610_zii_spu3_rev_a_start;
+		break;
+	}
+
+	barebox_arm_entry(0x80000000, SZ_512M, fdt - get_runtime_offset());
+}
diff --git a/arch/arm/configs/zii_vf610_dev_defconfig b/arch/arm/configs/zii_vf610_dev_defconfig
new file mode 100644
index 0000000..9744305
--- /dev/null
+++ b/arch/arm/configs/zii_vf610_dev_defconfig
@@ -0,0 +1,164 @@
+CONFIG_ARCH_IMX=y
+CONFIG_IMX_MULTI_BOARDS=y
+CONFIG_MACH_SABRESD=y
+CONFIG_MACH_ZII_VF610_DEV=y
+CONFIG_IMX_IIM=y
+CONFIG_IMX_IIM_FUSE_BLOW=y
+CONFIG_THUMB2_BAREBOX=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_UNWIND=y
+CONFIG_MMU=y
+CONFIG_TEXT_BASE=0x0
+CONFIG_MALLOC_SIZE=0x0
+CONFIG_MALLOC_TLSF=y
+CONFIG_KALLSYMS=y
+CONFIG_RELOCATABLE=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BLSPEC=y
+CONFIG_PARTITION_DISK_EFI=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_RESET_SOURCE=y
+CONFIG_CMD_DMESG=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_IMD=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_ARM_MMUINFO=y
+CONFIG_CMD_REGULATOR=y
+CONFIG_CMD_MMC_EXTCSD=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_GO=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_UBIFORMAT=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_READF=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_MENUTREE=y
+CONFIG_CMD_SPLASH=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_NANDTEST=y
+CONFIG_CMD_SPI=y
+CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_USBGADGET=y
+CONFIG_CMD_WD=y
+CONFIG_CMD_BAREBOX_UPDATE=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
+CONFIG_NET=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_NET_RESOLV=y
+CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_DRIVER_NET_FEC_IMX=y
+CONFIG_AT803X_PHY=y
+CONFIG_MICREL_PHY=y
+CONFIG_NET_USB=y
+CONFIG_NET_USB_ASIX=y
+CONFIG_NET_USB_SMSC95XX=y
+CONFIG_DRIVER_SPI_IMX=y
+CONFIG_I2C=y
+CONFIG_I2C_IMX=y
+CONFIG_MTD=y
+CONFIG_MTD_RAW_DEVICE=y
+CONFIG_MTD_DATAFLASH=y
+CONFIG_MTD_M25P80=y
+CONFIG_MTD_SST25L=y
+CONFIG_NAND=y
+CONFIG_NAND_ALLOW_ERASE_BAD=y
+CONFIG_NAND_IMX=y
+CONFIG_NAND_IMX_BBM=y
+CONFIG_MTD_UBI=y
+CONFIG_MTD_UBI_FASTMAP=y
+CONFIG_DISK_AHCI=y
+CONFIG_DISK_AHCI_IMX=y
+CONFIG_DISK_INTF_PLATFORM_IDE=y
+CONFIG_DISK_PATA_IMX=y
+CONFIG_USB_HOST=y
+CONFIG_USB_IMX_CHIPIDEA=y
+CONFIG_USB_EHCI=y
+CONFIG_USB_ULPI=y
+CONFIG_USB_STORAGE=y
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_DFU=y
+CONFIG_USB_GADGET_SERIAL=y
+CONFIG_USB_GADGET_FASTBOOT=y
+CONFIG_VIDEO=y
+CONFIG_DRIVER_VIDEO_IMX_IPUV3=y
+CONFIG_DRIVER_VIDEO_IMX_IPUV3_LVDS=y
+CONFIG_DRIVER_VIDEO_IMX_IPUV3_HDMI=y
+CONFIG_DRIVER_VIDEO_SIMPLEFB=y
+CONFIG_DRIVER_VIDEO_EDID=y
+CONFIG_MCI=y
+CONFIG_MCI_MMC_BOOT_PARTITIONS=y
+CONFIG_MCI_IMX_ESDHC=y
+CONFIG_MFD_MC13XXX=y
+CONFIG_MFD_MC34704=y
+CONFIG_MFD_MC9SDZ60=y
+CONFIG_MFD_STMPE=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_GPIO_OF=y
+CONFIG_LED_TRIGGERS=y
+CONFIG_EEPROM_AT25=y
+CONFIG_EEPROM_AT24=y
+CONFIG_KEYBOARD_GPIO=y
+CONFIG_WATCHDOG=y
+CONFIG_WATCHDOG_IMX=y
+CONFIG_PWM=y
+CONFIG_PWM_IMX=y
+CONFIG_GPIO_STMPE=y
+CONFIG_GPIO_SX150X=y
+CONFIG_REGULATOR=y
+CONFIG_REGULATOR_FIXED=y
+CONFIG_GENERIC_PHY=y
+CONFIG_USB_NOP_XCEIV=y
+CONFIG_FS_EXT4=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
+CONFIG_FS_UBIFS=y
+CONFIG_FS_UBIFS_COMPRESSION_LZO=y
+CONFIG_PNG=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index f5fb0cd..cfb7b95 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -81,5 +81,12 @@ pbl-dtb-$(CONFIG_MACH_VARISCITE_MX6) += imx6q-var-custom.dtb.o
 pbl-dtb-$(CONFIG_MACH_VSCOM_BALTOS) += am335x-baltos-minimal.dtb.o
 pbl-dtb-$(CONFIG_MACH_VF610_TWR) += vf610-twr.dtb.o
 pbl-dtb-$(CONFIG_MACH_ZII_RDU2) += imx6q-zii-rdu2.dtb.o imx6qp-zii-rdu2.dtb.o
+pbl-dtb-$(CONFIG_MACH_ZII_VF610_DEV) += \
+	vf610-zii-dev-rev-b.dtb.o 	\
+	vf610-zii-dev-rev-c.dtb.o 	\
+	vf610-zii-cfu1-rev-a.dtb.o	\
+	vf610-zii-spu3-rev-a.dtb.o	\
+	vf610-zii-scu4-aib-rev-c.dtb.o
+
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.lzo
diff --git a/arch/arm/dts/vf610-zii-cfu1-rev-a.dts b/arch/arm/dts/vf610-zii-cfu1-rev-a.dts
new file mode 100644
index 0000000..4147d13
--- /dev/null
+++ b/arch/arm/dts/vf610-zii-cfu1-rev-a.dts
@@ -0,0 +1,208 @@
+/*
+ * Copyright (C) 2015, 2016 Zodiac Inflight Innovations
+ *
+ * Based on an original 'vf610-twr.dts' which is Copyright 2015,
+ * Freescale Semiconductor, Inc.
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
+ *     This file is distributed in the hope that it will be useful
+ *     but WITHOUT ANY WARRANTY; without even the implied warranty of
+ *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ *     GNU General Public License for more details.
+ *
+ * Or, alternatively
+ *
+ *  b) Permission is hereby granted, free of charge, to any person
+ *     obtaining a copy of this software and associated documentation
+ *     files (the "Software"), to deal in the Software without
+ *     restriction, including without limitation the rights to use
+ *     copy, modify, merge, publish, distribute, sublicense, and/or
+ *     sell copies of the Software, and to permit persons to whom the
+ *     Software is furnished to do so, subject to the following
+ *     conditions:
+ *
+ *     The above copyright notice and this permission notice shall be
+ *     included in all copies or substantial portions of the Software.
+ *
+ *     THE SOFTWARE IS PROVIDED , WITHOUT WARRANTY OF ANY KIND
+ *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
+ *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
+ *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
+ *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY
+ *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
+ *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
+ *     OTHER DEALINGS IN THE SOFTWARE.
+ */
+
+
+
+/dts-v1/;
+#include "vf610-zii-dev.dtsi"
+
+/ {
+	model = "ZII VF610 CFU1 Switch Management Board";
+	compatible = "zii,vf610cfu1-a", "zii,vf610dev", "fsl,vf610";
+
+	aliases {
+		/delete-property/ serial1;
+		/delete-property/ serial2;
+	};
+
+	gpio-leds {
+                debug {
+                        gpios = <&gpio2 18 GPIO_ACTIVE_HIGH>;
+		};
+
+		fail {
+			label = "zii_fail";
+			gpios = <&gpio3 12 GPIO_ACTIVE_LOW>;
+			default-state = "off";
+			max-brightness = <1>;
+		};
+
+		status {
+			label = "zii_status";
+			gpios = <&gpio3 13 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+			max-brightness = <1>;
+		};
+
+		status_a {
+			label = "zii_status_a";
+			gpios = <&gpio3 14 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+			max-brightness = <1>;
+		};
+
+		status_b {
+			label = "zii_status_b";
+			gpios = <&gpio3 15 GPIO_ACTIVE_HIGH>;
+			default-state = "on";
+			max-brightness = <1>;
+		};
+	};
+};
+
+&dspi1 {
+	bus-num = <1>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_dspi1>;
+	status = "okay";
+
+	m25p128@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "m25p128", "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <50000000>;
+
+		partition@0 {
+			label = "m25p128-0";
+			reg = <0x0 0x01000000>;
+		};
+	};
+};
+
+&esdhc0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_esdhc0>;
+	bus-width = <8>;
+	status = "okay";
+};
+
+&fec0 {
+	status = "disabled";
+};
+
+&i2c0 {
+	clock-frequency = <400000>;
+
+	pca9554@22 {
+		compatible = "nxp,pca9554";
+		reg = <0x22>;
+		gpio-controller;
+		#gpio-cells = <2>;
+	};
+};
+
+/delete-node/ &i2c1;
+/delete-node/ &i2c2;
+/delete-node/ &uart1;
+/delete-node/ &uart2;
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	pinctrl_hog: hoggrp {
+		fsl,pins = <
+			VF610_PAD_PTE2__GPIO_107	0x31c2 /* SOC_SW_RSTn */
+			VF610_PAD_PTB28__GPIO_98	0x31c1 /* E6352_INTn */
+
+			/* PTE27 is wired to signal SD on part CONN
+			* SFF-F4 via net FIM_DS. An active high
+			* on this indicates a received optical
+			* signal
+
+			* SPEED=0b11 HIGH, SRE=0b0, ODE=0b0, HYS=0b0
+			* DSE=0b001 150Ohm, PUS=0b10 100k UP
+			* PKE=0b0, PUE=0b0, OBE=0b0, IBE=0b1
+			*/
+			VF610_PAD_PTE27__GPIO_132       0x3061
+
+			/*
+			* PTE13 is wired to signal T_DIS on part CONN
+			* SFF-F4 via net FIM_TDIS. Setting this high
+			* will disable optical output from the SFF-F4
+
+			* SPEED=0b11 HIGH, SRE=0b0, ODE=0b0, HYS=0b0
+			* DSE=0b001 150Ohm, PUS=0b00 100k DOWN
+			* PKE=0b0, PUE=0b0, OBE=0b1, IBE=0b1
+			* TODO: probably want IBE=0b0
+			*/
+			VF610_PAD_PTE13__GPIO_118       0x3043
+		>;
+	};
+
+	pinctrl_dspi1: dspi1grp {
+		fsl,pins = <
+			VF610_PAD_PTD5__DSPI1_CS0	0x1182
+			VF610_PAD_PTC6__DSPI1_SIN	0x1181
+			VF610_PAD_PTC7__DSPI1_SOUT	0x1182
+			VF610_PAD_PTC8__DSPI1_SCK	0x1182
+		>;
+	};
+
+	pinctrl_esdhc0: esdhc0grp {
+		fsl,pins = <
+			VF610_PAD_PTC0__ESDHC0_CLK	0x31ef
+			VF610_PAD_PTC1__ESDHC0_CMD	0x31ef
+			VF610_PAD_PTC2__ESDHC0_DAT0	0x31ef
+			VF610_PAD_PTC3__ESDHC0_DAT1	0x31ef
+			VF610_PAD_PTC4__ESDHC0_DAT2	0x31ef
+			VF610_PAD_PTC5__ESDHC0_DAT3	0x31ef
+			VF610_PAD_PTD23__ESDHC0_DAT4	0x31ef
+			VF610_PAD_PTD22__ESDHC0_DAT5	0x31ef
+			VF610_PAD_PTD21__ESDHC0_DAT6	0x31ef
+			VF610_PAD_PTD20__ESDHC0_DAT7	0x31ef
+		>;
+	};
+
+	pinctrl_leds_debug: pinctrl-leds-debug {
+		fsl,pins = <
+			VF610_PAD_PTD3__GPIO_82			0x31c2
+			VF610_PAD_PTE3__GPIO_108		0x31c2
+			VF610_PAD_PTE4__GPIO_109		0x31c2
+			VF610_PAD_PTE5__GPIO_110		0x31c2
+			VF610_PAD_PTE6__GPIO_111		0x31c2
+		>;
+	};
+};
diff --git a/arch/arm/dts/vf610-zii-dev-rev-b.dts b/arch/arm/dts/vf610-zii-dev-rev-b.dts
new file mode 100644
index 0000000..bf0a010
--- /dev/null
+++ b/arch/arm/dts/vf610-zii-dev-rev-b.dts
@@ -0,0 +1,431 @@
+/*
+ * Copyright (C) 2015, 2016 Zodiac Inflight Innovations
+ *
+ * Based on an original 'vf610-twr.dts' which is Copyright 2015,
+ * Freescale Semiconductor, Inc.
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
+ *     This file is distributed in the hope that it will be useful
+ *     but WITHOUT ANY WARRANTY; without even the implied warranty of
+ *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ *     GNU General Public License for more details.
+ *
+ * Or, alternatively
+ *
+ *  b) Permission is hereby granted, free of charge, to any person
+ *     obtaining a copy of this software and associated documentation
+ *     files (the "Software"), to deal in the Software without
+ *     restriction, including without limitation the rights to use
+ *     copy, modify, merge, publish, distribute, sublicense, and/or
+ *     sell copies of the Software, and to permit persons to whom the
+ *     Software is furnished to do so, subject to the following
+ *     conditions:
+ *
+ *     The above copyright notice and this permission notice shall be
+ *     included in all copies or substantial portions of the Software.
+ *
+ *     THE SOFTWARE IS PROVIDED , WITHOUT WARRANTY OF ANY KIND
+ *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
+ *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
+ *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
+ *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY
+ *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
+ *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
+ *     OTHER DEALINGS IN THE SOFTWARE.
+ */
+
+/dts-v1/;
+
+#include "vf610-zii-dev.dtsi"
+
+/*
+ * =============================================================
+ *  The following code is shared with Linux kernel and should be
+ *  removed once it trickles down from there eventually
+ * =============================================================
+ */
+
+/ {
+	model = "ZII VF610 Development Board, Rev B";
+	compatible = "zii,vf610dev-b", "zii,vf610dev", "fsl,vf610";
+
+	mdio-mux {
+		compatible = "mdio-mux-gpio";
+		pinctrl-0 = <&pinctrl_mdio_mux>;
+		pinctrl-names = "default";
+		gpios = <&gpio0 8  GPIO_ACTIVE_HIGH
+			 &gpio0 9  GPIO_ACTIVE_HIGH
+			 &gpio0 24 GPIO_ACTIVE_HIGH
+			 &gpio0 25 GPIO_ACTIVE_HIGH>;
+		mdio-parent-bus = <&mdio1>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		mdio_mux_1: mdio@1 {
+			reg = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			switch0: switch0@0 {
+				compatible = "marvell,mv88e6085";
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <0>;
+				dsa,member = <0 0>;
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					port@0 {
+						reg = <0>;
+						label = "lan0";
+					};
+
+					port@1 {
+						reg = <1>;
+						label = "lan1";
+					};
+
+					port@2 {
+						reg = <2>;
+						label = "lan2";
+					};
+
+					switch0port5: port@5 {
+						reg = <5>;
+						label = "dsa";
+						phy-mode = "rgmii-txid";
+						link = <&switch1port6
+							&switch2port9>;
+					};
+
+					port@6 {
+						reg = <6>;
+						label = "cpu";
+						ethernet = <&fec1>;
+						fixed-link {
+							speed = <100>;
+							full-duplex;
+						};
+					};
+				};
+			};
+		};
+
+		mdio_mux_2: mdio@2 {
+			reg = <2>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			switch1: switch1@0 {
+				compatible = "marvell,mv88e6085";
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <0>;
+				dsa,member = <0 1>;
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					port@0 {
+						reg = <0>;
+						label = "lan3";
+						phy-handle = <&switch1phy0>;
+					};
+
+					port@1 {
+						reg = <1>;
+						label = "lan4";
+						phy-handle = <&switch1phy1>;
+					};
+
+					port@2 {
+						reg = <2>;
+						label = "lan5";
+						phy-handle = <&switch1phy2>;
+					};
+
+					switch1port5: port@5 {
+						reg = <5>;
+						label = "dsa";
+						link = <&switch2port9>;
+						phy-mode = "rgmii-txid";
+						fixed-link {
+							speed = <1000>;
+							full-duplex;
+						};
+					};
+
+					switch1port6: port@6 {
+						reg = <6>;
+						label = "dsa";
+						phy-mode = "rgmii-txid";
+						link = <&switch0port5>;
+					};
+				};
+				mdio {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					switch1phy0: switch1phy0@0 {
+						reg = <0>;
+					};
+					switch1phy1: switch1phy0@1 {
+						reg = <1>;
+					};
+					switch1phy2: switch1phy0@2 {
+						reg = <2>;
+					};
+				};
+			};
+		};
+
+		mdio_mux_4: mdio@4 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <4>;
+
+			switch2: switch2@0 {
+				compatible = "marvell,mv88e6085";
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <0>;
+				dsa,member = <0 2>;
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					port@0 {
+						reg = <0>;
+						label = "lan6";
+					};
+
+					port@1 {
+						reg = <1>;
+						label = "lan7";
+					};
+
+					port@2 {
+						reg = <2>;
+						label = "lan8";
+					};
+
+					port@3 {
+						reg = <3>;
+						label = "optical3";
+						fixed-link {
+							speed = <1000>;
+							full-duplex;
+							link-gpios = <&gpio6 2
+							      GPIO_ACTIVE_HIGH>;
+						};
+					};
+
+					port@4 {
+						reg = <4>;
+						label = "optical4";
+						fixed-link {
+							speed = <1000>;
+							full-duplex;
+							link-gpios = <&gpio6 3
+							      GPIO_ACTIVE_HIGH>;
+						};
+					};
+
+					switch2port9: port@9 {
+						reg = <9>;
+						label = "dsa";
+						phy-mode = "rgmii-txid";
+						link = <&switch1port5
+							&switch0port5>;
+						fixed-link {
+							speed = <1000>;
+							full-duplex;
+						};
+					};
+				};
+			};
+		};
+
+		mdio_mux_8: mdio@8 {
+			reg = <8>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+	};
+
+	spi0 {
+		compatible = "spi-gpio";
+		pinctrl-0 = <&pinctrl_gpio_spi0>;
+		pinctrl-names = "default";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		gpio-sck  = <&gpio1 12 GPIO_ACTIVE_HIGH>;
+		gpio-mosi = <&gpio1 11 GPIO_ACTIVE_HIGH>;
+		gpio-miso = <&gpio1 10 GPIO_ACTIVE_HIGH>;
+		cs-gpios  = <&gpio1  9 GPIO_ACTIVE_HIGH
+			     &gpio1  8 GPIO_ACTIVE_HIGH>;
+		num-chipselects = <2>;
+
+		m25p128@0 {
+			compatible = "m25p128", "jedec,spi-nor";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			reg = <0>;
+			spi-max-frequency = <1000000>;
+		};
+
+		at93c46d@1 {
+			compatible = "atmel,at93c46d";
+			pinctrl-0 = <&pinctrl_gpio_e6185_eeprom_sel>;
+			pinctrl-names = "default";
+			#address-cells = <0>;
+			#size-cells = <0>;
+			reg = <1>;
+			spi-max-frequency = <500000>;
+			spi-cs-high;
+			data-size = <16>;
+			select-gpios = <&gpio4 4 GPIO_ACTIVE_HIGH>;
+		};
+	};
+};
+
+&i2c0 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c0>;
+	status = "okay";
+
+	gpio5: pca9554@20 {
+		compatible = "nxp,pca9554";
+		reg = <0x20>;
+		gpio-controller;
+		#gpio-cells = <2>;
+
+	};
+
+	gpio6: pca9554@22 {
+		compatible = "nxp,pca9554";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_pca9554_22>;
+		reg = <0x22>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-parent = <&gpio2>;
+		interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
+	};
+};
+
+&i2c2 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	status = "okay";
+
+	tca9548@70 {
+		compatible = "nxp,pca9548";
+		pinctrl-0 = <&pinctrl_i2c_mux_reset>;
+		pinctrl-names = "default";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <0x70>;
+		reset-gpios = <&gpio3 23 GPIO_ACTIVE_LOW>;
+
+		i2c@0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0>;
+
+			sfp1: at24c04@50 {
+				compatible = "atmel,24c02";
+				reg = <0x50>;
+			};
+		};
+
+		i2c@1 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <1>;
+
+			sfp2: at24c04@50 {
+				compatible = "atmel,24c02";
+				reg = <0x50>;
+			};
+		};
+
+		i2c@2 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <2>;
+
+			sfp3: at24c04@50 {
+				compatible = "atmel,24c02";
+				reg = <0x50>;
+			};
+		};
+
+		i2c@3 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <3>;
+
+			sfp4: at24c04@50 {
+				compatible = "atmel,24c02";
+				reg = <0x50>;
+			};
+		};
+
+		i2c@4 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <4>;
+		};
+	};
+};
+
+
+&iomuxc {
+	pinctrl_gpio_e6185_eeprom_sel: pinctrl-gpio-e6185-eeprom-spi0 {
+		fsl,pins = <
+			VF610_PAD_PTE27__GPIO_132	0x33e2
+		>;
+	};
+
+	pinctrl_gpio_spi0: pinctrl-gpio-spi0 {
+		fsl,pins = <
+			VF610_PAD_PTB22__GPIO_44	0x33e2
+			VF610_PAD_PTB21__GPIO_43	0x33e2
+			VF610_PAD_PTB20__GPIO_42	0x33e1
+			VF610_PAD_PTB19__GPIO_41	0x33e2
+			VF610_PAD_PTB18__GPIO_40	0x33e2
+		>;
+	};
+
+	pinctrl_mdio_mux: pinctrl-mdio-mux {
+		fsl,pins = <
+			VF610_PAD_PTA18__GPIO_8		0x31c2
+			VF610_PAD_PTA19__GPIO_9		0x31c2
+			VF610_PAD_PTB2__GPIO_24		0x31c2
+			VF610_PAD_PTB3__GPIO_25		0x31c2
+		>;
+	};
+
+	pinctrl_pca9554_22: pinctrl-pca95540-22 {
+		fsl,pins = <
+			VF610_PAD_PTB28__GPIO_98	0x219d
+		>;
+	};
+};
+
+/*
+ * =============================================================
+ *                    End of shared part
+ * =============================================================
+*/
diff --git a/arch/arm/dts/vf610-zii-dev-rev-c.dts b/arch/arm/dts/vf610-zii-dev-rev-c.dts
new file mode 100644
index 0000000..5228942
--- /dev/null
+++ b/arch/arm/dts/vf610-zii-dev-rev-c.dts
@@ -0,0 +1,445 @@
+/*
+ * Copyright (C) 2015, 2016 Zodiac Inflight Innovations
+ *
+ * Based on an original 'vf610-twr.dts' which is Copyright 2015,
+ * Freescale Semiconductor, Inc.
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
+ *     This file is distributed in the hope that it will be useful
+ *     but WITHOUT ANY WARRANTY; without even the implied warranty of
+ *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ *     GNU General Public License for more details.
+ *
+ * Or, alternatively
+ *
+ *  b) Permission is hereby granted, free of charge, to any person
+ *     obtaining a copy of this software and associated documentation
+ *     files (the "Software"), to deal in the Software without
+ *     restriction, including without limitation the rights to use
+ *     copy, modify, merge, publish, distribute, sublicense, and/or
+ *     sell copies of the Software, and to permit persons to whom the
+ *     Software is furnished to do so, subject to the following
+ *     conditions:
+ *
+ *     The above copyright notice and this permission notice shall be
+ *     included in all copies or substantial portions of the Software.
+ *
+ *     THE SOFTWARE IS PROVIDED , WITHOUT WARRANTY OF ANY KIND
+ *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
+ *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
+ *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
+ *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY
+ *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
+ *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
+ *     OTHER DEALINGS IN THE SOFTWARE.
+ */
+
+/dts-v1/;
+
+#include "vf610-zii-dev.dtsi"
+
+/*
+ * =============================================================
+ *  The following code is shared with Linux kernel and should be
+ *  removed once it trickles down from there eventually
+ * =============================================================
+ */
+
+/ {
+	model = "ZII VF610 Development Board, Rev C";
+	compatible = "zii,vf610dev-c", "zii,vf610dev", "fsl,vf610";
+
+	mdio-mux {
+		compatible = "mdio-mux-gpio";
+		pinctrl-0 = <&pinctrl_mdio_mux>;
+		pinctrl-names = "default";
+		gpios = <&gpio0 8  GPIO_ACTIVE_HIGH
+			 &gpio0 9  GPIO_ACTIVE_HIGH
+			 &gpio0 25 GPIO_ACTIVE_HIGH>;
+		mdio-parent-bus = <&mdio1>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		mdio_mux_1: mdio@1 {
+			reg = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			switch0: switch0@0 {
+				compatible = "marvell,mv88e6190";
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <0>;
+				dsa,member = <0 0>;
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+						label = "cpu";
+						ethernet = <&fec1>;
+						fixed-link {
+							speed = <100>;
+							full-duplex;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+						label = "lan1";
+					};
+
+					port@2 {
+						reg = <2>;
+						label = "lan2";
+					};
+
+					port@3 {
+						reg = <3>;
+						label = "lan3";
+					};
+
+					port@4 {
+						reg = <4>;
+						label = "lan4";
+					};
+
+					switch0port10: port@10 {
+						reg = <10>;
+						label = "dsa";
+						phy-mode = "xgmii";
+						link = <&switch1port10>;
+					};
+				};
+			};
+		};
+
+		mdio_mux_2: mdio@2 {
+			reg = <2>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			switch1: switch1@0 {
+				compatible = "marvell,mv88e6190";
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <0>;
+				dsa,member = <0 1>;
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@1 {
+						reg = <1>;
+						label = "lan5";
+					};
+
+					port@2 {
+						reg = <2>;
+						label = "lan6";
+					};
+
+					port@3 {
+						reg = <3>;
+						label = "lan7";
+					};
+
+					port@4 {
+						reg = <4>;
+						label = "lan8";
+					};
+
+
+					switch1port10: port@10 {
+						reg = <10>;
+						label = "dsa";
+						phy-mode = "xgmii";
+						link = <&switch0port10>;
+					};
+				};
+			};
+		};
+
+		mdio_mux_4: mdio@4 {
+			reg = <4>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+	};
+};
+
+&dspi0 {
+	bus-num = <0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_dspi0>;
+	status = "okay";
+	spi-num-chipselects = <2>;
+
+	m25p128@0 {
+		compatible = "m25p128", "jedec,spi-nor";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		reg = <0>;
+		spi-max-frequency = <50000000>;
+	};
+
+	atzb-rf-233@1 {
+		compatible = "atmel,at86rf233";
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctr_atzb_rf_233>;
+
+		spi-max-frequency = <7500000>;
+		reg = <1>;
+		interrupts = <4 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-parent = <&gpio3>;
+		xtal-trim = /bits/ 8 <0x06>;
+
+		sleep-gpio = <&gpio0 24 GPIO_ACTIVE_HIGH>;
+		reset-gpio = <&gpio6 10 GPIO_ACTIVE_HIGH>;
+
+		fsl,spi-cs-sck-delay = <180>;
+		fsl,spi-sck-cs-delay = <250>;
+	};
+};
+
+&dspi2 {
+	bus-num = <2>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_dspi2>;
+	status = "okay";
+	spi-num-chipselects = <2>;
+};
+
+&i2c0 {
+	/*
+	 * U712
+	 *
+	 * Exposed signals:
+	 *    P1 - WE2_CMD
+	 *    P2 - WE2_CLK
+	 */
+	gpio5: pca9557@18 {
+		compatible = "nxp,pca9557";
+		reg = <0x18>;
+		gpio-controller;
+		#gpio-cells = <2>;
+	};
+
+	/*
+	 * U121
+	 *
+	 * Exposed signals:
+	 *    I/O0  - ENET_SWR_EN
+	 *    I/O1  - ESW1_RESETn
+	 *    I/O2  - ARINC_RESET
+	 *    I/O3  - DD1_IO_RESET
+	 *    I/O4  - ESW2_RESETn
+	 *    I/O5  - ESW3_RESETn
+	 *    I/O6  - ESW4_RESETn
+	 *    I/O8  - TP909
+	 *    I/O9  - FEM_SEL
+	 *    I/O10 - WIFI_RESETn
+	 *    I/O11 - PHY_RSTn
+	 *    I/O12 - OPT1_SD
+	 *    I/O13 - OPT2_SD
+	 *    I/O14 - OPT1_TX_DIS
+	 *    I/O15 - OPT2_TX_DIS
+	 */
+	gpio6: sx1503@20 {
+		compatible = "semtech,sx1503q";
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_sx1503_20>;
+		#gpio-cells = <2>;
+		#interrupt-cells = <2>;
+		reg = <0x20>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <23 IRQ_TYPE_EDGE_FALLING>;
+		gpio-controller;
+		interrupt-controller;
+
+		enet_swr_en {
+			gpio-hog;
+			gpios = <0 GPIO_ACTIVE_HIGH>;
+			output-high;
+			line-name = "enet-swr-en";
+		};
+	};
+
+	/*
+	 * U715
+	 *
+	 * Exposed signals:
+	 *     IO0 - WE1_CLK
+	 *     IO1 - WE1_CMD
+	 */
+	gpio7: pca9554@22 {
+		compatible = "nxp,pca9554";
+		reg = <0x22>;
+		gpio-controller;
+		#gpio-cells = <2>;
+
+	};
+};
+
+&i2c1 {
+	at24mac602@00 {
+		compatible = "atmel,24c02";
+		reg = <0x50>;
+		read-only;
+	};
+};
+
+&i2c2 {
+	tca9548@70 {
+		compatible = "nxp,pca9548";
+		pinctrl-0 = <&pinctrl_i2c_mux_reset>;
+		pinctrl-names = "default";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <0x70>;
+		reset-gpios = <&gpio3 23 GPIO_ACTIVE_LOW>;
+
+		i2c@0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0>;
+		};
+
+		i2c@1 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <1>;
+
+			sfp2: at24c04@50 {
+				compatible = "atmel,24c02";
+				reg = <0x50>;
+			};
+		};
+
+		i2c@2 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <2>;
+
+			sfp3: at24c04@50 {
+				compatible = "atmel,24c02";
+				reg = <0x50>;
+			};
+		};
+
+		i2c@3 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <3>;
+		};
+	};
+};
+
+&uart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart3>;
+	status = "okay";
+};
+
+&gpio0 {
+	eth0_intrp {
+		gpio-hog;
+		gpios = <23 GPIO_ACTIVE_HIGH>;
+		input;
+		line-name = "sx1503-irq";
+	};
+};
+
+&gpio3 {
+	eth0_intrp {
+		gpio-hog;
+		gpios = <2 GPIO_ACTIVE_HIGH>;
+		input;
+		line-name = "eth0-intrp";
+	};
+};
+
+&fec0 {
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "okay";
+
+		ethernet-phy@0 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+
+			pinctrl-names = "default";
+			pinctrl-0 = <&pinctrl_fec0_phy_int>;
+
+			interrupt-parent = <&gpio3>;
+			interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
+			reg = <0>;
+		};
+	};
+};
+
+&iomuxc {
+	pinctr_atzb_rf_233: pinctrl-atzb-rf-233 {
+		fsl,pins = <
+			VF610_PAD_PTB2__GPIO_24		0x31c2
+			VF610_PAD_PTE27__GPIO_132	0x33e2
+		>;
+	};
+
+
+	pinctrl_sx1503_20: pinctrl-sx1503-20 {
+		fsl,pins = <
+			VF610_PAD_PTB1__GPIO_23		0x219d
+		>;
+	};
+
+	pinctrl_uart3: uart3grp {
+		fsl,pins = <
+			VF610_PAD_PTA20__UART3_TX	0x21a2
+			VF610_PAD_PTA21__UART3_RX	0x21a1
+		>;
+	};
+
+	pinctrl_mdio_mux: pinctrl-mdio-mux {
+		fsl,pins = <
+			VF610_PAD_PTA18__GPIO_8		0x31c2
+			VF610_PAD_PTA19__GPIO_9		0x31c2
+			VF610_PAD_PTB3__GPIO_25		0x31c2
+		>;
+	};
+
+	pinctrl_fec0_phy_int: pinctrl-fec0-phy-int {
+		fsl,pins = <
+			VF610_PAD_PTB28__GPIO_98	0x219d
+		>;
+	};
+};
+
+/*
+ * =============================================================
+ *                    End of shared part
+ * =============================================================
+ */
+
+
+&dspi0 {
+	m25p128@0 {
+		partition@0 {
+			label = "bootloader";
+			reg = <0x0 0x100000>;
+		};
+	};
+};
diff --git a/arch/arm/dts/vf610-zii-dev.dtsi b/arch/arm/dts/vf610-zii-dev.dtsi
new file mode 100644
index 0000000..dae077c
--- /dev/null
+++ b/arch/arm/dts/vf610-zii-dev.dtsi
@@ -0,0 +1,436 @@
+/*
+ * Copyright (C) 2015, 2016 Zodiac Inflight Innovations
+ *
+ * Based on an original 'vf610-twr.dts' which is Copyright 2015,
+ * Freescale Semiconductor, Inc.
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
+ *     This file is distributed in the hope that it will be useful
+ *     but WITHOUT ANY WARRANTY; without even the implied warranty of
+ *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ *     GNU General Public License for more details.
+ *
+ * Or, alternatively
+ *
+ *  b) Permission is hereby granted, free of charge, to any person
+ *     obtaining a copy of this software and associated documentation
+ *     files (the "Software"), to deal in the Software without
+ *     restriction, including without limitation the rights to use
+n *     copy, modify, merge, publish, distribute, sublicense, and/or
+ *     sell copies of the Software, and to permit persons to whom the
+ *     Software is furnished to do so, subject to the following
+ *     conditions:
+ *
+ *     The above copyright notice and this permission notice shall be
+ *     included in all copies or substantial portions of the Software.
+ *
+ *     THE SOFTWARE IS PROVIDED , WITHOUT WARRANTY OF ANY KIND
+ *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
+ *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
+ *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
+ *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY
+ *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
+ *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
+ *     OTHER DEALINGS IN THE SOFTWARE.
+ */
+
+
+/*
+ * =============================================================
+ *  The following code is shared with Linux kernel and should be
+ *  removed once it trickles down from there eventually
+ * =============================================================
+ */
+
+#include <arm/vf610.dtsi>
+
+/ {
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	memory {
+		reg = <0x80000000 0x20000000>;
+	};
+
+	gpio-leds {
+		compatible = "gpio-leds";
+		pinctrl-0 = <&pinctrl_leds_debug>;
+		pinctrl-names = "default";
+
+		debug {
+			label = "zii:green:debug1";
+			gpios = <&gpio2 10 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+
+	reg_vcc_3v3_mcu: regulator-vcc-3v3-mcu {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_3v3_mcu";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+
+	usb0_vbus: regulator-usb0-vbus {
+		compatible = "regulator-fixed";
+		pinctrl-0 = <&pinctrl_usb_vbus>;
+		regulator-name = "usb_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+		regulator-always-on;
+		regulator-boot-on;
+		gpio = <&gpio0 6 0>;
+	};
+};
+
+&adc0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_adc0_ad5>;
+	vref-supply = <&reg_vcc_3v3_mcu>;
+	status = "okay";
+};
+
+&edma0 {
+	status = "okay";
+};
+
+&esdhc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_esdhc1>;
+	bus-width = <4>;
+	status = "okay";
+};
+
+&fec0 {
+	phy-mode = "rmii";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec0>;
+	status = "okay";
+};
+
+&fec1 {
+	phy-mode = "rmii";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec1>;
+	status = "okay";
+
+	fixed-link {
+		   speed = <100>;
+		   full-duplex;
+	};
+
+	mdio1: mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "okay";
+	};
+};
+
+&i2c0 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c0>;
+	pinctrl-1 = <&pinctrl_i2c0_gpio>;
+	scl-gpios = <&gpio1 4 GPIO_ACTIVE_HIGH>;
+	sda-gpios = <&gpio1 5 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+
+	lm75@48 {
+		compatible = "national,lm75";
+		reg = <0x48>;
+	};
+
+	at24c04@50 {
+		compatible = "atmel,24c04";
+		reg = <0x50>;
+	};
+
+	at24c04@52 {
+		compatible = "atmel,24c04";
+		reg = <0x52>;
+	};
+
+	ds1682@6b {
+		compatible = "dallas,ds1682";
+		reg = <0x6b>;
+	};
+};
+
+&i2c1 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+};
+
+&i2c2 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	status = "okay";
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart0>;
+	status = "okay";
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	status = "okay";
+};
+
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	status = "okay";
+};
+
+&usbdev0 {
+	disable-over-current;
+	vbus-supply = <&usb0_vbus>;
+	dr_mode = "host";
+	status = "okay";
+};
+
+&usbh1 {
+	disable-over-current;
+	status = "okay";
+};
+
+&usbmisc0 {
+	status = "okay";
+};
+
+&usbmisc1 {
+	status = "okay";
+};
+
+&usbphy0 {
+	status = "okay";
+};
+
+&usbphy1 {
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl_adc0_ad5: adc0ad5grp {
+		fsl,pins = <
+			VF610_PAD_PTC30__ADC0_SE5	0x00a1
+		>;
+	};
+
+	pinctrl_dspi0: dspi0grp {
+		fsl,pins = <
+			VF610_PAD_PTB18__DSPI0_CS1	0x1182
+			VF610_PAD_PTB19__DSPI0_CS0	0x1182
+			VF610_PAD_PTB20__DSPI0_SIN	0x1181
+			VF610_PAD_PTB21__DSPI0_SOUT	0x1182
+			VF610_PAD_PTB22__DSPI0_SCK	0x1182
+		>;
+	};
+
+	pinctrl_dspi2: dspi2grp {
+		fsl,pins = <
+			VF610_PAD_PTD31__DSPI2_CS1	0x1182
+			VF610_PAD_PTD30__DSPI2_CS0	0x1182
+			VF610_PAD_PTD29__DSPI2_SIN	0x1181
+			VF610_PAD_PTD28__DSPI2_SOUT	0x1182
+			VF610_PAD_PTD27__DSPI2_SCK	0x1182
+		>;
+	};
+
+	pinctrl_esdhc1: esdhc1grp {
+		fsl,pins = <
+			VF610_PAD_PTA24__ESDHC1_CLK	0x31ef
+			VF610_PAD_PTA25__ESDHC1_CMD	0x31ef
+			VF610_PAD_PTA26__ESDHC1_DAT0	0x31ef
+			VF610_PAD_PTA27__ESDHC1_DAT1	0x31ef
+			VF610_PAD_PTA28__ESDHC1_DATA2	0x31ef
+			VF610_PAD_PTA29__ESDHC1_DAT3	0x31ef
+			VF610_PAD_PTA7__GPIO_134	0x219d
+		>;
+	};
+
+	pinctrl_fec0: fec0grp {
+		fsl,pins = <
+			VF610_PAD_PTC0__ENET_RMII0_MDC	0x30d2
+			VF610_PAD_PTC1__ENET_RMII0_MDIO	0x30d3
+			VF610_PAD_PTC2__ENET_RMII0_CRS	0x30d1
+			VF610_PAD_PTC3__ENET_RMII0_RXD1	0x30d1
+			VF610_PAD_PTC4__ENET_RMII0_RXD0	0x30d1
+			VF610_PAD_PTC5__ENET_RMII0_RXER	0x30d1
+			VF610_PAD_PTC6__ENET_RMII0_TXD1	0x30d2
+			VF610_PAD_PTC7__ENET_RMII0_TXD0	0x30d2
+			VF610_PAD_PTC8__ENET_RMII0_TXEN	0x30d2
+		>;
+	};
+
+	pinctrl_fec1: fec1grp {
+		fsl,pins = <
+			VF610_PAD_PTA6__RMII_CLKIN		0x30d1
+			VF610_PAD_PTC9__ENET_RMII1_MDC		0x30d2
+			VF610_PAD_PTC10__ENET_RMII1_MDIO	0x30d3
+			VF610_PAD_PTC11__ENET_RMII1_CRS		0x30d1
+			VF610_PAD_PTC12__ENET_RMII1_RXD1	0x30d1
+			VF610_PAD_PTC13__ENET_RMII1_RXD0	0x30d1
+			VF610_PAD_PTC14__ENET_RMII1_RXER	0x30d1
+			VF610_PAD_PTC15__ENET_RMII1_TXD1	0x30d2
+			VF610_PAD_PTC16__ENET_RMII1_TXD0	0x30d2
+			VF610_PAD_PTC17__ENET_RMII1_TXEN	0x30d2
+		>;
+	};
+
+	pinctrl_gpio_spi0: pinctrl-gpio-spi0 {
+		fsl,pins = <
+			VF610_PAD_PTB22__GPIO_44	0x33e2
+			VF610_PAD_PTB21__GPIO_43	0x33e2
+			VF610_PAD_PTB20__GPIO_42	0x33e1
+			VF610_PAD_PTB19__GPIO_41	0x33e2
+			VF610_PAD_PTB18__GPIO_40	0x33e2
+		>;
+	};
+
+	pinctrl_i2c_mux_reset: pinctrl-i2c-mux-reset {
+		fsl,pins = <
+			 VF610_PAD_PTE14__GPIO_119	0x31c2
+			 >;
+	};
+
+	pinctrl_i2c0: i2c0grp {
+		fsl,pins = <
+			VF610_PAD_PTB14__I2C0_SCL	0x37ff
+			VF610_PAD_PTB15__I2C0_SDA	0x37ff
+		>;
+	};
+
+	pinctrl_i2c0_gpio: i2c0grp-gpio {
+		fsl,pins = <
+			VF610_PAD_PTB14__GPIO_36	0x31c2
+			VF610_PAD_PTB15__GPIO_37	0x31c2
+		>;
+	};
+
+
+	pinctrl_i2c1: i2c1grp {
+		fsl,pins = <
+			VF610_PAD_PTB16__I2C1_SCL	0x37ff
+			VF610_PAD_PTB17__I2C1_SDA	0x37ff
+		>;
+	};
+
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins = <
+			VF610_PAD_PTA22__I2C2_SCL	0x37ff
+			VF610_PAD_PTA23__I2C2_SDA	0x37ff
+		>;
+	};
+
+	pinctrl_leds_debug: pinctrl-leds-debug {
+		fsl,pins = <
+			 VF610_PAD_PTD20__GPIO_74	0x31c2
+			 >;
+	};
+
+	pinctrl_qspi0: qspi0grp {
+		fsl,pins = <
+			VF610_PAD_PTD7__QSPI0_B_QSCK	0x31c3
+			VF610_PAD_PTD8__QSPI0_B_CS0	0x31ff
+			VF610_PAD_PTD9__QSPI0_B_DATA3	0x31c3
+			VF610_PAD_PTD10__QSPI0_B_DATA2	0x31c3
+			VF610_PAD_PTD11__QSPI0_B_DATA1	0x31c3
+			VF610_PAD_PTD12__QSPI0_B_DATA0	0x31c3
+		>;
+	};
+
+	pinctrl_uart0: uart0grp {
+		fsl,pins = <
+			VF610_PAD_PTB10__UART0_TX	0x21a2
+			VF610_PAD_PTB11__UART0_RX	0x21a1
+		>;
+	};
+
+	pinctrl_uart1: uart1grp {
+		fsl,pins = <
+			VF610_PAD_PTB23__UART1_TX	0x21a2
+			VF610_PAD_PTB24__UART1_RX	0x21a1
+		>;
+	};
+
+	pinctrl_uart2: uart2grp {
+		fsl,pins = <
+			VF610_PAD_PTD0__UART2_TX	0x21a2
+			VF610_PAD_PTD1__UART2_RX	0x21a1
+		>;
+	};
+
+	pinctrl_usb_vbus: pinctrl-usb-vbus {
+		fsl,pins = <
+			VF610_PAD_PTA16__GPIO_6	0x31c2
+		>;
+	};
+
+	pinctrl_usb0_host: usb0-host-grp {
+		fsl,pins = <
+			VF610_PAD_PTD6__GPIO_85		0x0062
+		>;
+	};
+};
+
+/*
+ * =============================================================
+ *                    End of shared part
+ * =============================================================
+ */
+
+/ {
+	audio_ext: mclk_osc {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <0>;
+	};
+
+	enet_ext: eth_osc {
+		compatible = "fixed-clock";
+		clock-output-names = "enet_ext";
+		#clock-cells = <0>;
+		clock-frequency = <50000000>;
+	};
+
+	anaclk1: anaclk1 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <0>;
+	};
+};
+
+&clks {
+	clocks = <&sxosc>, <&fxosc>, <&enet_ext>, <&audio_ext>, <&anaclk1>,
+	         <&clks VF610_CLK_SYS_BUS>, <&clks VF610_CLK_PLATFORM_BUS>,
+	         <&clks VF610_CLK_IPG_BUS>, <&clks VF610_CLK_DDRMC>;
+	clock-names = "sxosc", "fxosc", "enet_ext", "audio_ext", "anaclk1",
+	              "cpu", "bus", "ipg", "ddr";
+
+	assigned-clocks = <&clks VF610_CLK_ENET_SEL>,
+			  <&clks VF610_CLK_ENET_TS_SEL>;
+	assigned-clock-parents = <&clks VF610_CLK_ENET_EXT>,
+				 <&clks VF610_CLK_ENET_EXT>;
+};
+
+&ocotp {
+	barebox,provide-mac-address = <&fec0 0x620>,
+				      <&fec1 0x640>;
+};
diff --git a/arch/arm/dts/vf610-zii-scu4-aib-rev-c.dts b/arch/arm/dts/vf610-zii-scu4-aib-rev-c.dts
new file mode 100644
index 0000000..d10f460
--- /dev/null
+++ b/arch/arm/dts/vf610-zii-scu4-aib-rev-c.dts
@@ -0,0 +1,457 @@
+/*
+ * Copyright (C) 2015, 2016 Zodiac Inflight Innovations
+ *
+ * Based on an original 'vf610-twr.dts' which is Copyright 2015,
+ * Freescale Semiconductor, Inc.
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
+ *     This file is distributed in the hope that it will be useful
+ *     but WITHOUT ANY WARRANTY; without even the implied warranty of
+ *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ *     GNU General Public License for more details.
+ *
+ * Or, alternatively
+ *
+ *  b) Permission is hereby granted, free of charge, to any person
+ *     obtaining a copy of this software and associated documentation
+ *     files (the "Software"), to deal in the Software without
+ *     restriction, including without limitation the rights to use
+ *     copy, modify, merge, publish, distribute, sublicense, and/or
+ *     sell copies of the Software, and to permit persons to whom the
+ *     Software is furnished to do so, subject to the following
+ *     conditions:
+ *
+ *     The above copyright notice and this permission notice shall be
+ *     included in all copies or substantial portions of the Software.
+ *
+ *     THE SOFTWARE IS PROVIDED , WITHOUT WARRANTY OF ANY KIND
+ *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
+ *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
+ *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
+ *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY
+ *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
+ *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
+ *     OTHER DEALINGS IN THE SOFTWARE.
+ */
+
+/dts-v1/;
+
+#include "vf610-zii-dev.dtsi"
+
+/ {
+	model = "ZII VF610 SCU4 AIB, Rev C";
+	compatible = "zii,vf610scu4-aib-c", "zii,vf610dev", "fsl,vf610";
+
+	chosen {
+		bootargs = "console=ttyLP0,115200n8";
+	};
+
+	gpio-leds {
+		debug {
+			gpios = <&gpio3 0 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
+	mdio-mux {
+		compatible = "mdio-mux-gpio";
+		pinctrl-0 = <&pinctrl_mdio_mux>;
+		pinctrl-names = "default";
+		gpios = <&gpio4 4  GPIO_ACTIVE_HIGH
+			 &gpio4 5  GPIO_ACTIVE_HIGH
+			 &gpio3 30 GPIO_ACTIVE_HIGH
+			 &gpio3 31 GPIO_ACTIVE_HIGH>;
+		mdio-parent-bus = <&mdio1>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		mdio_mux_1: mdio@1 {
+			reg = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		mdio_mux_2: mdio@2 {
+			reg = <2>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		mdio_mux_4: mdio@4 {
+			reg = <4>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		mdio_mux_8: mdio@8 {
+			reg = <8>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+	};
+
+	spi2 {
+		compatible = "spi-gpio";
+		pinctrl-0 = <&pinctrl_dspi2>;
+		pinctrl-names = "default";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		gpio-sck  = <&gpio2 3 GPIO_ACTIVE_HIGH>;
+		gpio-mosi = <&gpio2 2 GPIO_ACTIVE_HIGH>;
+		gpio-miso = <&gpio2 1 GPIO_ACTIVE_HIGH>;
+		cs-gpios  = <&gpio2 0 GPIO_ACTIVE_HIGH>;
+		num-chipselects = <1>;
+
+		at93c46d@0 {
+			compatible = "atmel,at93c46d";
+			#address-cells = <0>;
+			#size-cells = <0>;
+			reg = <0>;
+			spi-max-frequency = <500000>;
+			spi-cs-high;
+			data-size = <16>;
+			select-gpios = <&gpio2 4 GPIO_ACTIVE_HIGH>;
+		};
+	};
+};
+
+&dspi0 {
+	pinctrl-0 = <&pinctrl_dspi0>, <&pinctrl_dspi0_cs_4_5>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&dspi1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_dspi1>;
+	status = "okay";
+
+	m25p128@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "m25p128", "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <50000000>;
+
+		partition@0 {
+			label = "m25p128-0";
+			reg = <0x0 0x01000000>;
+		};
+	};
+
+	m25p128@1 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "m25p128", "jedec,spi-nor";
+		reg = <1>;
+		spi-max-frequency = <50000000>;
+
+		partition@0 {
+			label = "m25p128-1";
+			reg = <0x0 0x01000000>;
+		};
+	};
+};
+
+&esdhc0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_esdhc0>;
+	bus-width = <8>;
+	status = "okay";
+};
+
+&fec0 {
+	status = "disabled";
+};
+
+&i2c0 {
+	/* Reset Signals */
+	gpio5: pca9505@20 {
+		compatible = "nxp,pca9554";
+		reg = <0x20>;
+		gpio-controller;
+		#gpio-cells = <2>;
+	};
+
+	/* Board Revision */
+	gpio6: pca9505@22 {
+		compatible = "nxp,pca9554";
+		reg = <0x22>;
+		gpio-controller;
+		#gpio-cells = <2>;
+	};
+};
+
+&i2c1 {
+	/* Wireless 2 */
+	gpio8: pca9554@18 {
+		compatible = "nxp,pca9557";
+		reg = <0x18>;
+		gpio-controller;
+		#gpio-cells = <2>;
+	};
+
+	/* Wireless 1 */
+	gpio7: pca9554@24 {
+		compatible = "nxp,pca9554";
+		reg = <0x24>;
+		gpio-controller;
+		#gpio-cells = <2>;
+	};
+
+	/* AIB voltage monitor */
+	adt7411@4a {
+		compatible = "adi,adt7411";
+		reg = <0x4a>;
+	};
+};
+
+&i2c2 {
+	/* FIB voltage monitor */
+	adt7411@4a {
+		compatible = "adi,adt7411";
+		reg = <0x4a>;
+	};
+
+        lm75_swb {
+                compatible = "national,lm75";
+                reg = <0x4e>;
+        };
+
+	lm75_swa {
+                compatible = "national,lm75";
+                reg = <0x4f>;
+        };
+
+	/* FIB Nameplate */
+	at24c08@57 {
+		compatible = "atmel,24c08";
+		reg = <0x57>;
+	};
+
+	tca9548@70 {
+		compatible = "nxp,pca9548";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <0x70>;
+
+		i2c@1 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <1>;
+
+			sff0: at24c04@50 {
+				compatible = "atmel,24c04";
+				reg = <0x50>;
+			};
+		};
+
+		i2c@2 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <2>;
+
+			sff1: at24c04@50 {
+				compatible = "atmel,24c04";
+				reg = <0x50>;
+			};
+		};
+
+		i2c@3 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <3>;
+
+			sff2: at24c04@50 {
+				compatible = "atmel,24c04";
+				reg = <0x50>;
+			};
+		};
+
+		i2c@4 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <4>;
+
+			sff3: at24c04@50 {
+				compatible = "atmel,24c04";
+				reg = <0x50>;
+			};
+		};
+
+		i2c@5 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <5>;
+
+			sff4: at24c04@50 {
+				compatible = "atmel,24c04";
+				reg = <0x50>;
+			};
+		};
+	};
+
+
+	tca9548@71 {
+		compatible = "nxp,pca9548";
+		reg = <0x71>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		i2c@1 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <1>;
+
+			sff5: at24c04@50 {
+				compatible = "atmel,24c04";
+				reg = <0x50>;
+			};
+		};
+
+		i2c@2 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <2>;
+
+			sff6: at24c04@50 {
+				compatible = "atmel,24c04";
+				reg = <0x50>;
+			};
+		};
+
+		i2c@3 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <3>;
+
+			sff7: at24c04@50 {
+				compatible = "atmel,24c04";
+				reg = <0x50>;
+			};
+
+		};
+
+		i2c@4 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <4>;
+
+			sff8: at24c04@50 {
+				compatible = "atmel,24c04";
+				reg = <0x50>;
+			};
+		};
+
+		i2c@5 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <5>;
+
+			sff9: at24c04@50 {
+				compatible = "atmel,24c04";
+				reg = <0x50>;
+			};
+		};
+	};
+};
+
+&uart1 {
+	linux,rs485-enabled-at-boot-time;
+	pinctrl-0 = <&pinctrl_uart1>, <&pinctrl_uart1_rts>;
+};
+
+&uart2 {
+	linux,rs485-enabled-at-boot-time;
+	pinctrl-0 = <&pinctrl_uart2>, <&pinctrl_uart2_rts>;
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpo_public>;
+
+
+	pinctrl_gpo_public: gpopubgrp {
+		fsl,pins = <
+			VF610_PAD_PTE2__GPIO_107		0x2062
+			VF610_PAD_PTE3__GPIO_108		0x2062
+			VF610_PAD_PTE4__GPIO_109		0x2062
+			VF610_PAD_PTE5__GPIO_110		0x2062
+			VF610_PAD_PTE6__GPIO_111		0x2062
+		>;
+	};
+
+	pinctrl_dspi0_cs_4_5: dspi0grp-cs-4-5 {
+		fsl,pins = <
+			VF610_PAD_PTB13__DSPI0_CS4		0x1182
+			VF610_PAD_PTB12__DSPI0_CS5		0x1182
+		>;
+	};
+
+	pinctrl_dspi1: dspi1grp {
+		fsl,pins = <
+			VF610_PAD_PTD5__DSPI1_CS0		0x1182
+			VF610_PAD_PTD4__DSPI1_CS1		0x1182
+			VF610_PAD_PTC6__DSPI1_SIN		0x1181
+			VF610_PAD_PTC7__DSPI1_SOUT		0x1182
+			VF610_PAD_PTC8__DSPI1_SCK		0x1182
+		>;
+	};
+
+	pinctrl_esdhc0: esdhc0grp {
+		fsl,pins = <
+			VF610_PAD_PTC0__ESDHC0_CLK	 0x31ef
+			VF610_PAD_PTC1__ESDHC0_CMD	 0x31ef
+			VF610_PAD_PTC2__ESDHC0_DAT0	 0x31ef
+			VF610_PAD_PTC3__ESDHC0_DAT1	 0x31ef
+			VF610_PAD_PTC4__ESDHC0_DAT2	 0x31ef
+			VF610_PAD_PTC5__ESDHC0_DAT3	 0x31ef
+			VF610_PAD_PTD23__ESDHC0_DAT4 0x31ef
+			VF610_PAD_PTD22__ESDHC0_DAT5 0x31ef
+			VF610_PAD_PTD21__ESDHC0_DAT6 0x31ef
+			VF610_PAD_PTD20__ESDHC0_DAT7 0x31ef
+		>;
+	};
+
+	pinctrl_i2c3: i2c3grp {
+		fsl,pins = <
+			VF610_PAD_PTA30__I2C3_SCL		0x37ff
+			VF610_PAD_PTA31__I2C3_SDA		0x37ff
+		>;
+	};
+
+	pinctrl_leds_debug: pinctrl-leds-debug {
+		fsl,pins = <
+			VF610_PAD_PTB26__GPIO_96		0x31c2
+		>;
+	};
+
+	pinctrl_uart1_rts: uart1grp-rts {
+		fsl,pins = <
+			VF610_PAD_PTB25__UART1_RTS		0x2062
+		>;
+	};
+
+	pinctrl_uart2_rts: uart2grp-rts {
+		fsl,pins = <
+			VF610_PAD_PTD2__UART2_RTS		0x2062
+		>;
+	};
+
+	pinctrl_mdio_mux: pinctrl-mdio-mux {
+		fsl,pins = <
+			VF610_PAD_PTE27__GPIO_132	0x31c2
+			VF610_PAD_PTE28__GPIO_133	0x31c2
+			VF610_PAD_PTE21__GPIO_126	0x31c2
+			VF610_PAD_PTE22__GPIO_127	0x31c2
+		>;
+	};
+};
diff --git a/arch/arm/dts/vf610-zii-spu3-rev-a.dts b/arch/arm/dts/vf610-zii-spu3-rev-a.dts
new file mode 100644
index 0000000..25ab26d
--- /dev/null
+++ b/arch/arm/dts/vf610-zii-spu3-rev-a.dts
@@ -0,0 +1,140 @@
+/*
+ * Copyright (C) 2015, 2016 Zodiac Inflight Innovations
+ *
+ * Based on an original 'vf610-twr.dts' which is Copyright 2015,
+ * Freescale Semiconductor, Inc.
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
+ *     This file is distributed in the hope that it will be useful
+ *     but WITHOUT ANY WARRANTY; without even the implied warranty of
+ *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ *     GNU General Public License for more details.
+ *
+ * Or, alternatively
+ *
+ *  b) Permission is hereby granted, free of charge, to any person
+ *     obtaining a copy of this software and associated documentation
+ *     files (the "Software"), to deal in the Software without
+ *     restriction, including without limitation the rights to use
+ *     copy, modify, merge, publish, distribute, sublicense, and/or
+ *     sell copies of the Software, and to permit persons to whom the
+ *     Software is furnished to do so, subject to the following
+ *     conditions:
+ *
+ *     The above copyright notice and this permission notice shall be
+ *     included in all copies or substantial portions of the Software.
+ *
+ *     THE SOFTWARE IS PROVIDED , WITHOUT WARRANTY OF ANY KIND
+ *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
+ *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
+ *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
+ *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY
+ *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
+ *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
+ *     OTHER DEALINGS IN THE SOFTWARE.
+ */
+
+/dts-v1/;
+#include "vf610-zii-dev.dtsi"
+
+
+/ {
+	model = "ZII VF610 SPU3 Switch Management Board";
+	compatible = "zii,vf610spu3-a", "zii,vf610dev", "fsl,vf610";
+
+	aliases {
+		/delete-property/ serial2;
+	};
+
+	gpio-leds {
+                debug {
+                        gpios = <&gpio2 18 GPIO_ACTIVE_HIGH>;
+		};
+	};
+};
+
+&dspi1 {
+	bus-num = <1>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_dspi1>;
+	status = "okay";
+
+	m25p128@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "m25p128", "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <50000000>;
+
+		partition@0 {
+			label = "m25p128-0";
+			reg = <0x0 0x01000000>;
+		};
+	};
+};
+
+&esdhc0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_esdhc0>;
+	bus-width = <8>;
+	status = "okay";
+};
+
+&fec0 {
+	status = "disabled";
+};
+
+&i2c0 {
+	/* Board Revision */
+	gpio6: pca9505@22 {
+		compatible = "nxp,pca9554";
+		reg = <0x22>;
+		gpio-controller;
+		#gpio-cells = <2>;
+	};
+};
+
+/delete-node/ &i2c1;
+/delete-node/ &i2c2;
+/delete-node/ &uart2;
+
+&iomuxc {
+	pinctrl_dspi1: dspi1grp {
+		fsl,pins = <
+			VF610_PAD_PTD5__DSPI1_CS0	0x1182
+			VF610_PAD_PTD4__DSPI1_CS1	0x1182
+			VF610_PAD_PTC6__DSPI1_SIN	0x1181
+			VF610_PAD_PTC7__DSPI1_SOUT	0x1182
+			VF610_PAD_PTC8__DSPI1_SCK	0x1182
+		>;
+	};
+
+	pinctrl_esdhc0: esdhc0grp {
+		fsl,pins = <
+			VF610_PAD_PTC0__ESDHC0_CLK	0x31ef
+			VF610_PAD_PTC1__ESDHC0_CMD	0x31ef
+			VF610_PAD_PTC2__ESDHC0_DAT0	0x31ef
+			VF610_PAD_PTC3__ESDHC0_DAT1	0x31ef
+			VF610_PAD_PTC4__ESDHC0_DAT2	0x31ef
+			VF610_PAD_PTC5__ESDHC0_DAT3	0x31ef
+			VF610_PAD_PTD23__ESDHC0_DAT4	0x31ef
+			VF610_PAD_PTD22__ESDHC0_DAT5	0x31ef
+			VF610_PAD_PTD21__ESDHC0_DAT6	0x31ef
+			VF610_PAD_PTD20__ESDHC0_DAT7	0x31ef
+		>;
+	};
+
+	pinctrl_leds_debug: pinctrl-leds-debug {
+		fsl,pins = <
+			VF610_PAD_PTD3__GPIO_82			0x31c2
+		>;
+	};
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 62e6494..dba1041 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -355,6 +355,11 @@ config MACH_ZII_RDU2
 	bool "ZII i.MX6Q(+) RDU2"
 	select ARCH_IMX6
 
+config MACH_ZII_VF610_DEV
+	bool "Zodiac VF610 Dev Family"
+	select ARCH_VF610
+	select CLKDEV_LOOKUP
+
 endif
 
 # ----------------------------------------------------------
diff --git a/images/Makefile.imx b/images/Makefile.imx
index eba6048..b0c4694 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -423,3 +423,8 @@ pblx-$(CONFIG_MACH_ZII_RDU2) += start_imx6qp_zii_rdu2
 CFG_start_imx6qp_zii_rdu2.pblx.imximg = $(board)/zii-imx6q-rdu2/flash-header-imx6qp-rdu2.imxcfg
 FILE_barebox-zii-imx6qp-rdu2.img = start_imx6qp_zii_rdu2.pblx.imximg
 image-$(CONFIG_MACH_ZII_RDU2) += barebox-zii-imx6qp-rdu2.img
+
+pblx-$(CONFIG_MACH_ZII_VF610_DEV) += start_zii_vf610_dev
+CFG_start_zii_vf610_dev.pblx.imximg = $(board)/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
+FILE_barebox-zii-vf610-dev.img = start_zii_vf610_dev.pblx.imximg
+image-$(CONFIG_MACH_ZII_VF610_DEV) += barebox-zii-vf610-dev.img
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
