Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cGo7k-0001GY-T2
 for barebox@lists.infradead.org; Tue, 13 Dec 2016 14:32:13 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id ABCF6A00438
 for <barebox@lists.infradead.org>; Tue, 13 Dec 2016 15:32:33 +0100 (CET)
From: Christian Hemp <c.hemp@phytec.de>
Date: Tue, 13 Dec 2016 15:31:44 +0100
Message-Id: <1481639504-4034-2-git-send-email-c.hemp@phytec.de>
In-Reply-To: <1481639504-4034-1-git-send-email-c.hemp@phytec.de>
References: <1481639504-4034-1-git-send-email-c.hemp@phytec.de>
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
Subject: [PATCH 2/2] ARCH: ARM: Add support for phytec-phycore-imx6ul
To: barebox@lists.infradead.org

Add support for the phycore i.MX6 UltraLite.
 - 512MB RAM
 - 512MB NAND
 - 10/100 Mbit Ethernet

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
Signed-off-by: Stefan Lengfeld <s.lengfeld@phytec.de>
---
 arch/arm/boards/phytec-som-imx6/Makefile           |   1 +
 arch/arm/boards/phytec-som-imx6/board.c            |  60 +++++++
 .../defaultenv-physom-imx6ul-phycore/boot/nand     |   8 +
 .../init/automount                                 |   9 +
 .../flash-header-phytec-pcl063-512mb.imxcfg        |   9 +
 .../phytec-som-imx6/flash-header-phytec-pcl063.h   |  70 ++++++++
 arch/arm/boards/phytec-som-imx6/lowlevel.c         |  21 ++-
 arch/arm/dts/Makefile                              |   3 +-
 arch/arm/dts/imx6ul-phytec-phycore-som.dts         | 185 +++++++++++++++++++++
 arch/arm/mach-imx/Kconfig                          |   1 +
 images/Makefile.imx                                |   5 +
 11 files changed, 367 insertions(+), 5 deletions(-)
 create mode 100644 arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6ul-phycore/boot/nand
 create mode 100644 arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6ul-phycore/init/automount
 create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063-512mb.imxcfg
 create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063.h
 create mode 100644 arch/arm/dts/imx6ul-phytec-phycore-som.dts

diff --git a/arch/arm/boards/phytec-som-imx6/Makefile b/arch/arm/boards/phytec-som-imx6/Makefile
index 2f9c4a8..73456ae 100644
--- a/arch/arm/boards/phytec-som-imx6/Makefile
+++ b/arch/arm/boards/phytec-som-imx6/Makefile
@@ -2,3 +2,4 @@ obj-y += board.o
 lwl-y += lowlevel.o
 bbenv-y += defaultenv-physom-imx6
 bbenv-y += defaultenv-physom-imx6-phycore
+bbenv-y += defaultenv-physom-imx6ul-phycore
diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
index 930ad74..ed9453b 100644
--- a/arch/arm/boards/phytec-som-imx6/board.c
+++ b/arch/arm/boards/phytec-som-imx6/board.c
@@ -30,6 +30,9 @@
 #include <of.h>
 #include <mach/bbu.h>
 #include <platform_data/eth-fec.h>
+#include <mfd/imx6q-iomuxc-gpr.h>
+#include <linux/clk.h>
+#include <linux/micrel_phy.h>
 
 #include <globalvar.h>
 
@@ -86,6 +89,56 @@ static unsigned int get_module_rev(void)
 	return 16 - val;
 }
 
