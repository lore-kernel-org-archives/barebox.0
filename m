Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hlAbU-00051p-I0
 for barebox@lists.infradead.org; Wed, 10 Jul 2019 11:17:42 +0000
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Wed, 10 Jul 2019 13:17:28 +0200
Message-Id: <1562757455-445159-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: [PATCH v2 1/8] ARM: phytec-som-imx6: Add low cost variant for imx6dl
 phycore
To: barebox@lists.infradead.org

The phyCORE-i.MX 6Solo/DualLight is available with low-cost and
full-featured phyBOARD-Mira. One crucial difference is the supported
max. ethernet speed. On the full-featured Mira it is 1000 MBit/s but on
the low-cost Mira it is only 100 MBit/s. To cover this difference two
different images are necessary for low-cost and full-featured. Thus a
low-cost variant is added for the phyCORE-i.MX 6Solo with NAND and the
phyCORE-i.MX 6 DualLight with eMMC.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
No changes in v2
---
 arch/arm/boards/phytec-som-imx6/lowlevel.c         |  2 +
 arch/arm/dts/Makefile                              |  2 +
 arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts    |  2 +-
 arch/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts | 65 ++++++++++++++++++++++
 arch/arm/dts/imx6dl-phytec-phycore-som-lc-nand.dts | 57 +++++++++++++++++++
 arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts    |  2 +-
 images/Makefile.imx                                | 10 ++++
 7 files changed, 138 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts
 create mode 100644 arch/arm/dts/imx6dl-phytec-phycore-som-lc-nand.dts

