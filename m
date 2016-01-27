Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x241.google.com ([2a00:1450:400c:c09::241])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aOOg0-00020H-Rj
 for barebox@lists.infradead.org; Wed, 27 Jan 2016 11:54:23 +0000
Received: by mail-wm0-x241.google.com with SMTP id r129so2896515wmr.0
 for <barebox@lists.infradead.org>; Wed, 27 Jan 2016 03:54:04 -0800 (PST)
From: yegorslists@googlemail.com
Date: Wed, 27 Jan 2016 12:53:08 +0100
Message-Id: <1453895589-20941-7-git-send-email-yegorslists@googlemail.com>
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
Subject: [PATCH 7/8] fs: ubifs: move path definition to include/linux/path.h
To: barebox@lists.infradead.org

From: Yegor Yefremov <yegorslists@googlemail.com>

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 fs/ubifs/ubifs.h     |  6 +-----
 include/linux/path.h | 12 ++++++++++++
 2 files changed, 13 insertions(+), 5 deletions(-)
 create mode 100644 include/linux/path.h

diff --git a/fs/ubifs/ubifs.h b/fs/ubifs/ubifs.h
index 8f362ed..cfd37f2 100644
--- a/fs/ubifs/ubifs.h
+++ b/fs/ubifs/ubifs.h
@@ -39,6 +39,7 @@
 #include <linux/stat.h>
 #include <linux/dcache.h>
 #include <linux/mount.h>
+#include <linux/path.h>
 #include <linux/ctype.h>
 #include <linux/math64.h>
 #include <linux/rbtree.h>
@@ -92,11 +93,6 @@ struct file_system_type {
 	struct list_head fs_supers;
 };
 
-struct path {
-	struct vfsmount *mnt;
-	struct dentry *dentry;
-};
-
 struct file {
 	struct path		f_path;
 #define f_dentry	f_path.dentry
diff --git a/include/linux/path.h b/include/linux/path.h
new file mode 100644
index 0000000..cbebdc5
--- /dev/null
+++ b/include/linux/path.h
@@ -0,0 +1,12 @@
+#ifndef _LINUX_PATH_H
+#define _LINUX_PATH_H
+
+struct dentry;
+struct vfsmount;
+
+struct path {
+	struct vfsmount *mnt;
+	struct dentry *dentry;
+};
+
+#endif  /* _LINUX_PATH_H */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
