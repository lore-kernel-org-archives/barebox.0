Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bn5HF-0004VV-Ns
 for barebox@lists.infradead.org; Thu, 22 Sep 2016 14:47:07 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 22 Sep 2016 16:46:37 +0200
Message-Id: <20160922144639.28305-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 1/3] nand: denali: use correct interrupts in read_page
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

The interrupt mask is incorrect in case of HW error correction.
The driver will time out waiting for the wrong interrupts.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/mtd/nand/nand_denali.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/nand_denali.c b/drivers/mtd/nand/nand_denali.c
index bf9a05d85264..ceb5a8b87e42 100644
--- a/drivers/mtd/nand/nand_denali.c
+++ b/drivers/mtd/nand/nand_denali.c
@@ -1102,8 +1102,9 @@ static int denali_read_page(struct mtd_info *mtd, struct nand_chip *chip,
 	size_t size = denali->mtd.writesize + denali->mtd.oobsize;
 
 	uint32_t irq_status;
-	uint32_t irq_mask = INTR_STATUS__ECC_TRANSACTION_DONE |
-			    INTR_STATUS__ECC_ERR;
+	uint32_t irq_mask = denali->have_hw_ecc_fixup ?
+		(INTR_STATUS__DMA_CMD_COMP) :
+		(INTR_STATUS__ECC_TRANSACTION_DONE | INTR_STATUS__ECC_ERR);
 	bool check_erased_page = false;
 
 	if (page != denali->page) {
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
