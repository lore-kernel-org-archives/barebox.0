Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hiI2j-0007q9-LL
 for barebox@lists.infradead.org; Tue, 02 Jul 2019 12:37:56 +0000
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Tue, 2 Jul 2019 14:37:42 +0200
Message-Id: <1562071065-367410-5-git-send-email-s.riedmueller@phytec.de>
In-Reply-To: <1562071065-367410-1-git-send-email-s.riedmueller@phytec.de>
References: <1562071065-367410-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: [PATCH 5/8] ARM: imx6ul: phycore: Prepare for eMMC module
To: barebox@lists.infradead.org

Prepare for the new phyCORE-i.MX 6UL/ULL eMMC module by extending the
dts filenames by their boot medium. Also add the boot medium to the
compatible to be able to perform boot medium dependent setup code.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 arch/arm/boards/phytec-som-imx6/board.c            |  4 +-
 arch/arm/boards/phytec-som-imx6/lowlevel.c         |  6 +--
 arch/arm/dts/Makefile                              |  6 +--
 arch/arm/dts/imx6ul-phytec-phycore-som-nand.dts    | 48 +++++++++++++++++++
 arch/arm/dts/imx6ul-phytec-phycore-som.dts         | 54 ----------------------
 ....dts => imx6ull-phytec-phycore-som-lc-nand.dts} |  6 +--
 ...som.dts => imx6ull-phytec-phycore-som-nand.dts} | 14 ++----
 images/Makefile.imx                                | 28 +++++------
 8 files changed, 77 insertions(+), 89 deletions(-)
 create mode 100644 arch/arm/dts/imx6ul-phytec-phycore-som-nand.dts
 delete mode 100644 arch/arm/dts/imx6ul-phytec-phycore-som.dts
 rename arch/arm/dts/{imx6ull-phytec-phycore-som-lc.dts => imx6ull-phytec-phycore-som-lc-nand.dts} (70%)
 rename arch/arm/dts/{imx6ull-phytec-phycore-som.dts => imx6ull-phytec-phycore-som-nand.dts} (50%)

diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
index d80851797597..cf50ad99b2fc 100644
--- a/arch/arm/boards/phytec-som-imx6/board.c
+++ b/arch/arm/boards/phytec-som-imx6/board.c
@@ -190,7 +190,7 @@ static int physom_imx6_devices_init(void)
 		default_environment_path = "/chosen/environment-spinor";
 		default_envdev = "SPI NOR flash";
 
-	} else if (of_machine_is_compatible("phytec,imx6ul-pcl063")) {
+	} else if (of_machine_is_compatible("phytec,imx6ul-pcl063-nand")) {
 		barebox_set_hostname("phyCORE-i.MX6UL");
 		default_environment_path = "/chosen/environment-nand";
 		default_envdev = "NAND flash";
@@ -249,7 +249,7 @@ static int physom_imx6_devices_init(void)
 		|| of_machine_is_compatible("phytec,imx6dl-pcm058-nand")
 		|| of_machine_is_compatible("phytec,imx6dl-pcm058-emmc")) {
 		defaultenv_append_directory(defaultenv_physom_imx6_phycore);
-	} else if (of_machine_is_compatible("phytec,imx6ul-pcl063")) {
+	} else if (of_machine_is_compatible("phytec,imx6ul-pcl063-nand")) {
 		defaultenv_append_directory(defaultenv_physom_imx6ul_phycore);
 	}
 
diff --git a/arch/arm/boards/phytec-som-imx6/lowlevel.c b/arch/arm/boards/phytec-som-imx6/lowlevel.c
index 0f8d591b3a71..494087ab1479 100644
--- a/arch/arm/boards/phytec-som-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx6/lowlevel.c
@@ -118,6 +118,6 @@ PHYTEC_ENTRY(start_phytec_phycore_imx6qp_som_nand_1gib, imx6qp_phytec_phycore_so
 PHYTEC_ENTRY(start_phytec_phycore_imx6q_som_emmc_1gib, imx6q_phytec_phycore_som_emmc, SZ_1G, true);
 PHYTEC_ENTRY(start_phytec_phycore_imx6q_som_emmc_2gib, imx6q_phytec_phycore_som_emmc, SZ_2G, true);
 
-PHYTEC_ENTRY(start_phytec_phycore_imx6ul_som_512mb, imx6ul_phytec_phycore_som, SZ_512M, false);
-PHYTEC_ENTRY(start_phytec_phycore_imx6ull_som_lc_256mb, imx6ull_phytec_phycore_som_lc, SZ_256M, false);
-PHYTEC_ENTRY(start_phytec_phycore_imx6ull_som_512mb, imx6ull_phytec_phycore_som, SZ_512M, false);
+PHYTEC_ENTRY(start_phytec_phycore_imx6ul_som_nand_512mb, imx6ul_phytec_phycore_som_nand, SZ_512M, false);
+PHYTEC_ENTRY(start_phytec_phycore_imx6ull_som_lc_nand_256mb, imx6ull_phytec_phycore_som_lc_nand, SZ_256M, false);
+PHYTEC_ENTRY(start_phytec_phycore_imx6ull_som_nand_512mb, imx6ull_phytec_phycore_som_nand, SZ_512M, false);
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 2a2d7a55b820..c96f040ae311 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -66,9 +66,9 @@ pbl-dtb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += imx6q-phytec-pbaa03.dtb.o \
 				imx6dl-phytec-phycore-som-lc-nand.dtb.o \
 				imx6dl-phytec-phycore-som-emmc.dtb.o \
 				imx6dl-phytec-phycore-som-lc-emmc.dtb.o \
-				imx6ul-phytec-phycore-som.dtb.o \
-				imx6ull-phytec-phycore-som-lc.dtb.o \
-				imx6ull-phytec-phycore-som.dtb.o
+				imx6ul-phytec-phycore-som-nand.dtb.o \
+				imx6ull-phytec-phycore-som-lc-nand.dtb.o \
+				imx6ull-phytec-phycore-som-nand.dtb.o
 pbl-dtb-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7) += imx7d-phyboard-zeta.dtb.o
 pbl-dtb-$(CONFIG_MACH_PHYTEC_SOM_IMX8MQ) += imx8mq-phytec-phycore-som.dtb.o
 pbl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += armada-xp-openblocks-ax3-4-bb.dtb.o
