Delivery-date: Tue, 07 Jan 2025 09:04:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV4ZK-000Eq1-1Q
	for lore@lore.pengutronix.de;
	Tue, 07 Jan 2025 09:04:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV4Yn-0001qK-J4
	for lore@pengutronix.de; Tue, 07 Jan 2025 09:04:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lYecsb8JwPZWkC0/RbmhNjZ0ofehLg9O/mN9mQIF3Kk=; b=yNO3y4B/fqA3YmRfLiBho88zdu
	kGLf7c74zHUzOJ1GMiohR4DLSmFxi8LjvvPWJ2g9hoyuMyFA+dUv4sYSeLbInQZKCMSD2Pjay0lrn
	hvj79GfOlg0zmI4aoQvt89KyxhPxGS/+Log0Uc/B6fmj/OvD0ZbLX/I+mSwMAtkAkJrWfLCBYXmeC
	Ry+WIDWdVnJpTU/iax6f+qhxY6kDWpJdjkxQOX2FZ0s95ShStx5L0ce3jNQx4UNiFl5tj+d9wnoNU
	P2bKiGL3ufihkW3KobBPPbYj18vrR7BA9If+PMBBfoCMI/uFobmR4S96ZoogdJs0ACJLijFbKIMeU
	5463uxuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tV4XM-00000003q2u-0RXG;
	Tue, 07 Jan 2025 08:02:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tV4VI-00000003pVK-2Vft
	for barebox@lists.infradead.org;
	Tue, 07 Jan 2025 07:59:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV4VH-0000rd-By; Tue, 07 Jan 2025 08:59:55 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV4VG-007Iqm-1G;
	Tue, 07 Jan 2025 08:59:55 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV4VH-00Bv76-0F;
	Tue, 07 Jan 2025 08:59:55 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  7 Jan 2025 08:59:37 +0100
Message-Id: <20250107075939.2841119-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250107075939.2841119-1-a.fatoum@pengutronix.de>
References: <20250107075939.2841119-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_235956_793902_99D4B6EE 
X-CRM114-Status: GOOD (  21.43  )
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
Subject: [PATCH 6/8] fs: replace FILE.size by f_inode.i_size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A file's size is stored in both the inode and struct filep, so we sync
both values at a number of places.

Instead of duplicating this information, just use the inode's size,
but give it a macro for easier use.

While at it, we also remove redundant assignments to the size field:
The VFS core already does this at truncate time, so repeating it in the
file systems is unnecessary.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/bpkfs.c             |  2 +-
 fs/devfs.c             |  2 +-
 fs/efi.c               |  2 +-
 fs/efivarfs.c          |  4 +---
 fs/fat/fat.c           |  2 +-
 fs/fs.c                | 46 +++++++++++++++++++-----------------------
 fs/nfs.c               |  1 -
 fs/omap4_usbbootfs.c   |  2 +-
 fs/pstore/fs.c         |  2 +-
 fs/ratpfs.c            |  2 +-
 fs/smhfs.c             |  6 +++---
 fs/squashfs/squashfs.c |  1 -
 fs/ubifs/ubifs.c       |  1 -
 fs/uimagefs.c          |  2 +-
 include/fs.h           |  2 +-
 15 files changed, 34 insertions(+), 43 deletions(-)

diff --git a/fs/bpkfs.c b/fs/bpkfs.c
index 8b32e26b9cd1..18ac70143e99 100644
--- a/fs/bpkfs.c
+++ b/fs/bpkfs.c
@@ -161,7 +161,7 @@ static int bpkfs_open(struct device *dev, FILE *f, const char *filename)
 		lseek(d->fd, d->offset, SEEK_SET);
 	}
 
-	f->size = d->size;
+	f->f_size = d->size;
 	f->private_data = d;
 	ret = 0;
 
diff --git a/fs/devfs.c b/fs/devfs.c
index d82e7dff7b94..51bf0f65490a 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -106,7 +106,7 @@ static int devfs_open(struct device *_dev, FILE *f, const char *filename)
 	struct devfs_inode *node = container_of(inode, struct devfs_inode, inode);
 	struct cdev *cdev = node->cdev;
 
