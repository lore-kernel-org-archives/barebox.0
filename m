Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x241.google.com ([2a00:1450:400c:c09::241])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aOOg0-0001zO-RT
 for barebox@lists.infradead.org; Wed, 27 Jan 2016 11:54:26 +0000
Received: by mail-wm0-x241.google.com with SMTP id 123so2888607wmz.2
 for <barebox@lists.infradead.org>; Wed, 27 Jan 2016 03:54:02 -0800 (PST)
From: yegorslists@googlemail.com
Date: Wed, 27 Jan 2016 12:53:07 +0100
Message-Id: <1453895589-20941-6-git-send-email-yegorslists@googlemail.com>
In-Reply-To: <1453895589-20941-1-git-send-email-yegorslists@googlemail.com>
References: <1453895589-20941-1-git-send-email-yegorslists@googlemail.com>
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
Subject: [PATCH 6/8] fs: ubifs: move vfsmount definition to
 include/linux/mount.h
To: barebox@lists.infradead.org

From: Yegor Yefremov <yegorslists@googlemail.com>

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 fs/ubifs/ubifs.h      | 35 +----------------------------------
 include/linux/mount.h | 21 +++++++++++++++++++++
 2 files changed, 22 insertions(+), 34 deletions(-)
 create mode 100644 include/linux/mount.h

diff --git a/fs/ubifs/ubifs.h b/fs/ubifs/ubifs.h
index 424b154..8f362ed 100644
--- a/fs/ubifs/ubifs.h
+++ b/fs/ubifs/ubifs.h
@@ -38,6 +38,7 @@
 #include <linux/pagemap.h>
 #include <linux/stat.h>
 #include <linux/dcache.h>
+#include <linux/mount.h>
 #include <linux/ctype.h>
 #include <linux/math64.h>
 #include <linux/rbtree.h>
@@ -91,40 +92,6 @@ struct file_system_type {
 	struct list_head fs_supers;
 };
 
-struct vfsmount {
-	struct list_head mnt_hash;
-	struct vfsmount *mnt_parent;	/* fs we are mounted on */
-	struct dentry *mnt_mountpoint;	/* dentry of mountpoint */
-	struct dentry *mnt_root;	/* root of the mounted tree */
-	struct super_block *mnt_sb;	/* pointer to superblock */
-	struct list_head mnt_mounts;	/* list of children, anchored here */
-	struct list_head mnt_child;	/* and going through their mnt_child */
-	int mnt_flags;
-	/* 4 bytes hole on 64bits arches */
-	const char *mnt_devname;	/* Name of device e.g. /dev/dsk/hda1 */
-	struct list_head mnt_list;
-	struct list_head mnt_expire;	/* link in fs-specific expiry list */
-	struct list_head mnt_share;	/* circular list of shared mounts */
-	struct list_head mnt_slave_list;/* list of slave mounts */
-	struct list_head mnt_slave;	/* slave list entry */
-	struct vfsmount *mnt_master;	/* slave is on master->mnt_slave_list */
-	struct mnt_namespace *mnt_ns;	/* containing namespace */
-	int mnt_id;			/* mount identifier */
-	int mnt_group_id;		/* peer group identifier */
-	/*
-	 * We put mnt_count & mnt_expiry_mark at the end of struct vfsmount
-	 * to let these frequently modified fields in a separate cache line
-	 * (so that reads of mnt_flags wont ping-pong on SMP machines)
-	 */
-	int mnt_expiry_mark;		/* true if marked for expiry */
-	int mnt_pinned;
-	int mnt_ghosts;
-	/*
-	 * This value is not stable unless all of the mnt_writers[] spinlocks
-	 * are held, and all mnt_writer[]s on this mount have 0 as their ->count
-	 */
-};
-
 struct path {
 	struct vfsmount *mnt;
 	struct dentry *dentry;
diff --git a/include/linux/mount.h b/include/linux/mount.h
new file mode 100644
index 0000000..e4d185c
--- /dev/null
+++ b/include/linux/mount.h
@@ -0,0 +1,21 @@
+/*
+ *
+ * Definitions for mount interface. This describes the in the kernel build 
+ * linkedlist with mounted filesystems.
+ *
+ * Author:  Marco van Wieringen <mvw@planets.elm.net>
+ *
+ */
+#ifndef _LINUX_MOUNT_H
+#define _LINUX_MOUNT_H
+
+#include <linux/dcache.h>
+#include <linux/fs.h>
+
+struct vfsmount {
+	struct dentry *mnt_root;	/* root of the mounted tree */
+	struct super_block *mnt_sb;	/* pointer to superblock */
+	int mnt_flags;
+};
+
+#endif /* _LINUX_MOUNT_H */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
