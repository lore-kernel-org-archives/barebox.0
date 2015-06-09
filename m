Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z2Dam-000833-A5
 for barebox@lists.infradead.org; Tue, 09 Jun 2015 07:05:01 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 5725CA00434
 for <barebox@lists.infradead.org>; Tue,  9 Jun 2015 09:06:01 +0200 (CEST)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Tue, 9 Jun 2015 09:03:27 +0200
Message-Id: <1433833407-2747-1-git-send-email-w.egorov@phytec.de>
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
Subject: [PATCH v3] image: am335x: Generate SPI MLO images
To: barebox@lists.infradead.org

Generate *.spi.img files for SPI loading on AM335x.

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
v3:
	- Added %.mlo file dependency
---
 images/Makefile.am33xx | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/images/Makefile.am33xx b/images/Makefile.am33xx
index eae2a6a..657aeb0 100644
--- a/images/Makefile.am33xx
+++ b/images/Makefile.am33xx
@@ -7,13 +7,23 @@ quiet_cmd_mlo_image = MLO     $@
 $(obj)/%.mlo: $(obj)/% FORCE
 	$(call if_changed,mlo_image)
 
+# %.mlospi - convert MLO image for SPI loading
+# ----------------------------------------------------------------
+quiet_cmd_mlo_spi_image = SPI-IMG $@
+      cmd_mlo_spi_image = scripts/mk-omap-image -s -a 0x402f0400 $<.mlo > $@
+
+$(obj)/%.mlospi: $(obj)/% $(obj)/%.mlo FORCE
+	$(call if_changed,mlo_spi_image)
+
 pblx-$(CONFIG_MACH_AFI_GF) += start_am33xx_afi_gf_sdram
 FILE_barebox-am33xx-afi-gf.img = start_am33xx_afi_gf_sdram.pblx
 am33xx-barebox-$(CONFIG_MACH_AFI_GF) += barebox-am33xx-afi-gf.img
 
 pblx-$(CONFIG_MACH_AFI_GF) += start_am33xx_afi_gf_sram
 FILE_barebox-am33xx-afi-gf-mlo.img = start_am33xx_afi_gf_sram.pblx.mlo
+FILE_barebox-am33xx-afi-gf-mlo.spi.img = start_am33xx_afi_gf_sram.pblx.mlospi
 am33xx-mlo-$(CONFIG_MACH_AFI_GF) += barebox-am33xx-afi-gf-mlo.img
+am33xx-mlospi-$(CONFIG_MACH_AFI_GF) += barebox-am33xx-afi-gf-mlo.spi.img
 
 pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_sdram
 FILE_barebox-am33xx-phytec-phycore.img = start_am33xx_phytec_phycore_sdram.pblx
@@ -25,19 +35,27 @@ am33xx-barebox-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore
 
 pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_sram_256mb
 FILE_barebox-am33xx-phytec-phycore-mlo-256mb.img = start_am33xx_phytec_phycore_sram_256mb.pblx.mlo
+FILE_barebox-am33xx-phytec-phycore-mlo-256mb.spi.img = start_am33xx_phytec_phycore_sram_256mb.pblx.mlospi
 am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-mlo-256mb.img
+am33xx-mlospi-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-mlo-256mb.spi.img
 
 pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_sram_128mb
 FILE_barebox-am33xx-phytec-phycore-mlo-128mb.img = start_am33xx_phytec_phycore_sram_128mb.pblx.mlo
+FILE_barebox-am33xx-phytec-phycore-mlo-128mb.spi.img = start_am33xx_phytec_phycore_sram_128mb.pblx.mlospi
 am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-mlo-128mb.img
+am33xx-mlospi-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-mlo-128mb.spi.img
 
 pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_sram_512mb
 FILE_barebox-am33xx-phytec-phycore-mlo-512mb.img = start_am33xx_phytec_phycore_sram_512mb.pblx.mlo
+FILE_barebox-am33xx-phytec-phycore-mlo-512mb.spi.img = start_am33xx_phytec_phycore_sram_512mb.pblx.mlospi
 am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-mlo-512mb.img
+am33xx-mlospi-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-mlo-512mb.spi.img
 
 pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_sram_2x512mb
 FILE_barebox-am33xx-phytec-phycore-mlo-2x512mb.img = start_am33xx_phytec_phycore_sram_2x512mb.pblx.mlo
+FILE_barebox-am33xx-phytec-phycore-mlo-2x512mb.spi.img = start_am33xx_phytec_phycore_sram_2x512mb.pblx.mlospi
 am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-mlo-2x512mb.img
+am33xx-mlospi-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-mlo-2x512mb.spi.img
 
 pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phyflex_sdram
 FILE_barebox-am33xx-phytec-phyflex.img = start_am33xx_phytec_phyflex_sdram.pblx
@@ -45,11 +63,15 @@ am33xx-barebox-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phyflex
 
 pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phyflex_sram_256mb
 FILE_barebox-am33xx-phytec-phyflex-mlo-256mb.img = start_am33xx_phytec_phyflex_sram_256mb.pblx.mlo
+FILE_barebox-am33xx-phytec-phyflex-mlo-256mb.spi.img = start_am33xx_phytec_phyflex_sram_256mb.pblx.mlospi
 am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phyflex-mlo-256mb.img
+am33xx-mlospi-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phyflex-mlo-256mb.spi.img
 
 pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phyflex_sram_512mb
 FILE_barebox-am33xx-phytec-phyflex-mlo-512mb.img = start_am33xx_phytec_phyflex_sram_512mb.pblx.mlo
+FILE_barebox-am33xx-phytec-phyflex-mlo-512mb.spi.img = start_am33xx_phytec_phyflex_sram_512mb.pblx.mlospi
 am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phyflex-mlo-512mb.img
+am33xx-mlospi-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phyflex-mlo-512mb.spi.img
 
 pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycard_sdram
 FILE_barebox-am33xx-phytec-phycard.img = start_am33xx_phytec_phycard_sdram.pblx
@@ -57,7 +79,9 @@ am33xx-barebox-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycard
 
 pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycard_sram_256mb
 FILE_barebox-am33xx-phytec-phycard-mlo-256mb.img = start_am33xx_phytec_phycard_sram_256mb.pblx.mlo
+FILE_barebox-am33xx-phytec-phycard-mlo-256mb.spi.img = start_am33xx_phytec_phycard_sram_256mb.pblx.mlospi
 am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycard-mlo-256mb.img
+am33xx-mlospi-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycard-mlo-256mb.spi.img
 
 pblx-$(CONFIG_MACH_BEAGLEBONE) += start_am33xx_beaglebone_sdram
 FILE_barebox-am33xx-beaglebone.img = start_am33xx_beaglebone_sdram.pblx
@@ -72,3 +96,7 @@ image-y += $(am33xx-mlo-y)
 else
 image-y += $(am33xx-barebox-y)
 endif
+
+ifdef CONFIG_OMAP_BUILD_SPI
+image-y += $(am33xx-mlospi-y)
+endif
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
