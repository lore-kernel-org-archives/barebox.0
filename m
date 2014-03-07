Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from s250.sam-solutions.net ([217.21.49.219])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WLsuJ-0005oC-Ld
 for barebox@lists.infradead.org; Fri, 07 Mar 2014 11:25:40 +0000
Received: from s246.sam-solutions.net ([217.21.35.55])
 by s250.sam-solutions.net with esmtps (TLSv1:RC4-MD5:128) (Exim 4.77)
 (envelope-from <D.Lavnikevich@sam-solutions.com>) id 1WLsu3-0004VL-Fv
 for barebox@lists.infradead.org; Fri, 07 Mar 2014 14:25:23 +0300
Message-ID: <5319AA4A.2020704@sam-solutions.net>
Date: Fri, 7 Mar 2014 14:15:22 +0300
From: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.net>
MIME-Version: 1.0
References: <1394190783-12978-1-git-send-email-d.lavnikevich@sam-solutions.com>
In-Reply-To: <1394190783-12978-1-git-send-email-d.lavnikevich@sam-solutions.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/5] nand: mxs: Fix for calculating ecc strength on some types
 of NAND flash
To: barebox@lists.infradead.org
Cc: Grigory Milev <G.Milev@sam-solutions.com>, Dmitry Lavnikevich <D.Lavnikevich@sam-solutions.com>

Was tested on NAND with {writesize=4096, oobsize=224} and
{writesize=2048, oobsize=64}.

This patch will not break any NAND that was working
before. Implemented calculation way may be used for other NAND chips
with writesize == 2048 but oobsize != 64.

Signed-off-by: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>
Signed-off-by: Grigory Milev <g.milev@sam-solutions.com>
---
  drivers/mtd/nand/nand_mxs.c | 21 +++++++++++++++++----
  1 file changed, 17 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 237a423..b06b558 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -234,18 +234,31 @@ static uint32_t mxs_nand_aux_status_offset(void)
  static inline uint32_t mxs_nand_get_ecc_strength(uint32_t page_data_size,
  						uint32_t page_oob_size)
  {
+	int ecc_chunk_count = mxs_nand_ecc_chunk_cnt(page_data_size);
+	int ecc_strength = 0;
+	int gf_len = 13;  /* length of Galois Field for non-DDR nand */
+
+	/*
+	 * Possibly this if-else calculation may be removed since
+	 * ecc_strength calculated after it is taken from kernel driver
+	 * and therefore should work for all cases. But it was tested only
+	 * on devices with {data_size = 2046, oob_size = 64} and
+	 * {data_size = 4096, oob_size = 224} configuration.
+	 */
  	if (page_data_size == 2048)
  		return 8;
-
-	if (page_data_size == 4096) {
+	else if (page_data_size == 4096) {
  		if (page_oob_size == 128)
  			return 8;
-
  		if (page_oob_size == 218)
  			return 16;
  	}
  -	return 0;
+	ecc_strength = ((page_oob_size - MXS_NAND_METADATA_SIZE) * 8)
+		/ (gf_len * ecc_chunk_count);
+
+	/* We need the minor even number. */
+	return rounddown(ecc_strength, 2);
  }
   static inline uint32_t mxs_nand_get_mark_offset(uint32_t page_data_size,
-- 
1.8.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
