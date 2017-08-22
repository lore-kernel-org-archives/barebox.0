Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1dk2vR-00034E-QG
 for barebox@lists.infradead.org; Tue, 22 Aug 2017 06:44:39 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 8C58DA003C7
 for <barebox@lists.infradead.org>; Tue, 22 Aug 2017 08:45:37 +0200 (CEST)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Tue, 22 Aug 2017 08:44:06 +0200
Message-Id: <1503384247-43167-3-git-send-email-d.schultz@phytec.de>
In-Reply-To: <1503384247-43167-1-git-send-email-d.schultz@phytec.de>
References: <1503384247-43167-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH 3/4] arm: dts: am335x: Add phycore emmc device tree
To: barebox@lists.infradead.org

Add a new device tree for phyCORE SOMs with EMMC enabled and NAND
disabled.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 arch/arm/boards/phytec-som-am335x/lowlevel.c    |  1 +
 arch/arm/dts/Makefile                           |  1 +
 arch/arm/dts/am335x-phytec-phycore-som-emmc.dts | 35 +++++++++++++++++++++++++
 images/Makefile.am33xx                          |  4 +++
 4 files changed, 41 insertions(+)
 create mode 100644 arch/arm/dts/am335x-phytec-phycore-som-emmc.dts

diff --git a/arch/arm/boards/phytec-som-am335x/lowlevel.c b/arch/arm/boards/phytec-som-am335x/lowlevel.c
index 91a5473..77f436f 100644
--- a/arch/arm/boards/phytec-som-am335x/lowlevel.c
+++ b/arch/arm/boards/phytec-som-am335x/lowlevel.c
@@ -126,6 +126,7 @@ PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_r2_sram_512mb, am335x_phytec_phycor
 PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_r2_sram_256mb, am335x_phytec_phycore_som_mlo, PHYCORE_R2_MT41K128M16JT_256MB);
 PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_r2_sram_1024mb,  am335x_phytec_phycore_som_mlo, PHYCORE_R2_MT41K512M16HA125IT_1024MB);
 PHYTEC_ENTRY(start_am33xx_phytec_phycore_nand_sdram, am335x_phytec_phycore_som_nand);
+PHYTEC_ENTRY(start_am33xx_phytec_phycore_emmc_sdram, am335x_phytec_phycore_som_emmc);
 PHYTEC_ENTRY(start_am33xx_phytec_phycore_nand_no_spi_sdram, am335x_phytec_phycore_som_nand_no_spi);
 PHYTEC_ENTRY(start_am33xx_phytec_phycore_nand_no_eeprom_sdram, am335x_phytec_phycore_som_nand_no_eeprom);
 PHYTEC_ENTRY(start_am33xx_phytec_phycore_nand_no_spi_no_eeprom_sdram, am335x_phytec_phycore_som_nand_no_spi_no_eeprom);
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 17bba3a..cf9d8ea 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -43,6 +43,7 @@ pbl-dtb-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += am335x-phytec-phyflex-som.dtb.o am33
 	am335x-phytec-phycore-som-mlo.dtb.o \
 	am335x-phytec-phycore-som-nand.dtb.o am335x-phytec-phycore-som-nand-no-spi.dtb.o \
 	am335x-phytec-phycore-som-nand-no-eeprom.dtb.o am335x-phytec-phycore-som-nand-no-spi-no-eeprom.dtb.o \
+	am335x-phytec-phycore-som-emmc.dtb.o \
 	am335x-phytec-phycard-som.dtb.o am335x-phytec-phycard-som-mlo.dtb.o
 pbl-dtb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += imx6q-phytec-pbaa03.dtb.o \
 				imx6s-phytec-pbab01.dtb.o \
diff --git a/arch/arm/dts/am335x-phytec-phycore-som-emmc.dts b/arch/arm/dts/am335x-phytec-phycore-som-emmc.dts
new file mode 100644
index 0000000..880700e
--- /dev/null
+++ b/arch/arm/dts/am335x-phytec-phycore-som-emmc.dts
@@ -0,0 +1,35 @@
+/*
+ * Copyright (C) 2017 PHYTEC Messtechnik GmbH,
+ * Author: Daniel Schultz <d.schultz@phytec.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2 as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+/dts-v1/;
+
+#include "am33xx.dtsi"
+#include "am335x-phytec-phycore-som.dtsi"
+
+/ {
+	model = "Phytec phyCORE EMMC AM335x";
+	compatible = "phytec,phycore-am335x-som", "phytec,am335x-som", "ti,am33xx";
+};
+
+&mmc2 {
+	status = "okay";
+};
+
+&spi0 {
+	status = "okay";
+};
+
+&eeprom {
+	status = "okay";
+};
diff --git a/images/Makefile.am33xx b/images/Makefile.am33xx
index d82627b..e86d4e9 100644
--- a/images/Makefile.am33xx
+++ b/images/Makefile.am33xx
@@ -29,6 +29,10 @@ pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_nand_sdram
 FILE_barebox-am33xx-phytec-phycore.img = start_am33xx_phytec_phycore_nand_sdram.pblx
 am33xx-barebox-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore.img
 
+pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_emmc_sdram
+FILE_barebox-am33xx-phytec-phycore-emmc.img = start_am33xx_phytec_phycore_emmc_sdram.pblx
+am33xx-barebox-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-emmc.img
+
 pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_nand_no_spi_sdram
 FILE_barebox-am33xx-phytec-phycore-no-spi.img = start_am33xx_phytec_phycore_nand_no_spi_sdram.pblx
 am33xx-barebox-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-no-spi.img
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
