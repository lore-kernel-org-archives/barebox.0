Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22e.google.com ([2a00:1450:400c:c09::22e])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZzVtQ-0007px-Dv
 for barebox@lists.infradead.org; Thu, 19 Nov 2015 20:33:21 +0000
Received: by wmvv187 with SMTP id v187so86248251wmv.1
 for <barebox@lists.infradead.org>; Fri, 20 Nov 2015 11:36:23 -0800 (PST)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 20 Nov 2015 20:35:58 +0100
Message-Id: <1448048172-10080-6-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1448048172-10080-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1448048172-10080-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 05/19] mtd: nand_mrvl_nfc: Use common clock for core clock
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

With PXA3xx now providing a common clock for the NAND clock, use it
and get rid of the mach/clock.h. This will allow Marvell Armada 370/XP
to reuse the same driver.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Acked-by: Robert Jarzmik <robert.jarzmik@free.fr>
Tested-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/mtd/nand/nand_mrvl_nfc.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/nand_mrvl_nfc.c b/drivers/mtd/nand/nand_mrvl_nfc.c
index 1ec48cc09e59..bdf949de0e7f 100644
--- a/drivers/mtd/nand/nand_mrvl_nfc.c
+++ b/drivers/mtd/nand/nand_mrvl_nfc.c
@@ -24,7 +24,6 @@
 #include <linux/types.h>
 #include <linux/clk.h>
 #include <linux/err.h>
-#include <mach/clock.h>
 #include <malloc.h>
 #include <of_mtd.h>
 #include <stmp-device.h>
@@ -135,6 +134,7 @@ struct mrvl_nand_host {
 	struct nand_chip	chip;
 	struct mtd_partition	*parts;
 	struct device_d		*dev;
+	struct clk		*core_clk;
 
 	/* calculated from mrvl_nand_flash data */
 	unsigned int		col_addr_cycles;
@@ -281,10 +281,10 @@ static struct mrvl_nand_timing timings[] = {
 static void mrvl_nand_set_timing(struct mrvl_nand_host *host, bool use_default)
 {
 	struct mtd_info *mtd = &host->mtd;
+	unsigned long nand_clk = clk_get_rate(host->core_clk);
 	struct mrvl_nand_timing *t;
 	uint32_t ndtr0, ndtr1;
 	u16 id;
-	unsigned long nand_clk = pxa_get_nandclk();
 
 	if (use_default) {
 		id = 0;
@@ -954,6 +954,13 @@ static struct mrvl_nand_host *alloc_nand_resource(struct device_d *dev)
 		free(host);
 		return host->mmio_base;
 	}
+	host->core_clk = clk_get(dev, NULL);
+	if (IS_ERR(host->core_clk)) {
+		free(host);
+		return (void *)host->core_clk;
+	}
+	clk_enable(host->core_clk);
+
 	if (pdata) {
 		host->keep_config = pdata->keep_config;
 		host->flash_bbt = pdata->flash_bbt;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
