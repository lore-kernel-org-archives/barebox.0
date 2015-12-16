Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a98gY-0003vj-Cu
 for barebox@lists.infradead.org; Wed, 16 Dec 2015 09:47:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 16 Dec 2015 10:47:21 +0100
Message-Id: <1450259242-13801-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1450259242-13801-1-git-send-email-s.hauer@pengutronix.de>
References: <1450259242-13801-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] devfs: Add symlink support
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/devinfo.c |  7 +++--
 fs/devfs-core.c    | 76 ++++++++++++++++++++++++++++++++++++++++++++----------
 fs/devfs.c         | 27 ++++++++++++++++++-
 include/driver.h   |  5 ++++
 4 files changed, 99 insertions(+), 16 deletions(-)

diff --git a/commands/devinfo.c b/commands/devinfo.c
index 3c9d6a6..c78efcb 100644
--- a/commands/devinfo.c
+++ b/commands/devinfo.c
@@ -21,7 +21,7 @@
 static int do_devinfo_subtree(struct device_d *dev, int depth)
 {
 	struct device_d *child;
-	struct cdev *cdev;
+	struct cdev *cdev, *cdevl;
 	int i;
 
 	for (i = 0; i < depth; i++)
@@ -33,11 +33,14 @@ static int do_devinfo_subtree(struct device_d *dev, int depth)
 		list_for_each_entry(cdev, &dev->cdevs, devices_list) {
 			for (i = 0; i < depth + 1; i++)
 				printf("   ");
-			printf("`-- 0x%08llx-0x%08llx (%10s): /dev/%s\n",
+			printf("`-- 0x%08llx-0x%08llx (%10s): /dev/%s",
 					cdev->offset,
 					cdev->offset + cdev->size - 1,
 					size_human_readable(cdev->size),
 					cdev->name);
+			list_for_each_entry(cdevl, &cdev->links, link_entry)
+				printf(", %s", cdevl->name);
+			printf("\n");
 		}
 	} else {
 		printf("\n");
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 2541ea3..640a134 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -46,7 +46,18 @@ int devfs_partition_complete(struct string_list *sl, char *instr)
 }
 #endif
 
-struct cdev *cdev_by_name(const char *filename)
+struct cdev *cdev_readlink(struct cdev *cdev)
+{
+	if (cdev->link)
+		cdev = cdev->link;
+
+	/* links to links are not allowed */
+	BUG_ON(cdev->link);
+
+	return cdev;
+}
+
+struct cdev *lcdev_by_name(const char *filename)
 {
 	struct cdev *cdev;
 
@@ -57,6 +68,17 @@ struct cdev *cdev_by_name(const char *filename)
 	return NULL;
 }
 
+struct cdev *cdev_by_name(const char *filename)
+{
+	struct cdev *cdev;
+
+	cdev = lcdev_by_name(filename);
+	if (!cdev)
+		return NULL;
+
+	return cdev_readlink(cdev);
+}
+
 struct cdev *cdev_by_device_node(struct device_node *node)
 {
 	struct cdev *cdev;
@@ -65,7 +87,7 @@ struct cdev *cdev_by_device_node(struct device_node *node)
 		if (!cdev->device_node)
 			continue;
 		if (cdev->device_node == node)
-			return cdev;
+			return cdev_readlink(cdev);
 	}
 	return NULL;
 }
@@ -111,14 +133,6 @@ int cdev_find_free_index(const char *basename)
 	return -EBUSY;	/* all indexes are used */
 }
 
-int cdev_do_open(struct cdev *cdev, unsigned long flags)
-{
-	if (cdev->ops->open)
-		return cdev->ops->open(cdev, flags);
-
-	return 0;
-}
-
 struct cdev *cdev_open(const char *name, unsigned long flags)
 {
 	struct cdev *cdev;
@@ -131,9 +145,11 @@ struct cdev *cdev_open(const char *name, unsigned long flags)
 	if (!cdev)
 		return NULL;
 
-	ret = cdev_do_open(cdev, flags);
-	if (ret)
-		return NULL;
+	if (cdev->ops->open) {
+		ret = cdev->ops->open(cdev, flags);
+		if (ret)
+			return NULL;
+	}
 
 	return cdev;
 }
@@ -259,6 +275,8 @@ int devfs_create(struct cdev *new)
 	if (cdev)
 		return -EEXIST;
 
