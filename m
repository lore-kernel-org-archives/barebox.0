Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x241.google.com ([2a00:1450:400c:c09::241])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aORwu-00037Y-1e
 for barebox@lists.infradead.org; Wed, 27 Jan 2016 15:24:03 +0000
Received: by mail-wm0-x241.google.com with SMTP id r129so3984041wmr.0
 for <barebox@lists.infradead.org>; Wed, 27 Jan 2016 07:23:39 -0800 (PST)
From: yegorslists@googlemail.com
Date: Wed, 27 Jan 2016 16:22:57 +0100
Message-Id: <1453908178-7106-4-git-send-email-yegorslists@googlemail.com>
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
Subject: [PATCH 4/5] Introduce include/linux/wait.h
To: barebox@lists.infradead.org

From: Yegor Yefremov <yegorslists@googlemail.com>

Move Linux wait queue related definitions to its original place.

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 drivers/mtd/mtdconcat.c         |  1 +
 include/linux/barebox-wrapper.h |  4 ----
 include/linux/fs.h              |  1 +
 include/linux/wait.h            | 11 +++++++++++
 4 files changed, 13 insertions(+), 4 deletions(-)
 create mode 100644 include/linux/wait.h

diff --git a/drivers/mtd/mtdconcat.c b/drivers/mtd/mtdconcat.c
index 837614f..6395b2f 100644
--- a/drivers/mtd/mtdconcat.c
+++ b/drivers/mtd/mtdconcat.c
@@ -23,6 +23,7 @@
  */
 #include <common.h>
 #include <malloc.h>
+#include <linux/wait.h>
 #include <linux/mtd/mtd.h>
 #include <linux/mtd/concat.h>
 
diff --git a/include/linux/barebox-wrapper.h b/include/linux/barebox-wrapper.h
index 49439fa..b52f2f4 100644
--- a/include/linux/barebox-wrapper.h
+++ b/include/linux/barebox-wrapper.h
@@ -51,10 +51,6 @@ struct rw_semaphore { int i; };
 #define kthread_stop(...)	do { } while (0)
 #define wake_up_process(...)	do { } while (0)
 
-typedef int	wait_queue_head_t;
-
-#define init_waitqueue_head(...)	do { } while (0)
-
 typedef int irqreturn_t;
 #define IRQ_NONE 0
 #define IRQ_HANDLED 0
diff --git a/include/linux/fs.h b/include/linux/fs.h
index 89fbaea..bf0f67b 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -8,6 +8,7 @@
 #include <linux/path.h>
 #include <linux/spinlock.h>
 #include <linux/mutex.h>
+#include <linux/wait.h>
 
 /* Page cache limit. The filesystems should put that into their s_maxbytes
    limits, otherwise bad things can happen in VM. */
diff --git a/include/linux/wait.h b/include/linux/wait.h
new file mode 100644
index 0000000..e2df887
--- /dev/null
+++ b/include/linux/wait.h
@@ -0,0 +1,11 @@
+#ifndef _LINUX_WAIT_H
+#define _LINUX_WAIT_H
+/*
+ * Linux wait queue related types and methods
+ */
+
+typedef int	wait_queue_head_t;
+
+#define init_waitqueue_head(...)	do { } while (0)
+
+#endif /* _LINUX_WAIT_H */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
