Delivery-date: Tue, 07 Jan 2025 09:04:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV4Zb-000Ese-1q
	for lore@lore.pengutronix.de;
	Tue, 07 Jan 2025 09:04:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV4ZB-0001xR-Nh
	for lore@pengutronix.de; Tue, 07 Jan 2025 09:04:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MpEzodpP/Nygg8vyaCmZHpBaPFZ1j0VNTqye2XMqV2s=; b=tpQDVnKTSFtYGZql7/1tXUNhkV
	aSKSoH+fxA1arvpLSOuASwRevsfJD2fXFuQYF/0VP1j0SK4MsCPG09MlSedSVjRDZIjxZS+YXyJQn
	sCFuBOXD1og5nDb2vXxwZSrfBekVvJLJYF3+cuipGx07Y0dQhPct8IidolrmquVhPJo5m2BzfJhOz
	+RK5IO5L3Mm0XMADy2WhsnIKoHhrs+eBQuI3rP+yffUJY3sTWDznO2XU+XI8dPLUKtvmjcdbtwQ63
	Eo0LGkKwalRII8PRWNxE9tbgckHeydPEvGMFXsJ7g+ZG2yzWwX34xkxl05rDXBPpquDlxpSIc6ASY
	HH3EctwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tV4XM-00000003q4Q-317X;
	Tue, 07 Jan 2025 08:02:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tV4VI-00000003pVL-2Vx1
	for barebox@lists.infradead.org;
	Tue, 07 Jan 2025 07:59:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV4VH-0000rQ-9V; Tue, 07 Jan 2025 08:59:55 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV4VG-007Iqf-0y;
	Tue, 07 Jan 2025 08:59:55 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV4VG-00Bv76-3B;
	Tue, 07 Jan 2025 08:59:55 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  7 Jan 2025 08:59:35 +0100
Message-Id: <20250107075939.2841119-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250107075939.2841119-1-a.fatoum@pengutronix.de>
References: <20250107075939.2841119-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_235957_102319_B41730FF 
X-CRM114-Status: GOOD (  19.32  )
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
Subject: [PATCH 4/8] fs: align FILE struct member names with upstream struct file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Most members remaining in struct filep already have counterparts:

  .pos    -> .f_pos
  .flags  -> .f_flags
  .priv   -> .private_data
  .dentry -> .f_dentry (macro in <linux/fs.h> expanding to path.dentry)

Let's use the new names throughout, in preparation for merging the two
structs.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/bpkfs.c             |  8 +++---
 fs/cramfs/cramfs.c     |  2 +-
 fs/devfs.c             | 30 +++++++++++-----------
 fs/efi.c               | 14 +++++------
 fs/efivarfs.c          | 20 +++++++--------
 fs/ext4/ext_barebox.c  |  2 +-
 fs/fat/fat.c           | 16 ++++++------
 fs/fs.c                | 56 +++++++++++++++++++++---------------------
 fs/jffs2/fs.c          | 12 ++++-----
 fs/nfs.c               | 10 ++++----
 fs/omap4_usbbootfs.c   | 14 +++++------
 fs/pstore/fs.c         |  6 ++---
 fs/ramfs.c             |  8 +++---
 fs/ratpfs.c            | 24 +++++++++---------
 fs/smhfs.c             |  6 ++---
 fs/squashfs/squashfs.c |  8 +++---
 fs/tftp.c              | 14 +++++------
 fs/ubifs/ubifs.c       | 10 ++++----
 fs/ubootvarfs.c        |  2 +-
 fs/uimagefs.c          |  8 +++---
 include/fs.h           |  9 +++----
 21 files changed, 139 insertions(+), 140 deletions(-)

diff --git a/fs/bpkfs.c b/fs/bpkfs.c
index e8b15461ccef..8b32e26b9cd1 100644
--- a/fs/bpkfs.c
+++ b/fs/bpkfs.c
@@ -162,7 +162,7 @@ static int bpkfs_open(struct device *dev, FILE *f, const char *filename)
 	}
 
 	f->size = d->size;
-	f->priv = d;
+	f->private_data = d;
 	ret = 0;
 
 out:
