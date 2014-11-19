Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xr1Oo-0004C9-BN
 for barebox@lists.infradead.org; Wed, 19 Nov 2014 09:18:07 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 6F8AEA00499
 for <barebox@lists.infradead.org>; Wed, 19 Nov 2014 10:17:54 +0100 (CET)
From: Christian Hemp <c.hemp@phytec.de>
Date: Wed, 19 Nov 2014 10:17:37 +0100
Message-Id: <1416388657-4428-1-git-send-email-c.hemp@phytec.de>
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
Subject: [PATCH] ARM:imx6: Fix typo in name alcor
To: barebox@lists.infradead.org

The phyBOARD-ALCOR is called ALCOR and not ALCORE.

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---

Hello Sascha,

the phyBOARD-ALCOR is in the next branch and not in master. Can you please
squash this patch in:

commit c6f9f83e0c5da17506590be601f5bb3a730f99c9
Author: Christian Hemp <c.hemp@phytec.de>
Date:   Tue Nov 11 15:40:58 2014 +0100

    imx6: add support for phyBOARD-ALCORE

    Add support for phyBOARD-ALCORE which use a phyFLEX-i.MX6 (pfla02) module.
            - i.MX6 Quad with 1GB RAM on two banks

    Signed-off-by: Christian Hemp <c.hemp@phytec.de>
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

	Christian

 arch/arm/boards/phytec-phyflex-imx6/lowlevel.c |    6 ++--
 arch/arm/dts/Makefile                          |    2 +-
 arch/arm/dts/imx6q-phytec-phyboard-alcor.dts   |   38 ++++++++++++++++++++++++
 arch/arm/dts/imx6q-phytec-phyboard-alcore.dts  |   38 ------------------------
 images/Makefile.imx                            |    8 ++--
 5 files changed, 46 insertions(+), 46 deletions(-)
 create mode 100644 arch/arm/dts/imx6q-phytec-phyboard-alcor.dts
 delete mode 100644 arch/arm/dts/imx6q-phytec-phyboard-alcore.dts

diff --git a/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c b/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
index 41cc8de..e6f9d03 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
@@ -57,7 +57,7 @@ static inline void setup_uart(void)
 extern char __dtb_imx6q_phytec_pbab01_start[];
 extern char __dtb_imx6dl_phytec_pbab01_start[];
 extern char __dtb_imx6s_phytec_pbab01_start[];
-extern char __dtb_imx6q_phytec_phyboard_alcore_start[];
+extern char __dtb_imx6q_phytec_phyboard_alcor_start[];
 extern char __dtb_imx6dl_phytec_phyboard_subra_start[];
 
 BAREBOX_IMD_TAG_STRING(phyflex_mx6_memsize_512M, IMD_TYPE_PARAMETER, "memsize=512", 0);
@@ -138,7 +138,7 @@ ENTRY_FUNCTION(start_phytec_pbab01s_512mb, r0, r1, r2)
 	barebox_arm_entry(0x10000000, SZ_512M, fdt);
 }
 
-ENTRY_FUNCTION(start_phytec_phyboard_alcore_1gib, r0, r1, r2)
+ENTRY_FUNCTION(start_phytec_phyboard_alcor_1gib, r0, r1, r2)
 {
 	void *fdt;
 
@@ -148,7 +148,7 @@ ENTRY_FUNCTION(start_phytec_phyboard_alcore_1gib, r0, r1, r2)
 
 	IMD_USED(phyflex_mx6_memsize_1G);
 
-	fdt = __dtb_imx6q_phytec_phyboard_alcore_start - get_runtime_offset();
+	fdt = __dtb_imx6q_phytec_phyboard_alcor_start - get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 1652fb2..9404474 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -28,7 +28,7 @@ pbl-dtb-$(CONFIG_MACH_PCAAXL3) += imx6q-phytec-pbaa03.dtb.o
 pbl-dtb-$(CONFIG_MACH_PCM038) += imx27-phytec-phycore-rdk.dtb.o
 pbl-dtb-$(CONFIG_MACH_PCM051) += am335x-phytec-phycore-som.dtb.o am335x-phytec-phycore-som-no-spi.dtb.o am335x-phytec-phycore-som-mlo.dtb.o
 pbl-dtb-$(CONFIG_MACH_PFLA03) += am335x-phytec-phyflex.dtb.o
-pbl-dtb-$(CONFIG_MACH_PHYTEC_PFLA02) += imx6s-phytec-pbab01.dtb.o imx6dl-phytec-pbab01.dtb.o imx6q-phytec-pbab01.dtb.o imx6q-phytec-phyboard-alcore.dtb.o imx6dl-phytec-phyboard-subra.dtb.o
+pbl-dtb-$(CONFIG_MACH_PHYTEC_PFLA02) += imx6s-phytec-pbab01.dtb.o imx6dl-phytec-pbab01.dtb.o imx6q-phytec-pbab01.dtb.o imx6q-phytec-phyboard-alcor.dtb.o imx6dl-phytec-phyboard-subra.dtb.o
 pbl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += armada-xp-openblocks-ax3-4-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6) += kirkwood-openblocks_a6-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