+	INIT_LIST_HEAD(&new->links);
+
 	list_add_tail(&new->list, &cdev_list);
 	if (new->dev)
 		list_add_tail(&new->devices_list, &new->dev->cdevs);
@@ -266,15 +284,47 @@ int devfs_create(struct cdev *new)
 	return 0;
 }
 
+int devfs_create_link(struct cdev *cdev, const char *name)
+{
+	struct cdev *new;
+
+	if (cdev_by_name(name))
+		return -EEXIST;
+
+	/*
+	 * Create a link to the real cdev instead of creating
+	 * a link to a link.
+	 */
+	cdev = cdev_readlink(cdev);
+
+	new = xzalloc(sizeof(*new));
+	new->name = xstrdup(name);
+	new->link = cdev;
+	INIT_LIST_HEAD(&new->links);
+	list_add_tail(&new->list, &cdev_list);
+	list_add_tail(&new->link_entry, &cdev->links);
+
+	return 0;
+}
+
 int devfs_remove(struct cdev *cdev)
 {
+	struct cdev *c, *tmp;
+
 	if (cdev->open)
 		return -EBUSY;
 
 	list_del(&cdev->list);
+
 	if (cdev->dev)
 		list_del(&cdev->devices_list);
 
+	list_for_each_entry_safe(c, tmp, &cdev->links, link_entry)
+		devfs_remove(c);
+
+	if (cdev->link)
+		free(cdev);
+
 	return 0;
 }
 
diff --git a/fs/devfs.c b/fs/devfs.c
index 5c96682..0b8d4fd 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -212,12 +212,18 @@ static int devfs_stat(struct device_d *_dev, const char *filename, struct stat *
 {
 	struct cdev *cdev;
 
-	cdev = cdev_by_name(filename + 1);
+	cdev = lcdev_by_name(filename + 1);
 	if (!cdev)
 		return -ENOENT;
 
 	s->st_mode = S_IFCHR;
 	s->st_size = cdev->size;
+
+	if (cdev->link)
+		s->st_mode |= S_IFLNK;
+
+	cdev = cdev_readlink(cdev);
+
 	if (cdev->ops->write)
 		s->st_mode |= S_IWUSR;
 	if (cdev->ops->read)
@@ -242,6 +248,24 @@ static void devfs_delete(struct device_d *dev)
 {
 }
 
+static int devfs_readlink(struct device_d *dev, const char *pathname,
+			  char *buf, size_t bufsz)
+{
+	struct cdev *cdev;
+
+	cdev = cdev_by_name(pathname + 1);
+	if (!cdev)
+		return -ENOENT;
+
+	while (cdev->link)
+		cdev = cdev->link;
+
+	bufsz = min(bufsz, strlen(cdev->name));
+	memcpy(buf, cdev->name, bufsz);
+
+	return 0;
+}
+
 static struct fs_driver_d devfs_driver = {
 	.read      = devfs_read,
 	.write     = devfs_write,
@@ -258,6 +282,7 @@ static struct fs_driver_d devfs_driver = {
 	.erase     = devfs_erase,
 	.protect   = devfs_protect,
 	.memmap    = devfs_memmap,
+	.readlink  = devfs_readlink,
 	.flags     = FS_DRIVER_NO_DEV,
 	.drv = {
 		.probe  = devfs_probe,
diff --git a/include/driver.h b/include/driver.h
index 046dd90..31c6734 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -450,13 +450,18 @@ struct cdev {
 	int open;
 	struct mtd_info *mtd;
 	u8 dos_partition_type;
+	struct cdev *link;
+	struct list_head link_entry, links;
 };
 
 int devfs_create(struct cdev *);
+int devfs_create_link(struct cdev *, const char *name);
 int devfs_remove(struct cdev *);
 int cdev_find_free_index(const char *);
 struct cdev *device_find_partition(struct device_d *dev, const char *name);
 struct cdev *cdev_by_name(const char *filename);
+struct cdev *lcdev_by_name(const char *filename);
+struct cdev *cdev_readlink(struct cdev *cdev);
 struct cdev *cdev_by_device_node(struct device_node *node);
 struct cdev *cdev_open(const char *name, unsigned long flags);
 int cdev_do_open(struct cdev *, unsigned long flags);
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