diff --git a/arch/arm/dts/imx6ul-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6ul-phytec-phycore-som-nand.dts
new file mode 100644
index 000000000000..67478e26dc63
--- /dev/null
+++ b/arch/arm/dts/imx6ul-phytec-phycore-som-nand.dts
@@ -0,0 +1,48 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Copyright (C) 2019 PHYTEC Messtechnik GmbH
+ * Author: Christian Hemp <c.hemp@phytec.de>
+ */
+
+/dts-v1/;
+
+#include <arm/imx6ul.dtsi>
+#include "imx6ul-phytec-phycore-som.dtsi"
+#include "imx6ul-phytec-state.dtsi"
+
+/ {
+	model = "PHYTEC phyCORE-i.MX6 Ultra Lite SOM with NAND";
+	compatible = "phytec,imx6ul-pcl063-nand", "fsl,imx6ul";
+};
+
+&fec1 {
+	status = "okay";
+};
+
+&gpmi {
+	status = "okay";
+};
+
+&i2c1 {
+	status = "okay";
+};
+
+&state {
+	status = "okay";
+};
+
+&uart1 {
+	status = "okay";
+};
+
+&usdhc1 {
+	status = "okay";
+};
+
+&usbotg1 {
+	status = "okay";
+};
+
+&usbotg2 {
+	status = "okay";
+};
diff --git a/arch/arm/dts/imx6ul-phytec-phycore-som.dts b/arch/arm/dts/imx6ul-phytec-phycore-som.dts
deleted file mode 100644
index 11418ea7f038..000000000000
--- a/arch/arm/dts/imx6ul-phytec-phycore-som.dts
+++ /dev/null
@@ -1,54 +0,0 @@
-/*
- * Copyright (C) 2016 PHYTEC Messtechnik GmbH
- * Author: Christian Hemp <c.hemp@phytec.de>
- *
- * The code contained herein is licensed under the GNU General Public
- * License. You may obtain a copy of the GNU General Public License
- * Version 2 or later at the following locations:
- *
- * http://www.opensource.org/licenses/gpl-license.html
- * http://www.gnu.org/copyleft/gpl.html
- */
-
-/dts-v1/;
-
-#include <arm/imx6ul.dtsi>
-#include "imx6ul-phytec-phycore-som.dtsi"
-#include "imx6ul-phytec-state.dtsi"
-
-/ {
-	model = "Phytec phyCORE-i.MX6 Ultra Lite SOM";
-	compatible = "phytec,imx6ul-pcl063", "fsl,imx6ul";
-};
-
-&fec1 {
-	status = "okay";
-};
-
-&gpmi {
-	status = "okay";
-};
-
-&i2c1 {
-	status = "okay";
-};
-
-&state {
-	status = "okay";
-};
-
-&uart1 {
-	status = "okay";
-};
-
-&usdhc1 {
-	status = "okay";
-};
-
-&usbotg1 {
-	status = "okay";
-};
-
-&usbotg2 {
-	status = "okay";
-};
diff --git a/arch/arm/dts/imx6ull-phytec-phycore-som-lc.dts b/arch/arm/dts/imx6ull-phytec-phycore-som-lc-nand.dts
similarity index 70%
rename from arch/arm/dts/imx6ull-phytec-phycore-som-lc.dts
rename to arch/arm/dts/imx6ull-phytec-phycore-som-lc-nand.dts
index 94a783075651..e6c588b44966 100644
--- a/arch/arm/dts/imx6ull-phytec-phycore-som-lc.dts
+++ b/arch/arm/dts/imx6ull-phytec-phycore-som-lc-nand.dts
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
 /*
- * Copyright (C) 2018 PHYTEC Messtechnik GmbH
+ * Copyright (C) 2019 PHYTEC Messtechnik GmbH
  * Author: Stefan Riedmueller <s.riedmueller@phytec.de>
  */
 
