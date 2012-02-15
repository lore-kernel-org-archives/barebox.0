Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rxa8g-0004YL-OA
 for barebox@lists.infradead.org; Wed, 15 Feb 2012 08:23:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 15 Feb 2012 09:22:36 +0100
Message-Id: <1329294165-12089-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/12] fs: Store mtab entries in list
To: barebox@lists.infradead.org

To make the code a bit easier to read. Also, do not allow
to umount / when something else is mounted.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/mount.c |   17 +++++-------
 fs/fs.c          |   78 +++++++++++++++++++++++-------------------------------
 include/fs.h     |    6 +++-
 3 files changed, 44 insertions(+), 57 deletions(-)

diff --git a/commands/mount.c b/commands/mount.c
index 7cefdbe..926cd3f 100644
--- a/commands/mount.c
+++ b/commands/mount.c
@@ -33,18 +33,15 @@
 static int do_mount(struct command *cmdtp, int argc, char *argv[])
 {
 	int ret = 0;
-	struct mtab_entry *entry = NULL;
+	struct mtab_entry *entry;
 
 	if (argc == 1) {
-		do {
-			entry = mtab_next_entry(entry);
-			if (entry) {
-				printf("%s on %s type %s\n",
-					entry->parent_device ? dev_name(entry->parent_device) : "none",
-					entry->path,
-					entry->dev->name);
-			}
-		} while (entry);
+		for_each_mtab_entry(entry) {
+			printf("%s on %s type %s\n",
+				entry->parent_device ? dev_name(entry->parent_device) : "none",
+				entry->path,
+				entry->dev->name);
+		}
 		return 0;
 	}
 
diff --git a/fs/fs.c b/fs/fs.c
index 13df71c..3dfbaaa 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -167,11 +167,12 @@ char *normalise_path(const char *pathname)
 }
 EXPORT_SYMBOL(normalise_path);
 
-static struct mtab_entry *mtab;
+LIST_HEAD(mtab_list);
+static struct mtab_entry *mtab_root;
 
 struct mtab_entry *get_mtab_entry_by_path(const char *_path)
 {
-	struct mtab_entry *match = NULL, *e = mtab;
+	struct mtab_entry *e = NULL;
 	char *path, *tok;
 
 	if (*_path != '/')
@@ -183,24 +184,15 @@ struct mtab_entry *get_mtab_entry_by_path(const char *_path)
 	if (tok)
 		*tok = 0;
 
-	while (e) {
-		if (!strcmp(path, e->path)) {
-			match = e;
-			break;
-		}
-		e = e->next;
+	for_each_mtab_entry(e) {
+		if (!strcmp(path, e->path))
+			goto found;
 	}
-
+	e = mtab_root;
+found:
 	free(path);
 
-	return match ? match : mtab;
-}
-
-struct mtab_entry *mtab_next_entry(struct mtab_entry *e)
-{
-	if (!e)
-		return mtab;
-	return e->next;
+	return e;
 }
 
 const char *fsdev_get_mountpoint(struct fs_device_d *fsdev)
@@ -248,7 +240,7 @@ static struct device_d *get_fs_device_by_path(char **path)
 	e = get_mtab_entry_by_path(*path);
 	if (!e)
 		return NULL;
-	if (e != mtab)
+	if (e != mtab_root)
 		*path += strlen(e->path);
 
 	dev = e->dev;
@@ -751,11 +743,6 @@ int mount(const char *device, const char *fsname, const char *_path)
 
 	debug("mount: %s on %s type %s\n", device, path, fsname);
 
-	if (get_mtab_entry_by_path(path) != mtab) {
-		errno = -EBUSY;
-		goto out;
-	}
-
 	if (strchr(path + 1, '/')) {
 		printf("mounting allowed on first directory level only\n");
 		errno = -EBUSY;
@@ -774,7 +761,7 @@ int mount(const char *device, const char *fsname, const char *_path)
 		goto out;
 	}
 
-	if (mtab) {
+	if (mtab_root) {
 		if (path_check_prereq(path, S_IFDIR))
 			goto out;
 	} else {
@@ -825,16 +812,12 @@ int mount(const char *device, const char *fsname, const char *_path)
 	safe_strncpy(entry->path, path, PATH_MAX);
 	entry->dev = dev;
 	entry->parent_device = parent_device;
-	entry->next = NULL;
-
-	if (!mtab)
-		mtab = entry;
-	else {
-		struct mtab_entry *e = mtab;
-		while (e->next)
-			e = e->next;
-		e->next = entry;
-	}
+
+	list_add_tail(&entry->list, &mtab_list);
+
+	if (!mtab_root)
+		mtab_root = entry;
+
 	errno = 0;
 
 	free(path);
@@ -854,27 +837,32 @@ EXPORT_SYMBOL(mount);
 
 int umount(const char *pathname)
 {
-	struct mtab_entry *entry = mtab;
-	struct mtab_entry *last = mtab;
+	struct mtab_entry *entry = NULL, *e;
 	char *p = normalise_path(pathname);
 	struct fs_device_d *fsdev;
 
-	while(entry && strcmp(p, entry->path)) {
-		last = entry;
-		entry = entry->next;
+	for_each_mtab_entry(e) {
+		if (!strcmp(p, e->path)) {
+			entry = e;
+			break;
+		}
 	}
 
 	free(p);
 
+	if (e == mtab_root && !list_is_singular(&mtab_list)) {
+		errno = -EBUSY;
+		return errno;
+	}
+
 	if (!entry) {
 		errno = -EFAULT;
 		return errno;
 	}
 
-	if (entry == mtab)
-		mtab = mtab->next;
-	else
-		last->next = entry->next;
+	list_del(&entry->list);
+	if (entry == mtab_root)
+		mtab_root = NULL;
 
 	unregister_device(entry->dev);
 	fsdev = entry->dev->type_data;
@@ -951,11 +939,11 @@ int stat(const char *filename, struct stat *s)
 		goto out;
 	}
 
-	if (e != mtab && strcmp(f, e->path)) {
+	if (e != mtab_root && strcmp(f, e->path)) {
 		f += strlen(e->path);
 		dev = e->dev;
 	} else
-		dev = mtab->dev;
+		dev = mtab_root->dev;
 
 	fsdrv = (struct fs_driver_d *)dev->driver->type_data;
 
diff --git a/include/fs.h b/include/fs.h
index 97d5995..dd10677 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -78,11 +78,14 @@ struct fs_driver_d {
 
 struct mtab_entry {
 	char path[PATH_MAX];
-	struct mtab_entry *next;
 	struct device_d *dev;
 	struct device_d *parent_device;
+	struct list_head list;
 };
 
+extern struct list_head mtab_list;
+#define for_each_mtab_entry(e) list_for_each_entry(e, &mtab_list, list)
+
 struct fs_device_d {
 	char *backingstore; /* the device we are associated with */
 	struct device_d dev; /* our own device */
@@ -148,7 +151,6 @@ char *mkmodestr(unsigned long mode, char *str);
  * directly in / and of course the root directory itself
  */
 struct mtab_entry *get_mtab_entry_by_path(const char *path);
-struct mtab_entry *mtab_next_entry(struct mtab_entry *entry);
 const char *fsdev_get_mountpoint(struct fs_device_d *fsdev);
 
 /*
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
