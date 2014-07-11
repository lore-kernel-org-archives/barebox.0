Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X5VPG-0006zO-R3
 for barebox@lists.infradead.org; Fri, 11 Jul 2014 07:38:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 11 Jul 2014 09:36:28 +0200
Message-Id: <1405064190-1977-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1405064190-1977-1-git-send-email-s.hauer@pengutronix.de>
References: <1405064190-1977-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/7] fs: implement EFI filesystem driver
To: barebox@lists.infradead.org

This implements a filesystem driver which uses the EFI Simple File
System Protocol to provide files from EFI to barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/Kconfig  |   8 +
 fs/Makefile |   1 +
 fs/efi.c    | 563 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 572 insertions(+)
 create mode 100644 fs/efi.c

diff --git a/fs/Kconfig b/fs/Kconfig
index 3724b34..21690de 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -41,6 +41,14 @@ config FS_NFS
 	bool
 	prompt "nfs support"
 
+config FS_EFI
+	depends on ARCH_EFI
+	bool
+	prompt "EFI filesystem support"
+	help
+	  This filesystem driver provides access to the filesystems provided
+	  by the EFI Firmware via the EFI Simple File System Protocol.
+
 source fs/fat/Kconfig
 source fs/ubifs/Kconfig
 
diff --git a/fs/Makefile b/fs/Makefile
index d3465ed..f027851 100644
--- a/fs/Makefile
+++ b/fs/Makefile
@@ -11,3 +11,4 @@ obj-$(CONFIG_FS_OMAP4_USBBOOT)	+= omap4_usbbootfs.o
 obj-$(CONFIG_FS_NFS)	+= nfs.o parseopt.o
 obj-$(CONFIG_FS_BPKFS) += bpkfs.o
 obj-$(CONFIG_FS_UIMAGEFS)	+= uimagefs.o
