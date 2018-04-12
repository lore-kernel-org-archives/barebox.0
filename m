Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6Wgg-0007wp-Uy
 for barebox@lists.infradead.org; Thu, 12 Apr 2018 07:30:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Apr 2018 09:30:11 +0200
Message-Id: <20180412073017.6750-11-s.hauer@pengutronix.de>
In-Reply-To: <20180412073017.6750-1-s.hauer@pengutronix.de>
References: <20180412073017.6750-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/16] ARM: i.MX: phytec-som-imx6: add phyCORE-i.MX6 QuadPlus
 with 1GiB RAM
To: Barebox List <barebox@lists.infradead.org>
Cc: Stefan Riedmueller <s.riedmueller@phytec.de>

From: Christian Hemp <c.hemp@phytec.de>

Add Phytec phyCORE-i.MX6 QuadPlus:
 - imx6qp-phytec-phycore-som-nand:
   - 1GiB RAM on 2 Banks with 64Bit
   - 1000Mbit Ethernet
   - NAND
   - SD
   - UART

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 arch/arm/boards/phytec-som-imx6/board.c            |   4 +-
 .../flash-header-phytec-pcm058qp-1gib.imxcfg       |   8 ++
 .../phytec-som-imx6/flash-header-phytec-pcm058qp.h | 112 +++++++++++++++++++++
 arch/arm/boards/phytec-som-imx6/lowlevel.c         |   1 +
 arch/arm/dts/Makefile                              |   1 +
 arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts    |  61 +++++++++++
 images/Makefile.imx                                |   5 +
 7 files changed, 191 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058qp-1gib.imxcfg
 create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058qp.h
 create mode 100644 arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts

diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
index f9b6cf55cd..1a2d45ec92 100644
--- a/arch/arm/boards/phytec-som-imx6/board.c
+++ b/arch/arm/boards/phytec-som-imx6/board.c
@@ -173,6 +173,7 @@ static int physom_imx6_devices_init(void)
 	} else if (of_machine_is_compatible("phytec,imx6q-pcm058-nand")
 		|| of_machine_is_compatible("phytec,imx6q-pcm058-emmc")
 		|| of_machine_is_compatible("phytec,imx6dl-pcm058-nand")
+		|| of_machine_is_compatible("phytec,imx6qp-pcm058-nand")
 		|| of_machine_is_compatible("phytec,imx6dl-pcm058-emmc")) {
 
 		if (phycore_da9062_setup_buck_mode())
@@ -235,7 +236,8 @@ static int physom_imx6_devices_init(void)
 	defaultenv_append_directory(defaultenv_physom_imx6);
 
 	/* Overwrite file /env/init/automount */
-	if (of_machine_is_compatible("phytec,imx6q-pcm058-nand")
+	if (of_machine_is_compatible("phytec,imx6qp-pcm058-nand")
+		|| of_machine_is_compatible("phytec,imx6q-pcm058-nand")
 		|| of_machine_is_compatible("phytec,imx6q-pcm058-emmc")
 		|| of_machine_is_compatible("phytec,imx6dl-pcm058-nand")
 		|| of_machine_is_compatible("phytec,imx6dl-pcm058-emmc")) {
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058qp-1gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058qp-1gib.imxcfg
new file mode 100644
index 0000000000..bf85f0a19c
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058qp-1gib.imxcfg
@@ -0,0 +1,8 @@
+#define SETUP_MDCFG0			\
+	wm 32 0x021b000c 0x555A7955
+
+#define SETUP_MDASP_MDCTL		\
+	wm 32 0x021b0040 0x00000027;	\
+	wm 32 0x021b0000 0x831A0000
+
+#include "flash-header-phytec-pcm058qp.h"
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058qp.h b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058qp.h
new file mode 100644
index 0000000000..6e7b740a6f
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058qp.h
@@ -0,0 +1,112 @@
+soc imx6
+loadaddr 0x10000000
+dcdofs 0x400
+
+/* NOC setup */
+wm 32 0x00bb0008 0x00000000
+wm 32 0x00bb000c 0x2891E41A
+wm 32 0x00bb0038 0x00000564
+wm 32 0x00bb0014 0x00000040
+wm 32 0x00bb0028 0x00000020
+wm 32 0x00bb002c 0x00000020
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
+wm 32 0x021b0890 0x00400c58
+wm 32 0x021b0400 0x14420000
+wm 32 0x021b0004 0x00025576
+wm 32 0x021b0404 0x00011006
+wm 32 0x021b001c 0x00000000
+wm 32 0x020e0010 0xf00000ff
+wm 32 0x020e0018 0x007F007F
+wm 32 0x020e001c 0x007F007F
+wm 32 0x020c8000 0x80002021
diff --git a/arch/arm/boards/phytec-som-imx6/lowlevel.c b/arch/arm/boards/phytec-som-imx6/lowlevel.c
index 12c3cfa642..9aa2104a3c 100644
--- a/arch/arm/boards/phytec-som-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx6/lowlevel.c
@@ -109,6 +109,7 @@ PHYTEC_ENTRY(start_phytec_phyboard_subra_1gib_1bank, imx6q_phytec_phyboard_subra
 PHYTEC_ENTRY(start_phytec_phycore_imx6dl_som_nand_256mb, imx6dl_phytec_phycore_som_nand, SZ_256M, true);
 PHYTEC_ENTRY(start_phytec_phycore_imx6dl_som_emmc_1gib, imx6dl_phytec_phycore_som_emmc, SZ_1G, true);
 PHYTEC_ENTRY(start_phytec_phycore_imx6q_som_nand_1gib, imx6q_phytec_phycore_som_nand, SZ_1G, true);
+PHYTEC_ENTRY(start_phytec_phycore_imx6qp_som_nand_1gib, imx6qp_phytec_phycore_som_nand, SZ_1G, true);
 PHYTEC_ENTRY(start_phytec_phycore_imx6q_som_emmc_1gib, imx6q_phytec_phycore_som_emmc, SZ_1G, true);
 PHYTEC_ENTRY(start_phytec_phycore_imx6q_som_emmc_2gib, imx6q_phytec_phycore_som_emmc, SZ_2G, true);
 
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 0400c9349a..b69592e64e 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -58,6 +58,7 @@ pbl-dtb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += imx6q-phytec-pbaa03.dtb.o \
 				imx6dl-phytec-phyboard-subra.dtb.o \
 				imx6q-phytec-phycore-som-nand.dtb.o \
 				imx6q-phytec-phycore-som-emmc.dtb.o \
+				imx6qp-phytec-phycore-som-nand.dtb.o \
 				imx6dl-phytec-phycore-som-nand.dtb.o \
 				imx6dl-phytec-phycore-som-emmc.dtb.o \
 				imx6ul-phytec-phycore-som.dtb.o \
diff --git a/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts
new file mode 100644
index 0000000000..031ee883ea
--- /dev/null
+++ b/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts
@@ -0,0 +1,61 @@
+/*
+ * Copyright (C) 2016 Phytec Messtechnik GmbH
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
+#include <arm/imx6qp.dtsi>
+#include "imx6qdl-phytec-phycore-som.dtsi"
+
+/ {
+	model = "Phytec phyCORE-i.MX6 Quad with NAND";
+	compatible = "phytec,imx6qp-pcm058-nand", "fsl,imx6qp";
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
+&ethphy {
+	max-speed = <1000>;
+};
+
+&fec {
+	status = "okay";
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
+		reg = <0x0 0xe0000>;
+	};
+
+	partition@e0000 {
+		label = "barebox-environment";
+		reg = <0xe0000 0x20000>;
+	};
+};
diff --git a/images/Makefile.imx b/images/Makefile.imx
index ada828f644..5e10f4fbf3 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -440,6 +440,11 @@ CFG_start_phytec_phycore_imx6q_som_nand_1gib.pblx.imximg = $(board)/phytec-som-i
 FILE_barebox-phytec-phycore-imx6q-som-nand-1gib.img = start_phytec_phycore_imx6q_som_nand_1gib.pblx.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6q-som-nand-1gib.img
 
+pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6qp_som_nand_1gib
+CFG_start_phytec_phycore_imx6qp_som_nand_1gib.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058qp-1gib.imxcfg
+FILE_barebox-phytec-phycore-imx6qp-som-nand-1gib.img = start_phytec_phycore_imx6qp_som_nand_1gib.pblx.imximg
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6qp-som-nand-1gib.img
+
 pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6q_som_emmc_1gib
 CFG_start_phytec_phycore_imx6q_som_emmc_1gib.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058-1gib.imxcfg
 FILE_barebox-phytec-phycore-imx6q-som-emmc-1gib.img = start_phytec_phycore_imx6q_som_emmc_1gib.pblx.imximg
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
