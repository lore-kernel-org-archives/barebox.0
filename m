Delivery-date: Thu, 13 Mar 2025 11:18:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsfe4-00DWiD-13
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 11:18:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsfe1-00071P-VZ
	for lore@pengutronix.de; Thu, 13 Mar 2025 11:18:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HDA2Rq+hJCfIl+bHcir9bSM3lngqp9eqT+MpbgD94cM=; b=3+pqaxO+OzWvN/r6xju3qoX/zS
	PxH1GQK1ohj1X6eJg0qa4Blu+kybGmCIOkpdKC9wDLKiNkVWbZaAmszixymbbC6QIhuIsqiqo7m9J
	05QfAxioXkcoeAD8EVYI2bUhQTBTt5pfBlwN/KDejqsNyQ9HPvop+cskiqDp1Cg1WG4i7TSK57fV3
	2hdrU1ShP6OOPZX3XB1CfbvTyY4wa4TX2oJZB6OFS/g/DLjsz5crgKPfN4MCtOVXyVXr+1riEOrW7
	Sp764pKHCKc3R7hJkeqtoi9ypdKw9sMtZVjeos8zp96+85iBrTe/7mr1OGKDyg+GErBfeQj0dJASP
	KuDlFv4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsfdW-0000000Aq32-3jEQ;
	Thu, 13 Mar 2025 10:17:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsfdU-0000000Aq0I-1aKW
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 10:17:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsfd5-0006G3-2p; Thu, 13 Mar 2025 11:17:31 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsfd4-005WBh-0P;
	Thu, 13 Mar 2025 11:17:30 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsfd4-00Gch5-02;
	Thu, 13 Mar 2025 11:17:30 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Adrian Negreanu <adrian.negreanu@nxp.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Mar 2025 11:17:22 +0100
Message-Id: <20250313101728.3546902-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250313101728.3546902-1-a.fatoum@pengutronix.de>
References: <20250313101728.3546902-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_031756_729488_EECF9B1D 
X-CRM114-Status: GOOD (  26.06  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 05/11] fs: add qemu_fw_cfg file system
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The character device we currently have is cumbersome to use.
The Linux way to access it at /sys/firmware/qemu_fw_cfg
is much nicer to use, so add support for a similar FS to barebox.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/Kconfig       |   7 +
 fs/Makefile      |   1 +
 fs/qemu_fw_cfg.c | 397 +++++++++++++++++++++++++++++++++++++++++++++++
 include/string.h |   5 +
 4 files changed, 410 insertions(+)
 create mode 100644 fs/qemu_fw_cfg.c

diff --git a/fs/Kconfig b/fs/Kconfig
index 9118d1114daa..01ac3040438d 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -156,4 +156,11 @@ config FS_UBOOTVARFS
 	  This filesystem driver provides access to U-Boot environment
 	  variables.
 
+config FS_QEMU_FW_CFG
+	bool "QEMU FW CFG interface"
+	select QEMU_FW_CFG
+	help
+	  This filesystem driver provides access to the QEMU FW CFG conduit
+	  as a file system.
+
 endmenu
diff --git a/fs/Makefile b/fs/Makefile
index 6160ef4e1a0b..20a26a16c5ab 100644
--- a/fs/Makefile
+++ b/fs/Makefile
@@ -22,3 +22,4 @@ obj-$(CONFIG_FS_PSTORE) += pstore/
 obj-$(CONFIG_FS_SQUASHFS) += squashfs/
 obj-$(CONFIG_FS_RATP)	+= ratpfs.o
 obj-$(CONFIG_FS_UBOOTVARFS) += ubootvarfs.o