diff --git a/arch/arm/boards/phytec-som-imx6/lowlevel.c b/arch/arm/boards/phytec-som-imx6/lowlevel.c
index 915534ea9455..0f8d591b3a71 100644
--- a/arch/arm/boards/phytec-som-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx6/lowlevel.c
@@ -109,8 +109,10 @@ PHYTEC_ENTRY(start_phytec_phyboard_subra_512mb_1bank, imx6dl_phytec_phyboard_sub
 PHYTEC_ENTRY(start_phytec_phyboard_subra_1gib_1bank, imx6q_phytec_phyboard_subra, SZ_1G, false);
 
 PHYTEC_ENTRY(start_phytec_phycore_imx6dl_som_nand_256mb, imx6dl_phytec_phycore_som_nand, SZ_256M, true);
+PHYTEC_ENTRY(start_phytec_phycore_imx6dl_som_lc_nand_256mb, imx6dl_phytec_phycore_som_lc_nand, SZ_256M, true);
 PHYTEC_ENTRY(start_phytec_phycore_imx6dl_som_nand_1gib, imx6dl_phytec_phycore_som_nand, SZ_1G, true);
 PHYTEC_ENTRY(start_phytec_phycore_imx6dl_som_emmc_1gib, imx6dl_phytec_phycore_som_emmc, SZ_1G, true);
+PHYTEC_ENTRY(start_phytec_phycore_imx6dl_som_lc_emmc_1gib, imx6dl_phytec_phycore_som_lc_emmc, SZ_1G, true);
 PHYTEC_ENTRY(start_phytec_phycore_imx6q_som_nand_1gib, imx6q_phytec_phycore_som_nand, SZ_1G, true);
 PHYTEC_ENTRY(start_phytec_phycore_imx6qp_som_nand_1gib, imx6qp_phytec_phycore_som_nand, SZ_1G, true);
 PHYTEC_ENTRY(start_phytec_phycore_imx6q_som_emmc_1gib, imx6q_phytec_phycore_som_emmc, SZ_1G, true);
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 561653930b20..2a2d7a55b820 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -63,7 +63,9 @@ pbl-dtb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += imx6q-phytec-pbaa03.dtb.o \
 				imx6q-phytec-phycore-som-emmc.dtb.o \
 				imx6qp-phytec-phycore-som-nand.dtb.o \
 				imx6dl-phytec-phycore-som-nand.dtb.o \
+				imx6dl-phytec-phycore-som-lc-nand.dtb.o \
 				imx6dl-phytec-phycore-som-emmc.dtb.o \
+				imx6dl-phytec-phycore-som-lc-emmc.dtb.o \
 				imx6ul-phytec-phycore-som.dtb.o \
 				imx6ull-phytec-phycore-som-lc.dtb.o \
 				imx6ull-phytec-phycore-som.dtb.o
diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
index e602b77e9940..a04e37f80363 100644
--- a/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
+++ b/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
@@ -30,7 +30,7 @@
 };
 
 &ethphy {
-	max-speed = <100>;
+	max-speed = <1000>;
 };
 
 &fec {
diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts
new file mode 100644
index 000000000000..5d9727ec5b80
--- /dev/null
+++ b/arch/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts
@@ -0,0 +1,65 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Copyright (C) 2019 PHYTEC Messtechnik GmbH,
+ * Author: Stefan Riedmueller <s.riedmueller@phytec.de>
+ */
+
+/dts-v1/;
+
+#include <arm/imx6dl.dtsi>
+#include "imx6dl.dtsi"
+#include "imx6qdl-phytec-phycore-som.dtsi"
+
+/ {
+	model = "PHYTEC phyCORE-i.MX6 DualLite/SOLO with eMMC low-cost";
+	compatible = "phytec,imx6dl-pcm058-emmc", "fsl,imx6dl";
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
+	max-speed = <100>;
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
+&usbh1 {
+	status = "okay";
+};
+
+&usbotg {
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
+
+&usdhc4 {
+	status = "okay";
+};
diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-lc-nand.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-lc-nand.dts
new file mode 100644
index 000000000000..e119e4c0d4fc
--- /dev/null
+++ b/arch/arm/dts/imx6dl-phytec-phycore-som-lc-nand.dts
@@ -0,0 +1,57 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Copyright (C) 2019 PHYTEC Messtechnik GmbH,
+ * Author: Stefan Riedmueller <s.riedmueller@phytec.de>
+ */
+
+/dts-v1/;
+
+#include <arm/imx6dl.dtsi>
+#include "imx6dl.dtsi"
+#include "imx6qdl-phytec-phycore-som.dtsi"
+
+/ {
+	model = "PHYTEC phyCORE-i.MX6 Duallite/SOLO with NAND low-cost";
+	compatible = "phytec,imx6dl-pcm058-nand", "fsl,imx6dl";
+};
+
+&eeprom {
+	status = "okay";
+};
+
+&ethphy {
+	max-speed = <100>;
+};
+
+&fec {
+	status = "okay";
+};
+
+&gpmi {
+	status = "okay";
+};
+
+&usbh1 {
+	status = "okay";
+};
+
+&usbotg {
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
diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
index 77f143438b50..287d876e41ed 100644
--- a/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
+++ b/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
@@ -25,7 +25,7 @@
 };
 
 &ethphy {
-	max-speed = <100>;
+	max-speed = <1000>;
 };
 
 &fec {
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 9a7187ac7807..95ed6392e3c6 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -443,11 +443,21 @@ CFG_start_phytec_phycore_imx6dl_som_nand_1gib.pblb.imximg = $(board)/phytec-som-
 FILE_barebox-phytec-phycore-imx6dl-som-nand-1gib.img = start_phytec_phycore_imx6dl_som_nand_1gib.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6dl-som-nand-1gib.img
 
+pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6dl_som_lc_nand_256mb
+CFG_start_phytec_phycore_imx6dl_som_lc_nand_256mb.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058dl-256mb.imxcfg
+FILE_barebox-phytec-phycore-imx6dl-som-lc-nand-256mb.img = start_phytec_phycore_imx6dl_som_lc_nand_256mb.pblb.imximg
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6dl-som-lc-nand-256mb.img
+
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6dl_som_emmc_1gib
 CFG_start_phytec_phycore_imx6dl_som_emmc_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib.imxcfg
 FILE_barebox-phytec-phycore-imx6dl-som-emmc-1gib.img = start_phytec_phycore_imx6dl_som_emmc_1gib.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6dl-som-emmc-1gib.img
 
+pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6dl_som_lc_emmc_1gib
+CFG_start_phytec_phycore_imx6dl_som_lc_emmc_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib.imxcfg
+FILE_barebox-phytec-phycore-imx6dl-som-lc-emmc-1gib.img = start_phytec_phycore_imx6dl_som_lc_emmc_1gib.pblb.imximg
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6dl-som-lc-emmc-1gib.img
+
 pblb-$(CONFIG_MACH_KONTRON_SAMX6I) += start_imx6q_samx6i
 CFG_start_imx6q_samx6i.pblb.imximg = $(board)/kontron-samx6i/flash-header-samx6i-quad.imxcfg
 FILE_barebox-imx6q-samx6i.img = start_imx6q_samx6i.pblb.imximg
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
