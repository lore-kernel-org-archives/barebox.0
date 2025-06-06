Delivery-date: Fri, 06 Jun 2025 10:59:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNSut-004K6z-1f
	for lore@lore.pengutronix.de;
	Fri, 06 Jun 2025 10:59:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNSup-0003gr-Mg
	for lore@pengutronix.de; Fri, 06 Jun 2025 10:59:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tgQim3Uc+LSxuzXx57giJBCFb5Tfg8z2ytMUZCq5480=; b=p4fJ5xabmTERul3wPp4r9vRfMw
	iWlIp/tfOHjBnbiZbGxV69NqhyGYjg8BwtP+h4CZ5adCyQ+BVDzZsm74b0zJFVOy0uVNIYXeUIS58
	UCl8afeOnonFCCGyJnZOyA0Zx6hnoiehrw8Vu/dsRdZQMCXTXnJ7UkAR2EZrbsnI1r7bRJCKpD4Uy
	WTZSze1tsYIttpXS9vMfyJ2ZZOKNKflRqZZUMikJXtOE35spiDayU5aTuQvPT/DBPGrYECnTdP8yp
	OVr1hvLtE1s4XYaJqK4fz1mD7wsCaNGkOjfkKwEEkTyGwjpm/W2WIf/FKhv/AXiznISVQffpj1wlF
	ImQ8LXog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNSu5-0000000HSNR-12Yl;
	Fri, 06 Jun 2025 08:58:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNSu0-0000000HSK6-3Kn4
	for barebox@lists.infradead.org;
	Fri, 06 Jun 2025 08:58:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uNSty-0002si-PQ; Fri, 06 Jun 2025 10:58:14 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri,  6 Jun 2025 10:58:04 +0200
Message-Id: <20250606085813.2183260-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250606085813.2183260-1-a.fatoum@barebox.org>
References: <20250606085813.2183260-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250606_015816_832990_B40B1DAD 
X-CRM114-Status: GOOD (  27.41  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 01/10] tftp: centralize 2 sec d_revalidate optimization to new netfs lib
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The logic of dentries expiring after 2 seconds can be useful elsewhere
as well, so factor this out as seed for a new netfs lib that is going to
be used for 9pfs as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 fs/Kconfig            |  4 +++
 fs/Makefile           |  1 +
 fs/netfs.c            | 25 ++++++++++++++
 fs/tftp.c             | 35 +++++--------------
 include/linux/netfs.h | 78 +++++++++++++++++++++++++++++++++++++++++++
 5 files changed, 116 insertions(+), 27 deletions(-)
 create mode 100644 fs/netfs.c
 create mode 100644 include/linux/netfs.h

diff --git a/fs/Kconfig b/fs/Kconfig
index 01ac3040438d..f94488e643bf 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -19,6 +19,9 @@ config FS_WRITABLE
 	  invisible option selected by filesystem drivers that can
 	  write and are not fully read-only.
 
+config NETFS_SUPPORT
+	bool
+
 if FS_LEGACY
 comment "Some selected filesystems still use the legacy FS API."
 comment "Consider updating them."
@@ -51,6 +54,7 @@ config FS_TFTP
 	prompt "tftp support"
 	depends on NET
 	select FS_WRITABLE
+	select NETFS_SUPPORT
 
 config FS_TFTP_MAX_WINDOW_SIZE
 	int
diff --git a/fs/Makefile b/fs/Makefile
index 20a26a16c5ab..b6a44ff82a38 100644
--- a/fs/Makefile
+++ b/fs/Makefile
@@ -8,6 +8,7 @@ obj-$(CONFIG_FS_LEGACY) += legacy.o
 obj-$(CONFIG_FS_DEVFS)	+= devfs.o
 obj-pbl-$(CONFIG_FS_FAT)	+= fat/
 obj-y	+= fs.o libfs.o
+obj-$(CONFIG_NETFS_SUPPORT)	+= netfs.o
 obj-$(CONFIG_FS_JFFS2)	+= jffs2/
 obj-$(CONFIG_FS_UBIFS)	+= ubifs/
 obj-$(CONFIG_FS_TFTP)	+= tftp.o
diff --git a/fs/netfs.c b/fs/netfs.c
new file mode 100644
index 000000000000..446377130d61
--- /dev/null
+++ b/fs/netfs.c
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <linux/dcache.h>
+#include <clock.h>
+#include <linux/netfs.h>
+
+
+static int netfs_lookup_revalidate(struct dentry *dentry, unsigned int flags)
+{
+	struct netfs_inode *node;
+
+	if (!dentry->d_inode)
+		return 0;
+
+	node = netfs_inode(dentry->d_inode);
+
+	if (is_timeout(node->time, NETFS_INODE_VALID_TIME))
+		return 0;
+
+	return 1;
+}
+
+const struct dentry_operations netfs_dentry_operations_timed = {
+	.d_revalidate = netfs_lookup_revalidate,
+};
diff --git a/fs/tftp.c b/fs/tftp.c
index cf91f66ed88b..5cb71431eb49 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -35,6 +35,7 @@
 #include <kfifo.h>
 #include <parseopt.h>
 #include <linux/sizes.h>
+#include <linux/netfs.h>
 
 #include "tftp-selftest.h"
 
