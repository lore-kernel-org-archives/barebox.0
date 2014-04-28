Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wehuy-0005Z6-Jv
 for barebox@lists.infradead.org; Mon, 28 Apr 2014 09:32:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Apr 2014 11:31:43 +0200
Message-Id: <1398677505-15869-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] of: partition: set device_node of the newly created
 partition
To: barebox@lists.infradead.org

So that we can find the devicenode for a partition.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/partition.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index 5ed44a8..0560eb3 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -60,6 +60,8 @@ struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node)
 	filename = asprintf("%s.%s", cdev->name, partname);
 
 	new = devfs_add_partition(cdev->name, offset, size, flags, filename);
+	if (new && new->dev)
+		new->dev->device_node = node;
 
 	if (cdev->mtd && cdev->mtd->type == MTD_NANDFLASH)
 		dev_add_bb_dev(filename, NULL);
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
