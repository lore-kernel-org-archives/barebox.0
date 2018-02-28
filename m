Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eqyRX-00037U-0w
 for barebox@lists.infradead.org; Wed, 28 Feb 2018 09:54:39 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <mgr@pengutronix.de>) id 1eqyRL-0005x7-Ey
 for barebox@lists.infradead.org; Wed, 28 Feb 2018 10:54:23 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.90_1)
 (envelope-from <mgr@pengutronix.de>) id 1eqyRL-0007lX-7A
 for barebox@lists.infradead.org; Wed, 28 Feb 2018 10:54:23 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Wed, 28 Feb 2018 10:54:20 +0100
Message-Id: <20180228095420.29662-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH] boards: samx6: add initial support for kontron samx6i
To: barebox@lists.infradead.org

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 arch/arm/boards/Makefile                           |   1 +
 arch/arm/boards/kontron-samx6i/Makefile            |   2 +
 arch/arm/boards/kontron-samx6i/board.c             | 134 ++++++
 .../flash-header-samx6i-duallite.imxcfg            | 111 +++++
 .../kontron-samx6i/flash-header-samx6i-quad.imxcfg | 127 ++++++
 arch/arm/boards/kontron-samx6i/lowlevel.c          |  78 ++++
 arch/arm/configs/imx_v7_defconfig                  |   1 +
 arch/arm/dts/Makefile                              |   2 +
 arch/arm/dts/imx6dl-samx6i.dts                     |  21 +
 arch/arm/dts/imx6q-samx6i.dts                      |  21 +
 arch/arm/dts/imx6qdl-samx6i.dtsi                   | 137 ++++++
 arch/arm/dts/imx6qdl-smarc-samx6i.dtsi             | 470 +++++++++++++++++++++
 arch/arm/mach-imx/Kconfig                          |   4 +
 images/Makefile.imx                                |  30 ++
 14 files changed, 1139 insertions(+)
 create mode 100644 arch/arm/boards/kontron-samx6i/Makefile
 create mode 100644 arch/arm/boards/kontron-samx6i/board.c
 create mode 100644 arch/arm/boards/kontron-samx6i/flash-header-samx6i-duallite.imxcfg
 create mode 100644 arch/arm/boards/kontron-samx6i/flash-header-samx6i-quad.imxcfg
 create mode 100644 arch/arm/boards/kontron-samx6i/lowlevel.c
 create mode 100644 arch/arm/dts/imx6dl-samx6i.dts
 create mode 100644 arch/arm/dts/imx6q-samx6i.dts
 create mode 100644 arch/arm/dts/imx6qdl-samx6i.dtsi
 create mode 100644 arch/arm/dts/imx6qdl-smarc-samx6i.dtsi

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index ca187ccb89..30f4c299f1 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -61,6 +61,7 @@ obj-$(CONFIG_MACH_IMX21ADS)			+= freescale-mx21-ads/
 obj-$(CONFIG_MACH_IMX233_OLINUXINO)		+= imx233-olinuxino/
 obj-$(CONFIG_MACH_IMX27ADS)			+= freescale-mx27-ads/
 obj-$(CONFIG_MACH_KINDLE3)			+= kindle3/
+obj-$(CONFIG_MACH_KONTRON_SAMX6I)		+= kontron-samx6i/
 obj-$(CONFIG_MACH_LENOVO_IX4_300D)		+= lenovo-ix4-300d/
 obj-$(CONFIG_MACH_LUBBOCK)			+= lubbock/
 obj-$(CONFIG_MACH_MAINSTONE)			+= mainstone/
