Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZG3bk-00056G-N2
 for barebox@lists.infradead.org; Fri, 17 Jul 2015 11:15:13 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id DCAFDA0045D
 for <barebox@lists.infradead.org>; Fri, 17 Jul 2015 13:16:11 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 17 Jul 2015 13:13:52 +0200
Message-Id: <1437131633-9590-6-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1437131633-9590-1-git-send-email-t.remmet@phytec.de>
References: <1437131633-9590-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 6/7] ARM: dts: Add support for all phyCORE-AM335x options
To: barebox@lists.infradead.org

Add support for all possible combinations of phyCORE-AM335x
modules.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/boards/phytec-som-am335x/lowlevel.c        |  2 ++
 arch/arm/dts/Makefile                               |  1 +
 .../arm/dts/am335x-phytec-phycore-som-no-eeprom.dts | 21 +++++++++++++++++++++
 .../am335x-phytec-phycore-som-no-spi-no-eeprom.dts  | 17 +++++++++++++++++
 images/Makefile.am33xx                              |  8 ++++++++
 5 files changed, 49 insertions(+)
 create mode 100644 arch/arm/dts/am335x-phytec-phycore-som-no-eeprom.dts
 create mode 100644 arch/arm/dts/am335x-phytec-phycore-som-no-spi-no-eeprom.dts

diff --git a/arch/arm/boards/phytec-som-am335x/lowlevel.c b/arch/arm/boards/phytec-som-am335x/lowlevel.c
index 0ff62a3..adc19de 100644
--- a/arch/arm/boards/phytec-som-am335x/lowlevel.c
+++ b/arch/arm/boards/phytec-som-am335x/lowlevel.c
@@ -127,6 +127,8 @@ PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_sram_2x512mb, am335x_phytec_phycore
 PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_sram_1024mb, am335x_phytec_phycore_som_mlo, PHYCORE_IM8G16D3FBBG15EI_1024MB);
 PHYTEC_ENTRY(start_am33xx_phytec_phycore_sdram, am335x_phytec_phycore_som);
 PHYTEC_ENTRY(start_am33xx_phytec_phycore_no_spi_sdram, am335x_phytec_phycore_som_no_spi);
+PHYTEC_ENTRY(start_am33xx_phytec_phycore_no_eeprom_sdram, am335x_phytec_phycore_som_no_eeprom);
+PHYTEC_ENTRY(start_am33xx_phytec_phycore_no_spi_no_eeprom_sdram, am335x_phytec_phycore_som_no_spi_no_eeprom);
 
 /* phyflex-som */
 PHYTEC_ENTRY_MLO(start_am33xx_phytec_phyflex_sram_256mb, am335x_phytec_phyflex_som_mlo, PHYFLEX_MT41K128M16JT_256MB);
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 06c29c8..3d5cb53 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -33,6 +33,7 @@ pbl-dtb-$(CONFIG_MACH_PCAAXL3) += imx6q-phytec-pbaa03.dtb.o
 pbl-dtb-$(CONFIG_MACH_PCM038) += imx27-phytec-phycore-rdk.dtb.o
 pbl-dtb-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += am335x-phytec-phyflex-som.dtb.o am335x-phytec-phyflex-som-mlo.dtb.o \
 	am335x-phytec-phycore-som.dtb.o am335x-phytec-phycore-som-no-spi.dtb.o am335x-phytec-phycore-som-mlo.dtb.o \
+	am335x-phytec-phycore-som-no-eeprom.dtb.o am335x-phytec-phycore-som-no-spi-no-eeprom.dtb.o \
 	am335x-phytec-phycard-som.dtb.o am335x-phytec-phycard-som-mlo.dtb.o
 pbl-dtb-$(CONFIG_MACH_PHYTEC_PFLA02) += imx6s-phytec-pbab01.dtb.o imx6dl-phytec-pbab01.dtb.o imx6q-phytec-pbab01.dtb.o imx6q-phytec-phyboard-alcor.dtb.o imx6dl-phytec-phyboard-subra.dtb.o
 pbl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += armada-xp-openblocks-ax3-4-bb.dtb.o
diff --git a/arch/arm/dts/am335x-phytec-phycore-som-no-eeprom.dts b/arch/arm/dts/am335x-phytec-phycore-som-no-eeprom.dts
new file mode 100644
index 0000000..3dd130e
--- /dev/null
+++ b/arch/arm/dts/am335x-phytec-phycore-som-no-eeprom.dts
@@ -0,0 +1,21 @@
+/*
+ * Copyright (C) 2015 Phytec Messtechnik GmbH
+ * Author: Teresa Remmet <t.remmet@phytec.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+/dts-v1/;
+
+#include "am33xx.dtsi"
+#include "am335x-phytec-phycore-som.dtsi"
+
+/ {
+	model = "Phytec phyCORE AM335x";
+	compatible = "phytec,phycore-am335x-som", "phytec,am335x-som", "ti,am33xx";
+};
+
+&spi0 {
+	status = "okay";
+};
diff --git a/arch/arm/dts/am335x-phytec-phycore-som-no-spi-no-eeprom.dts b/arch/arm/dts/am335x-phytec-phycore-som-no-spi-no-eeprom.dts
new file mode 100644
index 0000000..397be77
--- /dev/null
+++ b/arch/arm/dts/am335x-phytec-phycore-som-no-spi-no-eeprom.dts
@@ -0,0 +1,17 @@
+/*
+ * Copyright (C) 2015 Phytec Messtechnik GmbH
+ * Author:  Teresa Remmet <t.remmet@phytec.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+/dts-v1/;
+
+#include "am33xx.dtsi"
+#include "am335x-phytec-phycore-som.dtsi"
+
+/ {
+	model = "Phytec phyCORE AM335x";
+	compatible = "phytec,phycore-am335x-som", "phytec,am335x-som", "ti,am33xx";
+};
diff --git a/images/Makefile.am33xx b/images/Makefile.am33xx
index df77f19..45813ca 100644
--- a/images/Makefile.am33xx
+++ b/images/Makefile.am33xx
@@ -33,6 +33,14 @@ pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_no_spi_sdra
 FILE_barebox-am33xx-phytec-phycore-no-spi.img = start_am33xx_phytec_phycore_no_spi_sdram.pblx
 am33xx-barebox-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-no-spi.img
 
+pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_no_eeprom_sdram
+FILE_barebox-am33xx-phytec-phycore-no-eeprom.img = start_am33xx_phytec_phycore_no_eeprom_sdram.pblx
+am33xx-barebox-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-no-eeprom.img
+
+pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_no_spi_no_eeprom_sdram
+FILE_barebox-am33xx-phytec-phycore-no-spi-no-eeprom.img = start_am33xx_phytec_phycore_no_spi_no_eeprom_sdram.pblx
+am33xx-barebox-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-no-spi-no-eeprom.img
+
 pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_sram_256mb
 FILE_barebox-am33xx-phytec-phycore-mlo-256mb.img = start_am33xx_phytec_phycore_sram_256mb.pblx.mlo
 FILE_barebox-am33xx-phytec-phycore-mlo-256mb.spi.img = start_am33xx_phytec_phycore_sram_256mb.pblx.mlospi
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
