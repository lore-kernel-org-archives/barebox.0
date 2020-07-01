Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqVDu-0004wu-0F
 for barebox@lists.infradead.org; Wed, 01 Jul 2020 05:24:02 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  1 Jul 2020 07:23:39 +0200
Message-Id: <20200701052340.9462-28-a.fatoum@pengutronix.de>
In-Reply-To: <20200701052340.9462-1-a.fatoum@pengutronix.de>
References: <20200701052340.9462-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 27/28] ARM: at91: sama5d27-giantboard: add additional first
 stage entry point
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The BootROM constrains us to a 64K big first stage bootloader. Add a PBL
entry point for a xload barebox that sets up the minimum necessary to
load a FAT32 barebox.bin from the SD-Card.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../arm/boards/sama5d27-giantboard/lowlevel.c | 28 +++++++++++++------
 images/Makefile.at91                          |  5 ++++
 2 files changed, 24 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boards/sama5d27-giantboard/lowlevel.c b/arch/arm/boards/sama5d27-giantboard/lowlevel.c
index 3dada9baf23c..dc678e5d83ce 100644
--- a/arch/arm/boards/sama5d27-giantboard/lowlevel.c
+++ b/arch/arm/boards/sama5d27-giantboard/lowlevel.c
@@ -5,22 +5,34 @@
 
 #include <common.h>
 #include <init.h>
-
-#include <asm/barebox-arm-head.h>
 #include <mach/barebox-arm.h>
 #include <mach/sama5d2_ll.h>
+#include <mach/xload.h>
+#include <mach/sama5d2-sip-ddramc.h>
 #include <mach/iomux.h>
 #include <debug_ll.h>
-#include <mach/at91_dbgu.h>
 
 /* PCK = 492MHz, MCK = 164MHz */
 #define MASTER_CLOCK	164000000
 
-static void dbgu_init(void)
+SAMA5_ENTRY_FUNCTION(start_sama5d27_giantboard_xload_mmc, r4)
 {
-	sama5d2_resetup_uart_console(MASTER_CLOCK);
+	void __iomem *dbgu_base;
+
+	sama5d2_lowlevel_init();
+
+	dbgu_base = sama5d2_resetup_uart_console(MASTER_CLOCK);
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		putc_ll('>');
 
-	putc_ll('>');
+	relocate_to_current_adr();
+	setup_c();
+
+	pbl_set_putc(at91_dbgu_putc, dbgu_base);
+
+	sama5d2_udelay_init(MASTER_CLOCK);
+	sama5d2_d1g_ddrconf();
+	sama5d2_sdhci_start_image(r4);
 }
 
 extern char __dtb_z_at91_sama5d27_giantboard_start[];
@@ -29,10 +41,8 @@ SAMA5_ENTRY_FUNCTION(start_sama5d27_giantboard, r4)
 {
 	void *fdt;
 
-	arm_cpu_lowlevel_init();
-
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
-		dbgu_init();
+		putc_ll('>');
 
 	fdt = __dtb_z_at91_sama5d27_giantboard_start + get_runtime_offset();
 
diff --git a/images/Makefile.at91 b/images/Makefile.at91
index bc63357c5d19..00fa4cab27ea 100644
--- a/images/Makefile.at91
+++ b/images/Makefile.at91
@@ -26,3 +26,8 @@ image-$(CONFIG_MACH_SAMA5D27_SOM1) += barebox-sama5d27-som1-ek-xload-mmc.img
 pblb-$(CONFIG_MACH_SAMA5D27_GIANTBOARD) += start_sama5d27_giantboard
 FILE_barebox-groboards-sama5d27-giantboard.img = start_sama5d27_giantboard.pblb
 image-$(CONFIG_MACH_SAMA5D27_GIANTBOARD) += barebox-groboards-sama5d27-giantboard.img
+
+pblb-$(CONFIG_MACH_SAMA5D27_GIANTBOARD) += start_sama5d27_giantboard_xload_mmc
+FILE_barebox-groboards-sama5d27-giantboard-xload-mmc.img = start_sama5d27_giantboard_xload_mmc.pblb
+MAX_PBL_IMAGE_SIZE_start_sama5d27_giantboard_xload_mmc = 0xffff
+image-$(CONFIG_MACH_SAMA5D27_GIANTBOARD) += barebox-groboards-sama5d27-giantboard-xload-mmc.img
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