diff --git a/arch/arm/boards/kontron-samx6i/Makefile b/arch/arm/boards/kontron-samx6i/Makefile
new file mode 100644
index 0000000000..01c7a259e9
--- /dev/null
+++ b/arch/arm/boards/kontron-samx6i/Makefile
@@ -0,0 +1,2 @@
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/kontron-samx6i/board.c b/arch/arm/boards/kontron-samx6i/board.c
new file mode 100644
index 0000000000..a6e2fc3c35
--- /dev/null
+++ b/arch/arm/boards/kontron-samx6i/board.c
@@ -0,0 +1,134 @@
+/*
+ * Copyright (C) 2017 Michael Grzeschik, Pengutronix
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
+#define pr_fmt(fmt) "samx6i: " fmt
+
+#include <malloc.h>
+#include <envfs.h>
+#include <environment.h>
+#include <bootsource.h>
+#include <common.h>
+#include <gpio.h>
+#include <init.h>
+#include <of.h>
+#include <mach/bbu.h>
+
+#include <mach/iomux-mx6.h>
+#include <mach/imx6.h>
+
+#include <linux/sizes.h>
+#include <asm/armlinux.h>
+
+#define PCBVERSION_PIN IMX_GPIO_NR(2, 2)
+#define PCBID0_PIN IMX_GPIO_NR(6, 7)
+#define PCBID1_PIN IMX_GPIO_NR(6, 9)
+
+#define SZ_4G 0xEFFFFFF8
+
+static int samx6i_mem_init(void)
+{
+	int ver, id0, id1;
+	resource_size_t size = 0;
+
+	ver = gpio_get_value(PCBVERSION_PIN);
+	id0 = gpio_get_value(PCBID0_PIN);
+	id1 = gpio_get_value(PCBID1_PIN);
+
+	if (of_machine_is_compatible("kontron,imx6q-samx6i")) {
+		if (ver)
+			size = SZ_1G;
+		else if (id0 && id1)
+			size = SZ_4G;
+		else if (id0)
+			size = SZ_2G;
+		else if (id1)
+			size = SZ_1G;
+		else
+			size = SZ_512M;
+	} else if (of_machine_is_compatible("kontron,imx6dl-samx6i")) {
+		if (ver)
+			size = SZ_512M;
+		if (id0 && id1)
+			size = SZ_2G;
+		else if (id0)
+			size = SZ_1G;
+		else if (id1)
+			size = SZ_512M;
+		else
+			size = SZ_128M;
+	}
+
+	if (size)
+		arm_add_mem_device("ram0", 0x10000000, size);
+
+	return 0;
+}
+mem_initcall(samx6i_mem_init);
+
+static int samx6i_devices_init(void)
+{
+	int ret;
+	char *environment_path, *default_environment_path;
+	char *envdev, *default_envdev;
+
+	if (!(of_machine_is_compatible("kontron,imx6q-samx6i") ||
+		of_machine_is_compatible("kontron,imx6dl-samx6i")))
+		return 0;
+
+	barebox_set_hostname("samx6ii");
+	default_environment_path = "/chosen/environment-spinor";
+	default_envdev = "SPI NOR flash";
+
+	switch (bootsource_get()) {
+	case BOOTSOURCE_MMC:
+		environment_path = basprintf("/chosen/environment-sd%d",
+					       bootsource_get_instance() + 1);
+		envdev = "MMC";
+		break;
+	case BOOTSOURCE_SPI:
+		environment_path = basprintf("/chosen/environment-spinor");
+		envdev = "SPI NOR flash";
+		break;
+	default:
+		environment_path = basprintf(default_environment_path);
+		envdev = default_envdev;
+		break;
+	}
+
+	if (environment_path) {
+		ret = of_device_enable_path(environment_path);
+		if (ret < 0)
+			pr_warn("Failed to enable environment partition '%s' (%d)\n",
+				environment_path, ret);
+		free(environment_path);
+	}
+
+	pr_notice("Using environment in %s\n", envdev);
+
+	imx6_bbu_internal_spi_i2c_register_handler("m25p80",
+					"/dev/m25p0.bootloader",
+					BBU_HANDLER_FLAG_DEFAULT);
+
+	imx6_bbu_internal_mmc_register_handler("mmc3",
+					"/dev/mmc3.bootloader",
+					BBU_HANDLER_FLAG_DEFAULT);
+
+	return 0;
+}
+device_initcall(samx6i_devices_init);
diff --git a/arch/arm/boards/kontron-samx6i/flash-header-samx6i-duallite.imxcfg b/arch/arm/boards/kontron-samx6i/flash-header-samx6i-duallite.imxcfg
new file mode 100644
index 0000000000..761716dd4d
--- /dev/null
+++ b/arch/arm/boards/kontron-samx6i/flash-header-samx6i-duallite.imxcfg
@@ -0,0 +1,111 @@
+soc imx6
+loadaddr 0x10000000
+dcdofs 0x400
+
+wm 32 0x020e0774 0x000c0000
+wm 32 0x020e0754 0x00000000
+
+wm 32 0x020e04ac 0x00000030
+wm 32 0x020e04b0 0x00000030
+
+wm 32 0x020e0464 0x00000030
+wm 32 0x020e0490 0x00000030
+wm 32 0x020e074c 0x00000030
+
+wm 32 0x020e0494 0x000c0030
+wm 32 0x020e04a4 0x00003000
+wm 32 0x020e04a8 0x00003000
+wm 32 0x020e04a0 0x00000000
+wm 32 0x020e04b4 0x00003030
+wm 32 0x020e04b8 0x00003030
+wm 32 0x020e076c 0x00000030
+
+wm 32 0x020e0750 0x00020000
+wm 32 0x020e04bc 0x00000038
+wm 32 0x020e04c0 0x00000038
+wm 32 0x020e04c4 0x00000038
+wm 32 0x020e04c8 0x00000038
+wm 32 0x020e04cc 0x00000038
+wm 32 0x020e04d0 0x00000038
+wm 32 0x020e04d4 0x00000038
+wm 32 0x020e04d8 0x00000038
+
+wm 32 0x020e0760 0x00020000
+wm 32 0x020e0764 0x00000030
+wm 32 0x020e0770 0x00000030
+wm 32 0x020e0778 0x00000030
+wm 32 0x020e077c 0x00000030
+wm 32 0x020e0780 0x00000030
+wm 32 0x020e0784 0x00000030
+wm 32 0x020e078c 0x00000030
+wm 32 0x020e0748 0x00000030
+
+wm 32 0x020e0470 0x00000030
+wm 32 0x020e0474 0x00000030
+wm 32 0x020e0478 0x00000030
+wm 32 0x020e047c 0x00000030
+wm 32 0x020e0480 0x00000030
+wm 32 0x020e0484 0x00000030
+wm 32 0x020e0488 0x00000030
+wm 32 0x020e048c 0x000C0030
+
+wm 32 0x021b0800 0xa1390003
+wm 32 0x021b4800 0xa1390003
+
+wm 32 0x021b080c 0x0040003c
+wm 32 0x021b0810 0x0032003e
+
+wm 32 0x021b083c 0x42350231
+wm 32 0x021b0840 0x021a0218
+wm 32 0x021b0848 0x4b4b4e49
+wm 32 0x021b0850 0x3f3f3035
+
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b0824 0x33333333
+wm 32 0x021b0828 0x33333333
+wm 32 0x021b481c 0x33333333
+wm 32 0x021b4820 0x33333333
+wm 32 0x021b4824 0x33333333
+wm 32 0x021b4828 0x33333333
+
+
+wm 32 0x021b08b8 0x00000800
+wm 32 0x021b48b8 0x00000800
+
+wm 32 0x021b0004 0x0002002d
+wm 32 0x021b0008 0x00333030
+wm 32 0x021b000c 0x696d5323
+wm 32 0x021b0010 0xb66e8c63
+wm 32 0x021b0014 0x01ff00db
+wm 32 0x021b0018 0x00001740
+wm 32 0x021b001c 0x00008000
+wm 32 0x021b002c 0x000026d2
+wm 32 0x021b0030 0x006d0e21
+wm 32 0x021b0040 0x00000027
+wm 32 0x021b0000 0x84190000
+wm 32 0x021b001c 0x04008032
+wm 32 0x021b001c 0x00008033
+wm 32 0x021b001c 0x00048031
+wm 32 0x021b001c 0x07208030
+wm 32 0x021b001c 0x04008040
+wm 32 0x021b0020 0x00005800
+wm 32 0x021b0818 0x00022227
+wm 32 0x021b4818 0x00022227
+wm 32 0x021b0004 0x0002556d
+wm 32 0x021b4004 0x00011006
+wm 32 0x021b001c 0x00000000
+
+/* set the default clock gate to save power */
+wm 32 0x020c4068 0x00C03F3F
+wm 32 0x020c406c 0x0030FC03
+wm 32 0x020c4070 0x0FFFC000
+wm 32 0x020c4074 0x3FF00000
+wm 32 0x020c4078 0x00FFF300
+wm 32 0x020c407c 0x0F0000C3
+wm 32 0x020c4080 0x000003FF
+
+wm 32 0x020e0010 0xf00000ff
+
+wm 32 0x020e0018 0x00070007
+wm 32 0x020e001c 0x00070007
diff --git a/arch/arm/boards/kontron-samx6i/flash-header-samx6i-quad.imxcfg b/arch/arm/boards/kontron-samx6i/flash-header-samx6i-quad.imxcfg
new file mode 100644
index 0000000000..80dadfcac5
--- /dev/null
+++ b/arch/arm/boards/kontron-samx6i/flash-header-samx6i-quad.imxcfg
@@ -0,0 +1,127 @@
+soc imx6
+loadaddr 0x10000000
+dcdofs 0x400
+
+wm 32 0x020e05a8 0x00000030
+wm 32 0x020e05b0 0x00000030
+wm 32 0x020e0524 0x00000030
+wm 32 0x020e051c 0x00000030
+
+wm 32 0x020e0518 0x00000030
+wm 32 0x020e050c 0x00000030
+wm 32 0x020e05b8 0x00000030
+wm 32 0x020e05c0 0x00000030
+
+wm 32 0x020e05ac 0x00020030
+wm 32 0x020e05b4 0x00020030
+wm 32 0x020e0528 0x00020030
+wm 32 0x020e0520 0x00020030
+
+wm 32 0x020e0514 0x00020030
+wm 32 0x020e0510 0x00020030
+wm 32 0x020e05bc 0x00020030
+wm 32 0x020e05c4 0x00020030
+
+wm 32 0x020e056c 0x00020030
+wm 32 0x020e0578 0x00020030
+wm 32 0x020e0588 0x00020030
+wm 32 0x020e0594 0x00020030
+
+wm 32 0x020e057c 0x00020030
+wm 32 0x020e0590 0x00003000
+wm 32 0x020e0598 0x00003000
+wm 32 0x020e058c 0x00000000
+
+wm 32 0x020e059c 0x00003030
+wm 32 0x020e05a0 0x00003030
+wm 32 0x020e0784 0x00000030
+wm 32 0x020e0788 0x00000030
+
+wm 32 0x020e0794 0x00000030
+wm 32 0x020e079c 0x00000030
+wm 32 0x020e07a0 0x00000030
+wm 32 0x020e07a4 0x00000030
+
+wm 32 0x020e07a8 0x00000030
+wm 32 0x020e0748 0x00000030
+wm 32 0x020e074c 0x00000030
+wm 32 0x020e0750 0x00020000
+
+wm 32 0x020e0758 0x00000000
+wm 32 0x020e0774 0x00020000
+wm 32 0x020e078c 0x00000030
+wm 32 0x020e0798 0x000C0000
+
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b0824 0x33333333
+wm 32 0x021b0828 0x33333333
+
+wm 32 0x021b481c 0x33333333
+wm 32 0x021b4820 0x33333333
+wm 32 0x021b4824 0x33333333
+wm 32 0x021b4828 0x33333333
+
+wm 32 0x021b0018 0x00081740
+
+wm 32 0x021b001c 0x00008000
+wm 32 0x021b000c 0x898E7975
+wm 32 0x021b0010 0xFF538E64
+wm 32 0x021b0014 0x01FF00DD
+wm 32 0x021b002c 0x000026D2
+
+wm 32 0x021b0030 0x005B0E21
+wm 32 0x021b0008 0x09444040
+wm 32 0x021b0004 0x00025576
+/*  CS0_END = 4GB */
+wm 32 0x021b0040 0x0000007F
+
+wm 32 0x021b0000 0x841A0000
+
+wm 32 0x021b001c 0x04088032
+wm 32 0x021b001c 0x00008033
+wm 32 0x021b001c 0x00428031
+wm 32 0x021b001c 0x09408030
+
+wm 32 0x021b001c 0x04008040
+wm 32 0x021b0800 0xA1390003
+wm 32 0x021b4800 0xA1390003
+wm 32 0x021b0020 0x00007800
+wm 32 0x021b0818 0x00022227
+wm 32 0x021b4818 0x00022227
+
+wm 32 0x021b083c 0x42740304
+wm 32 0x021b0840 0x026e0265
+wm 32 0x021b483c 0x02750306
+wm 32 0x021b4840 0x02720244
+wm 32 0x021b0848 0x463d4041
+wm 32 0x021b4848 0x42413c47
+wm 32 0x021b0850 0x37414441
+wm 32 0x021b4850 0x4633473b
+
+wm 32 0x021b080c 0x0025001f
+wm 32 0x021b0810 0x00290027
+
+wm 32 0x021b480c 0x001f002b
+wm 32 0x021b4810 0x000f0029
+
+wm 32 0x021b08b8 0x00000800
+wm 32 0x021b48b8 0x00000800
+
+wm 32 0x021b001c 0x00000000
+wm 32 0x021b0404 0x00011006
+
+/* set the default clock gate to save power */
+wm 32 0x020c4068 0x00C03F3F
+wm 32 0x020c406c 0x0030FC03
+wm 32 0x020c4070 0x0FFFC000
+wm 32 0x020c4074 0x3FF00000
+wm 32 0x020c4078 0x00FFF300
+wm 32 0x020c407c 0x0F0000C3
+wm 32 0x020c4080 0x000003FF
+
+/* enable AXI cache for VDOA/VPU/IPU */
+wm 32 0x020e0010 0xF00000FF
+/* set IPU AXI-id0 Qos=0xf(bypass) AXI-id1 Qos=0x7 */
+wm 32 0x020e0018 0x007F007F
+wm 32 0x020e001c 0x007F007F
diff --git a/arch/arm/boards/kontron-samx6i/lowlevel.c b/arch/arm/boards/kontron-samx6i/lowlevel.c
new file mode 100644
index 0000000000..b01f7d7fbc
--- /dev/null
+++ b/arch/arm/boards/kontron-samx6i/lowlevel.c
@@ -0,0 +1,78 @@
+/*
+ * Copyright (C) 2017 Michael Grzeschik <m.grzeschik@pengutronix.de>
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
+#include <mach/imx6.h>
+
+static inline void setup_uart(void)
+{
+	void __iomem *iomuxbase = (void *)MX6_IOMUXC_BASE_ADDR;
+
+	writel(0x4, iomuxbase + 0x016c);
+
+	imx6_ungate_all_peripherals();
+	imx6_uart_setup_ll();
+
+	putc_ll('>');
+}
+
+BAREBOX_IMD_TAG_STRING(samx6i_memsize_SZ_512M, IMD_TYPE_PARAMETER, "memsize=512", 0);
+BAREBOX_IMD_TAG_STRING(samx6i_memsize_SZ_1G, IMD_TYPE_PARAMETER, "memsize=1024", 0);
+BAREBOX_IMD_TAG_STRING(samx6i_memsize_SZ_2G, IMD_TYPE_PARAMETER, "memsize=2048", 0);
+
+static void __noreturn start_imx6_samx6i_common(uint32_t size,
+						bool do_early_uart_config,
+						void *fdt_blob_fixed_offset)
+{
+	void *fdt;
+
+	imx6_cpu_lowlevel_init();
+	/* OCRAM Free Area is 0x00907000 to 0x00938000 (196KB) */
+	arm_setup_stack(0x00920000 - 8);
+
+	if (do_early_uart_config && IS_ENABLED(CONFIG_DEBUG_LL))
+		setup_uart();
+
+	fdt = fdt_blob_fixed_offset - get_runtime_offset();
+
+	barebox_arm_entry(0x10000000, size, fdt);
+}
+
+#define SAMX6I_ENTRY(name, fdt_name, memory_size, do_early_uart_config)	\
+	ENTRY_FUNCTION(name, r0, r1, r2)				\
+	{								\
+		extern char __dtb_##fdt_name##_start[];			\
+									\
+		IMD_USED(samx6i_memsize_##memory_size);		\
+									\
+		start_imx6_samx6i_common(memory_size, do_early_uart_config, \
+					 __dtb_##fdt_name##_start);	\
+	}
+
+SAMX6I_ENTRY(start_imx6q_samx6i_512m, imx6q_samx6i, SZ_512M, true);
+SAMX6I_ENTRY(start_imx6q_samx6i_1g, imx6q_samx6i, SZ_1G, true);
+SAMX6I_ENTRY(start_imx6q_samx6i_2g, imx6q_samx6i, SZ_2G, true);
+
+SAMX6I_ENTRY(start_imx6dl_samx6i_512m, imx6dl_samx6i, SZ_512M, true);
+SAMX6I_ENTRY(start_imx6dl_samx6i_1g, imx6dl_samx6i, SZ_1G, true);
+SAMX6I_ENTRY(start_imx6dl_samx6i_2g, imx6dl_samx6i, SZ_2G, true);
diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index 62d623806c..08ec6eb862 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -11,6 +11,7 @@ CONFIG_MACH_GUF_VINCELL_XLOAD=y
 CONFIG_MACH_TQMA53=y
 CONFIG_MACH_FREESCALE_MX53_VMX53=y
 CONFIG_MACH_PHYTEC_SOM_IMX6=y
+CONFIG_MACH_KONTRON_SAMX6I=y
 CONFIG_MACH_DFI_FS700_M60=y
 CONFIG_MACH_GUF_SANTARO=y
 CONFIG_MACH_REALQ7=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 0526a6f407..db703c1e0f 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -28,6 +28,8 @@ pbl-dtb-$(CONFIG_MACH_GLOBALSCALE_MIRABOX) += armada-370-mirabox-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_GUF_SANTARO) += imx6q-guf-santaro.dtb.o
 pbl-dtb-$(CONFIG_MACH_GUF_VINCELL) += imx53-guf-vincell.dtb.o imx53-guf-vincell-lt.dtb.o
 pbl-dtb-$(CONFIG_MACH_GW_VENTANA) += imx6q-gw54xx.dtb.o
+pbl-dtb-$(CONFIG_MACH_KONTRON_SAMX6I) += imx6q-samx6i.dtb.o \
+					imx6dl-samx6i.dtb.o
 pbl-dtb-$(CONFIG_MACH_LENOVO_IX4_300D) += armada-xp-lenovo-ix4-300d-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP) += armada-xp-gp-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_NETGEAR_RN104) += armada-370-rn104-bb.dtb.o
