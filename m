Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SjSRM-0007nX-PJ
 for barebox@lists.infradead.org; Tue, 26 Jun 2012 09:52:12 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Tue, 26 Jun 2012 11:51:51 +0200
Message-Id: <1340704314-12593-10-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1340704314-12593-1-git-send-email-jlu@pengutronix.de>
References: <1340704314-12593-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 09/12] board hmi10: enable support for NAND
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/boards/hmi10/board.c |   23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm/boards/hmi10/board.c b/arch/arm/boards/hmi10/board.c
index be4d920..bc3283d 100644
--- a/arch/arm/boards/hmi10/board.c
+++ b/arch/arm/boards/hmi10/board.c
@@ -31,7 +31,9 @@
 #include <linux/err.h>
 #include <linux/mtd/nand.h>
 
+#include <mach/aemif.h>
 #include <mach/hardware.h>
+#include <mach/nand.h>
 #include <mach/da8xx.h>
 
 #ifdef CONFIG_DRIVER_SERIAL_NS16550
@@ -82,8 +84,29 @@ static int hmi10_mem_init(void)
 }
 mem_initcall(hmi10_mem_init);
 
+static struct davinci_aemif_timing hmi10_nandflash_timing = {
+	.wsetup = 24,
+	.wstrobe = 21,
+	.whold = 14,
+	.rsetup = 19,
+	.rstrobe = 50,
+	.rhold = 0,
+	.ta = 20,
+};
+
+static struct davinci_nand_pdata hmi10_nandflash_data = {
+	.ecc_mode = NAND_ECC_HW,
+	.ecc_bits = 4,
+	.options = NAND_USE_FLASH_BBT,
+	.timing = &hmi10_nandflash_timing,
+};
+
 static int hmi10_devices_init(void)
 {
+	lpsc_on(DAVINCI_LPSC_AEMIF);
+	add_generic_device("davinci_nand", -1, NULL, DAVINCI_ASYNC_EMIF_CNTRL_BASE, 0,
+			   IORESOURCE_MEM, &hmi10_nandflash_data);
+
 	armlinux_set_bootparams((void *)0xc0000100);
 	armlinux_set_architecture(MACH_TYPE_DAVINCI_HE_HMI10);
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