-	f->size = cdev->flags & DEVFS_IS_CHARACTER_DEV ?
+	f->f_size = cdev->flags & DEVFS_IS_CHARACTER_DEV ?
 			FILE_SIZE_STREAM : cdev->size;
 	f->private_data = cdev;
 
diff --git a/fs/efi.c b/fs/efi.c
index d4fb9105277b..cbf53e3fe917 100644
--- a/fs/efi.c
+++ b/fs/efi.c
@@ -178,7 +178,7 @@ static int efifs_open(struct device *dev, FILE *f, const char *filename)
 		goto out;
 	}
 
-	f->size = info->FileSize;
+	f->f_size = info->FileSize;
 
 	free(info);
 	f->private_data = ufile;
diff --git a/fs/efivarfs.c b/fs/efivarfs.c
index 2e12b410f740..092437b54136 100644
--- a/fs/efivarfs.c
+++ b/fs/efivarfs.c
@@ -158,7 +158,7 @@ static int efivarfs_open(struct device *dev, FILE *f, const char *filename)
 		goto out;
 	}
 
-	f->size = efile->size;
+	f->f_size = efile->size;
 	f->private_data = efile;
 
 	return 0;
@@ -226,8 +226,6 @@ static int efivarfs_truncate(struct device *dev, FILE *f, loff_t size)
 	if (EFI_ERROR(efiret))
 		return -efi_errno(efiret);
 
-	f->size = efile->size;
-
 	return 0;
 }
 
diff --git a/fs/fat/fat.c b/fs/fat/fat.c
index 7bf91be04281..af5a3e03f794 100644
--- a/fs/fat/fat.c
+++ b/fs/fat/fat.c
@@ -205,7 +205,7 @@ static int fat_open(struct device *dev, FILE *file, const char *filename)
 	}
 
 	file->private_data = f_file;
-	file->size = f_file->fsize;
+	file->f_size = f_file->fsize;
 
 	return 0;
 }
diff --git a/fs/fs.c b/fs/fs.c
index d2287a82b579..dbac07d5996c 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -379,15 +379,14 @@ int ftruncate(int fd, loff_t length)
 	if (IS_ERR(f))
 		return -errno;
 
-	if (f->size == FILE_SIZE_STREAM)
+	if (f->f_size == FILE_SIZE_STREAM)
 		return 0;
 
 	ret = fsdev_truncate(&f->fsdev->dev, f, length);
 	if (ret)
 		return errno_set(ret);
 
-	f->size = length;
-	f->f_inode->i_size = f->size;
+	f->f_size = length;
 
 	return 0;
 }
@@ -426,8 +425,8 @@ static ssize_t __read(FILE *f, void *buf, size_t count)
 	if (fsdrv != ramfs_driver)
 		assert_command_context();
 
-	if (f->size != FILE_SIZE_STREAM && f->f_pos + count > f->size)
-		count = f->size - f->f_pos;
+	if (f->f_size != FILE_SIZE_STREAM && f->f_pos + count > f->f_size)
+		count = f->f_size - f->f_pos;
 
 	if (!count)
 		return 0;
@@ -486,19 +485,18 @@ static ssize_t __write(FILE *f, const void *buf, size_t count)
 	if (fsdrv != ramfs_driver)
 		assert_command_context();
 
