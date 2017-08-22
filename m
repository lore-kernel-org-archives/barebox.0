Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1dk2vR-00034D-Rd
 for barebox@lists.infradead.org; Tue, 22 Aug 2017 06:44:40 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 58346A003A6
 for <barebox@lists.infradead.org>; Tue, 22 Aug 2017 08:45:37 +0200 (CEST)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Tue, 22 Aug 2017 08:44:05 +0200
Message-Id: <1503384247-43167-2-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH 2/4] arm: dts: Enable NAND in DTS instead of DTSI
To: barebox@lists.infradead.org

Starting with PCM-062, NAND isn't the main non-volatile memory for the
AM335x. Because that, NAND has be disabled in the SOM dtsi file and will
be enabled in a specific NAND SOM file.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 arch/arm/boards/phytec-som-am335x/lowlevel.c             |  8 ++++----
 arch/arm/dts/Makefile                                    |  5 +++--
 ....dts => am335x-phytec-phycore-som-nand-no-eeprom.dts} |  4 ++++
 ... am335x-phytec-phycore-som-nand-no-spi-no-eeprom.dts} |  4 ++++
 ...som.dts => am335x-phytec-phycore-som-nand-no-spi.dts} |  2 +-
 ...som-no-spi.dts => am335x-phytec-phycore-som-nand.dts} |  8 ++++++++
 arch/arm/dts/am335x-phytec-phycore-som.dtsi              |  2 +-
 images/Makefile.am33xx                                   | 16 ++++++++--------
 8 files changed, 33 insertions(+), 16 deletions(-)
 rename arch/arm/dts/{am335x-phytec-phycore-som-no-eeprom.dts => am335x-phytec-phycore-som-nand-no-eeprom.dts} (94%)
 rename arch/arm/dts/{am335x-phytec-phycore-som-no-spi-no-eeprom.dts => am335x-phytec-phycore-som-nand-no-spi-no-eeprom.dts} (94%)
 rename arch/arm/dts/{am335x-phytec-phycore-som.dts => am335x-phytec-phycore-som-nand-no-spi.dts} (98%)
 rename arch/arm/dts/{am335x-phytec-phycore-som-no-spi.dts => am335x-phytec-phycore-som-nand.dts} (89%)

diff --git a/arch/arm/boards/phytec-som-am335x/lowlevel.c b/arch/arm/boards/phytec-som-am335x/lowlevel.c
index 03c7e98..91a5473 100644
--- a/arch/arm/boards/phytec-som-am335x/lowlevel.c
+++ b/arch/arm/boards/phytec-som-am335x/lowlevel.c
@@ -125,10 +125,10 @@ PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_sram_2x512mb, am335x_phytec_phycore
 PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_r2_sram_512mb, am335x_phytec_phycore_som_mlo, PHYCORE_R2_MT41K256M16TW107IT_512MB);
 PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_r2_sram_256mb, am335x_phytec_phycore_som_mlo, PHYCORE_R2_MT41K128M16JT_256MB);
 PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_r2_sram_1024mb,  am335x_phytec_phycore_som_mlo, PHYCORE_R2_MT41K512M16HA125IT_1024MB);
-PHYTEC_ENTRY(start_am33xx_phytec_phycore_sdram, am335x_phytec_phycore_som);
-PHYTEC_ENTRY(start_am33xx_phytec_phycore_no_spi_sdram, am335x_phytec_phycore_som_no_spi);
-PHYTEC_ENTRY(start_am33xx_phytec_phycore_no_eeprom_sdram, am335x_phytec_phycore_som_no_eeprom);
-PHYTEC_ENTRY(start_am33xx_phytec_phycore_no_spi_no_eeprom_sdram, am335x_phytec_phycore_som_no_spi_no_eeprom);
+PHYTEC_ENTRY(start_am33xx_phytec_phycore_nand_sdram, am335x_phytec_phycore_som_nand);
+PHYTEC_ENTRY(start_am33xx_phytec_phycore_nand_no_spi_sdram, am335x_phytec_phycore_som_nand_no_spi);
+PHYTEC_ENTRY(start_am33xx_phytec_phycore_nand_no_eeprom_sdram, am335x_phytec_phycore_som_nand_no_eeprom);
+PHYTEC_ENTRY(start_am33xx_phytec_phycore_nand_no_spi_no_eeprom_sdram, am335x_phytec_phycore_som_nand_no_spi_no_eeprom);
 
 /* phyflex-som */
 PHYTEC_ENTRY_MLO(start_am33xx_phytec_phyflex_sram_256mb, am335x_phytec_phyflex_som_mlo, PHYFLEX_MT41K128M16JT_256MB);
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 0ec03bc..17bba3a 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -40,8 +40,9 @@ pbl-dtb-$(CONFIG_MACH_PCM038) += imx27-phytec-phycore-rdk.dtb.o
 pbl-dtb-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += am335x-phytec-phyflex-som.dtb.o am335x-phytec-phyflex-som-mlo.dtb.o \
 	am335x-phytec-phyflex-som-no-spi.dtb.o am335x-phytec-phyflex-som-no-eeprom.dtb.o \
 	am335x-phytec-phyflex-som-no-spi-no-eeprom.dtb.o \
