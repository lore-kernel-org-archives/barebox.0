Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g7LHe-0005z7-Tm
 for barebox@lists.infradead.org; Tue, 02 Oct 2018 14:05:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Oct 2018 16:03:54 +0200
Message-Id: <20181002140403.3735-6-s.hauer@pengutronix.de>
In-Reply-To: <20181002140403.3735-1-s.hauer@pengutronix.de>
References: <20181002140403.3735-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 05/14] fs: Add fscrypt no-op headers
To: Barebox List <barebox@lists.infradead.org>

Newer versions of UBIFS use fscrypt, so add no-op headers here.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/fscrypt.h         | 173 +++++++++++++++++++++++++++
 include/linux/fscrypt_notsupp.h | 205 ++++++++++++++++++++++++++++++++
 2 files changed, 378 insertions(+)
 create mode 100644 include/linux/fscrypt.h
 create mode 100644 include/linux/fscrypt_notsupp.h

diff --git a/include/linux/fscrypt.h b/include/linux/fscrypt.h
new file mode 100644
index 0000000000..beba8bc42d
--- /dev/null
+++ b/include/linux/fscrypt.h
@@ -0,0 +1,173 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * fscrypt.h: declarations for per-file encryption
+ *
+ * Filesystems that implement per-file encryption include this header
+ * file with the __FS_HAS_ENCRYPTION set according to whether that filesystem
+ * is being built with encryption support or not.
+ *
+ * Copyright (C) 2015, Google, Inc.
+ *
+ * Written by Michael Halcrow, 2015.
+ * Modified by Jaegeuk Kim, 2015.
+ */
+#ifndef _LINUX_FSCRYPT_H
+#define _LINUX_FSCRYPT_H
+
+#include <linux/fs.h>
+
+#define FS_CRYPTO_BLOCK_SIZE		16
+
+struct fscrypt_ctx;
+struct fscrypt_info;
+
+struct fscrypt_str {
+	unsigned char *name;
+	u32 len;
+};
+
+struct fscrypt_name {
+	const struct qstr *usr_fname;
+	struct fscrypt_str disk_name;
+	u32 hash;
+	u32 minor_hash;
+	struct fscrypt_str crypto_buf;
+};
+
+#define FSTR_INIT(n, l)		{ .name = n, .len = l }
+#define FSTR_TO_QSTR(f)		QSTR_INIT((f)->name, (f)->len)
+#define fname_name(p)		((p)->disk_name.name)
+#define fname_len(p)		((p)->disk_name.len)
+
+/* Maximum value for the third parameter of fscrypt_operations.set_context(). */
+#define FSCRYPT_SET_CONTEXT_MAX_SIZE	28
+
+#if __FS_HAS_ENCRYPTION
+#include <linux/fscrypt_supp.h>
+#else
+#include <linux/fscrypt_notsupp.h>
+#endif
+
+/**
+ * fscrypt_require_key - require an inode's encryption key
+ * @inode: the inode we need the key for
+ *
+ * If the inode is encrypted, set up its encryption key if not already done.
+ * Then require that the key be present and return -ENOKEY otherwise.
+ *
+ * No locks are needed, and the key will live as long as the struct inode --- so
+ * it won't go away from under you.
+ *
+ * Return: 0 on success, -ENOKEY if the key is missing, or another -errno code
+ * if a problem occurred while setting up the encryption key.
+ */
+static inline int fscrypt_require_key(struct inode *inode)
+{
+	return 0;
+}
+
+/**
+ * fscrypt_prepare_link - prepare to link an inode into a possibly-encrypted directory
+ * @old_dentry: an existing dentry for the inode being linked
+ * @dir: the target directory
+ * @dentry: negative dentry for the target filename
+ *
+ * A new link can only be added to an encrypted directory if the directory's
+ * encryption key is available --- since otherwise we'd have no way to encrypt
+ * the filename.  Therefore, we first set up the directory's encryption key (if
+ * not already done) and return an error if it's unavailable.
+ *
+ * We also verify that the link will not violate the constraint that all files
+ * in an encrypted directory tree use the same encryption policy.
+ *
+ * Return: 0 on success, -ENOKEY if the directory's encryption key is missing,
+ * -EPERM if the link would result in an inconsistent encryption policy, or
+ * another -errno code.
+ */
+static inline int fscrypt_prepare_link(struct dentry *old_dentry,
+				       struct inode *dir,
+				       struct dentry *dentry)
+{
+	return 0;
+}
+
+/**
+ * fscrypt_prepare_rename - prepare for a rename between possibly-encrypted directories
+ * @old_dir: source directory
+ * @old_dentry: dentry for source file
+ * @new_dir: target directory
+ * @new_dentry: dentry for target location (may be negative unless exchanging)
+ * @flags: rename flags (we care at least about %RENAME_EXCHANGE)
+ *
+ * Prepare for ->rename() where the source and/or target directories may be
+ * encrypted.  A new link can only be added to an encrypted directory if the
+ * directory's encryption key is available --- since otherwise we'd have no way
+ * to encrypt the filename.  A rename to an existing name, on the other hand,
+ * *is* cryptographically possible without the key.  However, we take the more
+ * conservative approach and just forbid all no-key renames.
+ *
+ * We also verify that the rename will not violate the constraint that all files
+ * in an encrypted directory tree use the same encryption policy.
+ *
+ * Return: 0 on success, -ENOKEY if an encryption key is missing, -EPERM if the
+ * rename would cause inconsistent encryption policies, or another -errno code.
+ */
+static inline int fscrypt_prepare_rename(struct inode *old_dir,
+					 struct dentry *old_dentry,
+					 struct inode *new_dir,
+					 struct dentry *new_dentry,
+					 unsigned int flags)
+{
+	return 0;
+}
+
+/**
+ * fscrypt_prepare_lookup - prepare to lookup a name in a possibly-encrypted directory
+ * @dir: directory being searched
+ * @dentry: filename being looked up
+ * @flags: lookup flags
+ *
+ * Prepare for ->lookup() in a directory which may be encrypted.  Lookups can be
+ * done with or without the directory's encryption key; without the key,
+ * filenames are presented in encrypted form.  Therefore, we'll try to set up
+ * the directory's encryption key, but even without it the lookup can continue.
+ *
+ * To allow invalidating stale dentries if the directory's encryption key is
+ * added later, we also install a custom ->d_revalidate() method and use the
+ * DCACHE_ENCRYPTED_WITH_KEY flag to indicate whether a given dentry is a
+ * plaintext name (flag set) or a ciphertext name (flag cleared).
+ *
+ * Return: 0 on success, -errno if a problem occurred while setting up the
+ * encryption key
+ */
+static inline int fscrypt_prepare_lookup(struct inode *dir,
+					 struct dentry *dentry,
+					 unsigned int flags)
+{
+	return 0;
+}
+
+/**
+ * fscrypt_encrypt_symlink - encrypt the symlink target if needed
+ * @inode: symlink inode
+ * @target: plaintext symlink target
+ * @len: length of @target excluding null terminator
+ * @disk_link: (in/out) the on-disk symlink target being prepared
+ *
+ * If the symlink target needs to be encrypted, then this function encrypts it
+ * into @disk_link->name.  fscrypt_prepare_symlink() must have been called
+ * previously to compute @disk_link->len.  If the filesystem did not allocate a
+ * buffer for @disk_link->name after calling fscrypt_prepare_link(), then one
+ * will be kmalloc()'ed and the filesystem will be responsible for freeing it.
+ *
+ * Return: 0 on success, -errno on failure
+ */
+static inline int fscrypt_encrypt_symlink(struct inode *inode,
+					  const char *target,
+					  unsigned int len,
+					  struct fscrypt_str *disk_link)
+{
+	return 0;
+}
+
+#endif	/* _LINUX_FSCRYPT_H */
diff --git a/include/linux/fscrypt_notsupp.h b/include/linux/fscrypt_notsupp.h
new file mode 100644
index 0000000000..810105d501
--- /dev/null
+++ b/include/linux/fscrypt_notsupp.h
@@ -0,0 +1,205 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * fscrypt_notsupp.h
+ *
+ * This stubs out the fscrypt functions for filesystems configured without
+ * encryption support.
+ *
+ * Do not include this file directly. Use fscrypt.h instead!
+ */
+#ifndef _LINUX_FSCRYPT_H
+#error "Incorrect include of linux/fscrypt_notsupp.h!"
+#endif
+
+#ifndef _LINUX_FSCRYPT_NOTSUPP_H
+#define _LINUX_FSCRYPT_NOTSUPP_H
+
+static inline bool fscrypt_has_encryption_key(const struct inode *inode)
+{
+	return false;
+}
+
+static inline bool fscrypt_dummy_context_enabled(struct inode *inode)
+{
+	return false;
+}
+
+/* crypto.c */
+
+static inline struct fscrypt_ctx *fscrypt_get_ctx(const struct inode *inode,
+						  gfp_t gfp_flags)
+{
+	return ERR_PTR(-EOPNOTSUPP);
+}
+
+static inline void fscrypt_release_ctx(struct fscrypt_ctx *ctx)
+{
+	return;
+}
+
+static inline struct page *fscrypt_encrypt_page(const struct inode *inode,
+						struct page *page,
+						unsigned int len,
+						unsigned int offs,
+						u64 lblk_num, gfp_t gfp_flags)
+{
+	return ERR_PTR(-EOPNOTSUPP);
+}
+
+static inline int fscrypt_decrypt_page(const struct inode *inode,
+				       struct page *page,
+				       unsigned int len, unsigned int offs,
+				       u64 lblk_num)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline struct page *fscrypt_control_page(struct page *page)
+{
+	return ERR_PTR(-EINVAL);
+}
+
+static inline void fscrypt_restore_control_page(struct page *page)
+{
+	return;
+}
+
+/* policy.c */
+static inline int fscrypt_ioctl_set_policy(struct file *filp,
+					   const void __user *arg)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline int fscrypt_ioctl_get_policy(struct file *filp, void __user *arg)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline int fscrypt_has_permitted_context(struct inode *parent,
+						struct inode *child)
+{
+	return 0;
+}
+
+static inline int fscrypt_inherit_context(struct inode *parent,
+					  struct inode *child,
+					  void *fs_data, bool preload)
+{
+	return -EOPNOTSUPP;
+}
+
+/* keyinfo.c */
+static inline int fscrypt_get_encryption_info(struct inode *inode)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline void fscrypt_put_encryption_info(struct inode *inode)
+{
+	return;
+}
+
+ /* fname.c */
+static inline int fscrypt_setup_filename(struct inode *dir,
+					 const struct qstr *iname,
+					 int lookup, struct fscrypt_name *fname)
+{
+	memset(fname, 0, sizeof(struct fscrypt_name));
+	fname->usr_fname = iname;
+	fname->disk_name.name = (unsigned char *)iname->name;
+	fname->disk_name.len = iname->len;
+	return 0;
+}
+
+static inline void fscrypt_free_filename(struct fscrypt_name *fname)
+{
+	return;
+}
+
+static inline int fscrypt_fname_alloc_buffer(const struct inode *inode,
+					     u32 max_encrypted_len,
+					     struct fscrypt_str *crypto_str)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline void fscrypt_fname_free_buffer(struct fscrypt_str *crypto_str)
+{
+	return;
+}
+
+static inline int fscrypt_fname_disk_to_usr(struct inode *inode,
+					    u32 hash, u32 minor_hash,
+					    const struct fscrypt_str *iname,
+					    struct fscrypt_str *oname)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline bool fscrypt_match_name(const struct fscrypt_name *fname,
+				      const u8 *de_name, u32 de_name_len)
+{
+	/* Encryption support disabled; use standard comparison */
+	if (de_name_len != fname->disk_name.len)
+		return false;
+	return !memcmp(de_name, fname->disk_name.name, fname->disk_name.len);
+}
+
+/* bio.c */
+static inline void fscrypt_pullback_bio_page(struct page **page, bool restore)
+{
+	return;
+}
+
+static inline int fscrypt_zeroout_range(const struct inode *inode, pgoff_t lblk,
+					sector_t pblk, unsigned int len)
+{
+	return -EOPNOTSUPP;
+}
+
+/* hooks.c */
+
+static inline int fscrypt_file_open(struct inode *inode, struct file *filp)
+{
+	return 0;
+}
+
+static inline int __fscrypt_prepare_link(struct inode *inode,
+					 struct inode *dir)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline int __fscrypt_prepare_rename(struct inode *old_dir,
+					   struct dentry *old_dentry,
+					   struct inode *new_dir,
+					   struct dentry *new_dentry,
+					   unsigned int flags)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline int __fscrypt_prepare_lookup(struct inode *dir,
+					   struct dentry *dentry)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline int __fscrypt_prepare_symlink(struct inode *dir,
+					    unsigned int len,
+					    unsigned int max_len,
+					    struct fscrypt_str *disk_link)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline int __fscrypt_encrypt_symlink(struct inode *inode,
+					    const char *target,
+					    unsigned int len,
+					    struct fscrypt_str *disk_link)
+{
+	return -EOPNOTSUPP;
+}
+
+#endif	/* _LINUX_FSCRYPT_NOTSUPP_H */
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
