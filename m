Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S9H4b-0006Pq-4V
 for barebox@lists.infradead.org; Sun, 18 Mar 2012 14:27:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 18 Mar 2012 15:26:38 +0100
Message-Id: <1332080804-13132-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1332080804-13132-1-git-send-email-s.hauer@pengutronix.de>
References: <1332080804-13132-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/8] fs: drop struct mtab_entry
To: barebox@lists.infradead.org

every struct fs_device_d contains a struct mtab_entry, so they
have a 1:1 relationship. Instead of having to use container_of
to get from a struct mtab_entry to a struct fs_device_d we can
better embed the members of struct mtab_entry into struct fs_device_d
directly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/mount.c |   10 +++---
 fs/fs.c          |   88 ++++++++++++++++++++++++++---------------------------
 include/fs.h     |   15 +++------
 3 files changed, 53 insertions(+), 60 deletions(-)

diff --git a/commands/mount.c b/commands/mount.c
index dd1ae63..b32faef 100644
--- a/commands/mount.c
+++ b/commands/mount.c
@@ -33,14 +33,14 @@
 static int do_mount(int argc, char *argv[])
 {
 	int ret = 0;
-	struct mtab_entry *entry;
+	struct fs_device_d *fsdev;
 
 	if (argc == 1) {
-		for_each_mtab_entry(entry) {
+		for_each_fs_device(fsdev) {
 			printf("%s on %s type %s\n",
-				entry->parent_device ? dev_name(entry->parent_device) : "none",
-				entry->path,
-				entry->dev->name);
+				fsdev->parent_device ? dev_name(fsdev->parent_device) : "none",
+				fsdev->path,
+				fsdev->dev.name);
 		}
 		return 0;
 	}
diff --git a/fs/fs.c b/fs/fs.c
index 93a0f80..03fe9c8 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -167,21 +167,21 @@ char *normalise_path(const char *pathname)
 }
 EXPORT_SYMBOL(normalise_path);
 
-LIST_HEAD(mtab_list);
-static struct mtab_entry *mtab_root;
+LIST_HEAD(fs_device_list);
+static struct fs_device_d *fs_dev_root;
 
