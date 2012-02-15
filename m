Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rxa8g-0004Y9-KN
 for barebox@lists.infradead.org; Wed, 15 Feb 2012 08:23:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 15 Feb 2012 09:22:42 +0100
Message-Id: <1329294165-12089-10-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/12] fs: remove fs devices list
To: barebox@lists.infradead.org

We store the fs devices in a list only because we want to
check if the fs driver needs a backingstore or not. The
driver will bail out anyway if it needs a backingstore and
doesn't find one. So we can remove this check and thus remove
the list of fs devices.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c      |   23 +----------------------
 include/fs.h |    2 --
 2 files changed, 1 insertions(+), 24 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 7bb5d8e..3e65c64 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -701,7 +701,6 @@ static LIST_HEAD(fs_driver_list);
 
 int register_fs_driver(struct fs_driver_d *fsdrv)
 {
-	list_add_tail(&fsdrv->list, &fs_driver_list);
 	register_driver(&fsdrv->drv);
 	return 0;
 }
@@ -715,7 +714,6 @@ EXPORT_SYMBOL(register_fs_driver);
  */
 int mount(const char *device, const char *fsname, const char *_path)
 {
-	struct fs_driver_d *fs_drv = NULL, *f;
 	struct mtab_entry *entry;
 	struct fs_device_d *fsdev;
 	struct device_d *parent_device = NULL;
@@ -733,18 +731,6 @@ int mount(const char *device, const char *fsname, const char *_path)
 		goto out;
 	}
 
-	list_for_each_entry(f, &fs_driver_list, list) {
-		if (!strcmp(f->drv.name, fsname)) {
-			fs_drv = f;
-			break;
-		}
-	}
-
-	if (!fs_drv) {
-		errno = -EINVAL;
-		goto out;
-	}
-
 	if (mtab_root) {
 		if (path_check_prereq(path, S_IFDIR))
 			goto out;
@@ -757,14 +743,7 @@ int mount(const char *device, const char *fsname, const char *_path)
 	}
 
 	fsdev = xzalloc(sizeof(struct fs_device_d));
-	if (!(fs_drv->flags & FS_DRIVER_NO_DEV)) {
-		fsdev->backingstore = strdup(device);
-		if (!device) {
-			printf("need a device for driver %s\n", fsname);
-			errno = -ENODEV;
-			goto out1;
-		}
-	}
+	fsdev->backingstore = xstrdup(device);
 	safe_strncpy(fsdev->dev.name, fsname, MAX_DRIVER_NAME);
 	fsdev->dev.type_data = fsdev;
 	fsdev->dev.id = get_free_deviceid(fsdev->dev.name);
diff --git a/include/fs.h b/include/fs.h
index 8daa1bc..fcaef32 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -72,8 +72,6 @@ struct fs_driver_d {
 	struct driver_d drv;
 
 	unsigned long flags;
-
-	struct list_head list;
 };
 
 struct mtab_entry {
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
