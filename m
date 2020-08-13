Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k6DVV-0003mP-Kf
 for barebox@lists.infradead.org; Thu, 13 Aug 2020 13:43:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Aug 2020 15:42:56 +0200
Message-Id: <20200813134257.24627-20-s.hauer@pengutronix.de>
In-Reply-To: <20200813134257.24627-1-s.hauer@pengutronix.de>
References: <20200813134257.24627-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 19/20] fs: Warn when filesystem operations are called from a
 poller
To: Barebox List <barebox@lists.infradead.org>
Cc: Edmund Henniges <eh@emlix.com>, =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

Filesystem operations possibly call into arbitrary devices, so shouldn't
be used from a poller. This patch sprinkles some WARN_ONCE() when this
happens. One exception is when the file which is accessed is on ramfs
which doesn't have any dependencies to devices.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/poller.c |  2 +-
 fs/fs.c         | 34 ++++++++++++++++++++++++++++++++++
 include/slice.h |  6 ++++++
 3 files changed, 41 insertions(+), 1 deletion(-)

diff --git a/common/poller.c b/common/poller.c
index 7b1b92714c..50c518697b 100644
--- a/common/poller.c
+++ b/common/poller.c
@@ -16,7 +16,7 @@
 #include <slice.h>
 
 static LIST_HEAD(poller_list);
-static int poller_active;
+int poller_active;
 
 int poller_register(struct poller_struct *poller, const char *name)
 {
diff --git a/fs/fs.c b/fs/fs.c
index e04cadfe5d..17f4aee80f 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -31,6 +31,7 @@
 #include <environment.h>
 #include <libgen.h>
 #include <block.h>
+#include <slice.h>
 #include <libfile.h>
 #include <parseopt.h>
 #include <linux/namei.h>
@@ -74,6 +75,8 @@ static FILE *files;
 static struct dentry *d_root;
 static struct vfsmount *mnt_root;
 
+static struct fs_driver_d *ramfs_driver;
+
 static int init_fs(void)
 {
 	cwd = xzalloc(PATH_MAX);
@@ -257,6 +260,9 @@ static ssize_t __read(FILE *f, void *buf, size_t count)
 
 	fsdrv = f->fsdev->driver;
 
+	if (fsdrv != ramfs_driver)
+		assert_command_context();
+
 	if (f->size != FILE_SIZE_STREAM && f->pos + count > f->size)
 		count = f->size - f->pos;
 
@@ -315,6 +321,10 @@ static ssize_t __write(FILE *f, const void *buf, size_t count)
 	}
 
 	fsdrv = f->fsdev->driver;
+
+	if (fsdrv != ramfs_driver)
+		assert_command_context();
+
 	if (f->size != FILE_SIZE_STREAM && f->pos + count > f->size) {
 		ret = fsdrv->truncate(&f->fsdev->dev, f, f->pos + count);
 		if (ret) {
@@ -402,6 +412,9 @@ loff_t lseek(int fd, loff_t offset, int whence)
 
 	fsdrv = f->fsdev->driver;
 
+	if (fsdrv != ramfs_driver)
+		assert_command_context();
+
 	ret = -EINVAL;
 
 	switch (whence) {
@@ -457,6 +470,10 @@ int erase(int fd, loff_t count, loff_t offset)
 		return -EINVAL;
 
 	fsdrv = f->fsdev->driver;
+
+	if (fsdrv != ramfs_driver)
+		assert_command_context();
+
 	if (fsdrv->erase)
 		ret = fsdrv->erase(&f->fsdev->dev, f, count, offset);
 	else
@@ -483,6 +500,10 @@ int protect(int fd, size_t count, loff_t offset, int prot)
 		count = f->size - offset;
 
 	fsdrv = f->fsdev->driver;
+
+	if (fsdrv != ramfs_driver)
+		assert_command_context();
+
 	if (fsdrv->protect)
 		ret = fsdrv->protect(&f->fsdev->dev, f, count, offset, prot);
 	else
@@ -509,6 +530,10 @@ int discard_range(int fd, loff_t count, loff_t offset)
 		count = f->size - offset;
 
 	fsdrv = f->fsdev->driver;
+
+	if (fsdrv != ramfs_driver)
+		assert_command_context();
+
 	if (fsdrv->discard_range)
 		ret = fsdrv->discard_range(&f->fsdev->dev, f, count, offset);
 	else
@@ -547,6 +572,9 @@ void *memmap(int fd, int flags)
 
 	fsdrv = f->fsdev->driver;
 
+	if (fsdrv != ramfs_driver)
+		assert_command_context();
+
 	if (fsdrv->memmap)
 		ret = fsdrv->memmap(&f->fsdev->dev, f, &retp, flags);
 	else
@@ -570,6 +598,9 @@ int close(int fd)
 
 	fsdrv = f->fsdev->driver;
 
+	if (fsdrv != ramfs_driver)
+		assert_command_context();
+
 	if (fsdrv->close)
 		ret = fsdrv->close(&f->fsdev->dev, f);
 
@@ -700,6 +731,9 @@ int register_fs_driver(struct fs_driver_d *fsdrv)
 	fsdrv->drv.bus = &fs_bus;
 	register_driver(&fsdrv->drv);
 
+	if (!strcmp(fsdrv->drv.name, "ramfs"))
+		ramfs_driver = fsdrv;
+
 	return 0;
 }
 EXPORT_SYMBOL(register_fs_driver);
diff --git a/include/slice.h b/include/slice.h
index fd753e194b..5438aeef90 100644
--- a/include/slice.h
+++ b/include/slice.h
@@ -33,4 +33,10 @@ extern struct slice command_slice;
 void command_slice_acquire(void);
 void command_slice_release(void);
 
+extern int poller_active;
+
+#define assert_command_context() ({    \
+	WARN_ONCE(poller_active, "%s called in poller\n", __func__); \
+})
+
 #endif /* __SLICE_H */
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
