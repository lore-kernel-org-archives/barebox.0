Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieziJ-0004Cf-GS
 for barebox@lists.infradead.org; Wed, 11 Dec 2019 10:59:29 +0000
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Wed, 11 Dec 2019 11:59:17 +0100
Message-Id: <1576061961-153938-3-git-send-email-s.riedmueller@phytec.de>
In-Reply-To: <1576061961-153938-1-git-send-email-s.riedmueller@phytec.de>
References: <1576061961-153938-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: [PATCH v3 3/7] ARM: dts: imx6: pcaaxl3: Make use of the simpler name
 phycard
To: barebox@lists.infradead.org

Use the simpler name phycard instead of the article number pcaaxl3
for device tree file names and image names of the phyCARD-i.MX 6.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
Changes in v3:
 - Rebased on latest master
---
 arch/arm/boards/phytec-som-imx6/lowlevel.c                          | 6 +++---
 arch/arm/dts/Makefile                                               | 2 +-
 arch/arm/dts/{imx6q-phytec-pbaa03.dts => imx6q-phytec-phycard.dts}  | 6 +++++-
 .../{imx6q-phytec-pcaaxl3.dtsi => imx6qdl-phytec-phycard-som.dtsi}  | 6 ------
 images/Makefile.imx                                                 | 6 +++---
 5 files changed, 12 insertions(+), 14 deletions(-)
 rename arch/arm/dts/{imx6q-phytec-pbaa03.dts => imx6q-phytec-phycard.dts} (83%)
 rename arch/arm/dts/{imx6q-phytec-pcaaxl3.dtsi => imx6qdl-phytec-phycard-som.dtsi} (96%)

diff --git a/arch/arm/boards/phytec-som-imx6/lowlevel.c b/arch/arm/boards/phytec-som-imx6/lowlevel.c
index 2de84169c692..900aa19c19ea 100644
--- a/arch/arm/boards/phytec-som-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx6/lowlevel.c
@@ -90,9 +90,9 @@ static void __noreturn start_imx6_phytec_common(uint32_t size,
 					 __dtb_##fdt_name##_start);	\
 	}
 
-PHYTEC_ENTRY(start_phytec_pbaa03_1gib, imx6q_phytec_pbaa03, SZ_1G, true);
-PHYTEC_ENTRY(start_phytec_pbaa03_1gib_1bank, imx6q_phytec_pbaa03, SZ_1G, true);
-PHYTEC_ENTRY(start_phytec_pbaa03_2gib, imx6q_phytec_pbaa03, SZ_2G, true);
+PHYTEC_ENTRY(start_phytec_phycard_imx6q_1gib, imx6q_phytec_phycard, SZ_1G, true);
+PHYTEC_ENTRY(start_phytec_phycard_imx6q_1gib_1bank, imx6q_phytec_phycard, SZ_1G, true);
+PHYTEC_ENTRY(start_phytec_phycard_imx6q_2gib, imx6q_phytec_phycard, SZ_2G, true);
 
 PHYTEC_ENTRY(start_phytec_pbab01_512mb_1bank, imx6q_phytec_pbab01, SZ_512M, true);
 PHYTEC_ENTRY(start_phytec_pbab01_1gib, imx6q_phytec_pbab01, SZ_1G, true);
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 5c9a311c5f8a..e8dca0b8513c 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -52,7 +52,7 @@ lwl-dtb-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += am335x-phytec-phyflex-som.dtb.o am33
 	am335x-phytec-phycore-som-nand-no-eeprom.dtb.o am335x-phytec-phycore-som-nand-no-spi-no-eeprom.dtb.o \
 	am335x-phytec-phycore-som-emmc.dtb.o \
 	am335x-phytec-phycard-som.dtb.o am335x-phytec-phycard-som-mlo.dtb.o
-lwl-dtb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += imx6q-phytec-pbaa03.dtb.o \
+lwl-dtb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += imx6q-phytec-phycard.dtb.o \
 				imx6s-phytec-pbab01.dtb.o \
 				imx6dl-phytec-pbab01.dtb.o \
 				imx6q-phytec-pbab01.dtb.o \
diff --git a/arch/arm/dts/imx6q-phytec-pbaa03.dts b/arch/arm/dts/imx6q-phytec-phycard.dts
similarity index 83%
rename from arch/arm/dts/imx6q-phytec-pbaa03.dts
rename to arch/arm/dts/imx6q-phytec-phycard.dts
index 8034f90804ec..09106f7d4dda 100644
--- a/arch/arm/dts/imx6q-phytec-pbaa03.dts
+++ b/arch/arm/dts/imx6q-phytec-phycard.dts
@@ -5,10 +5,14 @@
  */
 
 /dts-v1/;
+
 #ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
 #include CONFIG_BOOTM_FITIMAGE_PUBKEY
 #endif
-#include "imx6q-phytec-pcaaxl3.dtsi"
+
+#include <arm/imx6q.dtsi>
+#include "imx6q.dtsi"
+#include "imx6qdl-phytec-phycard-som.dtsi"
 
 / {
 	model = "PHYTEC phyCARD-i.MX6 Quad";
diff --git a/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi b/arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi
similarity index 96%
rename from arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
rename to arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi
index 0dbd5419ba10..6d963f191024 100644
--- a/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi
@@ -4,13 +4,7 @@
  * Author: Christian Hemp <c.hemp@phytec.de>
  */
 
-#include <arm/imx6q.dtsi>
-#include "imx6q.dtsi"
-
 / {
-	model = "PHYTEC phyCARD-i.MX6 Quad";
-	compatible = "phytec,imx6q-pcaaxl3", "fsl,imx6q";
-
 	chosen {
 		environment-nand {
 			compatible = "barebox,environment";
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 53d4ac8202c5..5b60037c0787 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -281,11 +281,11 @@ $(call build_imx_habv4img, CONFIG_MACH_EMBEST_MARSBOARD, start_imx6q_marsboard,
 
 $(call build_imx_habv4img, CONFIG_MACH_EMBEST_RIOTBOARD, start_imx6s_riotboard, embest-riotboard/flash-header-embest-riotboard, embest-imx6s-riotboard)
 
-$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_pbaa03_1gib, phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib, phytec-pbaa03-1gib)
+$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phycard_imx6q_1gib, phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib, phytec-phycard-imx6q-1gib)
 
-$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_pbaa03_1gib_1bank, phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib-1bank, phytec-pbaa03-1gib-1bank)
+$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phycard_imx6q_1gib_1bank, phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib-1bank, phytec-phycard-imx6q-1gib-1bank)
 
-$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_pbaa03_2gib, phytec-som-imx6/flash-header-phytec-pcaaxl3-2gib, phytec-pbaa03-2gib)
+$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phycard_imx6q_2gib, phytec-som-imx6/flash-header-phytec-pcaaxl3-2gib, phytec-phycard-imx6q-2gib)
 
 $(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phycore_imx6q_som_nand_1gib, phytec-som-imx6/flash-header-phytec-pcm058-1gib, phytec-phycore-imx6q-som-nand-1gib)
 
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
