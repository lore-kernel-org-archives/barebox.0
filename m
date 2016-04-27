Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1avMLh-0001GJ-Nv
 for barebox@lists.infradead.org; Wed, 27 Apr 2016 10:05:40 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 62EEFA00443
 for <barebox@lists.infradead.org>; Wed, 27 Apr 2016 12:05:36 +0200 (CEST)
From: Stefan Christ <s.christ@phytec.de>
Date: Wed, 27 Apr 2016 12:04:37 +0200
Message-Id: <1461751489-13302-4-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH for next 03/15] ARM: imx6q: add support for
 phyBOARD-SUBRA-i.MX6 Quad
To: barebox@lists.infradead.org

Add support for phyBOARD-SUBRA-i.MX6 with phyFLEX-i.MX6 Quad 1GiB on one
bank. This patch factors out the common device tree nodes for the Quad
and Solo variant into 'imx6qdl-phytec-phyboard-subra.dtsi'.

Signed-off-by: Stefan Christ <s.christ@phytec.de>
---
 arch/arm/boards/phytec-som-imx6/lowlevel.c      |  1 +
 arch/arm/dts/Makefile                           |  1 +
 arch/arm/dts/imx6dl-phytec-phyboard-subra.dts   | 17 +--------------
 arch/arm/dts/imx6q-phytec-phyboard-subra.dts    | 20 +++++++++++++++++
 arch/arm/dts/imx6qdl-phytec-phyboard-subra.dtsi | 29 +++++++++++++++++++++++++
 images/Makefile.imx                             |  5 +++++
 6 files changed, 57 insertions(+), 16 deletions(-)
 create mode 100644 arch/arm/dts/imx6q-phytec-phyboard-subra.dts
 create mode 100644 arch/arm/dts/imx6qdl-phytec-phyboard-subra.dtsi

diff --git a/arch/arm/boards/phytec-som-imx6/lowlevel.c b/arch/arm/boards/phytec-som-imx6/lowlevel.c
index eb796e7..6506e5f 100644
--- a/arch/arm/boards/phytec-som-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx6/lowlevel.c
@@ -91,6 +91,7 @@ PHYTEC_ENTRY(start_phytec_pbab01s_256mb_1bank, imx6s_phytec_pbab01, SZ_256M, fal
 PHYTEC_ENTRY(start_phytec_pbab01s_512mb_1bank, imx6s_phytec_pbab01, SZ_512M, false);
 PHYTEC_ENTRY(start_phytec_phyboard_alcor_1gib, imx6q_phytec_phyboard_alcor, SZ_1G, false);
 PHYTEC_ENTRY(start_phytec_phyboard_subra_512mb_1bank, imx6dl_phytec_phyboard_subra, SZ_512M, false);
+PHYTEC_ENTRY(start_phytec_phyboard_subra_1gib_1bank, imx6q_phytec_phyboard_subra, SZ_1G, false);
 
 PHYTEC_ENTRY(start_phytec_phycore_imx6dl_som_nand_256mb, imx6dl_phytec_phycore_som_nand, SZ_256M, true);
 PHYTEC_ENTRY(start_phytec_phycore_imx6q_som_nand_1gib, imx6q_phytec_phycore_som_nand, SZ_1G, true);
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index b83c110..f3129c5 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -45,6 +45,7 @@ pbl-dtb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += imx6q-phytec-pbaa03.dtb.o \
 				imx6dl-phytec-pbab01.dtb.o \
 				imx6q-phytec-pbab01.dtb.o \
 				imx6q-phytec-phyboard-alcor.dtb.o \
+				imx6q-phytec-phyboard-subra.dtb.o \
 				imx6dl-phytec-phyboard-subra.dtb.o \
 				imx6q-phytec-phycore-som-nand.dtb.o \
 				imx6q-phytec-phycore-som-emmc.dtb.o \
diff --git a/arch/arm/dts/imx6dl-phytec-phyboard-subra.dts b/arch/arm/dts/imx6dl-phytec-phyboard-subra.dts
index 34e4144..3d1069a 100644
--- a/arch/arm/dts/imx6dl-phytec-phyboard-subra.dts
+++ b/arch/arm/dts/imx6dl-phytec-phyboard-subra.dts
@@ -11,24 +11,9 @@
 
 /dts-v1/;
 #include "imx6s-phytec-pfla02.dtsi"
+#include "imx6qdl-phytec-phyboard-subra.dtsi"
 
 / {
 	model = "Phytec phyBOARD SUBRA";
 	compatible = "phytec,imx6dl-pbab05", "phytec,imx6s-pfla02", "fsl,imx6dl";
-
-	chosen {
-		stdout-path = &uart4;
-	};
-};
-
-&fec {
-	status = "okay";
-};
-
-&uart4 {
-	status = "okay";
-};
-
-&usdhc3 {
-	status = "okay";
 };
diff --git a/arch/arm/dts/imx6q-phytec-phyboard-subra.dts b/arch/arm/dts/imx6q-phytec-phyboard-subra.dts
new file mode 100644
index 0000000..561e985
--- /dev/null
+++ b/arch/arm/dts/imx6q-phytec-phyboard-subra.dts
@@ -0,0 +1,20 @@
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
+#include "imx6q-phytec-pfla02.dtsi"
+#include "imx6qdl-phytec-phyboard-subra.dtsi"
+
+/ {
+	model = "Phytec phyBOARD SUBRA";
+	compatible = "phytec,imx6q-pbab05", "phytec,imx6q-pfla02", "fsl,imx6q";
+};
diff --git a/arch/arm/dts/imx6qdl-phytec-phyboard-subra.dtsi b/arch/arm/dts/imx6qdl-phytec-phyboard-subra.dtsi
new file mode 100644
index 0000000..1efc632
--- /dev/null
+++ b/arch/arm/dts/imx6qdl-phytec-phyboard-subra.dtsi
@@ -0,0 +1,29 @@
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
+/ {
+	chosen {
+		stdout-path = &uart4;
+	};
+};
+
+&fec {
+	status = "okay";
+};
+
+&uart4 {
+	status = "okay";
+};
+
+&usdhc3 {
+	status = "okay";
+};
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 6870bce..81293fe 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -203,6 +203,11 @@ CFG_start_phytec_phyboard_subra_512mb_1bank.pblx.imximg = $(board)/phytec-som-im
 FILE_barebox-phytec-phyboard-subra-512mb-1bank.img = start_phytec_phyboard_subra_512mb_1bank.pblx.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phyboard-subra-512mb-1bank.img
 
+pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phyboard_subra_1gib_1bank
+CFG_start_phytec_phyboard_subra_1gib_1bank.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-1gib-1bank.imxcfg
+FILE_barebox-phytec-phyboard-subra-1gib-1bank.img = start_phytec_phyboard_subra_1gib_1bank.pblx.imximg
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phyboard-subra-1gib-1bank.img
+
 pblx-$(CONFIG_MACH_DFI_FS700_M60) += start_imx6dl_dfi_fs700_m60_6s
 CFG_start_imx6dl_dfi_fs700_m60_6s.pblx.imximg = $(board)/dfi-fs700-m60/flash-header-fs700-m60-6s.imxcfg
 FILE_barebox-dfi-fs700-m60-6s.img = start_imx6dl_dfi_fs700_m60_6s.pblx.imximg
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
