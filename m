Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cC2k8-0005Dv-Bj
 for barebox@lists.infradead.org; Wed, 30 Nov 2016 11:08:16 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1cC2jl-0002Bh-CG
 for barebox@lists.infradead.org; Wed, 30 Nov 2016 12:07:41 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 30 Nov 2016 12:07:39 +0100
Message-Id: <20161130110741.23345-1-l.stach@pengutronix.de>
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
Subject: [PATCH 1/3] ARM: imx: Add support for ZII RDU2 board
To: barebox@lists.infradead.org

From: Andrey Smirnov <andrew.smirnov@gmail.com>

Add support for RDU2 board from Zodiac Inflight Innovations.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/Makefile                           |   1 +
 arch/arm/boards/zii-imx6q-rdu2/Makefile            |   2 +
 arch/arm/boards/zii-imx6q-rdu2/board.c             | 153 ++++++
 .../zii-imx6q-rdu2/defaultenv-rdu2/network/eth1    |  18 +
 .../zii-imx6q-rdu2/defaultenv-rdu2/nv/boot.default |   1 +
 .../zii-imx6q-rdu2/flash-header-imx6q-rdu2.imxcfg  |  87 ++++
 arch/arm/boards/zii-imx6q-rdu2/lowlevel.c          |  53 ++
 arch/arm/dts/Makefile                              |   1 +
 arch/arm/dts/imx6q-zii-rdu2.dts                    |  52 ++
 arch/arm/dts/imx6qdl-zii-rdu2.dtsi                 | 531 +++++++++++++++++++++
 arch/arm/mach-imx/Kconfig                          |   4 +
 images/Makefile.imx                                |   5 +
 12 files changed, 908 insertions(+)
 create mode 100644 arch/arm/boards/zii-imx6q-rdu2/Makefile
 create mode 100644 arch/arm/boards/zii-imx6q-rdu2/board.c
 create mode 100644 arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/network/eth1
 create mode 100644 arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/nv/boot.default
 create mode 100644 arch/arm/boards/zii-imx6q-rdu2/flash-header-imx6q-rdu2.imxcfg
 create mode 100644 arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
 create mode 100644 arch/arm/dts/imx6q-zii-rdu2.dts
 create mode 100644 arch/arm/dts/imx6qdl-zii-rdu2.dtsi

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index ff0a86fcb339..fe5c20932d6b 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -141,3 +141,4 @@ obj-$(CONFIG_MACH_VARISCITE_MX6)		+= variscite-mx6/
 obj-$(CONFIG_MACH_VSCOM_BALTOS)			+= vscom-baltos/
 obj-$(CONFIG_MACH_QEMU_VIRT64)			+= qemu-virt64/
 obj-$(CONFIG_MACH_VF610_TWR)			+= freescale-vf610-twr/
