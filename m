Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZviM9-0003Ux-2f
 for barebox@lists.infradead.org; Mon, 09 Nov 2015 09:03:18 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 9772DA001AB
 for <barebox@lists.infradead.org>; Mon,  9 Nov 2015 10:03:20 +0100 (CET)
From: Stefan Christ <s.christ@phytec.de>
Date: Mon, 9 Nov 2015 10:02:51 +0100
Message-Id: <1447059771-21793-1-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH v2] ARM: imx6dl: Add support for Phytec phyCORE-i.MX6 SOM
To: barebox@lists.infradead.org

From: Christian Hemp <c.hemp@phytec.de>

Add Phytec phyCORE-i.MX6 SOM.
     - imx6dl-phytec-phycore-som-nand
        - 256GB RAM on 1 Bank with 32Bit
        - 10/100MBit Ethernet
        - NAND
        - SD
        - UART

Signed-off-by: Stefan Christ <s.christ@phytec.de>
Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
v2: add '#include <arm/imx6dl.dtsi>' in dts to fix compile error
---
 arch/arm/boards/phytec-som-imx6/board.c            |  6 +-
 .../flash-header-phytec-pcm058dl-256mb.imxcfg      |  8 ++
 .../phytec-som-imx6/flash-header-phytec-pcm058dl.h | 98 ++++++++++++++++++++++
 arch/arm/boards/phytec-som-imx6/lowlevel.c         |  1 +
 arch/arm/dts/Makefile                              |  3 +-
 arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts    | 63 ++++++++++++++
 images/Makefile.imx                                |  5 ++
 7 files changed, 181 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-256mb.imxcfg
 create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl.h
 create mode 100644 arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts

diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
index 639a562..9aefa55 100644
--- a/arch/arm/boards/phytec-som-imx6/board.c
+++ b/arch/arm/boards/phytec-som-imx6/board.c
@@ -112,7 +112,8 @@ static int physom_imx6_devices_init(void)
 		default_envdev = "NAND flash";
 
 	} else if (of_machine_is_compatible("phytec,imx6q-pcm058-nand")
-		|| of_machine_is_compatible("phytec,imx6q-pcm058-emmc")) {
+		|| of_machine_is_compatible("phytec,imx6q-pcm058-emmc")
+		|| of_machine_is_compatible("phytec,imx6dl-pcm058-nand")) {
 
 		barebox_set_hostname("phyCORE-i.MX6");
 		default_environment_path = "/chosen/environment-spinor";
@@ -157,7 +158,8 @@ static int physom_imx6_devices_init(void)
 
 	/* Overwrite file /env/init/automount */
 	if (of_machine_is_compatible("phytec,imx6q-pcm058-nand")
-		|| of_machine_is_compatible("phytec,imx6q-pcm058-emmc")) {
+		|| of_machine_is_compatible("phytec,imx6q-pcm058-emmc")
+		|| of_machine_is_compatible("phytec,imx6dl-pcm058-nand")) {
 		defaultenv_append_directory(defaultenv_physom_imx6_mira);
 	}
 
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-256mb.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-256mb.imxcfg
new file mode 100644
index 0000000..bf50190
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-256mb.imxcfg
@@ -0,0 +1,8 @@
+#define SETUP_MDCFG0			\
+	wm 32 0x021b000c 0x3c409b85
+
+#define SETUP_MDASP_MDCTL		\
+	wm 32 0x021b0040 0x0000000F;	\
+	wm 32 0x021b0000 0x82190000
+
+#include "flash-header-phytec-pcm058dl.h"
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl.h b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl.h
new file mode 100644
index 0000000..c7df790
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl.h
@@ -0,0 +1,98 @@
+soc imx6
+loadaddr 0x10000000
+dcdofs 0x400
+
+wm 32 0x020e0774 0x000C0000
+wm 32 0x020e0754 0x00000000
+wm 32 0x020e04ac 0x00000030
+wm 32 0x020e04b0 0x00000030
+wm 32 0x020e0464 0x00000030
+wm 32 0x020e0490 0x00000030
+wm 32 0x020e074c 0x00000030
+wm 32 0x020e0494 0x00000030
+wm 32 0x020e04a0 0x00000000
+wm 32 0x020e04b4 0x00000030
+wm 32 0x020e04b8 0x00000030
+wm 32 0x020e04a4 0x00003000
+wm 32 0x020e04a8 0x00003000
+wm 32 0x020e076c 0x00000030
+wm 32 0x020e0750 0x00020000
+wm 32 0x020e04bc 0x00000028
+wm 32 0x020e04c0 0x00000028
+wm 32 0x020e04c4 0x00000028
+wm 32 0x020e04c8 0x00000028
+wm 32 0x020e04cc 0x00000028
+wm 32 0x020e04d0 0x00000028
+wm 32 0x020e04d4 0x00000028
+wm 32 0x020e04d8 0x00000028
+wm 32 0x020e0760 0x00020000
+wm 32 0x020e0764 0x00000028
+wm 32 0x020e0770 0x00000028
+wm 32 0x020e0778 0x00000028
+wm 32 0x020e077c 0x00000028
+wm 32 0x020e0780 0x00000028
+wm 32 0x020e0784 0x00000028
+wm 32 0x020e078c 0x00000028
+wm 32 0x020e0748 0x00000028
+wm 32 0x020e0470 0x00000028
+wm 32 0x020e0474 0x00000028
+wm 32 0x020e0478 0x00000028
+wm 32 0x020e047c 0x00000028
+wm 32 0x020e0480 0x00000028
+wm 32 0x020e0484 0x00000028
+wm 32 0x020e0488 0x00000028
+wm 32 0x020e048c 0x00000028
+wm 32 0x021b0800 0xa1390003
+wm 32 0x021b4800 0xa1380003
+wm 32 0x021b080c 0x0032003A
+wm 32 0x021b0810 0x00350037
+wm 32 0x021b480c 0x00260038
+wm 32 0x021b4810 0x002C0038
+wm 32 0x021b083c 0x42630244
+wm 32 0x021b0840 0x02300238
+wm 32 0x021b483c 0x02540258
+wm 32 0x021b4840 0x0236021e
+wm 32 0x021b0848 0x46484446
+wm 32 0x021b4848 0x302d2c35
+wm 32 0x021b0850 0x36342630
+wm 32 0x021b4850 0x3423372d
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
+wm 32 0x021b0004 0x00025576
+wm 32 0x021b0008 0x09444040
+
+SETUP_MDCFG0
+
+wm 32 0x021b0010 0xff538f64
+wm 32 0x021b0014 0x01ff0124
+wm 32 0x021b0018 0x00091740
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
+wm 32 0x021b001c 0x00428031
+wm 32 0x021b001c 0x00428039
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
diff --git a/arch/arm/boards/phytec-som-imx6/lowlevel.c b/arch/arm/boards/phytec-som-imx6/lowlevel.c
index 555487b..eb796e7 100644
--- a/arch/arm/boards/phytec-som-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx6/lowlevel.c
@@ -92,5 +92,6 @@ PHYTEC_ENTRY(start_phytec_pbab01s_512mb_1bank, imx6s_phytec_pbab01, SZ_512M, fal
 PHYTEC_ENTRY(start_phytec_phyboard_alcor_1gib, imx6q_phytec_phyboard_alcor, SZ_1G, false);
 PHYTEC_ENTRY(start_phytec_phyboard_subra_512mb_1bank, imx6dl_phytec_phyboard_subra, SZ_512M, false);
 
+PHYTEC_ENTRY(start_phytec_phycore_imx6dl_som_nand_256mb, imx6dl_phytec_phycore_som_nand, SZ_256M, true);
 PHYTEC_ENTRY(start_phytec_phycore_imx6q_som_nand_1gib, imx6q_phytec_phycore_som_nand, SZ_1G, true);
 PHYTEC_ENTRY(start_phytec_phycore_imx6q_som_emmc_1gib, imx6q_phytec_phycore_som_emmc, SZ_1G, true);
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 6c26c32..1c73c71 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -45,7 +45,8 @@ pbl-dtb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += imx6q-phytec-pbaa03.dtb.o \
 				imx6q-phytec-phyboard-alcor.dtb.o \
 				imx6dl-phytec-phyboard-subra.dtb.o \
 				imx6q-phytec-phycore-som-nand.dtb.o \
-				imx6q-phytec-phycore-som-emmc.dtb.o
+				imx6q-phytec-phycore-som-emmc.dtb.o \
+				imx6dl-phytec-phycore-som-nand.dtb.o
 pbl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += armada-xp-openblocks-ax3-4-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6) += kirkwood-openblocks_a6-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
new file mode 100644
index 0000000..2324f3a
--- /dev/null
+++ b/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
@@ -0,0 +1,63 @@
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
+#include <arm/imx6dl.dtsi>
+#include "imx6dl.dtsi"
+#include "imx6qdl-phytec-phycore-som.dtsi"
+
+/ {
+	model = "Phytec phyCORE-i.MX6 Duallite/SOLO with NAND";
+	compatible = "phytec,imx6dl-pcm058-nand", "fsl,imx6dl";
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
+			max-speed = <100>;
+		};
+	};
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
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 5cd76c3..dcf4c17 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -312,6 +312,11 @@ CFG_start_phytec_phycore_imx6q_som_emmc_1gib.pblx.imximg = $(board)/phytec-som-i
 FILE_barebox-phytec-phycore-imx6q-som-emmc-1gib.img = start_phytec_phycore_imx6q_som_emmc_1gib.pblx.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6q-som-emmc-1gib.img
 
+pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6dl_som_nand_256mb
+CFG_start_phytec_phycore_imx6dl_som_nand_256mb.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058dl-256mb.imxcfg
+FILE_barebox-phytec-phycore-imx6dl-som-nand-256mb.img = start_phytec_phycore_imx6dl_som_nand_256mb.pblx.imximg
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6dl-som-nand-256mb.img
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