-	if (f->size != FILE_SIZE_STREAM && f->f_pos + count > f->size) {
+	if (f->f_size != FILE_SIZE_STREAM && f->f_pos + count > f->f_size) {
 		ret = fsdev_truncate(&f->fsdev->dev, f, f->f_pos + count);
 		if (ret) {
 			if (ret == -EPERM)
 				ret = -ENOSPC;
 			if (ret != -ENOSPC)
 				goto out;
-			count = f->size - f->f_pos;
+			count = f->f_size - f->f_pos;
 			if (!count)
 				goto out;
 		} else {
-			f->size = f->f_pos + count;
-			f->f_inode->i_size = f->size;
+			f->f_size = f->f_pos + count;
 		}
 	}
 	ret = fsdrv->write(&f->fsdev->dev, f, buf, count);
@@ -583,7 +581,7 @@ loff_t lseek(int fd, loff_t offset, int whence)
 		pos = f->f_pos;
 		break;
 	case SEEK_END:
-		pos = f->size;
+		pos = f->f_size;
 		break;
 	default:
 		goto out;
@@ -591,7 +589,7 @@ loff_t lseek(int fd, loff_t offset, int whence)
 
 	pos += offset;
 
-	if (f->size != FILE_SIZE_STREAM && (pos < 0 || pos > f->size))
+	if (f->f_size != FILE_SIZE_STREAM && (pos < 0 || pos > f->f_size))
 		goto out;
 
 	if (fsdrv->lseek) {
@@ -619,10 +617,10 @@ int erase(int fd, loff_t count, loff_t offset, enum erase_type type)
 
 	if (IS_ERR(f))
 		return -errno;
-	if (offset >= f->size)
+	if (offset >= f->f_size)
 		return 0;
-	if (count == ERASE_SIZE_ALL || count > f->size - offset)
-		count = f->size - offset;
+	if (count == ERASE_SIZE_ALL || count > f->f_size - offset)
+		count = f->f_size - offset;
 	if (count < 0)
 		return -EINVAL;
 
@@ -648,10 +646,10 @@ int protect(int fd, size_t count, loff_t offset, int prot)
 
 	if (IS_ERR(f))
 		return -errno;
-	if (offset >= f->size)
+	if (offset >= f->f_size)
 		return 0;
-	if (count > f->size - offset)
-		count = f->size - offset;
+	if (count > f->f_size - offset)
+		count = f->f_size - offset;
 
 	fsdrv = f->fsdev->driver;
 
@@ -675,10 +673,10 @@ int discard_range(int fd, loff_t count, loff_t offset)
 
 	if (IS_ERR(f))
 		return -errno;
-	if (offset >= f->size)
+	if (offset >= f->f_size)
 		return 0;
-	if (count > f->size - offset)
-		count = f->size - offset;
+	if (count > f->f_size - offset)
+		count = f->f_size - offset;
 
 	fsdrv = f->fsdev->driver;
 
@@ -2575,7 +2573,7 @@ int openat(int dirfd, const char *pathname, int flags)
 		f->f_inode = new_inode(&fsdev->sb);
 		f->f_inode->i_mode = S_IFREG;
 		f->f_flags = flags;
-		f->size = 0;
+		f->f_size = 0;
 
 		return file_to_fd(f);
 	}
@@ -2659,7 +2657,6 @@ int openat(int dirfd, const char *pathname, int flags)
 	f->f_dentry = dentry;
 	f->f_inode = iget(inode);
 	f->f_flags = flags;
-	f->size = inode->i_size;
 
 	fsdrv = fsdev->driver;
 
@@ -2677,14 +2674,13 @@ int openat(int dirfd, const char *pathname, int flags)
 
 	if (flags & O_TRUNC) {
 		error = fsdev_truncate(&fsdev->dev, f, 0);
-		f->size = 0;
-		inode->i_size = 0;
+		f->f_size = 0;
 		if (error)
 			goto out;
 	}
 
 	if (flags & O_APPEND)
-		f->f_pos = f->size;
+		f->f_pos = f->f_size;
 
 	return file_to_fd(f);
 
diff --git a/fs/nfs.c b/fs/nfs.c
index 40cbf7c773f3..c7bf37ea9e13 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -1167,7 +1167,6 @@ static int nfs_open(struct device *dev, FILE *file, const char *filename)
 	priv->fh = ninode->fh;
 	priv->npriv = npriv;
 	file->private_data = priv;
-	file->size = inode->i_size;
 
 	priv->fifo = kfifo_alloc(1024);
 	if (!priv->fifo) {
diff --git a/fs/omap4_usbbootfs.c b/fs/omap4_usbbootfs.c
index 85019cde91ff..7a22acc9f01f 100644
--- a/fs/omap4_usbbootfs.c
+++ b/fs/omap4_usbbootfs.c
@@ -71,7 +71,7 @@ static int omap4_usbbootfs_open(struct device *dev, FILE *file,
 		return PTR_ERR(priv);
 
 	file->private_data = priv;
-	file->size = priv->size;
+	file->f_size = priv->size;
 
 	return 0;
 }
diff --git a/fs/pstore/fs.c b/fs/pstore/fs.c
index 54d18c0d5b88..e9b4d00cde06 100644
--- a/fs/pstore/fs.c
+++ b/fs/pstore/fs.c
@@ -150,7 +150,7 @@ static int pstore_open(struct device *dev, FILE *file, const char *filename)
 	if (!d)
 		return -ENOENT;
 
-	file->size = d->size;
+	file->f_size = d->size;
 	file->private_data = d;
 	d->pos = 0;
 
diff --git a/fs/ratpfs.c b/fs/ratpfs.c
index 30469d304eee..9760a5a40c5d 100644
--- a/fs/ratpfs.c
+++ b/fs/ratpfs.c
@@ -151,7 +151,7 @@ static int ratpfs_open(struct device __always_unused *dev,
 		goto err;
 	}
 	file->private_data = rfile;
-	file->size = get_unaligned_be32(&pkt_rx->data[5]);
+	file->f_size = get_unaligned_be32(&pkt_rx->data[5]);
 
 	goto out;
 
diff --git a/fs/smhfs.c b/fs/smhfs.c
index 1edeba3e591c..037e51c2cf9c 100644
--- a/fs/smhfs.c
+++ b/fs/smhfs.c
@@ -70,9 +70,9 @@ static int smhfs_open(struct device __always_unused *dev,
 		return fd;
 
 	file->private_data = (void *)(uintptr_t)fd;
-	file->size = semihosting_flen(fd);
-	if (file->size < 0)
-		return file->size;
+	file->f_size = semihosting_flen(fd);
+	if (file->f_size < 0)
+		return file->f_size;
 
 	return 0;
 }
diff --git a/fs/squashfs/squashfs.c b/fs/squashfs/squashfs.c
index 5ba435d86cef..5a33478da0a3 100644
--- a/fs/squashfs/squashfs.c
+++ b/fs/squashfs/squashfs.c
@@ -150,7 +150,6 @@ static int squashfs_open(struct device *dev, FILE *file, const char *filename)
 	page->data_block = 0;
 	page->idx = 0;
 	page->real_page.inode = inode;
-	file->size = inode->i_size;
 	file->private_data = page;
 
 	return 0;
diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
index 2ca510ab86fd..a88cb21e0559 100644
--- a/fs/ubifs/ubifs.c
+++ b/fs/ubifs/ubifs.c
@@ -352,7 +352,6 @@ static int ubifs_open(struct device *dev, FILE *file, const char *filename)
 	uf->dn = xzalloc(UBIFS_MAX_DATA_NODE_SZ);
 	uf->block = -1;
 
-	file->size = inode->i_size;
 	file->private_data = uf;
 
 	return 0;
diff --git a/fs/uimagefs.c b/fs/uimagefs.c
index 29a1e204de8e..83e6921fe9ec 100644
--- a/fs/uimagefs.c
+++ b/fs/uimagefs.c
@@ -88,7 +88,7 @@ static int uimagefs_open(struct device *dev, FILE *file, const char *filename)
 		lseek(d->fd, d->offset, SEEK_SET);
 	}
 
-	file->size = d->size;
+	file->f_size = d->size;
 	file->private_data = d;
 
 	return 0;
diff --git a/include/fs.h b/include/fs.h
index c10debd6a5df..404d0e58da97 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -24,11 +24,11 @@ typedef struct filep {
 	char *path;
 	loff_t f_pos;            /* current position in stream                   */
 #define FILE_SIZE_STREAM	((loff_t) -1)
-	loff_t size;           /* The size of this inode                       */
 	ulong f_flags;          /* the O_* flags from open                      */
 
 	void *private_data;         /* private to the filesystem driver              */
 
+#define f_size f_inode->i_size
 	struct inode *f_inode;
 	struct path f_path;
 } FILE;
-- 
2.39.5