+obj-$(CONFIG_FS_EFI)	 += efi.o
diff --git a/fs/efi.c b/fs/efi.c
new file mode 100644
index 0000000..f096f91
--- /dev/null
+++ b/fs/efi.c
@@ -0,0 +1,563 @@
+/*
+ * efi.c - EFI filesystem mirror driver
+ *
+ * Copyright (c) 2014 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <malloc.h>
+#include <fs.h>
+#include <string.h>
+#include <command.h>
+#include <errno.h>
+#include <linux/stat.h>
+#include <xfuncs.h>
+#include <fcntl.h>
+#include <wchar.h>
+#include <efi.h>
+#include <mach/efi.h>
+#include <mach/efi-device.h>
+
+/* Open modes */
+#define EFI_FILE_MODE_READ      0x0000000000000001
+#define EFI_FILE_MODE_WRITE     0x0000000000000002
+#define EFI_FILE_MODE_CREATE    0x8000000000000000
+
+/* File attributes */
+#define EFI_FILE_READ_ONLY      0x0000000000000001
+#define EFI_FILE_HIDDEN         0x0000000000000002
+#define EFI_FILE_SYSTEM         0x0000000000000004
+#define EFI_FILE_RESERVIED      0x0000000000000008
+#define EFI_FILE_DIRECTORY      0x0000000000000010
+#define EFI_FILE_ARCHIVE        0x0000000000000020
+#define EFI_FILE_VALID_ATTR     0x0000000000000037
+
+#define EFI_FILE_HANDLE_REVISION         0x00010000
+struct efi_file_handle {
+	uint64_t Revision;
+	efi_status_t(EFIAPI *open)(struct efi_file_handle *File,
+			struct efi_file_handle **NewHandle, s16 *FileName,
+			uint64_t OpenMode, uint64_t Attributes);
+	efi_status_t(EFIAPI *close)(struct efi_file_handle *File);
+	efi_status_t(EFIAPI *delete)(struct efi_file_handle *File);
+	efi_status_t(EFIAPI *read)(struct efi_file_handle *File, unsigned long *BufferSize,
+			void *Buffer);
+	efi_status_t(EFIAPI *write)(struct efi_file_handle *File,
+			unsigned long *BufferSize, void *Buffer);
+	efi_status_t(EFIAPI *get_position)(struct efi_file_handle *File,
+			uint64_t *Position);
+	efi_status_t(EFIAPI *set_position)(struct efi_file_handle *File,
+			uint64_t Position);
+	efi_status_t(EFIAPI *get_info)(struct efi_file_handle *File,
+			efi_guid_t *InformationType, unsigned long *BufferSize,
+			void *Buffer);
+	efi_status_t(EFIAPI *set_info)(struct efi_file_handle *File,
+			efi_guid_t *InformationType, unsigned long BufferSize,
+			void *Buffer);
+	efi_status_t(EFIAPI *flush)(struct efi_file_handle *File);
+};
+
+#define EFI_FILE_IO_INTERFACE_REVISION   0x00010000
+
+struct efi_file_io_interface {
+	uint64_t Revision;
+	efi_status_t(EFIAPI *open_volume)(
+			struct efi_file_io_interface *This,
+			struct efi_file_handle **Root);
+};
+
+struct efi_file_info {
+	uint64_t Size;
+	uint64_t FileSize;
+	uint64_t PhysicalSize;
+	efi_time_t CreateTime;
+	efi_time_t LastAccessTime;
+	efi_time_t ModificationTime;
+	uint64_t Attribute;
+	s16 FileName[1];
+};
+
+typedef unsigned short wchar_t;
+
+struct efifs_priv {
+	struct efi_file_handle *root_dir;
+	struct efi_file_io_interface *protocol;
+};
+
+struct efifs_file {
+	struct efi_file_handle *entry;
+};
+
+struct efifs_dir {
+	DIR dir;
+	struct efi_file_handle *entries;
+};
+
+static wchar_t *path_to_efi(const char *path)
+{
+	wchar_t *dst;
+	wchar_t *ret;
+
+	if (!*path)
+		return strdup_char_to_wchar("\\");
+
+	dst = strdup_char_to_wchar(path);
+	if (!dst)
+		return NULL;
+
+	ret = dst;
+
+	while (*dst) {
+		if (*dst == '/')
+			*dst = '\\';
+		dst++;
+	}
+
+	return ret;
+}
+
+static int efifs_create(struct device_d *dev, const char *pathname, mode_t mode)
+{
+	struct efifs_priv *priv = dev->priv;
+	wchar_t *efi_path = path_to_efi(pathname);
+	struct efi_file_handle *entry;
+	efi_status_t efiret;
+
+	efiret = priv->root_dir->open(priv->root_dir, &entry, efi_path,
+			EFI_FILE_MODE_READ | EFI_FILE_MODE_WRITE | EFI_FILE_MODE_CREATE,
+			0ULL);
+
+	free(efi_path);
+
+	if (EFI_ERROR(efiret)) {
+		printf("%s %s: %s\n", __func__, pathname, efi_strerror(efiret));
+		return -efi_errno(efiret);
+	}
+
+	entry->close(entry);
+
+	return 0;
+}
+
+static int efifs_unlink(struct device_d *dev, const char *pathname)
+{
+	struct efifs_priv *priv = dev->priv;
+	wchar_t *efi_path = path_to_efi(pathname);
+	struct efi_file_handle *entry;
+	efi_status_t efiret;
+
+	efiret = priv->root_dir->open(priv->root_dir, &entry, efi_path,
+			EFI_FILE_MODE_READ | EFI_FILE_MODE_WRITE, 0ULL);
+
+	free(efi_path);
+
+	if (EFI_ERROR(efiret))
+		return -efi_errno(efiret);
+
+	efiret = entry->delete(entry);
+	if (EFI_ERROR(efiret))
+		return -efi_errno(efiret);
+
+	return 0;
+}
+
+static int efifs_mkdir(struct device_d *dev, const char *pathname)
+{
+	struct efifs_priv *priv = dev->priv;
+	wchar_t *efi_path = path_to_efi(pathname);
+	struct efi_file_handle *entry;
+	efi_status_t efiret;
+
+	efiret = priv->root_dir->open(priv->root_dir, &entry, efi_path,
+			EFI_FILE_MODE_READ | EFI_FILE_MODE_WRITE | EFI_FILE_MODE_CREATE,
+			EFI_FILE_DIRECTORY);
+
+	free(efi_path);
+
+	if (EFI_ERROR(efiret)) {
+		printf("%s %s: %s\n", __func__, pathname, efi_strerror(efiret));
+		return -efi_errno(efiret);
+	}
+
+	entry->close(entry);
+
+	return 0;
+}
+
+static int efifs_rmdir(struct device_d *dev, const char *pathname)
+{
+	return efifs_unlink(dev, pathname);
+}
+
+static int efifs_open(struct device_d *dev, FILE *f, const char *filename)
+{
+	struct efifs_priv *priv = dev->priv;
+	efi_status_t efiret;
+	struct efifs_file *ufile;
+	wchar_t *efi_path = path_to_efi(filename);
+	struct efi_file_info *info;
+	unsigned long bufsize = 1024;
+	uint64_t efimode = EFI_FILE_MODE_READ;
+	int ret;
+
+	ufile = xzalloc(sizeof(*ufile));
+
+	if (f->flags & O_ACCMODE)
+		efimode |= EFI_FILE_MODE_WRITE;
+
+	efiret = priv->root_dir->open(priv->root_dir, &ufile->entry, efi_path,
+			efimode, 0ULL);
+	if (EFI_ERROR(efiret)) {
+		pr_err("%s: unable to Open %s: %s\n", __func__,
+				filename, efi_strerror(efiret));
+		free(ufile);
+		return -efi_errno(efiret);
+	}
+
+	free(efi_path);
+
+	info = xzalloc(1024);
+	efiret = ufile->entry->get_info(ufile->entry, &efi_file_info_id, &bufsize, info);
+	if (EFI_ERROR(efiret)) {
+		pr_err("%s: unable to GetInfo %s: %s\n", __func__,
+				filename, efi_strerror(efiret));
+		ret = -efi_errno(efiret);
+		goto out;
+	}
+
+	f->size = info->FileSize;
+
+	free(info);
+	f->inode = ufile;
+
+	return 0;
+out:
+	free(info);
+	free(ufile);
+	return ret;
+}
+
+static int efifs_close(struct device_d *dev, FILE *f)
+{
+	struct efifs_file *ufile = f->inode;
+
+	ufile->entry->close(ufile->entry);
+
+	free(ufile);
+
+	return 0;
+}
+
+static int efifs_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
+{
+	struct efifs_file *ufile = f->inode;
+	efi_status_t efiret;
+	unsigned long bufsize = insize;
+
+	efiret = ufile->entry->read(ufile->entry, &bufsize, buf);
+	if (EFI_ERROR(efiret)) {
+		return -efi_errno(efiret);
+	}
+
+	return bufsize;
+}
+
+static int efifs_write(struct device_d *_dev, FILE *f, const void *buf, size_t insize)
+{
+	struct efifs_file *ufile = f->inode;
+	efi_status_t efiret;
+	unsigned long bufsize = insize;
+
+	efiret = ufile->entry->write(ufile->entry, &bufsize, (void *)buf);
+	if (EFI_ERROR(efiret)) {
+		pr_err("%s: unable to write: %s\n", __func__, efi_strerror(efiret));
+		return -efi_errno(efiret);
+	}
+
+	return bufsize;
+}
+
+static loff_t efifs_lseek(struct device_d *dev, FILE *f, loff_t pos)
+{
+	struct efifs_file *ufile = f->inode;
+	efi_status_t efiret;
+
+	f->pos = pos;
+
+	efiret = ufile->entry->set_position(ufile->entry, pos);
+	if (EFI_ERROR(efiret)) {
+		return -efi_errno(efiret);
+	}
+
+	return f->pos;
+}
+
+static int efifs_truncate(struct device_d *dev, FILE *f, unsigned long size)
+{
+	struct efifs_file *ufile = f->inode;
+	efi_status_t efiret;
+	struct efi_file_info *info;
+	unsigned long bufsize = 1024;
+	int ret;
+
+	info = xzalloc(1024);
+
+	efiret = ufile->entry->get_info(ufile->entry, &efi_file_info_id, &bufsize, info);
+	if (EFI_ERROR(efiret)) {
+		pr_err("%s: unable to GetInfo: %s\n", __func__, efi_strerror(efiret));
+		ret = -efi_errno(efiret);
+		goto out;
+	}
+
+	if (size > info->FileSize)
+		return 0;
+
+	info->FileSize = size;
+
+	efiret = ufile->entry->set_info(ufile->entry, &efi_file_info_id, bufsize, info);
+	if (EFI_ERROR(efiret)) {
+		pr_err("%s: unable to SetInfo: %s\n", __func__, efi_strerror(efiret));
+		ret = -efi_errno(efiret);
+		goto out;
+	}
+
+	return 0;
+out:
+	return ret;
+}
+
+static DIR *efifs_opendir(struct device_d *dev, const char *pathname)
+{
+	struct efifs_priv *priv = dev->priv;
+	efi_status_t efiret;
+	struct efifs_dir *udir;
+	wchar_t *efi_path = path_to_efi(pathname);
+
+	udir = xzalloc(sizeof(*udir));
+
+	efiret = priv->root_dir->open(priv->root_dir, &udir->entries, efi_path, EFI_FILE_MODE_READ, 0ULL);
+	if (EFI_ERROR(efiret)) {
+		free(udir);
+		return NULL;
+	}
+
+	free(efi_path);
+
+	return &udir->dir;
+}
+
+static struct dirent *efifs_readdir(struct device_d *dev, DIR *dir)
+{
+	struct efifs_dir *udir = container_of(dir, struct efifs_dir, dir);
+	efi_status_t efiret;
+	unsigned long bufsize = 256;
+	s16 buf[256];
+	struct efi_file_info *f;
+
+	efiret = udir->entries->read(udir->entries, &bufsize, buf);
+	if (EFI_ERROR(efiret) || bufsize == 0)
+		return NULL;
+
+	f = (struct efi_file_info *)buf;
+
+	strcpy_wchar_to_char(dir->d.d_name, f->FileName);
+
+	return &dir->d;
+}
+
+static int efifs_closedir(struct device_d *dev, DIR *dir)
+{
+	struct efifs_dir *udir = container_of(dir, struct efifs_dir, dir);
+
+	udir->entries->close(udir->entries);
+
+	free(dir);
+
+	return 0;
+}
+
+static int efifs_stat(struct device_d *dev, const char *filename, struct stat *s)
+{
+	struct efifs_priv *priv = dev->priv;
+	wchar_t *efi_path;
+	efi_status_t efiret;
+	struct efi_file_handle *entry;
+	struct efi_file_info *info;
+	unsigned long bufsize = 1024;
+	int ret;
+
+	info = xzalloc(1024);
+
+	efi_path = path_to_efi(filename);
+
+	efiret = priv->root_dir->open(priv->root_dir, &entry, efi_path, EFI_FILE_MODE_READ, 0ULL);
+	if (EFI_ERROR(efiret)) {
+		pr_err("%s: unable to Open %s: %s\n", __func__, filename,
+				efi_strerror(efiret));
+		ret = -efi_errno(efiret);
+		goto out_free;
+	}
+
+	efiret = entry->get_info(entry, &efi_file_info_id, &bufsize, info);
+	if (EFI_ERROR(efiret)) {
+		pr_err("%s: unable to GetInfo %s: %s\n", __func__, filename,
+				efi_strerror(efiret));
+		ret = -efi_errno(efiret);
+		goto out;
+	}
+
+	s->st_size = info->FileSize;
+	s->st_mode = 00555;
+
+	if (!info->Attribute & EFI_FILE_READ_ONLY)
+		s->st_mode |= 00222;
+
+	if (info->Attribute & EFI_FILE_DIRECTORY)
+		s->st_mode |= S_IFDIR;
+	else
+		s->st_mode |= S_IFREG;
+
+	ret = 0;
+out:
+	entry->close(entry);
+out_free:
+	free(efi_path);
+	free(info);
+
+	return ret;
+}
+
+static int efifs_symlink(struct device_d *dev, const char *pathname,
+		       const char *newpath)
+{
+	return -EROFS;
+}
+
+static int efifs_readlink(struct device_d *dev, const char *pathname,
+			char *buf, size_t bufsiz)
+{
+	return -ENOENT;
+}
+
+static int efifs_probe(struct device_d *dev)
+{
+	struct fs_device_d *fsdev = dev_to_fs_device(dev);
+	struct efifs_priv *priv;
+	efi_status_t efiret;
+	struct efi_file_handle *file;
+	struct device_d *efi = get_device_by_name(fsdev->backingstore);
+	struct efi_device *udev = container_of(efi, struct efi_device, dev);
+
+	priv = xzalloc(sizeof(struct efifs_priv));
+	priv->protocol = udev->protocol;
+	dev->priv = priv;
+	dev->parent = &udev->dev;
+
+	efiret = priv->protocol->open_volume(priv->protocol, &file);
+	if (EFI_ERROR(efiret)) {
+		dev_err(dev, "failed to open volume: %s\n", efi_strerror(efiret));
+		return -efi_errno(efiret);
+	}
+
+	priv->root_dir = file;
+
+	return 0;
+}
+
+static void efifs_remove(struct device_d *dev)
+{
+	free(dev->priv);
+}
+
+static struct fs_driver_d efifs_driver = {
+	.create    = efifs_create,
+	.unlink    = efifs_unlink,
+	.open      = efifs_open,
+	.close     = efifs_close,
+	.truncate  = efifs_truncate,
+	.read      = efifs_read,
+	.write     = efifs_write,
+	.lseek     = efifs_lseek,
+	.mkdir     = efifs_mkdir,
+	.rmdir     = efifs_rmdir,
+	.opendir   = efifs_opendir,
+	.readdir   = efifs_readdir,
+	.closedir  = efifs_closedir,
+	.stat      = efifs_stat,
+	.symlink   = efifs_symlink,
+	.readlink  = efifs_readlink,
+	.drv = {
+		.probe  = efifs_probe,
+		.remove = efifs_remove,
+		.name = "efifs",
+	}
+};
+
+static int efifs_init(void)
+{
+	return register_fs_driver(&efifs_driver);
+}
+
+coredevice_initcall(efifs_init);
+
+static int index;
+
+int efi_fs_probe(struct efi_device *efidev)
+{
+	char *path, *device;
+	int ret;
+	struct efi_file_io_interface *volume;
+
+	if (efi_loaded_image)
+		BS->handle_protocol(efi_loaded_image->device_handle,
+				&efi_simple_file_system_protocol_guid, (void*)&volume);
+
+	if (efidev->protocol == volume)
+		path = xstrdup("/boot");
+	else
+		path = asprintf("/efi%d", index);
+	device = asprintf("%s", dev_name(&efidev->dev));
+
+	ret = make_directory(path);
+	if (ret)
+		goto out;
+
+	ret = mount(device, "efifs", path, NULL);
+	if (ret)
+		goto out;
+
+	index++;
+
+	dev_info(&efidev->dev, "mounted on %s\n", path);
+
+	ret = 0;
+out:
+	free(path);
+	free(device);
+
+	return ret;
+}
+
+static struct efi_driver efi_fs_driver = {
+        .driver = {
+		.name  = "efi-fs",
+	},
+        .probe = efi_fs_probe,
+	.guid = EFI_SIMPLE_FILE_SYSTEM_PROTOCOL_GUID,
+};
+device_efi_driver(efi_fs_driver);
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
