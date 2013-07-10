Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uwu0f-0003uu-MV
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 13:00:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Jul 2013 15:00:12 +0200
Message-Id: <1373461212-19036-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1373461212-19036-1-git-send-email-s.hauer@pengutronix.de>
References: <1373461212-19036-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: i.MX6: TQ tqma6x initial board support
To: barebox@lists.infradead.org

The TQ tqma6x comes in two different variants. One i.MX6s based
tqma6s and a i.MX6q based tqma6q.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/Makefile                           |   1 +
 arch/arm/boards/tqma6x/Makefile                    |   5 +
 arch/arm/boards/tqma6x/board.c                     | 154 ++++++++++
 arch/arm/boards/tqma6x/flash-header-tqma6dl.imxcfg |  99 +++++++
 arch/arm/boards/tqma6x/flash-header-tqma6q.imxcfg  | 104 +++++++
 arch/arm/boards/tqma6x/lowlevel.c                  |  88 ++++++
 arch/arm/configs/imx_v7_defconfig                  |   1 +
 arch/arm/dts/Makefile                              |   5 +-
 arch/arm/dts/imx6dl-mba6x.dts                      |  67 +++++
 arch/arm/dts/imx6dl-tqma6s.dtsi                    |  99 +++++++
 arch/arm/dts/imx6q-mba6x.dts                       |  71 +++++
 arch/arm/dts/imx6q-tqma6q.dtsi                     | 132 +++++++++
 arch/arm/dts/imx6q-tqma6x.dts                      | 320 +++++++++++++++++++++
 arch/arm/dts/imx6qdl-mba6x.dtsi                    | 190 ++++++++++++
 arch/arm/dts/imx6qdl-tqma6x.dtsi                   | 162 +++++++++++
 arch/arm/mach-imx/Kconfig                          |   5 +
 images/Makefile.imx                                |  12 +
 17 files changed, 1514 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/tqma6x/Makefile
 create mode 100644 arch/arm/boards/tqma6x/board.c
 create mode 100644 arch/arm/boards/tqma6x/flash-header-tqma6dl.imxcfg
 create mode 100644 arch/arm/boards/tqma6x/flash-header-tqma6q.imxcfg
 create mode 100644 arch/arm/boards/tqma6x/lowlevel.c
 create mode 100644 arch/arm/dts/imx6dl-mba6x.dts
 create mode 100644 arch/arm/dts/imx6dl-tqma6s.dtsi
 create mode 100644 arch/arm/dts/imx6q-mba6x.dts
 create mode 100644 arch/arm/dts/imx6q-tqma6q.dtsi
 create mode 100644 arch/arm/dts/imx6q-tqma6x.dts
 create mode 100644 arch/arm/dts/imx6qdl-mba6x.dtsi
 create mode 100644 arch/arm/dts/imx6qdl-tqma6x.dtsi

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 6d1e98d..06e8ae3 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -59,6 +59,7 @@ obj-$(CONFIG_MACH_SABRESD)			+= freescale-mx6-sabresd/
 obj-$(CONFIG_MACH_SCB9328)			+= scb9328/
 obj-$(CONFIG_MACH_TOSHIBA_AC100)		+= toshiba-ac100/
 obj-$(CONFIG_MACH_TQMA53)			+= tqma53/
+obj-$(CONFIG_MACH_TQMA6X)			+= tqma6x/
 obj-$(CONFIG_MACH_TX25)				+= karo-tx25/
 obj-$(CONFIG_MACH_TX28)				+= karo-tx28/
 obj-$(CONFIG_MACH_TX51)				+= karo-tx51/
