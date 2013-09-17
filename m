Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo3.mail-out.ovh.net ([87.98.178.58]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VLxpK-0001Km-H1
 for barebox@lists.infradead.org; Tue, 17 Sep 2013 16:08:36 +0000
Received: from mail437.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 839AEFF981E
 for <barebox@lists.infradead.org>; Tue, 17 Sep 2013 18:08:11 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 17 Sep 2013 18:09:16 +0200
Message-Id: <1379434156-32055-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1379434156-32055-1-git-send-email-plagnioj@jcrosoft.com>
References: <1379434156-32055-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] fs: add Somfy BPK2 support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 fs/Kconfig           |   4 +
 fs/Makefile          |   1 +
 fs/somfy_bpk2.c      | 357 +++++++++++++++++++++++++++++++++++++++++++++++++++
 include/somfy_bpk2.h |  59 +++++++++
 4 files changed, 421 insertions(+)
 create mode 100644 fs/somfy_bpk2.c
 create mode 100644 include/somfy_bpk2.h

diff --git a/fs/Kconfig b/fs/Kconfig
index 21d3434..c4d321c 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -43,6 +43,10 @@ config FS_NFS
 
 source fs/fat/Kconfig
 
+config FS_SOMFY_BPK2
+	bool
+	prompt "Somfy BPK2 support"
+
 config PARTITION_NEED_MTD
 	bool
 
diff --git a/fs/Makefile b/fs/Makefile
index cc59da7..956d470 100644
--- a/fs/Makefile
+++ b/fs/Makefile
@@ -8,3 +8,4 @@ obj-y	+= fs.o
 obj-$(CONFIG_FS_TFTP)	+= tftp.o
 obj-$(CONFIG_FS_OMAP4_USBBOOT)	+= omap4_usbbootfs.o
 obj-$(CONFIG_FS_NFS)	+= nfs.o
