Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZWeqe-0007ct-RP
 for barebox@lists.infradead.org; Tue, 01 Sep 2015 06:15:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  1 Sep 2015 08:14:47 +0200
Message-Id: <1441088089-20649-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] cdev: Add function to find cdev by device_node
To: Barebox List <barebox@lists.infradead.org>

This adds a device_node member to struct cdev and a function
to find a cdev by device_node.
This also removes the setting of cdev->dev->device_node in
the of partition parser. We must not set the device since it
may not refer to a partition but to a whole device with partitions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/partition.c |  4 ++--
 fs/devfs-core.c        | 13 +++++++++++++
 include/driver.h       |  2 ++
 3 files changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index 3dce844..6017897 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -64,8 +64,8 @@ struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node)
 	if (IS_ERR(new))
 		new = NULL;
 
-	if (new && new->dev)
-		new->dev->device_node = node;
+	if (new)
+		new->device_node = node;;
 
 	free(filename);
 
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index f45f8ca..62571fb 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -57,6 +57,19 @@ struct cdev *cdev_by_name(const char *filename)
 	return NULL;
 }
 
+struct cdev *cdev_by_device_node(struct device_node *node)
+{
+	struct cdev *cdev;
+
+	list_for_each_entry(cdev, &cdev_list, list) {
+		if (!cdev->device_node)
+			continue;
+		if (cdev->device_node == node)
+			return cdev;
+	}
+	return NULL;
+}
+
 /**
  * device_find_partition - find a partition belonging to a physical device
  *
diff --git a/include/driver.h b/include/driver.h
index 728f8ab..046dd90 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -436,6 +436,7 @@ struct cdev {
 	struct file_operations *ops;
 	void *priv;
 	struct device_d *dev;
+	struct device_node *device_node;
 	struct list_head list;
 	struct list_head devices_list;
 	char *name; /* filename under /dev/ */
@@ -456,6 +457,7 @@ int devfs_remove(struct cdev *);
 int cdev_find_free_index(const char *);
 struct cdev *device_find_partition(struct device_d *dev, const char *name);
 struct cdev *cdev_by_name(const char *filename);
+struct cdev *cdev_by_device_node(struct device_node *node);
 struct cdev *cdev_open(const char *name, unsigned long flags);
 int cdev_do_open(struct cdev *, unsigned long flags);
 void cdev_close(struct cdev *cdev);
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
