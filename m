Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bn5HF-0004VX-Nq
 for barebox@lists.infradead.org; Thu, 22 Sep 2016 14:47:08 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 22 Sep 2016 16:46:38 +0200
Message-Id: <20160922144639.28305-2-s.trumtrar@pengutronix.de>
In-Reply-To: <20160922144639.28305-1-s.trumtrar@pengutronix.de>
References: <20160922144639.28305-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 2/3] nand: denali: use is_timeout in while loop
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Instead of using udelay and a countdown, use the is_timeout function.
Also, move the code closer to the kernel version, i.e. check for the
correct bank and clean the interrupt status.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/mtd/nand/nand_denali.c | 39 +++++++++++++++++++++++----------------
 1 file changed, 23 insertions(+), 16 deletions(-)

diff --git a/drivers/mtd/nand/nand_denali.c b/drivers/mtd/nand/nand_denali.c
index ceb5a8b87e42..6a6c0e462514 100644
--- a/drivers/mtd/nand/nand_denali.c
+++ b/drivers/mtd/nand/nand_denali.c
@@ -25,6 +25,7 @@
 #include <linux/mtd/mtd.h>
 #include <linux/mtd/nand.h>
 #include <io.h>
+#include <clock.h>
 #include <of_mtd.h>
 #include <errno.h>
 #include <asm/io.h>
@@ -633,26 +634,32 @@ static uint32_t read_interrupt_status(struct denali_nand_info *denali)
 
 static uint32_t wait_for_irq(struct denali_nand_info *denali, uint32_t irq_mask)
 {
-	unsigned long comp_res = 1000;
 	uint32_t intr_status = 0;
+	uint64_t start;
 
-	do {
+	if (!is_flash_bank_valid(denali->flash_bank)) {
+		dev_dbg(denali->dev, "No valid chip selected (%d)\n",
+			denali->flash_bank);
+		return 0;
+	}
+
+	start = get_time_ns();
+
+	while (!is_timeout(start, 1000 * MSECOND)) {
 		intr_status = read_interrupt_status(denali);
-		if (intr_status & irq_mask) {
-			/* our interrupt was detected */
-			break;
-		}
-		udelay(1);
-		comp_res--;
-	} while (comp_res != 0);
-
-	if (comp_res == 0) {
-		/* timeout */
-		intr_status = 0;
-		dev_dbg(denali->dev, "timeout occurred, status = 0x%x, mask = 0x%x\n",
-				intr_status, irq_mask);
+
+		if (intr_status != 0)
+			clear_interrupt(denali, intr_status);
+
+		if (intr_status & irq_mask)
+			return intr_status;
 	}
-	return intr_status;
+
+	/* timeout */
+	dev_dbg(denali->dev, "timeout occurred, status = 0x%x, mask = 0x%x\n",
+		intr_status, irq_mask);
+
+	return 0;
 }
 
 /*
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
