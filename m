Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YLpY7-0003lw-4B
 for barebox@lists.infradead.org; Thu, 12 Feb 2015 08:55:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Feb 2015 09:54:29 +0100
Message-Id: <1423731274-9860-13-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1423731274-9860-1-git-send-email-s.hauer@pengutronix.de>
References: <1423731274-9860-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/17] mtd: forbid conflicting mtd partitions
To: Barebox List <barebox@lists.infradead.org>

mtd partitions should not conflict with each other, so forbid this.
Also add the partitions to the partitions list sorted, so that they
can be easier translated into a cmdline partition string.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c | 33 ++++++++++++++++++++++++++++++---
 1 file changed, 30 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 813edc5..99d50f1 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -377,6 +377,18 @@ static struct file_operations mtd_ops = {
 	.lseek  = dev_lseek_default,
 };
 
+static int mtd_part_compare(struct list_head *a, struct list_head *b)
+{
+	struct mtd_info *mtda = container_of(a, struct mtd_info, partitions_entry);
+	struct mtd_info *mtdb = container_of(b, struct mtd_info, partitions_entry);
+
+	if (mtda->master_offset > mtdb->master_offset)
+		return 1;
+	if (mtda->master_offset < mtdb->master_offset)
+		return -1;
+	return 0;
+}
+
 int add_mtd_device(struct mtd_info *mtd, char *devname, int device_id)
 {
 	struct mtddev_hook *hook;
@@ -417,20 +429,35 @@ int add_mtd_device(struct mtd_info *mtd, char *devname, int device_id)
 	if (ret)
 		goto err;
 
+	if (mtd->master && !(mtd->cdev.flags & DEVFS_PARTITION_FIXED)) {
+		struct mtd_info *mtdpart;
+
+		list_for_each_entry(mtdpart, &mtd->master->partitions, partitions_entry) {
+			if (mtdpart->master_offset + mtdpart->size <= mtd->master_offset)
+				continue;
+			if (mtd->master_offset + mtd->size <= mtdpart->master_offset)
+				continue;
+			dev_err(&mtd->class_dev, "New partition %s conflicts with %s\n",
+					mtd->name, mtdpart->name);
+			goto err1;
+		}
+
+		list_add_sort(&mtd->partitions_entry, &mtd->master->partitions, mtd_part_compare);
+	}
+
 	if (mtd_can_have_bb(mtd))
 		mtd->cdev_bb = mtd_add_bb(mtd, NULL);
 
 	if (mtd->parent && !mtd->master)
 		of_parse_partitions(&mtd->cdev, mtd->parent->device_node);
 
-	if (mtd->master)
-		list_add_tail(&mtd->partitions_entry, &mtd->master->partitions);
-
 	list_for_each_entry(hook, &mtd_register_hooks, hook)
 		if (hook->add_mtd_device)
 			hook->add_mtd_device(mtd, devname, &hook->priv);
 
 	return 0;
+err1:
+	devfs_remove(&mtd->cdev);
 err:
 	free(mtd->cdev.name);
 	unregister_device(&mtd->class_dev);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
