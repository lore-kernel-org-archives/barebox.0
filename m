Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZG3bk-00056F-N2
 for barebox@lists.infradead.org; Fri, 17 Jul 2015 11:15:14 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id E4C79A00463
 for <barebox@lists.infradead.org>; Fri, 17 Jul 2015 13:16:11 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 17 Jul 2015 13:13:53 +0200
Message-Id: <1437131633-9590-7-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 7/7] ARM: dts: Add support for all phyFLEX-AM335x options
To: barebox@lists.infradead.org

Add support for all possible combinations of phyFLEX-AM335x modules.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/boards/phytec-som-am335x/lowlevel.c       |  3 +++
 arch/arm/dts/Makefile                              |  2 ++
 .../dts/am335x-phytec-phyflex-som-no-eeprom.dts    | 22 ++++++++++++++++++++++
 .../am335x-phytec-phyflex-som-no-spi-no-eeprom.dts | 18 ++++++++++++++++++
 arch/arm/dts/am335x-phytec-phyflex-som-no-spi.dts  | 22 ++++++++++++++++++++++
 images/Makefile.am33xx                             | 12 ++++++++++++
 6 files changed, 79 insertions(+)
 create mode 100644 arch/arm/dts/am335x-phytec-phyflex-som-no-eeprom.dts
 create mode 100644 arch/arm/dts/am335x-phytec-phyflex-som-no-spi-no-eeprom.dts
 create mode 100644 arch/arm/dts/am335x-phytec-phyflex-som-no-spi.dts

diff --git a/arch/arm/boards/phytec-som-am335x/lowlevel.c b/arch/arm/boards/phytec-som-am335x/lowlevel.c
index adc19de..64c1c53 100644
--- a/arch/arm/boards/phytec-som-am335x/lowlevel.c
+++ b/arch/arm/boards/phytec-som-am335x/lowlevel.c
@@ -134,6 +134,9 @@ PHYTEC_ENTRY(start_am33xx_phytec_phycore_no_spi_no_eeprom_sdram, am335x_phytec_p
 PHYTEC_ENTRY_MLO(start_am33xx_phytec_phyflex_sram_256mb, am335x_phytec_phyflex_som_mlo, PHYFLEX_MT41K128M16JT_256MB);
 PHYTEC_ENTRY_MLO(start_am33xx_phytec_phyflex_sram_512mb, am335x_phytec_phyflex_som_mlo, PHYFLEX_MT41K256M16HA_512MB);
 PHYTEC_ENTRY(start_am33xx_phytec_phyflex_sdram, am335x_phytec_phyflex_som);
+PHYTEC_ENTRY(start_am33xx_phytec_phyflex_no_spi_sdram, am335x_phytec_phyflex_som_no_spi);
+PHYTEC_ENTRY(start_am33xx_phytec_phyflex_no_eeprom_sdram, am335x_phytec_phyflex_som_no_eeprom);
+PHYTEC_ENTRY(start_am33xx_phytec_phyflex_no_spi_no_eeprom_sdram, am335x_phytec_phyflex_som_no_spi_no_eeprom);
 
 /* phycard-som */
 PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycard_sram_256mb, am335x_phytec_phycard_som_mlo, PHYCARD_NT5CB128M16BP_256MB);
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 3d5cb53..15d620a 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -32,6 +32,8 @@ pbl-dtb-$(CONFIG_MACH_PCA100) += imx27-phytec-phycard-s-rdk-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_PCAAXL3) += imx6q-phytec-pbaa03.dtb.o
 pbl-dtb-$(CONFIG_MACH_PCM038) += imx27-phytec-phycore-rdk.dtb.o
 pbl-dtb-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += am335x-phytec-phyflex-som.dtb.o am335x-phytec-phyflex-som-mlo.dtb.o \
+	am335x-phytec-phyflex-som-no-spi.dtb.o am335x-phytec-phyflex-som-no-eeprom.dtb.o \
+	am335x-phytec-phyflex-som-no-spi-no-eeprom.dtb.o \
 	am335x-phytec-phycore-som.dtb.o am335x-phytec-phycore-som-no-spi.dtb.o am335x-phytec-phycore-som-mlo.dtb.o \
 	am335x-phytec-phycore-som-no-eeprom.dtb.o am335x-phytec-phycore-som-no-spi-no-eeprom.dtb.o \
 	am335x-phytec-phycard-som.dtb.o am335x-phytec-phycard-som-mlo.dtb.o
