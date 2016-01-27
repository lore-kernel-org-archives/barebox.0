Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x243.google.com ([2a00:1450:400c:c09::243])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aOOg7-00021q-KK
 for barebox@lists.infradead.org; Wed, 27 Jan 2016 11:54:30 +0000
Received: by mail-wm0-x243.google.com with SMTP id p63so2888787wmp.1
 for <barebox@lists.infradead.org>; Wed, 27 Jan 2016 03:54:07 -0800 (PST)
From: yegorslists@googlemail.com
Date: Wed, 27 Jan 2016 12:53:09 +0100
Message-Id: <1453895589-20941-8-git-send-email-yegorslists@googlemail.com>
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
Subject: [PATCH 8/8] fs: ubifs: move file and file_system_type definitions to
 linux/fs.h
To: barebox@lists.infradead.org

From: Yegor Yefremov <yegorslists@googlemail.com>

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 fs/ubifs/ubifs.h   | 39 ---------------------------------------
 include/linux/fs.h | 39 +++++++++++++++++++++++++++++++++++++++
 2 files changed, 39 insertions(+), 39 deletions(-)

diff --git a/fs/ubifs/ubifs.h b/fs/ubifs/ubifs.h
index cfd37f2..50ac1c4 100644
--- a/fs/ubifs/ubifs.h
+++ b/fs/ubifs/ubifs.h
@@ -80,45 +80,6 @@ void iput(struct inode *inode);
 #define atomic_long_dec(a)
 #define	atomic_long_sub(a, b)
 
-/* linux/include/dcache.h */
-
-struct file_system_type {
-	const char *name;
-	int fs_flags;
-	int (*get_sb) (struct file_system_type *, int,
-		       const char *, void *, struct vfsmount *);
-	void (*kill_sb) (struct super_block *);
-	struct module *owner;
-	struct file_system_type * next;
-	struct list_head fs_supers;
-};
-
-struct file {
-	struct path		f_path;
-#define f_dentry	f_path.dentry
-#define f_vfsmnt	f_path.mnt
-	const struct file_operations	*f_op;
-	unsigned int 		f_flags;
-	loff_t			f_pos;
-	unsigned int		f_uid, f_gid;
-
-	u64			f_version;
-#ifdef CONFIG_SECURITY
-	void			*f_security;
-#endif
-	/* needed for tty driver, and maybe others */
-	void			*private_data;
-
-#ifdef CONFIG_EPOLL
-	/* Used by fs/eventpoll.c to link all the hooks to this file */
-	struct list_head	f_ep_links;
-	spinlock_t		f_ep_lock;
-#endif /* #ifdef CONFIG_EPOLL */
-#ifdef CONFIG_DEBUG_WRITECOUNT
-	unsigned long f_mnt_write_state;
-#endif
-};
-
 /*
  * get_seconds() not really needed in the read-only implmentation
  */
diff --git a/include/linux/fs.h b/include/linux/fs.h
index d0e61ba..e9fb881 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -4,6 +4,8 @@
 #include <linux/barebox-wrapper.h>
 #include <linux/list.h>
 #include <linux/time.h>
+#include <linux/mount.h>
+#include <linux/path.h>
 
 /* Page cache limit. The filesystems should put that into their s_maxbytes
    limits, otherwise bad things can happen in VM. */
@@ -176,6 +178,43 @@ struct super_block {
 	char *s_options;
 };
 
+struct file_system_type {
+	const char *name;
+	int fs_flags;
+	int (*get_sb) (struct file_system_type *, int,
+		       const char *, void *, struct vfsmount *);
+	void (*kill_sb) (struct super_block *);
+	struct module *owner;
+	struct file_system_type * next;
+	struct list_head fs_supers;
+};
+
+struct file {
+	struct path		f_path;
+#define f_dentry	f_path.dentry
+#define f_vfsmnt	f_path.mnt
+	const struct file_operations	*f_op;
+	unsigned int 		f_flags;
+	loff_t			f_pos;
+	unsigned int		f_uid, f_gid;
+
+	u64			f_version;
+#ifdef CONFIG_SECURITY
+	void			*f_security;
+#endif
+	/* needed for tty driver, and maybe others */
+	void			*private_data;
+
+#ifdef CONFIG_EPOLL
+	/* Used by fs/eventpoll.c to link all the hooks to this file */
+	struct list_head	f_ep_links;
+	spinlock_t		f_ep_lock;
+#endif /* #ifdef CONFIG_EPOLL */
+#ifdef CONFIG_DEBUG_WRITECOUNT
+	unsigned long f_mnt_write_state;
+#endif
+};
+
 /*
  * Inode flags - they have no relation to superblock flags now
  */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