+int ksz8081_phy_fixup(struct phy_device *phydev)
+{
+	phy_write(phydev, 0x1f, 0x8190);
+	phy_write(phydev, 0x16, 0x202);
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
 static int physom_imx6_devices_init(void)
 {
 	int ret;
@@ -121,6 +174,11 @@ static int physom_imx6_devices_init(void)
 		default_environment_path = "/chosen/environment-spinor";
 		default_envdev = "SPI NOR flash";
 
+	} else if (of_machine_is_compatible("phytec,imx6ul-pcl063")) {
+		barebox_set_hostname("phyCORE-i.MX6UL");
+		default_environment_path = "/chosen/environment-nand";
+		default_envdev = "NAND flash";
+		imx6ul_setup_fec();
 	} else
 		return 0;
 
@@ -171,6 +229,8 @@ static int physom_imx6_devices_init(void)
 		|| of_machine_is_compatible("phytec,imx6dl-pcm058-nand")
 		|| of_machine_is_compatible("phytec,imx6dl-pcm058-emmc")) {
 		defaultenv_append_directory(defaultenv_physom_imx6_phycore);
+	} else if (of_machine_is_compatible("phytec,imx6ul-pcl063")) {
+		defaultenv_append_directory(defaultenv_physom_imx6ul_phycore);
 	}
 
 	return 0;
diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6ul-phycore/boot/nand b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6ul-phycore/boot/nand
new file mode 100644
index 0000000..6ec0d44
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6ul-phycore/boot/nand
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+[ ! -e /dev/nand0.root.ubi ] && ubiattach /dev/nand0.root
+
+global.bootm.image="/dev/nand0.root.ubi.kernel"
+global.bootm.oftree="/dev/nand0.root.ubi.oftree"
+
+global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=root rootfstype=ubifs rw"
diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6ul-phycore/init/automount b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6ul-phycore/init/automount
new file mode 100644
index 0000000..71d9086
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6ul-phycore/init/automount
@@ -0,0 +1,9 @@
+#!/bin/sh
+
+# automount tftp server based on $eth0.serverip
+
+mkdir -p /mnt/tftp
+automount /mnt/tftp 'ifup eth0 && mount -t tftp $eth0.serverip /mnt/tftp'
+
+mkdir -p /mnt/mmc
+automount -d /mnt/mmc 'mmc0.probe=1 && [ -e /dev/mmc0.0 ] && mount /dev/mmc0.0 /mnt/mmc'
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063-512mb.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063-512mb.imxcfg
new file mode 100644
index 0000000..c4122d2
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063-512mb.imxcfg
@@ -0,0 +1,9 @@
+
+#define SETUP_MDCFG0			\
+	wm 32 0x021B000C 0x676B52F3
+
+#define SETUP_MDASP_MDCTL		\
+	wm 32 0x021B0040 0x0000004F;	\
+	wm 32 0x021B0000 0x84180000
+
+#include "flash-header-phytec-pcl063.h"
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063.h b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063.h
new file mode 100644
index 0000000..5401e42
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063.h
@@ -0,0 +1,70 @@
+
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
+wm 32 0x021B083C 0x41480148
+wm 32 0x021B0848 0x40403E42
+wm 32 0x021B0850 0x40405852
+wm 32 0x021B081C 0x33333333
+wm 32 0x021B0820 0x33333333
+wm 32 0x021B082C 0xf3333333
+wm 32 0x021B0830 0xf3333333
+wm 32 0x021B08C0 0x00922012
+wm 32 0x021B0858 0x00000F00
+wm 32 0x021B08b8 0x00000800
+wm 32 0x021B0004 0x0002002D
+wm 32 0x021B0008 0x1B333030
+
+SETUP_MDCFG0
+
+wm 32 0x021B0010 0xB66D0B63
+wm 32 0x021B0014 0x01FF00DB
+wm 32 0x021B0018 0x00211740
+wm 32 0x021B001C 0x00008000
+wm 32 0x021B002C 0x000026D2
+wm 32 0x021B0030 0x006B1023
+
+SETUP_MDASP_MDCTL
+
+wm 32 0x021b0890 0x00400A38
+wm 32 0x021B001C 0x02008032
+wm 32 0x021B001C 0x00008033
+wm 32 0x021B001C 0x00048031
+wm 32 0x021B001C 0x15208030
+wm 32 0x021B001C 0x04008040
+wm 32 0x021B0020 0x00007800
+wm 32 0x021B0818 0x00000227
+wm 32 0x021B0004 0x0002556D
+wm 32 0x021B0404 0x00011006
+wm 32 0x021B001C 0x00000000
diff --git a/arch/arm/boards/phytec-som-imx6/lowlevel.c b/arch/arm/boards/phytec-som-imx6/lowlevel.c
index c732d32..3ab88f4 100644
--- a/arch/arm/boards/phytec-som-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx6/lowlevel.c
@@ -51,17 +51,28 @@ static void __noreturn start_imx6_phytec_common(uint32_t size,
 						bool do_early_uart_config,
 						void *fdt_blob_fixed_offset)
 {
+	int cpu_type = __imx6_cpu_type();
 	void *fdt;
 
-	imx6_cpu_lowlevel_init();
-
-	arm_setup_stack(0x00920000 - 8);
+	if (cpu_type == IMX6_CPUTYPE_IMX6UL) {
+		arm_cpu_lowlevel_init();
+		/* OCRAM Free Area is 0x00907000 to 0x00918000 (68KB) */
+		arm_setup_stack(0x00910000 - 8);
+	} else {
+		imx6_cpu_lowlevel_init();
+		/* OCRAM Free Area is 0x00907000 to 0x00938000 (196KB) */
+		arm_setup_stack(0x00920000 - 8);
+	}
 
 	if (do_early_uart_config && IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
 	fdt = fdt_blob_fixed_offset - get_runtime_offset();
-	barebox_arm_entry(0x10000000, size, fdt);
+
+	if (cpu_type == IMX6_CPUTYPE_IMX6UL)
+		barebox_arm_entry(0x80000000, size, fdt);
+	else
+		barebox_arm_entry(0x10000000, size, fdt);
 }
 
 #define PHYTEC_ENTRY(name, fdt_name, memory_size, do_early_uart_config)	\
@@ -98,3 +109,5 @@ PHYTEC_ENTRY(start_phytec_phycore_imx6dl_som_emmc_1gib, imx6dl_phytec_phycore_so
 PHYTEC_ENTRY(start_phytec_phycore_imx6q_som_nand_1gib, imx6q_phytec_phycore_som_nand, SZ_1G, true);
 PHYTEC_ENTRY(start_phytec_phycore_imx6q_som_emmc_1gib, imx6q_phytec_phycore_som_emmc, SZ_1G, true);
 PHYTEC_ENTRY(start_phytec_phycore_imx6q_som_emmc_2gib, imx6q_phytec_phycore_som_emmc, SZ_2G, true);
+
+PHYTEC_ENTRY(start_phytec_phycore_imx6ul_som_512mb, imx6ul_phytec_phycore_som, SZ_512M, false);
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 607c620..8ba9957 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -51,7 +51,8 @@ pbl-dtb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += imx6q-phytec-pbaa03.dtb.o \
 				imx6q-phytec-phycore-som-nand.dtb.o \
 				imx6q-phytec-phycore-som-emmc.dtb.o \
 				imx6dl-phytec-phycore-som-nand.dtb.o \
-				imx6dl-phytec-phycore-som-emmc.dtb.o
+				imx6dl-phytec-phycore-som-emmc.dtb.o \
+				imx6ul-phytec-phycore-som.dtb.o
 pbl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += armada-xp-openblocks-ax3-4-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6) += kirkwood-openblocks_a6-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
diff --git a/arch/arm/dts/imx6ul-phytec-phycore-som.dts b/arch/arm/dts/imx6ul-phytec-phycore-som.dts
new file mode 100644
index 0000000..65a9365
--- /dev/null
+++ b/arch/arm/dts/imx6ul-phytec-phycore-som.dts
@@ -0,0 +1,185 @@
+/*
+ * Copyright (C) 2016 PHYTEC Messtechnik GmbH
+ * Author: Christian Hemp <c.hemp@phytec.de>
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
+
+#include <arm/imx6ul.dtsi>
+
+/ {
+	model = "Phytec phyCORE-i.MX6 Ultra Lite SOM";
+	compatible = "phytec,imx6ul-pcl063", "fsl,imx6ul";
+
+	chosen {
+		linux,stdout-path = &uart1;
+
+		environment-nand {
+			compatible = "barebox,environment";
+			device-path = &gpmi, "partname:barebox-environment";
+			status = "disabled";
+		};
+
+		environment-sd1 {
+			compatible = "barebox,environment";
+			device-path = &usdhc1, "partname:barebox-environment";
+			status = "disabled";
+		};
+	};
+};
+
+&fec1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet1>;
+	phy-mode = "rmii";
+	phy-handle = <&ethphy0>;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy0: ethernet-phy@1 {
+			reg = <1>;
+		};
+	};
+};
+
+&gpmi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpmi_nand>;
+	nand-on-flash-bbt;
+	fsl,no-blockmark-swap;
+	status = "okay";
+
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0x400000>;
+	};
+
+	partition@400000 {
+		label = "barebox-environment";
+		reg = <0x400000 0x100000>;
+	};
+
+	partition@500000 {
+		label = "root";
+		reg = <0x500000 0x0>;
+	};
+};
+
+&i2c1 {
+	pinctrl-names = "default";
+	pinctrl-0 =<&pinctrl_i2c1>;
+	clock-frequency = <100000>;
+	status = "okay";
+
+	eeprom@52 {
+		compatible = "cat,24c32";
+		reg = <0x52>;
+	};
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	status = "okay";
+};
+
+&usdhc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc1>;
+	cd-gpios = <&gpio1 19 GPIO_ACTIVE_LOW>;
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
+        pinctrl-names = "default";
+
+	imx6ul-phytec-phycore-som {
+
+		pinctrl_enet1: enet1grp {
+			fsl,pins = <
+				MX6UL_PAD_GPIO1_IO07__ENET1_MDC		0x1b0b0
+				MX6UL_PAD_GPIO1_IO06__ENET1_MDIO	0x1b0b0
+				MX6UL_PAD_ENET1_RX_EN__ENET1_RX_EN	0x1b0b0
+				MX6UL_PAD_ENET1_RX_ER__ENET1_RX_ER	0x1b0b0
+				MX6UL_PAD_ENET1_RX_DATA0__ENET1_RDATA00	0x1b0b0
+				MX6UL_PAD_ENET1_RX_DATA1__ENET1_RDATA01	0x1b0b0
+				MX6UL_PAD_ENET1_TX_EN__ENET1_TX_EN	0x1b0b0
+				MX6UL_PAD_ENET1_TX_DATA0__ENET1_TDATA00	0x1b0b0
+				MX6UL_PAD_ENET1_TX_DATA1__ENET1_TDATA01	0x1b0b0
+				MX6UL_PAD_ENET1_TX_CLK__ENET1_REF_CLK1	0x4001b031
+			>;
+		};
+
+		pinctrl_gpmi_nand: gpminandgrp {
+			fsl,pins = <
+				MX6UL_PAD_NAND_CLE__RAWNAND_CLE		0x0b0b1
+				MX6UL_PAD_NAND_ALE__RAWNAND_ALE		0x0b0b1
+				MX6UL_PAD_NAND_WP_B__RAWNAND_WP_B	0x0b0b1
+				MX6UL_PAD_NAND_READY_B__RAWNAND_READY_B	0x0b000
+				MX6UL_PAD_NAND_CE0_B__RAWNAND_CE0_B	0x0b0b1
+				MX6UL_PAD_NAND_RE_B__RAWNAND_RE_B	0x0b0b1
+				MX6UL_PAD_NAND_WE_B__RAWNAND_WE_B	0x0b0b1
+				MX6UL_PAD_NAND_DATA00__RAWNAND_DATA00	0x0b0b1
+				MX6UL_PAD_NAND_DATA01__RAWNAND_DATA01	0x0b0b1
+				MX6UL_PAD_NAND_DATA02__RAWNAND_DATA02	0x0b0b1
+				MX6UL_PAD_NAND_DATA03__RAWNAND_DATA03	0x0b0b1
+				MX6UL_PAD_NAND_DATA04__RAWNAND_DATA04	0x0b0b1
+				MX6UL_PAD_NAND_DATA05__RAWNAND_DATA05	0x0b0b1
+				MX6UL_PAD_NAND_DATA06__RAWNAND_DATA06	0x0b0b1
+				MX6UL_PAD_NAND_DATA07__RAWNAND_DATA07	0x0b0b1
+			>;
+		};
+
+		pinctrl_i2c1: i2cgrp {
+			fsl,pins = <
+				MX6UL_PAD_UART4_TX_DATA__I2C1_SCL	0x4001b8b0
+				MX6UL_PAD_UART4_RX_DATA__I2C1_SDA	0x4001b8b0
+			>;
+		};
+
+		pinctrl_uart1: uart1grp {
+			fsl,pins = <
+				MX6UL_PAD_UART1_TX_DATA__UART1_DCE_TX	0x1b0b1
+				MX6UL_PAD_UART1_RX_DATA__UART1_DCE_RX	0x1b0b1
+			>;
+		};
+
+		pinctrl_usdhc1: usdhc1grp {
+			fsl,pins = <
+				MX6UL_PAD_SD1_CMD__USDHC1_CMD     	0x17059
+				MX6UL_PAD_SD1_CLK__USDHC1_CLK     	0x10059
+				MX6UL_PAD_SD1_DATA0__USDHC1_DATA0 	0x17059
+				MX6UL_PAD_SD1_DATA1__USDHC1_DATA1 	0x17059
+				MX6UL_PAD_SD1_DATA2__USDHC1_DATA2 	0x17059
+				MX6UL_PAD_SD1_DATA3__USDHC1_DATA3 	0x17059
+				MX6UL_PAD_UART1_RTS_B__GPIO1_IO19       0x17059 /* SD1 CD */
+			>;
+		};
+	};
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 28ac9f4..be89a3a 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -258,6 +258,7 @@ config MACH_FREESCALE_MX53_VMX53
 config MACH_PHYTEC_SOM_IMX6
         bool "Phytec phyCARD-i.MX6 and phyFLEX-i.MX6"
         select ARCH_IMX6
+	select ARCH_IMX6UL
 
 config MACH_DFI_FS700_M60
 	bool "DFI i.MX6 FS700 M60 Q7 Board"
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 983d896..3b911ec 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -394,6 +394,11 @@ CFG_start_phytec_phycore_imx6dl_som_emmc_1gib.pblx.imximg = $(board)/phytec-som-
 FILE_barebox-phytec-phycore-imx6dl-som-emmc-1gib.img = start_phytec_phycore_imx6dl_som_emmc_1gib.pblx.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6dl-som-emmc-1gib.img
 
+pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6ul_som_512mb
+CFG_start_phytec_phycore_imx6ul_som_512mb.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcl063-512mb.imxcfg
+FILE_barebox-phytec-phycore-imx6ul-512mb.img = start_phytec_phycore_imx6ul_som_512mb.pblx.imximg
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6ul-512mb.img
+
 pblx-$(CONFIG_MACH_GW_VENTANA) += start_imx6q_gw54xx_1gx64
 CFG_start_imx6q_gw54xx_1gx64.pblx.imximg = $(board)/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg
 FILE_barebox-gateworks-imx6q-ventana-1gx64.img = start_imx6q_gw54xx_1gx64.pblx.imximg
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
