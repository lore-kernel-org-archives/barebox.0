Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cxdYI-00010K-EQ
 for barebox@lists.infradead.org; Mon, 10 Apr 2017 17:56:37 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <mgr@pengutronix.de>) id 1cxdXu-0005YC-AP
 for barebox@lists.infradead.org; Mon, 10 Apr 2017 19:56:10 +0200
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.88)
 (envelope-from <mgr@pengutronix.de>) id 1cxdXu-00085v-2W
 for barebox@lists.infradead.org; Mon, 10 Apr 2017 19:56:10 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Mon, 10 Apr 2017 19:55:59 +0200
Message-Id: <20170410175559.29476-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX6: add Technexion Pico Hobbit support
To: barebox@lists.infradead.org

This adds support support for the i.MX6UL Technexion Pico Hobbit.
The board comes with different amounts of RAM. We create one image
for the 256MB and one for the 512MB variant.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 arch/arm/boards/Makefile                           |   1 +
 arch/arm/boards/technexion-pico-hobbit/Makefile    |   7 ++
 arch/arm/boards/technexion-pico-hobbit/board.c     | 105 +++++++++++++++++++++
 .../defaultenv-pico-hobbit/init/automount          |  11 +++
 .../defaultenv-pico-hobbit/network/eth1            |  18 ++++
 .../flash-header-imx6ul-pico-hobbit-256.imxcfg     |  64 +++++++++++++
 .../flash-header-imx6ul-pico-hobbit-512.imxcfg     |  65 +++++++++++++
 arch/arm/boards/technexion-pico-hobbit/lowlevel.c  |  78 +++++++++++++++
 arch/arm/configs/imx_v7_defconfig                  |   1 +
 arch/arm/dts/Makefile                              |   1 +
 arch/arm/dts/imx6ul-pico-hobbit.dts                |  27 ++++++
 arch/arm/mach-imx/Kconfig                          |   6 ++
 images/Makefile.imx                                |  10 ++
 13 files changed, 394 insertions(+)
 create mode 100644 arch/arm/boards/technexion-pico-hobbit/Makefile
 create mode 100644 arch/arm/boards/technexion-pico-hobbit/board.c
 create mode 100644 arch/arm/boards/technexion-pico-hobbit/defaultenv-pico-hobbit/init/automount
 create mode 100644 arch/arm/boards/technexion-pico-hobbit/defaultenv-pico-hobbit/network/eth1
 create mode 100644 arch/arm/boards/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-256.imxcfg
 create mode 100644 arch/arm/boards/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-512.imxcfg
 create mode 100644 arch/arm/boards/technexion-pico-hobbit/lowlevel.c
 create mode 100644 arch/arm/dts/imx6ul-pico-hobbit.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 250ccb8889..d9f9d7778e 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -114,6 +114,7 @@ obj-$(CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC)	+= terasic-de0-nano-soc/
 obj-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT)	+= terasic-sockit/
 obj-$(CONFIG_MACH_SOLIDRUN_CUBOX)		+= solidrun-cubox/
 obj-$(CONFIG_MACH_SOLIDRUN_MICROSOM)		+= solidrun-microsom/
+obj-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT)	+= technexion-pico-hobbit/
 obj-$(CONFIG_MACH_TECHNEXION_WANDBOARD)		+= technexion-wandboard/
 obj-$(CONFIG_MACH_TNY_A9260)			+= tny-a926x/
 obj-$(CONFIG_MACH_TNY_A9263)			+= tny-a926x/
