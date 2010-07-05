Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OVlXN-0000kn-5L
	for barebox@lists.infradead.org; Mon, 05 Jul 2010 13:16:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Jul 2010 15:16:27 +0200
Message-Id: <1278335795-16289-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1278335795-16289-1-git-send-email-s.hauer@pengutronix.de>
References: <1278335795-16289-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/12] add partition mtd support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/Makefile        |    1 +
 drivers/mtd/nand/nand.c     |    2 +
 drivers/mtd/partition.c     |  143 +++++++++++++++++++++++++++++++++++++++++++
 fs/Kconfig                  |    3 +
 fs/devfs.c                  |   31 +++++++++
 include/driver.h            |    1 +
 include/linux/mtd/mtd-abi.h |    1 +
 include/linux/mtd/mtd.h     |    3 +
 8 files changed, 185 insertions(+), 0 deletions(-)
 create mode 100644 drivers/mtd/partition.c

diff --git a/drivers/mtd/Makefile b/drivers/mtd/Makefile
index 87ee6f4..299cca1 100644
--- a/drivers/mtd/Makefile
+++ b/drivers/mtd/Makefile
@@ -1 +1,2 @@
 obj-$(CONFIG_NAND)	+= nand/
+obj-$(CONFIG_PARTITION_NEED_MTD)	+= partition.o
diff --git a/drivers/mtd/nand/nand.c b/drivers/mtd/nand/nand.c
index 4927231..6a150fe 100644
--- a/drivers/mtd/nand/nand.c
+++ b/drivers/mtd/nand/nand.c
@@ -123,6 +123,7 @@ static int nand_ioctl(struct cdev *cdev, int request, void *buf)
 		user->size	= info->size;
 		user->erasesize	= info->erasesize;
 		user->oobsize	= info->oobsize;
+		user->mtd	= info;
 		/* The below fields are obsolete */
 		user->ecctype	= -1;
 		user->eccsize	= 0;
@@ -220,6 +221,7 @@ int add_mtd_device(struct mtd_info *mtd)
 	mtd->cdev.name = asprintf("nand%d", mtd->class_dev.id);
 	mtd->cdev.priv = mtd;
 	mtd->cdev.dev = &mtd->class_dev;
+	mtd->cdev.mtd = mtd;
 
 	sprintf(str, "%u", mtd->size);
 	dev_add_param_fixed(&mtd->class_dev, "size", str);