diff --git a/arch/arm/boards/tqma6x/Makefile b/arch/arm/boards/tqma6x/Makefile
new file mode 100644
index 0000000..f250e59
--- /dev/null
+++ b/arch/arm/boards/tqma6x/Makefile
@@ -0,0 +1,5 @@
+obj-y += board.o
+obj-y += flash-header-tqma6q.dcd.o flash-header-tqma6dl.dcd.o
+extra-y += flash-header-tqma6q.dcd.S flash-header-tqma6dl.dcd.S
+extra-y += flash-header-tqma6q.dcd flash-header-tqma6dl.dcd
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/tqma6x/board.c b/arch/arm/boards/tqma6x/board.c
new file mode 100644
index 0000000..9e81a1d
--- /dev/null
+++ b/arch/arm/boards/tqma6x/board.c
@@ -0,0 +1,154 @@
+/*
+ * Copyright (C) 2013 Sascha Hauer, Pengutronix
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
+#include <generated/mach-types.h>
+#include <environment.h>
+#include <bootsource.h>
+#include <partition.h>
+#include <common.h>
+#include <envfs.h>
+#include <sizes.h>
+#include <init.h>
+#include <gpio.h>
+#include <fec.h>
+
+#include <linux/micrel_phy.h>
+#include <mfd/stmpe-i2c.h>
+
+#include <asm/armlinux.h>
+#include <asm/io.h>
+
+#include <mach/devices-imx6.h>
+#include <mach/imx6-regs.h>
+#include <mach/iomux-mx6.h>
+#include <mach/imx6-mmdc.h>
+#include <mach/generic.h>
+#include <mach/imx6.h>
+#include <mach/bbu.h>
+
+#define RQ7_GPIO_ENET_PHYADD2	IMX_GPIO_NR(6, 30)
+#define RQ7_GPIO_ENET_MODE0	IMX_GPIO_NR(6, 25)
+#define RQ7_GPIO_ENET_MODE1	IMX_GPIO_NR(6, 27)
+#define RQ7_GPIO_ENET_MODE2	IMX_GPIO_NR(6, 28)
+#define RQ7_GPIO_ENET_MODE3	IMX_GPIO_NR(6, 29)
+#define RQ7_GPIO_ENET_EN_CLK125	IMX_GPIO_NR(6, 24)
+
+static iomux_v3_cfg_t tqma6x_pads_gpio[] = {
+	MX6Q_PAD_RGMII_RXC__GPIO_6_30,
+	MX6Q_PAD_RGMII_RD0__GPIO_6_25,
+	MX6Q_PAD_RGMII_RD1__GPIO_6_27,
+	MX6Q_PAD_RGMII_RD2__GPIO_6_28,
+	MX6Q_PAD_RGMII_RD3__GPIO_6_29,
+	MX6Q_PAD_RGMII_RX_CTL__GPIO_6_24,
+};
+
+static void mmd_write_reg(struct phy_device *dev, int device, int reg, int val)
+{
+	phy_write(dev, 0x0d, device);
+	phy_write(dev, 0x0e, reg);
+	phy_write(dev, 0x0d, (1 << 14) | device);
+	phy_write(dev, 0x0e, val);
+}
+
+static int ksz9031rn_phy_fixup(struct phy_device *dev)
+{
+	/*
+	 * min rx data delay, max rx/tx clock delay,
+	 * min rx/tx control delay
+	 */
+	mmd_write_reg(dev, 2, 4, 0);
+	mmd_write_reg(dev, 2, 5, 0);
+	mmd_write_reg(dev, 2, 8, 0x003ff);
+
+	return 0;
+}
+
+static int tqma6x_enet_init(void)
+{
+	if (!of_machine_is_compatible("tq,mba6x"))
+		return 0;
+
+	mxc_iomux_v3_setup_multiple_pads(tqma6x_pads_gpio, ARRAY_SIZE(tqma6x_pads_gpio));
+	gpio_direction_output(RQ7_GPIO_ENET_PHYADD2, 0);
+	gpio_direction_output(RQ7_GPIO_ENET_MODE0, 1);
+	gpio_direction_output(RQ7_GPIO_ENET_MODE1, 1);
+	gpio_direction_output(RQ7_GPIO_ENET_MODE2, 1);
+	gpio_direction_output(RQ7_GPIO_ENET_MODE3, 1);
+	gpio_direction_output(RQ7_GPIO_ENET_EN_CLK125, 1);
+
+	gpio_direction_output(25, 0);
+	mdelay(50);
+
+	gpio_direction_output(25, 1);
+	mdelay(50);
+
+	phy_register_fixup_for_uid(PHY_ID_KSZ9031, MICREL_PHY_ID_MASK,
+					   ksz9031rn_phy_fixup);
+
+	return 0;
+}
+fs_initcall(tqma6x_enet_init);
+
+extern char flash_header_tqma6dl_start[];
+extern char flash_header_tqma6dl_end[];
+
+extern char flash_header_tqma6q_start[];
+extern char flash_header_tqma6q_end[];
+
+static int tqma6x_env_init(void)
+{
+	void *flash_header_start;
+	void *flash_header_end;
+
+	if (of_machine_is_compatible("tq,tqma6s")) {
+		flash_header_start = (void *)flash_header_tqma6dl_start;
+		flash_header_end = (void *)flash_header_tqma6dl_end;
+	} else if (of_machine_is_compatible("tq,tqma6q")) {
+		flash_header_start = (void *)flash_header_tqma6q_start;
+		flash_header_end = (void *)flash_header_tqma6q_end;
+	} else {
+		return 0;
+	}
+
+	devfs_add_partition("m25p0", 0, SZ_512K, DEVFS_PARTITION_FIXED, "m25p0.barebox");
+
+	imx6_bbu_internal_spi_i2c_register_handler("spiflash", "/dev/m25p0.barebox",
+		BBU_HANDLER_FLAG_DEFAULT, (void *)flash_header_start,
+		flash_header_end - flash_header_start, 0);
+	imx6_bbu_internal_mmc_register_handler("emmc", "/dev/mmc2.boot0",
+		0, (void *)flash_header_start, flash_header_end - flash_header_start, 0);
+
+	device_detect_by_name("mmc2");
+
+	default_environment_path = "/dev/mmc2.boot1";
+
+	return 0;
+}
+late_initcall(tqma6x_env_init);
+
+static int tqma6x_core_init(void)
+{
+	if (!of_machine_is_compatible("tq,mba6x"))
+		return 0;
+
+	imx6_init_lowlevel();
+
+	return 0;
+}
+postcore_initcall(tqma6x_core_init);
diff --git a/arch/arm/boards/tqma6x/flash-header-tqma6dl.imxcfg b/arch/arm/boards/tqma6x/flash-header-tqma6dl.imxcfg
new file mode 100644
index 0000000..614b7a3
--- /dev/null
+++ b/arch/arm/boards/tqma6x/flash-header-tqma6dl.imxcfg
@@ -0,0 +1,99 @@
+soc imx6
+loadaddr 0x20000000
+dcdofs 0x400
+wm 32 0x020e04bc 0x00000030
+wm 32 0x020e04c0 0x00000030
+wm 32 0x020e04c4 0x00000030
+wm 32 0x020e04c8 0x00000030
+wm 32 0x020e04cc 0x00000030
+wm 32 0x020e04d0 0x00000030
+wm 32 0x020e04d4 0x00000030
+wm 32 0x020e04d8 0x00000030
+wm 32 0x020e0764 0x00000030
+wm 32 0x020e0770 0x00000030
+wm 32 0x020e0778 0x00000030
+wm 32 0x020e077c 0x00000030
+wm 32 0x020e0780 0x00000030
+wm 32 0x020e0784 0x00000030
+wm 32 0x020e078c 0x00000030
+wm 32 0x020e0748 0x00000030
+wm 32 0x020e074c 0x00000030
+wm 32 0x020e076c 0x00000030
+wm 32 0x020e0470 0x00020030
+wm 32 0x020e0474 0x00020030
+wm 32 0x020e0478 0x00020030
+wm 32 0x020e047c 0x00020030
+wm 32 0x020e0480 0x00020030
+wm 32 0x020e0484 0x00020030
+wm 32 0x020e0488 0x00020030
+wm 32 0x020e048c 0x00020030
+wm 32 0x020e0464 0x00020030
+wm 32 0x020e0490 0x00020030
+wm 32 0x020e04ac 0x00020030
+wm 32 0x020e04b0 0x00020030
+wm 32 0x020e0494 0x000e0030
+wm 32 0x020e04a4 0x00003000
+wm 32 0x020e04a8 0x00003000
+wm 32 0x020e04b4 0x00003030
+wm 32 0x020e04b8 0x00003030
+wm 32 0x020e0750 0x00020000
+wm 32 0x020e0760 0x00020000
+wm 32 0x020e0754 0x00000000
+wm 32 0x020e04a0 0x00000000
+wm 32 0x020e0774 0x000C0000
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b0824 0x33333333
+wm 32 0x021b0828 0x33333333
+wm 32 0x021b481c 0x33333333
+wm 32 0x021b4820 0x33333333
+wm 32 0x021b4824 0x33333333
+wm 32 0x021b4828 0x33333333
+wm 32 0x021b0018 0x00081740
+wm 32 0x021b001c 0x00008000
+wm 32 0x021b0004 0x0002002D
+wm 32 0x021b000c 0x40435323
+wm 32 0x021b0010 0xB66E8D63
+wm 32 0x021b0014 0x01FF00DB
+wm 32 0x021b002c 0x000026D2
+wm 32 0x021b0030 0x00431023
+wm 32 0x021b0008 0x00333030
+wm 32 0x021b0004 0x0002556D
+wm 32 0x021b0040 0x00000017
+wm 32 0x021b0000 0x83190000
+wm 32 0x021b001c 0x04008032
+wm 32 0x021b001c 0x00008033
+wm 32 0x021b001c 0x00048031
+wm 32 0x021b001c 0x13208030
+wm 32 0x021b001c 0x04008040
+wm 32 0x021b0800 0xA1390003
+wm 32 0x021b4800 0xA1390003
+wm 32 0x021b0020 0x00005800
+wm 32 0x021b0818 0x00022227
+wm 32 0x021b4818 0x00022227
+wm 32 0x021b083c 0x42350231
+wm 32 0x021b483c 0x42350231
+wm 32 0x021b0840 0x021A0218
+wm 32 0x021b4840 0x021A0218
+wm 32 0x021b0848 0x4B4B4E49
+wm 32 0x021b4848 0x4B4B4E49
+wm 32 0x021b0850 0x3F3F3035
+wm 32 0x021b4850 0x3F3F3035
+wm 32 0x021b080c 0x0040003C
+wm 32 0x021b0810 0x0032003E
+wm 32 0x021b480c 0x0040003C
+wm 32 0x021b4810 0x0032003E
+wm 32 0x021b08b8 0x00000800
+wm 32 0x021b48b8 0x00000800
+wm 32 0x021b001c 0x00000000
+wm 32 0x021b0404 0x00011006
+wm 32 0x020C4068 0x00C03F3F
+wm 32 0x020C406c 0x0030FC03
+wm 32 0x020C4070 0x0FFFC000
+wm 32 0x020C4074 0x3FF00000
+wm 32 0x020C4078 0x00FFF300
+wm 32 0x020C407c 0x0F0000C3
+wm 32 0x020C4080 0x000003FF
+wm 32 0x020e0010 0xF00000CF
+wm 32 0x020e0018 0x007F007F
+wm 32 0x020e001c 0x007F007F
diff --git a/arch/arm/boards/tqma6x/flash-header-tqma6q.imxcfg b/arch/arm/boards/tqma6x/flash-header-tqma6q.imxcfg
new file mode 100644
index 0000000..4319776
--- /dev/null
+++ b/arch/arm/boards/tqma6x/flash-header-tqma6q.imxcfg
@@ -0,0 +1,104 @@
+soc imx6
+loadaddr 0x20000000
+dcdofs 0x400
+
+wm 32 0x020e05a8 0x00000030
+wm 32 0x020e05b0 0x00000030
+wm 32 0x020e0524 0x00000030
+wm 32 0x020e051c 0x00000030
+wm 32 0x020e0518 0x00000030
+wm 32 0x020e050c 0x00000030
+wm 32 0x020e05b8 0x00000030
+wm 32 0x020e05c0 0x00000030
+wm 32 0x020e05ac 0x00020030
+wm 32 0x020e05b4 0x00020030
+wm 32 0x020e0528 0x00020030
+wm 32 0x020e0520 0x00020030
+wm 32 0x020e0514 0x00020030
+wm 32 0x020e0510 0x00020030
+wm 32 0x020e05bc 0x00020030
+wm 32 0x020e05c4 0x00020030
+wm 32 0x020e056c 0x00020030
+wm 32 0x020e0578 0x00020030
+wm 32 0x020e0588 0x00020030
+wm 32 0x020e0594 0x00020030
+wm 32 0x020e057c 0x00020030
+wm 32 0x020e0590 0x00003000
+wm 32 0x020e0598 0x00003000
+wm 32 0x020e058c 0x00000000
+wm 32 0x020e059c 0x00003030
+wm 32 0x020e05a0 0x00003030
+wm 32 0x020e0784 0x00000030
+wm 32 0x020e0788 0x00000030
+wm 32 0x020e0794 0x00000030
+wm 32 0x020e079c 0x00000030
+wm 32 0x020e07a0 0x00000030
+wm 32 0x020e07a4 0x00000030
+wm 32 0x020e07a8 0x00000030
+wm 32 0x020e0748 0x00000030
+wm 32 0x020e074c 0x00000030
+wm 32 0x020e0750 0x00020000
+wm 32 0x020e0758 0x00000000
+wm 32 0x020e0774 0x00020000
+wm 32 0x020e078c 0x00000030
+wm 32 0x020e0798 0x000c0000
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b0824 0x33333333
+wm 32 0x021b0828 0x33333333
+wm 32 0x021b481c 0x33333333
+wm 32 0x021b4820 0x33333333
+wm 32 0x021b4824 0x33333333
+wm 32 0x021b4828 0x33333333
+wm 32 0x021b0018 0x00081740
+wm 32 0x021b001c 0x00008000
+wm 32 0x021b000c 0x555a7974
+wm 32 0x021b0010 0xdb538f64
+wm 32 0x021b0014 0x01ff00db
+wm 32 0x021b002c 0x000026d2
+wm 32 0x021b0030 0x005a1023
+wm 32 0x021b0008 0x09444040
+wm 32 0x021b0004 0x00025576
+wm 32 0x021b0040 0x00000027
+wm 32 0x021b0000 0x831a0000
+wm 32 0x021b001c 0x04088032
+wm 32 0x021b001c 0x0408803a
+wm 32 0x021b001c 0x00008033
+wm 32 0x021b001c 0x0000803b
+wm 32 0x021b001c 0x00428031
+wm 32 0x021b001c 0x00428039
+wm 32 0x021b001c 0x19308030
+wm 32 0x021b001c 0x19308038
+wm 32 0x021b001c 0x04008040
+wm 32 0x021b001c 0x04008048
+wm 32 0x021b0800 0xa1380003
+wm 32 0x021b4800 0xa1380003
+wm 32 0x021b0020 0x00005800
+wm 32 0x021b0818 0x00022227
+wm 32 0x021b4818 0x00022227
+wm 32 0x021b083c 0x434b0350
+wm 32 0x021b0840 0x034c0359
+wm 32 0x021b483c 0x434b0350
+wm 32 0x021b4840 0x03650348
+wm 32 0x021b0848 0x4436383b
+wm 32 0x021b4848 0x39393341
+wm 32 0x021b0850 0x35373933
+wm 32 0x021b4850 0x48254a36
+wm 32 0x021b080c 0x001f001f
+wm 32 0x021b0810 0x001f001f
+wm 32 0x021b480c 0x00440044
+wm 32 0x021b4810 0x00440044
+wm 32 0x021b08b8 0x00000800
+wm 32 0x021b48b8 0x00000800
+wm 32 0x021b001c 0x00000000
+wm 32 0x021b0404 0x00011006
+wm 32 0x020c4068 0x00c03f3f
+wm 32 0x020c406c 0x0030fc03
+wm 32 0x020c4070 0x0fffc000
+wm 32 0x020c4074 0x3ff00000
+wm 32 0x020c4078 0x00fff300
+wm 32 0x020c407c 0x0f0000c3
+wm 32 0x020c4080 0x000003ff
+wm 32 0x020e0010 0xf00000cf
+wm 32 0x020e0018 0x007f007f
+wm 32 0x020e001c 0x007f007f
diff --git a/arch/arm/boards/tqma6x/lowlevel.c b/arch/arm/boards/tqma6x/lowlevel.c
new file mode 100644
index 0000000..8c86841
--- /dev/null
+++ b/arch/arm/boards/tqma6x/lowlevel.c
@@ -0,0 +1,88 @@
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
+#include <debug_ll.h>
+#include <common.h>
+#include <sizes.h>
+#include <io.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <asm/sections.h>
+#include <asm/cache.h>
+#include <asm/mmu.h>
+#include <mach/imx6-mmdc.h>
+#include <mach/imx6.h>
+
+static inline void setup_uart(void)
+{
+	/* Enable UART for lowlevel debugging purposes */
+	writel(0x00000000, 0x021e8080);
+	writel(0x00004027, 0x021e8084);
+	writel(0x00000704, 0x021e8088);
+	writel(0x00000a81, 0x021e8090);
+	writel(0x0000002b, 0x021e809c);
+	writel(0x00013880, 0x021e80b0);
+	writel(0x0000047f, 0x021e80a4);
+	writel(0x0000c34f, 0x021e80a8);
+	writel(0x00000001, 0x021e8080);
+}
+
+extern char __dtb_imx6q_mba6x_start[];
+extern char __dtb_imx6dl_mba6x_start[];
+
+ENTRY_FUNCTION(start_imx6q_mba6x)(void)
+{
+	uint32_t fdt;
+
+	__barebox_arm_head();
+
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(0x00920000 - 8);
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
+		writel(0x2, 0x020e0338);
+		setup_uart();
+		PUTC_LL('a');
+	}
+
+	arm_early_mmu_cache_invalidate();
+
+	fdt = (uint32_t)__dtb_imx6q_mba6x_start - get_runtime_offset();
+
+	barebox_arm_entry(0x10000000, SZ_1G, fdt);
+}
+
+ENTRY_FUNCTION(start_imx6dl_mba6x)(void)
+{
+	uint32_t fdt;
+
+	__barebox_arm_head();
+
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(0x00920000 - 8);
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
+		writel(0x2, 0x020e035c);
+		setup_uart();
+		PUTC_LL('a');
+	}
+
+	arm_early_mmu_cache_invalidate();
+
+	fdt = (uint32_t)__dtb_imx6dl_mba6x_start - get_runtime_offset();
+
+	barebox_arm_entry(0x10000000, SZ_512M, fdt);
+}
diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index e088c2c..d2d96d5 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -4,6 +4,7 @@ CONFIG_MACH_EFIKA_MX_SMARTBOOK=y
 CONFIG_MACH_FREESCALE_MX51_PDK=y
 CONFIG_MACH_FREESCALE_MX53_LOCO=y
 CONFIG_MACH_REALQ7=y
