Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMb31-0002xv-N8
 for barebox@lists.infradead.org; Mon, 21 Oct 2019 17:00:48 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 21 Oct 2019 19:00:43 +0200
Message-Id: <20191021170044.21036-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] partition: include partuuid string in debug string
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

When debugging partitions detected by barebox, knowing the partuuid
can be useful. Include it in the dev_dbg output.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/partitions.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/partitions.c b/common/partitions.c
index 574b31fbbe9b..4162e86804db 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -54,8 +54,8 @@ static int register_one_partition(struct block_device *blk,
 	partition_name = basprintf("%s.%d", blk->cdev.name, no);
 	if (!partition_name)
 		return -ENOMEM;
-	dev_dbg(blk->dev, "Registering partition %s on drive %s\n",
-				partition_name, blk->cdev.name);
+	dev_dbg(blk->dev, "Registering partition %s on drive %s (partuuid=%s)\n",
+				partition_name, blk->cdev.name, part->partuuid);
 	cdev = devfs_add_partition(blk->cdev.name,
 				start, size, 0, partition_name);
 	if (IS_ERR(cdev)) {
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
