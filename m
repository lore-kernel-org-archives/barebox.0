Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZIGNO-0000u4-Pa
 for barebox@lists.infradead.org; Thu, 23 Jul 2015 13:17:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 23 Jul 2015 15:17:07 +0200
Message-Id: <1437657427-13585-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] mtd: of: put master offset into partition name
To: Barebox List <barebox@lists.infradead.org>

Partition names should be partition@<offset> with <offset> being the
offset in the master mtd, and not a counting number.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 3bdf441..d873369 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -491,7 +491,7 @@ static int of_mtd_fixup(struct device_node *root, void *ctx)
 {
 	struct mtd_info *mtd = ctx, *partmtd;
 	struct device_node *np, *part, *tmp;
-	int ret, i = 0;
+	int ret;
 
 	np = of_find_node_by_path_from(root, mtd->of_path);
 	if (!np) {
@@ -508,7 +508,7 @@ static int of_mtd_fixup(struct device_node *root, void *ctx)
 
 	list_for_each_entry(partmtd, &mtd->partitions, partitions_entry) {
 		int na, ns, len = 0;
-		char *name = asprintf("partition@%d", i++);
+		char *name = asprintf("partition@%0llx", partmtd->master_offset);
 		void *p;
 		u8 tmp[16 * 16]; /* Up to 64-bit address + 64-bit size */
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
