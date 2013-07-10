Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uws0d-0000Kh-3a
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 10:52:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Jul 2013 12:52:00 +0200
Message-Id: <1373453528-3723-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1373453528-3723-1-git-send-email-s.hauer@pengutronix.de>
References: <1373453528-3723-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/9] devfs: let devfs_add_partition return the new partition
To: barebox@lists.infradead.org

Useful for unregistering later or for adding addional flags.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/x86/boards/x86_generic/generic_pc.c |  6 ++++--
 commands/partition.c                     | 11 ++++++++---
 common/environment.c                     | 10 ++++++++--
 common/partitions.c                      | 12 ++++++++----
 fs/devfs-core.c                          | 12 ++++++------
 include/driver.h                         |  2 +-
 6 files changed, 35 insertions(+), 18 deletions(-)

diff --git a/arch/x86/boards/x86_generic/generic_pc.c b/arch/x86/boards/x86_generic/generic_pc.c
index e49354b..9d37069 100644
--- a/arch/x86/boards/x86_generic/generic_pc.c
+++ b/arch/x86/boards/x86_generic/generic_pc.c
@@ -25,6 +25,7 @@
 #include <init.h>
 #include <asm/syslib.h>
 #include <ns16550.h>
+#include <linux/err.h>
 
 /*
  * These datas are from the MBR, created by the linker and filled by the
@@ -43,6 +44,7 @@ extern uint8_t pers_env_drive;
 static int devices_init(void)
 {
 	int rc;
+	struct cdev *cdev;
 
 	/* extended memory only */
 	add_mem_device("ram0", 0x0, bios_get_memsize() << 10,
@@ -51,11 +53,11 @@ static int devices_init(void)
 			NULL);
 
 	if (pers_env_size != PATCH_AREA_PERS_SIZE_UNUSED) {
-		rc = devfs_add_partition("biosdisk0",
+		cdev = devfs_add_partition("biosdisk0",
 				pers_env_storage * 512,
 				(unsigned)pers_env_size * 512,
 				DEVFS_PARTITION_FIXED, "env0");
-		printf("Partition: %d\n", rc);
+		printf("Partition: %d\n", IS_ERR(cdev) ? PTR_ERR(cdev) : 0);
 	} else
 		printf("No persistent storage defined\n");
 
diff --git a/commands/partition.c b/commands/partition.c
index 6f8d634..6d37471 100644
--- a/commands/partition.c
+++ b/commands/partition.c
@@ -35,6 +35,7 @@
 #include <linux/stat.h>
 #include <libgen.h>
 #include <getopt.h>
+#include <linux/err.h>
 
 #define SIZE_REMAINING ((ulong)-1)
 
@@ -48,7 +49,8 @@ static int mtd_part_do_parse_one(char *devname, const char *partstr,
 	char *end;
 	char buf[PATH_MAX] = {};
 	unsigned long flags = 0;
-	int ret;
+	int ret = 0;
+	struct cdev *cdev;
 
 	memset(buf, 0, PATH_MAX);
 
@@ -99,9 +101,12 @@ static int mtd_part_do_parse_one(char *devname, const char *partstr,
 
 	*retsize = size;
 
-	ret = devfs_add_partition(devname, *offset, size, flags, buf);
-	if (ret)
+	cdev = devfs_add_partition(devname, *offset, size, flags, buf);
+	if (IS_ERR(cdev)) {
+		ret = PTR_ERR(cdev);
 		printf("cannot create %s: %s\n", buf, strerror(-ret));
+	}
+
 	return ret;
 }
 
diff --git a/common/environment.c b/common/environment.c
index 78cd45c..2448777 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -379,7 +379,7 @@ out:
 
 int envfs_register_partition(const char *devname, unsigned int partnr)
 {
-	struct cdev *cdev;
+	struct cdev *cdev, *part;
 	char *partname;
 
 	if (!devname)
@@ -398,8 +398,14 @@ int envfs_register_partition(const char *devname, unsigned int partnr)
 		return -ENODEV;
 	}
 
-	return devfs_add_partition(partname, 0, cdev->size,
+	part = devfs_add_partition(partname, 0, cdev->size,
 						DEVFS_PARTITION_FIXED, "env0");
+	if (part)
+		return 0;
+
+	free(partname);
+
+	return -EINVAL;
 }
 EXPORT_SYMBOL(envfs_register_partition);
 #endif
diff --git a/common/partitions.c b/common/partitions.c
index 35a604c..38032a3 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -29,6 +29,7 @@
 #include <disks.h>
 #include <filetype.h>
 #include <dma.h>
+#include <linux/err.h>
 
 #include "partitions/parser.h"
 
@@ -48,16 +49,19 @@ static int register_one_partition(struct block_device *blk,
 	int ret;
 	uint64_t start = part->first_sec * SECTOR_SIZE;
 	uint64_t size = part->size * SECTOR_SIZE;
+	struct cdev *cdev;
 
 	partition_name = asprintf("%s.%d", blk->cdev.name, no);
 	if (!partition_name)
 		return -ENOMEM;
 	dev_dbg(blk->dev, "Registering partition %s on drive %s\n",
 				partition_name, blk->cdev.name);
-	ret = devfs_add_partition(blk->cdev.name,
+	cdev = devfs_add_partition(blk->cdev.name,
 				start, size, 0, partition_name);
-	if (ret)
+	if (IS_ERR(cdev)) {
+		ret = PTR_ERR(cdev);
 		goto out;
+	}
 
 	free(partition_name);
 
@@ -70,10 +74,10 @@ static int register_one_partition(struct block_device *blk,
 
 	dev_dbg(blk->dev, "Registering partition %s on drive %s\n",
 				partition_name, blk->cdev.name);
-	ret = devfs_add_partition(blk->cdev.name,
+	cdev = devfs_add_partition(blk->cdev.name,
 				start, size, 0, partition_name);
 
-	if (ret)
+	if (IS_ERR(cdev))
 		dev_warn(blk->dev, "Registering partition %s on drive %s failed\n",
 				partition_name, blk->cdev.name);
 
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 262e0a2..a16866e 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -226,21 +226,21 @@ int devfs_remove(struct cdev *cdev)
 	return 0;
 }
 
-int devfs_add_partition(const char *devname, loff_t offset, loff_t size,
+struct cdev *devfs_add_partition(const char *devname, loff_t offset, loff_t size,
 		int flags, const char *name)
 {
 	struct cdev *cdev, *new;
 
 	cdev = cdev_by_name(name);
 	if (cdev)
-		return -EEXIST;
+		return ERR_PTR(-EEXIST);
 
 	cdev = cdev_by_name(devname);
 	if (!cdev)
-		return -ENOENT;
+		return ERR_PTR(-ENOENT);
 
 	if (offset + size > cdev->size)
-		return -EINVAL;
+		return ERR_PTR(-EINVAL);
 
 	new = xzalloc(sizeof (*new));
 	new->name = strdup(name);
@@ -257,14 +257,14 @@ int devfs_add_partition(const char *devname, loff_t offset, loff_t size,
 		if (IS_ERR(new->mtd)) {
 			int ret = PTR_ERR(new->mtd);
 			free(new);
-			return ret;
+			return ERR_PTR(ret);
 		}
 	}
 #endif
 
 	devfs_create(new);
 
-	return 0;
+	return new;
 }
 
 int devfs_del_partition(const char *name)
diff --git a/include/driver.h b/include/driver.h
index b18318f..9f114ff 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -469,7 +469,7 @@ int cdev_erase(struct cdev *cdev, size_t count, loff_t offset);
 #define DEVFS_IS_PARTITION		(1 << 2)
 #define DEVFS_IS_CHARACTER_DEV		(1 << 3)
 
-int devfs_add_partition(const char *devname, loff_t offset, loff_t size,
+struct cdev *devfs_add_partition(const char *devname, loff_t offset, loff_t size,
 		int flags, const char *name);
 int devfs_del_partition(const char *name);
 
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
