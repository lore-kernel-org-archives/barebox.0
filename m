Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8Co6-0000rm-CP
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 14:37:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Apr 2011 16:36:47 +0200
Message-Id: <1302273422-6987-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302273422-6987-1-git-send-email-s.hauer@pengutronix.de>
References: <1302273422-6987-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/16] fs: remove unused field 'type' from struct fs_driver_d
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/cramfs/cramfs.c |    1 -
 fs/devfs.c         |    1 -
 fs/ramfs.c         |    1 -
 include/fs.h       |    5 -----
 4 files changed, 0 insertions(+), 8 deletions(-)

diff --git a/fs/cramfs/cramfs.c b/fs/cramfs/cramfs.c
index 73a3759..b9ab50f 100644
--- a/fs/cramfs/cramfs.c
+++ b/fs/cramfs/cramfs.c
@@ -456,7 +456,6 @@ static void cramfs_remove(struct device_d *dev)
 }
 
 static struct fs_driver_d cramfs_driver = {
-	.type		= FS_TYPE_CRAMFS,
 	.open		= cramfs_open,
 	.close		= cramfs_close,
 	.read		= cramfs_read,
diff --git a/fs/devfs.c b/fs/devfs.c
index 7019c8d..d40bf90 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -282,7 +282,6 @@ static void devfs_delete(struct device_d *dev)
 }
 
 static struct fs_driver_d devfs_driver = {
-	.type      = FS_TYPE_DEVFS,
 	.read      = devfs_read,
 	.write     = devfs_write,
 	.lseek     = devfs_lseek,
diff --git a/fs/ramfs.c b/fs/ramfs.c
index 91001f1..db417e1 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -543,7 +543,6 @@ static void ramfs_remove(struct device_d *dev)
 }
 
 static struct fs_driver_d ramfs_driver = {
-	.type      = FS_TYPE_RAMFS,
 	.create    = ramfs_create,
 	.unlink    = ramfs_unlink,
 	.open      = ramfs_open,
diff --git a/include/fs.h b/include/fs.h
index 4c03978..3834fe4 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -3,10 +3,6 @@
 
 #include <driver.h>
 
-#define FS_TYPE_CRAMFS 1
-#define FS_TYPE_RAMFS  2
-#define FS_TYPE_DEVFS  3
-
 #define PATH_MAX       1024        /* include/linux/limits.h */
 
 struct partition;
@@ -41,7 +37,6 @@ typedef struct filep {
 #define FS_DRIVER_NO_DEV	1
 
 struct fs_driver_d {
-	ulong type;
 	char *name;
 	int (*probe) (struct device_d *dev);
 	int (*mkdir)(struct device_d *dev, const char *pathname);
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