+CONFIG_MACH_TQMA6X=y
 CONFIG_IMX_IIM=y
 CONFIG_IMX_IIM_FUSE_BLOW=y
 CONFIG_THUMB2_BAREBOX=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 63956e9..f4fe318 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -3,7 +3,9 @@ dtb-$(CONFIG_ARCH_IMX51) += imx51-babbage.dtb \
 dtb-$(CONFIG_ARCH_IMX53) += imx53-qsb.dtb
 dtb-$(CONFIG_ARCH_IMX6) += imx6q-dmo-realq7.dtb \
 	imx6q-sabrelite.dtb \
-	imx6q-sabresd.dtb
+	imx6q-sabresd.dtb \
+	imx6dl-mba6x.dtb \
+	imx6q-mba6x.dtb
 
 BUILTIN_DTB := $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_NAME))
 obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
@@ -12,6 +14,7 @@ pbl-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK) += imx51-genesi-efika-sb.dtb.o
 pbl-$(CONFIG_MACH_FREESCALE_MX51_PDK) += imx51-babbage.dtb.o
 pbl-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += imx53-qsb.dtb.o
 pbl-$(CONFIG_MACH_REALQ7) += imx6q-dmo-realq7.dtb.o
+pbl-$(CONFIG_MACH_TQMA6X) += imx6dl-mba6x.dtb.o imx6q-mba6x.dtb.o
 
 .SECONDARY: $(obj)/$(BUILTIN_DTB).dtb.S
 .SECONDARY: $(patsubst %,$(obj)/%.S,$(dtb-y))
