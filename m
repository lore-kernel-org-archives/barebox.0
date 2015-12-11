Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a7L84-0004El-20
 for barebox@lists.infradead.org; Fri, 11 Dec 2015 10:40:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 11 Dec 2015 11:40:35 +0100
Message-Id: <1449830435-6964-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1449830435-6964-1-git-send-email-s.hauer@pengutronix.de>
References: <1449830435-6964-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] partition: Create links with partition names
To: Barebox List <barebox@lists.infradead.org>

When a partition has a name create a link to the original partition
rather than registering a second cdev.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/partitions.c | 20 +++++++-------------
 1 file changed, 7 insertions(+), 13 deletions(-)

diff --git a/common/partitions.c b/common/partitions.c
index 4f50bfe..82ec508 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -71,20 +71,14 @@ static int register_one_partition(struct block_device *blk,
 	if (!part->name[0])
 		return 0;
 
-	partition_name = asprintf("%s.%s", blk->cdev.name, part->name);
-	if (!partition_name)
-		return -ENOMEM;
-
-	dev_dbg(blk->dev, "Registering partition %s on drive %s\n",
-				partition_name, blk->cdev.name);
-	cdev = devfs_add_partition(blk->cdev.name,
-				start, size, 0, partition_name);
-
-	if (IS_ERR(cdev))
-		dev_warn(blk->dev, "Registering partition %s on drive %s failed\n",
-				partition_name, blk->cdev.name);
+	partition_name = xasprintf("%s.%s", blk->cdev.name, part->name);
+	ret = devfs_create_link(cdev, partition_name);
+	if (ret)
+		dev_warn(blk->dev, "Failed to create link from %s to %s\n",
+			 partition_name, blk->cdev.name);
+	free(partition_name);
 
-	ret = 0;
+	return 0;
 out:
 	free(partition_name);
 	return ret;
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