diff --git a/arch/arm/dts/imx6dl-samx6i.dts b/arch/arm/dts/imx6dl-samx6i.dts
new file mode 100644
index 0000000000..b060fc075a
--- /dev/null
+++ b/arch/arm/dts/imx6dl-samx6i.dts
@@ -0,0 +1,21 @@
+/*
+ * Copyright 2017 Michael Grzeschik, Pengutronix
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
+#include <arm/imx6dl.dtsi>
+#include "imx6dl.dtsi"
+#include "imx6qdl-smarc-samx6i.dtsi"
+#include "imx6qdl-samx6i.dtsi"
+
+/ {
+	model = "Kontron sAMX6i";
+	compatible = "kontron,imx6dl-samx6i", "fsl,imx6dl";
+};
diff --git a/arch/arm/dts/imx6q-samx6i.dts b/arch/arm/dts/imx6q-samx6i.dts
new file mode 100644
index 0000000000..13210cd5c1
--- /dev/null
+++ b/arch/arm/dts/imx6q-samx6i.dts
@@ -0,0 +1,21 @@
+/*
+ * Copyright 2017 Michael Grzeschik, Pengutronix
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
+#include <arm/imx6q.dtsi>
+#include "imx6q.dtsi"
+#include "imx6qdl-smarc-samx6i.dtsi"
+#include "imx6qdl-samx6i.dtsi"
+
+/ {
+	model = "Kontron sAMX6i";
+	compatible = "kontron,imx6q-samx6i", "fsl,imx6q";
+};
diff --git a/arch/arm/dts/imx6qdl-samx6i.dtsi b/arch/arm/dts/imx6qdl-samx6i.dtsi
new file mode 100644
index 0000000000..6783fbb48d
--- /dev/null
+++ b/arch/arm/dts/imx6qdl-samx6i.dtsi
@@ -0,0 +1,137 @@
+/*
+ * Copyright 2018 Pengutronix, Michael Grzeschik
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
+/ {
+	chosen {
+		linux,stdout-path = &uart2;
+
+		environment-spinor {
+			compatible = "barebox,environment";
+			device-path = &flash, "partname:environment";
+			status = "disabled";
+		};
+
+		environment-sd4 {
+			compatible = "barebox,environment";
+			device-path = &usdhc4, "partname:environment";
+			status = "disabled";
+		};
+	};
+};
+
+&ecspi4 {
+	status = "okay";
+};
+
+&fec {
+	status = "okay";
+};
+
+&flash {
+	status = "okay";
+
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "bootloader";
+		reg = <0x000000 0x0c0000>;
+	};
+
+	partition@c0000 {
+		label = "environment";
+		reg = <0x0c0000 0x010000>;
+	};
+
+	partition@d0000 {
+		label = "user";
+		reg = <0x0d0000 0x200000>;
+	};
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_boot>;
+
+	pinctrl_boot: boot {
+		fsl,pins = <
+			/* GPIOS for version and id detection */
+			MX6QDL_PAD_NANDF_CLE__GPIO6_IO07	0x80000000
+			MX6QDL_PAD_NANDF_WP_B__GPIO6_IO09	0x80000000
+			MX6QDL_PAD_NANDF_D2__GPIO2_IO02		0x80000000
+		>;
+	};
+};
+
+&mmdc0 {
+	/* We define RAM by version and id pins in boardfile */
+	status = "disabled";
+};
+
+&uart2 {
+	status = "okay";
+};
+
+&usbotg {
+	status = "okay";
+};
+
+&usbh1 {
+	status = "okay";
+};
+
+&usdhc4 {
+	status = "okay";
+
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "bootloader";
+		reg = <0x0 0xe0000>;
+	};
+
+	partition@e0000 {
+		label = "environment";
+		reg = <0xe0000 0x20000>;
+	};
+};
diff --git a/arch/arm/dts/imx6qdl-smarc-samx6i.dtsi b/arch/arm/dts/imx6qdl-smarc-samx6i.dtsi
new file mode 100644
index 0000000000..e259a97d5d
--- /dev/null
+++ b/arch/arm/dts/imx6qdl-smarc-samx6i.dtsi
@@ -0,0 +1,470 @@
+/*
+ * Copyright 2017 Priit Laes <plaes@plaes.org>
+ *
+ * Based on initial work by Nikita Yushchenko <nyushchenko at dev.rtsoft.ru>
+ *
+ * This file is dual-licensed: you can use it either under the terms
+ * of the GPL or the X11 license, at your option. Note that this dual
+ * licensing only applies to this file, and not this project as a
+ * whole.
+ *
+ *  a) This file is free software; you can redistribute it and/or
+ *     modify it under the terms of the GNU General Public License as
+ *     published by the Free Software Foundation; either version 2 of
+ *     the License, or (at your option) any later version.
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
+ *
+ */
+
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	regulators {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		reg_3v3_s5: regulator@0 {
+			compatible = "regulator-fixed";
+			reg = <0>;
+			regulator-name = "V_3V3_S5";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			regulator-boot-on;
+			regulator-always-on;
+		};
+
+		reg_1v8_s5: regulator@1 {
+			compatible = "regulator-fixed";
+			reg = <1>;
+			regulator-name = "V_1V8_S5";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			regulator-boot-on;
+			regulator-always-on;
+		};
+
+		reg_3v3_s0: regulator@2 {
+			compatible = "regulator-fixed";
+			reg = <2>;
+			regulator-name = "V_3V3_S0";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			regulator-boot-on;
+			regulator-always-on;
+		};
+
+		reg_1v0_s0: regulator@3 {
+			compatible = "regulator-fixed";
+			reg = <3>;
+			regulator-name = "V_1V0_S0";
+			regulator-min-microvolt = <1000000>;
+			regulator-max-microvolt = <1000000>;
+			regulator-boot-on;
+			regulator-always-on;
+		};
+	};
+
+	i2c_pfuze: i2c-gpio-0 {
+		compatible = "i2c-gpio";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_i2c_gpio_0>;
+		sda-gpios = <&gpio1 28 0>;
+		scl-gpios = <&gpio1 30 0>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		i2c-gpio,delay-us = <2>;
+	};
+};
+
+&can1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexcan1>;
+	status = "disabled";
+};
+
+&can2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexcan2>;
+	status = "disabled";
+};
+
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet_smarc>;
+	phy-reset-gpios = <&gpio1 25 GPIO_ACTIVE_LOW>;
+	phy-mode = "rgmii";
+	status = "disabled";
+};
+
+&i2c_pfuze {
+	pfuze100@08 {
+		compatible = "fsl,pfuze100";
+		reg = <0x08>;
+
+		/* Looks unused by pfuze100 driver */
+		interrupt-parent = <&gpio7>;
+		interrupts = <13 8>;	/* 8 = level, active low */
+
+		regulators {
+			reg_v_core_s0: sw1ab {
+				regulator-name = "V_CORE_S0";
+				regulator-min-microvolt = <300000>;
+				regulator-max-microvolt = <1875000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			reg_vddsoc_s0: sw1c {
+				regulator-name = "V_VDDSOC_S0";
+				regulator-min-microvolt = <300000>;
+				regulator-max-microvolt = <1875000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			reg_3v15_s0: sw2 {
+				regulator-name = "V_3V15_S0";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			/* sw3a/b is used in dual mode, but driver does not
+			 * support it? Although, there's no need to control
+			 * DDR power - so just leaving dummy entries for sw3a
+			 * and sw3b for now.
+			 */
+			sw3a {
+				regulator-min-microvolt = <400000>;
+				regulator-max-microvolt = <1975000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			sw3b {
+				regulator-min-microvolt = <400000>;
+				regulator-max-microvolt = <1975000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			reg_1v8_s0: sw4 {
+				regulator-name = "V_1V8_S0";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			/* Regulator for USB */
+			reg_5v0_s0: swbst {
+				regulator-name = "V_5V0_S0";
+				regulator-min-microvolt = <5000000>;
+				regulator-max-microvolt = <5150000>;
+				regulator-boot-on;
+			};
+
+			reg_vsnvs: vsnvs {
+				regulator-min-microvolt = <1000000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			reg_vrefddr: vrefddr {
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			/* Per schematics, of all VGEN's, only VGEN5 has some
+			 * usage ... but even that - over DNI resistor
+			 */
+			vgen1 {
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1550000>;
+			};
+
+			vgen2 {
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1550000>;
+			};
+
+			vgen3 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+			};
+
+			vgen4 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+			};
+
+			reg_2v5_s0: vgen5 {
+				regulator-name = "V_2V5_S0";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+			};
+
+			vgen6 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+			};
+		};
+	};
+};
+
+&ecspi4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi4>;
+	fsl,spi-num-chipselects = <3>;
+	cs-gpios = <&gpio3 24 0>, <&gpio3 29 0>, <&gpio3 25 0>;
+	status = "disabled";
+
+	flash: m25p80@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "winbond,w25q64dw", "jedec,spi-nor";
+		spi-max-frequency = <20000000>;
+		reg = <0>;
+		status = "disabled";
+	};
+};
+
+&i2c3 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c3>;
+	status = "disabled";
+};
+
+&pcie {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pcie>;
+	wake-up-gpio = <&gpio6 18 GPIO_ACTIVE_HIGH>;
+	reset-gpio = <&gpio3 13 GPIO_ACTIVE_HIGH>;
+	status = "disabled";
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1_smarc>;
+	fsl,uart-has-rtscts;
+};
+
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2_smarc>;
+	status = "disabled";
+};
+
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart4_smarc>;
+	fsl,uart-has-rtscts;
+	status = "disabled";
+};
+
+&uart5 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart5_smarc>;
+	status = "disabled";
+};
+
+&usbotg {
+	/*
+	 * no 'imx6-usb-charger-detection'
+	 * since USB_OTG_CHD_B pin is not wired
+	 */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usbotg>;
+	status = "disabled";
+};
+
+&usbh1 {
+	vbus-supply = <&reg_5v0_s0>;
+	status = "disabled";
+};
+
+&usdhc4 {
+	/* Internal eMMC, optional on some boards */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc4>;
+	bus-width = <8>;
+	no-1-8-v;
+	non-removable;
+	status = "disabled";
+};
+
+&iomuxc {
+	pinctrl_flexcan1: flexcan1-smarc {
+		fsl,pins = <
+			MX6QDL_PAD_GPIO_7__FLEXCAN1_TX 0x80000000
+			MX6QDL_PAD_GPIO_8__FLEXCAN1_RX 0x80000000
+		>;
+	};
+
+	pinctrl_flexcan2: flexcan2-smarc {
+		fsl,pins = <
+			MX6QDL_PAD_KEY_COL4__FLEXCAN2_TX 0x80000000
+			MX6QDL_PAD_KEY_ROW4__FLEXCAN2_RX 0x80000000
+		>;
+	};
+
+	pinctrl_enet_smarc: fecgrp-smarc {
+		fsl,pins = <
+			MX6QDL_PAD_ENET_MDIO__ENET_MDIO       0x1b0b0
+			MX6QDL_PAD_ENET_MDC__ENET_MDC         0x1b0b0
+			MX6QDL_PAD_RGMII_TXC__RGMII_TXC       0x1b0b0
+			MX6QDL_PAD_RGMII_TD0__RGMII_TD0       0x1b0b0
+			MX6QDL_PAD_RGMII_TD1__RGMII_TD1       0x1b0b0
+			MX6QDL_PAD_RGMII_TD2__RGMII_TD2       0x1b0b0
+			MX6QDL_PAD_RGMII_TD3__RGMII_TD3       0x1b0b0
+			MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL 0x1b0b0
+			MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK  0x1b0b0
+			MX6QDL_PAD_RGMII_RXC__RGMII_RXC       0x1b0b0
+			MX6QDL_PAD_RGMII_RD0__RGMII_RD0       0x1b0b0
+			MX6QDL_PAD_RGMII_RD1__RGMII_RD1       0x1b0b0
+			MX6QDL_PAD_RGMII_RD2__RGMII_RD2       0x1b0b0
+			MX6QDL_PAD_RGMII_RD3__RGMII_RD3       0x1b0b0
+			MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL 0x1b0b0
+			MX6QDL_PAD_ENET_CRS_DV__GPIO1_IO25    0x80000000
+		>;
+	};
+
+	pinctrl_i2c_gpio_0: i2c-gpio-0-smarc {
+		fsl,pins = <
+			/* SCL GPIO */
+			MX6QDL_PAD_ENET_TXD0__GPIO1_IO30  0x80000000
+			/* SDA GPIO */
+			MX6QDL_PAD_ENET_TX_EN__GPIO1_IO28 0x80000000
+		>;
+	};
+
+	pinctrl_i2c3: i2c3-smarc {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_D17__I2C3_SCL		0x4001b8b1
+			MX6QDL_PAD_EIM_D18__I2C3_SDA		0x4001b8b1
+		>;
+	};
+
+	pinctrl_ecspi4: ecspi4-smarc {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_D21__ECSPI4_SCLK 0x80000000
+			MX6QDL_PAD_EIM_D28__ECSPI4_MOSI 0x80000000
+			MX6QDL_PAD_EIM_D22__ECSPI4_MISO 0x80000000
+                        MX6QDL_PAD_EIM_D29__ECSPI4_SS0  0x80000000
+
+			/* In hardware, ECSPI4's SS0,SS1,SS3 are wired.
+			   But spi-imx driver support only continuous
+			   numbering, and only can use GPIOs (and not
+			   ECSPI's hardware SS) for CS. So linux view
+			   of CS numbers differs from hw view, and
+			   pins are configured as GPIOs */
+
+			/* physical - CS2, in linux - CS0, either internal flash or SMARC CS0 */
+			MX6QDL_PAD_EIM_D24__GPIO3_IO24 0x80000000
+			/* physical - CS0, in linux - CS1, either SMARC CS0 or not-connected */
+			MX6QDL_PAD_EIM_D29__GPIO3_IO29 0x80000000
+			/* physical - CS3, in linux - CS2, SMARC CS1 */
+			MX6QDL_PAD_EIM_D25__GPIO3_IO25 0x80000000
+		>;
+	};
+
+	pinctrl_pcie: pcie-smarc {
+		fsl,pins = <
+			/* RST_PCIE_A# */
+			MX6QDL_PAD_EIM_DA13__GPIO3_IO13 0x80000000
+			/* PCIE_WAKE# */
+			MX6QDL_PAD_SD3_DAT6__GPIO6_IO18 0x80000000
+		>;
+	};
+
+	pinctrl_uart1_smarc: uart1grp-smarc {
+		fsl,pins = <
+			MX6QDL_PAD_CSI0_DAT11__UART1_RX_DATA 0x1b0b1
+			MX6QDL_PAD_CSI0_DAT10__UART1_TX_DATA 0x1b0b1
+			MX6QDL_PAD_EIM_D20__UART1_RTS_B 0x1b0b1
+			MX6QDL_PAD_EIM_D19__UART1_CTS_B 0x1b0b1
+		>;
+	};
+
+	pinctrl_uart2_smarc: uart2grp-smarc {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_D27__UART2_RX_DATA 0x1b0b1
+			MX6QDL_PAD_EIM_D26__UART2_TX_DATA 0x1b0b1
+		>;
+	};
+
+	pinctrl_uart4_smarc: uart4grp-smarc {
+		fsl,pins = <
+			MX6QDL_PAD_CSI0_DAT13__UART4_RX_DATA 0x1b0b1
+			MX6QDL_PAD_CSI0_DAT12__UART4_TX_DATA 0x1b0b1
+			MX6QDL_PAD_CSI0_DAT16__UART4_RTS_B 0x1b0b1
+			MX6QDL_PAD_CSI0_DAT17__UART4_CTS_B 0x1b0b1
+		>;
+	};
+
+	pinctrl_uart5_smarc: uart5grp-smarc {
+		fsl,pins = <
+			MX6QDL_PAD_CSI0_DAT15__UART5_RX_DATA 0x1b0b1
+			MX6QDL_PAD_CSI0_DAT14__UART5_TX_DATA 0x1b0b1
+		>;
+	};
+
+	pinctrl_usbotg: usbotg-grp-smarc {
+		fsl,pins = <
+			MX6QDL_PAD_GPIO_1__USB_OTG_ID 0x1f8b0
+			/* TODO: Comment out power and OC gpio's for now, since
+			 * these are not used by driver
+			 */
+			/* USB power */
+			// MX6QDL_PAD_CSI0_PIXCLK__GPIO5_IO18 0x80000000
+			/* USB OC */
+			// MX6QDL_PAD_CSI0_DATA_EN__GPIO5_IO20 0x80000000
+		>;
+	};
+
+	pinctrl_usdhc4: usdhc4grp-smarc {
+		fsl,pins = <
+			MX6QDL_PAD_SD4_CLK__SD4_CLK 0x17059
+			MX6QDL_PAD_SD4_CMD__SD4_CMD 0x17059
+			MX6QDL_PAD_SD4_DAT0__SD4_DATA0 0x17059
+			MX6QDL_PAD_SD4_DAT1__SD4_DATA1 0x17059
+			MX6QDL_PAD_SD4_DAT2__SD4_DATA2 0x17059
+			MX6QDL_PAD_SD4_DAT3__SD4_DATA3 0x17059
+			MX6QDL_PAD_SD4_DAT4__SD4_DATA4 0x17059
+			MX6QDL_PAD_SD4_DAT5__SD4_DATA5 0x17059
+			MX6QDL_PAD_SD4_DAT6__SD4_DATA6 0x17059
+			MX6QDL_PAD_SD4_DAT7__SD4_DATA7 0x17059
+		>;
+	};
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index eb135c3f53..cf5338e5fa 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -294,6 +294,10 @@ config MACH_PHYTEC_SOM_IMX6
         select ARCH_IMX6
 	select ARCH_IMX6UL
 
+config MACH_KONTRON_SAMX6I
+        bool "Kontron sAMX6i"
+        select ARCH_IMX6
+
 config MACH_DFI_FS700_M60
 	bool "DFI i.MX6 FS700 M60 Q7 Board"
 	select ARCH_IMX6
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 5e0043f1f0..4ed75ea3b9 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -455,6 +455,36 @@ CFG_start_phytec_phycore_imx6ull_som_256mb.pblx.imximg = $(board)/phytec-som-imx
 FILE_barebox-phytec-phycore-imx6ull-256mb.img = start_phytec_phycore_imx6ull_som_256mb.pblx.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6ull-256mb.img
 
+pblx-$(CONFIG_MACH_KONTRON_SAMX6I) += start_imx6q_samx6i_512m
+CFG_start_imx6q_samx6i_512m.pblx.imximg = $(board)/kontron-samx6i/flash-header-samx6i-quad.imxcfg
+FILE_barebox-imx6q-samx6i-512m.img = start_imx6q_samx6i_512m.pblx.imximg
+image-$(CONFIG_MACH_KONTRON_SAMX6I) += barebox-imx6q-samx6i-512m.img
+
+pblx-$(CONFIG_MACH_KONTRON_SAMX6I) += start_imx6q_samx6i_1g
+CFG_start_imx6q_samx6i_1g.pblx.imximg = $(board)/kontron-samx6i/flash-header-samx6i-quad.imxcfg
+FILE_barebox-imx6q-samx6i-1g.img = start_imx6q_samx6i_1g.pblx.imximg
+image-$(CONFIG_MACH_KONTRON_SAMX6I) += barebox-imx6q-samx6i-1g.img
+
+pblx-$(CONFIG_MACH_KONTRON_SAMX6I) += start_imx6q_samx6i_2g
+CFG_start_imx6q_samx6i_2g.pblx.imximg = $(board)/kontron-samx6i/flash-header-samx6i-quad.imxcfg
+FILE_barebox-imx6q-samx6i-2g.img = start_imx6q_samx6i_2g.pblx.imximg
+image-$(CONFIG_MACH_KONTRON_SAMX6I) += barebox-imx6q-samx6i-2g.img
+
+pblx-$(CONFIG_MACH_KONTRON_SAMX6I) += start_imx6dl_samx6i_512m
+CFG_start_imx6dl_samx6i_512m.pblx.imximg = $(board)/kontron-samx6i/flash-header-samx6i-duallite.imxcfg
+FILE_barebox-imx6dl-samx6i-512m.img = start_imx6dl_samx6i_512m.pblx.imximg
+image-$(CONFIG_MACH_KONTRON_SAMX6I) += barebox-imx6dl-samx6i-512m.img
+
+pblx-$(CONFIG_MACH_KONTRON_SAMX6I) += start_imx6dl_samx6i_1g
+CFG_start_imx6dl_samx6i_1g.pblx.imximg = $(board)/kontron-samx6i/flash-header-samx6i-duallite.imxcfg
+FILE_barebox-imx6dl-samx6i-1g.img = start_imx6dl_samx6i_1g.pblx.imximg
+image-$(CONFIG_MACH_KONTRON_SAMX6I) += barebox-imx6dl-samx6i-1g.img
+
+pblx-$(CONFIG_MACH_KONTRON_SAMX6I) += start_imx6dl_samx6i_2g
+CFG_start_imx6dl_samx6i_2g.pblx.imximg = $(board)/kontron-samx6i/flash-header-samx6i-duallite.imxcfg
+FILE_barebox-imx6dl-samx6i-2g.img = start_imx6dl_samx6i_2g.pblx.imximg
+image-$(CONFIG_MACH_KONTRON_SAMX6I) += barebox-imx6dl-samx6i-2g.img
+
 pblx-$(CONFIG_MACH_GW_VENTANA) += start_imx6q_gw54xx_1gx64
 CFG_start_imx6q_gw54xx_1gx64.pblx.imximg = $(board)/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg
 FILE_barebox-gateworks-imx6q-ventana-1gx64.img = start_imx6q_gw54xx_1gx64.pblx.imximg
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