-	am335x-phytec-phycore-som.dtb.o am335x-phytec-phycore-som-no-spi.dtb.o am335x-phytec-phycore-som-mlo.dtb.o \
-	am335x-phytec-phycore-som-no-eeprom.dtb.o am335x-phytec-phycore-som-no-spi-no-eeprom.dtb.o \
+	am335x-phytec-phycore-som-mlo.dtb.o \
+	am335x-phytec-phycore-som-nand.dtb.o am335x-phytec-phycore-som-nand-no-spi.dtb.o \
+	am335x-phytec-phycore-som-nand-no-eeprom.dtb.o am335x-phytec-phycore-som-nand-no-spi-no-eeprom.dtb.o \
 	am335x-phytec-phycard-som.dtb.o am335x-phytec-phycard-som-mlo.dtb.o
 pbl-dtb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += imx6q-phytec-pbaa03.dtb.o \
 				imx6s-phytec-pbab01.dtb.o \
diff --git a/arch/arm/dts/am335x-phytec-phycore-som-no-eeprom.dts b/arch/arm/dts/am335x-phytec-phycore-som-nand-no-eeprom.dts
similarity index 94%
rename from arch/arm/dts/am335x-phytec-phycore-som-no-eeprom.dts
rename to arch/arm/dts/am335x-phytec-phycore-som-nand-no-eeprom.dts
index 3dd130e..9f0da37 100644
--- a/arch/arm/dts/am335x-phytec-phycore-som-no-eeprom.dts
+++ b/arch/arm/dts/am335x-phytec-phycore-som-nand-no-eeprom.dts
@@ -16,6 +16,10 @@
 	compatible = "phytec,phycore-am335x-som", "phytec,am335x-som", "ti,am33xx";
 };
 
+&gpmc {
+	status = "okay";
+};
+
 &spi0 {
 	status = "okay";
 };
diff --git a/arch/arm/dts/am335x-phytec-phycore-som-no-spi-no-eeprom.dts b/arch/arm/dts/am335x-phytec-phycore-som-nand-no-spi-no-eeprom.dts
similarity index 94%
rename from arch/arm/dts/am335x-phytec-phycore-som-no-spi-no-eeprom.dts
rename to arch/arm/dts/am335x-phytec-phycore-som-nand-no-spi-no-eeprom.dts
index 397be77..c026a82 100644
--- a/arch/arm/dts/am335x-phytec-phycore-som-no-spi-no-eeprom.dts
+++ b/arch/arm/dts/am335x-phytec-phycore-som-nand-no-spi-no-eeprom.dts
@@ -15,3 +15,7 @@
 	model = "Phytec phyCORE AM335x";
 	compatible = "phytec,phycore-am335x-som", "phytec,am335x-som", "ti,am33xx";
 };
+
+&gpmc {
+	status = "okay";
+};
diff --git a/arch/arm/dts/am335x-phytec-phycore-som.dts b/arch/arm/dts/am335x-phytec-phycore-som-nand-no-spi.dts
similarity index 98%
rename from arch/arm/dts/am335x-phytec-phycore-som.dts
rename to arch/arm/dts/am335x-phytec-phycore-som-nand-no-spi.dts
index f13e0d6..2c2fab0 100644
--- a/arch/arm/dts/am335x-phytec-phycore-som.dts
+++ b/arch/arm/dts/am335x-phytec-phycore-som-nand-no-spi.dts
@@ -15,7 +15,7 @@
 	compatible = "phytec,phycore-am335x-som", "phytec,am335x-som", "ti,am33xx";
 };
 
