Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1afn0o-0005U0-9c
 for barebox@lists.infradead.org; Tue, 15 Mar 2016 11:19:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Mar 2016 12:19:11 +0100
Message-Id: <1458040754-32240-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1458040754-32240-1-git-send-email-s.hauer@pengutronix.de>
References: <1458040754-32240-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/11] imx-bbu-nand-fcb: When writing firmware return new bad
 blocks
To: Barebox List <barebox@lists.infradead.org>

Positive return values of imx_bbu_write_firmware() so far indicate
the last block that has been written to. This value is unused, so
return values > 0 to indicate if there are new bad blocks. This
information can be used in the next step to know if the DBBT has
to be rewritten.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/imx-bbu-nand-fcb.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 0c7f75c..3e1f35f 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -400,7 +400,7 @@ static int imx_bbu_firmware_start_block(struct mtd_info *mtd, int num)
 static int imx_bbu_write_firmware(struct mtd_info *mtd, unsigned num, void *buf,
 				  size_t len)
 {
-	int ret, i;
+	int ret, i, newbadblock = 0;
 	int num_blocks = imx_bbu_firmware_max_blocks(mtd);
 	int block = imx_bbu_firmware_start_block(mtd, num);
 
@@ -437,6 +437,7 @@ static int imx_bbu_write_firmware(struct mtd_info *mtd, unsigned num, void *buf,
 		if (ret == -EIO) {
 			block++;
 			num_blocks--;
+			newbadblock = 1;
 			continue;
 		}
 
@@ -449,7 +450,7 @@ static int imx_bbu_write_firmware(struct mtd_info *mtd, unsigned num, void *buf,
 		num_blocks--;
 	}
 
-	return block;
+	return newbadblock;
 }
 
 static void *dbbt_data_create(struct mtd_info *mtd)
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
