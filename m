Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6Wgh-0007x0-64
 for barebox@lists.infradead.org; Thu, 12 Apr 2018 07:30:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Apr 2018 09:30:12 +0200
Message-Id: <20180412073017.6750-12-s.hauer@pengutronix.de>
In-Reply-To: <20180412073017.6750-1-s.hauer@pengutronix.de>
References: <20180412073017.6750-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/16] ARM: i.MX: phytec-som-imx6: add phyCORE-i.MX6 Solo with
 1GiB RAM
To: Barebox List <barebox@lists.infradead.org>
Cc: Stefan Christ <s.christ@phytec.de>

From: Stefan Christ <s.christ@phytec.de>

Add Phytec phyCORE-i.MX6 Solo:
  - imx6dl-phytec-phycore-som-nand:
    - 1GiB RAM on 1 Bank with 32Bit
    - 100Mbit Ethernet
    - NAND
    - SD
    - UART

Signed-off-by: Stefan Christ <s.christ@phytec.de>
Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 .../flash-header-phytec-pcm058dl-1gib-32bit.imxcfg                | 8 ++++++++
 arch/arm/boards/phytec-som-imx6/lowlevel.c                        | 1 +
 images/Makefile.imx                                               | 5 +++++
 3 files changed, 14 insertions(+)
 create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib-32bit.imxcfg

diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib-32bit.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib-32bit.imxcfg
new file mode 100644
index 0000000000..bf95d0f6ae
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib-32bit.imxcfg
@@ -0,0 +1,8 @@
+#define SETUP_MDCFG0			\
+	wm 32 0x021b000c 0x8c929b85
+
+#define SETUP_MDASP_MDCTL		\
+	wm 32 0x021b0040 0x00000027;	\
+	wm 32 0x021b0000 0x84190000
+
+#include "flash-header-phytec-pcm058dl.h"
diff --git a/arch/arm/boards/phytec-som-imx6/lowlevel.c b/arch/arm/boards/phytec-som-imx6/lowlevel.c
index 9aa2104a3c..f9d70c7450 100644
--- a/arch/arm/boards/phytec-som-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx6/lowlevel.c
@@ -107,6 +107,7 @@ PHYTEC_ENTRY(start_phytec_phyboard_subra_512mb_1bank, imx6dl_phytec_phyboard_sub
 PHYTEC_ENTRY(start_phytec_phyboard_subra_1gib_1bank, imx6q_phytec_phyboard_subra, SZ_1G, false);
 
 PHYTEC_ENTRY(start_phytec_phycore_imx6dl_som_nand_256mb, imx6dl_phytec_phycore_som_nand, SZ_256M, true);
+PHYTEC_ENTRY(start_phytec_phycore_imx6dl_som_nand_1gib, imx6dl_phytec_phycore_som_nand, SZ_1G, true);
 PHYTEC_ENTRY(start_phytec_phycore_imx6dl_som_emmc_1gib, imx6dl_phytec_phycore_som_emmc, SZ_1G, true);
 PHYTEC_ENTRY(start_phytec_phycore_imx6q_som_nand_1gib, imx6q_phytec_phycore_som_nand, SZ_1G, true);
 PHYTEC_ENTRY(start_phytec_phycore_imx6qp_som_nand_1gib, imx6qp_phytec_phycore_som_nand, SZ_1G, true);
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 5e10f4fbf3..8649c4919f 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -460,6 +460,11 @@ CFG_start_phytec_phycore_imx6dl_som_nand_256mb.pblx.imximg = $(board)/phytec-som
 FILE_barebox-phytec-phycore-imx6dl-som-nand-256mb.img = start_phytec_phycore_imx6dl_som_nand_256mb.pblx.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6dl-som-nand-256mb.img
 
+pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6dl_som_nand_1gib
+CFG_start_phytec_phycore_imx6dl_som_nand_1gib.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib-32bit.imxcfg
+FILE_barebox-phytec-phycore-imx6dl-som-nand-1gib.img = start_phytec_phycore_imx6dl_som_nand_1gib.pblx.imximg
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6dl-som-nand-1gib.img
+
 pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6dl_som_emmc_1gib
 CFG_start_phytec_phycore_imx6dl_som_emmc_1gib.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib.imxcfg
 FILE_barebox-phytec-phycore-imx6dl-som-emmc-1gib.img = start_phytec_phycore_imx6dl_som_emmc_1gib.pblx.imximg
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