-&spi0 {
+&gpmc {
 	status = "okay";
 };
 
diff --git a/arch/arm/dts/am335x-phytec-phycore-som-no-spi.dts b/arch/arm/dts/am335x-phytec-phycore-som-nand.dts
similarity index 89%
rename from arch/arm/dts/am335x-phytec-phycore-som-no-spi.dts
rename to arch/arm/dts/am335x-phytec-phycore-som-nand.dts
index ad03d4d..6ff2447 100644
--- a/arch/arm/dts/am335x-phytec-phycore-som-no-spi.dts
+++ b/arch/arm/dts/am335x-phytec-phycore-som-nand.dts
@@ -15,6 +15,14 @@
 	compatible = "phytec,phycore-am335x-som", "phytec,am335x-som", "ti,am33xx";
 };
 
+&gpmc {
+	status = "okay";
+};
+
+&spi0 {
+	status = "okay";
+};
+
 &eeprom {
 	status = "okay";
 };
diff --git a/arch/arm/dts/am335x-phytec-phycore-som.dtsi b/arch/arm/dts/am335x-phytec-phycore-som.dtsi
index 0025bc7..dbc6424 100644
--- a/arch/arm/dts/am335x-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/am335x-phytec-phycore-som.dtsi
@@ -249,7 +249,7 @@
 };
 
 &gpmc {
-	status = "okay";
+	status = "disabled";
 	pinctrl-names = "default";
 	pinctrl-0 = <&nandflash_pins_s0>;
 	ranges = <0 0 0x08000000 0x1000000>;	/* CS0: 16MB for NAND */
diff --git a/images/Makefile.am33xx b/images/Makefile.am33xx
index d1c432e..d82627b 100644
--- a/images/Makefile.am33xx
+++ b/images/Makefile.am33xx
@@ -25,20 +25,20 @@ FILE_barebox-am33xx-afi-gf-mlo.spi.img = start_am33xx_afi_gf_sram.pblx.mlospi
 am33xx-mlo-$(CONFIG_MACH_AFI_GF) += barebox-am33xx-afi-gf-mlo.img
 am33xx-mlospi-$(CONFIG_MACH_AFI_GF) += barebox-am33xx-afi-gf-mlo.spi.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_sdram
-FILE_barebox-am33xx-phytec-phycore.img = start_am33xx_phytec_phycore_sdram.pblx
+pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_nand_sdram
+FILE_barebox-am33xx-phytec-phycore.img = start_am33xx_phytec_phycore_nand_sdram.pblx
 am33xx-barebox-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_no_spi_sdram
-FILE_barebox-am33xx-phytec-phycore-no-spi.img = start_am33xx_phytec_phycore_no_spi_sdram.pblx
+pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_nand_no_spi_sdram
+FILE_barebox-am33xx-phytec-phycore-no-spi.img = start_am33xx_phytec_phycore_nand_no_spi_sdram.pblx
 am33xx-barebox-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-no-spi.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_no_eeprom_sdram
-FILE_barebox-am33xx-phytec-phycore-no-eeprom.img = start_am33xx_phytec_phycore_no_eeprom_sdram.pblx
+pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_nand_no_eeprom_sdram
+FILE_barebox-am33xx-phytec-phycore-no-eeprom.img = start_am33xx_phytec_phycore_nand_no_eeprom_sdram.pblx
 am33xx-barebox-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-no-eeprom.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_no_spi_no_eeprom_sdram
-FILE_barebox-am33xx-phytec-phycore-no-spi-no-eeprom.img = start_am33xx_phytec_phycore_no_spi_no_eeprom_sdram.pblx
+pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_nand_no_spi_no_eeprom_sdram
+FILE_barebox-am33xx-phytec-phycore-no-spi-no-eeprom.img = start_am33xx_phytec_phycore_nand_no_spi_no_eeprom_sdram.pblx
 am33xx-barebox-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-no-spi-no-eeprom.img
 
 pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_sram_256mb
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
