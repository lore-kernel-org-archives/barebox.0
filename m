Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wf1CA-0005YR-5K
 for barebox@lists.infradead.org; Tue, 29 Apr 2014 06:07:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 29 Apr 2014 08:06:46 +0200
Message-Id: <1398751606-10167-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] mtd: nand-bb: use list_for_each_entry_safe
To: barebox@lists.infradead.org

We need list_for_each_entry_safe in dev_remove_bb_dev since the
list entries are removed during iteration over the list.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reported-by: Alexander Aring <alex.aring@gmail.com>
---
 drivers/mtd/nand/nand-bb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/nand-bb.c b/drivers/mtd/nand/nand-bb.c
index f387ef6..89d5945 100644
--- a/drivers/mtd/nand/nand-bb.c
+++ b/drivers/mtd/nand/nand-bb.c
@@ -308,9 +308,9 @@ out1:
 
 int dev_remove_bb_dev(const char *name)
 {
-	struct nand_bb *bb;
+	struct nand_bb *bb, *tmp;
 
-	list_for_each_entry(bb, &bb_list, list) {
+	list_for_each_entry_safe(bb, tmp, &bb_list, list) {
 		if (!strcmp(bb->cdev.name, name)) {
 			devfs_remove(&bb->cdev);
 			cdev_close(bb->cdev_parent);
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
