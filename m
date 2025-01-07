Delivery-date: Tue, 07 Jan 2025 09:04:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV4ZQ-000ErH-25
	for lore@lore.pengutronix.de;
	Tue, 07 Jan 2025 09:04:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV4Yv-0001sx-Kq
	for lore@pengutronix.de; Tue, 07 Jan 2025 09:04:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u9AcREwhFd+tu22g0BzYU7mP0gTSBw2qtRK7r0a+e+Y=; b=Vo3FKdqRa2NH10xifJK7WdXVL1
	Psu/naUCBAWFk6dijDuR5ffwGkxCXB2Xv3NZMq5BfJBWDQNmvxWjPGq++umIstq2cuMtDgHTVlcce
	O1LibggAsOXcOeLdACXKCwm8wUm6YKLkgCOM6AYu5VrY1EVGN9P92J+QYmUqEGDMPkIEm2egNo8B/
	lQlTB47RXAP00DyYyKPF0R3LHT7nNGETMMvL0AYRW7K5urL8/c7ZOrDWv13R5qI3JljxPY0ya8rH4
	Lqq3B1FXLcvIrsndREIz0lONm+pCud+HWaUWjHFSjDe5Fv3nT8hKx9RAZ83lVcFp80qjcxFItcXCC
	UbgQhBbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tV4XN-00000003q5E-169E;
	Tue, 07 Jan 2025 08:02:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tV4VI-00000003pVN-2qTk
	for barebox@lists.infradead.org;
	Tue, 07 Jan 2025 08:00:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV4VH-0000ru-Fk; Tue, 07 Jan 2025 08:59:55 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV4VG-007Iqt-1Z;
	Tue, 07 Jan 2025 08:59:55 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV4VH-00Bv76-0X;
	Tue, 07 Jan 2025 08:59:55 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  7 Jan 2025 08:59:39 +0100
Message-Id: <20250107075939.2841119-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250107075939.2841119-1-a.fatoum@pengutronix.de>
References: <20250107075939.2841119-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_235957_187876_1951796B 
X-CRM114-Status: GOOD (  17.50  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 8/8] fs: retire FILE typdef
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The FILE typedef is confusing: ISO C defines the type for buffered I/O,
but we don't have buffered I/O in barebox and instead use it for file
descriptor information, which is struct fd / struct file in Linux.

To remove this confusion, let's retire this type and replace it with
struct file everywhere.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/bpkfs.c             |  8 +++----
 fs/cramfs/cramfs.c     |  2 +-
 fs/devfs.c             | 24 +++++++++----------
 fs/efi.c               | 12 +++++-----
 fs/efivarfs.c          | 10 ++++----
 fs/ext4/ext_barebox.c  |  2 +-
 fs/fat/fat.c           | 12 +++++-----
 fs/fs.c                | 54 +++++++++++++++++++++---------------------
 fs/jffs2/fs.c          |  6 ++---
 fs/nfs.c               | 12 +++++-----
 fs/omap4_usbbootfs.c   |  6 ++---
 fs/pstore/fs.c         |  8 +++----
 fs/ramfs.c             |  8 +++----
 fs/ratpfs.c            | 10 ++++----
 fs/smhfs.c             | 16 ++++++-------
 fs/squashfs/squashfs.c |  6 ++---
 fs/tftp.c              | 12 +++++-----
 fs/ubifs/ubifs.c       |  6 ++---
 fs/ubootvarfs.c        |  8 +++----
 fs/uimagefs.c          | 10 ++++----
 include/fs.h           | 24 +++++++++----------
 include/linux/fs.h     |  6 ++---
 22 files changed, 131 insertions(+), 131 deletions(-)

diff --git a/fs/bpkfs.c b/fs/bpkfs.c
index 18ac70143e99..b12c1a8ac25e 100644
--- a/fs/bpkfs.c
+++ b/fs/bpkfs.c
@@ -127,7 +127,7 @@ static struct bpkfs_handle_data *bpkfs_get_by_type(
 	return NULL;
 }
 
-static int bpkfs_open(struct device *dev, FILE *f, const char *filename)
+static int bpkfs_open(struct device *dev, struct file *f, const char *filename)
 {
 	struct bpkfs_handle *priv = dev->priv;
 	struct bpkfs_handle_data *d;
@@ -171,7 +171,7 @@ static int bpkfs_open(struct device *dev, FILE *f, const char *filename)
 	return ret;
 }
 
-static int bpkfs_close(struct device *dev, FILE *file)
+static int bpkfs_close(struct device *dev, struct file *file)
 {
 	struct bpkfs_handle_data *d = file->private_data;
 
@@ -180,7 +180,7 @@ static int bpkfs_close(struct device *dev, FILE *file)
 	return 0;
 }
 
