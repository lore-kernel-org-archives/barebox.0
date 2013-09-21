Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo5.mail-out.ovh.net ([46.105.40.108]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VNOft-0001Ba-MD
 for barebox@lists.infradead.org; Sat, 21 Sep 2013 15:00:48 +0000
Received: from mail614.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 71E20FFAC23
 for <barebox@lists.infradead.org>; Sat, 21 Sep 2013 16:53:04 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 21 Sep 2013 16:54:16 +0200
Message-Id: <1379775256-29471-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1379775256-29471-1-git-send-email-plagnioj@jcrosoft.com>
References: <1379775256-29471-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2 v2] fs: add BPKFS support
To: barebox@lists.infradead.org
Cc: Fargier Sylvain <sylvain.fargier@somfy.com>

Simple update file format developped for Somfy, tools and library are
available under LGPLv2 (https://www.gitorious.org/libbpk).

This format in the v1.0 allow you to store 6 types a binary stream for
a unique hardware id:
 - bootloader
 - bootloader_version
 - description.gz
 - kernel
 - rootfs
 - firmware_version

and you can easly add more binary stream type.

The fs will display you in a directory per hw id

and if a binary stream type is unknown will be display
as unknown_%08x

 # mount image.bpk /tmp
 # ls -l /tmp/hw_id_0/
-rwxrwxrwx         10 firmware_version
-rwxrwxrwx          8 firmware_version.crc
-rwxrwxrwx    1845968 kernel
-rwxrwxrwx          8 kernel.crc
-rwxrwxrwx    5062656 rootfs
-rwxrwxrwx          8 rootfs.crc
-rwxrwxrwx        248 bootloader
-rwxrwxrwx          8 bootloader.crc
-rwxrwxrwx     248925 description.gz
-rwxrwxrwx          8 description.gz.crc
-rwxrwxrwx          4 bootloader_version
-rwxrwxrwx          8 bootloader_version.crc
-rwxrwxrwx          4 unknown_1234567g
-rwxrwxrwx          8 unknown_1234567g.crc

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Signed-off-by: Fargier Sylvain <sylvain.fargier@somfy.com>
---
 fs/Kconfig      |   6 +
 fs/Makefile     |   1 +
 fs/bpkfs.c      | 514 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/bpkfs.h |  68 ++++++++
 4 files changed, 589 insertions(+)
 create mode 100644 fs/bpkfs.c
 create mode 100644 include/bpkfs.h

diff --git a/fs/Kconfig b/fs/Kconfig
index be4797f..17ecb74 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -44,6 +44,12 @@ config FS_NFS
 source fs/fat/Kconfig
 source fs/ubifs/Kconfig
 
+config FS_BPKFS
+	bool
+	prompt "BPKFS support"
+	help
+	  
+
 config PARTITION_NEED_MTD
 	bool
 
diff --git a/fs/Makefile b/fs/Makefile
index bd02d94..cfef118 100644
--- a/fs/Makefile
+++ b/fs/Makefile
@@ -9,3 +9,4 @@ obj-$(CONFIG_FS_UBIFS)	+= ubifs/
 obj-$(CONFIG_FS_TFTP)	+= tftp.o
 obj-$(CONFIG_FS_OMAP4_USBBOOT)	+= omap4_usbbootfs.o
 obj-$(CONFIG_FS_NFS)	+= nfs.o
+obj-$(CONFIG_FS_BPKFS)	+= bpkfs.o
diff --git a/fs/bpkfs.c b/fs/bpkfs.c
new file mode 100644
index 0000000..0199ef4
--- /dev/null
+++ b/fs/bpkfs.c
@@ -0,0 +1,514 @@
+/*
+ * Copyright (c) 2013 Jean-Chritstophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Simple update file format developped for Somfy, tools and library are
+ * available under LGPLv2 (https://www.gitorious.org/libbpk).
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
+#include <bpkfs.h>
+#include <libgen.h>
+
+static bool bpkfs_is_crc_file(struct bpkfs_handle_data *d)
+{
+	return d->type & (1 << 31);
+}
+
+const char* bpkfs_type_to_str(uint32_t type)
+{
+	switch (type) {
+	case BPKFS_TYPE_BL:
+		return "bootloader";
+	case BPKFS_TYPE_BLV:
+		return "bootloader_version";
+	case BPKFS_TYPE_DSC:
+		return "description.gz";
+	case BPKFS_TYPE_KER:
+		return "kernel";
+	case BPKFS_TYPE_RFS:
+		return "rootfs";
+	case BPKFS_TYPE_FMV:
+		return "firmware_version";
+	}
+
+	return NULL;
+}
+
+static struct bpkfs_handle_hw *bpkfs_get_by_hw_id(
+	struct bpkfs_handle *handle, uint32_t hw_id)
+{
+	struct bpkfs_handle_hw *h;
+
+	list_for_each_entry(h, &handle->list, list_hw_id) {
+		if (h->hw_id == hw_id)
+			return h;
+	}
+
+	return NULL;
+}
+
+static struct bpkfs_handle_hw *bpkfs_hw_id_get_by_name(
+	struct bpkfs_handle *handle, const char *name)
+{
+	struct bpkfs_handle_hw *h;
+
+	if (!name)
+		return NULL;
+
+	list_for_each_entry(h, &handle->list, list_hw_id) {
+		if (strcmp(h->name, name) == 0)
+			return h;
+	}
+
+	return NULL;
+}
+
+static struct bpkfs_handle_data *bpkfs_data_get_by_name(
+	struct bpkfs_handle_hw *h, const char *name)
+{
+	struct bpkfs_handle_data *d;
+
+	if (!name)
+		return NULL;
+
+	list_for_each_entry(d, &h->list_data, list) {
+		if (strcmp(d->name, name) == 0)
+			return d;
+	}
+
+	return NULL;
+}
+
+static struct bpkfs_handle_hw *bpkfs_get_or_add_hw_id(
+	struct bpkfs_handle *handle, uint32_t hw_id)
+{
+	struct bpkfs_handle_hw *h;
+
+	h = bpkfs_get_by_hw_id(handle, hw_id);
+	if (h)
+		return h;
+
+	h = xzalloc(sizeof(*h));
+
+	INIT_LIST_HEAD(&h->list_data);
+	h->hw_id = hw_id;
+	h->name = asprintf("hw_id_%x", hw_id);
+	list_add_tail(&h->list_hw_id, &handle->list);
+
+	return h;
+}
+
+static struct bpkfs_handle_data *bpkfs_get_by_type(
+	struct bpkfs_handle *handle, uint32_t hw_id, uint32_t type)
+{
+	struct bpkfs_handle_data *d;
+	struct bpkfs_handle_hw *h;
+
+	h = bpkfs_get_by_hw_id(handle, hw_id);
+	if (!h)
+		return NULL;
+
+	list_for_each_entry(d, &h->list_data, list) {
+		if (d->type == type)
+			return d;
+	}
+
+	return NULL;
+}
+
+static int bpkfs_open(struct device_d *dev, FILE *f, const char *filename)
+{
+	struct bpkfs_handle *priv = dev->priv;
+	struct bpkfs_handle_data *d;
+	struct bpkfs_handle_hw *h;
+	char *dir, *file;
+	int ret = -EINVAL;
+	char *tmp = xstrdup(filename);
+	char *tmp2 = xstrdup(filename);
+
+	dir = dirname(tmp);
+
+	if (dir[0] == '/')
+		dir++;
+
+	h = bpkfs_hw_id_get_by_name(priv, dir);
+	if (!h)
+		goto out;
+
+	file = basename(tmp2);
+	d = bpkfs_data_get_by_name(h, file);
+	if (!d)
+		goto out;
+
+	if (!bpkfs_is_crc_file(d)) {
+		d->fd = open(priv->filename, O_RDONLY);
+		if (d->fd < 0) {
+			ret = d->fd;
+			goto out;
+		}
+
+		lseek(d->fd, d->offset, SEEK_SET);
+	}
+
+	f->size = d->size;
+	f->inode = d;
+	ret = 0;
+
+out:
+	free(tmp);
+	free(tmp2);
+	return ret;
+}
+
+static int bpkfs_close(struct device_d *dev, FILE *file)
+{
+	struct bpkfs_handle_data *d = file->inode;
+
+	close(d->fd);
+
+	return 0;
+}
+
+static int bpkfs_read(struct device_d *dev, FILE *file, void *buf, size_t insize)
+{
+	struct bpkfs_handle_data *d = file->inode;
+
+	if (bpkfs_is_crc_file(d)) {
+		memcpy(buf, &d->data[d->pos], insize);
+		return insize;
+	} else {
+		return read(d->fd, buf, insize);
+	}
+}
+
+static loff_t bpkfs_lseek(struct device_d *dev, FILE *file, loff_t pos)
+{
+	struct bpkfs_handle_data *d = file->inode;
+
+	if (!bpkfs_is_crc_file(d))
+		lseek(d->fd, d->offset + pos, SEEK_SET);
+
+	d->pos = pos;
+
+	return pos;
+}
+
+struct somfy_readdir {
+	struct bpkfs_handle_hw *h;
+	struct bpkfs_handle_data *d;
+
+	DIR dir;
+};
+
+static DIR *bpkfs_opendir(struct device_d *dev, const char *pathname)
+{
+	struct bpkfs_handle *priv = dev->priv;
+	struct somfy_readdir *sdir;
+	DIR *dir;
+
+	sdir = xzalloc(sizeof(*sdir));
+	dir = &sdir->dir;
+	dir->priv = sdir;
+
+	if (pathname[0] == '/')
+		pathname++;
+
+	if (!strlen(pathname)) {
+		if (list_empty(&priv->list))
+			return dir;
+
+		sdir->h = list_first_entry(&priv->list,
+					struct bpkfs_handle_hw, list_hw_id);
+	} else {
+		sdir->h = bpkfs_hw_id_get_by_name(priv, pathname);
+		if (!sdir->h || list_empty(&sdir->h->list_data))
+			return dir;
+
+		sdir->d = list_first_entry(&sdir->h->list_data,
+					struct bpkfs_handle_data, list);
+	}
+
+	return dir;
+}
+
+static struct dirent *bpkfs_readdir(struct device_d *dev, DIR *dir)
+{
+	struct bpkfs_handle *priv = dev->priv;
+	struct somfy_readdir *sdir = dir->priv;
+	struct bpkfs_handle_hw *h = sdir->h;
+	struct bpkfs_handle_data *d = sdir->d;
+
+	if (!h)
+		return NULL;
+
+	if (!d) {
+		if (&h->list_hw_id == &priv->list)
+			return NULL;
+
+		strcpy(dir->d.d_name, h->name);
+		sdir->h = list_entry(h->list_hw_id.next, struct bpkfs_handle_hw, list_hw_id);
+	} else {
+		if (&d->list == &h->list_data)
+			return NULL;
+
+		strcpy(dir->d.d_name, d->name);
+		sdir->d = list_entry(d->list.next, struct bpkfs_handle_data, list);
+	}
+
+	return &dir->d;
+}
+
+static int bpkfs_closedir(struct device_d *dev, DIR *dir)
+{
+	struct somfy_readdir *sdir = dir->priv;
+
+	free(sdir);
+	return 0;
+}
+
+static int bpkfs_stat(struct device_d *dev, const char *filename, struct stat *s)
+{
+	struct bpkfs_handle *priv = dev->priv;
+	struct bpkfs_handle_data *d;
+	struct bpkfs_handle_hw *h;
+	char *dir, *file;
+	int ret = -EINVAL;
+	char *tmp = xstrdup(filename);
+	char *tmp2 = xstrdup(filename);
+
+	dir = dirname(tmp);
+
+	if (filename[0] == '/')
+		filename++;
+
+	if (dir[0] == '/')
+		dir++;
+
+	if (!strlen(dir)) {
+		h = bpkfs_hw_id_get_by_name(priv, filename);
+		if (!h)
+			goto out;
+
+		s->st_size = strlen(filename);
+		s->st_mode = S_IFDIR | S_IRWXU | S_IRWXG | S_IRWXO;
+		ret = 0;
+		goto out;
+	}
+	h = bpkfs_hw_id_get_by_name(priv, dir);
+	if (!h)
+		goto out;
+
+	file = basename(tmp2);
+	d = bpkfs_data_get_by_name(h, file);
+	if (!d)
+		goto out;
+
+	s->st_size = d->size;
+	s->st_mode = S_IFREG | S_IRWXU | S_IRWXG | S_IRWXO;
+
+	ret = 0;
+
+out:
+	free(tmp);
+	free(tmp2);
+	return ret;
+}
+
+static void bpkfs_remove_data(struct bpkfs_handle_hw *h)
+{
+	struct bpkfs_handle_data *d, *tmp;
+
+	list_for_each_entry_safe(d, tmp, &h->list_data, list) {
+		free(d->name);
+		free(d);
+	}
+}
+
+static void bpkfs_remove(struct device_d *dev)
+{
+	struct bpkfs_handle *priv = dev->priv;
+	struct bpkfs_handle_hw *h, *tmp;
+
+	list_for_each_entry_safe(h, tmp, &priv->list, list_hw_id) {
+		bpkfs_remove_data(h);
+		free(h->name);
+		free(h);
+	}
+
+	free(priv);
+}
+
+static int bpkfs_probe(struct device_d *dev)
+{
+	struct fs_device_d *fsdev = dev_to_fs_device(dev);
+	struct bpkfs_handle *priv;
+	struct bpkfs_header *header;
+	struct bpkfs_data_header data_header;
+	int ret = 0;
+	uint32_t checksum, crc;
+	uint64_t size;
+	int i;
+	size_t offset = 0;
+	char *buf;
+	int fd;
+
+	priv = xzalloc(sizeof(struct bpkfs_handle));
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
+		struct bpkfs_handle_data *d;
+		struct bpkfs_handle_hw *h;
+		const char *type;
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
+		d->hw_id = be32_to_cpu(data_header.hw_id);
+		d->size = be64_to_cpu(data_header.size);
+		d->offset = offset;
+		d->crc = be32_to_cpu(data_header.crc);
+		type = bpkfs_type_to_str(d->type);
+
+		h = bpkfs_get_or_add_hw_id(priv, d->hw_id);
+
+		if (!type) {
+			type = "unknown";
+			d->name = asprintf("%s_%08x", type, d->type);
+		} else {
+			d->name = xstrdup(type);
+		}
+
+		dev_dbg(dev, "%d: type = 0x%x => %s\n", i, d->type, d->name);
+		dev_dbg(dev, "%d: size = %llu\n", i, d->size);
+		dev_dbg(dev, "%d: offset = %d\n", i, d->offset);
+
+		dev_dbg(dev, "%d: hw_id = 0x%x => %s\n", i, h->hw_id, h->name);
+
+		offset += d->size;
+		size -= d->size;
+
+		if (bpkfs_get_by_type(priv, d->hw_id, d->type)) {
+			dev_info(dev, "ignore data %d type %s already present, ignored\n",
+				 i, type);
+			free(d);
+			continue;
+		}
+
+		list_add_tail(&d->list, &h->list_data);
+		priv->nb_data_entries++;
+
+		ret = lseek(fd, d->size, SEEK_CUR);
+		if (ret < 0) {
+			dev_err(dev, "could not seek: %s\n", errno_str());
+			goto err;
+		}
+
+		type = d->name;
+		d = xzalloc(sizeof(*d));
+		d->type = be32_to_cpu(data_header.type);
+		d->name = asprintf("%s.crc", type);
+		d->type |= (1 << 31);
+		d->size = 8;
+		sprintf(d->data, "%08x", be32_to_cpu(data_header.crc));
+		list_add_tail(&d->list, &h->list_data);
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
+	bpkfs_remove(dev);
+
+	return ret;
+}
+
+static struct fs_driver_d bpkfs_driver = {
+	.open      = bpkfs_open,
+	.close     = bpkfs_close,
+	.read      = bpkfs_read,
+	.lseek     = bpkfs_lseek,
+	.opendir   = bpkfs_opendir,
+	.readdir   = bpkfs_readdir,
+	.closedir  = bpkfs_closedir,
+	.stat      = bpkfs_stat,
+	.flags     = 0,
+	.type = filetype_bpk,
+	.drv = {
+		.probe  = bpkfs_probe,
+		.remove = bpkfs_remove,
+		.name = "bpkfs",
+	}
+};
+
+static int bpkfs_init(void)
+{
+	return register_fs_driver(&bpkfs_driver);
+}
+coredevice_initcall(bpkfs_init);
diff --git a/include/bpkfs.h b/include/bpkfs.h
new file mode 100644
index 0000000..ccb56c1
--- /dev/null
+++ b/include/bpkfs.h
@@ -0,0 +1,68 @@
+/*
+ * Copyright (c) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * under GPLv2 only
+ */
+
+#ifndef __BPKFS_H__
+#define __BPKFS_H__
+
+#include <linux/types.h>
+#include <linux/list.h>
+
+#define BPKFS_TYPE_BL	0x50424c00
+#define BPKFS_TYPE_BLV	0x50424c56
+#define BPKFS_TYPE_DSC	0x44456343
+#define BPKFS_TYPE_KER	0x504b4552
+#define BPKFS_TYPE_RFS	0x50524653
+#define BPKFS_TYPE_FMV	0x46575600
+
+struct bpkfs_header {
+	uint32_t magic;
+	uint32_t version;
+	uint64_t size;
+	uint32_t crc;
+	uint64_t spare;
+} __attribute__ ((packed)) ;
+
+struct bpkfs_data_header {
+	uint32_t type;
+	uint64_t size;
+	uint32_t crc;
+	uint32_t hw_id;
+	uint32_t spare;
+} __attribute__ ((packed)) ;
+
+struct bpkfs_handle_hw {
+	char *name;
+	uint32_t hw_id;
+
+	struct list_head list_data;
+	struct list_head list_hw_id;
+};
+
+struct bpkfs_handle_data {
+	char *name;
+	uint32_t type;
+	uint32_t hw_id;
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
+struct bpkfs_handle {
+	struct bpkfs_header header;
+	int nb_data_entries;
+	char *filename;
+
+	struct list_head list;
+};
+
+#endif /* __BPKFS_H__ */
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
