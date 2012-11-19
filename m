Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.microcatalog.org.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TaRIk-0003LT-Ca
 for barebox@lists.infradead.org; Mon, 19 Nov 2012 13:22:17 +0000
From: Juergen Kilb <J.Kilb@phytec.de>
Date: Mon, 19 Nov 2012 14:22:05 +0100
Message-Id: <1353331325-6778-1-git-send-email-J.Kilb@phytec.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] nand-bb: Fix remove of nand-bb device.
To: barebox@lists.infradead.org

Fixed possible crashs if nand-bb device is removed
and the list entry was not deleted from the list.

Signed-off-by: Juergen Kilb <J.Kilb@phytec.de>
---
 drivers/mtd/nand/nand-bb.c |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/drivers/mtd/nand/nand-bb.c b/drivers/mtd/nand/nand-bb.c
index cdb4663..0292f2f 100644
--- a/drivers/mtd/nand/nand-bb.c
+++ b/drivers/mtd/nand/nand-bb.c
@@ -314,6 +314,7 @@ int dev_remove_bb_dev(const char *name)
 		if (!strcmp(bb->cdev.name, name)) {
 			devfs_remove(&bb->cdev);
 			cdev_close(bb->cdev_parent);
+			list_del_init(&bb->list);
 			free(bb);
 			return 0;
 		}
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
