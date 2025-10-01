Delivery-date: Wed, 01 Oct 2025 10:07:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3rs4-0034GQ-2b
	for lore@lore.pengutronix.de;
	Wed, 01 Oct 2025 10:07:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3rs2-0003Xz-R3
	for lore@pengutronix.de; Wed, 01 Oct 2025 10:07:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SwPpNYvepZZXcjW8cUQRjRYjEHUjLpeneJnFZoG3fuI=; b=QWoo9yDJAKY3mqa7enKS0/5Ejb
	x5R5Il50ORowfqswom/G+PBTmu8g75h9CKF257CokYCgDYyMZr8zCbeAAFHIRMJT+Lvs41eyEAuc0
	gti7uQpTJJjJA1jItcwBADwb0H8yJeYwKNeoGEUJdxUKVZd5QjrZ1qDDGaRlcELZQXyTl5is5d9KR
	jE1hj9qqKuDGK0U49RqmVYhCJrKMPacw4EBLFmQa5HN5EuT9OQUrsmj8CblVkgEYpu1dD63Biv4DO
	+AH70YWdR/Y8RMcd+Bz6qPGybBK+GsOAUJ+iejjHGZuy+0wkYpE3hOpKZ/MoV3r7hcEYXPDDPNoz6
	HhAZko7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3rrA-00000006ygk-3YqL;
	Wed, 01 Oct 2025 08:06:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3rr7-00000006yfF-1nXl
	for barebox@lists.infradead.org;
	Wed, 01 Oct 2025 08:06:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v3rr5-0003HA-0e; Wed, 01 Oct 2025 10:06:31 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v3rr4-001NZ7-2a;
	Wed, 01 Oct 2025 10:06:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v3rr4-00000001kP0-31zf;
	Wed, 01 Oct 2025 10:06:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 01 Oct 2025 10:06:27 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251001-fs-remove-dev-argument-v1-1-1922aaf65062@pengutronix.de>
References: <20251001-fs-remove-dev-argument-v1-0-1922aaf65062@pengutronix.de>
In-Reply-To: <20251001-fs-remove-dev-argument-v1-0-1922aaf65062@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1759305990; l=32658;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=kECPSJodrrXSPg6OIFiL+LhXU54fZ8RL4CoXMMzTPyc=;
 b=C9y5mOavRtcZsxRF8A47C8DqRsfh9p9grg2f55RbvG3MkLFVcUkCeQMcGjgXDwh1rkT4CGucA
 xUx8jwxa6EfB2d3e+RKL1BKD9vcCcp77oF0O+bewSxjguIx/P6126bH
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251001_010633_789297_01259C21 
X-CRM114-Status: GOOD (  16.79  )
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
X-Spam-Status: No, score=-1.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] fs: remove redundant dev argument from fs_driver
 operations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

All fs_driver operations like read, write and ioctl take a struct device *
argument which is mostly unused by the filesystem driver and for the few
cases where it was used the device can be retrieved from the file argument.

Remove the redundant argument.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/9p/v9fs.h           |  6 ++----
 fs/9p/v9fs_vfs.h       |  2 +-
 fs/9p/vfs_addr.c       |  6 ++----
 fs/9p/vfs_dir.c        |  2 +-
 fs/9p/vfs_inode_dotl.c |  2 +-
 fs/bpkfs.c             |  4 ++--
 fs/cramfs/cramfs.c     |  2 +-
 fs/devfs.c             | 22 ++++++++++------------
 fs/efi.c               |  9 ++++-----
 fs/efivarfs.c          |  8 +++-----
 fs/ext4/ext_barebox.c  |  2 +-
 fs/fat/fat.c           |  9 ++++-----
 fs/fs.c                | 28 ++++++++++++++--------------
 fs/jffs2/fs.c          |  3 +--
 fs/nfs.c               |  9 ++++-----
 fs/omap4_usbbootfs.c   |  3 +--
 fs/pstore/fs.c         |  4 ++--
 fs/qemu_fw_cfg.c       | 15 ++++++---------
 fs/ramfs.c             |  9 ++++-----
 fs/ratpfs.c            |  9 +++------
 fs/smhfs.c             | 12 ++++--------
 fs/squashfs/squashfs.c |  3 +--
 fs/tftp.c              | 11 +++++------
 fs/ubifs/ubifs.c       |  2 +-
 fs/uimagefs.c          |  9 ++++-----
 include/fs.h           | 23 ++++++++++-------------
 26 files changed, 92 insertions(+), 122 deletions(-)

diff --git a/fs/9p/v9fs.h b/fs/9p/v9fs.h
index 2100fbcfa5de936d6fc574e0f0d5ac5c4da0de9e..4b90d35209cb396c8ee2dcda2c11911297284611 100644
--- a/fs/9p/v9fs.h
+++ b/fs/9p/v9fs.h
@@ -132,11 +132,9 @@ extern const struct inode_operations v9fs_symlink_inode_operations_dotl;
 extern struct inode *v9fs_fid_iget_dotl(struct super_block *sb,
 						struct p9_fid *fid, bool new);
 
-int v9fs_read(struct device *dev, struct file *f, void *buf,
-	      size_t insize);
+int v9fs_read(struct file *f, void *buf, size_t insize);
 
-int v9fs_write(struct device *dev, struct file *f, const void *buf,
-	       size_t insize);
+int v9fs_write(struct file *f, const void *buf, size_t insize);
 
 /* other default globals */
 #define V9FS_PORT	564
