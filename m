Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([88.190.12.23])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1THb5B-0008Bb-TN
 for barebox@lists.infradead.org; Fri, 28 Sep 2012 13:58:22 +0000
From: Maxime Ripard <maxime.ripard@free-electrons.com>
Date: Fri, 28 Sep 2012 15:58:12 +0200
Message-Id: <1348840692-1913-1-git-send-email-maxime.ripard@free-electrons.com>
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
Subject: [PATCH] arm: cfa10036: Add proper resource length
To: barebox@lists.infradead.org
Cc: brian@crystalfontz.com

The cfa10036 board file were missing the length parameter when adding
devices. This made barebox crash early in the boot, in the mxs-mci
driver.

Provide the resources lengths in a consistent format.

Signed-off-by: Maxime Ripard <maxime.ripard@free-electrons.com>
---
 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c |    5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
index e454afd..fcb7057 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
+++ b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
@@ -23,6 +23,7 @@
 #include <init.h>
 #include <mci.h>
 #include <io.h>
+#include <sizes.h>
 
 #include <mach/clock.h>
 #include <mach/imx-regs.h>
@@ -89,7 +90,7 @@ static int cfa10036_devices_init(void)
 	armlinux_set_bootparams((void *)IMX_MEMORY_BASE + 0x100);
 	armlinux_set_architecture(MACH_TYPE_CFA10036);
 
-	add_generic_device("mxs_mci", 0, NULL, IMX_SSP0_BASE, 0,
+	add_generic_device("mxs_mci", 0, NULL, IMX_SSP0_BASE, SZ_8K,
 			   IORESOURCE_MEM, &mci_pdata);
 
 	return 0;
@@ -98,7 +99,7 @@ device_initcall(cfa10036_devices_init);
 
 static int cfa10036_console_init(void)
 {
-	add_generic_device("stm_serial", 0, NULL, IMX_DBGUART_BASE, 8192,
+	add_generic_device("stm_serial", 0, NULL, IMX_DBGUART_BASE, SZ_8K,
 			   IORESOURCE_MEM, NULL);
 
 	return 0;
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
