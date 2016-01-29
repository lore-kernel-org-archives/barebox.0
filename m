Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x243.google.com ([2a00:1450:400c:c09::243])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aP9hj-0008B7-Ot
 for barebox@lists.infradead.org; Fri, 29 Jan 2016 14:07:17 +0000
Received: by mail-wm0-x243.google.com with SMTP id p63so10071729wmp.1
 for <barebox@lists.infradead.org>; Fri, 29 Jan 2016 06:06:55 -0800 (PST)
From: yegorslists@googlemail.com
Date: Fri, 29 Jan 2016 15:06:21 +0100
Message-Id: <1454076381-17375-2-git-send-email-yegorslists@googlemail.com>
In-Reply-To: <1454076381-17375-1-git-send-email-yegorslists@googlemail.com>
References: <1454076381-17375-1-git-send-email-yegorslists@googlemail.com>
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
Subject: [PATCH 2/2] fs: add super_operations infrastructure
To: barebox@lists.infradead.org

From: Yegor Yefremov <yegorslists@googlemail.com>

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 fs/Makefile        |  1 +
 fs/inode.c         | 34 ++++++++++++++++++++++++++++++++++
 fs/ubifs/super.c   | 26 +++++++++++---------------
 include/linux/fs.h |  6 ++++++
 4 files changed, 52 insertions(+), 15 deletions(-)
 create mode 100644 fs/inode.c

diff --git a/fs/Makefile b/fs/Makefile
index 7896e38..320e6fa 100644
--- a/fs/Makefile
+++ b/fs/Makefile
@@ -5,6 +5,7 @@ obj-y			+= devfs-core.o
 obj-$(CONFIG_FS_DEVFS)	+= devfs.o
 obj-$(CONFIG_FS_FAT)	+= fat/
 obj-y	+= fs.o
+obj-y	+= inode.o
 obj-$(CONFIG_FS_UBIFS)	+= ubifs/
 obj-$(CONFIG_FS_TFTP)	+= tftp.o
 obj-$(CONFIG_FS_OMAP4_USBBOOT)	+= omap4_usbbootfs.o
diff --git a/fs/inode.c b/fs/inode.c
new file mode 100644
index 0000000..f9b1b63
--- /dev/null
+++ b/fs/inode.c
@@ -0,0 +1,34 @@
+/*
+ * (C) 1997 Linus Torvalds
+ * (C) 1999 Andrea Arcangeli <andrea@suse.de> (dynamic inode allocation)
+ */
+
+#include <linux/mount.h>
+
+/**
+ * iget_locked - obtain an inode from a mounted file system
+ * @sb:		super block of file system
+ * @ino:	inode number to get
+ *
+ * Search for the inode specified by @ino in the inode cache and if present
+ * return it with an increased reference count. This is for file systems
+ * where the inode number is sufficient for unique identification of an inode.
+ *
+ * If the inode is not in cache, allocate a new inode and return it locked,
+ * hashed, and with the I_NEW flag set.  The file system gets to fill it in
+ * before unlocking it via unlock_new_inode().
+ */
+struct inode *iget_locked(struct super_block *sb, unsigned long ino)
+{
+	struct inode *inode;
+
+	inode = sb->s_op->alloc_inode(sb);
+	if (inode) {
+		inode->i_ino = ino;
+		inode->i_sb = sb;
+		list_add(&inode->i_sb_list, &sb->s_inodes);
+		inode->i_state = I_SYNC | I_NEW;
+	}
+
+	return inode;
+}
diff --git a/fs/ubifs/super.c b/fs/ubifs/super.c
index b45240d..10f922a 100644
--- a/fs/ubifs/super.c
+++ b/fs/ubifs/super.c
@@ -79,21 +79,6 @@ static int validate_inode(struct ubifs_info *c, const struct inode *inode)
 	return err;
 }
 
-struct inode *iget_locked(struct super_block *sb, unsigned long ino)
-{
-	struct inode *inode;
-
-	inode = (struct inode *)malloc(sizeof(struct ubifs_inode));
-	if (inode) {
-		inode->i_ino = ino;
-		inode->i_sb = sb;
-		list_add(&inode->i_sb_list, &sb->s_inodes);
-		inode->i_state = I_SYNC | I_NEW;
-	}
-
-	return inode;
-}
-
 int ubifs_iput(struct inode *inode)
 {
 	list_del_init(&inode->i_sb_list);
@@ -814,6 +799,15 @@ void ubifs_umount(struct ubifs_info *c)
 	ubifs_debugging_exit(c);
 }
 
+static struct inode *ubifs_alloc_inode(struct super_block *sb)
+{
+	return (struct inode *)malloc(sizeof(struct ubifs_inode));
+};
+
+const struct super_operations ubifs_super_operations = {
+	.alloc_inode   = ubifs_alloc_inode,
+};
+
 struct super_block *ubifs_get_super(struct device_d *dev, struct ubi_volume_desc *ubi, int silent)
 {
 	struct super_block *sb;
@@ -888,6 +882,8 @@ struct super_block *ubifs_get_super(struct device_d *dev, struct ubi_volume_desc
 		return ERR_PTR(-EROFS);
 	}
 
+	sb->s_op = &ubifs_super_operations;
+
 	mutex_lock(&c->umount_mutex);
 	err = mount_ubifs(c);
 	if (err) {
diff --git a/include/linux/fs.h b/include/linux/fs.h
index 7e9886a..9aec052 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -112,6 +112,10 @@ struct inode {
 	void			*i_private; /* fs or device private pointer */
 };
 
+struct super_operations {
+        struct inode *(*alloc_inode)(struct super_block *sb);
+};
+
 struct super_block {
 	struct list_head	s_list;		/* Keep this first */
 	dev_t			s_dev;		/* search index; _not_ kdev_t */
@@ -361,4 +365,6 @@ struct file {
 #define I_DIRTY (I_DIRTY_SYNC | I_DIRTY_DATASYNC | I_DIRTY_PAGES)
 #define I_DIRTY_ALL (I_DIRTY | I_DIRTY_TIME)
 
+extern struct inode * iget_locked(struct super_block *, unsigned long);
+
 #endif /* _LINUX_FS_H */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
