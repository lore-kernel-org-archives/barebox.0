Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZueAU-000252-RM
 for barebox@lists.infradead.org; Fri, 06 Nov 2015 10:22:54 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id E6640A00497
 for <barebox@lists.infradead.org>; Fri,  6 Nov 2015 11:22:26 +0100 (CET)
From: Stefan Christ <s.christ@phytec.de>
Date: Fri, 6 Nov 2015 11:21:53 +0100
Message-Id: <1446805318-26691-6-git-send-email-s.christ@phytec.de>
In-Reply-To: <1446805318-26691-1-git-send-email-s.christ@phytec.de>
References: <1446805318-26691-1-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH 05/10] ARM: pfla02: append suffix 1bank
To: barebox@lists.infradead.org

In the current naming schema the phyFLEX-i.MX6 variants which only use
one bank for memory have the suffix "1bank". The variants which use two
banks of memory have no suffix.

The patch fixes the name of the phyFLEX-i.MX6 Solo variant with 512MiB
on one bank. So the name of the image file changes from
    barebox-phytec-pbab01s-512mb.img
    barebox-phytec-phyboard-subra-512mb.img
to
    barebox-phytec-pbab01s-512mb-1bank.img
    barebox-phytec-phyboard-subra-512mb-1bank.img

This patch touches the phyFLEX-i.MX6 Kit variant and the
phyBOARD-SUBRA-i.MX6 which shares the same phyFLEX-i.MX6 module.

Signed-off-by: Stefan Christ <s.christ@phytec.de>
---
 ...fg => flash-header-phytec-pfla02s-512mb-1bank.imxcfg} |  0
 arch/arm/boards/phytec-som-imx6/lowlevel.c               |  4 ++--
 images/Makefile.imx                                      | 16 ++++++++--------
 3 files changed, 10 insertions(+), 10 deletions(-)
 rename arch/arm/boards/phytec-som-imx6/{flash-header-phytec-pfla02s-512mb.imxcfg => flash-header-phytec-pfla02s-512mb-1bank.imxcfg} (100%)

diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-512mb.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-512mb-1bank.imxcfg
similarity index 100%
rename from arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-512mb.imxcfg
rename to arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-512mb-1bank.imxcfg
diff --git a/arch/arm/boards/phytec-som-imx6/lowlevel.c b/arch/arm/boards/phytec-som-imx6/lowlevel.c
index a3d375e..351a4fd 100644
--- a/arch/arm/boards/phytec-som-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx6/lowlevel.c
@@ -82,6 +82,6 @@ PHYTEC_ENTRY(start_phytec_pbab01_1gib_1bank, imx6q_phytec_pbab01, SZ_1G, true);
 PHYTEC_ENTRY(start_phytec_pbab01_2gib, imx6q_phytec_pbab01, SZ_2G, true);
 PHYTEC_ENTRY(start_phytec_pbab01_4gib, imx6q_phytec_pbab01, SZ_4G, true);
 PHYTEC_ENTRY(start_phytec_pbab01dl_1gib, imx6dl_phytec_pbab01, SZ_1G, false);
-PHYTEC_ENTRY(start_phytec_pbab01s_512mb, imx6s_phytec_pbab01, SZ_512M, false);
+PHYTEC_ENTRY(start_phytec_pbab01s_512mb_1bank, imx6s_phytec_pbab01, SZ_512M, false);
 PHYTEC_ENTRY(start_phytec_phyboard_alcor_1gib, imx6q_phytec_phyboard_alcor, SZ_1G, false);
-PHYTEC_ENTRY(start_phytec_phyboard_subra_512mb, imx6dl_phytec_phyboard_subra, SZ_512M, false);
+PHYTEC_ENTRY(start_phytec_phyboard_subra_512mb_1bank, imx6dl_phytec_phyboard_subra, SZ_512M, false);
diff --git a/images/Makefile.imx b/images/Makefile.imx
index af66df1..62bd83c 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -152,20 +152,20 @@ CFG_start_phytec_pbab01dl_1gib.pblx.imximg = $(board)/phytec-som-imx6/flash-head
 FILE_barebox-phytec-pbab01dl-1gib.img = start_phytec_pbab01dl_1gib.pblx.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01dl-1gib.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01s_512mb
-CFG_start_phytec_pbab01s_512mb.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02s-512mb.imxcfg
-FILE_barebox-phytec-pbab01s-512mb.img = start_phytec_pbab01s_512mb.pblx.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01s-512mb.img
+pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01s_512mb_1bank
+CFG_start_phytec_pbab01s_512mb_1bank.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02s-512mb-1bank.imxcfg
+FILE_barebox-phytec-pbab01s-512mb-1bank.img = start_phytec_pbab01s_512mb_1bank.pblx.imximg
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01s-512mb-1bank.img
 
 pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phyboard_alcor_1gib
 CFG_start_phytec_phyboard_alcor_1gib.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-1gib.imxcfg
 FILE_barebox-phytec-phyboard-alcor-1gib.img = start_phytec_phyboard_alcor_1gib.pblx.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phyboard-alcor-1gib.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phyboard_subra_512mb
-CFG_start_phytec_phyboard_subra_512mb.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02s-512mb.imxcfg
-FILE_barebox-phytec-phyboard-subra-512mb.img = start_phytec_phyboard_subra_512mb.pblx.imximg
-image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phyboard-subra-512mb.img
+pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phyboard_subra_512mb_1bank
+CFG_start_phytec_phyboard_subra_512mb_1bank.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02s-512mb-1bank.imxcfg
+FILE_barebox-phytec-phyboard-subra-512mb-1bank.img = start_phytec_phyboard_subra_512mb_1bank.pblx.imximg
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phyboard-subra-512mb-1bank.img
 
 pblx-$(CONFIG_MACH_DFI_FS700_M60) += start_imx6dl_dfi_fs700_m60_6s
 CFG_start_imx6dl_dfi_fs700_m60_6s.pblx.imximg = $(board)/dfi-fs700-m60/flash-header-fs700-m60-6s.imxcfg
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
