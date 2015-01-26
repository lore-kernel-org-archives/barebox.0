Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YFeYx-0002UY-QT
 for barebox@lists.infradead.org; Mon, 26 Jan 2015 07:58:25 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 6CE77A002D4
 for <barebox@lists.infradead.org>; Mon, 26 Jan 2015 08:58:15 +0100 (CET)
From: Christian Hemp <c.hemp@phytec.de>
Date: Mon, 26 Jan 2015 08:56:32 +0100
Message-Id: <1422258992-12887-1-git-send-email-c.hemp@phytec.de>
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
Subject: [PATCH] ARM: phyFLEX-i.MX6: Add support for 1GB on 1 bank
To: barebox@lists.infradead.org

Add support phyFLEX-i.MX6 SOM with 1GB on one ram bank

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 .../flash-header-phytec-pfla02-1gib-1bank.imxcfg                  | 8 ++++++++
 arch/arm/boards/phytec-phyflex-imx6/lowlevel.c                    | 1 +
 images/Makefile.imx                                               | 5 +++++
 3 files changed, 14 insertions(+)
 create mode 100644 arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-1gib-1bank.imxcfg

diff --git a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-1gib-1bank.imxcfg b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-1gib-1bank.imxcfg
new file mode 100644
index 0000000..e414b6e
--- /dev/null
+++ b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-1gib-1bank.imxcfg
@@ -0,0 +1,8 @@
+#define SETUP_MDCFG0                    \
+	wm 32 0x021b000c 0x565c9b85
+
+#define SETUP_1GIB_2GIB_4GIB		\
+	wm 32 0x021b0040 0x00000027;	\
+	wm 32 0x021b0000 0x831a0000
+
+#include "flash-header-phytec-pfla02.h"
diff --git a/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c b/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
index dbd264a..ee6d7fb 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
@@ -90,6 +90,7 @@ static void __noreturn start_imx6_phytec_common(uint32_t size,
 	}
 
 PHYTEC_ENTRY(start_phytec_pbab01_1gib, imx6q_phytec_pbab01, SZ_1G, true);
+PHYTEC_ENTRY(start_phytec_pbab01_1gib_1bank, imx6q_phytec_pbab01, SZ_1G, true);
 PHYTEC_ENTRY(start_phytec_pbab01_2gib, imx6q_phytec_pbab01, SZ_2G, true);
 PHYTEC_ENTRY(start_phytec_pbab01_4gib, imx6q_phytec_pbab01, SZ_4G, true);
 PHYTEC_ENTRY(start_phytec_pbab01dl_1gib, imx6dl_phytec_pbab01, SZ_1G, false);
diff --git a/images/Makefile.imx b/images/Makefile.imx
index fd7f725..eacc76e 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -105,6 +105,11 @@ CFG_start_phytec_pbab01_1gib.pblx.imximg = $(board)/phytec-phyflex-imx6/flash-he
 FILE_barebox-phytec-pbab01-1gib.img = start_phytec_pbab01_1gib.pblx.imximg
 image-$(CONFIG_MACH_PHYTEC_PFLA02) += barebox-phytec-pbab01-1gib.img
 
+pblx-$(CONFIG_MACH_PHYTEC_PFLA02) += start_phytec_pbab01_1gib_1bank
+CFG_start_phytec_pbab01_1gib_1bank.pblx.imximg = $(board)/phytec-phyflex-imx6/flash-header-phytec-pfla02-1gib-1bank.imxcfg
+FILE_barebox-phytec-pbab01-1gib-1bank.img = start_phytec_pbab01_1gib_1bank.pblx.imximg
+image-$(CONFIG_MACH_PHYTEC_PFLA02) += barebox-phytec-pbab01-1gib-1bank.img
+
 pblx-$(CONFIG_MACH_PHYTEC_PFLA02) += start_phytec_pbab01dl_1gib
 CFG_start_phytec_pbab01dl_1gib.pblx.imximg = $(board)/phytec-phyflex-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg
 FILE_barebox-phytec-pbab01dl-1gib.img = start_phytec_pbab01dl_1gib.pblx.imximg
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