diff --git a/arch/arm/dts/am335x-phytec-phyflex-som-no-eeprom.dts b/arch/arm/dts/am335x-phytec-phyflex-som-no-eeprom.dts
new file mode 100644
index 0000000..0022e14
--- /dev/null
+++ b/arch/arm/dts/am335x-phytec-phyflex-som-no-eeprom.dts
@@ -0,0 +1,22 @@
+/*
+ * Copyright (C) 2015 PHYTEC Messtechnik GmbH
+ * Author: Wadim Egorov <w.egorov@phytec.de>
+ * 	   Teresa Remmet <t.remmet@phytec.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+/dts-v1/;
+
+#include "am33xx.dtsi"
+#include "am335x-phytec-phyflex-som.dtsi"
+
+/ {
+	model = "Phytec phyFLEX AM335x";
+	compatible = "phytec,phyflex-am335x-som", "phytec,am335x-som", "ti,am33xx";
+};
+
+&spi0 {
+	status = "okay";
+};
diff --git a/arch/arm/dts/am335x-phytec-phyflex-som-no-spi-no-eeprom.dts b/arch/arm/dts/am335x-phytec-phyflex-som-no-spi-no-eeprom.dts
new file mode 100644
index 0000000..486aac6
--- /dev/null
+++ b/arch/arm/dts/am335x-phytec-phyflex-som-no-spi-no-eeprom.dts
@@ -0,0 +1,18 @@
+/*
+ * Copyright (C) 2015 PHYTEC Messtechnik GmbH
+ * Author: Wadim Egorov <w.egorov@phytec.de>
+ * 	   Teresa Remmet <t.remmet@phytec.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+/dts-v1/;
+
+#include "am33xx.dtsi"
+#include "am335x-phytec-phyflex-som.dtsi"
+
+/ {
+	model = "Phytec phyFLEX AM335x";
+	compatible = "phytec,phyflex-am335x-som", "phytec,am335x-som", "ti,am33xx";
+};
diff --git a/arch/arm/dts/am335x-phytec-phyflex-som-no-spi.dts b/arch/arm/dts/am335x-phytec-phyflex-som-no-spi.dts
new file mode 100644
index 0000000..5f3a1e0
--- /dev/null
+++ b/arch/arm/dts/am335x-phytec-phyflex-som-no-spi.dts
@@ -0,0 +1,22 @@
+/*
+ * Copyright (C) 2015 PHYTEC Messtechnik GmbH
+ * Author: Wadim Egorov <w.egorov@phytec.de>
+ * 	   Teresa Remmet <t.remmet@phytec.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+/dts-v1/;
+
+#include "am33xx.dtsi"
+#include "am335x-phytec-phyflex-som.dtsi"
+
+/ {
+	model = "Phytec phyFLEX AM335x";
+	compatible = "phytec,phyflex-am335x-som", "phytec,am335x-som", "ti,am33xx";
+};
+
+&at24c32 {
+	status = "okay";
+};
diff --git a/images/Makefile.am33xx b/images/Makefile.am33xx
index 45813ca..375ff90 100644
--- a/images/Makefile.am33xx
+++ b/images/Makefile.am33xx
@@ -75,6 +75,18 @@ pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phyflex_sdram
 FILE_barebox-am33xx-phytec-phyflex.img = start_am33xx_phytec_phyflex_sdram.pblx
 am33xx-barebox-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phyflex.img
 
+pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phyflex_no_spi_sdram
+FILE_barebox-am33xx-phytec-phyflex-no-spi.img = start_am33xx_phytec_phyflex_no_spi_sdram.pblx
+am33xx-barebox-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phyflex-no-spi.img
+
+pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phyflex_no_eeprom_sdram
+FILE_barebox-am33xx-phytec-phyflex-no-eeprom.img = start_am33xx_phytec_phyflex_no_eeprom_sdram.pblx
+am33xx-barebox-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phyflex-no-eeprom.img
+
+pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phyflex_no_spi_no_eeprom_sdram
+FILE_barebox-am33xx-phytec-phyflex-no-spi-no-eeprom.img = start_am33xx_phytec_phyflex_no_spi_no_eeprom_sdram.pblx
+am33xx-barebox-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phyflex-no-spi-no-eeprom.img
+
 pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phyflex_sram_256mb
 FILE_barebox-am33xx-phytec-phyflex-mlo-256mb.img = start_am33xx_phytec_phyflex_sram_256mb.pblx.mlo
 FILE_barebox-am33xx-phytec-phyflex-mlo-256mb.spi.img = start_am33xx_phytec_phyflex_sram_256mb.pblx.mlospi
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