diff --git a/arch/arm/boards/technexion-pico-hobbit/Makefile b/arch/arm/boards/technexion-pico-hobbit/Makefile
new file mode 100644
index 0000000000..b60dcd2bc1
--- /dev/null
+++ b/arch/arm/boards/technexion-pico-hobbit/Makefile
@@ -0,0 +1,7 @@
+obj-y += board.o
+lwl-y += lowlevel.o
+extra-y += flash-header-imx6ul-pico-hobbit-256.dcd.S \
+           flash-header-imx6ul-pico-hobbit-256.dcd \
+           flash-header-imx6ul-pico-hobbit-512.dcd.S \
+           flash-header-imx6ul-pico-hobbit-512.dcd
+bbenv-y += defaultenv-pico-hobbit
diff --git a/arch/arm/boards/technexion-pico-hobbit/board.c b/arch/arm/boards/technexion-pico-hobbit/board.c
new file mode 100644
index 0000000000..40b49de669
--- /dev/null
+++ b/arch/arm/boards/technexion-pico-hobbit/board.c
@@ -0,0 +1,105 @@
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
+#include <asm/armlinux.h>
+#include <asm/io.h>
+#include <bootsource.h>
+#include <common.h>
+#include <environment.h>
+#include <envfs.h>
+#include <gpio.h>
+#include <init.h>
+#include <mach/generic.h>
+#include <mach/imx6-regs.h>
+#include <mach/imx6.h>
+#include <mach/bbu.h>
+#include <linux/sizes.h>
+#include <linux/phy.h>
+#include <mfd/imx6q-iomuxc-gpr.h>
+
+#include <linux/clk.h>
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
+static int imx6ul_setup_fec(void)
+{
+	void __iomem *gprbase = IOMEM(MX6_IOMUXC_BASE_ADDR) + 0x4000;
+	uint32_t val;
+	struct clk *clk;
+
+	phy_register_fixup_for_uid(PHY_ID_KSZ8081, MICREL_PHY_ID_MASK,
+			ksz8081_phy_fixup);
+
+	clk = clk_lookup("enet_ptp");
+	if (IS_ERR(clk))
+		goto err;
+
+	clk_enable(clk);
+
+	clk = clk_lookup("enet_ref");
+	if (IS_ERR(clk))
+		goto err;
+	clk_enable(clk);
+
+	clk = clk_lookup("enet_ref_125m");
+	if (IS_ERR(clk))
+		goto err;
+
+	clk_enable(clk);
+
+	val = readl(gprbase + IOMUXC_GPR1);
+	/* Use 50M anatop loopback REF_CLK1 for ENET1, clear gpr1[13], set gpr1[17]*/
+	val &= ~(1 << 13);
+	val |= (1 << 17);
+	/* Use 50M anatop loopback REF_CLK1 for ENET2, clear gpr1[14], set gpr1[18]*/
+	val &= ~(1 << 14);
+	val |= (1 << 18);
+	writel(val, gprbase + IOMUXC_GPR1);
+
+	return 0;
+err:
+	pr_err("Setting up DFEC\n");
+
+	return -EIO;
+}
+
+static int pico_hobbit_device_init(void)
+{
+	if (!of_machine_is_compatible("technexion,imx6ul-pico-hobbit"))
+		return 0;
+
+	imx6ul_setup_fec();
+
+	imx6_bbu_internal_mmc_register_handler("emmc", "/dev/mmc0.barebox",
+			BBU_HANDLER_FLAG_DEFAULT);
+
+	barebox_set_hostname("pico-hobbit");
+
+	defaultenv_append_directory(defaultenv_pico_hobbit);
+
+	return 0;
+}
+device_initcall(pico_hobbit_device_init);
diff --git a/arch/arm/boards/technexion-pico-hobbit/defaultenv-pico-hobbit/init/automount b/arch/arm/boards/technexion-pico-hobbit/defaultenv-pico-hobbit/init/automount
new file mode 100644
index 0000000000..fdcfa36045
--- /dev/null
+++ b/arch/arm/boards/technexion-pico-hobbit/defaultenv-pico-hobbit/init/automount
@@ -0,0 +1,11 @@
+#!/bin/sh
+
+# automount tftp server based on $eth1.serverip
+
+mkdir -p /mnt/tftp
+automount /mnt/tftp 'ifup eth1 && mount -t tftp $eth1.serverip /mnt/tftp'
+
+# automount nfs server's nfsroot
+
+mkdir -p /mnt/nfs
+automount /mnt/nfs 'ifup eth1 && mount -t nfs ${eth1.serverip}:/home/${global.user}/nfsroot/${global.hostname} /mnt/nfs'
diff --git a/arch/arm/boards/technexion-pico-hobbit/defaultenv-pico-hobbit/network/eth1 b/arch/arm/boards/technexion-pico-hobbit/defaultenv-pico-hobbit/network/eth1
new file mode 100644
index 0000000000..dfe63971df
--- /dev/null
+++ b/arch/arm/boards/technexion-pico-hobbit/defaultenv-pico-hobbit/network/eth1
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
+# put code to discover eth1 (i.e. 'usb') to /env/network/eth1-discover
+
+exit 0
diff --git a/arch/arm/boards/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-256.imxcfg b/arch/arm/boards/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-256.imxcfg
new file mode 100644
index 0000000000..12cda04e60
--- /dev/null
+++ b/arch/arm/boards/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-256.imxcfg
@@ -0,0 +1,64 @@
+loadaddr 0x80000000
+soc imx6
+dcdofs 0x400
+
+wm 32 0x020c4068 0xffffffff
+wm 32 0x020c406c 0xffffffff
+wm 32 0x020c4070 0xffffffff
+wm 32 0x020c4074 0xffffffff
+wm 32 0x020c4078 0xffffffff
+wm 32 0x020c407c 0xffffffff
+wm 32 0x020c4080 0xffffffff
+
+wm 32 0x020E04B4 0x000C0000
+wm 32 0x020E04AC 0x00000000
+wm 32 0x020E027C 0x00000030
+wm 32 0x020E0250 0x00000030
+wm 32 0x020E024C 0x00000030
+wm 32 0x020E0490 0x00000030
+wm 32 0x020E0288 0x00000030
+wm 32 0x020E0270 0x00000000
+wm 32 0x020E0260 0x00000030
+wm 32 0x020E0264 0x00000030
+wm 32 0x020E04A0 0x00000030
+wm 32 0x020E0494 0x00020000
+wm 32 0x020E0280 0x00000030
+wm 32 0x020E0284 0x00000030
+wm 32 0x020E04B0 0x00020000
+wm 32 0x020E0498 0x00000030
+wm 32 0x020E04A4 0x00000030
+wm 32 0x020E0244 0x00000030
+wm 32 0x020E0248 0x00000030
+wm 32 0x021B001C 0x00008000
+wm 32 0x021B0800 0xA1390003
+wm 32 0x021B080C 0x00000000
+wm 32 0x021B083C 0x01380134
+wm 32 0x021B0848 0x40404244
+wm 32 0x021B0850 0x40405050
+wm 32 0x021B081C 0x33333333
+wm 32 0x021B0820 0x33333333
+wm 32 0x021B082C 0xf3333333
+wm 32 0x021B0830 0xf3333333
+wm 32 0x021B08C0 0x00921012
+wm 32 0x021B08b8 0x00000800
+wm 32 0x021B0004 0x0002002D
+wm 32 0x021B0008 0x00333030
+wm 32 0x021B000C 0x676B52F3
+wm 32 0x021B0010 0xB66D8B63
+wm 32 0x021B0014 0x01FF00DB
+wm 32 0x021B0018 0x00201740
+wm 32 0x021B001C 0x00008000
+wm 32 0x021B002C 0x000026D2
+wm 32 0x021B0030 0x006B1023
+wm 32 0x021B0040 0x00000047
+wm 32 0x021B0000 0x83180000
+wm 32 0x021B001C 0x02008032
+wm 32 0x021B001C 0x00008033
+wm 32 0x021B001C 0x00048031
+wm 32 0x021B001C 0x15208030
+wm 32 0x021B001C 0x04008040
+wm 32 0x021B0020 0x00000800
+wm 32 0x021B0818 0x00000227
+wm 32 0x021B0004 0x0002552D
+wm 32 0x021B0404 0x00011006
+wm 32 0x021B001C 0x00000000
diff --git a/arch/arm/boards/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-512.imxcfg b/arch/arm/boards/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-512.imxcfg
new file mode 100644
index 0000000000..0a1915b982
--- /dev/null
+++ b/arch/arm/boards/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-512.imxcfg
@@ -0,0 +1,65 @@
+loadaddr 0x80000000
+soc imx6
+dcdofs 0x400
+
+wm 32 0x020c4068 0xffffffff
+wm 32 0x020c406c 0xffffffff
+wm 32 0x020c4070 0xffffffff
+wm 32 0x020c4074 0xffffffff
+wm 32 0x020c4078 0xffffffff
+wm 32 0x020c407c 0xffffffff
+wm 32 0x020c4080 0xffffffff
+
+wm 32 0x020E04B4 0x000C0000
+wm 32 0x020E04AC 0x00000000
+wm 32 0x020E027C 0x00000030
+wm 32 0x020E0250 0x00000030
+wm 32 0x020E024C 0x00000030
+wm 32 0x020E0490 0x00000030
+wm 32 0x020E0288 0x00000030
+wm 32 0x020E0270 0x00000000
+wm 32 0x020E0260 0x00000030
+wm 32 0x020E0264 0x00000030
+wm 32 0x020E04A0 0x00000030
+wm 32 0x020E0494 0x00020000
+wm 32 0x020E0280 0x00000030
+wm 32 0x020E0284 0x00000030
+wm 32 0x020E04B0 0x00020000
+wm 32 0x020E0498 0x00000030
+wm 32 0x020E04A4 0x00000030
+wm 32 0x020E0244 0x00000030
+wm 32 0x020E0248 0x00000030
+wm 32 0x021B001C 0x00008000
+wm 32 0x021B0800 0xA1390003
+wm 32 0x021B080C 0x00000000
+wm 32 0x021B083C 0x41570155
+wm 32 0x021B0848 0x4040474A
+wm 32 0x021B0850 0x40405550
+wm 32 0x021B081C 0x33333333
+wm 32 0x021B0820 0x33333333
+wm 32 0x021B082C 0xf3333333
+wm 32 0x021B0830 0xf3333333
+wm 32 0x021B08C0 0x00921012
+wm 32 0x021B08b8 0x00000800
+wm 32 0x021B0004 0x0002002D
+wm 32 0x021B0008 0x1b333030
+wm 32 0x021B000C 0x676B52F3
+wm 32 0x021B0010 0xB66D0B63
+wm 32 0x021B0014 0x01FF00DB
+wm 32 0x021B0018 0x00201740
+wm 32 0x021B001C 0x00008000
+wm 32 0x021B002C 0x000026D2
+wm 32 0x021B0030 0x006B1023
+wm 32 0x021B0040 0x0000004f
+wm 32 0x021B0000 0x84180000
+wm 32 0x021B0890 0x23400a38
+wm 32 0x021B001C 0x02008032
+wm 32 0x021B001C 0x00008033
+wm 32 0x021B001C 0x00048031
+wm 32 0x021B001C 0x15208030
+wm 32 0x021B001C 0x04008040
+wm 32 0x021B0020 0x00000800
+wm 32 0x021B0818 0x00000227
+wm 32 0x021B0004 0x0002552D
+wm 32 0x021B0404 0x00011006
+wm 32 0x021B001C 0x00000000
diff --git a/arch/arm/boards/technexion-pico-hobbit/lowlevel.c b/arch/arm/boards/technexion-pico-hobbit/lowlevel.c
new file mode 100644
index 0000000000..aad55127bf
--- /dev/null
+++ b/arch/arm/boards/technexion-pico-hobbit/lowlevel.c
@@ -0,0 +1,78 @@
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
+#define MX6_UART6_BASE_ADDR             (MX6_AIPS2_OFF_BASE_ADDR + 0x7C000)
+
+static inline void setup_uart(void)
+{
+	void __iomem *iomuxbase = IOMEM(MX6_IOMUXC_BASE_ADDR);
+	void __iomem *uart = IOMEM(MX6_UART6_BASE_ADDR);
+
+	imx6_ungate_all_peripherals();
+
+	writel(0x8, iomuxbase + 0x1d4);
+	writel(0x1b0b1, iomuxbase + 0x0460);
+	writel(0x8, iomuxbase + 0x1d8);
+	writel(0x1b0b1, iomuxbase + 0x0460);
+
+	imx6_uart_setup(uart);
+	pbl_set_putc(imx_uart_putc, uart);
+
+	putc_ll('>');
+}
+
+static void __noreturn start_imx6_pico_hobbit_common(uint32_t size,
+						bool do_early_uart_config,
+						void *fdt_blob_fixed_offset)
+{
+	void *fdt;
+
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(0x00910000 - 8);
+
+	arm_early_mmu_cache_invalidate();
+
+	relocate_to_current_adr();
+	setup_c();
+	barrier();
+
+	if (do_early_uart_config && IS_ENABLED(CONFIG_DEBUG_LL))
+		setup_uart();
+
+	/* disable all watchdog powerdown counters */
+	writew(0x0, 0x020bc008);
+	writew(0x0, 0x020c0008);
+	writew(0x0, 0x021e4008);
+
+	fdt = fdt_blob_fixed_offset - get_runtime_offset();
+
+	imx6ul_barebox_entry(fdt);
+}
+
+BAREBOX_IMD_TAG_STRING(pico_hobbit_mx6_memsize_SZ_256M, IMD_TYPE_PARAMETER, "memsize=256", 0);
+BAREBOX_IMD_TAG_STRING(pico_hobbit_mx6_memsize_SZ_512M, IMD_TYPE_PARAMETER, "memsize=512", 0);
+
+#define EDM1_ENTRY(name, fdt_name, memory_size, do_early_uart_config)	\
+	ENTRY_FUNCTION(name, r0, r1, r2)				\
+	{								\
+		extern char __dtb_##fdt_name##_start[];			\
+									\
+		IMD_USED(pico_hobbit_mx6_memsize_##memory_size);		\
+									\
+		start_imx6_pico_hobbit_common(memory_size, do_early_uart_config, \
+					 __dtb_##fdt_name##_start);	\
+	}
+
+EDM1_ENTRY(start_imx6ul_pico_hobbit_256mb, imx6ul_pico_hobbit, SZ_256M, true);
+EDM1_ENTRY(start_imx6ul_pico_hobbit_512mb, imx6ul_pico_hobbit, SZ_512M, true);
diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index df67cd0a92..f7d631d2cc 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -22,6 +22,7 @@ CONFIG_MACH_SABRESD=y
 CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB=y
 CONFIG_MACH_NITROGEN6=y
 CONFIG_MACH_SOLIDRUN_MICROSOM=y
+CONFIG_MACH_TECHNEXION_PICO_HOBBIT=y
 CONFIG_MACH_TECHNEXION_WANDBOARD=y
 CONFIG_MACH_EMBEST_RIOTBOARD=y
 CONFIG_MACH_UDOO=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index e8ad43bfd8..ccf9cf73ce 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -70,6 +70,7 @@ pbl-dtb-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += socfpga_cyclone5_sockit.dtb.o
 pbl-dtb-$(CONFIG_MACH_SOLIDRUN_CUBOX) += dove-cubox-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += imx6dl-hummingboard.dtb.o imx6q-hummingboard.dtb.o imx6q-h100.dtb.o
 pbl-dtb-$(CONFIG_MACH_TECHNEXION_WANDBOARD) += imx6q-wandboard.dtb.o imx6dl-wandboard.dtb.o
+pbl-dtb-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += imx6ul-pico-hobbit.dtb.o
 pbl-dtb-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += tegra20-colibri-iris.dtb.o
 pbl-dtb-$(CONFIG_MACH_TOSHIBA_AC100) += tegra20-paz00.dtb.o
 pbl-dtb-$(CONFIG_MACH_TQMA53) += imx53-mba53.dtb.o
diff --git a/arch/arm/dts/imx6ul-pico-hobbit.dts b/arch/arm/dts/imx6ul-pico-hobbit.dts
new file mode 100644
index 0000000000..81569359d3
--- /dev/null
+++ b/arch/arm/dts/imx6ul-pico-hobbit.dts
@@ -0,0 +1,27 @@
+#include <arm/imx6ul-pico-hobbit.dts>
+
+/ {
+	chosen {
+		linux,stdout-path = &uart1;
+
+		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &environment_usdhc1;
+		};
+	};
+};
+
+&usdhc1 {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0xc0000>;
+	};
+
+	environment_usdhc1: partition@c0000 {
+		label = "barebox-environment";
+		reg = <0xc0000 0x40000>;
+	};
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index e1459d2a77..a1cf7a6ab9 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -329,6 +329,12 @@ config MACH_SOLIDRUN_MICROSOM
 	bool "SolidRun MicroSOM based devices"
 	select ARCH_IMX6
 
+config MACH_TECHNEXION_PICO_HOBBIT
+	bool "Technexion Pico Hobbit"
+	select ARCH_IMX6
+	select ARCH_IMX6UL
+	select ARM_USE_COMPRESSED_DTB
+
 config MACH_TECHNEXION_WANDBOARD
 	bool "Technexion Wandboard"
 	select ARCH_IMX6
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 2563779484..4aedef60d6 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -279,6 +279,16 @@ CFG_start_h100_microsom_i2ex.pblx.imximg = $(board)/solidrun-microsom/flash-head
 FILE_barebox-auvidea-h100-microsom-i2eX.img = start_h100_microsom_i2ex.pblx.imximg
 image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-auvidea-h100-microsom-i2eX.img
 
+pblx-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += start_imx6ul_pico_hobbit_256mb
+CFG_start_imx6ul_pico_hobbit_256mb.pblx.imximg = $(board)/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-256.imxcfg
+FILE_barebox-imx6ul-pico-hobbit-256mb.img = start_imx6ul_pico_hobbit_256mb.pblx.imximg
+image-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += barebox-imx6ul-pico-hobbit-256mb.img
+
+pblx-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += start_imx6ul_pico_hobbit_512mb
+CFG_start_imx6ul_pico_hobbit_512mb.pblx.imximg = $(board)/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-512.imxcfg
+FILE_barebox-imx6ul-pico-hobbit-512mb.img = start_imx6ul_pico_hobbit_512mb.pblx.imximg
+image-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += barebox-imx6ul-pico-hobbit-512mb.img
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
