Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wf8mQ-0003T5-A1
 for barebox@lists.infradead.org; Tue, 29 Apr 2014 14:13:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 29 Apr 2014 16:12:42 +0200
Message-Id: <1398780762-26924-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] mtd: nand-mxs: Return bitflips
To: barebox@lists.infradead.org

The read_page hook shall return the number of bitflips. Implement
that.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_mxs.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index b06b558..d5428bc 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -661,6 +661,7 @@ static int mxs_nand_ecc_read_page(struct mtd_info *mtd, struct nand_chip *nand,
 	uint32_t channel = nand_info->dma_channel_base + nand_info->cur_chip;
 	uint32_t corrected = 0, failed = 0;
 	uint8_t	*status;
+	unsigned int  max_bitflips = 0;
 	int i, ret;
 
 	/* Compile the DMA descriptor - wait for ready. */
@@ -766,6 +767,7 @@ static int mxs_nand_ecc_read_page(struct mtd_info *mtd, struct nand_chip *nand,
 		}
 
 		corrected += status[i];
+		max_bitflips = max_t(unsigned int, max_bitflips, status[i]);
 	}
 
 	/* Propagate ECC status to the owning MTD. */
@@ -787,10 +789,11 @@ static int mxs_nand_ecc_read_page(struct mtd_info *mtd, struct nand_chip *nand,
 
 	memcpy(buf, nand_info->data_buf, mtd->writesize);
 
+	ret = 0;
 rtn:
 	mxs_nand_return_dma_descs(nand_info);
 
-	return ret;
+	return ret ? ret : max_bitflips;
 }
 
 /*
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