@@ -10,8 +10,8 @@
 #include "imx6ul-phytec-phycore-som.dtsi"
 
 / {
-	model = "Phytec phyCORE-i.MX6 ULL SOM low-cost";
-	compatible = "phytec,imx6ul-pcl063", "fsl,imx6ull";
+	model = "PHYTEC phyCORE-i.MX6 ULL SOM low-cost with NAND";
+	compatible = "phytec,imx6ul-pcl063-nand", "fsl,imx6ull";
 };
 
 &fec1 {
diff --git a/arch/arm/dts/imx6ull-phytec-phycore-som.dts b/arch/arm/dts/imx6ull-phytec-phycore-som-nand.dts
similarity index 50%
rename from arch/arm/dts/imx6ull-phytec-phycore-som.dts
rename to arch/arm/dts/imx6ull-phytec-phycore-som-nand.dts
index 86f43a4632a7..a5fa3e051c66 100644
--- a/arch/arm/dts/imx6ull-phytec-phycore-som.dts
+++ b/arch/arm/dts/imx6ull-phytec-phycore-som-nand.dts
@@ -1,13 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
 /*
- * Copyright (C) 2017 PHYTEC Messtechnik GmbH
+ * Copyright (C) 2019 PHYTEC Messtechnik GmbH
  * Author: Stefan Riedmueller <s.riedmueller@phytec.de>
- *
- * The code contained herein is licensed under the GNU General Public
- * License. You may obtain a copy of the GNU General Public License
- * Version 2 or later at the following locations:
- *
- * http://www.opensource.org/licenses/gpl-license.html
- * http://www.gnu.org/copyleft/gpl.html
  */
 
 /dts-v1/;
@@ -17,8 +11,8 @@
 #include "imx6ul-phytec-state.dtsi"
 
 / {
-	model = "Phytec phyCORE-i.MX6 ULL SOM";
-	compatible = "phytec,imx6ul-pcl063", "fsl,imx6ull";
+	model = "PHYTEC phyCORE-i.MX6 ULL SOM with NAND";
+	compatible = "phytec,imx6ul-pcl063-nand", "fsl,imx6ull";
 };
 
 &fec1 {
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 95ed6392e3c6..8aedc906dc84 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -504,20 +504,20 @@ CFG_start_nxp_imx6ull_evk.pblb.imximg = $(board)/nxp-imx6ull-evk/flash-header-nx
 FILE_barebox-nxp-imx6ull-evk.img = start_nxp_imx6ull_evk.pblb.imximg
 image-$(CONFIG_MACH_NXP_IMX6ULL_EVK) += barebox-nxp-imx6ull-evk.img
 
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6ul_som_512mb
-CFG_start_phytec_phycore_imx6ul_som_512mb.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcl063-512mb.imxcfg
-FILE_barebox-phytec-phycore-imx6ul-512mb.img = start_phytec_phycore_imx6ul_som_512mb.pblb.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6ul-512mb.img
-
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6ull_som_lc_256mb
-CFG_start_phytec_phycore_imx6ull_som_lc_256mb.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcl063-256mb.imxcfg
-FILE_barebox-phytec-phycore-imx6ull-lc-256mb.img = start_phytec_phycore_imx6ull_som_lc_256mb.pblb.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6ull-lc-256mb.img
-
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6ull_som_512mb
-CFG_start_phytec_phycore_imx6ull_som_512mb.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcl063-512mb.imxcfg
-FILE_barebox-phytec-phycore-imx6ull-512mb.img = start_phytec_phycore_imx6ull_som_512mb.pblb.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6ull-512mb.img
+pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6ul_som_nand_512mb
+CFG_start_phytec_phycore_imx6ul_som_nand_512mb.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcl063-512mb.imxcfg
+FILE_barebox-phytec-phycore-imx6ul-nand-512mb.img = start_phytec_phycore_imx6ul_som_nand_512mb.pblb.imximg
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6ul-nand-512mb.img
+
+pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6ull_som_lc_nand_256mb
+CFG_start_phytec_phycore_imx6ull_som_lc_nand_256mb.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcl063-256mb.imxcfg
+FILE_barebox-phytec-phycore-imx6ull-lc-nand-256mb.img = start_phytec_phycore_imx6ull_som_lc_nand_256mb.pblb.imximg
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6ull-lc-nand-256mb.img
+
+pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6ull_som_nand_512mb
+CFG_start_phytec_phycore_imx6ull_som_nand_512mb.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcl063-512mb.imxcfg
+FILE_barebox-phytec-phycore-imx6ull-nand-512mb.img = start_phytec_phycore_imx6ull_som_nand_512mb.pblb.imximg
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6ull-nand-512mb.img
 
 pblb-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += start_imx6ul_pico_hobbit_256mb
 CFG_start_imx6ul_pico_hobbit_256mb.pblb.imximg = $(board)/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-256.imxcfg
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
