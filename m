Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V6gz9-0005cM-2E
 for barebox@lists.infradead.org; Tue, 06 Aug 2013 13:07:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  6 Aug 2013 15:07:06 +0200
Message-Id: <1375794428-29577-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1375794428-29577-1-git-send-email-s.hauer@pengutronix.de>
References: <1375794428-29577-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/8] extend barebox wrapper header
To: barebox@lists.infradead.org

Add empty definitions for mutexes, spinlocks and other stuff from
the kernel to make it easier to reuse code from the kernel.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/barebox-wrapper.h | 32 ++++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/include/linux/barebox-wrapper.h b/include/linux/barebox-wrapper.h
index 1ba4e32..753fb52 100644
--- a/include/linux/barebox-wrapper.h
+++ b/include/linux/barebox-wrapper.h
@@ -34,4 +34,36 @@ typedef int     gfp_t;
 #define MODULE_DESCRIPTION(x)
 #define MODULE_LICENSE(x)
 
+typedef int   spinlock_t;
+#define spin_lock_init(...)
+#define spin_lock(...)
+#define spin_unlock(...)
+
+#define mutex_init(...)
+#define mutex_lock(...)
+#define mutex_unlock(...)
+struct mutex { int i; };
+
+struct rw_semaphore { int i; };
+
+#define __user
+#define __init
+#define __exit
+
+#define init_rwsem(...)			do { } while (0)
+#define down_read(...)			do { } while (0)
+#define down_write(...)			do { } while (0)
+#define down_write_trylock(...)		1
+#define up_read(...)			do { } while (0)
+#define up_write(...)			do { } while (0)
+#define kthread_create(...)	__builtin_return_address(0)
+#define kthread_stop(...)	do { } while (0)
+#define wake_up_process(...)	do { } while (0)
+
+typedef int	wait_queue_head_t;
+
+#define cond_resched()			do { } while (0)
+
+#define init_waitqueue_head(...)	do { } while (0)
+
 #endif /* __INCLUDE_LINUX_BAREBOX_WRAPPER_H */
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