diff --git a/fs/9p/v9fs_vfs.h b/fs/9p/v9fs_vfs.h
index aa97032521b8af2c7bed8145db9e4d68e5057141..525a76de139e54525e33632ed7934e66e453e7cf 100644
--- a/fs/9p/v9fs_vfs.h
+++ b/fs/9p/v9fs_vfs.h
@@ -50,7 +50,7 @@ void v9fs_stat2inode_dotl(struct p9_stat_dotl *stat, struct inode *inode);
 int v9fs_dir_release(struct inode *inode, struct file *file);
 int v9fs_file_open(struct inode *inode, struct file *file);
 
-int v9fs_file_fsync_dotl(struct device *dev, struct file *filp);
+int v9fs_file_fsync_dotl(struct file *filp);
 static inline void v9fs_invalidate_inode_attr(struct inode *inode)
 {
 	netfs_invalidate_inode_attr(netfs_inode(inode));
diff --git a/fs/9p/vfs_addr.c b/fs/9p/vfs_addr.c
index 70bb1a04f83c120036ff09a0dfc8f28a8996c2ec..5518e7503acb41e9206bcdc39580b4f19959aef7 100644
--- a/fs/9p/vfs_addr.c
+++ b/fs/9p/vfs_addr.c
@@ -63,8 +63,7 @@ static void v9fs_free_request(struct netfs_io_request *rreq)
 	p9_fid_put(fid);
 }
 