diff --git a/drivers/mtd/partition.c b/drivers/mtd/partition.c
new file mode 100644
index 0000000..df2eb40
--- /dev/null
+++ b/drivers/mtd/partition.c
@@ -0,0 +1,143 @@
+#include <common.h>
+#include <errno.h>
+#include <malloc.h>
+#include <linux/err.h>
+#include <linux/mtd/mtd.h>
+
+struct mtd_part {
+	struct mtd_info mtd;
+	struct mtd_info *master;
+	uint64_t offset;
+	struct list_head list;
+};
+
+#define PART(x)  ((struct mtd_part *)(x))
+
+static int mtd_part_read(struct mtd_info *mtd, loff_t from, size_t len,
+                size_t *retlen, u_char *buf)
+{
+	struct mtd_part *part = PART(mtd);
+	struct mtd_ecc_stats stats;
+	int res;
+
+	stats = part->master->ecc_stats;
+
+	if (from >= mtd->size)
+		len = 0;
+	else if (from + len > mtd->size)
+		len = mtd->size - from;
+	res = part->master->read(part->master, from + part->offset,
+				len, retlen, buf);
+	return res;
+}
+
+static int mtd_part_write(struct mtd_info *mtd, loff_t to, size_t len,
+                size_t *retlen, const u_char *buf)
+{
+	struct mtd_part *part = PART(mtd);
+
+	if (!(mtd->flags & MTD_WRITEABLE))
+		return -EROFS;
+	if (to >= mtd->size)
+		len = 0;
+	else if (to + len > mtd->size)
+		len = mtd->size - to;
+	return part->master->write(part->master, to + part->offset,
+					len, retlen, buf);
+}
+
+static int mtd_part_erase(struct mtd_info *mtd, struct erase_info *instr)
+{
+	struct mtd_part *part = PART(mtd);
+	int ret;
+
+	if (!(mtd->flags & MTD_WRITEABLE))
+		return -EROFS;
+	if (instr->addr >= mtd->size)
+		return -EINVAL;
+	instr->addr += part->offset;
+	ret = part->master->erase(part->master, instr);
+	if (ret) {
+		if (instr->fail_addr != 0xffffffff)
+			instr->fail_addr -= part->offset;
+		instr->addr -= part->offset;
+	}
+	return ret;
+}
+
+static int mtd_part_block_isbad(struct mtd_info *mtd, loff_t ofs)
+{
+	struct mtd_part *part = PART(mtd);
+	if (ofs >= mtd->size)
+		return -EINVAL;
+	ofs += part->offset;
+	return part->master->block_isbad(part->master, ofs);
+}
+
+static int mtd_part_block_markbad(struct mtd_info *mtd, loff_t ofs)
+{
+	struct mtd_part *part = PART(mtd);
+	int res;
+
+	if (!(mtd->flags & MTD_WRITEABLE))
+		return -EROFS;
+	if (ofs >= mtd->size)
+		return -EINVAL;
+	ofs += part->offset;
+	res = part->master->block_markbad(part->master, ofs);
+	if (!res)
+		mtd->ecc_stats.badblocks++;
+	return res;
+}
+
+struct mtd_info *mtd_add_partition(struct mtd_info *mtd, off_t offset, size_t size,
+		unsigned long flags, const char *name)
+{
+	struct mtd_part *slave;
+	struct mtd_info *slave_mtd;
+	int start = 0, end = 0, i;
+
+	slave = xzalloc(sizeof(*slave));
+	slave_mtd = &slave->mtd;
+
+	memcpy(slave_mtd, mtd, sizeof(*slave));
+
+	/*
+	 * find the number of eraseregions the partition includes.
+	 * Do not bother to create the mtd_erase_region_infos as
+	 * ubi is only interested in its number. UBI does not
+	 * yet support multiple erase regions.
+	 */
+	for (i = mtd->numeraseregions - 1; i >= 0; i--) {
+		struct mtd_erase_region_info *region = &mtd->eraseregions[i];
+		if (offset >= region->offset &&
+		    offset < region->offset + region->erasesize * region->numblocks)
+			start = i;
+		if (offset + size >= region->offset &&
+		    offset + size <= region->offset + region->erasesize * region->numblocks)
+			end = i;
+	}
+
+	slave_mtd->numeraseregions = end - start;
+
+	slave_mtd->read = mtd_part_read;
+	slave_mtd->write = mtd_part_write;
+	slave_mtd->erase = mtd_part_erase;
+	slave_mtd->block_isbad = mtd->block_isbad ? mtd_part_block_isbad : NULL;
+	slave_mtd->block_markbad = mtd->block_markbad ? mtd_part_block_markbad : NULL;
+	slave_mtd->size = size;
+	slave_mtd->name = strdup(name);
+
+	slave->offset = offset;
+	slave->master = mtd;
+
+	return slave_mtd;
+}
+
+void mtd_del_partition(struct mtd_info *mtd)
+{
+	struct mtd_part *part = PART(mtd);
+
+	free(mtd->name);
+	free(part);
+}
diff --git a/fs/Kconfig b/fs/Kconfig
index 3e9de96..d05797a 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -16,4 +16,7 @@ config FS_DEVFS
 	default y
 	prompt "devfs support"
 
+config PARTITION_NEED_MTD
+	bool
+
 endmenu
