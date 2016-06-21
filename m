Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bFMo3-0000qv-73
 for barebox@lists.infradead.org; Tue, 21 Jun 2016 14:37:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 21 Jun 2016 16:37:12 +0200
Message-Id: <1466519832-16659-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] mtd: nand: gpmi: Fix ecc strength calculation
To: Barebox List <barebox@lists.infradead.org>

BCH ECC correction works in chunks of 512 bytes, so a 2k page size nand
is divided into 4 chunks. Hardware requires that each chunk has a full
number of bytes, so when we need 9 bits per chunk we must round up to
two bytes. The current code misses that and calculates a ECC strength
of 18 for a 2048+128 byte page size NAND. ECC strength of 18 requires
30 bytes per chunk, so a total of 4 * (512 + 30) + 10 = 2178 bytes when
the device only has a page size of 2176 bytes.

Fix this by first calculating the number of bytes per chunk we have
available for ECC which also makes it easier to follow the calculation.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_mxs.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index a9c6e96..2862900 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -238,9 +238,15 @@ uint32_t mxs_nand_get_ecc_strength(uint32_t page_data_size,
 	int ecc_chunk_count = mxs_nand_ecc_chunk_cnt(page_data_size);
 	int ecc_strength = 0;
 	int gf_len = 13;  /* length of Galois Field for non-DDR nand */
+	int n;
 
-	ecc_strength = ((page_oob_size - MXS_NAND_METADATA_SIZE) * 8)
-		/ (gf_len * ecc_chunk_count);
+	/* number of ecc bytes we have per chunk */
+	n = (page_oob_size - MXS_NAND_METADATA_SIZE) / ecc_chunk_count;
+
+	/* in bits */
+	n <<= 3;
+
+	ecc_strength = n / gf_len;
 
 	/* We need the minor even number. */
 	return rounddown(ecc_strength, 2);
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
