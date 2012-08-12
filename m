Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo4.mail-out.ovh.net ([46.105.41.16]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T0ccY-0006mo-3E
 for barebox@lists.infradead.org; Sun, 12 Aug 2012 18:10:39 +0000
Received: from mail628.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 99A6010544DF
 for <barebox@lists.infradead.org>; Sun, 12 Aug 2012 20:15:13 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 12 Aug 2012 20:10:40 +0200
Message-Id: <1344795043-13815-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120812180535.GK6271@game.jcrosoft.org>
References: <20120812180535.GK6271@game.jcrosoft.org>
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
Subject: [PATCH 1/4] fs/mount: add autodetection type support
To: barebox@lists.infradead.org

if NULL is pass as type mount will try to autodetect the filesystem type

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 fs/Kconfig   |    5 +++++
 fs/fs.c      |   28 ++++++++++++++++++++++++++++
 include/fs.h |    5 +++++
 3 files changed, 38 insertions(+)

diff --git a/fs/Kconfig b/fs/Kconfig
index b75820f..4c66543 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -1,6 +1,11 @@
 
 menu "Filesystem support            "
 
+config FS
+	bool
+	default y
+	select FILETYPE
+
 config FS_AUTOMOUNT
 	bool
 
diff --git a/fs/fs.c b/fs/fs.c
index 0b376a5..e80d907 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -954,6 +954,28 @@ int register_fs_driver(struct fs_driver_d *fsdrv)
 }
 EXPORT_SYMBOL(register_fs_driver);
 
+static const char * detect_fs(const char *filename)
+{
+	enum filetype type = file_name_detect_type(filename);
+	struct driver_d *drv;
+	struct fs_driver_d *fdrv;
+
+	if (type == filetype_unknown)
+		return NULL;
+
+	for_each_driver(drv) {
+		if (drv->bus != &fs_bus)
+			continue;
+
+		fdrv = drv_to_fs_driver(drv);
+
+		if(type == fdrv->type)
+			return drv->name;
+	}
+
+	return NULL;
+}
+
 /*
  * Mount a device to a directory.
  * We do this by registering a new device on which the filesystem
@@ -985,6 +1007,12 @@ int mount(const char *device, const char *fsname, const char *_path)
 		}
 	}
 
+	if (!fsname)
+		fsname = detect_fs(device);
+
+	if (!fsname)
+		return -ENOENT;
+
 	fsdev = xzalloc(sizeof(struct fs_device_d));
 	fsdev->backingstore = xstrdup(device);
 	safe_strncpy(fsdev->dev.name, fsname, MAX_DRIVER_NAME);
diff --git a/include/fs.h b/include/fs.h
index c0b9f71..22470e6 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -2,6 +2,7 @@
 #define __FS_H
 
 #include <driver.h>
+#include <filetype.h>
 
 #define PATH_MAX       1024        /* include/linux/limits.h */
 
@@ -72,6 +73,8 @@ struct fs_driver_d {
 
 	struct driver_d drv;
 
+	enum filetype type;
+
 	unsigned long flags;
 };
 
@@ -93,6 +96,8 @@ struct fs_device_d {
 	struct list_head list;
 };
 
+#define drv_to_fs_driver(d) container_of(d, struct fs_driver_d, drv)
+
 /*
  * standard posix file functions
  */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
