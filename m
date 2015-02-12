Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YLpY2-0003ll-7c
 for barebox@lists.infradead.org; Thu, 12 Feb 2015 08:55:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Feb 2015 09:54:22 +0100
Message-Id: <1423731274-9860-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/17] mtd: Add partitions to list
To: Barebox List <barebox@lists.infradead.org>

So that we can iterate over the existing partitions from the master
mtd device.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c      | 8 ++++++++
 include/linux/mtd/mtd.h | 3 +++
 2 files changed, 11 insertions(+)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 21d04a1..f5c03db 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -400,6 +400,8 @@ int add_mtd_device(struct mtd_info *mtd, char *devname, int device_id)
 	else
 		mtd->cdev.name = asprintf("%s%d", devname, mtd->class_dev.id);
 
+	INIT_LIST_HEAD(&mtd->partitions);
+
 	mtd->cdev.priv = mtd;
 	mtd->cdev.dev = &mtd->class_dev;
 	mtd->cdev.mtd = mtd;
@@ -421,6 +423,9 @@ int add_mtd_device(struct mtd_info *mtd, char *devname, int device_id)
 	if (mtd->parent && !mtd->master)
 		of_parse_partitions(&mtd->cdev, mtd->parent->device_node);
 
+	if (mtd->master)
+		list_add_tail(&mtd->partitions_entry, &mtd->master->partitions);
+
 	list_for_each_entry(hook, &mtd_register_hooks, hook)
 		if (hook->add_mtd_device)
 			hook->add_mtd_device(mtd, devname, &hook->priv);
@@ -445,6 +450,9 @@ int del_mtd_device (struct mtd_info *mtd)
 	unregister_device(&mtd->class_dev);
 	free(mtd->param_size.value);
 	free(mtd->cdev.name);
+	if (mtd->master)
+		list_del(&mtd->partitions_entry);
+
 	return 0;
 }
 
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index 1d33592..72bd66b 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -220,6 +220,9 @@ struct mtd_info {
 
 	struct mtd_info *master;
 	loff_t master_offset;
+
+	struct list_head partitions;
+	struct list_head partitions_entry;
 };
 
 int mtd_erase(struct mtd_info *mtd, struct erase_info *instr);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