-int v9fs_read(struct device *dev, struct file *f, void *buf,
-	      size_t insize)
+int v9fs_read(struct file *f, void *buf, size_t insize)
 {
 	struct netfs_io_request rreq = {
 		.origin = NETFS_READPAGE,
@@ -86,8 +85,7 @@ int v9fs_read(struct device *dev, struct file *f, void *buf,
 	return len ?: err;
 }
 
-int v9fs_write(struct device *dev, struct file *f, const void *buf,
-	       size_t insize)
+int v9fs_write(struct file *f, const void *buf, size_t insize)
 {
 	struct netfs_io_request rreq = {
 		.origin = NETFS_WRITETHROUGH,
diff --git a/fs/9p/vfs_dir.c b/fs/9p/vfs_dir.c
index 179d83620c220bef1836298a43ada1f9000dfe72..e08c33bab32efefdab34a681db337a4614e9ba3b 100644
--- a/fs/9p/vfs_dir.c
+++ b/fs/9p/vfs_dir.c
@@ -154,7 +154,7 @@ int v9fs_dir_release(struct inode *inode, struct file *filp)
 	return retval;
 }
 
-int v9fs_file_fsync_dotl(struct device *dev, struct file *filp)
+int v9fs_file_fsync_dotl(struct file *filp)
 {
         struct p9_fid *fid;
 
diff --git a/fs/9p/vfs_inode_dotl.c b/fs/9p/vfs_inode_dotl.c
index 46fc858eae67a4eba655fa14d8aeebc1c3e0b800..c8ce3992cf0c5fc47cbab345f0992582297ae001 100644
--- a/fs/9p/vfs_inode_dotl.c
+++ b/fs/9p/vfs_inode_dotl.c
@@ -311,7 +311,7 @@ static int v9fs_vfs_setattr_dotl(struct dentry *dentry, struct iattr *iattr)
 }
 
 static __maybe_unused int
-v9fs_truncate(struct device *dev, struct file *f, loff_t size)
+v9fs_truncate(struct file *f, loff_t size)
 {
 	struct iattr iattr = {
 		.ia_valid = ATTR_SIZE | ATTR_FILE,
diff --git a/fs/bpkfs.c b/fs/bpkfs.c
index fe6154c555a49d6b8f05f9b6ea97970de7e69b24..2831666b6ce0482b14f959c13e4f02eb1a9f11ec 100644
--- a/fs/bpkfs.c
+++ b/fs/bpkfs.c
@@ -180,7 +180,7 @@ static int bpkfs_close(struct device *dev, struct file *file)
 	return 0;
 }
 
-static int bpkfs_read(struct device *dev, struct file *file, void *buf,
+static int bpkfs_read(struct file *file, void *buf,
 		      size_t insize)
 {
 	struct bpkfs_handle_data *d = file->private_data;
@@ -193,7 +193,7 @@ static int bpkfs_read(struct device *dev, struct file *file, void *buf,
 	}
 }
 
-static int bpkfs_lseek(struct device *dev, struct file *file, loff_t pos)
+static int bpkfs_lseek(struct file *file, loff_t pos)
 {
 	struct bpkfs_handle_data *d = file->private_data;
 
diff --git a/fs/cramfs/cramfs.c b/fs/cramfs/cramfs.c
index 641a6d2b0526f01b5ea64f9a59aa9086883e2b57..b20219677bd27aceaa8662749218b2f8ee9d07e4 100644
--- a/fs/cramfs/cramfs.c
+++ b/fs/cramfs/cramfs.c
@@ -162,7 +162,7 @@ static int cramfs_read_file(struct inode *inode, unsigned long offset,
 	return outsize;
 }
 
-static int cramfs_read(struct device *_dev, struct file *f, void *buf, size_t size)
+static int cramfs_read(struct file *f, void *buf, size_t size)
 {
 	return cramfs_read_file(f->f_inode, f->f_pos, buf, size);
 }
diff --git a/fs/devfs.c b/fs/devfs.c
index 38a85bac3c49890067eac8b664cb9a15558a8738..49f739b864f2dd89a4ade2405c6c5d0121157d0b 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -35,14 +35,14 @@ struct devfs_inode {
 	struct cdev *cdev;
 };
 
-static int devfs_read(struct device *_dev, struct file *f, void *buf, size_t size)
+static int devfs_read(struct file *f, void *buf, size_t size)
 {
 	struct cdev *cdev = f->private_data;
 
 	return cdev_read(cdev, buf, size, f->f_pos, f->f_flags);
 }
 
-static int devfs_write(struct device *_dev, struct file *f, const void *buf,
+static int devfs_write(struct file *f, const void *buf,
 		       size_t size)
 {
 	struct cdev *cdev = f->private_data;
@@ -53,14 +53,14 @@ static int devfs_write(struct device *_dev, struct file *f, const void *buf,
 	return cdev_write(cdev, buf, size, f->f_pos, f->f_flags);
 }
 
-static int devfs_lseek(struct device *_dev, struct file *f, loff_t pos)
+static int devfs_lseek(struct file *f, loff_t pos)
 {
 	struct cdev *cdev = f->private_data;
 
 	return cdev_lseek(cdev, pos);
 }
 
-static int devfs_erase(struct device *_dev, struct file *f, loff_t count,
+static int devfs_erase(struct file *f, loff_t count,
 		       loff_t offset, enum erase_type type)
 {
 	struct cdev *cdev = f->private_data;
@@ -77,23 +77,21 @@ static int devfs_erase(struct device *_dev, struct file *f, loff_t count,
 	return cdev_erase(cdev, count, offset);
 }
 
-static int devfs_protect(struct device *dev, struct file *f, size_t count,
-			 loff_t offset, int prot)
+static int devfs_protect(struct file *f, size_t count, loff_t offset, int prot)
 {
 	struct cdev *cdev = f->private_data;
 
 	return cdev_protect(cdev, count, offset, prot);
 }
 
-static int devfs_discard_range(struct device *dev, struct file *f, loff_t count,
-			       loff_t offset)
+static int devfs_discard_range(struct file *f, loff_t count, loff_t offset)
 {
 	struct cdev *cdev = f->private_data;
 
 	return cdev_discard_range(cdev, count, offset);
 }
 
-static int devfs_memmap(struct device *_dev, struct file *f, void **map, int flags)
+static int devfs_memmap(struct file *f, void **map, int flags)
 {
 	struct cdev *cdev = f->private_data;
 
@@ -119,21 +117,21 @@ static int devfs_close(struct inode *inode, struct file *f)
 	return cdev_close(cdev);
 }
 
-static int devfs_flush(struct device *_dev, struct file *f)
+static int devfs_flush(struct file *f)
 {
 	struct cdev *cdev = f->private_data;
 
 	return cdev_flush(cdev);
 }
 
-static int devfs_ioctl(struct device *_dev, struct file *f, unsigned int request, void *buf)
+static int devfs_ioctl(struct file *f, unsigned int request, void *buf)
 {
 	struct cdev *cdev = f->private_data;
 
 	return cdev_ioctl(cdev, request, buf);
 }
 
-static int devfs_truncate(struct device *dev, struct file *f, loff_t size)
+static int devfs_truncate(struct file *f, loff_t size)
 {
 	struct cdev *cdev = f->private_data;
 
diff --git a/fs/efi.c b/fs/efi.c
index da15c9078051c167b56f75a81a083810f16061ce..63789c83ad01605d170a93786eb4cab7b124c69d 100644
--- a/fs/efi.c
+++ b/fs/efi.c
@@ -201,7 +201,7 @@ static int efifs_close(struct device *dev, struct file *f)
 	return 0;
 }
 
-static int efifs_read(struct device *_dev, struct file *f, void *buf, size_t insize)
+static int efifs_read(struct file *f, void *buf, size_t insize)
 {
 	struct efifs_file *ufile = f->private_data;
 	efi_status_t efiret;
@@ -215,8 +215,7 @@ static int efifs_read(struct device *_dev, struct file *f, void *buf, size_t ins
 	return bufsize;
 }
 
-static int efifs_write(struct device *_dev, struct file *f, const void *buf,
-		       size_t insize)
+static int efifs_write(struct file *f, const void *buf, size_t insize)
 {
 	struct efifs_file *ufile = f->private_data;
 	efi_status_t efiret;
@@ -231,7 +230,7 @@ static int efifs_write(struct device *_dev, struct file *f, const void *buf,
 	return bufsize;
 }
 
-static int efifs_lseek(struct device *dev, struct file *f, loff_t pos)
+static int efifs_lseek(struct file *f, loff_t pos)
 {
 	struct efifs_file *ufile = f->private_data;
 	efi_status_t efiret;
@@ -244,7 +243,7 @@ static int efifs_lseek(struct device *dev, struct file *f, loff_t pos)
 	return 0;
 }
 
-static int efifs_truncate(struct device *dev, struct file *f, loff_t size)
+static int efifs_truncate(struct file *f, loff_t size)
 {
 	struct efifs_file *ufile = f->private_data;
 	efi_status_t efiret;
diff --git a/fs/efivarfs.c b/fs/efivarfs.c
index 9717a6340676ae447f54851f4346908699d04517..4811101354ba8157e3fbf06cb3e1c844baec2a83 100644
--- a/fs/efivarfs.c
+++ b/fs/efivarfs.c
@@ -180,8 +180,7 @@ static int efivarfs_close(struct device *dev, struct file *f)
 	return 0;
 }
 
-static int efivarfs_read(struct device *_dev, struct file *f, void *buf,
-			 size_t insize)
+static int efivarfs_read(struct file *f, void *buf, size_t insize)
 {
 	struct efivars_file *efile = f->private_data;
 
@@ -190,8 +189,7 @@ static int efivarfs_read(struct device *_dev, struct file *f, void *buf,
 	return insize;
 }
 
-static int efivarfs_write(struct device *_dev, struct file *f, const void *buf,
-			  size_t insize)
+static int efivarfs_write(struct file *f, const void *buf, size_t insize)
 {
 	struct efivars_file *efile = f->private_data;
 	efi_status_t efiret;
@@ -212,7 +210,7 @@ static int efivarfs_write(struct device *_dev, struct file *f, const void *buf,
 	return insize;
 }
 
-static int efivarfs_truncate(struct device *dev, struct file *f, loff_t size)
+static int efivarfs_truncate(struct file *f, loff_t size)
 {
 	struct efivars_file *efile = f->private_data;
 	efi_status_t efiret;
diff --git a/fs/ext4/ext_barebox.c b/fs/ext4/ext_barebox.c
index e75478684ff39418fcfac0d53287aa2e67949361..e626f516b69a2970b5e8d48caea61a9ac1eb4e9c 100644
--- a/fs/ext4/ext_barebox.c
+++ b/fs/ext4/ext_barebox.c
@@ -48,7 +48,7 @@ static inline struct ext2fs_node *to_ext2_node(struct inode *inode)
 	return container_of(inode, struct ext2fs_node, i);
 }
 
-static int ext_read(struct device *_dev, struct file *f, void *buf, size_t insize)
+static int ext_read(struct file *f, void *buf, size_t insize)
 {
 	struct inode *inode = f->f_inode;
 	struct ext2fs_node *node = to_ext2_node(inode);
diff --git a/fs/fat/fat.c b/fs/fat/fat.c
index 15a7b2a9692723f1a13c797bc89047a4c6fe44a3..28517c6b90ac3487becc8bf1daffef8b84e10e65 100644
--- a/fs/fat/fat.c
+++ b/fs/fat/fat.c
@@ -125,8 +125,7 @@ static int fat_rmdir(struct device *dev, const char *pathname)
 	return 0;
 }
 
-static int fat_write(struct device *_dev, struct file *f, const void *buf,
-		     size_t insize)
+static int fat_write(struct file *f, const void *buf, size_t insize)
 {
 	FIL *f_file = f->private_data;
 	int outsize;
@@ -144,7 +143,7 @@ static int fat_write(struct device *_dev, struct file *f, const void *buf,
 	return outsize;
 }
 
-static int fat_truncate(struct device *dev, struct file *f, loff_t size)
+static int fat_truncate(struct file *f, loff_t size)
 {
 	FIL *f_file = f->private_data;
 	unsigned long lastofs;
@@ -224,7 +223,7 @@ static int fat_close(struct device *dev, struct file *f)
 	return 0;
 }
 
-static int fat_read(struct device *_dev, struct file *f, void *buf, size_t insize)
+static int fat_read(struct file *f, void *buf, size_t insize)
 {
 	int ret;
 	FIL *f_file = f->private_data;
@@ -240,7 +239,7 @@ static int fat_read(struct device *_dev, struct file *f, void *buf, size_t insiz
 	return outsize;
 }
 
-static int fat_lseek(struct device *dev, struct file *f, loff_t pos)
+static int fat_lseek(struct file *f, loff_t pos)
 {
 	FIL *f_file = f->private_data;
 	int ret;
diff --git a/fs/fs.c b/fs/fs.c
index 02b6b0d8fdc7677184a991dbf629047e85c67851..8a90a317382b3dce7c2c60ccc5bb3bc9a528b02b 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -370,11 +370,11 @@ static int create(struct dentry *dir, struct dentry *dentry)
 	return inode->i_op->create(inode, dentry, S_IFREG | S_IRWXU | S_IRWXG | S_IRWXO);
 }
 
-static int fsdev_truncate(struct device *dev, struct file *f, loff_t length)
+static int fsdev_truncate(struct file *f, loff_t length)
 {
 	struct fs_driver *fsdrv = f->fsdev->driver;
 
-	return fsdrv->truncate ? fsdrv->truncate(dev, f, length) : -EROFS;
+	return fsdrv->truncate ? fsdrv->truncate(f, length) : -EROFS;
 }
 
 int ftruncate(int fd, loff_t length)
@@ -388,7 +388,7 @@ int ftruncate(int fd, loff_t length)
 	if (f->f_size == FILE_SIZE_STREAM)
 		return 0;
 
-	ret = fsdev_truncate(&f->fsdev->dev, f, length);
+	ret = fsdev_truncate(f, length);
 	if (ret)
 		return errno_set(ret);
 
@@ -409,7 +409,7 @@ int ioctl(int fd, unsigned int request, void *buf)
 	fsdrv = f->fsdev->driver;
 
 	if (fsdrv->ioctl)
-		ret = fsdrv->ioctl(&f->fsdev->dev, f, request, buf);
+		ret = fsdrv->ioctl(f, request, buf);
 	else
 		ret = -ENOSYS;
 
@@ -437,7 +437,7 @@ static ssize_t __read(struct file *f, void *buf, size_t count)
 	if (!count)
 		return 0;
 
-	ret = fsdrv->read(&f->fsdev->dev, f, buf, count);
+	ret = fsdrv->read(f, buf, count);
 out:
 	return errno_set(ret);
 }
@@ -492,7 +492,7 @@ static ssize_t __write(struct file *f, const void *buf, size_t count)
 		assert_command_context();
 
 	if (f->f_size != FILE_SIZE_STREAM && f->f_pos + count > f->f_size) {
-		ret = fsdev_truncate(&f->fsdev->dev, f, f->f_pos + count);
+		ret = fsdev_truncate(f, f->f_pos + count);
 		if (ret) {
 			if (ret == -EPERM)
 				ret = -ENOSPC;
@@ -505,7 +505,7 @@ static ssize_t __write(struct file *f, const void *buf, size_t count)
 			f->f_size = f->f_pos + count;
 		}
 	}
-	ret = fsdrv->write(&f->fsdev->dev, f, buf, count);
+	ret = fsdrv->write(f, buf, count);
 out:
 	return errno_set(ret);
 }
@@ -555,7 +555,7 @@ int flush(int fd)
 
 	fsdrv = f->fsdev->driver;
 	if (fsdrv->flush)
-		ret = fsdrv->flush(&f->fsdev->dev, f);
+		ret = fsdrv->flush(f);
 	else
 		ret = 0;
 
@@ -599,7 +599,7 @@ loff_t lseek(int fd, loff_t offset, int whence)
 		goto out;
 
 	if (fsdrv->lseek) {
-		ret = fsdrv->lseek(&f->fsdev->dev, f, pos);
+		ret = fsdrv->lseek(f, pos);
 		if (ret < 0)
 			goto out;
 	}
@@ -636,7 +636,7 @@ int erase(int fd, loff_t count, loff_t offset, enum erase_type type)
 		assert_command_context();
 
 	if (fsdrv->erase)
-		ret = fsdrv->erase(&f->fsdev->dev, f, count, offset, type);
+		ret = fsdrv->erase(f, count, offset, type);
 	else
 		ret = -ENOSYS;
 
@@ -663,7 +663,7 @@ int protect(int fd, size_t count, loff_t offset, int prot)
 		assert_command_context();
 
 	if (fsdrv->protect)
-		ret = fsdrv->protect(&f->fsdev->dev, f, count, offset, prot);
+		ret = fsdrv->protect(f, count, offset, prot);
 	else
 		ret = -ENOSYS;
 
@@ -690,7 +690,7 @@ int discard_range(int fd, loff_t count, loff_t offset)
 		assert_command_context();
 
 	if (fsdrv->discard_range)
-		ret = fsdrv->discard_range(&f->fsdev->dev, f, count, offset);
+		ret = fsdrv->discard_range(f, count, offset);
 	else
 		ret = -ENOSYS;
 
@@ -728,7 +728,7 @@ void *memmap(int fd, int flags)
 		assert_command_context();
 
 	if (fsdrv->memmap)
-		ret = fsdrv->memmap(&f->fsdev->dev, f, &retp, flags);
+		ret = fsdrv->memmap(f, &retp, flags);
 	else
 		ret = -EINVAL;
 
@@ -2675,7 +2675,7 @@ int openat(int dirfd, const char *pathname, int flags)
 	}
 
 	if (flags & O_TRUNC) {
-		error = fsdev_truncate(&fsdev->dev, f, 0);
+		error = fsdev_truncate(f, 0);
 		f->f_size = 0;
 		if (error)
 			goto out;
diff --git a/fs/jffs2/fs.c b/fs/jffs2/fs.c
index 5952ea9e904fa03240245a8977429814d69c28d6..4906d990013b2adc25e3e5702280f75722508497 100644
--- a/fs/jffs2/fs.c
+++ b/fs/jffs2/fs.c
@@ -89,8 +89,7 @@ static int jffs2_get_block(struct jffs2_file *jf, unsigned int pos)
 	return 0;
 }
 
-static int jffs2_read(struct device *_dev, struct file *f, void *buf,
-		      size_t insize)
+static int jffs2_read(struct file *f, void *buf, size_t insize)
 {
 	struct jffs2_file *jf = f->private_data;
 	unsigned int pos = f->f_pos;
diff --git a/fs/nfs.c b/fs/nfs.c
index 17e1e7cfa1f1d66fab3b1b3e5efd3dc0fcb26327..48589a2183b71fb35db20e4c5ec0ecf66dfd2ef2 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -1067,7 +1067,7 @@ static void nfs_handler(void *ctx, char *p, unsigned len)
 	list_add_tail(&packet->list, &npriv->packets);
 }
 
-static int nfs_truncate(struct device *dev, struct file *f, loff_t size)
+static int nfs_truncate(struct file *f, loff_t size)
 {
 	return -ENOSYS;
 }
@@ -1187,13 +1187,12 @@ static int nfs_close(struct inode *inode, struct file *file)
 	return 0;
 }
 
-static int nfs_write(struct device *_dev, struct file *file, const void *inbuf,
-		     size_t insize)
+static int nfs_write(struct file *file, const void *inbuf, size_t insize)
 {
 	return -ENOSYS;
 }
 
-static int nfs_read(struct device *dev, struct file *file, void *buf, size_t insize)
+static int nfs_read(struct file *file, void *buf, size_t insize)
 {
 	struct file_priv *priv = file->private_data;
 
@@ -1209,7 +1208,7 @@ static int nfs_read(struct device *dev, struct file *file, void *buf, size_t ins
 	return kfifo_get(priv->fifo, buf, insize);
 }
 
-static int nfs_lseek(struct device *dev, struct file *file, loff_t pos)
+static int nfs_lseek(struct file *file, loff_t pos)
 {
 	struct file_priv *priv = file->private_data;
 
diff --git a/fs/omap4_usbbootfs.c b/fs/omap4_usbbootfs.c
index 9c1524c56cc585d3e1bf3fc26833fc122018bcb7..16c9a2784be5494d999775b7b3b7ca35d2f14fcb 100644
--- a/fs/omap4_usbbootfs.c
+++ b/fs/omap4_usbbootfs.c
@@ -93,8 +93,7 @@ static int omap4_usbbootfs_close(struct device *dev, struct file *f)
 	return omap4_usbbootfs_do_close(priv);
 }
 
-static int omap4_usbbootfs_read(struct device *dev, struct file *f, void *buf,
-				size_t size)
+static int omap4_usbbootfs_read(struct file *f, void *buf, size_t size)
 {
 	struct file_priv *priv = f->private_data;
 	u32 data;
diff --git a/fs/pstore/fs.c b/fs/pstore/fs.c
index efa1c48eca90ad5f9e3d3f579463d8e43221eb3e..8d18728c73f842f4d7a94274328d027b5b536b69 100644
--- a/fs/pstore/fs.c
+++ b/fs/pstore/fs.c
@@ -162,7 +162,7 @@ static int pstore_close(struct device *dev, struct file *file)
 	return 0;
 }
 
-static int pstore_read(struct device *dev, struct file *file, void *buf,
+static int pstore_read(struct file *file, void *buf,
 		       size_t insize)
 {
 	struct pstore_private *d = file->private_data;
@@ -173,7 +173,7 @@ static int pstore_read(struct device *dev, struct file *file, void *buf,
 	return insize;
 }
 
-static int pstore_lseek(struct device *dev, struct file *file, loff_t pos)
+static int pstore_lseek(struct file *file, loff_t pos)
 {
 	struct pstore_private *d = file->private_data;
 
diff --git a/fs/qemu_fw_cfg.c b/fs/qemu_fw_cfg.c
index caf5415746494d1f087bed4f9603f7d2bc47b9b0..a3cf9a5f8bb01eaf6e5ecac5dc3e11ca61d43932 100644
--- a/fs/qemu_fw_cfg.c
+++ b/fs/qemu_fw_cfg.c
@@ -304,12 +304,11 @@ static const struct super_operations fw_cfg_fs_ops = {
 	.destroy_inode = fw_cfg_fs_destroy_inode,
 };
 
-static int fw_cfg_fs_io(struct device *dev, struct file *f, void *buf,
-			 size_t insize, bool read)
+static int fw_cfg_fs_io(struct file *f, void *buf, size_t insize, bool read)
 {
 	struct inode *inode = f->f_inode;
 	struct fw_cfg_fs_inode *node = inode_to_node(inode);
-	struct fw_cfg_fs_data *data = dev->priv;
+	struct fw_cfg_fs_data *data = f->fsdev->dev.priv;
 	int fd = data->fd;
 
 	if (node->buf) {
@@ -328,16 +327,14 @@ static int fw_cfg_fs_io(struct device *dev, struct file *f, void *buf,
 		return pwrite(fd, buf, insize, f->f_pos);
 }
 
-static int fw_cfg_fs_read(struct device *dev, struct file *f, void *buf,
-			   size_t insize)
+static int fw_cfg_fs_read(struct file *f, void *buf, size_t insize)
 {
-	return fw_cfg_fs_io(dev, f, buf, insize, true);
+	return fw_cfg_fs_io(f, buf, insize, true);
 }
 
-static int fw_cfg_fs_write(struct device *dev, struct file *f, const void *buf,
-			    size_t insize)
+static int fw_cfg_fs_write(struct file *f, const void *buf, size_t insize)
 {
-	return fw_cfg_fs_io(dev, f, (void *)buf, insize, false);
+	return fw_cfg_fs_io(f, (void *)buf, insize, false);
 }
 
 static int fw_cfg_fs_probe(struct device *dev)
diff --git a/fs/ramfs.c b/fs/ramfs.c
index e971f608545cfd00f19f7ccb4ca7e3d21cd3ec41..97a5a2425570553cbb3cc62fd96c35beefd6cf6c 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -210,7 +210,7 @@ static struct ramfs_chunk *ramfs_find_chunk(struct ramfs_inode *node,
 	return NULL;
 }
 
-static int ramfs_read(struct device *_dev, struct file *f, void *buf, size_t insize)
+static int ramfs_read(struct file *f, void *buf, size_t insize)
 {
 	struct inode *inode = f->f_inode;
 	struct ramfs_inode *node = to_ramfs_inode(inode);
@@ -240,8 +240,7 @@ static int ramfs_read(struct device *_dev, struct file *f, void *buf, size_t ins
 	return insize;
 }
 
-static int ramfs_write(struct device *_dev, struct file *f, const void *buf,
-		       size_t insize)
+static int ramfs_write(struct file *f, const void *buf, size_t insize)
 {
 	struct inode *inode = f->f_inode;
 	struct ramfs_inode *node = to_ramfs_inode(inode);
@@ -345,7 +344,7 @@ static int ramfs_truncate_up(struct ramfs_inode *node, unsigned long size)
 	return -ENOSPC;
 }
 
-static int ramfs_truncate(struct device *dev, struct file *f, loff_t size)
+static int ramfs_truncate(struct file *f, loff_t size)
 {
 	struct inode *inode = f->f_inode;
 	struct ramfs_inode *node = to_ramfs_inode(inode);
@@ -377,7 +376,7 @@ static int ramfs_truncate(struct device *dev, struct file *f, loff_t size)
 	return 0;
 }
 
-static int ramfs_memmap(struct device *_dev, struct file *f, void **map, int flags)
+static int ramfs_memmap(struct file *f, void **map, int flags)
 {
 	struct inode *inode = f->f_inode;
 	struct ramfs_inode *node = to_ramfs_inode(inode);
diff --git a/fs/ratpfs.c b/fs/ratpfs.c
index c3c3a248b68122d3ae1eecb8b4c022458f1a8c07..ae214214b6b88499418b6986b2790374e89d0127 100644
--- a/fs/ratpfs.c
+++ b/fs/ratpfs.c
@@ -76,8 +76,7 @@ static int ratpfs_rm(struct device __always_unused *dev,
 	return 0;
 }
 
-static int ratpfs_truncate(struct device __always_unused *dev,
-			   struct file *f, loff_t size)
+static int ratpfs_truncate(struct file *f, loff_t size)
 {
 	int len_tx = 1 /* type */
 		+ 4 /* handle */
@@ -198,8 +197,7 @@ static int ratpfs_close(struct device __always_unused *dev,
 	return ret;
 }
 
-static int ratpfs_write(struct device __always_unused *dev,
-			struct file *f, const void *buf, size_t orig_size)
+static int ratpfs_write(struct file *f, const void *buf, size_t orig_size)
 {
 	int size = min((int)orig_size, 4096);
 	int len_tx = 1 /* type */
@@ -241,8 +239,7 @@ static int ratpfs_write(struct device __always_unused *dev,
 	return ret;
 }
 
-static int ratpfs_read(struct device __always_unused *dev,
-		       struct file *f, void *buf, size_t orig_size)
+static int ratpfs_read(struct file *f, void *buf, size_t orig_size)
 {
 	int size = min((int)orig_size, 4096);
 	int len_tx = 1 /* type */
diff --git a/fs/smhfs.c b/fs/smhfs.c
index 3a3b4bdc1d94239fcacd0c485e6e2ff3067df9ec..736edda14838d61bca2fba9c1aff31653a72bda5 100644
--- a/fs/smhfs.c
+++ b/fs/smhfs.c
@@ -51,8 +51,7 @@ static int smhfs_rm(struct device __always_unused *dev,
 	return semihosting_remove(pathname);
 }
 
-static int smhfs_truncate(struct device __always_unused *dev,
-			  struct file __always_unused *f,
+static int smhfs_truncate(struct file __always_unused *f,
 			  loff_t __always_unused size)
 {
 	return 0;
@@ -83,22 +82,19 @@ static int smhfs_close(struct device __always_unused *dev,
 	return semihosting_close(file_to_fd(f));
 }
 
-static int smhfs_write(struct device __always_unused *dev,
-		       struct file *f, const void *inbuf, size_t insize)
+static int smhfs_write(struct file *f, const void *inbuf, size_t insize)
 {
 	long ret = semihosting_write(file_to_fd(f), inbuf, insize);
 	return ret < 0 ? ret : insize;
 }
 
-static int smhfs_read(struct device __always_unused *dev,
-		      struct file *f, void *buf, size_t insize)
+static int smhfs_read(struct file *f, void *buf, size_t insize)
 {
 	long ret = semihosting_read(file_to_fd(f), buf, insize);
 	return ret < 0 ? ret : insize;
 }
 
-static int smhfs_lseek(struct device __always_unused *dev,
-			  struct file *f, loff_t pos)
+static int smhfs_lseek(struct file *f, loff_t pos)
 {
 	return semihosting_seek(file_to_fd(f), pos);
 }
diff --git a/fs/squashfs/squashfs.c b/fs/squashfs/squashfs.c
index 471bcae4eb034d04bf5a9322dc981703b899783a..2e06a30f90902df56e6deb8e8597803db46ff722 100644
--- a/fs/squashfs/squashfs.c
+++ b/fs/squashfs/squashfs.c
@@ -199,8 +199,7 @@ static int squashfs_read_buf(struct squashfs_page *page, int pos, void **buf)
 	return 0;
 }
 
-static int squashfs_read(struct device *_dev, struct file *f, void *buf,
-			 size_t insize)
+static int squashfs_read(struct file *f, void *buf, size_t insize)
 {
 	unsigned int size = insize;
 	unsigned int pos = f->f_pos;
diff --git a/fs/tftp.c b/fs/tftp.c
index 01ebcbfc7ae44e57fda0745cc05030704b9ea695..d1d4d55bc15adac7162d41b1677fbff5b85a79e2 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -188,7 +188,7 @@ static int tftp_window_cache_insert(struct tftp_cache *cache, uint16_t id,
 	return 0;
 }
 
-static int tftp_truncate(struct device *dev, struct file *f, loff_t size)
+static int tftp_truncate(struct file *f, loff_t size)
 {
 	return 0;
 }
@@ -825,8 +825,7 @@ static int tftp_close(struct inode *inode, struct file *f)
 	return tftp_do_close(priv);
 }
 
-static int tftp_write(struct device *_dev, struct file *f, const void *inbuf,
-		      size_t insize)
+static int tftp_write(struct file *f, const void *inbuf, size_t insize)
 {
 	struct file_priv *priv = f->private_data;
 	size_t size, now;
@@ -861,7 +860,7 @@ static int tftp_write(struct device *_dev, struct file *f, const void *inbuf,
 	return insize;
 }
 
-static int tftp_read(struct device *dev, struct file *f, void *buf, size_t insize)
+static int tftp_read(struct file *f, void *buf, size_t insize)
 {
 	struct file_priv *priv = f->private_data;
 	size_t outsize = 0, now;
@@ -901,7 +900,7 @@ static int tftp_read(struct device *dev, struct file *f, void *buf, size_t insiz
 	return outsize;
 }
 
-static int tftp_lseek(struct device *dev, struct file *f, loff_t pos)
+static int tftp_lseek(struct file *f, loff_t pos)
 {
 	/* We cannot seek backwards without reloading or caching the file */
 	loff_t f_pos = f->f_pos;
@@ -913,7 +912,7 @@ static int tftp_lseek(struct device *dev, struct file *f, loff_t pos)
 		while (pos > f_pos) {
 			size_t len = min_t(size_t, 1024, pos - f_pos);
 
-			ret = tftp_read(dev, f, buf, len);
+			ret = tftp_read(f, buf, len);
 
 			if (!ret)
 				/* EOF, so the desired pos is invalid. */
diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
index 45b41ed7541dbfef1e9ca82afee2297a4727b571..d08612191f75711b3fc3a36be1626a7d3f7b463d 100644
--- a/fs/ubifs/ubifs.c
+++ b/fs/ubifs/ubifs.c
@@ -382,7 +382,7 @@ static int ubifs_get_block(struct ubifs_file *uf, unsigned int pos)
 	return 0;
 }
 
-static int ubifs_read(struct device *_dev, struct file *f, void *buf, size_t insize)
+static int ubifs_read(struct file *f, void *buf, size_t insize)
 {
 	struct ubifs_file *uf = f->private_data;
 	unsigned int pos = f->f_pos;
diff --git a/fs/uimagefs.c b/fs/uimagefs.c
index be268d3679d93e242cb1249cc64cc5720added01..3f1f3afa300592d9e2be497d3abd0f542bed3823 100644
--- a/fs/uimagefs.c
+++ b/fs/uimagefs.c
@@ -103,8 +103,7 @@ static int uimagefs_close(struct device *dev, struct file *file)
 	return 0;
 }
 
-static int uimagefs_read(struct device *dev, struct file *file, void *buf,
-			 size_t insize)
+static int uimagefs_read(struct file *file, void *buf, size_t insize)
 {
 	struct uimagefs_handle_data *d = file->private_data;
 
@@ -116,7 +115,7 @@ static int uimagefs_read(struct device *dev, struct file *file, void *buf,
 	}
 }
 
-static int uimagefs_lseek(struct device *dev, struct file *file, loff_t pos)
+static int uimagefs_lseek(struct file *file, loff_t pos)
 {
 	struct uimagefs_handle_data *d = file->private_data;
 
@@ -181,9 +180,9 @@ static int uimagefs_stat(struct device *dev, const char *filename,
 	return 0;
 }
 
-static int uimagefs_ioctl(struct device *dev, struct file *f, unsigned int request, void *buf)
+static int uimagefs_ioctl(struct file *f, unsigned int request, void *buf)
 {
-	struct uimagefs_handle *priv = dev->priv;
+	struct uimagefs_handle *priv = f->fsdev->dev.priv;
 
 	if (request != UIMAGEFS_METADATA)
 		return  -EINVAL;
diff --git a/include/fs.h b/include/fs.h
index e72f9bac174c080dd05393c74ee6e528cfe99c97..bee247c9be2d30018862e488a4f9dec1d7033270 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -44,23 +44,20 @@ struct fs_driver {
 	int (*probe) (struct device *dev);
 
 	/* Truncate a file to given size */
-	int (*truncate)(struct device *dev, struct file *f, loff_t size);
+	int (*truncate)(struct file *f, loff_t size);
 
-	int (*read)(struct device *dev, struct file *f, void *buf, size_t size);
-	int (*write)(struct device *dev, struct file *f, const void *buf,
-		     size_t size);
-	int (*flush)(struct device *dev, struct file *f);
-	int (*lseek)(struct device *dev, struct file *f, loff_t pos);
+	int (*read)(struct file *f, void *buf, size_t size);
+	int (*write)(struct file *f, const void *buf, size_t size);
+	int (*flush)(struct file *f);
+	int (*lseek)(struct file *f, loff_t pos);
 
-	int (*ioctl)(struct device *dev, struct file *f, unsigned int request, void *buf);
-	int (*erase)(struct device *dev, struct file *f, loff_t count,
+	int (*ioctl)(struct file *f, unsigned int request, void *buf);
+	int (*erase)(struct file *f, loff_t count,
 			loff_t offset, enum erase_type type);
-	int (*protect)(struct device *dev, struct file *f, size_t count,
-			loff_t offset, int prot);
-	int (*discard_range)(struct device *dev, struct file *f, loff_t count,
-			     loff_t offset);
+	int (*protect)(struct file *f, size_t count, loff_t offset, int prot);
+	int (*discard_range)(struct file *f, loff_t count, loff_t offset);
 
-	int (*memmap)(struct device *dev, struct file *f, void **map, int flags);
+	int (*memmap)(struct file *f, void **map, int flags);
 
 	const struct fs_legacy_ops {
 		int (*open)(struct device *dev, struct file *f, const char *pathname);

-- 
2.47.3



