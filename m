Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo4.mail-out.ovh.net ([178.33.248.196]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VXCxx-0001Bz-7J
 for barebox@lists.infradead.org; Fri, 18 Oct 2013 16:31:58 +0000
Received: from mail629.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 645E3FF9614
 for <barebox@lists.infradead.org>; Fri, 18 Oct 2013 18:32:04 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 18 Oct 2013 18:33:10 +0200
Message-Id: <1382113992-9082-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20131018163147.GZ32444@ns203013.ovh.net>
References: <20131018163147.GZ32444@ns203013.ovh.net>
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
Subject: [PATCH 1/3] devfs: add symlink support
To: barebox@lists.infradead.org

this will allow have symlink for any device such as named partition

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 fs/devfs-core.c  | 45 ++++++++++++++++++++++++++++++++++++++++++++-
 fs/devfs.c       | 42 ++++++++++++++++++++++++++++++++++++++++--
 include/driver.h |  4 ++++
 3 files changed, 88 insertions(+), 3 deletions(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index a92d434..0e1ac9a 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -45,13 +45,56 @@ int devfs_partition_complete(struct string_list *sl, char *instr)
 }
 #endif
 
+struct cdev *devfs_add_symlink_index(const char *filename, struct cdev *src)
+{
+	struct cdev *cdev;
+	int ret;
+
+	if (!filename || !src)
+		return ERR_PTR(-EIO);
+
+	ret = cdev_find_free_index(filename);
+	if (ret == -1)
+		return ERR_PTR(-ENOMEM);
+
+	cdev = xzalloc(sizeof(*cdev));
+	cdev->name = asprintf("%s%d", filename, ret);
+	cdev->symlink = src;
+	ret = devfs_create(cdev);
+	if (ret)
+		return ERR_PTR(ret);
+
+	return cdev;
+}
+
+struct cdev *devfs_add_symlink(const char *filename, struct cdev *src)
+{
+	struct cdev *cdev;
+	int ret;
+
+	if (!filename || !src)
+		return ERR_PTR(-EIO);
+
+	cdev = xzalloc(sizeof(*cdev));
+	cdev->name = xstrdup(filename);
+	cdev->symlink = src;
+	ret = devfs_create(cdev);
+	if (ret)
+		return ERR_PTR(ret);
+
+	return cdev;
+}
+
 struct cdev *cdev_by_name(const char *filename)
 {
 	struct cdev *cdev;
 
 	list_for_each_entry(cdev, &cdev_list, list) {
-		if (!strcmp(cdev->name, filename))
+		if (!strcmp(cdev->name, filename)) {
+			if (cdev->symlink)
+				return cdev->symlink;
 			return cdev;
+		}
 	}
 	return NULL;
 }
diff --git a/fs/devfs.c b/fs/devfs.c
index f089c6f..f4e1e9c 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -35,6 +35,17 @@
 
 extern struct list_head cdev_list;
 
+static struct cdev *devfs_by_name(const char *filename)
+{
+	struct cdev *cdev;
+
+	list_for_each_entry(cdev, &cdev_list, list) {
+		if (!strcmp(cdev->name, filename))
+			return cdev;
+	}
+	return NULL;
+}
+
 static int devfs_read(struct device_d *_dev, FILE *f, void *buf, size_t size)
 {
 	struct cdev *cdev = f->inode;
@@ -113,7 +124,7 @@ static int devfs_open(struct device_d *_dev, FILE *f, const char *filename)
 	struct cdev *cdev;
 	int ret;
 
-	cdev = cdev_by_name(filename + 1);
+	cdev = devfs_by_name(filename + 1);
 
 	if (!cdev)
 		return -ENOENT;
@@ -212,10 +223,15 @@ static int devfs_stat(struct device_d *_dev, const char *filename, struct stat *
 {
 	struct cdev *cdev;
 
-	cdev = cdev_by_name(filename + 1);
+	cdev = devfs_by_name(filename + 1);
 	if (!cdev)
 		return -ENOENT;
 
+	if (cdev->symlink) {
+		s->st_mode = S_IFLNK | S_IRWXU | S_IRWXG | S_IRWXO;
+		return 0;
+	}
+
 	s->st_mode = S_IFCHR;
 	s->st_size = cdev->size;
 	if (cdev->ops->write)
@@ -235,6 +251,27 @@ static void devfs_delete(struct device_d *dev)
 {
 }
 
+static int devfs_readlink(struct device_d *dev, const char *filename,
+			char *buf, size_t bufsiz)
+{
+	struct cdev *cdev;
+	struct cdev *symlink;
+	int len;
+
+	cdev = devfs_by_name(filename + 1);
+
+	if (!cdev || !cdev->symlink)
+		return -ENOENT;
+
+	symlink = cdev->symlink;
+
+	len = min(bufsiz, strlen(symlink->name));
+
+	memcpy(buf, symlink->name, len);
+
+	return 0;
+}
+
 static struct fs_driver_d devfs_driver = {
 	.read      = devfs_read,
 	.write     = devfs_write,
@@ -251,6 +288,7 @@ static struct fs_driver_d devfs_driver = {
 	.erase     = devfs_erase,
 	.protect   = devfs_protect,
 	.memmap    = devfs_memmap,
+	.readlink  = devfs_readlink,
 	.flags     = FS_DRIVER_NO_DEV,
 	.drv = {
 		.probe  = devfs_probe,
diff --git a/include/driver.h b/include/driver.h
index 7f0532e..2d42597 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -457,10 +457,14 @@ struct cdev {
 	int open;
 	struct mtd_info *mtd;
 	u8 dos_partition_type;
+
+	struct cdev *symlink;
 };
 
 int devfs_create(struct cdev *);
 int devfs_remove(struct cdev *);
+struct cdev *devfs_add_symlink(const char *filename, struct cdev *src);
+struct cdev *devfs_add_symlink_index(const char *filename, struct cdev *src);
 int cdev_find_free_index(const char *);
 struct cdev *device_find_partition(struct device_d *dev, const char *name);
 struct cdev *cdev_by_name(const char *filename);
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
