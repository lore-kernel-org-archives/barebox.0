Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZueAU-00025K-RK
 for barebox@lists.infradead.org; Fri, 06 Nov 2015 10:23:01 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 23C66A0049B
 for <barebox@lists.infradead.org>; Fri,  6 Nov 2015 11:22:27 +0100 (CET)
From: Stefan Christ <s.christ@phytec.de>
Date: Fri, 6 Nov 2015 11:21:57 +0100
Message-Id: <1446805318-26691-10-git-send-email-s.christ@phytec.de>
In-Reply-To: <1446805318-26691-1-git-send-email-s.christ@phytec.de>
References: <1446805318-26691-1-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH 09/10] ARM: imx6q: Add support for Phytec phyCORE-i.MX6 SOM
To: barebox@lists.infradead.org

From: Christian Hemp <c.hemp@phytec.de>

Add Phytec phyCORE-i.MX6 SOM.
    Support:
     - imx6q-phytec-phycore-som-nand:
        - 1GB RAM on 1 Bank with 64Bit
        - 1GBit Ethernet
        - SPI NOR
        - NAND
        - SD
        - UART

     - imx6q-phytec-phycore-som-emmc
        - 1GB RAM on 1 Bank with 64Bit
        - 1GBit Ethernet
        - SPI NOR
        - eMMC
        - SD
        - UART

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
Signed-off-by: Stefan Christ <s.christ@phytec.de>
---
 arch/arm/boards/phytec-som-imx6/Makefile           |   1 +
 arch/arm/boards/phytec-som-imx6/board.c            |  13 +
 .../defaultenv-physom-imx6-mira/init/automount     |  14 ++
 .../flash-header-phytec-pcm058-1gib.imxcfg         |   8 +
 .../phytec-som-imx6/flash-header-phytec-pcm058.h   | 102 ++++++++
 arch/arm/boards/phytec-som-imx6/lowlevel.c         |   3 +
 arch/arm/dts/Makefile                              |   4 +-
 arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts     |  50 ++++
 arch/arm/dts/imx6q-phytec-phycore-som-nand.dts     |  72 ++++++
 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi       | 266 +++++++++++++++++++++
 images/Makefile.imx                                |  10 +
 11 files changed, 542 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/init/automount
 create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058-1gib.imxcfg
 create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058.h
 create mode 100644 arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
 create mode 100644 arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
 create mode 100644 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi

diff --git a/arch/arm/boards/phytec-som-imx6/Makefile b/arch/arm/boards/phytec-som-imx6/Makefile
index 7e385c2..c61e9cd 100644
--- a/arch/arm/boards/phytec-som-imx6/Makefile
+++ b/arch/arm/boards/phytec-som-imx6/Makefile
@@ -1,3 +1,4 @@
 obj-y += board.o
 lwl-y += lowlevel.o
 bbenv-y += defaultenv-physom-imx6
+bbenv-y += defaultenv-physom-imx6-mira
diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
index 2afe685..639a562 100644
--- a/arch/arm/boards/phytec-som-imx6/board.c
+++ b/arch/arm/boards/phytec-som-imx6/board.c
@@ -111,6 +111,13 @@ static int physom_imx6_devices_init(void)
 		default_environment_path = "/chosen/environment-nand";
 		default_envdev = "NAND flash";
 
+	} else if (of_machine_is_compatible("phytec,imx6q-pcm058-nand")
+		|| of_machine_is_compatible("phytec,imx6q-pcm058-emmc")) {
+
+		barebox_set_hostname("phyCORE-i.MX6");
+		default_environment_path = "/chosen/environment-spinor";
+		default_envdev = "SPI NOR flash";
+
 	} else
 		return 0;
 
@@ -148,6 +155,12 @@ static int physom_imx6_devices_init(void)
 
 	defaultenv_append_directory(defaultenv_physom_imx6);
 
+	/* Overwrite file /env/init/automount */
+	if (of_machine_is_compatible("phytec,imx6q-pcm058-nand")
+		|| of_machine_is_compatible("phytec,imx6q-pcm058-emmc")) {
+		defaultenv_append_directory(defaultenv_physom_imx6_mira);
+	}
+
 	return 0;
 }
 device_initcall(physom_imx6_devices_init);
diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/init/automount b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/init/automount
new file mode 100644
index 0000000..3659cf7
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/init/automount
@@ -0,0 +1,14 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "Automountpoints"
+	exit
+fi
+
+# automount tftp server based on $eth0.serverip
+
+mkdir -p /mnt/tftp
+automount /mnt/tftp 'ifup eth0 && mount -t tftp $eth0.serverip /mnt/tftp'
+
+mkdir -p /mnt/mmc
+automount -d /mnt/mmc 'mmc0.probe=1 && [ -e /dev/mmc0.0 ] && mount /dev/mmc0.0 /mnt/mmc'
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058-1gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058-1gib.imxcfg
new file mode 100644
index 0000000..5df46b9
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058-1gib.imxcfg
@@ -0,0 +1,8 @@
+#define SETUP_MDCFG0			\
+	wm 32 0x021b000c 0x555A7955
+
+#define SETUP_MDASP_MDCTL		\
+	wm 32 0x021b0040 0x00000027;	\
+	wm 32 0x021b0000 0x831A0000
+
+#include "flash-header-phytec-pcm058.h"
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058.h b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058.h
new file mode 100644
index 0000000..7cdf45c
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058.h
@@ -0,0 +1,102 @@
+soc imx6
+loadaddr 0x10000000
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
+wm 32 0x020e0590 0x00003000
+wm 32 0x020e0598 0x00003000
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
+wm 32 0x021b4800 0xa1380003
+wm 32 0x021b080c 0x00140014
+wm 32 0x021b0810 0x00230018
+wm 32 0x021b480c 0x000A001E
+wm 32 0x021b4810 0x000A0015
+wm 32 0x021b083c 0x43080314
+wm 32 0x021b0840 0x02680300
+wm 32 0x021b483c 0x430C0318
+wm 32 0x021b4840 0x03000254
+wm 32 0x021b0848 0x3A323234
+wm 32 0x021b4848 0x3E3C3242
+wm 32 0x021b0850 0x2A2E3632
+wm 32 0x021b4850 0x3C323E34
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
+
+SETUP_MDCFG0
+
+wm 32 0x021b0010 0xFF328F64
+wm 32 0x021b0014 0x01FF00DB
+wm 32 0x021b0018 0x00011740
+wm 32 0x021b001c 0x00008000
+wm 32 0x021b002c 0x000026d2
+wm 32 0x021b0030 0x003F1023
+
+SETUP_MDASP_MDCTL
+
+wm 32 0x021b001c 0x04088032
+wm 32 0x021b001c 0x0408803a
+wm 32 0x021b001c 0x00008033
+wm 32 0x021b001c 0x0000803b
+wm 32 0x021b001c 0x00048031
+wm 32 0x021b001c 0x00048039
+wm 32 0x021b001c 0x09408030
+wm 32 0x021b001c 0x09408038
+wm 32 0x021b001c 0x04008040
+wm 32 0x021b001c 0x04008048
+wm 32 0x021b0020 0x00007800
+wm 32 0x021b0818 0x00011117
+wm 32 0x021b4818 0x00011117
+wm 32 0x021b0004 0x00025576
+wm 32 0x021b0404 0x00011006
+wm 32 0x021b001c 0x00000000
+wm 32 0x020e0010 0xf00000ff
+wm 32 0x020e0018 0x007F007F
+wm 32 0x020e001c 0x007F007F
+wm 32 0x020c8000 0x80002021
diff --git a/arch/arm/boards/phytec-som-imx6/lowlevel.c b/arch/arm/boards/phytec-som-imx6/lowlevel.c
index 5e81155..555487b 100644
--- a/arch/arm/boards/phytec-som-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx6/lowlevel.c
@@ -91,3 +91,6 @@ PHYTEC_ENTRY(start_phytec_pbab01s_256mb_1bank, imx6s_phytec_pbab01, SZ_256M, fal
 PHYTEC_ENTRY(start_phytec_pbab01s_512mb_1bank, imx6s_phytec_pbab01, SZ_512M, false);
 PHYTEC_ENTRY(start_phytec_phyboard_alcor_1gib, imx6q_phytec_phyboard_alcor, SZ_1G, false);
 PHYTEC_ENTRY(start_phytec_phyboard_subra_512mb_1bank, imx6dl_phytec_phyboard_subra, SZ_512M, false);
+
+PHYTEC_ENTRY(start_phytec_phycore_imx6q_som_nand_1gib, imx6q_phytec_phycore_som_nand, SZ_1G, true);
+PHYTEC_ENTRY(start_phytec_phycore_imx6q_som_emmc_1gib, imx6q_phytec_phycore_som_emmc, SZ_1G, true);
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 1a9e85f..f6acbed 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -43,7 +43,9 @@ pbl-dtb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += imx6q-phytec-pbaa03.dtb.o \
 				imx6dl-phytec-pbab01.dtb.o \
 				imx6q-phytec-pbab01.dtb.o \
 				imx6q-phytec-phyboard-alcor.dtb.o \
-				imx6dl-phytec-phyboard-subra.dtb.o
+				imx6dl-phytec-phyboard-subra.dtb.o \
+				imx6q-phytec-phycore-som-nand.dtb.o \
+				imx6q-phytec-phycore-som-emmc.dtb.o
 pbl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += armada-xp-openblocks-ax3-4-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6) += kirkwood-openblocks_a6-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
