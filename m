Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d8Kta-0004Jk-DO
 for barebox@lists.infradead.org; Wed, 10 May 2017 06:14:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 May 2017 08:14:22 +0200
Message-Id: <20170510061422.17036-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] fs: Create automount entries for the default mount pathes
To: Barebox List <barebox@lists.infradead.org>

In barebox the default mount path for a cdev is /mnt/<cdevname>
which can be mounted with "mount <cdevname>" without specifying
a target path explicitly. Simplify this further by creating automount
entries for the default mount pathes which makes a manual mount
completely unnecessary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/block.c   |  2 ++
 fs/devfs-core.c  |  2 ++
 fs/fs.c          | 14 ++++++++++++++
 include/driver.h |  8 ++++++++
 4 files changed, 26 insertions(+)

diff --git a/common/block.c b/common/block.c
index 0edc8619ef..e2ba9d4296 100644
--- a/common/block.c
+++ b/common/block.c
@@ -374,6 +374,8 @@ int blockdevice_register(struct block_device *blk)
 
 	list_add_tail(&blk->list, &block_device_list);
 
+	cdev_create_default_automount(&blk->cdev);
+
 	return 0;
 }
 
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 382606f1cf..26fffbb6c2 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -332,6 +332,8 @@ static struct cdev *__devfs_add_partition(struct cdev *cdev,
 
 	devfs_create(new);
 
+	cdev_create_default_automount(new);
+
 	return new;
 }
 
diff --git a/fs/fs.c b/fs/fs.c
index 1901c94ad1..9a5887f580 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -328,6 +328,20 @@ int automount_add(const char *path, const char *cmd)
 }
 EXPORT_SYMBOL(automount_add);
 
+void cdev_create_default_automount(struct cdev *cdev)
+{
+	char *path, *cmd;
+
+	path = basprintf("/mnt/%s", cdev->name);
+	cmd = basprintf("mount %s", cdev->name);
+
+	make_directory(path);
+	automount_add(path, cmd);
+
+	free(cmd);
+	free(path);
+}
+
 void automount_print(void)
 {
 	struct automount *am;
diff --git a/include/driver.h b/include/driver.h
index 52e06f7d62..b743ed8b77 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -490,6 +490,14 @@ struct cdev *devfs_add_partition(const char *devname, loff_t offset,
 		loff_t size, unsigned int flags, const char *name);
 int devfs_del_partition(const char *name);
 
+#ifdef CONFIG_FS_AUTOMOUNT
+void cdev_create_default_automount(struct cdev *cdev);
+#else
+static inline void cdev_create_default_automount(struct cdev *cdev)
+{
+}
+#endif
+
 #define DEVFS_PARTITION_APPEND		0
 
 /**
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
