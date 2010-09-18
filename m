Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Own1r-0000ao-Ho
	for barebox@lists.infradead.org; Sat, 18 Sep 2010 02:19:52 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 18 Sep 2010 04:18:35 +0200
Message-Id: <1284776317-6195-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/3] at91: add HAVE_NAND_ATMEL_BUSWIDTH_16 to Enable 16-bit
	data bus interface
To: barebox@lists.infradead.org
Cc: Patrice Vilchez <patrice.vilchez@atmel.com>, Nicolas Ferre <nicolas.ferre@atmel.com>

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>
Cc: Patrice Vilchez <patrice.vilchez@atmel.com>
---
 arch/arm/mach-at91/Kconfig |   16 ++++++++++++++++
 1 files changed, 16 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 99d0f4d..1b006a1 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -10,6 +10,9 @@ config BOARDINFO
 	default "Bucyrus MMC-CPU" if MACH_MMCCPU
 	default "Ronetix PM9263" if MACH_PM9263
 
+config HAVE_NAND_ATMEL_BUSWIDTH_16
+	bool
+
 comment "Atmel AT91 System-on-Chip"
 
 choice
@@ -38,6 +41,7 @@ choice
 
 config MACH_AT91SAM9260EK
 	bool "Atmel AT91SAM9260-EK"
+	select HAVE_NAND_ATMEL_BUSWIDTH_16
 	help
 	  Say y here if you are using Atmel's AT91SAM9260-EK Evaluation board
 
@@ -54,6 +58,7 @@ choice
 
 config MACH_AT91SAM9263EK
 	bool "Atmel AT91SAM9263-EK"
+	select HAVE_NAND_ATMEL_BUSWIDTH_16
 	help
 	  Say y here if you are using Atmel's AT91SAM9263-EK Evaluation board
 
@@ -71,4 +76,15 @@ endchoice
 
 endif
 
+# ----------------------------------------------------------
+
+comment "AT91 Board Options"
+
+config MTD_NAND_ATMEL_BUSWIDTH_16
+	bool "Enable 16-bit data bus interface to NAND flash"
+	depends on HAVE_NAND_ATMEL_BUSWIDTH_16
+	help
+	  On AT91SAM926x boards both types of NAND flash can be present
+	  (8 and 16 bit data bus width).
+
 endif
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
