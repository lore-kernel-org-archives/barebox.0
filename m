Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZueAU-000254-RQ
 for barebox@lists.infradead.org; Fri, 06 Nov 2015 10:22:53 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 02B14A00499
 for <barebox@lists.infradead.org>; Fri,  6 Nov 2015 11:22:27 +0100 (CET)
From: Stefan Christ <s.christ@phytec.de>
Date: Fri, 6 Nov 2015 11:21:55 +0100
Message-Id: <1446805318-26691-8-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH 07/10] ARM: imx6dl: pfla02: Add support for 128MB and 256MB RAM
To: barebox@lists.infradead.org

Add support for phyFLEX-i.MX6 Solo with 128MB and 256MB RAM on one
memory bank.

Signed-off-by: Stefan Christ <s.christ@phytec.de>
---
 .../flash-header-phytec-pfla02s-128mb-1bank.imxcfg             |  8 ++++++++
 .../flash-header-phytec-pfla02s-256mb-1bank.imxcfg             |  8 ++++++++
 arch/arm/boards/phytec-som-imx6/lowlevel.c                     |  4 ++++
 images/Makefile.imx                                            | 10 ++++++++++
 4 files changed, 30 insertions(+)
 create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-128mb-1bank.imxcfg
 create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-256mb-1bank.imxcfg

diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-128mb-1bank.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-128mb-1bank.imxcfg
new file mode 100644
index 0000000..26fe2b2
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-128mb-1bank.imxcfg
@@ -0,0 +1,8 @@
+#define SETUP_MDCFG0                    \
+        wm 32 0x021b000c 0x3c409b85
+
+#define SETUP_MDASP_MDCTL		\
+        wm 32 0x021b0040 0x0000000B;    \
+        wm 32 0x021b0000 0x82180000
+
+#include "flash-header-phytec-pfla02dl.h"
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-256mb-1bank.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-256mb-1bank.imxcfg
new file mode 100644
index 0000000..babb0df
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-256mb-1bank.imxcfg
@@ -0,0 +1,8 @@
+#define SETUP_MDCFG0                    \
+        wm 32 0x021b000c 0x3c409b85
+
+#define SETUP_MDASP_MDCTL		\
+        wm 32 0x021b0040 0x0000000F;    \
+        wm 32 0x021b0000 0x82190000
+
+#include "flash-header-phytec-pfla02dl.h"
diff --git a/arch/arm/boards/phytec-som-imx6/lowlevel.c b/arch/arm/boards/phytec-som-imx6/lowlevel.c
index beb9be6..c6c3dd6 100644
--- a/arch/arm/boards/phytec-som-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx6/lowlevel.c
@@ -40,6 +40,8 @@ static inline void setup_uart(void)
 
 #define SZ_4G 0xEFFFFFF8
 
+BAREBOX_IMD_TAG_STRING(physom_mx6_memsize_SZ_128M, IMD_TYPE_PARAMETER, "memsize=128", 0);
+BAREBOX_IMD_TAG_STRING(physom_mx6_memsize_SZ_256M, IMD_TYPE_PARAMETER, "memsize=256", 0);
 BAREBOX_IMD_TAG_STRING(physom_mx6_memsize_SZ_512M, IMD_TYPE_PARAMETER, "memsize=512", 0);
 BAREBOX_IMD_TAG_STRING(physom_mx6_memsize_SZ_1G, IMD_TYPE_PARAMETER, "memsize=1024", 0);
 BAREBOX_IMD_TAG_STRING(physom_mx6_memsize_SZ_2G, IMD_TYPE_PARAMETER, "memsize=2048", 0);
@@ -83,6 +85,8 @@ PHYTEC_ENTRY(start_phytec_pbab01_1gib_1bank, imx6q_phytec_pbab01, SZ_1G, true);
 PHYTEC_ENTRY(start_phytec_pbab01_2gib, imx6q_phytec_pbab01, SZ_2G, true);
 PHYTEC_ENTRY(start_phytec_pbab01_4gib, imx6q_phytec_pbab01, SZ_4G, true);
 PHYTEC_ENTRY(start_phytec_pbab01dl_1gib, imx6dl_phytec_pbab01, SZ_1G, false);
+PHYTEC_ENTRY(start_phytec_pbab01s_128mb_1bank, imx6s_phytec_pbab01, SZ_128M, false);
+PHYTEC_ENTRY(start_phytec_pbab01s_256mb_1bank, imx6s_phytec_pbab01, SZ_256M, false);
 PHYTEC_ENTRY(start_phytec_pbab01s_512mb_1bank, imx6s_phytec_pbab01, SZ_512M, false);
 PHYTEC_ENTRY(start_phytec_phyboard_alcor_1gib, imx6q_phytec_phyboard_alcor, SZ_1G, false);
 PHYTEC_ENTRY(start_phytec_phyboard_subra_512mb_1bank, imx6dl_phytec_phyboard_subra, SZ_512M, false);
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 3dc3e82..d1dfd37 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -162,6 +162,16 @@ CFG_start_phytec_pbab01s_512mb_1bank.pblx.imximg = $(board)/phytec-som-imx6/flas
 FILE_barebox-phytec-pbab01s-512mb-1bank.img = start_phytec_pbab01s_512mb_1bank.pblx.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01s-512mb-1bank.img
 
+pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01s_256mb_1bank
+CFG_start_phytec_pbab01s_256mb_1bank.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02s-256mb-1bank.imxcfg
+FILE_barebox-phytec-pbab01s-256mb-1bank.img = start_phytec_pbab01s_256mb_1bank.pblx.imximg
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01s-256mb-1bank.img
+
+pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01s_128mb_1bank
+CFG_start_phytec_pbab01s_128mb_1bank.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02s-128mb-1bank.imxcfg
+FILE_barebox-phytec-pbab01s-128mb-1bank.img = start_phytec_pbab01s_128mb_1bank.pblx.imximg
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01s-128mb-1bank.img
+
 pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phyboard_alcor_1gib
 CFG_start_phytec_phyboard_alcor_1gib.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-1gib.imxcfg
 FILE_barebox-phytec-phyboard-alcor-1gib.img = start_phytec_phyboard_alcor_1gib.pblx.imximg
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
