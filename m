Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1avMM4-0001Lq-BS
 for barebox@lists.infradead.org; Wed, 27 Apr 2016 10:06:03 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 32AFCA004F9
 for <barebox@lists.infradead.org>; Wed, 27 Apr 2016 12:05:37 +0200 (CEST)
From: Stefan Christ <s.christ@phytec.de>
Date: Wed, 27 Apr 2016 12:04:45 +0200
Message-Id: <1461751489-13302-12-git-send-email-s.christ@phytec.de>
In-Reply-To: <1461751489-13302-1-git-send-email-s.christ@phytec.de>
References: <1461751489-13302-1-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH for next 11/15] ARM: phytec-som-imx6: add phyCORE-i.MX6
 DualLite
To: barebox@lists.infradead.org

Add Phytec phyCORE-i.MX6 SOM.
  Support:
   - imx6dl-phytec-phycore-som-emmc:
      - 1GB RAM on 1 Bank with 64Bit
      - 10/100MBit Ethernet
      - SPI NOR
      - eMMC
      - SD
      - UART

Signed-off-by: Stefan Christ <s.christ@phytec.de>
---
 arch/arm/boards/phytec-som-imx6/board.c            |  6 +-
 .../flash-header-phytec-pcm058dl-1gib.imxcfg       |  8 +++
 arch/arm/boards/phytec-som-imx6/lowlevel.c         |  1 +
 arch/arm/dts/Makefile                              |  3 +-
 arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts    | 64 ++++++++++++++++++++++
 images/Makefile.imx                                |  5 ++
 6 files changed, 84 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib.imxcfg
 create mode 100644 arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts

diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
index 6b81db4..64f5ff0 100644
--- a/arch/arm/boards/phytec-som-imx6/board.c
+++ b/arch/arm/boards/phytec-som-imx6/board.c
@@ -114,7 +114,8 @@ static int physom_imx6_devices_init(void)
 
 	} else if (of_machine_is_compatible("phytec,imx6q-pcm058-nand")
 		|| of_machine_is_compatible("phytec,imx6q-pcm058-emmc")
-		|| of_machine_is_compatible("phytec,imx6dl-pcm058-nand")) {
+		|| of_machine_is_compatible("phytec,imx6dl-pcm058-nand")
+		|| of_machine_is_compatible("phytec,imx6dl-pcm058-emmc")) {
 
 		barebox_set_hostname("phyCORE-i.MX6");
 		default_environment_path = "/chosen/environment-spinor";
@@ -160,7 +161,8 @@ static int physom_imx6_devices_init(void)
 	/* Overwrite file /env/init/automount */
 	if (of_machine_is_compatible("phytec,imx6q-pcm058-nand")
 		|| of_machine_is_compatible("phytec,imx6q-pcm058-emmc")
-		|| of_machine_is_compatible("phytec,imx6dl-pcm058-nand")) {
+		|| of_machine_is_compatible("phytec,imx6dl-pcm058-nand")
+		|| of_machine_is_compatible("phytec,imx6dl-pcm058-emmc")) {
 		defaultenv_append_directory(defaultenv_physom_imx6_mira);
 	}
 
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib.imxcfg
new file mode 100644
index 0000000..f047253
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib.imxcfg
@@ -0,0 +1,8 @@
+#define SETUP_MDCFG0			\
+	wm 32 0x021b000c 0x555A7955
+
+#define SETUP_MDASP_MDCTL		\
+	wm 32 0x021b0040 0x00000027;	\
+	wm 32 0x021b0000 0x831A0000
+
+#include "flash-header-phytec-pcm058dl.h"
diff --git a/arch/arm/boards/phytec-som-imx6/lowlevel.c b/arch/arm/boards/phytec-som-imx6/lowlevel.c
index d2d8b68..c732d32 100644
--- a/arch/arm/boards/phytec-som-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx6/lowlevel.c
@@ -94,6 +94,7 @@ PHYTEC_ENTRY(start_phytec_phyboard_subra_512mb_1bank, imx6dl_phytec_phyboard_sub
 PHYTEC_ENTRY(start_phytec_phyboard_subra_1gib_1bank, imx6q_phytec_phyboard_subra, SZ_1G, false);
 
 PHYTEC_ENTRY(start_phytec_phycore_imx6dl_som_nand_256mb, imx6dl_phytec_phycore_som_nand, SZ_256M, true);
+PHYTEC_ENTRY(start_phytec_phycore_imx6dl_som_emmc_1gib, imx6dl_phytec_phycore_som_emmc, SZ_1G, true);
 PHYTEC_ENTRY(start_phytec_phycore_imx6q_som_nand_1gib, imx6q_phytec_phycore_som_nand, SZ_1G, true);
 PHYTEC_ENTRY(start_phytec_phycore_imx6q_som_emmc_1gib, imx6q_phytec_phycore_som_emmc, SZ_1G, true);
 PHYTEC_ENTRY(start_phytec_phycore_imx6q_som_emmc_2gib, imx6q_phytec_phycore_som_emmc, SZ_2G, true);
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index f3129c5..813e098 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -49,7 +49,8 @@ pbl-dtb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += imx6q-phytec-pbaa03.dtb.o \
 				imx6dl-phytec-phyboard-subra.dtb.o \
 				imx6q-phytec-phycore-som-nand.dtb.o \
 				imx6q-phytec-phycore-som-emmc.dtb.o \
-				imx6dl-phytec-phycore-som-nand.dtb.o
+				imx6dl-phytec-phycore-som-nand.dtb.o \
+				imx6dl-phytec-phycore-som-emmc.dtb.o
 pbl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += armada-xp-openblocks-ax3-4-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6) += kirkwood-openblocks_a6-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
new file mode 100644
index 0000000..834aa2b
--- /dev/null
+++ b/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
@@ -0,0 +1,64 @@
+/*
+ * Copyright (C) 2015 PHYTEC Messtechnik GmbH,
+ * Author: Stefan Christ <s.christ@phytec.de>
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
+	model = "Phytec phyCORE-i.MX6 DualLite/SOLO with eMMC";
+	compatible = "phytec,imx6dl-pcm058-emmc", "fsl,imx6dl";
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
+&usdhc1 {
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
+&usdhc4 {
+	status = "okay";
+};
diff --git a/images/Makefile.imx b/images/Makefile.imx
index b632a58..3ba04d3 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -363,6 +363,11 @@ CFG_start_phytec_phycore_imx6dl_som_nand_256mb.pblx.imximg = $(board)/phytec-som
 FILE_barebox-phytec-phycore-imx6dl-som-nand-256mb.img = start_phytec_phycore_imx6dl_som_nand_256mb.pblx.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6dl-som-nand-256mb.img
 
+pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6dl_som_emmc_1gib
+CFG_start_phytec_phycore_imx6dl_som_emmc_1gib.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib.imxcfg
+FILE_barebox-phytec-phycore-imx6dl-som-emmc-1gib.img = start_phytec_phycore_imx6dl_som_emmc_1gib.pblx.imximg
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6dl-som-emmc-1gib.img
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
