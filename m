Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rxa8g-0002gI-TT
 for barebox@lists.infradead.org; Wed, 15 Feb 2012 08:22:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 15 Feb 2012 09:22:43 +0100
Message-Id: <1329294165-12089-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1329294165-12089-1-git-send-email-s.hauer@pengutronix.de>
References: <1329294165-12089-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/12] fs: put fs devices on its own bus
To: barebox@lists.infradead.org

By putting the fs devices/drivers on a bus on its own we can hook
into the bus remove function to cleanup the fs device. This way
we can unmount a device by simply unregistering the device which
is useful for for example USB mass storage devices. These can now
unregister the assoiated filesystems by unregistering their child
devices.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c      |  122 ++++++++++++++++++++++++++++++++++++----------------------
 include/fs.h |    1 +
 2 files changed, 77 insertions(+), 46 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 3e65c64..637a01f 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -697,11 +697,67 @@ int close(int fd)
 }
 EXPORT_SYMBOL(close);
 
-static LIST_HEAD(fs_driver_list);
+static int fs_match(struct device_d *dev, struct driver_d *drv)
+{
+	return strcmp(dev->name, drv->name) ? -1 : 0;
+}
+
+static int fs_probe(struct device_d *dev)
+{
+	struct fs_device_d *fsdev = container_of(dev, struct fs_device_d, dev);
+	struct mtab_entry *entry = &fsdev->mtab;
+	int ret;
+
+	ret = dev->driver->probe(dev);
+	if (ret)
+		return ret;
+
+	if (fsdev->cdev) {
+		dev_add_child(fsdev->cdev->dev, &fsdev->dev);
+		entry->parent_device = fsdev->cdev->dev;
+	}
+
+	entry->dev = &fsdev->dev;
+
+	list_add_tail(&entry->list, &mtab_list);
+
+	if (!mtab_root)
+		mtab_root = entry;
+
+	return 0;
+}
+
+static void fs_remove(struct device_d *dev)
+{
+	struct fs_device_d *fsdev = container_of(dev, struct fs_device_d, dev);
+	struct mtab_entry *entry = &fsdev->mtab;
+
+	if (fsdev->dev.driver) {
+		dev->driver->remove(dev);
+		list_del(&entry->list);
+	}
+
+	free(entry->path);
+
+	if (entry == mtab_root)
+		mtab_root = NULL;
+
+	free(fsdev->backingstore);
+	free(fsdev);
+}
+
+struct bus_type fs_bus = {
+	.name = "fs",
+	.match = fs_match,
+	.probe = fs_probe,
+	.remove = fs_remove,
+};
 
 int register_fs_driver(struct fs_driver_d *fsdrv)
 {
+	fsdrv->drv.bus = &fs_bus;
 	register_driver(&fsdrv->drv);
+
 	return 0;
 }
 EXPORT_SYMBOL(register_fs_driver);
@@ -714,10 +770,7 @@ EXPORT_SYMBOL(register_fs_driver);
  */
 int mount(const char *device, const char *fsname, const char *_path)
 {
-	struct mtab_entry *entry;
 	struct fs_device_d *fsdev;
-	struct device_d *parent_device = NULL;
-	struct cdev *cdev = NULL;
 	int ret;
 	char *path = normalise_path(_path);
 
@@ -728,17 +781,17 @@ int mount(const char *device, const char *fsname, const char *_path)
 	if (strchr(path + 1, '/')) {
 		printf("mounting allowed on first directory level only\n");
 		errno = -EBUSY;
-		goto out;
+		goto err_free_path;
 	}
 
 	if (mtab_root) {
 		if (path_check_prereq(path, S_IFDIR))
-			goto out;
+			goto err_free_path;
 	} else {
 		/* no mtab, so we only allow to mount on '/' */
 		if (*path != '/' || *(path + 1)) {
 			errno = -ENOTDIR;
-			goto out;
+			goto err_free_path;
 		}
 	}
 
@@ -747,51 +800,37 @@ int mount(const char *device, const char *fsname, const char *_path)
 	safe_strncpy(fsdev->dev.name, fsname, MAX_DRIVER_NAME);
 	fsdev->dev.type_data = fsdev;
 	fsdev->dev.id = get_free_deviceid(fsdev->dev.name);
+	fsdev->mtab.path = xstrdup(path);
+	fsdev->dev.bus = &fs_bus;
+
+	if (!strncmp(device, "/dev/", 5))
+		fsdev->cdev = cdev_by_name(device + 5);
 
 	if ((ret = register_device(&fsdev->dev))) {
 		errno = ret;
-		goto out1;
+		goto err_register;
 	}
 
 	if (!fsdev->dev.driver) {
-		/* driver didn't accept the device. Bail out */
+		/*
+		 * Driver didn't accept the device or no driver for this
+		 * device. Bail out
+		 */
 		errno = -EINVAL;
-		goto out2;
+		goto err_no_driver;
 	}
 
-	if (!strncmp(device, "/dev/", 5)) {
-		cdev = cdev_by_name(device + 5);
-		if(cdev)
-			parent_device = cdev->dev;
-	}
-
-	if (parent_device)
-		dev_add_child(parent_device, &fsdev->dev);
-
-	/* add mtab entry */
-	entry = &fsdev->mtab;
-	entry->path = xstrdup(path);
-	entry->dev = &fsdev->dev;
-	entry->parent_device = parent_device;
-
-	list_add_tail(&entry->list, &mtab_list);
-
-	if (!mtab_root)
-		mtab_root = entry;
-
 	errno = 0;
 
-	free(path);
 	return 0;
 
-out2:
+err_no_driver:
 	unregister_device(&fsdev->dev);
-out1:
-	if (fsdev->backingstore)
-		free(fsdev->backingstore);
-	free(fsdev);
-out:
+err_register:
+	fs_remove(&fsdev->dev);
+err_free_path:
 	free(path);
+
 	return errno;
 }
 EXPORT_SYMBOL(mount);
@@ -800,7 +839,6 @@ int umount(const char *pathname)
 {
 	struct mtab_entry *entry = NULL, *e;
 	char *p = normalise_path(pathname);
-	struct fs_device_d *fsdev;
 
 	for_each_mtab_entry(e) {
 		if (!strcmp(p, e->path)) {
@@ -821,15 +859,7 @@ int umount(const char *pathname)
 		return errno;
 	}
 
-	free(entry->path);
-	list_del(&entry->list);
-	if (entry == mtab_root)
-		mtab_root = NULL;
-
 	unregister_device(entry->dev);
-	fsdev = entry->dev->type_data;
-	free(fsdev->backingstore);
-	free(fsdev);
 
 	return 0;
 }
diff --git a/include/fs.h b/include/fs.h
index fcaef32..656160d 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -90,6 +90,7 @@ struct fs_device_d {
 
 	struct fs_driver_d *driver;
 
+	struct cdev *cdev;
 	struct mtab_entry mtab;
 };
 
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
