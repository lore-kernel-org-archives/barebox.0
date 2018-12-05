Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gUZIN-0001nz-GI
 for barebox@lists.infradead.org; Wed, 05 Dec 2018 15:41:05 +0000
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Wed, 5 Dec 2018 16:40:37 +0100
Message-Id: <1544024437-35189-3-git-send-email-s.riedmueller@phytec.de>
In-Reply-To: <1544024437-35189-1-git-send-email-s.riedmueller@phytec.de>
References: <1544024437-35189-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: [PATCH 3/3] ARM: phytec-som-imx6: Add full featured phyCORE-i.MX 6ULL
To: barebox@lists.infradead.org

The phyCORE-i.MX 6ULL now comes in a full featured (Y2 variant) and a
low cost (Y0 variant) version. The main difference for the barebox is
the missing second USB OTG port on the Y0 variant and the RAM configuration.

So to account for these differences the existing low cost version is
renamed and the full featured version added.

The results are following phyCORE-i.MX 6ULL modules:

phyCORE-i.MX 6ULL low cost:
	- i.MX 6ULL Y0
	- 256 MB RAM
	- NAND
	- Ethernet 10/100 MBits
	- USB OTG

phyCORE-i.MX 6ULL full featured:
	- i.MX 6ULL Y2
	- 512 MB RAM
	- NAND
	- Ethernet 10/100 MBits
	- USB OTG
	- USB Host

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 arch/arm/boards/phytec-som-imx6/lowlevel.c     |  3 +-
 arch/arm/dts/Makefile                          |  1 +
 arch/arm/dts/imx6ull-phytec-phycore-som-lc.dts | 39 ++++++++++++++++++++++++++
 arch/arm/dts/imx6ull-phytec-phycore-som.dts    |  4 +++
 images/Makefile.imx                            | 13 ++++++---
 5 files changed, 55 insertions(+), 5 deletions(-)
 create mode 100644 arch/arm/dts/imx6ull-phytec-phycore-som-lc.dts

diff --git a/arch/arm/boards/phytec-som-imx6/lowlevel.c b/arch/arm/boards/phytec-som-imx6/lowlevel.c
index 05f918f6c9c0..9d81c278ca43 100644
--- a/arch/arm/boards/phytec-som-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx6/lowlevel.c
@@ -116,4 +116,5 @@ PHYTEC_ENTRY(start_phytec_phycore_imx6q_som_emmc_1gib, imx6q_phytec_phycore_som_
 PHYTEC_ENTRY(start_phytec_phycore_imx6q_som_emmc_2gib, imx6q_phytec_phycore_som_emmc, SZ_2G, true);
 
 PHYTEC_ENTRY(start_phytec_phycore_imx6ul_som_512mb, imx6ul_phytec_phycore_som, SZ_512M, false);
-PHYTEC_ENTRY(start_phytec_phycore_imx6ull_som_256mb, imx6ull_phytec_phycore_som, SZ_256M, false);
+PHYTEC_ENTRY(start_phytec_phycore_imx6ull_som_lc_256mb, imx6ull_phytec_phycore_som_lc, SZ_256M, false);
+PHYTEC_ENTRY(start_phytec_phycore_imx6ull_som_512mb, imx6ull_phytec_phycore_som, SZ_512M, false);
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 503d9b18f9c1..c08b35a10132 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -63,6 +63,7 @@ pbl-dtb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += imx6q-phytec-pbaa03.dtb.o \
 				imx6dl-phytec-phycore-som-nand.dtb.o \
 				imx6dl-phytec-phycore-som-emmc.dtb.o \
 				imx6ul-phytec-phycore-som.dtb.o \
+				imx6ull-phytec-phycore-som-lc.dtb.o \
 				imx6ull-phytec-phycore-som.dtb.o
 pbl-dtb-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7) += imx7d-phyboard-zeta.dtb.o
 pbl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += armada-xp-openblocks-ax3-4-bb.dtb.o
diff --git a/arch/arm/dts/imx6ull-phytec-phycore-som-lc.dts b/arch/arm/dts/imx6ull-phytec-phycore-som-lc.dts
new file mode 100644
index 000000000000..94a783075651
--- /dev/null
+++ b/arch/arm/dts/imx6ull-phytec-phycore-som-lc.dts
@@ -0,0 +1,39 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Copyright (C) 2018 PHYTEC Messtechnik GmbH
+ * Author: Stefan Riedmueller <s.riedmueller@phytec.de>
+ */
+
+/dts-v1/;
+
+#include <arm/imx6ull.dtsi>
+#include "imx6ul-phytec-phycore-som.dtsi"
+
+/ {
+	model = "Phytec phyCORE-i.MX6 ULL SOM low-cost";
+	compatible = "phytec,imx6ul-pcl063", "fsl,imx6ull";
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
diff --git a/arch/arm/dts/imx6ull-phytec-phycore-som.dts b/arch/arm/dts/imx6ull-phytec-phycore-som.dts
index ce631460caea..4d73010131ee 100644
--- a/arch/arm/dts/imx6ull-phytec-phycore-som.dts
+++ b/arch/arm/dts/imx6ull-phytec-phycore-som.dts
@@ -43,3 +43,7 @@
 &usbotg1 {
 	status = "okay";
 };
+
+&usbotg2 {
+	status = "okay";
+};
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 9b5cd577d285..507e20a7c6ce 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -471,10 +471,15 @@ CFG_start_phytec_phycore_imx6ul_som_512mb.pblx.imximg = $(board)/phytec-som-imx6
 FILE_barebox-phytec-phycore-imx6ul-512mb.img = start_phytec_phycore_imx6ul_som_512mb.pblx.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6ul-512mb.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6ull_som_256mb
-CFG_start_phytec_phycore_imx6ull_som_256mb.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcl063-256mb.imxcfg
-FILE_barebox-phytec-phycore-imx6ull-256mb.img = start_phytec_phycore_imx6ull_som_256mb.pblx.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6ull-256mb.img
+pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6ull_som_lc_256mb
+CFG_start_phytec_phycore_imx6ull_som_lc_256mb.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcl063-256mb.imxcfg
+FILE_barebox-phytec-phycore-imx6ull-lc-256mb.img = start_phytec_phycore_imx6ull_som_lc_256mb.pblx.imximg
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6ull-lc-256mb.img
+
+pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6ull_som_512mb
+CFG_start_phytec_phycore_imx6ull_som_512mb.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcl063-512mb.imxcfg
+FILE_barebox-phytec-phycore-imx6ull-512mb.img = start_phytec_phycore_imx6ull_som_512mb.pblx.imximg
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6ull-512mb.img
 
 pblx-$(CONFIG_MACH_KONTRON_SAMX6I) += start_imx6q_samx6i
 CFG_start_imx6q_samx6i.pblx.imximg = $(board)/kontron-samx6i/flash-header-samx6i-quad.imxcfg
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
