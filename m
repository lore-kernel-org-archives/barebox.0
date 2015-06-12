Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z3IZc-0006vW-Ir
 for barebox@lists.infradead.org; Fri, 12 Jun 2015 06:36:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Jun 2015 08:35:41 +0200
Message-Id: <1434090946-6574-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1434090946-6574-1-git-send-email-s.hauer@pengutronix.de>
References: <1434090946-6574-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/10] imx-bbu-nand-fcb: Fix debug messages
To: Barebox List <barebox@lists.infradead.org>

We should print the block number before increasing it, not afterwards.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/imx-bbu-nand-fcb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index d2bfedb..5b984d4 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -275,8 +275,8 @@ static int imx6_bbu_erase(struct mtd_info *mtd)
 	while (len > 0) {
 		pr_debug("erasing at 0x%08llx\n", offset);
 		if (mtd_block_isbad(mtd, offset)) {
-			offset += mtd->erasesize;
 			pr_debug("erase skip block @ 0x%08llx\n", offset);
+			offset += mtd->erasesize;
 			continue;
 		}
 
@@ -308,9 +308,9 @@ static int imx6_bbu_write_firmware(struct mtd_info *mtd, int block, void *buf, s
 				buf, offset, len);
 
 		if (mtd_block_isbad(mtd, offset)) {
+			pr_debug("write skip block @ 0x%08llx\n", offset);
 			offset += mtd->erasesize;
 			block++;
-			pr_debug("write skip block @ 0x%08llx\n", offset);
 			continue;
 		}
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