@@ -173,7 +173,7 @@ static int bpkfs_open(struct device *dev, FILE *f, const char *filename)
 
 static int bpkfs_close(struct device *dev, FILE *file)
 {
-	struct bpkfs_handle_data *d = file->priv;
+	struct bpkfs_handle_data *d = file->private_data;
 
 	close(d->fd);
 
@@ -183,7 +183,7 @@ static int bpkfs_close(struct device *dev, FILE *file)
 static int bpkfs_read(struct device *dev, FILE *file, void *buf,
 		      size_t insize)
 {
-	struct bpkfs_handle_data *d = file->priv;
+	struct bpkfs_handle_data *d = file->private_data;
 
 	if (bpkfs_is_crc_file(d)) {
 		memcpy(buf, &d->data[d->pos], insize);
@@ -195,7 +195,7 @@ static int bpkfs_read(struct device *dev, FILE *file, void *buf,
 
 static int bpkfs_lseek(struct device *dev, FILE *file, loff_t pos)
 {
-	struct bpkfs_handle_data *d = file->priv;
+	struct bpkfs_handle_data *d = file->private_data;
 
 	if (!bpkfs_is_crc_file(d))
 		lseek(d->fd, d->offset + pos, SEEK_SET);
diff --git a/fs/cramfs/cramfs.c b/fs/cramfs/cramfs.c
index 2d1070f1a7e2..56542fee83f3 100644
--- a/fs/cramfs/cramfs.c
+++ b/fs/cramfs/cramfs.c
@@ -164,7 +164,7 @@ static int cramfs_read_file(struct inode *inode, unsigned long offset,
 
 static int cramfs_read(struct device *_dev, FILE *f, void *buf, size_t size)
 {
-	return cramfs_read_file(f->f_inode, f->pos, buf, size);
+	return cramfs_read_file(f->f_inode, f->f_pos, buf, size);
 }
 
 #if 0
diff --git a/fs/devfs.c b/fs/devfs.c
index 5feb76cfef86..d82e7dff7b94 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -37,25 +37,25 @@ struct devfs_inode {
 
 static int devfs_read(struct device *_dev, FILE *f, void *buf, size_t size)
 {
-	struct cdev *cdev = f->priv;
+	struct cdev *cdev = f->private_data;
 
-	return cdev_read(cdev, buf, size, f->pos, f->flags);
+	return cdev_read(cdev, buf, size, f->f_pos, f->f_flags);
 }
 
 static int devfs_write(struct device *_dev, FILE *f, const void *buf,
 		       size_t size)
 {
-	struct cdev *cdev = f->priv;
+	struct cdev *cdev = f->private_data;
 
 	if (cdev->flags & DEVFS_PARTITION_READONLY)
 		return -EPERM;
 
-	return cdev_write(cdev, buf, size, f->pos, f->flags);
+	return cdev_write(cdev, buf, size, f->f_pos, f->f_flags);
 }
 
 static int devfs_lseek(struct device *_dev, FILE *f, loff_t pos)
 {
-	struct cdev *cdev = f->priv;
+	struct cdev *cdev = f->private_data;
 
 	return cdev_lseek(cdev, pos);
 }
@@ -63,7 +63,7 @@ static int devfs_lseek(struct device *_dev, FILE *f, loff_t pos)
 static int devfs_erase(struct device *_dev, FILE *f, loff_t count,
 		       loff_t offset, enum erase_type type)
 {
-	struct cdev *cdev = f->priv;
+	struct cdev *cdev = f->private_data;
 
 	if (cdev->flags & DEVFS_PARTITION_READONLY)
 		return -EPERM;
@@ -80,7 +80,7 @@ static int devfs_erase(struct device *_dev, FILE *f, loff_t count,
 static int devfs_protect(struct device *dev, FILE *f, size_t count,
 			 loff_t offset, int prot)
 {
-	struct cdev *cdev = f->priv;
+	struct cdev *cdev = f->private_data;
 
 	return cdev_protect(cdev, count, offset, prot);
 }
@@ -88,14 +88,14 @@ static int devfs_protect(struct device *dev, FILE *f, size_t count,
 static int devfs_discard_range(struct device *dev, FILE *f, loff_t count,
 			       loff_t offset)
 {
-	struct cdev *cdev = f->priv;
+	struct cdev *cdev = f->private_data;
 
 	return cdev_discard_range(cdev, count, offset);
 }
 
 static int devfs_memmap(struct device *_dev, FILE *f, void **map, int flags)
 {
-	struct cdev *cdev = f->priv;
+	struct cdev *cdev = f->private_data;
 
 	return cdev_memmap(cdev, map, flags);
 }
@@ -108,35 +108,35 @@ static int devfs_open(struct device *_dev, FILE *f, const char *filename)
 
 	f->size = cdev->flags & DEVFS_IS_CHARACTER_DEV ?
 			FILE_SIZE_STREAM : cdev->size;
-	f->priv = cdev;
+	f->private_data = cdev;
 
-	return cdev_open(cdev, f->flags);
+	return cdev_open(cdev, f->f_flags);
 }
 
 static int devfs_close(struct device *_dev, FILE *f)
 {
-	struct cdev *cdev = f->priv;
+	struct cdev *cdev = f->private_data;
 
 	return cdev_close(cdev);
 }
 
 static int devfs_flush(struct device *_dev, FILE *f)
 {
-	struct cdev *cdev = f->priv;
+	struct cdev *cdev = f->private_data;
 
 	return cdev_flush(cdev);
 }
 
 static int devfs_ioctl(struct device *_dev, FILE *f, unsigned int request, void *buf)
 {
-	struct cdev *cdev = f->priv;
+	struct cdev *cdev = f->private_data;
 
 	return cdev_ioctl(cdev, request, buf);
 }
 
 static int devfs_truncate(struct device *dev, FILE *f, loff_t size)
 {
-	struct cdev *cdev = f->priv;
+	struct cdev *cdev = f->private_data;
 
 	return cdev_truncate(cdev, size);
 }
diff --git a/fs/efi.c b/fs/efi.c
index bc762ebb2f9f..d4fb9105277b 100644
--- a/fs/efi.c
+++ b/fs/efi.c
@@ -155,7 +155,7 @@ static int efifs_open(struct device *dev, FILE *f, const char *filename)
 
 	ufile = xzalloc(sizeof(*ufile));
 
-	if (f->flags & O_ACCMODE)
+	if (f->f_flags & O_ACCMODE)
 		efimode |= EFI_FILE_MODE_WRITE;
 
 	efiret = priv->root_dir->open(priv->root_dir, &ufile->entry, efi_path,
@@ -181,7 +181,7 @@ static int efifs_open(struct device *dev, FILE *f, const char *filename)
 	f->size = info->FileSize;
 
 	free(info);
-	f->priv = ufile;
+	f->private_data = ufile;
 
 	return 0;
 out:
@@ -192,7 +192,7 @@ static int efifs_open(struct device *dev, FILE *f, const char *filename)
 
 static int efifs_close(struct device *dev, FILE *f)
 {
-	struct efifs_file *ufile = f->priv;
+	struct efifs_file *ufile = f->private_data;
 
 	ufile->entry->close(ufile->entry);
 
@@ -203,7 +203,7 @@ static int efifs_close(struct device *dev, FILE *f)
 
 static int efifs_read(struct device *_dev, FILE *f, void *buf, size_t insize)
 {
-	struct efifs_file *ufile = f->priv;
+	struct efifs_file *ufile = f->private_data;
 	efi_status_t efiret;
 	unsigned long bufsize = insize;
 
@@ -218,7 +218,7 @@ static int efifs_read(struct device *_dev, FILE *f, void *buf, size_t insize)
 static int efifs_write(struct device *_dev, FILE *f, const void *buf,
 		       size_t insize)
 {
-	struct efifs_file *ufile = f->priv;
+	struct efifs_file *ufile = f->private_data;
 	efi_status_t efiret;
 	unsigned long bufsize = insize;
 
@@ -233,7 +233,7 @@ static int efifs_write(struct device *_dev, FILE *f, const void *buf,
 
 static int efifs_lseek(struct device *dev, FILE *f, loff_t pos)
 {
-	struct efifs_file *ufile = f->priv;
+	struct efifs_file *ufile = f->private_data;
 	efi_status_t efiret;
 
 	efiret = ufile->entry->set_position(ufile->entry, pos);
@@ -246,7 +246,7 @@ static int efifs_lseek(struct device *dev, FILE *f, loff_t pos)
 
 static int efifs_truncate(struct device *dev, FILE *f, loff_t size)
 {
-	struct efifs_file *ufile = f->priv;
+	struct efifs_file *ufile = f->private_data;
 	efi_status_t efiret;
 	struct efi_file_info *info;
 	unsigned long bufsize = 1024;
diff --git a/fs/efivarfs.c b/fs/efivarfs.c
index 2030bf05d9ee..2e12b410f740 100644
--- a/fs/efivarfs.c
+++ b/fs/efivarfs.c
@@ -159,7 +159,7 @@ static int efivarfs_open(struct device *dev, FILE *f, const char *filename)
 	}
 
 	f->size = efile->size;
-	f->priv = efile;
+	f->private_data = efile;
 
 	return 0;
 
@@ -172,7 +172,7 @@ static int efivarfs_open(struct device *dev, FILE *f, const char *filename)
 
 static int efivarfs_close(struct device *dev, FILE *f)
 {
-	struct efivars_file *efile = f->priv;
+	struct efivars_file *efile = f->private_data;
 
 	free(efile->buf);
 	free(efile);
@@ -183,9 +183,9 @@ static int efivarfs_close(struct device *dev, FILE *f)
 static int efivarfs_read(struct device *_dev, FILE *f, void *buf,
 			 size_t insize)
 {
-	struct efivars_file *efile = f->priv;
+	struct efivars_file *efile = f->private_data;
 
-	memcpy(buf, efile->buf + f->pos, insize);
+	memcpy(buf, efile->buf + f->f_pos, insize);
 
 	return insize;
 }
@@ -193,15 +193,15 @@ static int efivarfs_read(struct device *_dev, FILE *f, void *buf,
 static int efivarfs_write(struct device *_dev, FILE *f, const void *buf,
 			  size_t insize)
 {
-	struct efivars_file *efile = f->priv;
+	struct efivars_file *efile = f->private_data;
 	efi_status_t efiret;
 
-	if (efile->size < f->pos + insize) {
-		efile->buf = realloc(efile->buf, f->pos + insize);
-		efile->size = f->pos + insize;
+	if (efile->size < f->f_pos + insize) {
+		efile->buf = realloc(efile->buf, f->f_pos + insize);
+		efile->size = f->f_pos + insize;
 	}
 
-	memcpy(efile->buf + f->pos, buf, insize);
+	memcpy(efile->buf + f->f_pos, buf, insize);
 
 	efiret = RT->set_variable(efile->name, &efile->vendor,
 				  efile->attributes,
@@ -214,7 +214,7 @@ static int efivarfs_write(struct device *_dev, FILE *f, const void *buf,
 
 static int efivarfs_truncate(struct device *dev, FILE *f, loff_t size)
 {
-	struct efivars_file *efile = f->priv;
+	struct efivars_file *efile = f->private_data;
 	efi_status_t efiret;
 
 	efile->size = size;
diff --git a/fs/ext4/ext_barebox.c b/fs/ext4/ext_barebox.c
index df82b629cd05..70890c397392 100644
--- a/fs/ext4/ext_barebox.c
+++ b/fs/ext4/ext_barebox.c
@@ -53,7 +53,7 @@ static int ext_read(struct device *_dev, FILE *f, void *buf, size_t insize)
 	struct inode *inode = f->f_inode;
 	struct ext2fs_node *node = to_ext2_node(inode);
 
-	return ext4fs_read_file(node, f->pos, insize, buf);
+	return ext4fs_read_file(node, f->f_pos, insize, buf);
 }
 
 static struct inode *ext_alloc_inode(struct super_block *sb)
diff --git a/fs/fat/fat.c b/fs/fat/fat.c
index f5ad9f07cda9..7bf91be04281 100644
--- a/fs/fat/fat.c
+++ b/fs/fat/fat.c
@@ -128,7 +128,7 @@ static int fat_rmdir(struct device *dev, const char *pathname)
 static int fat_write(struct device *_dev, FILE *f, const void *buf,
 		     size_t insize)
 {
-	FIL *f_file = f->priv;
+	FIL *f_file = f->private_data;
 	int outsize;
 	int ret;
 
@@ -146,7 +146,7 @@ static int fat_write(struct device *_dev, FILE *f, const void *buf,
 
 static int fat_truncate(struct device *dev, FILE *f, loff_t size)
 {
-	FIL *f_file = f->priv;
+	FIL *f_file = f->private_data;
 	unsigned long lastofs;
 	int ret;
 
@@ -177,7 +177,7 @@ static int fat_open(struct device *dev, FILE *file, const char *filename)
 
 	f_file = xzalloc(sizeof(*f_file));
 
-	switch (file->flags & O_ACCMODE) {
+	switch (file->f_flags & O_ACCMODE) {
 	case O_RDONLY:
 		flags = FA_READ;
 		break;
@@ -195,7 +195,7 @@ static int fat_open(struct device *dev, FILE *file, const char *filename)
 		return -EINVAL;
 	}
 
-	if (file->flags & O_APPEND) {
+	if (file->f_flags & O_APPEND) {
 		ret = f_lseek(f_file, f_file->fsize);
 		if (ret) {
 			f_close(f_file);
@@ -204,7 +204,7 @@ static int fat_open(struct device *dev, FILE *file, const char *filename)
 		}
 	}
 
-	file->priv = f_file;
+	file->private_data = f_file;
 	file->size = f_file->fsize;
 
 	return 0;
@@ -213,7 +213,7 @@ static int fat_open(struct device *dev, FILE *file, const char *filename)
 static int fat_close(struct device *dev, FILE *f)
 {
 	struct fat_priv *priv = dev->priv;
-	FIL *f_file = f->priv;
+	FIL *f_file = f->private_data;
 
 	f_close(f_file);
 
@@ -227,7 +227,7 @@ static int fat_close(struct device *dev, FILE *f)
 static int fat_read(struct device *_dev, FILE *f, void *buf, size_t insize)
 {
 	int ret;
-	FIL *f_file = f->priv;
+	FIL *f_file = f->private_data;
 	int outsize;
 
 	ret = f_read(f_file, buf, insize, &outsize);
@@ -242,7 +242,7 @@ static int fat_read(struct device *_dev, FILE *f, void *buf, size_t insize)
 
 static int fat_lseek(struct device *dev, FILE *f, loff_t pos)
 {
-	FIL *f_file = f->priv;
+	FIL *f_file = f->private_data;
 	int ret;
 
 	ret = f_lseek(f_file, pos);
diff --git a/fs/fs.c b/fs/fs.c
index 2adce54a61b6..d2287a82b579 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -332,7 +332,7 @@ static void put_file(FILE *f)
 	f->path = NULL;
 	f->fsdev = NULL;
 	iput(f->f_inode);
-	dput(f->dentry);
+	dput(f->f_dentry);
 }
 
 static FILE *fd_to_file(int fd, bool o_path_ok)
@@ -341,7 +341,7 @@ static FILE *fd_to_file(int fd, bool o_path_ok)
 		errno = EBADF;
 		return ERR_PTR(-errno);
 	}
-	if (!o_path_ok && (files[fd].flags & O_PATH)) {
+	if (!o_path_ok && (files[fd].f_flags & O_PATH)) {
 		errno = EINVAL;
 		return ERR_PTR(-errno);
 	}
@@ -416,7 +416,7 @@ static ssize_t __read(FILE *f, void *buf, size_t count)
 	struct fs_driver *fsdrv;
 	int ret;
 
-	if ((f->flags & O_ACCMODE) == O_WRONLY) {
+	if ((f->f_flags & O_ACCMODE) == O_WRONLY) {
 		ret = -EBADF;
 		goto out;
 	}
@@ -426,8 +426,8 @@ static ssize_t __read(FILE *f, void *buf, size_t count)
 	if (fsdrv != ramfs_driver)
 		assert_command_context();
 
-	if (f->size != FILE_SIZE_STREAM && f->pos + count > f->size)
-		count = f->size - f->pos;
+	if (f->size != FILE_SIZE_STREAM && f->f_pos + count > f->size)
+		count = f->size - f->f_pos;
 
 	if (!count)
 		return 0;
@@ -446,10 +446,10 @@ ssize_t pread(int fd, void *buf, size_t count, loff_t offset)
 	if (IS_ERR(f))
 		return -errno;
 
-	pos = f->pos;
-	f->pos = offset;
+	pos = f->f_pos;
+	f->f_pos = offset;
 	ret = __read(f, buf, count);
-	f->pos = pos;
+	f->f_pos = pos;
 
 	return ret;
 }
@@ -466,7 +466,7 @@ ssize_t read(int fd, void *buf, size_t count)
 	ret = __read(f, buf, count);
 
 	if (ret > 0)
-		f->pos += ret;
+		f->f_pos += ret;
 	return ret;
 }
 EXPORT_SYMBOL(read);
@@ -478,7 +478,7 @@ static ssize_t __write(FILE *f, const void *buf, size_t count)
 
 	fsdrv = f->fsdev->driver;
 
-	if ((f->flags & O_ACCMODE) == O_RDONLY || !fsdrv->write) {
+	if ((f->f_flags & O_ACCMODE) == O_RDONLY || !fsdrv->write) {
 		ret = -EBADF;
 		goto out;
 	}
@@ -486,18 +486,18 @@ static ssize_t __write(FILE *f, const void *buf, size_t count)
 	if (fsdrv != ramfs_driver)
 		assert_command_context();
 
-	if (f->size != FILE_SIZE_STREAM && f->pos + count > f->size) {
-		ret = fsdev_truncate(&f->fsdev->dev, f, f->pos + count);
+	if (f->size != FILE_SIZE_STREAM && f->f_pos + count > f->size) {
+		ret = fsdev_truncate(&f->fsdev->dev, f, f->f_pos + count);
 		if (ret) {
 			if (ret == -EPERM)
 				ret = -ENOSPC;
 			if (ret != -ENOSPC)
 				goto out;
-			count = f->size - f->pos;
+			count = f->size - f->f_pos;
 			if (!count)
 				goto out;
 		} else {
-			f->size = f->pos + count;
+			f->size = f->f_pos + count;
 			f->f_inode->i_size = f->size;
 		}
 	}
@@ -515,10 +515,10 @@ ssize_t pwrite(int fd, const void *buf, size_t count, loff_t offset)
 	if (IS_ERR(f))
 		return -errno;
 
-	pos = f->pos;
-	f->pos = offset;
+	pos = f->f_pos;
+	f->f_pos = offset;
 	ret = __write(f, buf, count);
-	f->pos = pos;
+	f->f_pos = pos;
 
 	return ret;
 }
@@ -535,7 +535,7 @@ ssize_t write(int fd, const void *buf, size_t count)
 	ret = __write(f, buf, count);
 
 	if (ret > 0)
-		f->pos += ret;
+		f->f_pos += ret;
 	return ret;
 }
 EXPORT_SYMBOL(write);
@@ -580,7 +580,7 @@ loff_t lseek(int fd, loff_t offset, int whence)
 		pos = 0;
 		break;
 	case SEEK_CUR:
-		pos = f->pos;
+		pos = f->f_pos;
 		break;
 	case SEEK_END:
 		pos = f->size;
@@ -600,7 +600,7 @@ loff_t lseek(int fd, loff_t offset, int whence)
 			goto out;
 	}
 
-	f->pos = pos;
+	f->f_pos = pos;
 
 	return pos;
 
@@ -741,7 +741,7 @@ int close(int fd)
 	if (IS_ERR(f))
 		return -errno;
 
-	if (!(f->flags & O_PATH)) {
+	if (!(f->f_flags & O_PATH)) {
 		struct fs_driver *fsdrv;
 
 		fsdrv = f->fsdev->driver;
@@ -2195,7 +2195,7 @@ static bool file_has_flag(FILE *f, unsigned flag)
 {
 	if (IS_ERR_OR_NULL(f))
 		return false;
-	return (f->flags & flag) == flag;
+	return (f->f_flags & flag) == flag;
 }
 
 static const char *path_init(int dirfd, struct nameidata *nd, unsigned flags)
@@ -2228,7 +2228,7 @@ static const char *path_init(int dirfd, struct nameidata *nd, unsigned flags)
 			return ERR_CAST(f);
 
 		nd->path.mnt = &f->fsdev->vfsmount;
-		nd->path.dentry = f->dentry;
+		nd->path.dentry = f->f_dentry;
 		follow_mount(&nd->path);
 
 		if (*s == '/')
@@ -2571,10 +2571,10 @@ int openat(int dirfd, const char *pathname, int flags)
 		}
 
 		f->path = NULL;
-		f->dentry = NULL;
+		f->f_dentry = NULL;
 		f->f_inode = new_inode(&fsdev->sb);
 		f->f_inode->i_mode = S_IFREG;
-		f->flags = flags;
+		f->f_flags = flags;
 		f->size = 0;
 
 		return file_to_fd(f);
@@ -2656,9 +2656,9 @@ int openat(int dirfd, const char *pathname, int flags)
 	}
 
 	f->path = dpath(dentry, d_root);
-	f->dentry = dentry;
+	f->f_dentry = dentry;
 	f->f_inode = iget(inode);
-	f->flags = flags;
+	f->f_flags = flags;
 	f->size = inode->i_size;
 
 	fsdrv = fsdev->driver;
@@ -2684,7 +2684,7 @@ int openat(int dirfd, const char *pathname, int flags)
 	}
 
 	if (flags & O_APPEND)
-		f->pos = f->size;
+		f->f_pos = f->size;
 
 	return file_to_fd(f);
 
diff --git a/fs/jffs2/fs.c b/fs/jffs2/fs.c
index f65cd62585e8..81a89282281c 100644
--- a/fs/jffs2/fs.c
+++ b/fs/jffs2/fs.c
@@ -51,14 +51,14 @@ static int jffs2_open(struct device *dev, FILE *file, const char *filename)
 	jf->buf = xmalloc(JFFS2_BLOCK_SIZE);
 	jf->offset = -1;
 
-	file->priv = jf;
+	file->private_data = jf;
 
 	return 0;
 }
 
 static int jffs2_close(struct device *dev, FILE *f)
 {
-	struct jffs2_file *jf = f->priv;
+	struct jffs2_file *jf = f->private_data;
 
 	free(jf->buf);
 	free(jf);
@@ -89,17 +89,17 @@ static int jffs2_get_block(struct jffs2_file *jf, unsigned int pos)
 static int jffs2_read(struct device *_dev, FILE *f, void *buf,
 		      size_t insize)
 {
-	struct jffs2_file *jf = f->priv;
-	unsigned int pos = f->pos;
+	struct jffs2_file *jf = f->private_data;
+	unsigned int pos = f->f_pos;
 	unsigned int ofs;
 	unsigned int now;
 	unsigned int size = insize;
 	int ret;
 
 	/* Read till end of current block */
-	ofs = f->pos % JFFS2_BLOCK_SIZE;
+	ofs = f->f_pos % JFFS2_BLOCK_SIZE;
 	if (ofs) {
-		ret = jffs2_get_block(jf, f->pos - ofs); /* Align down block */
+		ret = jffs2_get_block(jf, f->f_pos - ofs); /* Align down block */
 		if (ret)
 			return ret;
 
diff --git a/fs/nfs.c b/fs/nfs.c
index 1a0b28442d7c..40cbf7c773f3 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -1166,7 +1166,7 @@ static int nfs_open(struct device *dev, FILE *file, const char *filename)
 	priv = xzalloc(sizeof(*priv));
 	priv->fh = ninode->fh;
 	priv->npriv = npriv;
-	file->priv = priv;
+	file->private_data = priv;
 	file->size = inode->i_size;
 
 	priv->fifo = kfifo_alloc(1024);
@@ -1180,7 +1180,7 @@ static int nfs_open(struct device *dev, FILE *file, const char *filename)
 
 static int nfs_close(struct device *dev, FILE *file)
 {
-	struct file_priv *priv = file->priv;
+	struct file_priv *priv = file->private_data;
 
 	nfs_do_close(priv);
 
@@ -1195,13 +1195,13 @@ static int nfs_write(struct device *_dev, FILE *file, const void *inbuf,
 
 static int nfs_read(struct device *dev, FILE *file, void *buf, size_t insize)
 {
-	struct file_priv *priv = file->priv;
+	struct file_priv *priv = file->private_data;
 
 	if (insize > 1024)
 		insize = 1024;
 
 	if (insize && !kfifo_len(priv->fifo)) {
-		int ret = nfs_read_req(priv, file->pos, insize);
+		int ret = nfs_read_req(priv, file->f_pos, insize);
 		if (ret)
 			return ret;
 	}
@@ -1211,7 +1211,7 @@ static int nfs_read(struct device *dev, FILE *file, void *buf, size_t insize)
 
 static int nfs_lseek(struct device *dev, FILE *file, loff_t pos)
 {
-	struct file_priv *priv = file->priv;
+	struct file_priv *priv = file->private_data;
 
 	kfifo_reset(priv->fifo);
 
diff --git a/fs/omap4_usbbootfs.c b/fs/omap4_usbbootfs.c
index 1692e3bb3390..85019cde91ff 100644
--- a/fs/omap4_usbbootfs.c
+++ b/fs/omap4_usbbootfs.c
@@ -66,11 +66,11 @@ static int omap4_usbbootfs_open(struct device *dev, FILE *file,
 {
 	struct file_priv *priv;
 
-	priv = omap4_usbbootfs_do_open(dev, file->flags, filename);
+	priv = omap4_usbbootfs_do_open(dev, file->f_flags, filename);
 	if (IS_ERR(priv))
 		return PTR_ERR(priv);
 
-	file->priv = priv;
+	file->private_data = priv;
 	file->size = priv->size;
 
 	return 0;
@@ -89,25 +89,25 @@ static int omap4_usbbootfs_do_close(struct file_priv *priv)
 
 static int omap4_usbbootfs_close(struct device *dev, FILE *f)
 {
-	struct file_priv *priv = f->priv;
+	struct file_priv *priv = f->private_data;
 	return omap4_usbbootfs_do_close(priv);
 }
 
 static int omap4_usbbootfs_read(struct device *dev, FILE *f, void *buf,
 				size_t size)
 {
-	struct file_priv *priv = f->priv;
+	struct file_priv *priv = f->private_data;
 	u32 data;
 
-	if (size > priv->size - f->pos)
-		size = priv->size - f->pos;
+	if (size > priv->size - f->f_pos)
+		size = priv->size - f->f_pos;
 	if (!size)
 		return 0;
 
 	data = OMAP4_USBBOOT_FS_MAGIC	; omap4_usbboot_write(&data, 4);
 	data = OMAP4_USBBOOT_FS_CMD_READ; omap4_usbboot_write(&data, 4);
 	omap4_usbboot_write(&priv->id, 4);
-	omap4_usbboot_write(&f->pos, 4);
+	omap4_usbboot_write(&f->f_pos, 4);
 	omap4_usbboot_write(&size, 4);
 	data = OMAP4_USBBOOT_FS_CMD_END	; omap4_usbboot_write(&data, 4);
 
diff --git a/fs/pstore/fs.c b/fs/pstore/fs.c
index 4e62a7300ba1..54d18c0d5b88 100644
--- a/fs/pstore/fs.c
+++ b/fs/pstore/fs.c
@@ -151,7 +151,7 @@ static int pstore_open(struct device *dev, FILE *file, const char *filename)
 		return -ENOENT;
 
 	file->size = d->size;
-	file->priv = d;
+	file->private_data = d;
 	d->pos = 0;
 
 	return 0;
@@ -165,7 +165,7 @@ static int pstore_close(struct device *dev, FILE *file)
 static int pstore_read(struct device *dev, FILE *file, void *buf,
 		       size_t insize)
 {
-	struct pstore_private *d = file->priv;
+	struct pstore_private *d = file->private_data;
 
 	memcpy(buf, &d->data[d->pos], insize);
 	d->pos += insize;
@@ -175,7 +175,7 @@ static int pstore_read(struct device *dev, FILE *file, void *buf,
 
 static int pstore_lseek(struct device *dev, FILE *file, loff_t pos)
 {
-	struct pstore_private *d = file->priv;
+	struct pstore_private *d = file->private_data;
 
 	d->pos = pos;
 
diff --git a/fs/ramfs.c b/fs/ramfs.c
index e34742e42959..a5d8fdb4c51c 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -216,10 +216,10 @@ static int ramfs_read(struct device *_dev, FILE *f, void *buf, size_t insize)
 	struct ramfs_inode *node = to_ramfs_inode(inode);
 	struct ramfs_chunk *data;
 	int ofs, len, now;
-	unsigned long pos = f->pos;
+	unsigned long pos = f->f_pos;
 	int size = insize;
 
-	pr_vdebug("%s: %p %zu @ %lld\n", __func__, node, insize, f->pos);
+	pr_vdebug("%s: %p %zu @ %lld\n", __func__, node, insize, f->f_pos);
 
 	while (size) {
 		data = ramfs_find_chunk(node, pos, &ofs, &len);
@@ -247,10 +247,10 @@ static int ramfs_write(struct device *_dev, FILE *f, const void *buf,
 	struct ramfs_inode *node = to_ramfs_inode(inode);
 	struct ramfs_chunk *data;
 	int ofs, len, now;
-	unsigned long pos = f->pos;
+	unsigned long pos = f->f_pos;
 	int size = insize;
 
-	pr_vdebug("%s: %p %zu @ %lld\n", __func__, node, insize, f->pos);
+	pr_vdebug("%s: %p %zu @ %lld\n", __func__, node, insize, f->f_pos);
 
 	while (size) {
 		data = ramfs_find_chunk(node, pos, &ofs, &len);
diff --git a/fs/ratpfs.c b/fs/ratpfs.c
index f1b9ed4ed8f2..30469d304eee 100644
--- a/fs/ratpfs.c
+++ b/fs/ratpfs.c
@@ -84,7 +84,7 @@ static int ratpfs_truncate(struct device __always_unused *dev,
 		+ 4 /* size */;
 	struct ratp_bb_pkt *pkt_tx = xzalloc(sizeof(*pkt_tx)+len_tx);
 	struct ratp_bb_pkt *pkt_rx = NULL;
-	struct ratpfs_file *rfile = f->priv;
+	struct ratpfs_file *rfile = f->private_data;
 	int ret;
 
 	pr_debug("%s: len_tx=%i handle=%i size=%i\n", __func__,
@@ -130,7 +130,7 @@ static int ratpfs_open(struct device __always_unused *dev,
 
 	pkt_tx->len = len_tx;
 	pkt_tx->data[0] = RATPFS_TYPE_OPEN_CALL;
-	put_unaligned_be32(file->flags, &pkt_tx->data[1]);
+	put_unaligned_be32(file->f_flags, &pkt_tx->data[1]);
 	memcpy(&pkt_tx->data[5], filename, len_name);
 
 	ret = barebox_ratp_fs_call(pkt_tx, &pkt_rx);
@@ -150,13 +150,13 @@ static int ratpfs_open(struct device __always_unused *dev,
 		ret = -get_unaligned_be32(&pkt_rx->data[5]); /* errno */
 		goto err;
 	}
-	file->priv = rfile;
+	file->private_data = rfile;
 	file->size = get_unaligned_be32(&pkt_rx->data[5]);
 
 	goto out;
 
 err:
-	file->priv = NULL;
+	file->private_data = NULL;
 	free(rfile);
 out:
 	free(pkt_rx);
@@ -170,7 +170,7 @@ static int ratpfs_close(struct device __always_unused *dev,
 		+ 4 /* handle */;
 	struct ratp_bb_pkt *pkt_tx = xzalloc(sizeof(*pkt_tx) + len_tx);
 	struct ratp_bb_pkt *pkt_rx = NULL;
-	struct ratpfs_file *rfile = f->priv;
+	struct ratpfs_file *rfile = f->private_data;
 	int ret;
 
 	pr_debug("%s: len_tx=%i handle=%i\n", __func__,
@@ -208,16 +208,16 @@ static int ratpfs_write(struct device __always_unused *dev,
 		+ size /* data */;
 	struct ratp_bb_pkt *pkt_tx = xzalloc(sizeof(*pkt_tx) + len_tx);
 	struct ratp_bb_pkt *pkt_rx = NULL;
-	struct ratpfs_file *rfile = f->priv;
+	struct ratpfs_file *rfile = f->private_data;
 	int ret;
 
 	pr_debug("%s: len_tx=%i handle=%i pos=%i size=%i\n", __func__,
-		 len_tx, rfile->handle, (int)f->pos, size);
+		 len_tx, rfile->handle, (int)f->f_pos, size);
 
 	pkt_tx->len = len_tx;
 	pkt_tx->data[0] = RATPFS_TYPE_WRITE_CALL;
 	put_unaligned_be32(rfile->handle, &pkt_tx->data[1]);
-	put_unaligned_be32(f->pos, &pkt_tx->data[5]);
+	put_unaligned_be32(f->f_pos, &pkt_tx->data[5]);
 	memcpy(&pkt_tx->data[9], buf, size);
 
 	ret = barebox_ratp_fs_call(pkt_tx, &pkt_rx);
@@ -251,16 +251,16 @@ static int ratpfs_read(struct device __always_unused *dev,
 		+ 4 /* size */;
 	struct ratp_bb_pkt *pkt_tx = xzalloc(sizeof(*pkt_tx) + len_tx);
 	struct ratp_bb_pkt *pkt_rx = NULL;
-	struct ratpfs_file *rfile = f->priv;
+	struct ratpfs_file *rfile = f->private_data;
 	int ret;
 
 	pr_debug("%s: len_tx=%i handle=%i pos=%i size=%i\n", __func__,
-		 len_tx, rfile->handle, (int)f->pos, size);
+		 len_tx, rfile->handle, (int)f->f_pos, size);
 
 	pkt_tx->len = len_tx;
 	pkt_tx->data[0] = RATPFS_TYPE_READ_CALL;
 	put_unaligned_be32(rfile->handle, &pkt_tx->data[1]);
-	put_unaligned_be32(f->pos, &pkt_tx->data[5]);
+	put_unaligned_be32(f->f_pos, &pkt_tx->data[5]);
 	put_unaligned_be32(size, &pkt_tx->data[9]);
 
 	ret = barebox_ratp_fs_call(pkt_tx, &pkt_rx);
@@ -468,4 +468,4 @@ static int ratpfs_init(void)
 {
 	return register_fs_driver(&ratpfs_driver);
 }
-coredevice_initcall(ratpfs_init);
\ No newline at end of file
+coredevice_initcall(ratpfs_init);
diff --git a/fs/smhfs.c b/fs/smhfs.c
index f57d1ff9ced3..1edeba3e591c 100644
--- a/fs/smhfs.c
+++ b/fs/smhfs.c
@@ -26,7 +26,7 @@
 
 static int file_to_fd(const FILE *f)
 {
-	return (int)(uintptr_t)f->priv;
+	return (int)(uintptr_t)f->private_data;
 }
 
 static int smhfs_create(struct device __always_unused *dev,
@@ -65,11 +65,11 @@ static int smhfs_open(struct device __always_unused *dev,
 	/* Get rid of leading '/' */
 	filename = &filename[1];
 
-	fd = semihosting_open(filename, file->flags);
+	fd = semihosting_open(filename, file->f_flags);
 	if (fd < 0)
 		return fd;
 
-	file->priv = (void *)(uintptr_t)fd;
+	file->private_data = (void *)(uintptr_t)fd;
 	file->size = semihosting_flen(fd);
 	if (file->size < 0)
 		return file->size;
diff --git a/fs/squashfs/squashfs.c b/fs/squashfs/squashfs.c
index f2e5769a1957..5ba435d86cef 100644
--- a/fs/squashfs/squashfs.c
+++ b/fs/squashfs/squashfs.c
@@ -151,7 +151,7 @@ static int squashfs_open(struct device *dev, FILE *file, const char *filename)
 	page->idx = 0;
 	page->real_page.inode = inode;
 	file->size = inode->i_size;
-	file->priv = page;
+	file->private_data = page;
 
 	return 0;
 
@@ -167,7 +167,7 @@ static int squashfs_open(struct device *dev, FILE *file, const char *filename)
 
 static int squashfs_close(struct device *dev, FILE *f)
 {
-	struct squashfs_page *page = f->priv;
+	struct squashfs_page *page = f->private_data;
 	int i;
 
 	for (i = 0; i < 32; i++)
@@ -201,11 +201,11 @@ static int squashfs_read(struct device *_dev, FILE *f, void *buf,
 			 size_t insize)
 {
 	unsigned int size = insize;
-	unsigned int pos = f->pos;
+	unsigned int pos = f->f_pos;
 	unsigned int ofs;
 	unsigned int now;
 	void *pagebuf;
-	struct squashfs_page *page = f->priv;
+	struct squashfs_page *page = f->private_data;
 
 	/* Read till end of current buffer page */
 	ofs = pos % PAGE_CACHE_SIZE;
diff --git a/fs/tftp.c b/fs/tftp.c
index cc9c4ab1f72f..4df3215927b1 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -769,11 +769,11 @@ static int tftp_open(struct device *dev, FILE *file, const char *filename)
 {
 	struct file_priv *priv;
 
-	priv = tftp_do_open(dev, file->flags, file->dentry, false);
+	priv = tftp_do_open(dev, file->f_flags, file->f_dentry, false);
 	if (IS_ERR(priv))
 		return PTR_ERR(priv);
 
-	file->priv = priv;
+	file->private_data = priv;
 
 	return 0;
 }
@@ -820,7 +820,7 @@ static int tftp_do_close(struct file_priv *priv)
 
 static int tftp_close(struct device *dev, FILE *f)
 {
-	struct file_priv *priv = f->priv;
+	struct file_priv *priv = f->private_data;
 
 	return tftp_do_close(priv);
 }
@@ -828,7 +828,7 @@ static int tftp_close(struct device *dev, FILE *f)
 static int tftp_write(struct device *_dev, FILE *f, const void *inbuf,
 		      size_t insize)
 {
-	struct file_priv *priv = f->priv;
+	struct file_priv *priv = f->private_data;
 	size_t size, now;
 	int ret;
 
@@ -863,7 +863,7 @@ static int tftp_write(struct device *_dev, FILE *f, const void *inbuf,
 
 static int tftp_read(struct device *dev, FILE *f, void *buf, size_t insize)
 {
-	struct file_priv *priv = f->priv;
+	struct file_priv *priv = f->private_data;
 	size_t outsize = 0, now;
 	int ret = 0;
 
@@ -904,7 +904,7 @@ static int tftp_read(struct device *dev, FILE *f, void *buf, size_t insize)
 static int tftp_lseek(struct device *dev, FILE *f, loff_t pos)
 {
 	/* We cannot seek backwards without reloading or caching the file */
-	loff_t f_pos = f->pos;
+	loff_t f_pos = f->f_pos;
 
 	if (pos >= f_pos) {
 		int ret = 0;
@@ -931,7 +931,7 @@ static int tftp_lseek(struct device *dev, FILE *f, loff_t pos)
 			 * Update f->pos even if the overall request
 			 * failed since we can't move backwards
 			 */
-			f->pos = f_pos;
+			f->f_pos = f_pos;
 			return ret;
 		}
 
diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
index ad288f4daa3a..2ca510ab86fd 100644
--- a/fs/ubifs/ubifs.c
+++ b/fs/ubifs/ubifs.c
@@ -353,14 +353,14 @@ static int ubifs_open(struct device *dev, FILE *file, const char *filename)
 	uf->block = -1;
 
 	file->size = inode->i_size;
-	file->priv = uf;
+	file->private_data = uf;
 
 	return 0;
 }
 
 static int ubifs_close(struct device *dev, FILE *f)
 {
-	struct ubifs_file *uf = f->priv;
+	struct ubifs_file *uf = f->private_data;
 
 	free(uf->buf);
 	free(uf->dn);
@@ -386,15 +386,15 @@ static int ubifs_get_block(struct ubifs_file *uf, unsigned int pos)
 
 static int ubifs_read(struct device *_dev, FILE *f, void *buf, size_t insize)
 {
-	struct ubifs_file *uf = f->priv;
-	unsigned int pos = f->pos;
+	struct ubifs_file *uf = f->private_data;
+	unsigned int pos = f->f_pos;
 	unsigned int ofs;
 	unsigned int now;
 	unsigned int size = insize;
 	int ret;
 
 	/* Read till end of current block */
-	ofs = f->pos % UBIFS_BLOCK_SIZE;
+	ofs = f->f_pos % UBIFS_BLOCK_SIZE;
 	if (ofs) {
 		ret = ubifs_get_block(uf, pos);
 		if (ret)
diff --git a/fs/ubootvarfs.c b/fs/ubootvarfs.c
index 32cf574e57bd..7f41c63e7264 100644
--- a/fs/ubootvarfs.c
+++ b/fs/ubootvarfs.c
@@ -338,7 +338,7 @@ static int ubootvarfs_io(struct device *dev, FILE *f, void *buf,
 {
 	struct inode *inode = f->f_inode;
 	struct ubootvarfs_inode *node = inode_to_node(inode);
-	void *ptr = node->var->start + f->pos;
+	void *ptr = node->var->start + f->f_pos;
 
 	if (read)
 		memcpy(buf, ptr, insize);
diff --git a/fs/uimagefs.c b/fs/uimagefs.c
index 54541fa7710c..29a1e204de8e 100644
--- a/fs/uimagefs.c
+++ b/fs/uimagefs.c
@@ -89,14 +89,14 @@ static int uimagefs_open(struct device *dev, FILE *file, const char *filename)
 	}
 
 	file->size = d->size;
-	file->priv = d;
+	file->private_data = d;
 
 	return 0;
 }
 
 static int uimagefs_close(struct device *dev, FILE *file)
 {
-	struct uimagefs_handle_data *d = file->priv;
+	struct uimagefs_handle_data *d = file->private_data;
 
 	close(d->fd);
 
@@ -106,7 +106,7 @@ static int uimagefs_close(struct device *dev, FILE *file)
 static int uimagefs_read(struct device *dev, FILE *file, void *buf,
 			 size_t insize)
 {
-	struct uimagefs_handle_data *d = file->priv;
+	struct uimagefs_handle_data *d = file->private_data;
 
 	if (!uimagefs_is_data_file(d)) {
 		memcpy(buf, &d->data[d->pos], insize);
@@ -118,7 +118,7 @@ static int uimagefs_read(struct device *dev, FILE *file, void *buf,
 
 static int uimagefs_lseek(struct device *dev, FILE *file, loff_t pos)
 {
-	struct uimagefs_handle_data *d = file->priv;
+	struct uimagefs_handle_data *d = file->private_data;
 
 	if (uimagefs_is_data_file(d))
 		lseek(d->fd, d->offset + pos, SEEK_SET);
diff --git a/include/fs.h b/include/fs.h
index 1deb1a87bb7f..c10debd6a5df 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -22,16 +22,15 @@ struct stat;
 typedef struct filep {
 	struct fs_device *fsdev; /* The device this FILE belongs to              */
 	char *path;
-	loff_t pos;            /* current position in stream                   */
+	loff_t f_pos;            /* current position in stream                   */
 #define FILE_SIZE_STREAM	((loff_t) -1)
 	loff_t size;           /* The size of this inode                       */
-	ulong flags;          /* the O_* flags from open                      */
-
-	void *priv;         /* private to the filesystem driver              */
+	ulong f_flags;          /* the O_* flags from open                      */
 
+	void *private_data;         /* private to the filesystem driver              */
 
 	struct inode *f_inode;
-	struct dentry *dentry;
+	struct path f_path;
 } FILE;
 
 #define FS_DRIVER_NO_DEV	1
-- 
2.39.5