-static int bpkfs_read(struct device *dev, FILE *file, void *buf,
+static int bpkfs_read(struct device *dev, struct file *file, void *buf,
 		      size_t insize)
 {
 	struct bpkfs_handle_data *d = file->private_data;
@@ -193,7 +193,7 @@ static int bpkfs_read(struct device *dev, FILE *file, void *buf,
 	}
 }
 
-static int bpkfs_lseek(struct device *dev, FILE *file, loff_t pos)
+static int bpkfs_lseek(struct device *dev, struct file *file, loff_t pos)
 {
 	struct bpkfs_handle_data *d = file->private_data;
 
diff --git a/fs/cramfs/cramfs.c b/fs/cramfs/cramfs.c
index 56542fee83f3..e554ebef6fa8 100644
--- a/fs/cramfs/cramfs.c
+++ b/fs/cramfs/cramfs.c
@@ -162,7 +162,7 @@ static int cramfs_read_file(struct inode *inode, unsigned long offset,
 	return outsize;
 }
 
-static int cramfs_read(struct device *_dev, FILE *f, void *buf, size_t size)
+static int cramfs_read(struct device *_dev, struct file *f, void *buf, size_t size)
 {
 	return cramfs_read_file(f->f_inode, f->f_pos, buf, size);
 }
diff --git a/fs/devfs.c b/fs/devfs.c
index 51bf0f65490a..f6db6f716ad1 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -35,14 +35,14 @@ struct devfs_inode {
 	struct cdev *cdev;
 };
 
-static int devfs_read(struct device *_dev, FILE *f, void *buf, size_t size)
+static int devfs_read(struct device *_dev, struct file *f, void *buf, size_t size)
 {
 	struct cdev *cdev = f->private_data;
 
 	return cdev_read(cdev, buf, size, f->f_pos, f->f_flags);
 }
 
-static int devfs_write(struct device *_dev, FILE *f, const void *buf,
+static int devfs_write(struct device *_dev, struct file *f, const void *buf,
 		       size_t size)
 {
 	struct cdev *cdev = f->private_data;
@@ -53,14 +53,14 @@ static int devfs_write(struct device *_dev, FILE *f, const void *buf,
 	return cdev_write(cdev, buf, size, f->f_pos, f->f_flags);
 }
 
-static int devfs_lseek(struct device *_dev, FILE *f, loff_t pos)
+static int devfs_lseek(struct device *_dev, struct file *f, loff_t pos)
 {
 	struct cdev *cdev = f->private_data;
 
 	return cdev_lseek(cdev, pos);
 }
 
-static int devfs_erase(struct device *_dev, FILE *f, loff_t count,
+static int devfs_erase(struct device *_dev, struct file *f, loff_t count,
 		       loff_t offset, enum erase_type type)
 {
 	struct cdev *cdev = f->private_data;
@@ -77,7 +77,7 @@ static int devfs_erase(struct device *_dev, FILE *f, loff_t count,
 	return cdev_erase(cdev, count, offset);
 }
 
-static int devfs_protect(struct device *dev, FILE *f, size_t count,
+static int devfs_protect(struct device *dev, struct file *f, size_t count,
 			 loff_t offset, int prot)
 {
 	struct cdev *cdev = f->private_data;
@@ -85,7 +85,7 @@ static int devfs_protect(struct device *dev, FILE *f, size_t count,
 	return cdev_protect(cdev, count, offset, prot);
 }
 
-static int devfs_discard_range(struct device *dev, FILE *f, loff_t count,
+static int devfs_discard_range(struct device *dev, struct file *f, loff_t count,
 			       loff_t offset)
 {
 	struct cdev *cdev = f->private_data;
@@ -93,14 +93,14 @@ static int devfs_discard_range(struct device *dev, FILE *f, loff_t count,
 	return cdev_discard_range(cdev, count, offset);
 }
 
-static int devfs_memmap(struct device *_dev, FILE *f, void **map, int flags)
+static int devfs_memmap(struct device *_dev, struct file *f, void **map, int flags)
 {
 	struct cdev *cdev = f->private_data;
 
 	return cdev_memmap(cdev, map, flags);
 }
 
-static int devfs_open(struct device *_dev, FILE *f, const char *filename)
+static int devfs_open(struct device *_dev, struct file *f, const char *filename)
 {
 	struct inode *inode = f->f_inode;
 	struct devfs_inode *node = container_of(inode, struct devfs_inode, inode);
@@ -113,28 +113,28 @@ static int devfs_open(struct device *_dev, FILE *f, const char *filename)
 	return cdev_open(cdev, f->f_flags);
 }
 
-static int devfs_close(struct device *_dev, FILE *f)
+static int devfs_close(struct device *_dev, struct file *f)
 {
 	struct cdev *cdev = f->private_data;
 
 	return cdev_close(cdev);
 }
 
-static int devfs_flush(struct device *_dev, FILE *f)
+static int devfs_flush(struct device *_dev, struct file *f)
 {
 	struct cdev *cdev = f->private_data;
 
 	return cdev_flush(cdev);
 }
 
-static int devfs_ioctl(struct device *_dev, FILE *f, unsigned int request, void *buf)
+static int devfs_ioctl(struct device *_dev, struct file *f, unsigned int request, void *buf)
 {
 	struct cdev *cdev = f->private_data;
 
 	return cdev_ioctl(cdev, request, buf);
 }
 
-static int devfs_truncate(struct device *dev, FILE *f, loff_t size)
+static int devfs_truncate(struct device *dev, struct file *f, loff_t size)
 {
 	struct cdev *cdev = f->private_data;
 
diff --git a/fs/efi.c b/fs/efi.c
index cbf53e3fe917..ed799e59eaae 100644
--- a/fs/efi.c
+++ b/fs/efi.c
@@ -142,7 +142,7 @@ static int efifs_rmdir(struct device *dev, const char *pathname)
 	return efifs_unlink(dev, pathname);
 }
 
-static int efifs_open(struct device *dev, FILE *f, const char *filename)
+static int efifs_open(struct device *dev, struct file *f, const char *filename)
 {
 	struct efifs_priv *priv = dev->priv;
 	efi_status_t efiret;
@@ -190,7 +190,7 @@ static int efifs_open(struct device *dev, FILE *f, const char *filename)
 	return ret;
 }
 
-static int efifs_close(struct device *dev, FILE *f)
+static int efifs_close(struct device *dev, struct file *f)
 {
 	struct efifs_file *ufile = f->private_data;
 
@@ -201,7 +201,7 @@ static int efifs_close(struct device *dev, FILE *f)
 	return 0;
 }
 
-static int efifs_read(struct device *_dev, FILE *f, void *buf, size_t insize)
+static int efifs_read(struct device *_dev, struct file *f, void *buf, size_t insize)
 {
 	struct efifs_file *ufile = f->private_data;
 	efi_status_t efiret;
@@ -215,7 +215,7 @@ static int efifs_read(struct device *_dev, FILE *f, void *buf, size_t insize)
 	return bufsize;
 }
 
-static int efifs_write(struct device *_dev, FILE *f, const void *buf,
+static int efifs_write(struct device *_dev, struct file *f, const void *buf,
 		       size_t insize)
 {
 	struct efifs_file *ufile = f->private_data;
@@ -231,7 +231,7 @@ static int efifs_write(struct device *_dev, FILE *f, const void *buf,
 	return bufsize;
 }
 
-static int efifs_lseek(struct device *dev, FILE *f, loff_t pos)
+static int efifs_lseek(struct device *dev, struct file *f, loff_t pos)
 {
 	struct efifs_file *ufile = f->private_data;
 	efi_status_t efiret;
@@ -244,7 +244,7 @@ static int efifs_lseek(struct device *dev, FILE *f, loff_t pos)
 	return 0;
 }
 
-static int efifs_truncate(struct device *dev, FILE *f, loff_t size)
+static int efifs_truncate(struct device *dev, struct file *f, loff_t size)
 {
 	struct efifs_file *ufile = f->private_data;
 	efi_status_t efiret;
diff --git a/fs/efivarfs.c b/fs/efivarfs.c
index 092437b54136..6a765e0e5003 100644
--- a/fs/efivarfs.c
+++ b/fs/efivarfs.c
@@ -125,7 +125,7 @@ struct efivars_file {
 	u32 attributes;
 };
 
-static int efivarfs_open(struct device *dev, FILE *f, const char *filename)
+static int efivarfs_open(struct device *dev, struct file *f, const char *filename)
 {
 	struct efivars_file *efile;
 	efi_status_t efiret;
@@ -170,7 +170,7 @@ static int efivarfs_open(struct device *dev, FILE *f, const char *filename)
 	return ret;
 }
 
-static int efivarfs_close(struct device *dev, FILE *f)
+static int efivarfs_close(struct device *dev, struct file *f)
 {
 	struct efivars_file *efile = f->private_data;
 
@@ -180,7 +180,7 @@ static int efivarfs_close(struct device *dev, FILE *f)
 	return 0;
 }
 
-static int efivarfs_read(struct device *_dev, FILE *f, void *buf,
+static int efivarfs_read(struct device *_dev, struct file *f, void *buf,
 			 size_t insize)
 {
 	struct efivars_file *efile = f->private_data;
@@ -190,7 +190,7 @@ static int efivarfs_read(struct device *_dev, FILE *f, void *buf,
 	return insize;
 }
 
-static int efivarfs_write(struct device *_dev, FILE *f, const void *buf,
+static int efivarfs_write(struct device *_dev, struct file *f, const void *buf,
 			  size_t insize)
 {
 	struct efivars_file *efile = f->private_data;
@@ -212,7 +212,7 @@ static int efivarfs_write(struct device *_dev, FILE *f, const void *buf,
 	return insize;
 }
 
-static int efivarfs_truncate(struct device *dev, FILE *f, loff_t size)
+static int efivarfs_truncate(struct device *dev, struct file *f, loff_t size)
 {
 	struct efivars_file *efile = f->private_data;
 	efi_status_t efiret;
diff --git a/fs/ext4/ext_barebox.c b/fs/ext4/ext_barebox.c
index 70890c397392..163c4d2fe1b7 100644
--- a/fs/ext4/ext_barebox.c
+++ b/fs/ext4/ext_barebox.c
@@ -48,7 +48,7 @@ static inline struct ext2fs_node *to_ext2_node(struct inode *inode)
 	return container_of(inode, struct ext2fs_node, i);
 }
 
-static int ext_read(struct device *_dev, FILE *f, void *buf, size_t insize)
+static int ext_read(struct device *_dev, struct file *f, void *buf, size_t insize)
 {
 	struct inode *inode = f->f_inode;
 	struct ext2fs_node *node = to_ext2_node(inode);
diff --git a/fs/fat/fat.c b/fs/fat/fat.c
index af5a3e03f794..188408e5a0c9 100644
--- a/fs/fat/fat.c
+++ b/fs/fat/fat.c
@@ -125,7 +125,7 @@ static int fat_rmdir(struct device *dev, const char *pathname)
 	return 0;
 }
 
-static int fat_write(struct device *_dev, FILE *f, const void *buf,
+static int fat_write(struct device *_dev, struct file *f, const void *buf,
 		     size_t insize)
 {
 	FIL *f_file = f->private_data;
@@ -144,7 +144,7 @@ static int fat_write(struct device *_dev, FILE *f, const void *buf,
 	return outsize;
 }
 
-static int fat_truncate(struct device *dev, FILE *f, loff_t size)
+static int fat_truncate(struct device *dev, struct file *f, loff_t size)
 {
 	FIL *f_file = f->private_data;
 	unsigned long lastofs;
@@ -168,7 +168,7 @@ static int fat_truncate(struct device *dev, FILE *f, loff_t size)
 }
 #endif /* CONFIG_FS_FAT_WRITE */
 
-static int fat_open(struct device *dev, FILE *file, const char *filename)
+static int fat_open(struct device *dev, struct file *file, const char *filename)
 {
 	struct fat_priv *priv = dev->priv;
 	FIL *f_file;
@@ -210,7 +210,7 @@ static int fat_open(struct device *dev, FILE *file, const char *filename)
 	return 0;
 }
 
-static int fat_close(struct device *dev, FILE *f)
+static int fat_close(struct device *dev, struct file *f)
 {
 	struct fat_priv *priv = dev->priv;
 	FIL *f_file = f->private_data;
@@ -224,7 +224,7 @@ static int fat_close(struct device *dev, FILE *f)
 	return 0;
 }
 
-static int fat_read(struct device *_dev, FILE *f, void *buf, size_t insize)
+static int fat_read(struct device *_dev, struct file *f, void *buf, size_t insize)
 {
 	int ret;
 	FIL *f_file = f->private_data;
@@ -240,7 +240,7 @@ static int fat_read(struct device *_dev, FILE *f, void *buf, size_t insize)
 	return outsize;
 }
 
-static int fat_lseek(struct device *dev, FILE *f, loff_t pos)
+static int fat_lseek(struct device *dev, struct file *f, loff_t pos)
 {
 	FIL *f_file = f->private_data;
 	int ret;
diff --git a/fs/fs.c b/fs/fs.c
index dbac07d5996c..737152895103 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -221,7 +221,7 @@ static char *cwd;
 static struct dentry *cwd_dentry;
 static struct vfsmount *cwd_mnt;
 
-static FILE files[MAX_FILES];
+static struct file files[MAX_FILES];
 static struct dentry *d_root;
 static struct vfsmount *mnt_root;
 
@@ -304,13 +304,13 @@ char *get_mounted_path(const char *path)
 	return fdev->path;
 }
 
-static FILE *get_file(struct fs_device *fsdev)
+static struct file *get_file(struct fs_device *fsdev)
 {
 	int i;
 
 	for (i = 3; i < MAX_FILES; i++) {
 		if (!files[i].fsdev) {
-			memset(&files[i], 0, sizeof(FILE));
+			memset(&files[i], 0, sizeof(struct file));
 			files[i].fsdev = fsdev;
 			return &files[i];
 		}
@@ -318,7 +318,7 @@ static FILE *get_file(struct fs_device *fsdev)
 	return NULL;
 }
 
-static int file_to_fd(FILE *f)
+static int file_to_fd(struct file *f)
 {
 	int fd = f - files;
 	if (fd < 0 || fd >= ARRAY_SIZE(files))
@@ -326,7 +326,7 @@ static int file_to_fd(FILE *f)
 	return fd;
 }
 
-static void put_file(FILE *f)
+static void put_file(struct file *f)
 {
 	free(f->path);
 	f->path = NULL;
@@ -335,7 +335,7 @@ static void put_file(FILE *f)
 	dput(f->f_dentry);
 }
 
-static FILE *fd_to_file(int fd, bool o_path_ok)
+static struct file *fd_to_file(int fd, bool o_path_ok)
 {
 	if (fd < 0 || fd >= MAX_FILES || !files[fd].fsdev) {
 		errno = EBADF;
@@ -364,7 +364,7 @@ static int create(struct dentry *dir, struct dentry *dentry)
 	return inode->i_op->create(inode, dentry, S_IFREG | S_IRWXU | S_IRWXG | S_IRWXO);
 }
 
-static int fsdev_truncate(struct device *dev, FILE *f, loff_t length)
+static int fsdev_truncate(struct device *dev, struct file *f, loff_t length)
 {
 	struct fs_driver *fsdrv = f->fsdev->driver;
 
@@ -373,7 +373,7 @@ static int fsdev_truncate(struct device *dev, FILE *f, loff_t length)
 
 int ftruncate(int fd, loff_t length)
 {
-	FILE *f = fd_to_file(fd, false);
+	struct file *f = fd_to_file(fd, false);
 	int ret;
 
 	if (IS_ERR(f))
@@ -394,7 +394,7 @@ int ftruncate(int fd, loff_t length)
 int ioctl(int fd, unsigned int request, void *buf)
 {
 	struct fs_driver *fsdrv;
-	FILE *f = fd_to_file(fd, false);
+	struct file *f = fd_to_file(fd, false);
 	int ret;
 
 	if (IS_ERR(f))
@@ -410,7 +410,7 @@ int ioctl(int fd, unsigned int request, void *buf)
 	return errno_set(ret);
 }
 
-static ssize_t __read(FILE *f, void *buf, size_t count)
+static ssize_t __read(struct file *f, void *buf, size_t count)
 {
 	struct fs_driver *fsdrv;
 	int ret;
@@ -439,7 +439,7 @@ static ssize_t __read(FILE *f, void *buf, size_t count)
 ssize_t pread(int fd, void *buf, size_t count, loff_t offset)
 {
 	loff_t pos;
-	FILE *f = fd_to_file(fd, false);
+	struct file *f = fd_to_file(fd, false);
 	int ret;
 
 	if (IS_ERR(f))
@@ -456,7 +456,7 @@ EXPORT_SYMBOL(pread);
 
 ssize_t read(int fd, void *buf, size_t count)
 {
-	FILE *f = fd_to_file(fd, false);
+	struct file *f = fd_to_file(fd, false);
 	int ret;
 
 	if (IS_ERR(f))
@@ -470,7 +470,7 @@ ssize_t read(int fd, void *buf, size_t count)
 }
 EXPORT_SYMBOL(read);
 
-static ssize_t __write(FILE *f, const void *buf, size_t count)
+static ssize_t __write(struct file *f, const void *buf, size_t count)
 {
 	struct fs_driver *fsdrv;
 	int ret;
@@ -507,7 +507,7 @@ static ssize_t __write(FILE *f, const void *buf, size_t count)
 ssize_t pwrite(int fd, const void *buf, size_t count, loff_t offset)
 {
 	loff_t pos;
-	FILE *f = fd_to_file(fd, false);
+	struct file *f = fd_to_file(fd, false);
 	int ret;
 
 	if (IS_ERR(f))
@@ -524,7 +524,7 @@ EXPORT_SYMBOL(pwrite);
 
 ssize_t write(int fd, const void *buf, size_t count)
 {
-	FILE *f = fd_to_file(fd, false);
+	struct file *f = fd_to_file(fd, false);
 	int ret;
 
 	if (IS_ERR(f))
@@ -541,7 +541,7 @@ EXPORT_SYMBOL(write);
 int flush(int fd)
 {
 	struct fs_driver *fsdrv;
-	FILE *f = fd_to_file(fd, false);
+	struct file *f = fd_to_file(fd, false);
 	int ret;
 
 	if (IS_ERR(f))
@@ -559,7 +559,7 @@ int flush(int fd)
 loff_t lseek(int fd, loff_t offset, int whence)
 {
 	struct fs_driver *fsdrv;
-	FILE *f = fd_to_file(fd, false);
+	struct file *f = fd_to_file(fd, false);
 	loff_t pos;
 	int ret;
 
@@ -612,7 +612,7 @@ EXPORT_SYMBOL(lseek);
 int erase(int fd, loff_t count, loff_t offset, enum erase_type type)
 {
 	struct fs_driver *fsdrv;
-	FILE *f = fd_to_file(fd, false);
+	struct file *f = fd_to_file(fd, false);
 	int ret;
 
 	if (IS_ERR(f))
@@ -641,7 +641,7 @@ EXPORT_SYMBOL(erase);
 int protect(int fd, size_t count, loff_t offset, int prot)
 {
 	struct fs_driver *fsdrv;
-	FILE *f = fd_to_file(fd, false);
+	struct file *f = fd_to_file(fd, false);
 	int ret;
 
 	if (IS_ERR(f))
@@ -668,7 +668,7 @@ EXPORT_SYMBOL(protect);
 int discard_range(int fd, loff_t count, loff_t offset)
 {
 	struct fs_driver *fsdrv;
-	FILE *f = fd_to_file(fd, false);
+	struct file *f = fd_to_file(fd, false);
 	int ret;
 
 	if (IS_ERR(f))
@@ -709,7 +709,7 @@ int protect_file(const char *file, int prot)
 void *memmap(int fd, int flags)
 {
 	struct fs_driver *fsdrv;
-	FILE *f = fd_to_file(fd, false);
+	struct file *f = fd_to_file(fd, false);
 	void *retp = MAP_FAILED;
 	int ret;
 
@@ -733,7 +733,7 @@ EXPORT_SYMBOL(memmap);
 
 int close(int fd)
 {
-	FILE *f = fd_to_file(fd, true);
+	struct file *f = fd_to_file(fd, true);
 	int ret = 0;
 
 	if (IS_ERR(f))
@@ -1086,7 +1086,7 @@ static void stat_inode(struct inode *inode, struct stat *s)
 
 int fstat(int fd, struct stat *s)
 {
-	FILE *f = fd_to_file(fd, true);
+	struct file *f = fd_to_file(fd, true);
 
 	if (IS_ERR(f))
 		return -errno;
@@ -2189,7 +2189,7 @@ static int link_path_walk(const char *name, struct nameidata *nd)
 	}
 }
 
-static bool file_has_flag(FILE *f, unsigned flag)
+static bool file_has_flag(struct file *f, unsigned flag)
 {
 	if (IS_ERR_OR_NULL(f))
 		return false;
@@ -2200,7 +2200,7 @@ static const char *path_init(int dirfd, struct nameidata *nd, unsigned flags)
 {
 	const char *s = nd->name->name;
 	bool chroot = false;
-	FILE *f = NULL;
+	struct file *f = NULL;
 
 	nd->last_type = LAST_ROOT; /* if there are only slashes... */
 	nd->flags = flags | LOOKUP_JUMPED | LOOKUP_PARENT;
@@ -2542,7 +2542,7 @@ int openat(int dirfd, const char *pathname, int flags)
 	struct fs_device *fsdev;
 	struct fs_driver *fsdrv;
 	struct super_block *sb;
-	FILE *f;
+	struct file *f;
 	int error = 0;
 	struct inode *inode = NULL;
 	struct dentry *dentry = NULL;
@@ -2693,7 +2693,7 @@ EXPORT_SYMBOL(openat);
 
 static const char *fd_getpath(int fd)
 {
-	FILE *f;
+	struct file *f;
 
 	if (fd < 0)
 		return ERR_PTR(errno_set(fd));
diff --git a/fs/jffs2/fs.c b/fs/jffs2/fs.c
index 81a89282281c..fda2e86d8135 100644
--- a/fs/jffs2/fs.c
+++ b/fs/jffs2/fs.c
@@ -40,7 +40,7 @@ static inline void i_gid_write(struct inode *inode, gid_t gid)
 const struct file_operations jffs2_file_operations;
 const struct inode_operations jffs2_file_inode_operations;
 
-static int jffs2_open(struct device *dev, FILE *file, const char *filename)
+static int jffs2_open(struct device *dev, struct file *file, const char *filename)
 {
 	struct inode *inode = file->f_inode;
 	struct jffs2_file *jf;
@@ -56,7 +56,7 @@ static int jffs2_open(struct device *dev, FILE *file, const char *filename)
 	return 0;
 }
 
-static int jffs2_close(struct device *dev, FILE *f)
+static int jffs2_close(struct device *dev, struct file *f)
 {
 	struct jffs2_file *jf = f->private_data;
 
@@ -86,7 +86,7 @@ static int jffs2_get_block(struct jffs2_file *jf, unsigned int pos)
 	return 0;
 }
 
-static int jffs2_read(struct device *_dev, FILE *f, void *buf,
+static int jffs2_read(struct device *_dev, struct file *f, void *buf,
 		      size_t insize)
 {
 	struct jffs2_file *jf = f->private_data;
diff --git a/fs/nfs.c b/fs/nfs.c
index c7bf37ea9e13..9785a313d831 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -1065,7 +1065,7 @@ static void nfs_handler(void *ctx, char *p, unsigned len)
 	list_add_tail(&packet->list, &npriv->packets);
 }
 
-static int nfs_truncate(struct device *dev, FILE *f, loff_t size)
+static int nfs_truncate(struct device *dev, struct file *f, loff_t size)
 {
 	return -ENOSYS;
 }
@@ -1156,7 +1156,7 @@ static const char *nfs_get_link(struct dentry *dentry, struct inode *inode)
 	return inode->i_link;
 }
 
-static int nfs_open(struct device *dev, FILE *file, const char *filename)
+static int nfs_open(struct device *dev, struct file *file, const char *filename)
 {
 	struct inode *inode = file->f_inode;
 	struct nfs_inode *ninode = nfsi(inode);
@@ -1177,7 +1177,7 @@ static int nfs_open(struct device *dev, FILE *file, const char *filename)
 	return 0;
 }
 
-static int nfs_close(struct device *dev, FILE *file)
+static int nfs_close(struct device *dev, struct file *file)
 {
 	struct file_priv *priv = file->private_data;
 
@@ -1186,13 +1186,13 @@ static int nfs_close(struct device *dev, FILE *file)
 	return 0;
 }
 
-static int nfs_write(struct device *_dev, FILE *file, const void *inbuf,
+static int nfs_write(struct device *_dev, struct file *file, const void *inbuf,
 		     size_t insize)
 {
 	return -ENOSYS;
 }
 
-static int nfs_read(struct device *dev, FILE *file, void *buf, size_t insize)
+static int nfs_read(struct device *dev, struct file *file, void *buf, size_t insize)
 {
 	struct file_priv *priv = file->private_data;
 
@@ -1208,7 +1208,7 @@ static int nfs_read(struct device *dev, FILE *file, void *buf, size_t insize)
 	return kfifo_get(priv->fifo, buf, insize);
 }
 
-static int nfs_lseek(struct device *dev, FILE *file, loff_t pos)
+static int nfs_lseek(struct device *dev, struct file *file, loff_t pos)
 {
 	struct file_priv *priv = file->private_data;
 
diff --git a/fs/omap4_usbbootfs.c b/fs/omap4_usbbootfs.c
index 7a22acc9f01f..9d8f4d04f9b8 100644
--- a/fs/omap4_usbbootfs.c
+++ b/fs/omap4_usbbootfs.c
@@ -61,7 +61,7 @@ static struct file_priv *omap4_usbbootfs_do_open(struct device *dev,
 	return priv;
 }
 
-static int omap4_usbbootfs_open(struct device *dev, FILE *file,
+static int omap4_usbbootfs_open(struct device *dev, struct file *file,
 				const char *filename)
 {
 	struct file_priv *priv;
@@ -87,13 +87,13 @@ static int omap4_usbbootfs_do_close(struct file_priv *priv)
 	return 0;
 }
 
-static int omap4_usbbootfs_close(struct device *dev, FILE *f)
+static int omap4_usbbootfs_close(struct device *dev, struct file *f)
 {
 	struct file_priv *priv = f->private_data;
 	return omap4_usbbootfs_do_close(priv);
 }
 
-static int omap4_usbbootfs_read(struct device *dev, FILE *f, void *buf,
+static int omap4_usbbootfs_read(struct device *dev, struct file *f, void *buf,
 				size_t size)
 {
 	struct file_priv *priv = f->private_data;
diff --git a/fs/pstore/fs.c b/fs/pstore/fs.c
index e9b4d00cde06..24b0fa5c9d9c 100644
--- a/fs/pstore/fs.c
+++ b/fs/pstore/fs.c
@@ -141,7 +141,7 @@ static struct pstore_private *pstore_get_by_name(struct list_head *head,
 	return NULL;
 }
 
-static int pstore_open(struct device *dev, FILE *file, const char *filename)
+static int pstore_open(struct device *dev, struct file *file, const char *filename)
 {
 	struct list_head *head = dev->priv;
 	struct pstore_private *d;
@@ -157,12 +157,12 @@ static int pstore_open(struct device *dev, FILE *file, const char *filename)
 	return 0;
 }
 
-static int pstore_close(struct device *dev, FILE *file)
+static int pstore_close(struct device *dev, struct file *file)
 {
 	return 0;
 }
 
-static int pstore_read(struct device *dev, FILE *file, void *buf,
+static int pstore_read(struct device *dev, struct file *file, void *buf,
 		       size_t insize)
 {
 	struct pstore_private *d = file->private_data;
@@ -173,7 +173,7 @@ static int pstore_read(struct device *dev, FILE *file, void *buf,
 	return insize;
 }
 
-static int pstore_lseek(struct device *dev, FILE *file, loff_t pos)
+static int pstore_lseek(struct device *dev, struct file *file, loff_t pos)
 {
 	struct pstore_private *d = file->private_data;
 
diff --git a/fs/ramfs.c b/fs/ramfs.c
index a5d8fdb4c51c..6a824f56fdae 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -210,7 +210,7 @@ static struct ramfs_chunk *ramfs_find_chunk(struct ramfs_inode *node,
 	return NULL;
 }
 
-static int ramfs_read(struct device *_dev, FILE *f, void *buf, size_t insize)
+static int ramfs_read(struct device *_dev, struct file *f, void *buf, size_t insize)
 {
 	struct inode *inode = f->f_inode;
 	struct ramfs_inode *node = to_ramfs_inode(inode);
@@ -240,7 +240,7 @@ static int ramfs_read(struct device *_dev, FILE *f, void *buf, size_t insize)
 	return insize;
 }
 
-static int ramfs_write(struct device *_dev, FILE *f, const void *buf,
+static int ramfs_write(struct device *_dev, struct file *f, const void *buf,
 		       size_t insize)
 {
 	struct inode *inode = f->f_inode;
@@ -345,7 +345,7 @@ static int ramfs_truncate_up(struct ramfs_inode *node, unsigned long size)
 	return -ENOSPC;
 }
 
-static int ramfs_truncate(struct device *dev, FILE *f, loff_t size)
+static int ramfs_truncate(struct device *dev, struct file *f, loff_t size)
 {
 	struct inode *inode = f->f_inode;
 	struct ramfs_inode *node = to_ramfs_inode(inode);
@@ -377,7 +377,7 @@ static int ramfs_truncate(struct device *dev, FILE *f, loff_t size)
 	return 0;
 }
 
-static int ramfs_memmap(struct device *_dev, FILE *f, void **map, int flags)
+static int ramfs_memmap(struct device *_dev, struct file *f, void **map, int flags)
 {
 	struct inode *inode = f->f_inode;
 	struct ramfs_inode *node = to_ramfs_inode(inode);
diff --git a/fs/ratpfs.c b/fs/ratpfs.c
index 9760a5a40c5d..766291fff216 100644
--- a/fs/ratpfs.c
+++ b/fs/ratpfs.c
@@ -77,7 +77,7 @@ static int ratpfs_rm(struct device __always_unused *dev,
 }
 
 static int ratpfs_truncate(struct device __always_unused *dev,
-			   FILE *f, loff_t size)
+			   struct file *f, loff_t size)
 {
 	int len_tx = 1 /* type */
 		+ 4 /* handle */
@@ -115,7 +115,7 @@ static int ratpfs_truncate(struct device __always_unused *dev,
 }
 
 static int ratpfs_open(struct device __always_unused *dev,
-		       FILE *file, const char *filename)
+		       struct file *file, const char *filename)
 {
 	int len_name = strlen(filename);
 	int len_tx = 1 /* type */
@@ -164,7 +164,7 @@ static int ratpfs_open(struct device __always_unused *dev,
 }
 
 static int ratpfs_close(struct device __always_unused *dev,
-			FILE *f)
+			struct file *f)
 {
 	int len_tx = 1 /* type */
 		+ 4 /* handle */;
@@ -199,7 +199,7 @@ static int ratpfs_close(struct device __always_unused *dev,
 }
 
 static int ratpfs_write(struct device __always_unused *dev,
-			FILE *f, const void *buf, size_t orig_size)
+			struct file *f, const void *buf, size_t orig_size)
 {
 	int size = min((int)orig_size, 4096);
 	int len_tx = 1 /* type */
@@ -242,7 +242,7 @@ static int ratpfs_write(struct device __always_unused *dev,
 }
 
 static int ratpfs_read(struct device __always_unused *dev,
-		       FILE *f, void *buf, size_t orig_size)
+		       struct file *f, void *buf, size_t orig_size)
 {
 	int size = min((int)orig_size, 4096);
 	int len_tx = 1 /* type */
diff --git a/fs/smhfs.c b/fs/smhfs.c
index 037e51c2cf9c..b32f7422ee48 100644
--- a/fs/smhfs.c
+++ b/fs/smhfs.c
@@ -24,7 +24,7 @@
 #include <linux/stat.h>
 #include <asm/semihosting.h>
 
-static int file_to_fd(const FILE *f)
+static int file_to_fd(const struct file *f)
 {
 	return (int)(uintptr_t)f->private_data;
 }
@@ -52,14 +52,14 @@ static int smhfs_rm(struct device __always_unused *dev,
 }
 
 static int smhfs_truncate(struct device __always_unused *dev,
-			  FILE __always_unused *f,
+			  struct file __always_unused *f,
 			  loff_t __always_unused size)
 {
 	return 0;
 }
 
 static int smhfs_open(struct device __always_unused *dev,
-		      FILE *file, const char *filename)
+		      struct file *file, const char *filename)
 {
 	int fd;
 	/* Get rid of leading '/' */
@@ -78,27 +78,27 @@ static int smhfs_open(struct device __always_unused *dev,
 }
 
 static int smhfs_close(struct device __always_unused *dev,
-		       FILE *f)
+		       struct file *f)
 {
 	return semihosting_close(file_to_fd(f));
 }
 
 static int smhfs_write(struct device __always_unused *dev,
-		       FILE *f, const void *inbuf, size_t insize)
+		       struct file *f, const void *inbuf, size_t insize)
 {
 	long ret = semihosting_write(file_to_fd(f), inbuf, insize);
 	return ret < 0 ? ret : insize;
 }
 
 static int smhfs_read(struct device __always_unused *dev,
-		      FILE *f, void *buf, size_t insize)
+		      struct file *f, void *buf, size_t insize)
 {
 	long ret = semihosting_read(file_to_fd(f), buf, insize);
 	return ret < 0 ? ret : insize;
 }
 
 static int smhfs_lseek(struct device __always_unused *dev,
-			  FILE *f, loff_t pos)
+			  struct file *f, loff_t pos)
 {
 	return semihosting_seek(file_to_fd(f), pos);
 }
@@ -112,7 +112,7 @@ static DIR* smhfs_opendir(struct device __always_unused *dev,
 static int smhfs_stat(struct device __always_unused *dev,
 		      const char *filename, struct stat *s)
 {
-	FILE file;
+	struct file file;
 
 	if (smhfs_open(NULL, &file, filename) == 0) {
 		s->st_mode = S_IFREG | S_IRWXU | S_IRWXG | S_IRWXO;
diff --git a/fs/squashfs/squashfs.c b/fs/squashfs/squashfs.c
index 5a33478da0a3..dc4fbf11c46e 100644
--- a/fs/squashfs/squashfs.c
+++ b/fs/squashfs/squashfs.c
@@ -131,7 +131,7 @@ static void squashfs_remove(struct device *dev)
 	squashfs_put_super(sb);
 }
 
-static int squashfs_open(struct device *dev, FILE *file, const char *filename)
+static int squashfs_open(struct device *dev, struct file *file, const char *filename)
 {
 	struct inode *inode = file->f_inode;
 	struct squashfs_page *page;
@@ -164,7 +164,7 @@ static int squashfs_open(struct device *dev, FILE *file, const char *filename)
 	return -ENOMEM;
 }
 
-static int squashfs_close(struct device *dev, FILE *f)
+static int squashfs_close(struct device *dev, struct file *f)
 {
 	struct squashfs_page *page = f->private_data;
 	int i;
@@ -196,7 +196,7 @@ static int squashfs_read_buf(struct squashfs_page *page, int pos, void **buf)
 	return 0;
 }
 
-static int squashfs_read(struct device *_dev, FILE *f, void *buf,
+static int squashfs_read(struct device *_dev, struct file *f, void *buf,
 			 size_t insize)
 {
 	unsigned int size = insize;
diff --git a/fs/tftp.c b/fs/tftp.c
index 4df3215927b1..37b7a64fcdba 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -188,7 +188,7 @@ static int tftp_window_cache_insert(struct tftp_cache *cache, uint16_t id,
 	return 0;
 }
 
-static int tftp_truncate(struct device *dev, FILE *f, loff_t size)
+static int tftp_truncate(struct device *dev, struct file *f, loff_t size)
 {
 	return 0;
 }
@@ -765,7 +765,7 @@ static struct file_priv *tftp_do_open(struct device *dev,
 	return ERR_PTR(ret);
 }
 
-static int tftp_open(struct device *dev, FILE *file, const char *filename)
+static int tftp_open(struct device *dev, struct file *file, const char *filename)
 {
 	struct file_priv *priv;
 
@@ -818,14 +818,14 @@ static int tftp_do_close(struct file_priv *priv)
 	return 0;
 }
 
-static int tftp_close(struct device *dev, FILE *f)
+static int tftp_close(struct device *dev, struct file *f)
 {
 	struct file_priv *priv = f->private_data;
 
 	return tftp_do_close(priv);
 }
 
-static int tftp_write(struct device *_dev, FILE *f, const void *inbuf,
+static int tftp_write(struct device *_dev, struct file *f, const void *inbuf,
 		      size_t insize)
 {
 	struct file_priv *priv = f->private_data;
@@ -861,7 +861,7 @@ static int tftp_write(struct device *_dev, FILE *f, const void *inbuf,
 	return insize;
 }
 
-static int tftp_read(struct device *dev, FILE *f, void *buf, size_t insize)
+static int tftp_read(struct device *dev, struct file *f, void *buf, size_t insize)
 {
 	struct file_priv *priv = f->private_data;
 	size_t outsize = 0, now;
@@ -901,7 +901,7 @@ static int tftp_read(struct device *dev, FILE *f, void *buf, size_t insize)
 	return outsize;
 }
 
-static int tftp_lseek(struct device *dev, FILE *f, loff_t pos)
+static int tftp_lseek(struct device *dev, struct file *f, loff_t pos)
 {
 	/* We cannot seek backwards without reloading or caching the file */
 	loff_t f_pos = f->f_pos;
diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
index a88cb21e0559..63dab3c197c3 100644
--- a/fs/ubifs/ubifs.c
+++ b/fs/ubifs/ubifs.c
@@ -340,7 +340,7 @@ struct ubifs_file {
 	struct ubifs_data_node *dn;
 };
 
-static int ubifs_open(struct device *dev, FILE *file, const char *filename)
+static int ubifs_open(struct device *dev, struct file *file, const char *filename)
 {
 	struct inode *inode = file->f_inode;
 	struct ubifs_file *uf;
@@ -357,7 +357,7 @@ static int ubifs_open(struct device *dev, FILE *file, const char *filename)
 	return 0;
 }
 
-static int ubifs_close(struct device *dev, FILE *f)
+static int ubifs_close(struct device *dev, struct file *f)
 {
 	struct ubifs_file *uf = f->private_data;
 
@@ -383,7 +383,7 @@ static int ubifs_get_block(struct ubifs_file *uf, unsigned int pos)
 	return 0;
 }
 
-static int ubifs_read(struct device *_dev, FILE *f, void *buf, size_t insize)
+static int ubifs_read(struct device *_dev, struct file *f, void *buf, size_t insize)
 {
 	struct ubifs_file *uf = f->private_data;
 	unsigned int pos = f->f_pos;
diff --git a/fs/ubootvarfs.c b/fs/ubootvarfs.c
index 7f41c63e7264..8cb0d0fa6499 100644
--- a/fs/ubootvarfs.c
+++ b/fs/ubootvarfs.c
@@ -333,7 +333,7 @@ static const struct super_operations ubootvarfs_ops = {
 	.destroy_inode = ubootvarfs_destroy_inode,
 };
 
-static int ubootvarfs_io(struct device *dev, FILE *f, void *buf,
+static int ubootvarfs_io(struct device *dev, struct file *f, void *buf,
 			 size_t insize, bool read)
 {
 	struct inode *inode = f->f_inode;
@@ -348,19 +348,19 @@ static int ubootvarfs_io(struct device *dev, FILE *f, void *buf,
 	return insize;
 }
 
-static int ubootvarfs_read(struct device *dev, FILE *f, void *buf,
+static int ubootvarfs_read(struct device *dev, struct file *f, void *buf,
 			   size_t insize)
 {
 	return ubootvarfs_io(dev, f, buf, insize, true);
 }
 
-static int ubootvarfs_write(struct device *dev, FILE *f, const void *buf,
+static int ubootvarfs_write(struct device *dev, struct file *f, const void *buf,
 			    size_t insize)
 {
 	return ubootvarfs_io(dev, f, (void *)buf, insize, false);
 }
 
-static int ubootvarfs_truncate(struct device *dev, FILE *f, loff_t size)
+static int ubootvarfs_truncate(struct device *dev, struct file *f, loff_t size)
 {
 	struct inode *inode = f->f_inode;
 	struct ubootvarfs_inode *node = inode_to_node(inode);
diff --git a/fs/uimagefs.c b/fs/uimagefs.c
index 83e6921fe9ec..d7993bf9c78e 100644
--- a/fs/uimagefs.c
+++ b/fs/uimagefs.c
@@ -68,7 +68,7 @@ static struct uimagefs_handle_data *uimagefs_get_by_name(
 	return NULL;
 }
 
-static int uimagefs_open(struct device *dev, FILE *file, const char *filename)
+static int uimagefs_open(struct device *dev, struct file *file, const char *filename)
 {
 	struct uimagefs_handle *priv = dev->priv;
 	struct uimagefs_handle_data *d;
@@ -94,7 +94,7 @@ static int uimagefs_open(struct device *dev, FILE *file, const char *filename)
 	return 0;
 }
 
-static int uimagefs_close(struct device *dev, FILE *file)
+static int uimagefs_close(struct device *dev, struct file *file)
 {
 	struct uimagefs_handle_data *d = file->private_data;
 
@@ -103,7 +103,7 @@ static int uimagefs_close(struct device *dev, FILE *file)
 	return 0;
 }
 
-static int uimagefs_read(struct device *dev, FILE *file, void *buf,
+static int uimagefs_read(struct device *dev, struct file *file, void *buf,
 			 size_t insize)
 {
 	struct uimagefs_handle_data *d = file->private_data;
@@ -116,7 +116,7 @@ static int uimagefs_read(struct device *dev, FILE *file, void *buf,
 	}
 }
 
-static int uimagefs_lseek(struct device *dev, FILE *file, loff_t pos)
+static int uimagefs_lseek(struct device *dev, struct file *file, loff_t pos)
 {
 	struct uimagefs_handle_data *d = file->private_data;
 
@@ -181,7 +181,7 @@ static int uimagefs_stat(struct device *dev, const char *filename,
 	return 0;
 }
 
-static int uimagefs_ioctl(struct device *dev, FILE *f, unsigned int request, void *buf)
+static int uimagefs_ioctl(struct device *dev, struct file *f, unsigned int request, void *buf)
 {
 	struct uimagefs_handle *priv = dev->priv;
 
diff --git a/include/fs.h b/include/fs.h
index 36d1be018388..622c12a2d238 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -46,25 +46,25 @@ struct fs_driver {
 	int (*probe) (struct device *dev);
 
 	/* Truncate a file to given size */
-	int (*truncate)(struct device *dev, FILE *f, loff_t size);
+	int (*truncate)(struct device *dev, struct file *f, loff_t size);
 
-	int (*open)(struct device *dev, FILE *f, const char *pathname);
-	int (*close)(struct device *dev, FILE *f);
-	int (*read)(struct device *dev, FILE *f, void *buf, size_t size);
-	int (*write)(struct device *dev, FILE *f, const void *buf,
+	int (*open)(struct device *dev, struct file *f, const char *pathname);
+	int (*close)(struct device *dev, struct file *f);
+	int (*read)(struct device *dev, struct file *f, void *buf, size_t size);
+	int (*write)(struct device *dev, struct file *f, const void *buf,
 		     size_t size);
-	int (*flush)(struct device *dev, FILE *f);
-	int (*lseek)(struct device *dev, FILE *f, loff_t pos);
+	int (*flush)(struct device *dev, struct file *f);
+	int (*lseek)(struct device *dev, struct file *f, loff_t pos);
 
-	int (*ioctl)(struct device *dev, FILE *f, unsigned int request, void *buf);
-	int (*erase)(struct device *dev, FILE *f, loff_t count,
+	int (*ioctl)(struct device *dev, struct file *f, unsigned int request, void *buf);
+	int (*erase)(struct device *dev, struct file *f, loff_t count,
 			loff_t offset, enum erase_type type);
-	int (*protect)(struct device *dev, FILE *f, size_t count,
+	int (*protect)(struct device *dev, struct file *f, size_t count,
 			loff_t offset, int prot);
-	int (*discard_range)(struct device *dev, FILE *f, loff_t count,
+	int (*discard_range)(struct device *dev, struct file *f, loff_t count,
 			     loff_t offset);
 
-	int (*memmap)(struct device *dev, FILE *f, void **map, int flags);
+	int (*memmap)(struct device *dev, struct file *f, void **map, int flags);
 
 	const struct fs_legacy_ops {
 		/* create a file. The file is guaranteed to not exist */
diff --git a/include/linux/fs.h b/include/linux/fs.h
index c58dab554041..7694ed5cbe76 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -220,8 +220,8 @@ struct file_system_type {
 	struct hlist_head fs_supers;
 };
 
-typedef struct file {
-	struct fs_device	*fsdev; /* The device this FILE belongs to */
+struct file {
+	struct fs_device	*fsdev; /* The device this file belongs to */
 	char			*path;
 	struct path		f_path;
 #define FILE_SIZE_STREAM	((loff_t) -1)
@@ -237,7 +237,7 @@ typedef struct file {
 	u64			f_version;
 	/* private to the filesystem driver */
 	void			*private_data;
-} FILE;
+};
 
 struct super_operations {
 	struct inode *(*alloc_inode)(struct super_block *sb);
-- 
2.39.5



