Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Own1r-0000am-Hh
	for barebox@lists.infradead.org; Sat, 18 Sep 2010 02:19:52 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 18 Sep 2010 04:18:36 +0200
Message-Id: <1284776317-6195-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1284776317-6195-1-git-send-email-plagnioj@jcrosoft.com>
References: <1284776317-6195-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/3] at91sam9263: move MACH_HAS_LOWLEVEL_INIT to board
To: barebox@lists.infradead.org
Cc: Patrice Vilchez <patrice.vilchez@atmel.com>, Nicolas Ferre <nicolas.ferre@atmel.com>

as not all board support it

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>
Cc: Patrice Vilchez <patrice.vilchez@atmel.com>
---
 arch/arm/mach-at91/Kconfig |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 1b006a1..288ee6f 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -26,7 +26,6 @@ config ARCH_AT91SAM9260
 config ARCH_AT91SAM9263
 	bool "AT91SAM9263"
 	select CPU_ARM926T
-	select MACH_HAS_LOWLEVEL_INIT
 	select HAS_MACB
 
 endchoice
@@ -58,6 +57,7 @@ choice
 
 config MACH_AT91SAM9263EK
 	bool "Atmel AT91SAM9263-EK"
+	select MACH_HAS_LOWLEVEL_INIT
 	select HAVE_NAND_ATMEL_BUSWIDTH_16
 	help
 	  Say y here if you are using Atmel's AT91SAM9263-EK Evaluation board
@@ -69,6 +69,7 @@ config MACH_MMCCPU
 
 config MACH_PM9263
 	bool "Ronetix PM9263"
+	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say y here if you are using the Ronetix PM9263 Board
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