diff --git a/arch/arm/dts/imx6q-phytec-phyboard-alcor.dts b/arch/arm/dts/imx6q-phytec-phyboard-alcor.dts
new file mode 100644
index 0000000..a60fc18
--- /dev/null
+++ b/arch/arm/dts/imx6q-phytec-phyboard-alcor.dts
@@ -0,0 +1,38 @@
+/*
+ * Copyright 2014 Christian Hemp <c.hemp@phytec.de>, PHYTEC Messtechnik GmbH
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
+
+/ {
+	model = "Phytec phyBOARD ALCOR";
+	compatible = "phytec,imx6q-pbab02", "phytec,imx6q-pfla02", "fsl,imx6q";
+
+	chosen {
+		stdout-path = &uart4;
+	};
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
+&uart4 {
+	status = "okay";
+};
+
+&usdhc3 {
+	status = "okay";
+};
diff --git a/arch/arm/dts/imx6q-phytec-phyboard-alcore.dts b/arch/arm/dts/imx6q-phytec-phyboard-alcore.dts
deleted file mode 100644
index f5b0715..0000000
--- a/arch/arm/dts/imx6q-phytec-phyboard-alcore.dts
+++ /dev/null
@@ -1,38 +0,0 @@
-/*
- * Copyright 2014 Christian Hemp <c.hemp@phytec.de>, PHYTEC Messtechnik GmbH
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
-#include "imx6q-phytec-pfla02.dtsi"
-
-/ {
-	model = "Phytec phyBOARD ALCORE";
-	compatible = "phytec,imx6q-pbab02", "phytec,imx6q-pfla02", "fsl,imx6q";
-
-	chosen {
-		stdout-path = &uart4;
-	};
-};
-
-&ethphy {
-	max-speed = <100>;
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
-};
diff --git a/images/Makefile.imx b/images/Makefile.imx
index ecfff6a..2b85560 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -115,10 +115,10 @@ CFG_start_phytec_pbab01s_512mb.pblx.imximg = $(board)/phytec-phyflex-imx6/flash-
 FILE_barebox-phytec-pbab01s-512mb.img = start_phytec_pbab01s_512mb.pblx.imximg
 image-$(CONFIG_MACH_PHYTEC_PFLA02) += barebox-phytec-pbab01s-512mb.img
 
-pblx-$(CONFIG_MACH_PHYTEC_PFLA02) += start_phytec_phyboard_alcore_1gib
-CFG_start_phytec_phyboard_alcore_1gib.pblx.imximg = $(board)/phytec-phyflex-imx6/flash-header-phytec-pfla02-1gib.imxcfg
-FILE_barebox-phytec-phyboard-alcore-1gib.img = start_phytec_phyboard_alcore_1gib.pblx.imximg
-image-$(CONFIG_MACH_PHYTEC_PFLA02) += barebox-phytec-phyboard-alcore-1gib.img
+pblx-$(CONFIG_MACH_PHYTEC_PFLA02) += start_phytec_phyboard_alcor_1gib
+CFG_start_phytec_phyboard_alcor_1gib.pblx.imximg = $(board)/phytec-phyflex-imx6/flash-header-phytec-pfla02-1gib.imxcfg
+FILE_barebox-phytec-phyboard-alcor-1gib.img = start_phytec_phyboard_alcor_1gib.pblx.imximg
+image-$(CONFIG_MACH_PHYTEC_PFLA02) += barebox-phytec-phyboard-alcor-1gib.img
 
 pblx-$(CONFIG_MACH_PHYTEC_PFLA02) += start_phytec_phyboard_subra_512mb
 CFG_start_phytec_phyboard_subra_512mb.pblx.imximg = $(board)/phytec-phyflex-imx6/flash-header-phytec-pfla02s-512mb.imxcfg
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
