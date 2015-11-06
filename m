Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZueAU-000253-RR
 for barebox@lists.infradead.org; Fri, 06 Nov 2015 10:22:51 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id F1828A00498
 for <barebox@lists.infradead.org>; Fri,  6 Nov 2015 11:22:26 +0100 (CET)
From: Stefan Christ <s.christ@phytec.de>
Date: Fri, 6 Nov 2015 11:21:54 +0100
Message-Id: <1446805318-26691-7-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH 06/10] ARM: imx6q: pfla02: Add support for 512MiB RAM on one
 bank
To: barebox@lists.infradead.org

Add support for phyFLEX-i.MX6 Quad 512MiB RAM on one bank.

Signed-off-by: Stefan Christ <s.christ@phytec.de>
---
 .../phytec-som-imx6/flash-header-phytec-pfla02-512mb-1bank.imxcfg | 8 ++++++++
 arch/arm/boards/phytec-som-imx6/lowlevel.c                        | 1 +
 images/Makefile.imx                                               | 5 +++++
 3 files changed, 14 insertions(+)
 create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-512mb-1bank.imxcfg

diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-512mb-1bank.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-512mb-1bank.imxcfg
new file mode 100644
index 0000000..d6bbe1f
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-512mb-1bank.imxcfg
@@ -0,0 +1,8 @@
+#define SETUP_MDCFG0			\
+	wm 32 0x021b000c 0x555a7975
+
+#define SETUP_MDASP_MDCTL		\
+	wm 32 0x021b0040 0x00000017;	\
+	wm 32 0x021b0000 0x821a0000
+
+#include "flash-header-phytec-pfla02.h"
diff --git a/arch/arm/boards/phytec-som-imx6/lowlevel.c b/arch/arm/boards/phytec-som-imx6/lowlevel.c
index 351a4fd..beb9be6 100644
--- a/arch/arm/boards/phytec-som-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx6/lowlevel.c
@@ -77,6 +77,7 @@ PHYTEC_ENTRY(start_phytec_pbaa03_1gib, imx6q_phytec_pbaa03, SZ_1G, true);
 PHYTEC_ENTRY(start_phytec_pbaa03_1gib_1bank, imx6q_phytec_pbaa03, SZ_1G, true);
 PHYTEC_ENTRY(start_phytec_pbaa03_2gib, imx6q_phytec_pbaa03, SZ_2G, true);
 
+PHYTEC_ENTRY(start_phytec_pbab01_512mb_1bank, imx6q_phytec_pbab01, SZ_512M, true);
 PHYTEC_ENTRY(start_phytec_pbab01_1gib, imx6q_phytec_pbab01, SZ_1G, true);
 PHYTEC_ENTRY(start_phytec_pbab01_1gib_1bank, imx6q_phytec_pbab01, SZ_1G, true);
 PHYTEC_ENTRY(start_phytec_pbab01_2gib, imx6q_phytec_pbab01, SZ_2G, true);
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 62bd83c..3dc3e82 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -147,6 +147,11 @@ CFG_start_phytec_pbab01_1gib_1bank.pblx.imximg = $(board)/phytec-som-imx6/flash-
 FILE_barebox-phytec-pbab01-1gib-1bank.img = start_phytec_pbab01_1gib_1bank.pblx.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01-1gib-1bank.img
 
+pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01_512mb_1bank
+CFG_start_phytec_pbab01_512mb_1bank.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-512mb-1bank.imxcfg
+FILE_barebox-phytec-pbab01-512mb-1bank.img = start_phytec_pbab01_512mb_1bank.pblx.imximg
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01-512mb-1bank.img
+
 pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01dl_1gib
 CFG_start_phytec_pbab01dl_1gib.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg
 FILE_barebox-phytec-pbab01dl-1gib.img = start_phytec_pbab01dl_1gib.pblx.imximg
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