diff --git a/arch/arm/dts/imx6dl-mba6x.dts b/arch/arm/dts/imx6dl-mba6x.dts
new file mode 100644
index 0000000..7840f06
--- /dev/null
+++ b/arch/arm/dts/imx6dl-mba6x.dts
@@ -0,0 +1,67 @@
+/*
+ * Copyright 2013 Sascha Hauer, Pengutronix
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+/dts-v1/;
+
+#include "imx6dl-tqma6s.dtsi"
+#include "imx6qdl-mba6x.dtsi"
+
+/ {
+	model = "TQ TQMA6S on MBa6x";
+	compatible = "tq,mba6x", "tq,tqma6s", "fsl,imx6dl";
+
+	chosen {
+		linux,stdout-path = &uart2;
+	};
+
+	memory {
+		reg = <0x10000000 0x20000000>;
+	};
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	gpiobuttons {
+		pinctrl_gpiobuttons_1: gpiogrp-1 {
+			fsl,pins = <
+				MX6DL_PAD_GPIO_17__GPIO7_IO12 0x80000000
+				MX6DL_PAD_GPIO_18__GPIO7_IO13 0x80000000
+				MX6DL_PAD_GPIO_8__GPIO1_IO08 0x80000000
+			>;
+		};
+	};
+
+	hog {
+		pinctrl_hog: hoggrp-1 {
+			fsl,pins = <
+				MX6DL_PAD_ENET_CRS_DV__GPIO1_IO25 0x80000000 /* FEC phy reset */
+				MX6DL_PAD_GPIO_4__GPIO1_IO04  0x80000000 /* usdhc2 CD */
+				MX6DL_PAD_GPIO_2__GPIO1_IO02 0x80000000 /* usdhc2 WP */
+				MX6DL_PAD_EIM_D19__GPIO3_IO19 0x80000000 /* eCSPI1 SS1 */
+				MX6DL_PAD_NANDF_RB0__GPIO6_IO10 0x80000000 /* PMIC irq */
+				MX6DL_PAD_EIM_D22__GPIO3_IO22 0x80000000
+				MX6DL_PAD_SD1_DAT3__PWM1_OUT 0x80000000
+				MX6DL_PAD_SD1_DAT3__GPIO1_IO21 0x80000000 /* beeper (1 = on) */
+				MX6DL_PAD_GPIO_16__GPIO7_IO11 0x80000000 /* LCD.PWR_EN */
+				MX6DL_PAD_GPIO_7__GPIO1_IO07 0x80000000 /* LCD.RESET */
+				MX6DL_PAD_GPIO_19__GPIO4_IO05 0x80000000 /* LCD.BLT_EN */
+				MX6DL_PAD_DI0_PIN4__GPIO4_IO20 0x80000000 /* LCD.CONTRAST */
+			>;
+		};
+	};
+};
+
+&disp0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_disp0_ipu1>;
+	crtcs = <&ipu1 0>;
+};
diff --git a/arch/arm/dts/imx6dl-tqma6s.dtsi b/arch/arm/dts/imx6dl-tqma6s.dtsi
new file mode 100644
index 0000000..eb3dcc3
--- /dev/null
+++ b/arch/arm/dts/imx6dl-tqma6s.dtsi
@@ -0,0 +1,99 @@
+/*
+ * Copyright 2013 Sascha Hauer, Pengutronix
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+#include "imx6dl.dtsi"
+#include "imx6qdl-tqma6x.dtsi"
+
+&iomuxc {
+	can1 {
+		pinctrl_can1_1: can1grp-1 {
+			fsl,pins = <
+				MX6DL_PAD_KEY_COL2__FLEXCAN1_TX 0x80000000
+				MX6DL_PAD_KEY_ROW2__FLEXCAN1_RX 0x80000000
+			>;
+		};
+	};
+
+	can2 {
+		pinctrl_can2_1: can2grp-1 {
+			fsl,pins = <
+				MX6DL_PAD_KEY_COL4__FLEXCAN2_TX 0x80000000
+				MX6DL_PAD_KEY_ROW4__FLEXCAN2_RX 0x80000000
+			>;
+		};
+	};
+
+	disp0 {
+		pinctrl_disp0_ipu1: disp0grp-1 {
+			fsl,pins = <
+				MX6DL_PAD_DISP0_DAT0__IPU1_DISP0_DATA00 0x80000000
+				MX6DL_PAD_DISP0_DAT1__IPU1_DISP0_DATA01 0x80000000
+				MX6DL_PAD_DISP0_DAT2__IPU1_DISP0_DATA02 0x80000000
+				MX6DL_PAD_DISP0_DAT3__IPU1_DISP0_DATA03 0x80000000
+				MX6DL_PAD_DISP0_DAT4__IPU1_DISP0_DATA04 0x80000000
+				MX6DL_PAD_DISP0_DAT5__IPU1_DISP0_DATA05 0x80000000
+				MX6DL_PAD_DISP0_DAT6__IPU1_DISP0_DATA06 0x80000000
+				MX6DL_PAD_DISP0_DAT7__IPU1_DISP0_DATA07 0x80000000
+				MX6DL_PAD_DISP0_DAT8__IPU1_DISP0_DATA08 0x80000000
+				MX6DL_PAD_DISP0_DAT9__IPU1_DISP0_DATA09 0x80000000
+				MX6DL_PAD_DISP0_DAT10__IPU1_DISP0_DATA10 0x80000000
+				MX6DL_PAD_DISP0_DAT11__IPU1_DISP0_DATA11 0x80000000
+				MX6DL_PAD_DISP0_DAT12__IPU1_DISP0_DATA12 0x80000000
+				MX6DL_PAD_DISP0_DAT13__IPU1_DISP0_DATA13 0x80000000
+				MX6DL_PAD_DISP0_DAT14__IPU1_DISP0_DATA14 0x80000000
+				MX6DL_PAD_DISP0_DAT15__IPU1_DISP0_DATA15 0x80000000
+				MX6DL_PAD_DISP0_DAT16__IPU1_DISP0_DATA16 0x80000000
+				MX6DL_PAD_DISP0_DAT17__IPU1_DISP0_DATA17 0x80000000
+				MX6DL_PAD_DISP0_DAT18__IPU1_DISP0_DATA18 0x80000000
+				MX6DL_PAD_DISP0_DAT19__IPU1_DISP0_DATA19 0x80000000
+				MX6DL_PAD_DISP0_DAT20__IPU1_DISP0_DATA20 0x80000000
+				MX6DL_PAD_DISP0_DAT21__IPU1_DISP0_DATA21 0x80000000
+				MX6DL_PAD_DISP0_DAT22__IPU1_DISP0_DATA22 0x80000000
+				MX6DL_PAD_DISP0_DAT23__IPU1_DISP0_DATA23 0x80000000
+				MX6DL_PAD_DI0_PIN2__IPU1_DI0_PIN02 0x80000000
+				MX6DL_PAD_DI0_PIN3__IPU1_DI0_PIN03 0x80000000
+				MX6DL_PAD_DI0_PIN15__IPU1_DI0_PIN15 0x80000000
+				MX6DL_PAD_DI0_DISP_CLK__IPU1_DI0_DISP_CLK 0x80000000
+			>;
+		};
+	};
+
+	i2c3 {
+		pinctrl_i2c3_2: i2c3grp-2 {
+			fsl,pins = <
+				MX6DL_PAD_GPIO_5__I2C3_SCL 0x4001b8b1
+				MX6DL_PAD_GPIO_6__I2C3_SDA 0x4001b8b1
+			>;
+		};
+	};
+
+	uart2 {
+		pinctrl_uart2_2: uart2grp-2 {
+			fsl,pins = <
+				MX6DL_PAD_SD4_DAT4__UART2_RX_DATA 0x1b0b1
+				MX6DL_PAD_SD4_DAT7__UART2_TX_DATA 0x1b0b1
+			>;
+		};
+	};
+
+	usdhc2 {
+		pinctrl_usdhc2_tqma6x: usdhc2grp-tqma6x {
+			fsl,pins = <
+				MX6DL_PAD_SD2_CMD__SD2_CMD    0x000070f0
+				MX6DL_PAD_SD2_CLK__SD2_CLK    0x000070f0
+				MX6DL_PAD_SD2_DAT0__SD2_DATA0 0x000070f0
+				MX6DL_PAD_SD2_DAT1__SD2_DATA1 0x000070f0
+				MX6DL_PAD_SD2_DAT2__SD2_DATA2 0x000070f0
+				MX6DL_PAD_SD2_DAT3__SD2_DATA3 0x000070f0
+			>;
+		};
+	};
+};
diff --git a/arch/arm/dts/imx6q-mba6x.dts b/arch/arm/dts/imx6q-mba6x.dts
new file mode 100644
index 0000000..f2ca177
--- /dev/null
+++ b/arch/arm/dts/imx6q-mba6x.dts
@@ -0,0 +1,71 @@
+/*
+ * Copyright 2013 Sascha Hauer, Pengutronix
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+/dts-v1/;
+
+#include "imx6q-tqma6q.dtsi"
+#include "imx6qdl-mba6x.dtsi"
+
+/ {
+	model = "TQ TQMA6Q on MBa6x";
+	compatible = "tq,mba6x", "tq,tqma6q", "fsl,imx6q";
+
+	chosen {
+		linux,stdout-path = &uart2;
+	};
+
+	memory {
+		reg = <0x10000000 0x40000000>;
+	};
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	gpiobuttons {
+		pinctrl_gpiobuttons_1: gpiogrp-1 {
+			fsl,pins = <
+				MX6Q_PAD_GPIO_17__GPIO7_IO12 0x80000000
+				MX6Q_PAD_GPIO_18__GPIO7_IO13 0x80000000
+				MX6Q_PAD_GPIO_8__GPIO1_IO08 0x80000000
+			>;
+		};
+	};
+
+	hog {
+		pinctrl_hog: hoggrp-1 {
+			fsl,pins = <
+				MX6Q_PAD_ENET_CRS_DV__GPIO1_IO25 0x80000000 /* FEC phy reset */
+				MX6Q_PAD_GPIO_4__GPIO1_IO04  0x80000000 /* usdhc2 CD */
+				MX6Q_PAD_GPIO_2__GPIO1_IO02 0x80000000 /* usdhc2 WP */
+				MX6Q_PAD_EIM_D19__GPIO3_IO19 0x80000000 /* eCSPI1 SS1 */
+				MX6Q_PAD_NANDF_RB0__GPIO6_IO10 0x80000000 /* PMIC irq */
+				MX6Q_PAD_EIM_D22__GPIO3_IO22 0x80000000
+				MX6Q_PAD_SD1_DAT3__GPIO1_IO21 0x80000000 /* beeper (1 = on) */
+				MX6Q_PAD_GPIO_16__GPIO7_IO11 0x80000000 /* LCD.PWR_EN */
+				MX6Q_PAD_GPIO_7__GPIO1_IO07 0x80000000 /* LCD.RESET */
+				MX6Q_PAD_GPIO_19__GPIO4_IO05 0x80000000 /* LCD.BLT_EN */
+				MX6Q_PAD_DI0_PIN4__GPIO4_IO20 0x80000000 /* LCD.CONTRAST */
+			>;
+		};
+	};
+};
+
+&disp0 {
+	pinctrl-names = "ipu1-di0", "ipu2-di0";
+	pinctrl-0 = <&pinctrl_disp0_ipu1>;
+	pinctrl-1 = <&pinctrl_disp0_ipu2>;
+	crtcs = <&ipu1 0 &ipu2 0>;
+};
+
+&sata {
+	status = "okay";
+};
diff --git a/arch/arm/dts/imx6q-tqma6q.dtsi b/arch/arm/dts/imx6q-tqma6q.dtsi
new file mode 100644
index 0000000..882f409
--- /dev/null
+++ b/arch/arm/dts/imx6q-tqma6q.dtsi
@@ -0,0 +1,132 @@
+/*
+ * Copyright 2013 Sascha Hauer, Pengutronix
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+#include "imx6q.dtsi"
+#include "imx6qdl-tqma6x.dtsi"
+
+&iomuxc {
+	can1 {
+		pinctrl_can1_1: can1grp-1 {
+			fsl,pins = <
+				MX6Q_PAD_KEY_COL2__FLEXCAN1_TX 0x80000000
+				MX6Q_PAD_KEY_ROW2__FLEXCAN1_RX 0x80000000
+			>;
+		};
+	};
+
+	can2 {
+		pinctrl_can2_1: can2grp-1 {
+			fsl,pins = <
+				MX6Q_PAD_KEY_COL4__FLEXCAN2_TX 0x80000000
+				MX6Q_PAD_KEY_ROW4__FLEXCAN2_RX 0x80000000
+			>;
+		};
+	};
+
+	disp0 {
+		pinctrl_disp0_ipu1: disp0grp-1 {
+			fsl,pins = <
+				MX6Q_PAD_DISP0_DAT0__IPU1_DISP0_DATA00 0x80000000
+				MX6Q_PAD_DISP0_DAT1__IPU1_DISP0_DATA01 0x80000000
+				MX6Q_PAD_DISP0_DAT2__IPU1_DISP0_DATA02 0x80000000
+				MX6Q_PAD_DISP0_DAT3__IPU1_DISP0_DATA03 0x80000000
+				MX6Q_PAD_DISP0_DAT4__IPU1_DISP0_DATA04 0x80000000
+				MX6Q_PAD_DISP0_DAT5__IPU1_DISP0_DATA05 0x80000000
+				MX6Q_PAD_DISP0_DAT6__IPU1_DISP0_DATA06 0x80000000
+				MX6Q_PAD_DISP0_DAT7__IPU1_DISP0_DATA07 0x80000000
+				MX6Q_PAD_DISP0_DAT8__IPU1_DISP0_DATA08 0x80000000
+				MX6Q_PAD_DISP0_DAT9__IPU1_DISP0_DATA09 0x80000000
+				MX6Q_PAD_DISP0_DAT10__IPU1_DISP0_DATA10 0x80000000
+				MX6Q_PAD_DISP0_DAT11__IPU1_DISP0_DATA11 0x80000000
+				MX6Q_PAD_DISP0_DAT12__IPU1_DISP0_DATA12 0x80000000
+				MX6Q_PAD_DISP0_DAT13__IPU1_DISP0_DATA13 0x80000000
+				MX6Q_PAD_DISP0_DAT14__IPU1_DISP0_DATA14 0x80000000
+				MX6Q_PAD_DISP0_DAT15__IPU1_DISP0_DATA15 0x80000000
+				MX6Q_PAD_DISP0_DAT16__IPU1_DISP0_DATA16 0x80000000
+				MX6Q_PAD_DISP0_DAT17__IPU1_DISP0_DATA17 0x80000000
+				MX6Q_PAD_DISP0_DAT18__IPU1_DISP0_DATA18 0x80000000
+				MX6Q_PAD_DISP0_DAT19__IPU1_DISP0_DATA19 0x80000000
+				MX6Q_PAD_DISP0_DAT20__IPU1_DISP0_DATA20 0x80000000
+				MX6Q_PAD_DISP0_DAT21__IPU1_DISP0_DATA21 0x80000000
+				MX6Q_PAD_DISP0_DAT22__IPU1_DISP0_DATA22 0x80000000
+				MX6Q_PAD_DISP0_DAT23__IPU1_DISP0_DATA23 0x80000000
+				MX6Q_PAD_DI0_PIN2__IPU1_DI0_PIN02 0x80000000
+				MX6Q_PAD_DI0_PIN3__IPU1_DI0_PIN03 0x80000000
+				MX6Q_PAD_DI0_PIN15__IPU1_DI0_PIN15 0x80000000
+				MX6Q_PAD_DI0_DISP_CLK__IPU1_DI0_DISP_CLK 0x80000000
+			>;
+		};
+
+		pinctrl_disp0_ipu2: disp0grp-2 {
+			fsl,pins = <
+				MX6Q_PAD_DISP0_DAT0__IPU2_DISP0_DATA00 0x80000000
+				MX6Q_PAD_DISP0_DAT1__IPU2_DISP0_DATA01 0x80000000
+				MX6Q_PAD_DISP0_DAT2__IPU2_DISP0_DATA02 0x80000000
+				MX6Q_PAD_DISP0_DAT3__IPU2_DISP0_DATA03 0x80000000
+				MX6Q_PAD_DISP0_DAT4__IPU2_DISP0_DATA04 0x80000000
+				MX6Q_PAD_DISP0_DAT5__IPU2_DISP0_DATA05 0x80000000
+				MX6Q_PAD_DISP0_DAT6__IPU2_DISP0_DATA06 0x80000000
+				MX6Q_PAD_DISP0_DAT7__IPU2_DISP0_DATA07 0x80000000
+				MX6Q_PAD_DISP0_DAT8__IPU2_DISP0_DATA08 0x80000000
+				MX6Q_PAD_DISP0_DAT9__IPU2_DISP0_DATA09 0x80000000
+				MX6Q_PAD_DISP0_DAT10__IPU2_DISP0_DATA10 0x80000000
+				MX6Q_PAD_DISP0_DAT11__IPU2_DISP0_DATA11 0x80000000
+				MX6Q_PAD_DISP0_DAT12__IPU2_DISP0_DATA12 0x80000000
+				MX6Q_PAD_DISP0_DAT13__IPU2_DISP0_DATA13 0x80000000
+				MX6Q_PAD_DISP0_DAT14__IPU2_DISP0_DATA14 0x80000000
+				MX6Q_PAD_DISP0_DAT15__IPU2_DISP0_DATA15 0x80000000
+				MX6Q_PAD_DISP0_DAT16__IPU2_DISP0_DATA16 0x80000000
+				MX6Q_PAD_DISP0_DAT17__IPU2_DISP0_DATA17 0x80000000
+				MX6Q_PAD_DISP0_DAT18__IPU2_DISP0_DATA18 0x80000000
+				MX6Q_PAD_DISP0_DAT19__IPU2_DISP0_DATA19 0x80000000
+				MX6Q_PAD_DISP0_DAT20__IPU2_DISP0_DATA20 0x80000000
+				MX6Q_PAD_DISP0_DAT21__IPU2_DISP0_DATA21 0x80000000
+				MX6Q_PAD_DISP0_DAT22__IPU2_DISP0_DATA22 0x80000000
+				MX6Q_PAD_DISP0_DAT23__IPU2_DISP0_DATA23 0x80000000
+				MX6Q_PAD_DI0_PIN2__IPU2_DI0_PIN02 0x80000000
+				MX6Q_PAD_DI0_PIN3__IPU2_DI0_PIN03 0x80000000
+				MX6Q_PAD_DI0_PIN15__IPU2_DI0_PIN15 0x80000000
+				MX6Q_PAD_DI0_DISP_CLK__IPU2_DI0_DISP_CLK 0x80000000
+			>;
+		};
+	};
+
+	i2c3 {
+		pinctrl_i2c3_2: i2c3grp-2 {
+			fsl,pins = <
+				MX6Q_PAD_GPIO_5__I2C3_SCL 0x4001b8b1
+				MX6Q_PAD_GPIO_6__I2C3_SDA 0x4001b8b1
+			>;
+		};
+	};
+
+	uart2 {
+		pinctrl_uart2_2: uart2grp-2 {
+			fsl,pins = <
+				MX6Q_PAD_SD4_DAT4__UART2_RX_DATA 0x1b0b1
+				MX6Q_PAD_SD4_DAT7__UART2_TX_DATA 0x1b0b1
+			>;
+		};
+	};
+
+	usdhc2 {
+		pinctrl_usdhc2_tqma6x: usdhc2grp-tqma6x {
+			fsl,pins = <
+				MX6Q_PAD_SD2_CMD__SD2_CMD    0x000070f0
+				MX6Q_PAD_SD2_CLK__SD2_CLK    0x000070f0
+				MX6Q_PAD_SD2_DAT0__SD2_DATA0 0x000070f0
+				MX6Q_PAD_SD2_DAT1__SD2_DATA1 0x000070f0
+				MX6Q_PAD_SD2_DAT2__SD2_DATA2 0x000070f0
+				MX6Q_PAD_SD2_DAT3__SD2_DATA3 0x000070f0
+			>;
+		};
+	};
+};
diff --git a/arch/arm/dts/imx6q-tqma6x.dts b/arch/arm/dts/imx6q-tqma6x.dts
new file mode 100644
index 0000000..a309e8f
--- /dev/null
+++ b/arch/arm/dts/imx6q-tqma6x.dts
@@ -0,0 +1,320 @@
+/*
+ * Copyright 2013 Sascha Hauer, Pengutronix
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+/dts-v1/;
+
+#include "imx6q.dtsi"
+
+/ {
+	model = "TQ TQMa6x";
+	compatible = "tq,tqma6x", "fsl,imx6q";
+
+	chosen {
+		linux,stdout-path = "/soc/aips-bus@02100000/serial@021e8000";
+	};
+
+	memory {
+		reg = <0x10000000 0x40000000>;
+	};
+
+	gpio_buttons: gpio_buttons@0 {
+		compatible = "gpio-keys";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpiobuttons_1>;
+
+		button@1 {
+			label = "button0";
+			linux,code = <0x100>;
+			gpios = <&gpio7 13 0>;
+		};
+
+		button@2 {
+			label = "button1";
+			linux,code = <0x101>;
+			gpios = <&gpio7 12 0>;
+		};
+
+		button@3 {
+			label = "button2";
+			linux,code = <0x102>;
+			gpios = <&gpio1 8 0>;
+		};
+	};
+};
+
+&can1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_can1_1>;
+	status = "okay";
+};
+
+&can2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_can2_1>;
+	status = "okay";
+};
+
+&ecspi1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi1_1>;
+	fsl,spi-num-chipselects = <1>;
+	cs-gpios = <&gpio3 19 0>;
+	status = "okay";
+
+	flash: m25p80@0 {
+		compatible = "m25p80";
+		spi-max-frequency = <40000000>;
+		reg = <0>;
+	};
+};
+
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet_1>;
+	phy-mode = "rgmii";
+	status = "okay";
+};
+
+&hdmi {
+	status = "okay";
+	ddc = <&i2c2>;
+};
+
+&i2c3 {
+	status = "okay";
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c3_2>;
+
+	pmic: pf0100@08 {
+		compatible = "pf0100-regulator";
+		reg = <0x08>;
+		interrupt-parent = <&gpio6>;
+		interrupts = <10 8>;
+
+		regulators {
+			reg_vddcore: sw1ab {
+				regulator-min-microvolt = <300000>;
+				regulator-max-microvolt = <1875000>;
+				regulator-always-on;
+			};
+
+			reg_vddsoc: sw1c {
+				regulator-min-microvolt = <300000>;
+				regulator-max-microvolt = <1875000>;
+				regulator-always-on;
+			};
+
+			reg_gen_3v3: sw2 {
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			reg_ddr_1v5a: sw3a {
+				regulator-min-microvolt = <400000>;
+				regulator-max-microvolt = <1975000>;
+				regulator-always-on;
+			};
+
+			reg_ddr_1v5b: sw3b {
+				regulator-min-microvolt = <400000>;
+				regulator-max-microvolt = <1975000>;
+				regulator-always-on;
+			};
+
+			reg_ddr_vtt: sw4 {
+				regulator-min-microvolt = <400000>;
+				regulator-max-microvolt = <1975000>;
+				regulator-always-on;
+			};
+
+			reg_5v_600mA: swbst {
+				regulator-min-microvolt = <5000000>;
+				regulator-max-microvolt = <5150000>;
+				regulator-always-on;
+			};
+
+			reg_snvs_3v: vsnvs {
+				regulator-min-microvolt = <1500000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-always-on;
+			};
+
+			reg_vrefddr: vrefddr {
+				regulator-min-microvolt = <750000>;
+				regulator-max-microvolt = <750000>;
+				regulator-always-on;
+			};
+
+			reg_vgen1_1v5: vgen1 {
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1550000>;
+				/* not used */
+			};
+
+			reg_vgen2_1v2_eth: vgen2 {
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1550000>;
+				regulator-always-on;
+			};
+
+			reg_vgen3_2v8: vgen3 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			reg_vgen4_1v8: vgen4 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			reg_vgen5_1v8_eth: vgen5 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			reg_vgen6_3v3: vgen6 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+		};
+	};
+
+	sensor1: lm75@48 {
+		compatible = "lm75";
+		reg = <0x48>;
+	};
+
+	sensor2: lm75@49 {
+		compatible = "lm75";
+		reg = <0x49>;
+	};
+
+	eeprom: m24c64@50 { /* FIXME: Baseboard */
+		compatible = "st,24c64", "at24";
+		reg = <0x50>;
+	};
+
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	can1 {
+		pinctrl_can1_1: can1grp-1 {
+			fsl,pins = <
+				MX6Q_PAD_KEY_COL2__FLEXCAN1_TX 0x80000000
+				MX6Q_PAD_KEY_ROW2__FLEXCAN1_RX 0x80000000
+			>;
+		};
+	};
+
+	can2 {
+		pinctrl_can2_1: can2grp-1 {
+			fsl,pins = <
+				MX6Q_PAD_KEY_COL4__FLEXCAN2_TX 0x80000000
+				MX6Q_PAD_KEY_ROW4__FLEXCAN2_RX 0x80000000
+			>;
+		};
+	};
+
+	hog {
+		pinctrl_hog: hoggrp-1 {
+			fsl,pins = <
+				MX6Q_PAD_ENET_CRS_DV__GPIO1_IO25 0x80000000 /* FEC phy reset */
+				MX6Q_PAD_GPIO_4__GPIO1_IO04  0x80000000 /* usdhc2 CD */
+				MX6Q_PAD_GPIO_2__GPIO1_IO02 0x80000000 /* usdhc2 WP */
+				MX6Q_PAD_EIM_D19__GPIO3_IO19 0x80000000 /* eCSPI1 SS1 */
+				MX6Q_PAD_NANDF_RB0__GPIO6_IO10 0x80000000 /* PMIC irq */
+				MX6Q_PAD_EIM_D22__GPIO3_IO22 0x80000000
+			>;
+		};
+	};
+
+	i2c3 {
+		pinctrl_i2c3_2: i2c3grp-2 {
+			fsl,pins = <
+				MX6Q_PAD_GPIO_5__I2C3_SCL 0x4001b8b1
+				MX6Q_PAD_GPIO_6__I2C3_SDA 0x4001b8b1
+			>;
+		};
+	};
+
+	uart2 {
+		pinctrl_uart2_2: uart2grp-2 {
+			fsl,pins = <
+				MX6Q_PAD_SD4_DAT4__UART2_RX_DATA 0x1b0b1
+				MX6Q_PAD_SD4_DAT7__UART2_TX_DATA 0x1b0b1
+			>;
+		};
+	};
+
+	gpiobuttons {
+		pinctrl_gpiobuttons_1: gpiogrp-1 {
+			fsl,pins = <
+				MX6Q_PAD_GPIO_17__GPIO7_IO12 0x80000000
+				MX6Q_PAD_GPIO_18__GPIO7_IO13 0x80000000
+				MX6Q_PAD_GPIO_8__GPIO1_IO08 0x80000000
+			>;
+		};
+	};
+};
+
+&sata {
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2_2>;
+};
+
+&usbh1 {
+	status = "okay";
+	barebox,phy_type = "utmi";
+	disable-over-current;
+};
+
+&usbotg {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usbotg_1>;
+	barebox,phy_type = "utmi";
+	barebox,dr_mode = "peripheral";
+	dr_mode = "host";
+	disable-over-current;
+	otg_id_pin_select_change;
+	status = "okay";
+};
+
+&usdhc2 { /* Baseboard Slot */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc2_1>;
+	cd-gpios = <&gpio1 4 0>;
+	wp-gpios = <&gpio1 2 0>;
+	max-frequency = <1000000>;
+	status = "okay";
+};
+
+&usdhc3 { /* eMMC */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc3_1>;
+	non-removable;
+	bus-width = <8>;
+	status = "disabled";
+};
diff --git a/arch/arm/dts/imx6qdl-mba6x.dtsi b/arch/arm/dts/imx6qdl-mba6x.dtsi
new file mode 100644
index 0000000..4621112
--- /dev/null
+++ b/arch/arm/dts/imx6qdl-mba6x.dtsi
@@ -0,0 +1,190 @@
+/*
+ * Copyright 2013 Sascha Hauer, Pengutronix
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+/ {
+	gpio_buttons: gpio_buttons@0 {
+		compatible = "gpio-keys";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpiobuttons_1>;
+
+		button@1 {
+			label = "s6";
+			linux,code = <64>; /* KEY_F6 */
+			gpios = <&gpio7 13 0>;
+		};
+
+		button@2 {
+			label = "s7";
+			linux,code = <65>; /* KEY_F7 */
+			gpios = <&gpio7 12 0>;
+		};
+
+		button@3 {
+			label = "s8";
+			linux,code = <66>; /* KEY_F8 */
+			gpios = <&gpio1 8 0>;
+		};
+	};
+
+	beeper: beeper@0 {
+		compatible = "pwm-beeper";
+		pwms = <&pwm1 2 5000000>;
+	};
+
+	disp0: display@0 {
+		compatible = "fsl,imx-parallel-display";
+		interface-pix-fmt = "rgb24";
+		gpios = <&gpio7 11 0>; /* LCD.PWR_EN */
+		status = "disabled";
+
+		display-timings {
+			tx14d11vm1cpd {
+				clock-frequency = <4854369 5847953 7042253>;
+				hactive = <320>;
+				vactive = <240>;
+				hfront-porch = <22 30 35>;
+				hback-porch = <23 30 35>;
+				hsync-len = <4 5 7>;
+				vback-porch = <4 5 9>;
+				vfront-porch = <5 6 10>;
+				vsync-len = <2>;
+				pixelclk-active = <1>;
+				hsync-active = <0>;
+				vsync-active = <0>;
+				de-active = <1>;
+			};
+		};
+	};
+
+	gpio-leds {
+		compatible = "gpio-leds";
+
+		lcd-backlight-enable {
+			label = "backlight";
+			gpios = <&gpio4 5 0>; /* LCD.BLT_EN */
+			linux,default-trigger = "default-on";
+		};
+
+		lcd-contrast {
+			label = "contrast";
+			gpios = <&gpio4 20 0>; /* LCD.CONTRAST */
+			linux,default-trigger = "default-on";
+		};
+	};
+
+	sound {
+		/* Currently the kernel does not have a fabric driver for this */
+		compatible = "fsl,imx6-tqma6x-tlv320aic23",
+			     "fsl,imx-audio-tlv320aic23";
+		model = "imx6-tqma6x-tlv320aic23";
+		ssi-controller = <&ssi1>;
+		audio-codec = <&codec>;
+		mux-int-port = <1>;
+		mux-ext-port = <3>;
+	};
+};
+
+&audmux {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_audmux_2>;
+	status = "okay";
+};
+
+&can1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_can1_1>;
+	status = "okay";
+};
+
+&can2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_can2_1>;
+	status = "okay";
+};
+
+&i2c1 {
+	codec: tlv320@18 {
+		compatible = "ti,tlv320aic23";
+		reg = <0x18>;
+	};
+};
+
+&i2c3 {
+	sensor1: lm75@49 {
+		compatible = "lm75";
+		reg = <0x49>;
+	};
+};
+
+&ldb {
+	status = "disabled";
+
+	lvds-channel@0 {
+		fsl,data-mapping = "spwg";
+		fsl,data-width = <24>;
+		status = "disabled";
+
+		display-timings {
+			chimei-g070y2-l01 {
+				clock-frequency = <27000000 29500000 33000000>;
+				hactive = <800>;
+				vactive = <480>;
+				hfront-porch = <0>;
+				hback-porch = <0>;
+				hsync-len = <130 192 290>;
+				vback-porch = <0>;
+				vfront-porch = <2>;
+				vsync-len = <10 20 70>;
+				de-active = <1>;
+				hsync-active = <0>;
+				vsync-active = <0>;
+			};
+		};
+	};
+};
+
+&ssi1 {
+	fsl,mode = "i2s-slave";
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2_2>;
+};
+
+&usbh1 {
+	status = "okay";
+	barebox,phy_type = "utmi";
+	disable-over-current;
+};
+
+&usbotg {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usbotg_1>;
+	barebox,phy_type = "utmi";
+	barebox,dr_mode = "peripheral";
+	dr_mode = "host";
+	disable-over-current;
+	otg_id_pin_select_change;
+	status = "okay";
+};
+
+&usdhc2 { /* Baseboard Slot */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc2_tqma6x>;
+	cd-gpios = <&gpio1 4 0>;
+	wp-gpios = <&gpio1 2 0>;
+	status = "okay";
+};
diff --git a/arch/arm/dts/imx6qdl-tqma6x.dtsi b/arch/arm/dts/imx6qdl-tqma6x.dtsi
new file mode 100644
index 0000000..668fa25
--- /dev/null
+++ b/arch/arm/dts/imx6qdl-tqma6x.dtsi
@@ -0,0 +1,162 @@
+/*
+ * Copyright 2013 Sascha Hauer, Pengutronix
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+&ecspi1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi1_1>;
+	fsl,spi-num-chipselects = <1>;
+	cs-gpios = <&gpio3 19 0>;
+	status = "okay";
+
+	flash: m25p80@0 {
+		compatible = "m25p80";
+		spi-max-frequency = <40000000>;
+		reg = <0>;
+	};
+};
+
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet_1>;
+	phy-mode = "rgmii";
+	status = "okay";
+};
+
+&i2c1 {
+	status = "okay";
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1_2>;
+};
+
+&i2c3 {
+	status = "okay";
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c3_2>;
+
+	pmic: pf0100@08 {
+		compatible = "pf0100-regulator";
+		reg = <0x08>;
+		interrupt-parent = <&gpio6>;
+		interrupts = <10 8>;
+
+		regulators {
+			reg_vddcore: sw1ab {
+				regulator-min-microvolt = <300000>;
+				regulator-max-microvolt = <1875000>;
+				regulator-always-on;
+			};
+
+			reg_vddsoc: sw1c {
+				regulator-min-microvolt = <300000>;
+				regulator-max-microvolt = <1875000>;
+				regulator-always-on;
+			};
+
+			reg_gen_3v3: sw2 {
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			reg_ddr_1v5a: sw3a {
+				regulator-min-microvolt = <400000>;
+				regulator-max-microvolt = <1975000>;
+				regulator-always-on;
+			};
+
+			reg_ddr_1v5b: sw3b {
+				regulator-min-microvolt = <400000>;
+				regulator-max-microvolt = <1975000>;
+				regulator-always-on;
+			};
+
+			reg_ddr_vtt: sw4 {
+				regulator-min-microvolt = <400000>;
+				regulator-max-microvolt = <1975000>;
+				regulator-always-on;
+			};
+
+			reg_5v_600mA: swbst {
+				regulator-min-microvolt = <5000000>;
+				regulator-max-microvolt = <5150000>;
+				regulator-always-on;
+			};
+
+			reg_snvs_3v: vsnvs {
+				regulator-min-microvolt = <1500000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-always-on;
+			};
+
+			reg_vrefddr: vrefddr {
+				regulator-min-microvolt = <750000>;
+				regulator-max-microvolt = <750000>;
+				regulator-always-on;
+			};
+
+			reg_vgen1_1v5: vgen1 {
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1550000>;
+				/* not used */
+			};
+
+			reg_vgen2_1v2_eth: vgen2 {
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1550000>;
+				regulator-always-on;
+			};
+
+			reg_vgen3_2v8: vgen3 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			reg_vgen4_1v8: vgen4 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			reg_vgen5_1v8_eth: vgen5 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			reg_vgen6_3v3: vgen6 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+		};
+	};
+
+	sensor2: lm75@48 {
+		compatible = "lm75";
+		reg = <0x48>;
+	};
+
+	eeprom: m24c64@50 {
+		compatible = "st,24c64", "at24";
+		reg = <0x50>;
+	};
+};
+
+&usdhc3 { /* eMMC */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc3_1>;
+	non-removable;
+	bus-width = <8>;
+	status = "okay";
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index aedefe2..247fca1 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -32,6 +32,7 @@ config ARCH_TEXT_BASE
 	default 0x97f00000 if MACH_EFIKA_MX_SMARTBOOK
 	default 0x17800000 if MACH_SABRESD
 	default 0x4fc00000 if MACH_REALQ7
+	default 0x2fc00000 if MACH_TQMA6X
 
 config BOARDINFO
 	default "Eukrea CPUIMX25" if MACH_EUKREA_CPUIMX25
@@ -245,6 +246,10 @@ config MACH_REALQ7
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	select HAVE_PBL_MULTI_IMAGES
 
+config MACH_TQMA6X
+	bool "TQ tqma6x on mba6x"
+	select ARCH_IMX6
+
 endif
 
 # ----------------------------------------------------------
diff --git a/images/Makefile.imx b/images/Makefile.imx
index e54be06..b0551ea 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -35,3 +35,15 @@ CFG_start_imx6_realq7.pblx.imximg = $(board)/dmo-mx6-realq7/flash-header.imxcfg
 imximage-$(CONFIG_MACH_REALQ7) += start_imx6_realq7.pblx.imximg
 FILE_barebox-datamodul-edm-qmx6.img = start_imx6_realq7.pblx.imximg
 image-$(CONFIG_MACH_REALQ7) += barebox-datamodul-edm-qmx6.img
+
+pblx-$(CONFIG_MACH_TQMA6X) += start_imx6dl_mba6x
+CFG_start_imx6dl_mba6x.pblx.imximg = $(board)/tqma6x/flash-header-tqma6dl.imxcfg
+imximage-$(CONFIG_MACH_TQMA6X) += start_imx6dl_mba6x.pblx.imximg
+FILE_barebox-tq-tqma6s-mba6x.img = start_imx6dl_mba6x.pblx.imximg
+image-$(CONFIG_MACH_TQMA6X) += barebox-tq-tqma6s-mba6x.img
+
+pblx-$(CONFIG_MACH_TQMA6X) += start_imx6q_mba6x
+CFG_start_imx6q_mba6x.pblx.imximg = $(board)/tqma6x/flash-header-tqma6q.imxcfg
+imximage-$(CONFIG_MACH_TQMA6X) += start_imx6q_mba6x.pblx.imximg
+FILE_barebox-tq-tqma6q-mba6x.img = start_imx6q_mba6x.pblx.imximg
+image-$(CONFIG_MACH_TQMA6X) += barebox-tq-tqma6q-mba6x.img
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