+obj-$(CONFIG_FS_SOMFY_BPK2)	+= somfy_bpk2.o
diff --git a/fs/somfy_bpk2.c b/fs/somfy_bpk2.c
new file mode 100644
index 0000000..49098b7
--- /dev/null
+++ b/fs/somfy_bpk2.c
@@ -0,0 +1,357 @@
+/*
+ * Copyright (c) 2013 Jean-Chritstophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * under GPLv2 ONLY
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <fs.h>
+#include <errno.h>
+#include <fcntl.h>
+#include <fs.h>
+#include <malloc.h>
+#include <init.h>
+#include <linux/stat.h>
+#include <linux/err.h>
+#include <somfy_bpk2.h>
+
+static bool somfy_bpk2_is_crc_file(struct somfy_bpk2_handle_data *d)
+{
+	return d->type & (1 << 31);
+}
+
+const char* somfy_bpk2_type_to_str(uint32_t type)
+{
+	switch (type) {
+	case SOMFY_BPK_TYPE_PBL:
+		return "picocom1_bootloader";
+	case SOMFY_BPK_TYPE_PBLV:
+		return "picocom1_bootloader_version";
+	case SOMFY_BPK_TYPE_PKER:
+		return "picocom1_kernel";
+	case SOMFY_BPK_TYPE_PRFS:
+		return "picocom1_rootfs";
+	case SOMFY_BPK_TYPE_FMV:
+		return "firmware_version";
+	}
+
+	return "unknown";
+}
+
+const char* somfy_bpk2_type_crc_to_str(uint32_t type)
+{
+	switch (type) {
+	case SOMFY_BPK_TYPE_PBL:
+		return "picocom1_bootloader.crc";
+	case SOMFY_BPK_TYPE_PBLV:
+		return "picocom1_bootloader_version.crc";
+	case SOMFY_BPK_TYPE_PKER:
+		return "picocom1_kernel.crc";
+	case SOMFY_BPK_TYPE_PRFS:
+		return "picocom1_rootfs.crc";
+	case SOMFY_BPK_TYPE_FMV:
+		return "firmware_version.crc";
+	}
+
+	return "unknown.crc";
+}
+
+static struct somfy_bpk2_handle_data *somfy_bpk2_get_by_name(
+	struct somfy_bkp2_handle *handle, const char *name)
+{
+	struct somfy_bpk2_handle_data *d;
+
+	if (!name)
+		return NULL;
+
+	list_for_each_entry(d, &handle->list, list) {
+		if (strcmp(d->name, name) == 0)
+			return d;
+	}
+
+	return NULL;
+}
+
+static struct somfy_bpk2_handle_data *somfy_bpk2_get_by_type(
+	struct somfy_bkp2_handle *handle, uint32_t type)
+{
+	struct somfy_bpk2_handle_data *d;
+
+	list_for_each_entry(d, &handle->list, list) {
+		if (d->type == type)
+			return d;
+	}
+
+	return NULL;
+}
+
+static int somfy_bpk2_open(struct device_d *dev, FILE *file, const char *filename)
+{
+	struct somfy_bkp2_handle *priv = dev->priv;
+	struct somfy_bpk2_handle_data *d;
+
+	if (filename[0] == '/')
+		filename++;
+	
+	d = somfy_bpk2_get_by_name(priv, filename);
+	if (!d)
+		return -EINVAL;
+
+	if (!somfy_bpk2_is_crc_file(d)) {
+		d->fd = open(priv->filename, O_RDONLY);
+		if (d->fd < 0)
+			return d->fd;
+
+		lseek(d->fd, d->offset, SEEK_SET);
+	}
+
+	file->size = d->size;
+	file->inode = d;
+
+	return 0;
+}
+
+static int somfy_bpk2_close(struct device_d *dev, FILE *file)
+{
+	struct somfy_bpk2_handle_data *d = file->inode;
+
+	close(d->fd);
+
+	return 0;
+}
+
+static int somfy_bpk2_read(struct device_d *dev, FILE *file, void *buf, size_t insize)
+{
+	struct somfy_bpk2_handle_data *d = file->inode;
+
+	if (somfy_bpk2_is_crc_file(d)) {
+		memcpy(buf, &d->data[d->pos], insize);
+		return insize;
+	} else {
+		return read(d->fd, buf, insize);
+	}
+}
+
+static loff_t somfy_bpk2_lseek(struct device_d *dev, FILE *file, loff_t pos)
+{
+	struct somfy_bpk2_handle_data *d = file->inode;
+
+	if (!somfy_bpk2_is_crc_file(d))
+		lseek(d->fd, d->offset + pos, SEEK_SET);
+
+	d->pos = pos;
+
+	return pos;
+}
+
+static DIR *somfy_bpk2_opendir(struct device_d *dev, const char *pathname)
+{
+	struct somfy_bkp2_handle *priv = dev->priv;
+	DIR *dir;
+
+	dir = xzalloc(sizeof(DIR));
+
+	if (list_empty(&priv->list))
+		return dir;
+
+	dir->priv = list_first_entry(&priv->list,
+					struct somfy_bpk2_handle_data, list);
+	return dir;
+}
+
+static struct dirent *somfy_bpk2_readdir(struct device_d *dev, DIR *dir)
+{
+	struct somfy_bkp2_handle *priv = dev->priv;
+	struct somfy_bpk2_handle_data *d = dir->priv;
+
+	if (!d || &d->list == &priv->list)
+		return NULL;
+
+	strcpy(dir->d.d_name, d->name);
+	dir->priv = list_entry(d->list.next, struct somfy_bpk2_handle_data, list);
+	return &dir->d;
+}
+
+static int somfy_bpk2_closedir(struct device_d *dev, DIR *dir)
+{
+	free(dir);
+	return 0;
+}
+
+static int somfy_bpk2_stat(struct device_d *dev, const char *filename, struct stat *s)
+{
+	struct somfy_bkp2_handle *priv = dev->priv;
+	struct somfy_bpk2_handle_data *d;
+
+	if (filename[0] == '/')
+		filename++;
+	
+	d = somfy_bpk2_get_by_name(priv, filename);
+	if (!d)
+		return -EINVAL;
+
+	s->st_size = d->size;
+	s->st_mode = S_IFREG | S_IRWXU | S_IRWXG | S_IRWXO;
+
+	return 0;
+}
+
+static void somfy_bpk2_remove(struct device_d *dev)
+{
+	struct somfy_bkp2_handle *priv = dev->priv;
+	struct somfy_bpk2_handle_data *d, *tmp;
+
+	list_for_each_entry_safe(d, tmp, &priv->list, list)
+		free(d);
+
+	free(priv);
+}
+
+static int somfy_bpk2_probe(struct device_d *dev)
+{
+	struct fs_device_d *fsdev = dev_to_fs_device(dev);
+	struct somfy_bkp2_handle *priv;
+	struct somfy_bkp2_header *header;
+	struct somfy_bkp2_data_header data_header;
+	int ret = 0;
+	uint32_t checksum, crc;
+	uint64_t size;
+	int i;
+	size_t offset = 0;
+	char *buf;
+	int fd;
+
+	priv = xzalloc(sizeof(struct somfy_bkp2_handle));
+	INIT_LIST_HEAD(&priv->list);
+	buf = xmalloc(2048);
+	dev->priv = priv;
+
+	priv->filename = fsdev->backingstore;
+	dev_dbg(dev, "mount: %s\n", fsdev->backingstore);
+
+	fd = open(fsdev->backingstore, O_RDONLY);
+	if (fd < 0) {
+		ret = fd;
+		goto err;
+	}
+
+	header = &priv->header;
+
+	ret = read(fd, header, sizeof(*header));
+	if (ret < 0) {
+		dev_err(dev, "could not read: %s (ret = %d)\n", errno_str(), ret);
+		goto err;
+	}
+
+	dev_dbg(dev, "header.magic = 0x%x\n", be32_to_cpu(header->magic));
+	dev_dbg(dev, "header.version = 0x%x\n", be32_to_cpu(header->version));
+	dev_dbg(dev, "header.crc = 0x%x\n", be32_to_cpu(header->crc));
+	dev_dbg(dev, "header.size = %llu\n", be64_to_cpu(header->size));
+	dev_dbg(dev, "header.spare = %llu\n", be64_to_cpu(header->spare));
+
+	size = be64_to_cpu(header->size);
+	offset += sizeof(*header);
+	size -= sizeof(*header);
+
+	checksum = be32_to_cpu(header->crc);
+	header->crc = 0;
+
+	crc = crc32(0, header, sizeof(*header));
+
+	for (i = 0; size; i++) {
+		struct somfy_bpk2_handle_data *d;
+
+		ret = read(fd, &data_header, sizeof(data_header));
+		if (ret < 0) {
+			dev_err(dev, "could not read: %s\n", errno_str());
+			goto err;
+		} else if (ret == 0) {
+			dev_err(dev, "EOF: to_read %llu\n", size);
+			goto err;
+		}
+
+		d = xzalloc(sizeof(*d));
+
+		crc = crc32(crc, &data_header, sizeof(data_header));
+		offset += sizeof(data_header);
+		size -= sizeof(data_header);
+
+		d->type = be32_to_cpu(data_header.type);
+		d->size = be64_to_cpu(data_header.size);
+		d->offset = offset;
+		d->crc = be32_to_cpu(data_header.crc);
+		d->name = somfy_bpk2_type_to_str(d->type);
+		dev_dbg(dev, "%d: type = 0x%x => %s\n", i, d->type, d->name);
+		dev_dbg(dev, "%d: size = %llu\n", i, d->size);
+		dev_dbg(dev, "%d: offset = %d\n", i, d->offset);
+
+		offset += d->size;
+		size -= d->size;
+
+		if (somfy_bpk2_get_by_type(priv, d->type)) {
+			dev_info(dev, "ignore data %d type %s already present, ignored\n",
+				 i, somfy_bpk2_type_to_str(d->type));
+			free(d);
+			continue;
+		}
+
+		list_add_tail(&d->list, &priv->list);
+		priv->nb_data_entries++;
+
+		ret = lseek(fd, d->size, SEEK_CUR);
+		if (ret < 0) {
+			dev_err(dev, "could not seek: %s\n", errno_str());
+			goto err;
+		}
+
+		d = xzalloc(sizeof(*d));
+		d->type = be32_to_cpu(data_header.type);
+		d->name = somfy_bpk2_type_crc_to_str(d->type);
+		d->type |= (1 << 31);
+		d->size = 8;
+		sprintf(d->data, "%08x", be32_to_cpu(data_header.crc));
+		list_add_tail(&d->list, &priv->list);
+	}
+
+	if (crc != checksum) {
+		dev_err(dev, "invalid crc (0x%x != 0x%x)\n", checksum, crc);
+		goto err;
+	}
+
+	close(fd);
+	free(buf);
+
+	return 0;
+
+err:
+	close(fd);
+	free(buf);
+	somfy_bpk2_remove(dev);
+
+	return ret;
+}
+
+static struct fs_driver_d somfy_bpk2_driver = {
+	.open      = somfy_bpk2_open,
+	.close     = somfy_bpk2_close,
+	.read      = somfy_bpk2_read,
+	.lseek     = somfy_bpk2_lseek,
+	.opendir   = somfy_bpk2_opendir,
+	.readdir   = somfy_bpk2_readdir,
+	.closedir  = somfy_bpk2_closedir,
+	.stat      = somfy_bpk2_stat,
+	.flags     = 0,
+	.type = filetype_somfy_bpk2,
+	.drv = {
+		.probe  = somfy_bpk2_probe,
+		.remove = somfy_bpk2_remove,
+		.name = "somfy_bpk2",
+	}
+};
+
+static int somfy_bpk2_init(void)
+{
+	return register_fs_driver(&somfy_bpk2_driver);
+}
+coredevice_initcall(somfy_bpk2_init);
diff --git a/include/somfy_bpk2.h b/include/somfy_bpk2.h
new file mode 100644
index 0000000..f8899c0
--- /dev/null
+++ b/include/somfy_bpk2.h
@@ -0,0 +1,59 @@
+/*
+ * Copyright (c) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * under GPLv2 only
+ */
+
+#ifndef __SOMFY_BPK2_H__
+#define __SOMFY_BPK2_H__
+
+#include <linux/types.h>
+#include <linux/list.h>
+
+#define SOMFY_BPK_TYPE_PBL	0x50424c00
+#define SOMFY_BPK_TYPE_PBLV	0x50424c56
+#define SOMFY_BPK_TYPE_PKER	0x504b4552
+#define SOMFY_BPK_TYPE_PRFS	0x50524653
+#define SOMFY_BPK_TYPE_FMV	0x46575600
+
+#define MAX_SOMFY_BPK2_COUNT 16
+
+struct somfy_bkp2_header {
+	uint32_t magic;
+	uint32_t version;
+	uint64_t size;
+	uint32_t crc;
+	uint64_t spare;
+} __attribute__ ((packed)) ;
+
+struct somfy_bkp2_data_header {
+	uint32_t type;
+	uint64_t size;
+	uint32_t crc;
+	uint64_t spare;
+} __attribute__ ((packed)) ;
+
+struct somfy_bpk2_handle_data {
+	const char *name;
+	uint32_t type;
+	uint64_t size;
+
+	int fd;
+	size_t offset; /* offset in the image */
+	size_t pos; /* pos in the data */
+	uint32_t crc;
+
+	char data[8];
+
+	struct list_head list;
+};
+
+struct somfy_bkp2_handle {
+	struct somfy_bkp2_header header;
+	int nb_data_entries;
+	char *filename;
+
+	struct list_head list;
+};
+
+#endif /* __SOMFY_BPK2_H__ */
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
