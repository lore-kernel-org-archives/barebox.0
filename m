Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x244.google.com ([2a00:1450:400c:c09::244])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aORwh-00033T-Bc
 for barebox@lists.infradead.org; Wed, 27 Jan 2016 15:23:48 +0000
Received: by mail-wm0-x244.google.com with SMTP id r129so3982924wmr.0
 for <barebox@lists.infradead.org>; Wed, 27 Jan 2016 07:23:26 -0800 (PST)
From: yegorslists@googlemail.com
Date: Wed, 27 Jan 2016 16:22:54 +0100
Message-Id: <1453908178-7106-1-git-send-email-yegorslists@googlemail.com>
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
Subject: [PATCH 1/5] Introduce include/linux/sched.h
To: barebox@lists.infradead.org

From: Yegor Yefremov <yegorslists@googlemail.com>

Move cond_resched() from barebox-wrapper.h to its original
place.

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 fs/ubifs/ubifs.h                | 1 +
 include/linux/barebox-wrapper.h | 2 --
 include/linux/sched.h           | 6 ++++++
 3 files changed, 7 insertions(+), 2 deletions(-)
 create mode 100644 include/linux/sched.h

diff --git a/fs/ubifs/ubifs.h b/fs/ubifs/ubifs.h
index 50ac1c4..a4f8523 100644
--- a/fs/ubifs/ubifs.h
+++ b/fs/ubifs/ubifs.h
@@ -40,6 +40,7 @@
 #include <linux/dcache.h>
 #include <linux/mount.h>
 #include <linux/path.h>
+#include <linux/sched.h>
 #include <linux/ctype.h>
 #include <linux/math64.h>
 #include <linux/rbtree.h>
diff --git a/include/linux/barebox-wrapper.h b/include/linux/barebox-wrapper.h
index 5fe7971..3433631 100644
--- a/include/linux/barebox-wrapper.h
+++ b/include/linux/barebox-wrapper.h
@@ -65,8 +65,6 @@ struct rw_semaphore { int i; };
 
 typedef int	wait_queue_head_t;
 
-#define cond_resched()			do { } while (0)
-
 #define init_waitqueue_head(...)	do { } while (0)
 
 typedef int irqreturn_t;
diff --git a/include/linux/sched.h b/include/linux/sched.h
new file mode 100644
index 0000000..3375a09
--- /dev/null
+++ b/include/linux/sched.h
@@ -0,0 +1,6 @@
+#ifndef _LINUX_SCHED_H
+#define _LINUX_SCHED_H
+
+#define cond_resched()			do { } while (0)
+
+#endif
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
