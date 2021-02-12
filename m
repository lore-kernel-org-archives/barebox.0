Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lAUqj-0002vB-Dm
 for barebox@lists.infradead.org; Fri, 12 Feb 2021 09:34:54 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1lAUqi-0005lF-AY
 for barebox@lists.infradead.org; Fri, 12 Feb 2021 10:34:52 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1lAUqi-0008Oi-2Q
 for barebox@lists.infradead.org; Fri, 12 Feb 2021 10:34:52 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 12 Feb 2021 10:34:50 +0100
Message-Id: <20210212093450.32227-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2] fs: increase reference count for backing store when loop
 mounting
To: barebox@lists.infradead.org

From: Ahmad Fatoum <ahmad@a3f.at>

The VFS layer already increase the mount reference count for the mount
point. This means e.g. following sequence is well-behaving:

 mkdir -p /mnt/disk0.0/media
 mount -o loop backing.squashfs /mnt/disk0.0/media
 umount /mnt/disk0.0

barebox will do the right thing and report

  umount: Device or resource busy

However the reference count of the file where backing.squashfs comes
from is not incremented on mount with the effect that following sequence
crashes:

 mkdir -p /media
 mount -o loop /mnt/disk0.0/backing.squashfs /media
 umount /mnt/disk0.0 # should've returned EBUSY
 umount /media

Fix this by touching the backing store's mount reference count when
loop mounting and unmounting.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 fs/fs.c | 42 ++++++++++++++++++++++++++++++++++++------
 1 file changed, 36 insertions(+), 6 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 00b8645fb0e9..3db24b7b6822 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -89,7 +89,13 @@ static int init_fs(void)
 
 postcore_initcall(init_fs);
 
+struct filename;
+
 static struct fs_device_d *get_fsdevice_by_path(const char *path);
+static int filename_lookup(int dfd, struct filename *name, unsigned flags,
+			   struct path *path);;
+static struct filename *getname(const char *filename);
+static void path_put(const struct path *path);
 
 LIST_HEAD(fs_device_list);
 
@@ -683,6 +689,8 @@ static void fs_remove(struct device_d *dev)
 	struct fs_device_d *fsdev = dev_to_fs_device(dev);
 	struct super_block *sb = &fsdev->sb;
 	struct inode *inode, *tmp;
+	struct path path;
+	int ret;
 
 	if (fsdev->dev.driver) {
 		dev->driver->remove(dev);
@@ -695,9 +703,17 @@ static void fs_remove(struct device_d *dev)
 	if (fsdev->cdev)
 		cdev_close(fsdev->cdev);
 
-	if (fsdev->loop && fsdev->cdev)
+	if (fsdev->loop && fsdev->cdev) {
 		cdev_remove_loop(fsdev->cdev);
 
+		ret = filename_lookup(AT_FDCWD, getname(fsdev->backingstore),
+				      LOOKUP_FOLLOW, &path);
+		if (!ret) {
+			mntput(path.mnt);
+			path_put(&path);
+		}
+	}
+
 	if (fsdev->vfsmount.mountpoint)
 		fsdev->vfsmount.mountpoint->d_flags &= ~DCACHE_MOUNTED;
 
@@ -767,16 +783,30 @@ static const char *detect_fs(const char *filename, const char *fsoptions)
 int fsdev_open_cdev(struct fs_device_d *fsdev)
 {
 	unsigned long long offset = 0;
+	struct path path = {};
+	int ret;
 
 	parseopt_b(fsdev->options, "loop", &fsdev->loop);
 	parseopt_llu_suffix(fsdev->options, "offset", &offset);
-	if (fsdev->loop)
-		fsdev->cdev = cdev_create_loop(fsdev->backingstore, O_RDWR,
-					       offset);
-	else
+	if (fsdev->loop) {
+		ret = filename_lookup(AT_FDCWD, getname(fsdev->backingstore),
+				      LOOKUP_FOLLOW, &path);
+		if (ret)
+			return ret;
+
+		fsdev->cdev = cdev_create_loop(fsdev->backingstore, O_RDWR, offset);
+	} else {
 		fsdev->cdev = cdev_open(fsdev->backingstore, O_RDWR);
-	if (!fsdev->cdev)
+	}
+	if (!fsdev->cdev) {
+		path_put(&path);
 		return -EINVAL;
+	}
+
+	if (path.mnt) {
+		mntget(path.mnt);
+		path_put(&path);
+	}
 
 	fsdev->dev.parent = fsdev->cdev->dev;
 	fsdev->parent_device = fsdev->cdev->dev;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
