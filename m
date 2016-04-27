Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1avMM4-0001Lp-Ba
 for barebox@lists.infradead.org; Wed, 27 Apr 2016 10:06:02 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 2A94AA004F8
 for <barebox@lists.infradead.org>; Wed, 27 Apr 2016 12:05:37 +0200 (CEST)
From: Stefan Christ <s.christ@phytec.de>
Date: Wed, 27 Apr 2016 12:04:44 +0200
Message-Id: <1461751489-13302-11-git-send-email-s.christ@phytec.de>
In-Reply-To: <1461751489-13302-1-git-send-email-s.christ@phytec.de>
References: <1461751489-13302-1-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH for next 10/15] ARM: phytec-som-imx6: add phyCORE-i.MX6 Quad
 2GiB RAM
To: barebox@lists.infradead.org

From: Christian Hemp <c.hemp@phytec.de>

Add new Phytec phyCORE-i.MX6 SOM:
  Support:
    - imx6q-phytec-phycore-som-emmc:
       - 2GiB RAM on 1 Bank with 64Bit
       - 1GBit Ethernet
       - SPI NOR
       - eMMC
       - SD
       - UART

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 .../boards/phytec-som-imx6/flash-header-phytec-pcm058-2gib.imxcfg | 8 ++++++++
 arch/arm/boards/phytec-som-imx6/lowlevel.c                        | 1 +
 images/Makefile.imx                                               | 5 +++++
 3 files changed, 14 insertions(+)
 create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058-2gib.imxcfg

diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058-2gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058-2gib.imxcfg
new file mode 100644
index 0000000..54c9e41
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058-2gib.imxcfg
@@ -0,0 +1,8 @@
+#define SETUP_MDCFG0			\
+	wm 32 0x021b000c 0x8c929b85
+
+#define SETUP_MDASP_MDCTL		\
+	wm 32 0x021b0040 0x00000047;	\
+	wm 32 0x021b0000 0x841A0000
+
+#include "flash-header-phytec-pcm058.h"
diff --git a/arch/arm/boards/phytec-som-imx6/lowlevel.c b/arch/arm/boards/phytec-som-imx6/lowlevel.c
index 6506e5f..d2d8b68 100644
--- a/arch/arm/boards/phytec-som-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx6/lowlevel.c
@@ -96,3 +96,4 @@ PHYTEC_ENTRY(start_phytec_phyboard_subra_1gib_1bank, imx6q_phytec_phyboard_subra
 PHYTEC_ENTRY(start_phytec_phycore_imx6dl_som_nand_256mb, imx6dl_phytec_phycore_som_nand, SZ_256M, true);
 PHYTEC_ENTRY(start_phytec_phycore_imx6q_som_nand_1gib, imx6q_phytec_phycore_som_nand, SZ_1G, true);
 PHYTEC_ENTRY(start_phytec_phycore_imx6q_som_emmc_1gib, imx6q_phytec_phycore_som_emmc, SZ_1G, true);
+PHYTEC_ENTRY(start_phytec_phycore_imx6q_som_emmc_2gib, imx6q_phytec_phycore_som_emmc, SZ_2G, true);
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 81293fe..b632a58 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -353,6 +353,11 @@ CFG_start_phytec_phycore_imx6q_som_emmc_1gib.pblx.imximg = $(board)/phytec-som-i
 FILE_barebox-phytec-phycore-imx6q-som-emmc-1gib.img = start_phytec_phycore_imx6q_som_emmc_1gib.pblx.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6q-som-emmc-1gib.img
 
+pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6q_som_emmc_2gib
+CFG_start_phytec_phycore_imx6q_som_emmc_2gib.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058-2gib.imxcfg
+FILE_barebox-phytec-phycore-imx6q-som-emmc-2gib.img = start_phytec_phycore_imx6q_som_emmc_2gib.pblx.imximg
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6q-som-emmc-2gib.img
+
 pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6dl_som_nand_256mb
 CFG_start_phytec_phycore_imx6dl_som_nand_256mb.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058dl-256mb.imxcfg
 FILE_barebox-phytec-phycore-imx6dl-som-nand-256mb.img = start_phytec_phycore_imx6dl_som_nand_256mb.pblx.imximg
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
