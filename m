Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieEvX-0001H9-Ni
 for barebox@lists.infradead.org; Mon, 09 Dec 2019 09:02:03 +0000
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Mon, 9 Dec 2019 10:01:44 +0100
Message-Id: <1575882108-108853-3-git-send-email-s.riedmueller@phytec.de>
In-Reply-To: <1575882108-108853-1-git-send-email-s.riedmueller@phytec.de>
References: <1575882108-108853-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: [PATCH 3/7] ARM: dts: imx6: pcaaxl3: Make use of the simpler name
 phycard
To: barebox@lists.infradead.org

Use the simpler name phycard instead of the article number pcaaxl3
for device tree file names and image names of the phyCARD-i.MX 6.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 arch/arm/boards/phytec-som-imx6/lowlevel.c         |  6 ++---
 arch/arm/dts/Makefile                              |  2 +-
 ...-phytec-pbaa03.dts => imx6q-phytec-phycard.dts} |  2 +-
 ...caaxl3.dtsi => imx6qdl-phytec-phycard-som.dtsi} |  0
 images/Makefile.imx                                | 28 +++++++++++-----------
 5 files changed, 19 insertions(+), 19 deletions(-)
 rename arch/arm/dts/{imx6q-phytec-pbaa03.dts => imx6q-phytec-phycard.dts} (90%)
 rename arch/arm/dts/{imx6q-phytec-pcaaxl3.dtsi => imx6qdl-phytec-phycard-som.dtsi} (100%)

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
index 294a0bfa5525..5f854bd22f2f 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -51,7 +51,7 @@ lwl-dtb-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += am335x-phytec-phyflex-som.dtb.o am33
 	am335x-phytec-phycore-som-nand-no-eeprom.dtb.o am335x-phytec-phycore-som-nand-no-spi-no-eeprom.dtb.o \
 	am335x-phytec-phycore-som-emmc.dtb.o \
 	am335x-phytec-phycard-som.dtb.o am335x-phytec-phycard-som-mlo.dtb.o
-lwl-dtb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += imx6q-phytec-pbaa03.dtb.o \
+lwl-dtb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += imx6q-phytec-phycard.dtb.o \
 				imx6s-phytec-pbab01.dtb.o \
 				imx6dl-phytec-pbab01.dtb.o \
 				imx6q-phytec-pbab01.dtb.o \
diff --git a/arch/arm/dts/imx6q-phytec-pbaa03.dts b/arch/arm/dts/imx6q-phytec-phycard.dts
similarity index 90%
rename from arch/arm/dts/imx6q-phytec-pbaa03.dts
rename to arch/arm/dts/imx6q-phytec-phycard.dts
index b11b8b3f93fe..cfcdcd2a1343 100644
--- a/arch/arm/dts/imx6q-phytec-pbaa03.dts
+++ b/arch/arm/dts/imx6q-phytec-phycard.dts
@@ -5,7 +5,7 @@
  */
 
 /dts-v1/;
-#include "imx6q-phytec-pcaaxl3.dtsi"
+#include "imx6qdl-phytec-phycard-som.dtsi"
 
 / {
 	model = "PHYTEC phyCARD-i.MX6 Quad";
diff --git a/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi b/arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi
similarity index 100%
rename from arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
rename to arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi
diff --git a/images/Makefile.imx b/images/Makefile.imx
index a8f8a9b7d622..fea43e0e5516 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -416,20 +416,20 @@ CFG_start_imx6s_riotboard.pblb.imximg = $(board)/embest-riotboard/flash-header-e
 FILE_barebox-embest-imx6s-riotboard.img = start_imx6s_riotboard.pblb.imximg
 image-$(CONFIG_MACH_EMBEST_RIOTBOARD) += barebox-embest-imx6s-riotboard.img
 
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbaa03_1gib
-CFG_start_phytec_pbaa03_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib.imxcfg
-FILE_barebox-phytec-pbaa03-1gib.img = start_phytec_pbaa03_1gib.pblb.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbaa03-1gib.img
-
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbaa03_1gib_1bank
-CFG_start_phytec_pbaa03_1gib_1bank.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib-1bank.imxcfg
-FILE_barebox-phytec-pbaa03-1gib-1bank.img = start_phytec_pbaa03_1gib_1bank.pblb.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbaa03-1gib-1bank.img
-
-pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbaa03_2gib
-CFG_start_phytec_pbaa03_2gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcaaxl3-2gib.imxcfg
-FILE_barebox-phytec-pbaa03-2gib.img = start_phytec_pbaa03_2gib.pblb.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbaa03-2gib.img
+pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycard_imx6q_1gib
+CFG_start_phytec_phycard_imx6q_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib.imxcfg
+FILE_barebox-phytec-phycard-imx6q-1gib.img = start_phytec_phycard_imx6q_1gib.pblb.imximg
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycard-imx6q-1gib.img
+
+pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycard_imx6q_1gib_1bank
+CFG_start_phytec_phycard_imx6q_1gib_1bank.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib-1bank.imxcfg
+FILE_barebox-phytec-phycard-imx6q-1gib-1bank.img = start_phytec_phycard_imx6q_1gib_1bank.pblb.imximg
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycard-imx6q-1gib-1bank.img
+
+pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycard_imx6q_2gib
+CFG_start_phytec_phycard_imx6q_2gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcaaxl3-2gib.imxcfg
+FILE_barebox-phytec-phycard-imx6q-2gib.img = start_phytec_phycard_imx6q_2gib.pblb.imximg
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycard-imx6q-2gib.img
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6q_som_nand_1gib
 CFG_start_phytec_phycore_imx6q_som_nand_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058-1gib.imxcfg
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
