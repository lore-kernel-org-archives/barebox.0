Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo3.mail-out.ovh.net ([87.98.178.36]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U6g4i-0001a7-Lo
 for barebox@lists.infradead.org; Sat, 16 Feb 2013 11:37:01 +0000
Received: from mail642.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id BE22FFF8732
 for <barebox@lists.infradead.org>; Sat, 16 Feb 2013 12:51:51 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 16 Feb 2013 12:35:53 +0100
Message-Id: <1361014553-24489-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] devfs: add symlink support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 fs/devfs.c       |   70 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/driver.h |    1 +
 2 files changed, 71 insertions(+)

diff --git a/fs/devfs.c b/fs/devfs.c
index f089c6f..c0047e3 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -216,6 +216,12 @@ static int devfs_stat(struct device_d *_dev, const char *filename, struct stat *
 	if (!cdev)
 		return -ENOENT;
 
+	if (cdev->symlink) {
+		s->st_mode = S_IFLNK | S_IRWXU | S_IRWXG | S_IRWXO;
+		s->st_size = strlen(cdev->symlink);
+		return 0;
+	}
+
 	s->st_mode = S_IFCHR;
 	s->st_size = cdev->size;
 	if (cdev->ops->write)
@@ -235,7 +241,69 @@ static void devfs_delete(struct device_d *dev)
 {
 }
 
+static int devfs_symlink(struct device_d *dev, const char *pathname,
+		       const char *newpath)
+{
+	struct cdev *cdev;
+	int ret = -ENOMEM;
+
+	cdev = kzalloc(sizeof(*cdev), GFP_KERNEL);
+	if (!cdev)
+		return -ENOMEM;
+
+	cdev->symlink = strdup(pathname);
+	if (!cdev->symlink)
+		goto err;
+
+	cdev->name = strdup(newpath + 1);
+	if (!cdev->name)
+		goto err_cdev;
+
+	ret = devfs_create(cdev);
+	if (ret)
+		goto err_create;
+
+	return 0;
+
+err_create:
+	kfree(cdev->name);
+err_cdev:
+	kfree(cdev->symlink);
+err:
+	kfree(cdev);
+	return ret;
+}
+
+static int devfs_readlink(struct device_d *dev, const char *pathname,
+			char *buf, size_t bufsiz)
+{
+	struct cdev *cdev;
+	int len;
+
+	cdev = cdev_by_name(pathname + 1);
+	if (!cdev || !cdev->symlink)
+		return -ENOENT;
+
+	len = min(bufsiz, strlen(cdev->symlink));
+
+	memcpy(buf, cdev->symlink, len);
+
+	return 0;
+}
+
+static int devfs_unlink(struct device_d *dev, const char *pathname)
+{
+	struct cdev *cdev;
+
+	cdev = cdev_by_name(pathname + 1);
+	if (!cdev || !cdev->symlink)
+		return -EPERM;
+
+	return devfs_remove(cdev);
+}
+
 static struct fs_driver_d devfs_driver = {
+	.unlink    = devfs_unlink,
 	.read      = devfs_read,
 	.write     = devfs_write,
 	.lseek     = devfs_lseek,
@@ -248,6 +316,8 @@ static struct fs_driver_d devfs_driver = {
 	.truncate  = devfs_truncate,
 	.closedir  = devfs_closedir,
 	.stat      = devfs_stat,
+	.symlink   = devfs_symlink,
+	.readlink  = devfs_readlink,
 	.erase     = devfs_erase,
 	.protect   = devfs_protect,
 	.memmap    = devfs_memmap,
diff --git a/include/driver.h b/include/driver.h
index 151829e..1b0e619 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -432,6 +432,7 @@ struct cdev {
 	loff_t size;
 	unsigned int flags;
 	int open;
+	char *symlink;
 	struct mtd_info *mtd;
 };
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
