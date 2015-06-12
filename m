Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z3IZZ-0006uH-Ii
 for barebox@lists.infradead.org; Fri, 12 Jun 2015 06:36:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Jun 2015 08:35:45 +0200
Message-Id: <1434090946-6574-10-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/10] imx-bbu-nand-fcb: Erase whole partition
To: Barebox List <barebox@lists.infradead.org>

Now that we use a partition for the bootloader instead of
the whole NAND device we can erase it completely instead of
hardcoded 2MB.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/imx-bbu-nand-fcb.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index d65b9cd..c4f49b5 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -275,11 +275,10 @@ static int fcb_create(struct imx_nand_fcb_bbu_handler *imx_handler,
 static int imx_bbu_erase(struct mtd_info *mtd)
 {
 	uint64_t offset = 0;
-	int len = SZ_2M;
 	struct erase_info erase;
 	int ret;
 
-	while (len > 0) {
+	while (offset < mtd->size) {
 		pr_debug("erasing at 0x%08llx\n", offset);
 		if (mtd_block_isbad(mtd, offset)) {
 			pr_debug("erase skip block @ 0x%08llx\n", offset);
@@ -296,7 +295,6 @@ static int imx_bbu_erase(struct mtd_info *mtd)
 			return ret;
 
 		offset += mtd->erasesize;
-		len -= mtd->erasesize;
 	}
 
 	return 0;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
