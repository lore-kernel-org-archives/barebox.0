Delivery-date: Wed, 15 Oct 2025 10:35:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8wz8-0082CD-09
	for lore@lore.pengutronix.de;
	Wed, 15 Oct 2025 10:35:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8wz7-0000ht-8q
	for lore@pengutronix.de; Wed, 15 Oct 2025 10:35:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I84PNjalUKplvPoXURbiCuikLOkHRBG+FwfhltNbjUk=; b=QzLSum1kMC8RtPy0/gO8UyNhdn
	id0Bivpk1iSp2n3SkxG2O06ZywTEo7D/VKB0JVA0I3xzPQXPmfoDyOjQkLct6uKCWDIt/D77ge9tt
	HL0Z7dMFO9gpxDrbCRIy/xDCCpFLlZi5b5CY7WZa/liGOwYlt+8k/LtMiscsxM+FOSg27F6YnFESq
	Y29HCXCc2fflsAtBBR192WEysRNgVjWYjLAYe0MTl+fgLaSmgp1OASMtVwQ1UEGOf4CjanJyCgUkc
	Q52hUmGKn6p877QPc2RFxpcBvI8qXAPerYmhnAbB9J3I52XgFfgrNNvJPiUdlIhMjhk/1EpYUcf1k
	F2E1vC7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8wyd-00000000xGy-3F7t;
	Wed, 15 Oct 2025 08:35:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8wya-00000000xFr-2zFJ
	for barebox@lists.infradead.org;
	Wed, 15 Oct 2025 08:35:17 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1v8wyZ-0000a9-2l; Wed, 15 Oct 2025 10:35:15 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Jonas Rebmann <jre@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed, 15 Oct 2025 10:34:16 +0200
Message-ID: <20251015083512.4099259-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251015083512.4099259-1-a.fatoum@barebox.org>
References: <20251015083512.4099259-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_013516_903649_BC83395C 
X-CRM114-Status: GOOD (  22.85  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] fs: allocate inodes for O_TMPFILE-created files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We support O_TMPFILE only for ramfs and the code enabling it was
so far hacked into the file system core.

With upcoming patches to move read/write operations from struct
fs_driver to struct file_operations, this will break:

  - struct inode::i_fop holds the file operations
  - we do not allocate inodes for temporary files
  - there is no way for the core to read/write the temporary files

Fix this by properly implementing O_TMPFILE similarly to how Linux does
it:

  - File systems implement an optional file_operations::tmpfile
  - Temporary files are allocated an inode, but no dentries,
    so nlink is zero

Reported-by: Jonas Rebmann <jre@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
Please place before "fs: move fs_driver operations to struct
file_operations" to avoid intermittent breakage and so "upcoming
patches" makes sense.
---
 fs/fs.c            | 104 ++++++++++++++++++++++++++++++++++-----------
 fs/ramfs.c         |  14 ++++++
 include/errno.h    |   6 +++
 include/linux/fs.h |  26 ++++++++++++
 4 files changed, 125 insertions(+), 25 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 76b1ec4c910a..529c328f26fc 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -2589,6 +2589,70 @@ static int do_dentry_open(struct file *f)
 	return 0;
 }
 
+/**
+ * finish_open - finish opening a file
+ * @file: file pointer
+ * @dentry: pointer to dentry
+ *
+ * If the open callback is set to NULL, then the standard f_op->open()
+ * filesystem callback is substituted.
+ *
+ * In Linux, this function accepts an open callback, but we don't yet
+ * need this in barebox. Thus the standard f_op()->open() callback
+ * will be used for non-O_PATH.
+ *
+ * Returns zero on success or -errno if the open failed.
+ */
+int finish_open(struct file *file, struct dentry *dentry)
+{
+	file->f_path.dentry = dentry;
+	return do_dentry_open(file);
+}
+
+/**
+ * tmpfile_create - create tmpfile
+ * @parentpath:	pointer to the path of the base directory
+ * @mode:	mode of the new tmpfile
+ * @flags:	flags used to open the file
+ *
+ * Create a temporary file.
+ */
+static struct file *tmpfile_create(const struct path *parentpath,
+				   umode_t mode, int flags)
+{
+	struct inode *dir = d_inode(parentpath->dentry);
+	struct fs_device *fsdev;
+	struct file *f;
+	int error;
+
+	fsdev = get_fsdevice_by_dentry(parentpath->dentry);
+	if (!fsdev)
+		return ERR_PTR(-ENOENT);
+
+	if (!dir->i_op->tmpfile)
+		return ERR_PTR(-EOPNOTSUPP);
+
+	f = get_file(fsdev);
+	if (!f)
+		return ERR_PTR(-EMFILE);
+
+	f->f_path.mnt = parentpath->mnt;
+	f->f_path.dentry = d_alloc_anon(&fsdev->sb);
+	f->f_flags = flags;
+
+	error = dir->i_op->tmpfile(dir, f, mode);
+
+	free(f->f_path.dentry);
+	f->f_path.dentry = NULL;
+
+	if (error) {
+		put_file(f);
+		return ERR_PTR(error);
+	}
+
+	return f;
+}
+
 int openat(int dirfd, const char *pathname, int flags)
 {
 	struct fs_device *fsdev;
@@ -2604,33 +2668,10 @@ int openat(int dirfd, const char *pathname, int flags)
 		if (error)
 			return errno_set(error);
 
-		fsdev = get_fsdevice_by_dentry(path.dentry);
+		f = tmpfile_create(&path, S_IFREG, flags);
 		path_put(&path);
 
-		if (!fsdev) {
-			errno = ENOENT;
-			return -errno;
-		}
-
-		if (fsdev->driver != ramfs_driver) {
-			errno = EOPNOTSUPP;
-			return -errno;
-		}
-
-		f = get_file(fsdev);
-		if (!f) {
-			errno = EMFILE;
-			return -errno;
-		}
-
-		f->path = NULL;
-		f->f_path.dentry = NULL;
-		f->f_inode = new_inode(&fsdev->sb);
-		f->f_inode->i_mode = S_IFREG;
-		f->f_flags = flags;
-		f->f_size = 0;
-
-		return file_to_fd(f);
+		return errno_setp(f) ?: file_to_fd(f);
 	}
 
 	if (flags & O_CREAT) {
@@ -2989,6 +3030,19 @@ static char *__dpath(struct dentry *dentry, struct dentry *root)
 	return res;
 }
 