+obj-$(CONFIG_MACH_ZII_RDU2)			+= zii-imx6q-rdu2/
diff --git a/arch/arm/boards/zii-imx6q-rdu2/Makefile b/arch/arm/boards/zii-imx6q-rdu2/Makefile
new file mode 100644
index 000000000000..01c7a259e9a5
--- /dev/null
+++ b/arch/arm/boards/zii-imx6q-rdu2/Makefile
@@ -0,0 +1,2 @@
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/zii-imx6q-rdu2/board.c b/arch/arm/boards/zii-imx6q-rdu2/board.c
new file mode 100644
index 000000000000..636c57630803
--- /dev/null
+++ b/arch/arm/boards/zii-imx6q-rdu2/board.c
@@ -0,0 +1,153 @@
+/*
+ * Copyright (C) 2016 Zodiac Inflight Innovation
+ * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
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
+#include <environment.h>
+#include <mach/imx6-regs.h>
+#include <gpio.h>
+#include <asm/armlinux.h>
+#include <generated/mach-types.h>
+#include <partition.h>
+#include <linux/phy.h>
+#include <asm/io.h>
+#include <asm/mmu.h>
+#include <mach/generic.h>
+#include <linux/sizes.h>
+#include <net.h>
+#include <mach/imx6.h>
+#include <mach/devices-imx6.h>
+#include <mach/iomux-mx6.h>
+#include <spi/spi.h>
+#include <mach/spi.h>
+#include <mach/usb.h>
+
+#define RDU2_DAC1_RESET	IMX_GPIO_NR(1, 0)
+#define RDU2_DAC2_RESET	IMX_GPIO_NR(1, 2)
+#define RDU2_RST_TOUCH	IMX_GPIO_NR(1, 7)
+#define RDU2_NFC_RESET	IMX_GPIO_NR(1, 17)
+#define RDU2_HPA1_SDn	IMX_GPIO_NR(1, 4)
+#define RDU2_HPA2_SDn	IMX_GPIO_NR(1, 5)
+
+static const struct gpio rdu2_reset_gpios[] = {
+	{
+		.gpio = RDU2_DAC1_RESET,
+		.flags = GPIOF_OUT_INIT_LOW,
+		.label = "dac1-reset",
+	},
+	{
+		.gpio = RDU2_DAC2_RESET,
+		.flags = GPIOF_OUT_INIT_LOW,
+		.label = "dac2-reset",
+	},
+	{
+		.gpio = RDU2_RST_TOUCH,
+		.flags = GPIOF_OUT_INIT_LOW,
+		.label = "rst-touch#",
+	},
+	{
+		.gpio = RDU2_NFC_RESET,
+		.flags = GPIOF_OUT_INIT_HIGH,
+		.label = "nfc-reset",
+	},
+	{
+		.gpio = RDU2_HPA1_SDn,
+		.flags = GPIOF_OUT_INIT_LOW,
+		.label = "hpa1-sd-n",
+	},
+	{
+		.gpio = RDU2_HPA2_SDn,
+		.flags = GPIOF_OUT_INIT_LOW,
+		.label = "hpa2n-sd-n",
+	},
+};
+
+static int rdu2_reset_audio_touchscreen_nfc(void)
+{
+	int ret;
+
+	if (!of_machine_is_compatible("zii,imx6q-zii-rdu2") &&
+	    !of_machine_is_compatible("zii,imx6qp-zii-rdu2"))
+		return 0;
+
+	ret = gpio_request_array(rdu2_reset_gpios,
+				 ARRAY_SIZE(rdu2_reset_gpios));
+	if (ret) {
+		pr_err("Failed to request RDU2 reset gpios: %s\n",
+		       strerror(-ret));
+		return ret;
+	}
+
+	mdelay(100);
+
+	gpio_direction_output(RDU2_DAC1_RESET, 1);
+	gpio_direction_output(RDU2_DAC2_RESET, 1);
+	gpio_direction_output(RDU2_RST_TOUCH,  1);
+	gpio_direction_output(RDU2_NFC_RESET,  0);
+	gpio_direction_output(RDU2_HPA1_SDn,   1);
+	gpio_direction_output(RDU2_HPA2_SDn,   1);
+
+	mdelay(100);
+
+	return 0;
+}
+/*
+ * When this function is called "hog" pingroup in device tree needs to
+ * be already initialized
+ */
+late_initcall(rdu2_reset_audio_touchscreen_nfc);
+
+static const struct gpio rdu2_front_panel_usb_gpios[] = {
+	{
+		.gpio = IMX_GPIO_NR(3, 19),
+		.flags = GPIOF_OUT_INIT_LOW,
+		.label = "usb-emulation",
+	},
+	{
+		.gpio = IMX_GPIO_NR(3, 20),
+		.flags = GPIOF_OUT_INIT_HIGH,
+		.label = "usb-mode1",
+	},
+	{
+		.gpio = IMX_GPIO_NR(3, 22),
+		.flags = GPIOF_OUT_INIT_LOW,
+		.label = "usb-pwr-ctrl-enn",
+	},
+	{
+		.gpio = IMX_GPIO_NR(3, 23),
+		.flags = GPIOF_OUT_INIT_HIGH,
+		.label = "usb-mode2",
+	},
+};
+
+static int rdu2_enable_front_panel_usb(void)
+{
+	int ret;
+
+	if (!of_machine_is_compatible("zii,imx6q-zii-rdu2") &&
+	    !of_machine_is_compatible("zii,imx6qp-zii-rdu2"))
+		return 0;
+
+	ret = gpio_request_array(rdu2_front_panel_usb_gpios,
+				 ARRAY_SIZE(rdu2_front_panel_usb_gpios));
+	if (ret) {
+		pr_err("Failed to request RDU2 front panel USB gpios: %s\n",
+		       strerror(-ret));
+
+	}
+
+	return ret;
+}
+late_initcall(rdu2_enable_front_panel_usb);
diff --git a/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/network/eth1 b/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/network/eth1
new file mode 100644
index 000000000000..33fe7c1b2b48
--- /dev/null
+++ b/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/network/eth1
@@ -0,0 +1,18 @@
+#!/bin/sh
+
+# ip setting (static/dhcp)
+ip=dhcp
+global.dhcp.vendor_id=barebox-${global.hostname}
+
+# static setup used if ip=static
+ipaddr=
+netmask=
+gateway=
+serverip=
+
+# MAC address if needed
+#ethaddr=xx:xx:xx:xx:xx:xx
+
+# put code to discover eth0 (i.e. 'usb') to /env/network/eth0-discover
+
+exit 0
diff --git a/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/nv/boot.default b/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/nv/boot.default
new file mode 100644
index 000000000000..3cfe9bafdca5
--- /dev/null
+++ b/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/nv/boot.default
@@ -0,0 +1 @@
+mmc1
\ No newline at end of file
diff --git a/arch/arm/boards/zii-imx6q-rdu2/flash-header-imx6q-rdu2.imxcfg b/arch/arm/boards/zii-imx6q-rdu2/flash-header-imx6q-rdu2.imxcfg
new file mode 100644
index 000000000000..e37db503b408
--- /dev/null
+++ b/arch/arm/boards/zii-imx6q-rdu2/flash-header-imx6q-rdu2.imxcfg
@@ -0,0 +1,87 @@
+loadaddr 0x10000000
+soc imx6
+dcdofs 0x400
+
+wm 32 0x020e0798 0x000C0000
+wm 32 0x020e0758 0x00000000
+wm 32 0x020e0588 0x00000030
+wm 32 0x020e0594 0x00000030
+wm 32 0x020e056c 0x00000030
+wm 32 0x020e0578 0x00000030
+wm 32 0x020e074c 0x00000030
+wm 32 0x020e057c 0x00000030
+wm 32 0x020e058c 0x00000000
+wm 32 0x020e059c 0x00000030
+wm 32 0x020e05a0 0x00000030
+wm 32 0x020e078c 0x00000030
+wm 32 0x020e0750 0x00020000
+wm 32 0x020e05a8 0x00000028
+wm 32 0x020e05b0 0x00000028
+wm 32 0x020e0524 0x00000028
+wm 32 0x020e051c 0x00000028
+wm 32 0x020e0518 0x00000028
+wm 32 0x020e050c 0x00000028
+wm 32 0x020e05b8 0x00000028
+wm 32 0x020e05c0 0x00000028
+wm 32 0x020e0774 0x00020000
+wm 32 0x020e0784 0x00000028
+wm 32 0x020e0788 0x00000028
+wm 32 0x020e0794 0x00000028
+wm 32 0x020e079c 0x00000028
+wm 32 0x020e07a0 0x00000028
+wm 32 0x020e07a4 0x00000028
+wm 32 0x020e07a8 0x00000028
+wm 32 0x020e0748 0x00000028
+wm 32 0x020e05ac 0x00000028
+wm 32 0x020e05b4 0x00000028
+wm 32 0x020e0528 0x00000028
+wm 32 0x020e0520 0x00000028
+wm 32 0x020e0514 0x00000028
+wm 32 0x020e0510 0x00000028
+wm 32 0x020e05bc 0x00000028
+wm 32 0x020e05c4 0x00000028
+wm 32 0x021b0800 0xa1390003
+wm 32 0x021b080c 0x001F001F
+wm 32 0x021b0810 0x001F001F
+wm 32 0x021b480c 0x001F001F
+wm 32 0x021b4810 0x001F001F
+wm 32 0x021b083c 0x43260335
+wm 32 0x021b0840 0x031A030B
+wm 32 0x021b483c 0x4323033B
+wm 32 0x021b4840 0x0323026F
+wm 32 0x021b0848 0x483D4545
+wm 32 0x021b4848 0x44433E48
+wm 32 0x021b0850 0x41444840
+wm 32 0x021b4850 0x4835483E
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b0824 0x33333333
+wm 32 0x021b0828 0x33333333
+wm 32 0x021b481c 0x33333333
+wm 32 0x021b4820 0x33333333
+wm 32 0x021b4824 0x33333333
+wm 32 0x021b4828 0x33333333
+wm 32 0x021b08b8 0x00000800
+wm 32 0x021b48b8 0x00000800
+wm 32 0x021b0004 0x00020036
+wm 32 0x021b0008 0x09444040
+wm 32 0x021b000c 0x8A8F7955
+wm 32 0x021b0010 0xFF328F64
+wm 32 0x021b0014 0x01FF00DB
+wm 32 0x021b0018 0x00001740
+wm 32 0x021b001c 0x00008000
+wm 32 0x021b002c 0x000026d2
+wm 32 0x021b0030 0x008F1023
+wm 32 0x021b0040 0x00000047
+wm 32 0x021b0000 0x841A0000
+wm 32 0x021b001c 0x04088032
+wm 32 0x021b001c 0x00008033
+wm 32 0x021b001c 0x00048031
+wm 32 0x021b001c 0x09408030
+wm 32 0x021b001c 0x04008040
+wm 32 0x021b0020 0x00005800
+wm 32 0x021b0818 0x00011117
+wm 32 0x021b4818 0x00011117
+wm 32 0x021b0004 0x00025576
+wm 32 0x021b0404 0x00011006
+wm 32 0x021b001c 0x00000000
diff --git a/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c b/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
new file mode 100644
index 000000000000..df35aaee15fd
--- /dev/null
+++ b/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
@@ -0,0 +1,53 @@
+/*
+ * Copyright (C) 2016 Zodiac Inflight Innovation
+ * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
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
+#include <debug_ll.h>
+#include <common.h>
+#include <mach/esdctl.h>
+#include <mach/generic.h>
+#include <mach/imx6.h>
+#include <asm/barebox-arm.h>
+
+static inline void setup_uart(void)
+{
+	void __iomem *iomuxbase = IOMEM(MX6_IOMUXC_BASE_ADDR);
+
+	imx6_ungate_all_peripherals();
+
+	writel(0x1b0b1, iomuxbase + 0x0650);
+	writel(3, iomuxbase + 0x0280);
+
+	writel(0x1b0b1, iomuxbase + 0x0654);
+	writel(3, iomuxbase + 0x0284);
+	writel(1, iomuxbase + 0x0920);
+
+	imx6_uart_setup_ll();
+
+	putc_ll('>');
+}
+
+extern char __dtb_imx6q_zii_rdu2_start[];
+
+ENTRY_FUNCTION(start_imx6q_zii_rdu2, r0, r1, r2)
+{
+	void *fdt = __dtb_imx6q_zii_rdu2_start;
+
+	imx6_cpu_lowlevel_init();
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		setup_uart();
+
+	imx6q_barebox_entry(fdt - get_runtime_offset());
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 607c62080665..dbf089a5de40 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -79,5 +79,6 @@ pbl-dtb-$(CONFIG_MACH_USI_TOPKICK) += kirkwood-topkick-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_VARISCITE_MX6) += imx6q-var-custom.dtb.o
 pbl-dtb-$(CONFIG_MACH_VSCOM_BALTOS) += am335x-baltos-minimal.dtb.o
 pbl-dtb-$(CONFIG_MACH_VF610_TWR) += vf610-twr.dtb.o
+pbl-dtb-$(CONFIG_MACH_ZII_RDU2) += imx6q-zii-rdu2.dtb.o
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.lzo
diff --git a/arch/arm/dts/imx6q-zii-rdu2.dts b/arch/arm/dts/imx6q-zii-rdu2.dts
new file mode 100644
index 000000000000..db75e29f87ad
--- /dev/null
+++ b/arch/arm/dts/imx6q-zii-rdu2.dts
@@ -0,0 +1,52 @@
+/*
+ * Copyright 2016 Zodiac Inflight Innovations
+ *
+ * This file is dual-licensed: you can use it either under the terms
+ * of the GPL or the X11 license, at your option. Note that this dual
+ * licensing only applies to this file, and not this project as a
+ * whole.
+ *
+ *  a) This file is free software; you can redistribute it and/or
+ *     modify it under the terms of the GNU General Public License as
+ *     published by the Free Software Foundation; either version 2 of the
+ *     License, or (at your option) any later version.
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
+/dts-v1/;
+
+#include <arm/imx6q.dtsi>
+#include "imx6q.dtsi"
+#include "imx6qdl-zii-rdu2.dtsi"
+
+/ {
+	model = "ZII RDU2 Board";
+	compatible = "zii,imx6q-zii-rdu2", "fsl,imx6q";
+};
diff --git a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
new file mode 100644
index 000000000000..55af3f964e49
--- /dev/null
+++ b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
@@ -0,0 +1,531 @@
+/*
+ * Copyright 2016 Zodiac Inflight Innovations
+ *
+ * This file is dual-licensed: you can use it either under the terms
+ * of the GPL or the X11 license, at your option. Note that this dual
+ * licensing only applies to this file, and not this project as a
+ * whole.
+ *
+ *  a) This file is free software; you can redistribute it and/or
+ *     modify it under the terms of the GNU General Public License as
+ *     published by the Free Software Foundation; either version 2 of the
+ *     License, or (at your option) any later version.
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
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	chosen {
+		linux,stdout-path = &uart1;
+	};
+
+	mdio {
+		compatible = "virtual,mdio-gpio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_mdio1>;
+		gpios = <&gpio6 5 GPIO_ACTIVE_HIGH
+		         &gpio6 4 GPIO_ACTIVE_HIGH>;
+	};
+
+	reg_28p0v: 28p0v {
+		/* main power in */
+		compatible = "regulator-fixed";
+		regulator-name = "28P0V";
+		regulator-min-microvolt = <28000000>;
+		regulator-max-microvolt = <28000000>;
+		regulator-always-on;
+	};
+
+	reg_12p0v: 12p0v {
+		/* main internal power */
+		compatible = "regulator-fixed";
+		vin-supply = <&reg_28p0v>;
+		regulator-name = "12P0V";
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+		regulator-always-on;
+	};
+
+	reg_12p0v_periph: 12p0vperiph {
+		compatible = "regulator-fixed";
+		vin-supply = <&reg_28p0v>;
+		regulator-name = "12P0V-PERIPH";
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+		/* controlled via "environment processor" */
+		regulator-always-on;
+	};
+
+	reg_5p0v_main: 5p0vmain {
+		compatible = "regulator-fixed";
+		vin-supply = <&reg_12p0v>;
+		regulator-name = "5P0MAIN";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		/* controlled via "environment processor" */
+		regulator-always-on;
+	};
+
+	reg_usb_otg_vbus: regulator@0 {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_usb_otg_supply>;
+		vin-supply = <&reg_5p0v_main>;
+		regulator-name = "usb_otg_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio3 22 GPIO_ACTIVE_LOW>;
+		startup-delay-us = <1000>;
+	};
+
+	reg_usb_h1_vbus: regulator@1 {
+		compatible = "regulator-fixed";
+		vin-supply = <&reg_5p0v_main>;
+		regulator-name = "usb_h1_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+
+	imx6qdl-sabresd {
+		pinctrl_hog: hoggrp {
+			fsl,pins = <
+				/* USB Charging Controller */
+				MX6QDL_PAD_EIM_A25__GPIO5_IO02  	0x1b0b0 /*USB_ATT_DETn*/
+				MX6QDL_PAD_EIM_D19__GPIO3_IO19  	0x1b0b0 /*USB_EMULATION*/
+				MX6QDL_PAD_EIM_D20__GPIO3_IO20  	0x1b0b0 /*USB_MODE1*/
+				MX6QDL_PAD_EIM_D21__GPIO3_IO21  	0x1b0b0 /*USB_ALERTn*/
+				MX6QDL_PAD_EIM_D22__GPIO3_IO22  	0x1b0b0 /*USB_PWR_CTRL_ENn*/
+				MX6QDL_PAD_EIM_D23__GPIO3_IO23  	0x1b0b0 /*USB_MODE2*/
+
+				MX6QDL_PAD_GPIO_1__USB_OTG_ID		0x13020 /*USB_OTG_ID*/
+
+				MX6QDL_PAD_GPIO_8__GPIO1_IO08		0x1b0b0 /*INT_TOUCH_N*/
+
+				/* DAC */
+				MX6QDL_PAD_GPIO_0__GPIO1_IO00		0x1b0b0 /*DAC1_RESET*/
+				MX6QDL_PAD_GPIO_2__GPIO1_IO02		0x1b0b0 /*DAC2_RESET*/
+
+				/* Need to Place */
+				MX6QDL_PAD_EIM_D30__GPIO3_IO30		0x1b0b0 /*RMII_INTRPT*/
+				MX6QDL_PAD_SD3_RST__GPIO7_IO08		0x1b8b0 /*SD_CARD_RESET - Open Drain Output*/
+
+				/* Test Points */
+				MX6QDL_PAD_SD3_DAT4__GPIO7_IO01		0x1b0b0 /*TP20*/
+				MX6QDL_PAD_SD3_DAT5__GPIO7_IO00		0x1b0b0 /*TP21*/
+				MX6QDL_PAD_SD3_DAT6__GPIO6_IO18		0x1b0b0 /*TP22*/
+				MX6QDL_PAD_SD3_DAT7__GPIO6_IO17		0x1b0b0 /*TP23*/
+				MX6QDL_PAD_KEY_ROW2__GPIO4_IO11		0x1b0b0 /*TP19*/
+				MX6QDL_PAD_NANDF_CS1__GPIO6_IO14	0x1b0b0 /*TP26*/
+				MX6QDL_PAD_NANDF_D4__GPIO2_IO04		0x1b0b0 /*TP27*/
+				MX6QDL_PAD_NANDF_D5__GPIO2_IO05		0x1b0b0 /*TP28*/
+				MX6QDL_PAD_NANDF_D6__GPIO2_IO06		0x1b0b0 /*TP29*/
+				MX6QDL_PAD_NANDF_D7__GPIO2_IO07		0x1b0b0 /*TP30*/
+				MX6QDL_PAD_EIM_BCLK__GPIO6_IO31		0x1b0b0 /*TP25*/
+				MX6QDL_PAD_CSI0_MCLK__GPIO5_IO19	0x1b0b0 /*TP39*/
+				MX6QDL_PAD_CSI0_PIXCLK__GPIO5_IO18	0x1b0b0 /*TP40*/
+				MX6QDL_PAD_CSI0_VSYNC__GPIO5_IO21	0x1b0b0 /*TP42*/
+				MX6QDL_PAD_CSI0_DATA_EN__GPIO5_IO20	0x1b0b0 /*TP43*/
+				MX6QDL_PAD_CSI0_DAT14__GPIO6_IO00	0x1b0b0 /*TP44*/
+				MX6QDL_PAD_CSI0_DAT15__GPIO6_IO01	0x1b0b0 /*TP45*/
+				MX6QDL_PAD_CSI0_DAT16__GPIO6_IO02	0x1b0b0 /*TP46*/
+				MX6QDL_PAD_DI0_PIN4__GPIO4_IO20		0x1b0b0 /*TP41*/
+
+				/* System Type */
+				MX6QDL_PAD_EIM_D26__GPIO3_IO26		0x1b0b0 /*SYS_TYPE_3*/
+				MX6QDL_PAD_EIM_D27__GPIO3_IO27		0x1b0b0 /*SYS_TYPE_2*/
+				MX6QDL_PAD_EIM_D28__GPIO3_IO28		0x1b0b0 /*SYS_TYPE_1*/
+				MX6QDL_PAD_EIM_D29__GPIO3_IO29		0x1b0b0 /*SYS_TYPE_0*/
+
+				/* Boot Mode Selection Pins */
+				MX6QDL_PAD_EIM_DA0__GPIO3_IO00		0x1b0b0 /*BT_CFG1_0*/
+				MX6QDL_PAD_EIM_DA1__GPIO3_IO01		0x1b0b0 /*BT_CFG1_1*/
+				MX6QDL_PAD_EIM_DA2__GPIO3_IO02		0x1b0b0 /*BT_CFG1_2*/
+				MX6QDL_PAD_EIM_DA3__GPIO3_IO03		0x1b0b0 /*BT_CFG1_3*/
+				MX6QDL_PAD_EIM_DA4__GPIO3_IO04		0x1b0b0 /*BT_CFG1_4*/
+				MX6QDL_PAD_EIM_DA5__GPIO3_IO05		0x1b0b0 /*BT_CFG1_5*/
+				MX6QDL_PAD_EIM_DA6__GPIO3_IO06		0x1b0b0 /*BT_CFG1_6*/
+				MX6QDL_PAD_EIM_DA7__GPIO3_IO07		0x1b0b0 /*BT_CFG1_7*/
+
+				MX6QDL_PAD_EIM_DA8__GPIO3_IO08		0x1b0b0 /*BT_CFG2_0*/
+				MX6QDL_PAD_EIM_DA9__GPIO3_IO09		0x1b0b0 /*BT_CFG2_1*/
+				MX6QDL_PAD_EIM_DA10__GPIO3_IO10		0x1b0b0 /*BT_CFG2_2*/
+				MX6QDL_PAD_EIM_DA11__GPIO3_IO11		0x1b0b0 /*BT_CFG2_3*/
+				MX6QDL_PAD_EIM_DA12__GPIO3_IO12		0x1b0b0 /*BT_CFG2_4*/
+				MX6QDL_PAD_EIM_DA13__GPIO3_IO13		0x1b0b0 /*BT_CFG2_5*/
+				MX6QDL_PAD_EIM_DA14__GPIO3_IO14		0x1b0b0 /*BT_CFG2_6*/
+				MX6QDL_PAD_EIM_DA15__GPIO3_IO15		0x1b0b0 /*BT_CFG2_7*/
+
+				MX6QDL_PAD_EIM_A16__GPIO2_IO22		0x1b0b0 /*BT_CFG3_0*/
+				MX6QDL_PAD_EIM_A17__GPIO2_IO21		0x1b0b0 /*BT_CFG3_1*/
+				MX6QDL_PAD_EIM_A18__GPIO2_IO20		0x1b0b0 /*BT_CFG3_2*/
+				MX6QDL_PAD_EIM_A19__GPIO2_IO19		0x1b0b0 /*BT_CFG3_3*/
+				MX6QDL_PAD_EIM_A20__GPIO2_IO18		0x1b0b0 /*BT_CFG3_4*/
+				MX6QDL_PAD_EIM_A21__GPIO2_IO17		0x1b0b0 /*BT_CFG3_5*/
+				MX6QDL_PAD_EIM_A22__GPIO2_IO16		0x1b0b0 /*BT_CFG3_6*/
+				MX6QDL_PAD_EIM_A23__GPIO6_IO06		0x1b0b0 /*BT_CFG3_7*/
+
+				MX6QDL_PAD_EIM_A24__GPIO5_IO04		0x1b0b0 /*BT_CFG4_0*/
+				MX6QDL_PAD_EIM_WAIT__GPIO5_IO00		0x1b0b0 /*BT_CFG4_1*/
+				MX6QDL_PAD_EIM_LBA__GPIO2_IO27		0x1b0b0 /*BT_CFG4_2*/
+				MX6QDL_PAD_EIM_EB0__GPIO2_IO28		0x1b0b0 /*BT_CFG4_3*/
+				MX6QDL_PAD_EIM_EB1__GPIO2_IO29		0x1b0b0 /*BT_CFG4_4*/
+				MX6QDL_PAD_EIM_RW__GPIO2_IO26		0x1b0b0 /*BT_CFG4_5*/
+				MX6QDL_PAD_EIM_EB3__GPIO2_IO31		0x1b0b0 /*BT_CFG4_7*/
+
+				MX6QDL_PAD_GPIO_4__GPIO1_IO04		0x1b0b0 /* HPA1_SDn */
+				MX6QDL_PAD_GPIO_5__GPIO1_IO05		0x1b0b0 /* HPA2_SDn */
+				MX6QDL_PAD_GPIO_7__GPIO1_IO07		0x1b0b0 /* RST_TOUCH# */
+				MX6QDL_PAD_SD1_DAT1__GPIO1_IO17		0x1b0b0 /* NFC_RESET */
+			>;
+		};
+
+		pinctrl_usb_otg_supply: usbotggrp {
+			fsl,pins = <
+				MX6QDL_PAD_EIM_D22__GPIO3_IO22		0x40000038
+			>;
+		};
+
+		pinctrl_ecspi1: ecspi1grp {
+			fsl,pins = <
+				/*MX6QDL_PAD_EIM_D17__GPIO3_IO17	0x1b0b0*/
+				MX6QDL_PAD_EIM_D17__ECSPI1_MISO 0x100b1
+				MX6QDL_PAD_EIM_D18__ECSPI1_MOSI 0x100b1
+				MX6QDL_PAD_EIM_D16__ECSPI1_SCLK 0x100b1
+				/*MX6QDL_PAD_EIM_EB2__ECSPI1_SS0	0x100b1*/
+				MX6QDL_PAD_EIM_EB2__GPIO2_IO30	0x1b0b1
+				/*MX6QDL_PAD_KEY_COL2__ECSPI1_SS1	0x1b0b1
+				MX6QDL_PAD_KEY_COL2__GPIO4_IO10*/
+			>;
+		};
+
+		pinctrl_enet: enetgrp {
+			fsl,pins = <
+				MX6QDL_PAD_GPIO_16__ENET_REF_CLK 	0x4001b0a8
+				MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x1b0b0
+				MX6QDL_PAD_ENET_MDC__ENET_MDC		0x1b0b0
+				MX6QDL_PAD_ENET_TXD0__ENET_TX_DATA0 0x1b0b0
+				MX6QDL_PAD_ENET_TXD1__ENET_TX_DATA1 0x1b0b0
+				MX6QDL_PAD_ENET_TX_EN__ENET_TX_EN   0x1b0b0
+				MX6QDL_PAD_ENET_RX_ER__ENET_RX_ER   0x1b0b0
+				MX6QDL_PAD_ENET_RXD0__ENET_RX_DATA0 0x1b0b0
+				MX6QDL_PAD_ENET_RXD1__ENET_RX_DATA1 0x1b0b0
+				MX6QDL_PAD_ENET_CRS_DV__ENET_RX_EN  0x1b0b0
+
+				MX6QDL_PAD_ENET_REF_CLK__GPIO1_IO23	0x1b0b0
+			>;
+		};
+
+		pinctrl_ssi2: ssi3grp {
+			fsl,pins = <
+				MX6QDL_PAD_KEY_COL0__AUD5_TXC		0x130b0
+				MX6QDL_PAD_KEY_ROW0__AUD5_TXD		0x130b0
+				MX6QDL_PAD_KEY_COL1__AUD5_TXFS		0x130b0
+			>;
+		};
+
+		pinctrl_i2c1: i2c1grp {
+			fsl,pins = <
+				MX6QDL_PAD_CSI0_DAT8__I2C1_SDA		0x4001b8b1
+				MX6QDL_PAD_CSI0_DAT9__I2C1_SCL		0x4001b8b1
+			>;
+		};
+
+		pinctrl_i2c2: i2c2grp {
+			fsl,pins = <
+				MX6QDL_PAD_KEY_COL3__I2C2_SCL		0x4001b8b1
+				MX6QDL_PAD_KEY_ROW3__I2C2_SDA		0x4001b8b1
+			>;
+		};
+
+		pinctrl_i2c3: i2c3grp {
+			fsl,pins = <
+				MX6QDL_PAD_GPIO_3__I2C3_SCL			0x4001b8b1
+				MX6QDL_PAD_GPIO_6__I2C3_SDA			0x4001b8b1
+			>;
+		};
+
+		pinctrl_i2c3_gpio: i2c3grp_gpio {
+			fsl,pins = <
+				MX6QDL_PAD_GPIO_3__GPIO1_IO03		0x1b0b1
+				MX6QDL_PAD_GPIO_6__GPIO1_IO06		0x1b0b1
+			>;
+		};
+
+		pinctrl_pcie: pciegrp {
+			fsl,pins = <
+				MX6QDL_PAD_GPIO_17__GPIO7_IO12	0x1b0b0
+			>;
+		};
+
+		pinctrl_uart1: uart1grp {
+			fsl,pins = <
+				MX6QDL_PAD_CSI0_DAT10__UART1_TX_DATA	0x1b0b1
+				MX6QDL_PAD_CSI0_DAT11__UART1_RX_DATA	0x1b0b1
+			>;
+		};
+
+		pinctrl_uart3: uart3grp {
+			fsl,pins = <
+				MX6QDL_PAD_EIM_D24__UART3_TX_DATA	0x1b0b1
+				MX6QDL_PAD_EIM_D25__UART3_RX_DATA	0x1b0b1
+			>;
+		};
+
+		pinctrl_uart4: uart4grp {
+			fsl,pins = <
+				MX6QDL_PAD_CSI0_DAT12__UART4_TX_DATA	0x1b0b1
+				MX6QDL_PAD_CSI0_DAT13__UART4_RX_DATA	0x1b0b1
+			>;
+		};
+
+		pinctrl_usdhc2: usdhc2grp {
+			fsl,pins = <
+				MX6QDL_PAD_SD2_CMD__SD2_CMD		0x17069
+				MX6QDL_PAD_SD2_CLK__SD2_CLK		0x17069
+				MX6QDL_PAD_SD2_DAT0__SD2_DATA0		0x17069
+				MX6QDL_PAD_SD2_DAT1__SD2_DATA1		0x17069
+				MX6QDL_PAD_SD2_DAT2__SD2_DATA2		0x17069
+				MX6QDL_PAD_SD2_DAT3__SD2_DATA3		0x17069
+			>;
+		};
+
+		pinctrl_usdhc3: usdhc3grp {
+			fsl,pins = <
+				MX6QDL_PAD_SD3_CMD__SD3_CMD		0x17069
+				MX6QDL_PAD_SD3_CLK__SD3_CLK		0x17069
+				MX6QDL_PAD_SD3_DAT0__SD3_DATA0		0x17069
+				MX6QDL_PAD_SD3_DAT1__SD3_DATA1		0x17069
+				MX6QDL_PAD_SD3_DAT2__SD3_DATA2		0x17069
+				MX6QDL_PAD_SD3_DAT3__SD3_DATA3		0x17069
+			>;
+		};
+
+		pinctrl_usdhc4: usdhc4grp {
+			fsl,pins = <
+				MX6QDL_PAD_SD4_CMD__SD4_CMD		0x17059
+				MX6QDL_PAD_SD4_CLK__SD4_CLK		0x10059
+				MX6QDL_PAD_SD4_DAT0__SD4_DATA0		0x17059
+				MX6QDL_PAD_SD4_DAT1__SD4_DATA1		0x17059
+				MX6QDL_PAD_SD4_DAT2__SD4_DATA2		0x17059
+				MX6QDL_PAD_SD4_DAT3__SD4_DATA3		0x17059
+				MX6QDL_PAD_SD4_DAT4__SD4_DATA4		0x17059
+				MX6QDL_PAD_SD4_DAT5__SD4_DATA5		0x17059
+				MX6QDL_PAD_SD4_DAT6__SD4_DATA6		0x17059
+				MX6QDL_PAD_SD4_DAT7__SD4_DATA7		0x17059
+				MX6QDL_PAD_NANDF_ALE__SD4_RESET		0x1b0b1
+			>;
+		};
+
+		pinctrl_mdio1: bitbangmdiogrp {
+			fsl,pins = <
+				/* Bitbang MDIO for DEB Switch */
+				MX6QDL_PAD_CSI0_DAT19__GPIO6_IO05	0x1b030 /*SWITCH_MDC*/
+				MX6QDL_PAD_CSI0_DAT18__GPIO6_IO04	0x18830 /*SWITCH_MDIO*/
+			>;
+		};
+	};
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	status = "okay";
+};
+
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart4>;
+	status = "okay";
+};
+
+&ecspi1 {
+	fsl,spi-num-chipselects = <1>;
+	cs-gpios = <&gpio2 30 0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi1>;
+	status = "okay";
+
+	nor_flash: m25p128@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "m25p128";
+		spi-max-frequency = <20000000>;
+		reg = <0>;
+
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0x100000>;
+		};
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
+&tempmon {
+	barebox,sensor-name = "TEMPMON";
+};
+
+&i2c2 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	status = "okay";
+
+	lm75@48 {
+		compatible = "national,lm75";
+		reg = <0x48>;
+		barebox,sensor-name = "Temp Sensor 1";
+	};
+
+	rtc: ds1341@68 {
+		compatible = "dallas,ds1341";
+		reg = <0x68>;
+	};
+
+	mx6_eeprom: at24@54 {
+		compatible = "at,24c128";
+		pagesize = <32>; /* TODO: VERIFY PAGE SIZE */
+		reg = <0x54>;
+	};
+};
+
+&i2c3 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c3>;
+	pinctrl-1 = <&pinctrl_i2c3_gpio>;
+	scl-gpios = <&gpio1 3 GPIO_ACTIVE_HIGH>;
+	sda-gpios = <&gpio1 6 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+};
+
+&ldb {
+	status = "okay";
+
+	lvds-channel@0 {
+		fsl,data-mapping = "spwg";
+		fsl,data-width = <24>;
+		status = "okay";
+
+		display-timings {
+			native-mode = <&timing_innolux_10_1>;
+			timing_innolux_10_1: innolux_10_1 {
+				clock-frequency = <71100000>;
+				hactive 	= <1280>;
+				vactive 	= <800>;
+				hback-porch 	= <40>;
+				hfront-porch 	= <40>;
+				vback-porch 	= <10>;
+				vfront-porch 	= <3>;
+				hsync-len 	= <80>;
+				vsync-len 	= <10>;
+				de-active 	= <1>;
+				pixelclk-active = <1>;
+			};
+		};
+	};
+};
+
+&pcie {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pcie>;
+	reset-gpio = <&gpio7 12 0>;
+	status = "okay";
+};
+
+
+&usdhc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	bus-width = <4>;
+	cd-gpios = <&gpio2 2 GPIO_ACTIVE_LOW>;
+	wp-gpios = <&gpio2 3 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+};
+
+&usdhc3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc3>;
+	bus-width = <4>;
+	cd-gpios = <&gpio2 0 GPIO_ACTIVE_LOW>;
+	wp-gpios = <&gpio2 1 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+};
+
+&usdhc4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc4>;
+	bus-width = <8>;
+	non-removable;
+	no-1-8-v;
+	status = "okay";
+};
+
+&usbh1 {
+	vbus-supply = <&reg_usb_h1_vbus>;
+	status = "okay";
+};
+
+&usbotg {
+	vbus-supply = <&reg_usb_otg_vbus>;
+	disable-over-current;
+	dr_mode = "otg";
+	status = "okay";
+};
+
+&sata {
+	status = "okay";
+};
+
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet>;
+	phy-mode = "rmii";
+	phy-reset-gpios = <&gpio1 23 0>;
+	status = "okay";
+
+	fixed-link {
+		speed = <100>;
+		full-duplex;
+	};
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 28ac9f420b65..2bc94a3dbb14 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -345,6 +345,10 @@ config MACH_VF610_TWR
 	bool "Freescale VF610 Tower Board"
 	select ARCH_VF610
 
+config MACH_ZII_RDU2
+	bool "ZII i.MX6Q(+) RDU2"
+	select ARCH_IMX6
+
 endif
 
 # ----------------------------------------------------------
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 983d89635ba9..4038ad4ef5a0 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -408,3 +408,8 @@ pblx-$(CONFIG_MACH_VF610_TWR) += start_vf610_twr
 CFG_start_vf610_twr.pblx.imximg = $(board)/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
 FILE_barebox-vf610-twr.img = start_vf610_twr.pblx.imximg
 image-$(CONFIG_MACH_VF610_TWR) += barebox-vf610-twr.img
+
+pblx-$(CONFIG_MACH_ZII_RDU2) += start_imx6q_zii_rdu2
+CFG_start_imx6q_zii_rdu2.pblx.imximg = $(board)/zii-imx6q-rdu2/flash-header-imx6q-rdu2.imxcfg
+FILE_barebox-zii-imx6q-rdu2.img = start_imx6q_zii_rdu2.pblx.imximg
+image-$(CONFIG_MACH_ZII_RDU2) += barebox-zii-imx6q-rdu2.img
-- 
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
