Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hlAbd-00051q-5P
 for barebox@lists.infradead.org; Wed, 10 Jul 2019 11:17:50 +0000
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Wed, 10 Jul 2019 13:17:35 +0200
Message-Id: <1562757455-445159-8-git-send-email-s.riedmueller@phytec.de>
In-Reply-To: <1562757455-445159-1-git-send-email-s.riedmueller@phytec.de>
References: <1562757455-445159-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: [PATCH v2 8/8] ARM: dts: imx6ul: phycore: Add phyCORE-i.MX 6ULL with
 eMMC
To: barebox@lists.infradead.org

Add a phyCORE-i.MX 6ULL with eMMC. It has following features:
	- i.MX 6ULL Y2 792 MHz
	- 512 MB RAM
	- 4 GB eMMC
	- 10/100 MBits Ethernet
	- USB OTG
	- USB Host

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
No changes in v2
---
 arch/arm/boards/phytec-som-imx6/lowlevel.c       |  1 +
 arch/arm/dts/Makefile                            |  3 +-
 arch/arm/dts/imx6ull-phytec-phycore-som-emmc.dts | 43 ++++++++++++++++++++++++
 images/Makefile.imx                              |  5 +++
 4 files changed, 51 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/dts/imx6ull-phytec-phycore-som-emmc.dts

diff --git a/arch/arm/boards/phytec-som-imx6/lowlevel.c b/arch/arm/boards/phytec-som-imx6/lowlevel.c
index 494087ab1479..07bb0ed1b569 100644
--- a/arch/arm/boards/phytec-som-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx6/lowlevel.c
@@ -121,3 +121,4 @@ PHYTEC_ENTRY(start_phytec_phycore_imx6q_som_emmc_2gib, imx6q_phytec_phycore_som_
 PHYTEC_ENTRY(start_phytec_phycore_imx6ul_som_nand_512mb, imx6ul_phytec_phycore_som_nand, SZ_512M, false);
 PHYTEC_ENTRY(start_phytec_phycore_imx6ull_som_lc_nand_256mb, imx6ull_phytec_phycore_som_lc_nand, SZ_256M, false);
 PHYTEC_ENTRY(start_phytec_phycore_imx6ull_som_nand_512mb, imx6ull_phytec_phycore_som_nand, SZ_512M, false);
+PHYTEC_ENTRY(start_phytec_phycore_imx6ull_som_emmc_512mb, imx6ull_phytec_phycore_som_emmc, SZ_512M, false);
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index c96f040ae311..87ddc57b899c 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -68,7 +68,8 @@ pbl-dtb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += imx6q-phytec-pbaa03.dtb.o \
 				imx6dl-phytec-phycore-som-lc-emmc.dtb.o \
 				imx6ul-phytec-phycore-som-nand.dtb.o \
 				imx6ull-phytec-phycore-som-lc-nand.dtb.o \
-				imx6ull-phytec-phycore-som-nand.dtb.o
+				imx6ull-phytec-phycore-som-nand.dtb.o \
+				imx6ull-phytec-phycore-som-emmc.dtb.o
 pbl-dtb-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7) += imx7d-phyboard-zeta.dtb.o
 pbl-dtb-$(CONFIG_MACH_PHYTEC_SOM_IMX8MQ) += imx8mq-phytec-phycore-som.dtb.o
 pbl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += armada-xp-openblocks-ax3-4-bb.dtb.o
diff --git a/arch/arm/dts/imx6ull-phytec-phycore-som-emmc.dts b/arch/arm/dts/imx6ull-phytec-phycore-som-emmc.dts
new file mode 100644
index 000000000000..aa162cc42d07
--- /dev/null
+++ b/arch/arm/dts/imx6ull-phytec-phycore-som-emmc.dts
@@ -0,0 +1,43 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Copyright (C) 2019 PHYTEC Messtechnik GmbH
+ * Author: Stefan Riedmueller <s.riedmueller@phytec.de>
+ */
+
+/dts-v1/;
+
+#include <arm/imx6ull.dtsi>
+#include "imx6ul-phytec-phycore-som.dtsi"
+
+/ {
+	model = "PHYTEC phyCORE-i.MX6 ULL SOM with eMMC";
+	compatible = "phytec,imx6ul-pcl063-emmc", "fsl,imx6ull";
+};
+
+&fec1 {
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
+&usdhc2 {
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
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 8aedc906dc84..a287c11c4042 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -519,6 +519,11 @@ CFG_start_phytec_phycore_imx6ull_som_nand_512mb.pblb.imximg = $(board)/phytec-so
 FILE_barebox-phytec-phycore-imx6ull-nand-512mb.img = start_phytec_phycore_imx6ull_som_nand_512mb.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6ull-nand-512mb.img
 
+pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6ull_som_emmc_512mb
+CFG_start_phytec_phycore_imx6ull_som_emmc_512mb.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcl063-512mb.imxcfg
+FILE_barebox-phytec-phycore-imx6ull-emmc-512mb.img = start_phytec_phycore_imx6ull_som_emmc_512mb.pblb.imximg
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6ull-emmc-512mb.img
+
 pblb-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += start_imx6ul_pico_hobbit_256mb
 CFG_start_imx6ul_pico_hobbit_256mb.pblb.imximg = $(board)/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-256.imxcfg
 FILE_barebox-imx6ul-pico-hobbit-256mb.img = start_imx6ul_pico_hobbit_256mb.pblb.imximg
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