diff --git a/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts b/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
new file mode 100644
index 0000000..6e19ab5
--- /dev/null
+++ b/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
@@ -0,0 +1,50 @@
+/*
+ * Copyright 2015 Christian Hemp, Phytec Messtechnik GmbH
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
+#include <arm/imx6q.dtsi>
+#include "imx6q.dtsi"
+#include "imx6qdl-phytec-phycore-som.dtsi"
+
+/ {
+	model = "Phytec phyCORE-i.MX6 Quad with eMMC";
+	compatible = "phytec,imx6q-pcm058-emmc", "fsl,imx6q";
+};
+
+&eeprom {
+	status = "okay";
+};
+
+&fec {
+	status = "okay";
+	phy-handle = <&ethphy>;
+	phy-mode = "rgmii";
+	phy-reset-gpios = <&gpio1 14 1>;
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy: ethernet-phy@3 {
+			reg = <3>;
+			max-speed = <1000>;
+		};
+	};
+};
+
+&usdhc1 {
+	status = "okay";
+};
+
+&usdhc4 {
+	status = "okay";
+};
diff --git a/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
new file mode 100644
index 0000000..06f2f71
--- /dev/null
+++ b/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
@@ -0,0 +1,72 @@
+/*
+ * Copyright 2015 Christian Hemp, Phytec Messtechnik GmbH
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
+#include <arm/imx6q.dtsi>
+#include "imx6q.dtsi"
+#include "imx6qdl-phytec-phycore-som.dtsi"
+
+/ {
+	model = "Phytec phyCORE-i.MX6 Quad with NAND";
+	compatible = "phytec,imx6q-pcm058-nand", "fsl,imx6q";
+
+};
+
+&ecspi1 {
+	status = "okay";
+};
+
+&eeprom {
+	status = "okay";
+};
+
+&fec {
+	status = "okay";
+	phy-handle = <&ethphy>;
+	phy-mode = "rgmii";
+	phy-reset-gpios = <&gpio1 14 1>;
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy: ethernet-phy@3 {
+			reg = <3>;
+			max-speed = <1000>;
+		};
+	};
+};
+
+&flash {
+	status = "okay";
+};
+
+&gpmi {
+	status = "okay";
+};
+
+&usdhc1 {
+	status = "okay";
+
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0x80000>;
+	};
+
+	partition@1 {
+		label = "barebox-environment";
+		reg = <0x80000 0x80000>;
+	};
+};
diff --git a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
new file mode 100644
index 0000000..2a975d1
--- /dev/null
+++ b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -0,0 +1,266 @@
+/*
+ * Copyright 2015 Christian Hemp, Phytec Messtechnik GmbH
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+#include "imx6qdl.dtsi"
+
+/ {
+	chosen {
+		linux,stdout-path = &uart2;
+
+		environment-sd1 {
+			compatible = "barebox,environment";
+			device-path = &usdhc1, "partname:barebox-environment";
+			status = "disabled";
+		};
+
+		environment-sd4 {
+			compatible = "barebox,environment";
+			device-path = &usdhc4, "partname:barebox-environment";
+			status = "disabled";
+		};
+
+		environment-nand {
+			compatible = "barebox,environment";
+			device-path = &gpmi, "partname:barebox-environment";
+			status = "disabled";
+		};
+	};
+};
+
+&ecspi1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi1>;
+	fsl,spi-num-chipselects = <1>;
+	cs-gpios = <&gpio3 19 0>;
+	status = "disabled";
+
+	flash: m25p80@0 {
+		compatible = "m25p80";
+		spi-max-frequency = <20000000>;
+		reg = <0>;
+
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0x100000>;
+		};
+
+		partition@1 {
+			label = "barebox-environment";
+			reg = <0x100000 0x20000>;
+		};
+
+		partition@2 {
+			label = "oftree";
+			reg = <0x120000 0x20000>;
+		};
+
+		partition@3 {
+			label = "kernel";
+			reg = <0x140000 0x0>;
+		};
+	};
+};
+
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet>;
+	status = "disabled";
+};
+
+&gpmi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpmi_nand>;
+	nand-on-flash-bbt;
+	status = "disabled";
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0x400000>;
+	};
+
+	partition@1 {
+		label = "barebox-environment";
+		reg = <0x400000 0x100000>;
+	};
+
+	partition@2 {
+		label = "oftree";
+		reg = <0x500000 0x100000>;
+	};
+
+	partition@3 {
+		label = "kernel";
+		reg = <0x600000 0x800000>;
+	};
+
+	partition@4 {
+		label = "root";
+		reg = <0xe00000 0x0>;
+	};
+};
+
+&i2c3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c3>;
+	clock-frequency = <400000>;
+	status = "okay";
+
+	eeprom: 24c32@50 {
+		status = "disabled";
+		compatible = "st,24c32";
+		reg = <0x50>;
+	};
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+
+	imx6qdl-phytec-phycore-som {
+		pinctrl_ecspi1: ecspi1grp {
+			fsl,pins = <
+				MX6QDL_PAD_EIM_D16__ECSPI1_SCLK		0x100b1
+				MX6QDL_PAD_EIM_D17__ECSPI1_MISO		0x100b1
+				MX6QDL_PAD_EIM_D18__ECSPI1_MOSI		0x100b1
+				MX6QDL_PAD_EIM_D19__GPIO3_IO19		0x80000000
+			>;
+		};
+
+		pinctrl_enet: enetgrp {
+			fsl,pins = <
+				MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x1b0b0
+				MX6QDL_PAD_ENET_MDC__ENET_MDC		0x1b0b0
+				MX6QDL_PAD_RGMII_TXC__RGMII_TXC		0x1b0b0
+				MX6QDL_PAD_RGMII_TD0__RGMII_TD0		0x1b0b0
+				MX6QDL_PAD_RGMII_TD1__RGMII_TD1		0x1b0b0
+				MX6QDL_PAD_RGMII_TD2__RGMII_TD2		0x1b0b0
+				MX6QDL_PAD_RGMII_TD3__RGMII_TD3		0x1b0b0
+				MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL	0x1b0b0
+				MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK	0x1b0b0
+				MX6QDL_PAD_RGMII_RXC__RGMII_RXC		0x1b0b0
+				MX6QDL_PAD_RGMII_RD0__RGMII_RD0		0x1b0b0
+				MX6QDL_PAD_RGMII_RD1__RGMII_RD1		0x1b0b0
+				MX6QDL_PAD_RGMII_RD2__RGMII_RD2		0x1b0b0
+				MX6QDL_PAD_RGMII_RD3__RGMII_RD3		0x1b0b0
+				MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL	0x1b0b0
+				MX6QDL_PAD_ENET_TX_EN__ENET_TX_EN	0x1b0b0
+				MX6QDL_PAD_SD2_DAT1__GPIO1_IO14		0x80000000
+			>;
+		};
+
+		pinctrl_gpmi_nand: gpmigrp {
+			fsl,pins = <
+				MX6QDL_PAD_NANDF_CLE__NAND_CLE		0xb0b1
+				MX6QDL_PAD_NANDF_ALE__NAND_ALE		0xb0b1
+				MX6QDL_PAD_NANDF_WP_B__NAND_WP_B	0xb0b1
+				MX6QDL_PAD_NANDF_RB0__NAND_READY_B	0xb000
+				MX6QDL_PAD_NANDF_CS0__NAND_CE0_B	0xb0b1
+				MX6QDL_PAD_NANDF_CS1__NAND_CE1_B	0xb0b1
+				MX6QDL_PAD_NANDF_CS2__NAND_CE2_B	0xb0b1
+				MX6QDL_PAD_NANDF_CS3__NAND_CE3_B	0xb0b1
+				MX6QDL_PAD_SD4_CMD__NAND_RE_B		0xb0b1
+				MX6QDL_PAD_SD4_CLK__NAND_WE_B		0xb0b1
+				MX6QDL_PAD_NANDF_D0__NAND_DATA00	0xb0b1
+				MX6QDL_PAD_NANDF_D1__NAND_DATA01	0xb0b1
+				MX6QDL_PAD_NANDF_D2__NAND_DATA02	0xb0b1
+				MX6QDL_PAD_NANDF_D3__NAND_DATA03	0xb0b1
+				MX6QDL_PAD_NANDF_D4__NAND_DATA04	0xb0b1
+				MX6QDL_PAD_NANDF_D5__NAND_DATA05	0xb0b1
+				MX6QDL_PAD_NANDF_D6__NAND_DATA06	0xb0b1
+				MX6QDL_PAD_NANDF_D7__NAND_DATA07	0xb0b1
+				MX6QDL_PAD_SD4_DAT0__NAND_DQS		0x00b1
+			>;
+		};
+
+		pinctrl_i2c3: i2c3grp {
+			fsl,pins = <
+				MX6QDL_PAD_GPIO_6__I2C3_SDA		0x4001b8b1
+				MX6QDL_PAD_GPIO_5__I2C3_SCL		0x4001b8b1
+			>;
+		};
+
+		pinctrl_uart2: uart2grp {
+			fsl,pins = <
+				MX6QDL_PAD_EIM_D26__UART2_TX_DATA	0x1b0b1
+				MX6QDL_PAD_EIM_D27__UART2_RX_DATA	0x1b0b1
+			>;
+		};
+
+		pinctrl_usdhc1: usdhc1grp {
+			fsl,pins = <
+				MX6QDL_PAD_SD1_CMD__SD1_CMD		0x17059
+				MX6QDL_PAD_SD1_CLK__SD1_CLK		0x10059
+				MX6QDL_PAD_SD1_DAT0__SD1_DATA0		0x17059
+				MX6QDL_PAD_SD1_DAT1__SD1_DATA1		0x17059
+				MX6QDL_PAD_SD1_DAT2__SD1_DATA2		0x17059
+				MX6QDL_PAD_SD1_DAT3__SD1_DATA3		0x17059
+				MX6QDL_PAD_EIM_BCLK__GPIO6_IO31		0x80000000 /* CD */
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
+			>;
+		};
+	};
+};
+
+&ocotp {
+	barebox,provide-mac-address = <&fec 0x620>;
+};
+
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	status = "okay";
+};
+
+&usdhc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc1>;
+	cd-gpios = <&gpio6 31 0>;
+	status = "disabled";
+};
+
+&usdhc4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc4>;
+	bus-width = <8>;
+	non-removable;
+	status = "disabled";
+
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0x80000>;
+	};
+
+	partition@1 {
+		label = "barebox-environment";
+		reg = <0x80000 0x80000>;
+	};
+};
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 0aef6ca..9561711 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -297,6 +297,16 @@ CFG_start_phytec_pbaa03_2gib.pblx.imximg = $(board)/phytec-som-imx6/flash-header
 FILE_barebox-phytec-pbaa03-2gib.img = start_phytec_pbaa03_2gib.pblx.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbaa03-2gib.img
 
+pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6q_som_nand_1gib
+CFG_start_phytec_phycore_imx6q_som_nand_1gib.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058-1gib.imxcfg
+FILE_barebox-phytec-phycore-imx6q-som-nand-1gib.img = start_phytec_phycore_imx6q_som_nand_1gib.pblx.imximg
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6q-som-nand-1gib.img
+
+pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6q_som_emmc_1gib
+CFG_start_phytec_phycore_imx6q_som_emmc_1gib.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058-1gib.imxcfg
+FILE_barebox-phytec-phycore-imx6q-som-emmc-1gib.img = start_phytec_phycore_imx6q_som_emmc_1gib.pblx.imximg
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6q-som-emmc-1gib.img
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