@@ -131,13 +132,12 @@ struct tftp_priv {
 };
 
 struct tftp_inode {
-	struct inode inode;
-	u64 time;
+	struct netfs_inode netfs_node;
 };
 
 static struct tftp_inode *to_tftp_inode(struct inode *inode)
 {
-	return container_of(inode, struct tftp_inode, inode);
+	return container_of(inode, struct tftp_inode, netfs_node.inode);
 }
 
 static inline bool is_block_before(uint16_t a, uint16_t b)
@@ -957,12 +957,12 @@ static struct inode *tftp_get_inode(struct super_block *sb, const struct inode *
 	if (!inode)
 		return NULL;
 
-	node = to_tftp_inode(inode);
-	node->time = get_time_ns();
-
 	inode->i_ino = get_next_ino();
 	inode->i_mode = mode;
 
+	node = to_tftp_inode(inode);
+	netfs_inode_init(&node->netfs_node);
+
 	switch (mode & S_IFMT) {
 	default:
 		return NULL;
@@ -1040,7 +1040,7 @@ static struct inode *tftp_alloc_inode(struct super_block *sb)
 	if (!node)
 		return NULL;
 
-	return &node->inode;
+	return &node->netfs_node.inode;
 }
 
 static void tftp_destroy_inode(struct inode *inode)
@@ -1055,25 +1055,6 @@ static const struct super_operations tftp_ops = {
 	.destroy_inode = tftp_destroy_inode,
 };
 
-static int tftp_lookup_revalidate(struct dentry *dentry, unsigned int flags)
-{
-	struct tftp_inode *node;
-
-	if (!dentry->d_inode)
-		return 0;
-
-	node = to_tftp_inode(dentry->d_inode);
-
-	if (is_timeout(node->time, 2 * SECOND))
-		return 0;
-
-	return 1;
-}
-
-static const struct dentry_operations tftp_dentry_operations = {
-	.d_revalidate = tftp_lookup_revalidate,
-};
-
 static int tftp_probe(struct device *dev)
 {
 	struct fs_device *fsdev = dev_to_fs_device(dev);
@@ -1091,7 +1072,7 @@ static int tftp_probe(struct device *dev)
 	}
 
 	sb->s_op = &tftp_ops;
-	sb->s_d_op = &tftp_dentry_operations;
+	sb->s_d_op = &netfs_dentry_operations_timed;
 
 	inode = tftp_get_inode(sb, NULL, S_IFDIR);
 	sb->s_root = d_make_root(inode);
diff --git a/include/linux/netfs.h b/include/linux/netfs.h
new file mode 100644
index 000000000000..4aa2e2223d4a
--- /dev/null
+++ b/include/linux/netfs.h
@@ -0,0 +1,78 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/* Network filesystem support services.
+ *
+ * Copyright (C) 2021 Red Hat, Inc. All Rights Reserved.
+ * Written by David Howells (dhowells@redhat.com)
+ *
+ * See:
+ *
+ *	Documentation/filesystems/netfs_library.rst
+ *
+ * for a description of the network filesystem interface declared here.
+ */
+
+#ifndef _LINUX_NETFS_H
+#define _LINUX_NETFS_H
+
+#include <linux/fs.h>
+#include <linux/container_of.h>
+#include <clock.h>
+
+/*
+ * Per-inode context.  This wraps the VFS inode.
+ */
+struct netfs_inode {
+	struct inode		inode;		/* The VFS inode */
+	u64			time;		/* Time the inode was allocated */
+};
+
+enum netfs_io_origin {
+	NETFS_READPAGE,			/* This read is a synchronous read */
+	NETFS_WRITETHROUGH,		/* This write was made by netfs_perform_write() */
+} __mode(byte);
+
+/*
+ * Descriptor for an I/O helper request.  This is used to make multiple I/O
+ * operations to a variety of data stores and then stitch the result together.
+ */
+struct netfs_io_request {
+	struct inode		*inode;		/* The file being accessed */
+	void			*netfs_priv;	/* Private data for the netfs */
+	enum netfs_io_origin	origin;		/* Origin of the request */
+};
+
+/**
+ * netfs_inode - Get the netfs inode context from the inode
+ * @inode: The inode to query
+ *
+ * Get the netfs lib inode context from the network filesystem's inode.  The
+ * context struct is expected to directly follow on from the VFS inode struct.
+ */
+static inline struct netfs_inode *netfs_inode(struct inode *inode)
+{
+	return container_of(inode, struct netfs_inode, inode);
+}
+
+/**
+ * netfs_inode_init - Initialise a netfslib inode context
+ * @ctx: The netfs inode to initialise
+ *
+ * Initialise the netfs library context struct.  This is expected to follow on
+ * directly from the VFS inode struct.
+ */
+static inline void netfs_inode_init(struct netfs_inode *ctx)
+{
+	ctx->time = get_time_ns();
+}
+
+#define NETFS_INODE_VALID_TIME		(2 * NSEC_PER_SEC)
+
+static inline void netfs_invalidate_inode_attr(struct netfs_inode *ctx)
+{
+	/* ensure that we always detect the inode to be stale */
+	ctx->time = -NETFS_INODE_VALID_TIME;
+}
+
+extern const struct dentry_operations netfs_dentry_operations_timed;
+
+#endif /* _LINUX_NETFS_H */
-- 
2.39.5



