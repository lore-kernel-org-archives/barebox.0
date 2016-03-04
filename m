Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1abkFy-0005W2-S6
 for barebox@lists.infradead.org; Fri, 04 Mar 2016 07:34:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  4 Mar 2016 08:34:11 +0100
Message-Id: <1457076852-16471-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] imx-bbu-nand-fcb: optimize check for bad block loop
To: Barebox List <barebox@lists.infradead.org>

The argument passed to dbbt_data_create() contains the number of blocks,
not the last block. This means we can exit the loop with '<' instead of
'<='

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/imx-bbu-nand-fcb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 22031f5..6e33ee1 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -337,14 +337,14 @@ static int imx_bbu_write_firmware(struct mtd_info *mtd, unsigned block,
 	return block;
 }
 
-static int dbbt_data_create(struct mtd_info *mtd, void *buf, int block_last)
+static int dbbt_data_create(struct mtd_info *mtd, void *buf, int num_blocks)
 {
 	int n;
 	int n_bad_blocks = 0;
 	uint32_t *bb = buf + 0x8;
 	uint32_t *n_bad_blocksp = buf + 0x4;
 
-	for (n = 0; n <= block_last; n++) {
+	for (n = 0; n < num_blocks; n++) {
 		loff_t offset = n * mtd->erasesize;
 		if (mtd_block_isbad(mtd, offset)) {
 			n_bad_blocks++;
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
