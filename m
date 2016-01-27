Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x242.google.com ([2a00:1450:400c:c09::242])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aORwv-00037u-01
 for barebox@lists.infradead.org; Wed, 27 Jan 2016 15:24:03 +0000
Received: by mail-wm0-x242.google.com with SMTP id l66so912100wml.2
 for <barebox@lists.infradead.org>; Wed, 27 Jan 2016 07:23:41 -0800 (PST)
From: yegorslists@googlemail.com
Date: Wed, 27 Jan 2016 16:22:58 +0100
Message-Id: <1453908178-7106-5-git-send-email-yegorslists@googlemail.com>
In-Reply-To: <1453908178-7106-1-git-send-email-yegorslists@googlemail.com>
References: <1453908178-7106-1-git-send-email-yegorslists@googlemail.com>
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
Subject: [PATCH 5/5] Introduce include/linux/rwsem.h
To: barebox@lists.infradead.org

From: Yegor Yefremov <yegorslists@googlemail.com>

Move semaphore related definitions to its original place.

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 include/linux/barebox-wrapper.h |  8 --------
 include/linux/fs.h              |  2 +-
 include/linux/rwsem.h           | 19 +++++++++++++++++++
 3 files changed, 20 insertions(+), 9 deletions(-)
 create mode 100644 include/linux/rwsem.h

diff --git a/include/linux/barebox-wrapper.h b/include/linux/barebox-wrapper.h
index b52f2f4..15fd726 100644
--- a/include/linux/barebox-wrapper.h
+++ b/include/linux/barebox-wrapper.h
@@ -35,18 +35,10 @@ typedef int     gfp_t;
 #define MODULE_LICENSE(x)
 #define MODULE_ALIAS(x)
 
-struct rw_semaphore { int i; };
-
 #define __user
 #define __init
 #define __exit
 
-#define init_rwsem(...)			do { } while (0)
-#define down_read(...)			do { } while (0)
-#define down_write(...)			do { } while (0)
-#define down_write_trylock(...)		1
-#define up_read(...)			do { } while (0)
-#define up_write(...)			do { } while (0)
 #define kthread_create(...)	__builtin_return_address(0)
 #define kthread_stop(...)	do { } while (0)
 #define wake_up_process(...)	do { } while (0)
diff --git a/include/linux/fs.h b/include/linux/fs.h
index bf0f67b..7e9886a 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -1,7 +1,6 @@
 #ifndef _LINUX_FS_H
 #define _LINUX_FS_H
 
-#include <linux/barebox-wrapper.h>
 #include <linux/list.h>
 #include <linux/time.h>
 #include <linux/mount.h>
@@ -9,6 +8,7 @@
 #include <linux/spinlock.h>
 #include <linux/mutex.h>
 #include <linux/wait.h>
+#include <linux/rwsem.h>
 
 /* Page cache limit. The filesystems should put that into their s_maxbytes
    limits, otherwise bad things can happen in VM. */
diff --git a/include/linux/rwsem.h b/include/linux/rwsem.h
new file mode 100644
index 0000000..5259957
--- /dev/null
+++ b/include/linux/rwsem.h
@@ -0,0 +1,19 @@
+/* rwsem.h: R/W semaphores, public interface
+ *
+ * Written by David Howells (dhowells@redhat.com).
+ * Derived from asm-i386/semaphore.h
+ */
+
+#ifndef _LINUX_RWSEM_H
+#define _LINUX_RWSEM_H
+
+struct rw_semaphore { int i; };
+
+#define init_rwsem(...)			do { } while (0)
+#define down_read(...)			do { } while (0)
+#define down_write(...)			do { } while (0)
+#define down_write_trylock(...)		1
+#define up_read(...)			do { } while (0)
+#define up_write(...)			do { } while (0)
+
+#endif /* _LINUX_RWSEM_H */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