+void d_tmpfile(struct file *file, struct inode *inode)
+{
+	struct dentry *dentry = file->f_path.dentry;
+
+	inode_dec_link_count(inode);
+
+	file->path = xasprintf(dentry->name, "#%llu",
+			       (unsigned long long)inode->i_ino);
+
+	d_instantiate(dentry, inode);
+}
+EXPORT_SYMBOL(d_tmpfile);
+
 /**
  * dpath - return path of a dentry
  * @dentry: The dentry to return the path from
diff --git a/fs/ramfs.c b/fs/ramfs.c
index d8c754492561..1caace0183a5 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -174,6 +174,19 @@ static const struct inode_operations ramfs_symlink_inode_operations =
 	.get_link = ramfs_get_link,
 };
 
+static int ramfs_tmpfile(struct inode *dir, struct file *file, umode_t mode)
+{
+	struct inode *inode;
+
+	inode = ramfs_get_inode(dir->i_sb, dir, mode);
+	if (!inode)
+		return -ENOSPC;
+
+	d_tmpfile(file, inode);
+
+	return finish_open_simple(file, 0);
+}
+
 static const struct inode_operations ramfs_dir_inode_operations =
 {
 	.lookup = simple_lookup,
@@ -182,6 +195,7 @@ static const struct inode_operations ramfs_dir_inode_operations =
 	.rmdir = simple_rmdir,
 	.unlink = simple_unlink,
 	.create = ramfs_create,
+	.tmpfile = ramfs_tmpfile,
 };
 
 static struct ramfs_chunk *ramfs_find_chunk(struct ramfs_inode *node,
diff --git a/include/errno.h b/include/errno.h
index fd358e1c1103..13968af0295b 100644
--- a/include/errno.h
+++ b/include/errno.h
@@ -27,4 +27,10 @@ static inline int errno_set(int err)
 	return err;
 }
 
+static inline int errno_setp(const void *errp)
+{
+	int error = IS_ERR(errp) ? PTR_ERR(errp) : 0;
+	return errno_set(error);
+}
+
 #endif /* __ERRNO_H */
diff --git a/include/linux/fs.h b/include/linux/fs.h
index 1e12236bcd85..ed4332c79d49 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -443,6 +443,7 @@ struct inode_operations {
 	int (*rmdir) (struct inode *,struct dentry *);
 	int (*rename) (struct inode *, struct dentry *,
 		       struct inode *, struct dentry *, unsigned int);
+	int (*tmpfile)(struct inode *, struct file *, umode_t);
 };
 
 static inline ino_t parent_ino(struct dentry *dentry)
@@ -508,6 +509,8 @@ void drop_nlink(struct inode *inode);
 extern const struct file_operations simple_dir_operations;
 extern const struct inode_operations simple_symlink_inode_operations;
 
+extern void d_tmpfile(struct file *, struct inode *);
+
 int simple_empty(struct dentry *dentry);
 int simple_unlink(struct inode *dir, struct dentry *dentry);
 int simple_rmdir(struct inode *dir, struct dentry *dentry);
@@ -533,4 +536,27 @@ static inline void inode_init_owner(struct inode *inode,
 
 static inline void mark_inode_dirty(struct inode *inode) {}
 
+int finish_open(struct file *file, struct dentry *dentry);
+
+/* Helper for the simple case when original dentry is used */
+static inline int finish_open_simple(struct file *file, int error)
+{
+	if (error)
+		return error;
+
+	return finish_open(file, file->f_path.dentry);
+}
+
+static inline void inode_inc_link_count(struct inode *inode)
+{
+	inc_nlink(inode);
+	mark_inode_dirty(inode);
+}
+
+static inline void inode_dec_link_count(struct inode *inode)
+{
+	drop_nlink(inode);
+	mark_inode_dirty(inode);
+}
+
 #endif /* _LINUX_FS_H */
-- 
2.47.3