+obj-$(CONFIG_FS_QEMU_FW_CFG) += qemu_fw_cfg.o
diff --git a/fs/qemu_fw_cfg.c b/fs/qemu_fw_cfg.c
new file mode 100644
index 000000000000..7f7350e67e64
--- /dev/null
+++ b/fs/qemu_fw_cfg.c
@@ -0,0 +1,397 @@
+// SPDX-License-Identifier: GPL-2.0+
+// SPDX-FileCopyrightText: 2024 Ahmad Fatoum
+
+#define pr_fmt(fmt) "qemu_fw_cfg-fs: " fmt
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <malloc.h>
+#include <fs.h>
+#include <string.h>
+#include <libfile.h>
+#include <errno.h>
+#include <linux/stat.h>
+#include <xfuncs.h>
+#include <fcntl.h>
+#include <linux/qemu_fw_cfg.h>
+#include <wchar.h>
+#include <linux/err.h>
+#include <linux/ctype.h>
+
+struct fw_cfg_fs_inode {
+	struct inode inode;
+	const char *name;
+	struct list_head sibling;
+	struct list_head children;
+	char *buf;
+};
+
+struct fw_cfg_fs_data {
+	int fd;
+	int next_ino;
+};
+
+static struct fw_cfg_fs_inode *inode_to_node(struct inode *inode)
+{
+	return container_of(inode, struct fw_cfg_fs_inode, inode);
+}
+
+static const char *fw_cfg_fs_get_link(struct dentry *dentry, struct inode *inode)
+{
+	return inode->i_link;
+}
+
+static const struct inode_operations fw_cfg_fs_file_inode_operations;
+static const struct inode_operations fw_cfg_fs_dir_inode_operations;
+static const struct inode_operations fw_cfg_fs_symlink_inode_operations = {
+	.get_link = fw_cfg_fs_get_link,
+};
+static const struct file_operations fw_cfg_fs_file_operations;
+static const struct file_operations fw_cfg_fs_dir_operations;
+
+static struct inode *fw_cfg_fs_get_inode(struct inode *iparent,
+					 const char *name)
+{
+	struct fw_cfg_fs_inode *parent = inode_to_node(iparent);
+
+	while (true) {
+		struct fw_cfg_fs_inode *node;
+		char *slash;
+
+		slash = strchrnul(name, '/');
+
+		list_for_each_entry(node, &parent->children, sibling) {
+			size_t namelen = slash - name;
+			if (!strncmp_ptr(name, node->name, namelen) &&
+			    !node->name[namelen]) {
+				if (*slash == '\0')
+					return &node->inode;
+				parent = node;
+				goto next;
+			}
+		}
+
+		return NULL;
+
+next:
+		name = slash + 1;
+	}
+}
+
+static struct dentry *fw_cfg_fs_lookup(struct inode *dir,
+				       struct dentry *dentry,
+				       unsigned int flags)
+{
+	struct inode *inode;
+
+	inode = fw_cfg_fs_get_inode(dir, dentry->name);
+	if (IS_ERR_OR_NULL(inode))
+		return ERR_CAST(inode);
+
+	d_add(dentry, inode);
+
+	return NULL;
+}
+
+static const struct inode_operations fw_cfg_fs_dir_inode_operations = {
+	.lookup = fw_cfg_fs_lookup,
+};
+
+static struct fw_cfg_fs_inode *fw_cfg_fs_node_new(struct super_block *sb,
+						  struct fw_cfg_fs_inode *parent,
+						  const char *name,
+						  ulong select,
+						  umode_t mode)
+{
+	struct fw_cfg_fs_inode *node;
+	struct inode *inode;
+
+
+	inode = new_inode(sb);
+	if (!inode)
+		return NULL;
+
+	inode->i_ino = select;
+	inode->i_mode = 0777 | mode;
+	node = inode_to_node(inode);
+	node->name = strdup(name);
+
+	switch (inode->i_mode & S_IFMT) {
+	default:
+		return ERR_PTR(-EINVAL);
+	case S_IFREG:
+		inode->i_op = &fw_cfg_fs_file_inode_operations;
+		inode->i_fop = &fw_cfg_fs_file_operations;
+		break;
+	case S_IFDIR:
+		inode->i_op = &fw_cfg_fs_dir_inode_operations;
+		inode->i_fop = &fw_cfg_fs_dir_operations;
+		inc_nlink(inode);
+		break;
+	case S_IFLNK:
+		inode->i_op = &fw_cfg_fs_symlink_inode_operations;
+		break;
+	}
+
+	if (parent)
+		list_add_tail(&node->sibling, &parent->children);
+
+	return node;
+}
+
+#define fw_cfg_fs_node_sprintf(node, args...)		\
+do {							\
+	node->inode.i_size = asprintf(&node->buf, args);\
+} while (0)
+
+static int fw_cfg_fs_parse(struct super_block *sb)
+{
+	struct fw_cfg_fs_data *data = sb->s_fs_info;
+	struct fw_cfg_fs_inode *root, *by_key, *by_name;
+	__be32 count;
+	int i, ret;
+
+	ioctl(data->fd, FW_CFG_SELECT, &(u16) { FW_CFG_FILE_DIR });
+
+	lseek(data->fd, 0, SEEK_SET);
+
+	ret = read(data->fd, &count, sizeof(count));
+	if (ret < 0)
+		return ret;
+
+	root = inode_to_node(d_inode(sb->s_root));
+
+	by_key = fw_cfg_fs_node_new(sb, root, "by_key", data->next_ino++, S_IFDIR);
+	if (IS_ERR(by_key))
+		return PTR_ERR(by_key);
+
+	by_name = fw_cfg_fs_node_new(sb, root, "by_name", data->next_ino++, S_IFDIR);
+	if (IS_ERR(by_name))
+		return PTR_ERR(by_name);
+
+	for (i = 0; i < be32_to_cpu(count); i++) {
+		struct fw_cfg_fs_inode *parent, *dir, *node;
+		struct fw_cfg_file qfile;
+		char buf[sizeof("65536")];
+		char *context, *name;
+		int ndirs = 0;
+
+		ret = read(data->fd, &qfile, sizeof(qfile));
+		if (ret < 0)
+			break;
+
+		snprintf(buf, sizeof(buf), "%u", be16_to_cpu(qfile.select));
+
+		dir = fw_cfg_fs_node_new(sb, by_key, buf, data->next_ino++, S_IFDIR);
+		if (IS_ERR(dir))
+			return PTR_ERR(dir);
+
+		node = fw_cfg_fs_node_new(sb, dir, "name", data->next_ino++, S_IFREG);
+		fw_cfg_fs_node_sprintf(node, "%s", qfile.name);
+
+		node = fw_cfg_fs_node_new(sb, dir, "size", data->next_ino++, S_IFREG);
+		fw_cfg_fs_node_sprintf(node, "%u", be32_to_cpu(qfile.size));
+
+		node = fw_cfg_fs_node_new(sb, dir, "key", data->next_ino++, S_IFREG);
+		fw_cfg_fs_node_sprintf(node, "%u", be16_to_cpu(qfile.select));
+
+		node = fw_cfg_fs_node_new(sb, dir, "raw", be16_to_cpu(qfile.select), S_IFREG);
+		node->inode.i_size = be32_to_cpu(qfile.size);
+
+		for (const char *s = qfile.name; *s; s++) {
+			if (*s == '/')
+				ndirs++;
+		}
+
+		context = qfile.name;
+		parent = by_name;
+
+		while ((name = strsep(&context, "/"))) {
+			struct fw_cfg_fs_inode *node;
+			mode_t mode;
+
+			list_for_each_entry(node, &parent->children, sibling) {
+				if (streq_ptr(name, node->name)) {
+					parent = node;
+					goto next;
+				}
+			}
+
+			mode = context && *context ? S_IFDIR : S_IFLNK;
+			parent = fw_cfg_fs_node_new(sb, parent, name, data->next_ino++,
+						    mode);
+			if (IS_ERR(parent))
+				break;
+			if (mode == S_IFLNK) {
+				char *s	= basprintf("%*sby_key/%s/raw",
+						    (ndirs + 1) * 3, "", buf);
+
+				parent->inode.i_link = s;
+				while (*s == ' ')
+					s = mempcpy(s, "../", 3);
+			}
+next:
+			;
+		}
+	}
+
+	return ret >= 0 ? 0 : ret;
+}
+
+static inline unsigned char dt_type(struct inode *inode)
+{
+	return (inode->i_mode >> 12) & 15;
+}
+
+static int fw_cfg_fs_dcache_readdir(struct file *file, struct dir_context *ctx)
+{
+	struct dentry *dentry = file->f_path.dentry;
+	struct inode *iparent = d_inode(dentry);
+	struct fw_cfg_fs_inode *node, *parent = inode_to_node(iparent);
+
+	dir_emit_dots(file, ctx);
+
+	list_for_each_entry(node, &parent->children, sibling) {
+		dir_emit(ctx, node->name, strlen(node->name),
+			 node->inode.i_ino, dt_type(&node->inode));
+	}
+
+	return 0;
+}
+
+static const struct file_operations fw_cfg_fs_dir_operations = {
+	.iterate = fw_cfg_fs_dcache_readdir,
+};
+
+static struct inode *fw_cfg_fs_alloc_inode(struct super_block *sb)
+{
+	struct fw_cfg_fs_inode *node;
+
+	node = xzalloc(sizeof(*node));
+
+	INIT_LIST_HEAD(&node->children);
+	INIT_LIST_HEAD(&node->sibling);
+
+	return &node->inode;
+}
+
+static void fw_cfg_fs_destroy_inode(struct inode *inode)
+{
+	struct fw_cfg_fs_inode *node = inode_to_node(inode);
+
+	list_del(&node->children);
+	list_del(&node->sibling);
+	free(node->buf);
+	free(node);
+}
+
+static const struct super_operations fw_cfg_fs_ops = {
+	.alloc_inode = fw_cfg_fs_alloc_inode,
+	.destroy_inode = fw_cfg_fs_destroy_inode,
+};
+
+static int fw_cfg_fs_io(struct device *dev, struct file *f, void *buf,
+			 size_t insize, bool read)
+{
+	struct inode *inode = f->f_inode;
+	struct fw_cfg_fs_inode *node = inode_to_node(inode);
+	struct fw_cfg_fs_data *data = dev->priv;
+	int fd = data->fd;
+
+	if (node->buf) {
+		if (read)
+			memcpy(buf, node->buf + f->f_pos, insize);
+		else
+			memcpy(node->buf + f->f_pos, buf, insize);
+		return insize;
+	}
+
+	ioctl(fd, FW_CFG_SELECT, &(u16) { inode->i_ino });
+
+	if (read)
+		return pread(fd, buf, insize, f->f_pos);
+	else
+		return pwrite(fd, buf, insize, f->f_pos);
+}
+
+static int fw_cfg_fs_read(struct device *dev, struct file *f, void *buf,
+			   size_t insize)
+{
+	return fw_cfg_fs_io(dev, f, buf, insize, true);
+}
+
+static int fw_cfg_fs_write(struct device *dev, struct file *f, const void *buf,
+			    size_t insize)
+{
+	return fw_cfg_fs_io(dev, f, (void *)buf, insize, false);
+}
+
+static int fw_cfg_fw_truncate(struct device *dev, struct file *f, loff_t size)
+{
+	return 0;
+}
+
+static int fw_cfg_fs_probe(struct device *dev)
+{
+	struct fw_cfg_fs_inode *node;
+	struct fw_cfg_fs_data *data = xzalloc(sizeof(*data));
+	struct fs_device *fsdev = dev_to_fs_device(dev);
+	struct super_block *sb = &fsdev->sb;
+	int ret;
+
+	dev->priv = data;
+
+	data->next_ino = U16_MAX + 1;
+	data->fd = open(fsdev->backingstore, O_RDWR);
+	if (data->fd < 0) {
+		ret = -errno;
+		goto free_data;
+	}
+
+	sb->s_op = &fw_cfg_fs_ops;
+	node = fw_cfg_fs_node_new(sb, NULL, NULL, data->next_ino++, S_IFDIR);
+	if (IS_ERR(node))
+		return PTR_ERR(node);
+	sb->s_root = d_make_root(&node->inode);
+	sb->s_fs_info = data;
+
+
+	/*
+	 * We don't use cdev * directly, but this is needed for
+	 * cdev_get_mount_path() to work right
+	 */
+	fsdev->cdev = cdev_by_name(devpath_to_name(fsdev->backingstore));
+
+	return fw_cfg_fs_parse(sb);
+free_data:
+	free(data);
+	return ret;
+}
+
+static void fw_cfg_fs_remove(struct device *dev)
+{
+	struct fw_cfg_fs_data *data = dev->priv;
+
+	flush(data->fd);
+	close(data->fd);
+	free(data);
+}
+
+static struct fs_driver fw_cfg_fs_driver = {
+	.read = fw_cfg_fs_read,
+	.write = fw_cfg_fs_write,
+	.truncate = fw_cfg_fw_truncate,
+	.type = filetype_qemu_fw_cfg,
+	.drv = {
+		.probe = fw_cfg_fs_probe,
+		.remove = fw_cfg_fs_remove,
+		.name = "qemu_fw_cfg-fs",
+	}
+};
+
+static int qemu_fw_cfg_fs_init(void)
+{
+	return register_fs_driver(&fw_cfg_fs_driver);
+}
+coredevice_initcall(qemu_fw_cfg_fs_init);
diff --git a/include/string.h b/include/string.h
index 986ccd83dd73..782fb9425a95 100644
--- a/include/string.h
+++ b/include/string.h
@@ -30,6 +30,11 @@ static inline int strcmp_ptr(const char *a, const char *b)
 	return a && b ? strcmp(a, b) : compare3(a, b);
 }
 
+static inline int strncmp_ptr(const char *a, const char *b, size_t n)
+{
+	return a && b ? strncmp(a, b, n) : compare3(a, b);
+}
+
 static inline bool streq_ptr(const char *a, const char *b)
 {
 	return strcmp_ptr(a, b) == 0;
-- 
2.39.5