-static struct mtab_entry *get_mtab_entry_by_path(const char *path)
+static struct fs_device_d *get_fsdevice_by_path(const char *path)
 {
-	struct mtab_entry *e = NULL;
+	struct fs_device_d *fsdev = NULL;
 
-	for_each_mtab_entry(e) {
-		int len = strlen(e->path);
-		if (!strncmp(path, e->path, len) &&
+	for_each_fs_device(fsdev) {
+		int len = strlen(fsdev->path);
+		if (!strncmp(path, fsdev->path, len) &&
 				(path[len] == '/' || path[len] == 0))
-			return e;
+			return fsdev;
 	}
 
-	return mtab_root;
+	return fs_dev_root;
 }
 
 static FILE files[MAX_FILES];
@@ -218,15 +218,15 @@ static int check_fd(int fd)
 
 static struct fs_device_d *get_fs_device_and_root_path(char **path)
 {
-	struct mtab_entry *e;
+	struct fs_device_d *fsdev;
 
-	e = get_mtab_entry_by_path(*path);
-	if (!e)
+	fsdev = get_fsdevice_by_path(*path);
+	if (!fsdev)
 		return NULL;
-	if (e != mtab_root)
-		*path += strlen(e->path);
+	if (fsdev != fs_dev_root)
+		*path += strlen(fsdev->path);
 
-	return dev_to_fs_device(e->dev);
+	return fsdev;
 }
 
 static int dir_is_empty(const char *pathname)
@@ -702,7 +702,7 @@ static int fs_match(struct device_d *dev, struct driver_d *drv)
 static int fs_probe(struct device_d *dev)
 {
 	struct fs_device_d *fsdev = dev_to_fs_device(dev);
-	struct mtab_entry *entry = &fsdev->mtab;
+	struct fs_driver_d *fsdrv = dev_to_fs_driver(dev);
 	int ret;
 
 	ret = dev->driver->probe(dev);
@@ -711,15 +711,15 @@ static int fs_probe(struct device_d *dev)
 
 	if (fsdev->cdev) {
 		dev_add_child(fsdev->cdev->dev, &fsdev->dev);
-		entry->parent_device = fsdev->cdev->dev;
+		fsdev->parent_device = fsdev->cdev->dev;
 	}
 
-	entry->dev = &fsdev->dev;
+	fsdev->driver = fsdrv;
 
-	list_add_tail(&entry->list, &mtab_list);
+	list_add_tail(&fsdev->list, &fs_device_list);
 
-	if (!mtab_root)
-		mtab_root = entry;
+	if (!fs_dev_root)
+		fs_dev_root = fsdev;
 
 	return 0;
 }
@@ -727,17 +727,16 @@ static int fs_probe(struct device_d *dev)
 static void fs_remove(struct device_d *dev)
 {
 	struct fs_device_d *fsdev = dev_to_fs_device(dev);
-	struct mtab_entry *entry = &fsdev->mtab;
 
 	if (fsdev->dev.driver) {
 		dev->driver->remove(dev);
-		list_del(&entry->list);
+		list_del(&fsdev->list);
 	}
 
-	free(entry->path);
+	free(fsdev->path);
 
-	if (entry == mtab_root)
-		mtab_root = NULL;
+	if (fsdev == fs_dev_root)
+		fs_dev_root = NULL;
 
 	free(fsdev->backingstore);
 	free(fsdev);
@@ -774,10 +773,9 @@ int mount(const char *device, const char *fsname, const char *_path)
 
 	debug("mount: %s on %s type %s\n", device, path, fsname);
 
-	if (mtab_root) {
-		struct mtab_entry *entry;
-		entry = get_mtab_entry_by_path(path);
-		if (entry != mtab_root) {
+	if (fs_dev_root) {
+		fsdev = get_fsdevice_by_path(path);
+		if (fsdev != fs_dev_root) {
 			printf("sorry, no nested mounts\n");
 			errno = -EBUSY;
 			goto err_free_path;
@@ -796,7 +794,7 @@ int mount(const char *device, const char *fsname, const char *_path)
 	fsdev->backingstore = xstrdup(device);
 	safe_strncpy(fsdev->dev.name, fsname, MAX_DRIVER_NAME);
 	fsdev->dev.id = get_free_deviceid(fsdev->dev.name);
-	fsdev->mtab.path = xstrdup(path);
+	fsdev->path = xstrdup(path);
 	fsdev->dev.bus = &fs_bus;
 
 	if (!strncmp(device, "/dev/", 5))
@@ -833,29 +831,29 @@ EXPORT_SYMBOL(mount);
 
 int umount(const char *pathname)
 {
-	struct mtab_entry *entry = NULL, *e;
+	struct fs_device_d *fsdev = NULL, *f;
 	char *p = normalise_path(pathname);
 
-	for_each_mtab_entry(e) {
-		if (!strcmp(p, e->path)) {
-			entry = e;
+	for_each_fs_device(f) {
+		if (!strcmp(p, f->path)) {
+			fsdev = f;
 			break;
 		}
 	}
 
 	free(p);
 
-	if (e == mtab_root && !list_is_singular(&mtab_list)) {
+	if (f == fs_dev_root && !list_is_singular(&fs_device_list)) {
 		errno = -EBUSY;
 		return errno;
 	}
 
-	if (!entry) {
+	if (!fsdev) {
 		errno = -EFAULT;
 		return errno;
 	}
 
-	unregister_device(entry->dev);
+	unregister_device(&fsdev->dev);
 
 	return 0;
 }
@@ -915,23 +913,23 @@ int stat(const char *filename, struct stat *s)
 {
 	struct device_d *dev;
 	struct fs_driver_d *fsdrv;
-	struct mtab_entry *e;
+	struct fs_device_d *fsdev;
 	char *f = normalise_path(filename);
 	char *freep = f;
 
 	memset(s, 0, sizeof(struct stat));
 
-	e = get_mtab_entry_by_path(f);
-	if (!e) {
+	fsdev = get_fsdevice_by_path(f);
+	if (!fsdev) {
 		errno = -ENOENT;
 		goto out;
 	}
 
-	if (e != mtab_root && strcmp(f, e->path)) {
-		f += strlen(e->path);
-		dev = e->dev;
+	if (fsdev != fs_dev_root && strcmp(f, fsdev->path)) {
+		f += strlen(fsdev->path);
+		dev = &fsdev->dev;
 	} else
-		dev = mtab_root->dev;
+		dev = &fs_dev_root->dev;
 
 	fsdrv = dev_to_fs_driver(dev);
 
diff --git a/include/fs.h b/include/fs.h
index e5364f9..7815da5 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -77,15 +77,8 @@ struct fs_driver_d {
 #define dev_to_fs_driver(d) container_of(d->driver, struct fs_driver_d, drv)
 #define dev_to_fs_device(d) container_of(d, struct fs_device_d, dev)
 
-struct mtab_entry {
-	char *path;
-	struct device_d *dev;
-	struct device_d *parent_device;
-	struct list_head list;
-};
-
-extern struct list_head mtab_list;
-#define for_each_mtab_entry(e) list_for_each_entry(e, &mtab_list, list)
+extern struct list_head fs_device_list;
+#define for_each_fs_device(f) list_for_each_entry(f, &fs_device_list, list)
 
 struct fs_device_d {
 	char *backingstore; /* the device we are associated with */
@@ -94,7 +87,9 @@ struct fs_device_d {
 	struct fs_driver_d *driver;
 
 	struct cdev *cdev;
-	struct mtab_entry mtab;
+	char *path;
+	struct device_d *parent_device;
+	struct list_head list;
 };
 
 /*
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