diff --git a/fs/devfs.c b/fs/devfs.c
index 7478ef9..9ce9117 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -31,6 +31,8 @@
 #include <linux/stat.h>
 #include <ioctl.h>
 #include <nand.h>
+#include <linux/err.h>
+#include <linux/mtd/mtd.h>
 #include <linux/mtd/mtd-abi.h>
 #include <partition.h>
 
@@ -170,6 +172,7 @@ static int devfs_close(struct device_d *_dev, FILE *f)
 static int partition_ioctl(struct cdev *cdev, int request, void *buf)
 {
 	size_t offset;
+	struct mtd_info_user *user = buf;
 
 	switch (request) {
 	case MEMSETBADBLOCK:
@@ -178,6 +181,18 @@ static int partition_ioctl(struct cdev *cdev, int request, void *buf)
 		offset += cdev->offset;
 		return cdev->ops->ioctl(cdev, request, (void *)offset);
 	case MEMGETINFO:
+		if (cdev->mtd) {
+			user->type	= cdev->mtd->type;
+			user->flags	= cdev->mtd->flags;
+			user->size	= cdev->mtd->size;
+			user->erasesize	= cdev->mtd->erasesize;
+			user->oobsize	= cdev->mtd->oobsize;
+			user->mtd	= cdev->mtd;
+			/* The below fields are obsolete */
+			user->ecctype	= -1;
+			user->eccsize	= 0;
+			return 0;
+		}
 		return cdev->ops->ioctl(cdev, request, buf);
 	default:
 		return -EINVAL;
@@ -351,6 +366,17 @@ int devfs_add_partition(const char *devname, unsigned long offset, size_t size,
 	new->dev = cdev->dev;
 	new->flags = flags | DEVFS_IS_PARTITION;
 
+#ifdef CONFIG_PARTITION_NEED_MTD
+	if (cdev->mtd) {
+		new->mtd = mtd_add_partition(cdev->mtd, offset, size, flags, name);
+		if (IS_ERR(new->mtd)) {
+			int ret = PTR_ERR(new->mtd);
+			free(new);
+			return ret;
+		}
+	}
+#endif
+
 	devfs_create(new);
 
 	return 0;
@@ -370,6 +396,11 @@ int devfs_del_partition(const char *name)
 	if (cdev->flags & DEVFS_PARTITION_FIXED)
 		return -EPERM;
 
+#ifdef CONFIG_PARTITION_NEED_MTD
+	if (cdev->mtd)
+		mtd_del_partition(cdev->mtd);
+#endif
+
 	ret = devfs_remove(cdev);
 	if (ret)
 		return ret;
diff --git a/include/driver.h b/include/driver.h
index 6950c02..ae3e777 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -307,6 +307,7 @@ struct cdev {
 	size_t size;
 	unsigned int flags;
 	int open;
+	struct mtd_info *mtd;
 };
 
 int devfs_create(struct cdev *);
diff --git a/include/linux/mtd/mtd-abi.h b/include/linux/mtd/mtd-abi.h
index 04b4227..33e1fe2 100644
--- a/include/linux/mtd/mtd-abi.h
+++ b/include/linux/mtd/mtd-abi.h
@@ -62,6 +62,7 @@ struct mtd_info_user {
 	 * (TODO: remove at some point) */
 	uint32_t ecctype;
 	uint32_t eccsize;
+	struct mtd_info *mtd;
 };
 
 struct region_info_user {
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index ca98a16..39ee992 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -229,6 +229,9 @@ struct mtd_notifier {
 	struct list_head list;
 };
 
+struct mtd_info *mtd_add_partition(struct mtd_info *mtd, off_t offset, size_t size,
+		unsigned long flags, const char *name);
+void mtd_del_partition(struct mtd_info *mtd);
 
 extern void register_mtd_user (struct mtd_notifier *new);
 extern int unregister_mtd_user (struct mtd_notifier *old);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
