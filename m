Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lBbJZ-0005TO-GU
 for barebox@lists.infradead.org; Mon, 15 Feb 2021 10:41:15 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Feb 2021 11:36:55 +0100
Message-Id: <20210215103704.32537-3-a.fatoum@pengutronix.de>
In-Reply-To: <20210215103704.32537-1-a.fatoum@pengutronix.de>
References: <20210215103704.32537-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 02/12] poller: run pollers as proper coroutines if
 architecture supports it
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

barebox pollers were so far very limited coroutines that only yield at
the end of the function. Architectures which select CONFIG_HAS_ARCH_SJLJ
can leverage the new coroutine support to allow pollers to yield at any
point of their execution. These pollers are suspended and will be
resumed the next time poller_call() runs. This considerably eases
porting of threaded code, as each poller becomes a thread and
poller_call() becomes the scheduler.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig   | 11 ++++++++
 common/poller.c  | 70 ++++++++++++++++++++++++++++++++++++++++++------
 include/poller.h | 16 ++++++++++-
 include/slice.h  |  6 ++---
 4 files changed, 91 insertions(+), 12 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index d78aad1deb6b..f3158d914800 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -960,6 +960,17 @@ config BAREBOXCRC32_TARGET
 
 config POLLER
 	bool "generic polling infrastructure"
+	help
+	 Pollers are routines that are called within delay loops and the console
+	 idle to asynchronously execute actions, like checking for link up or
+	 feeding a watchdog.
+
+config POLLER_YIELD
+	bool "Yielding poller support (coroutines)"
+	depends on HAS_ARCH_SJLJ
+	help
+	  Pollers may call poller_yield(), which saves context of the current
+	  poller for later resumption. This is often called green threads.
 
 config STATE
 	bool "generic state infrastructure"
diff --git a/common/poller.c b/common/poller.c
index 61da5698d225..592dc0a11a39 100644
--- a/common/poller.c
+++ b/common/poller.c
@@ -12,9 +12,12 @@
 #include <clock.h>
 #include <work.h>
 #include <slice.h>
+#include <coroutine.h>
 
 static LIST_HEAD(poller_list);
-int poller_active;
+struct poller_struct *active_poller;
+
+static __coroutine poller_thread(void *data);
 
 int poller_register(struct poller_struct *poller, const char *name)
 {
@@ -22,6 +25,10 @@ int poller_register(struct poller_struct *poller, const char *name)
 		return -EBUSY;
 
 	poller->name = xstrdup(name);
+
+	if (IS_ENABLED(CONFIG_POLLER_YIELD))
+		poller->coroutine = coroutine_alloc(poller_thread, poller);
+
 	list_add_tail(&poller->list, &poller_list);
 	poller->registered = 1;
 
@@ -36,6 +43,7 @@ int poller_unregister(struct poller_struct *poller)
 
 	list_del(&poller->list);
 	poller->registered = 0;
+	coroutine_free(poller->coroutine);
 	free(poller->name);
 
 	return 0;
@@ -78,7 +86,6 @@ int poller_async_cancel(struct poller_async *pa)
  * @pa		the poller to be used
  * @delay	The delay in nanoseconds
  * @fn		The function to call
- * @ctx		context pointer passed to the function
  *
  * This calls the passed function after a delay of delay_ns. Returns
  * a pointer which can be used as a cookie to cancel a scheduled call.
@@ -107,12 +114,59 @@ int poller_async_unregister(struct poller_async *pa)
 	return poller_unregister(&pa->poller);
 }
 
+static void __poller_yield(struct poller_struct *poller)
+{
+	if (WARN_ON(!poller))
+		return;
+
+	coroutine_yield(poller->coroutine);
+}
+
+#ifdef CONFIG_POLLER_YIELD
+/* No stub for this function. That way we catch wrong Kconfig dependencies
+ * that enable code that uses poller_yield() unconditionally
+ */
+void poller_yield(void)
+{
+	return __poller_yield(active_poller);
+}
+#endif
+
+int poller_reschedule(void)
+{
+	if (!in_poller())
+		return ctrlc() ? -ERESTARTSYS : 0;
+
+	__poller_yield(active_poller);
+	return 0;
+}
+
+static __coroutine poller_thread(void *data)
+{
+	struct poller_struct *poller = data;
+
+	for (;;) {
+		poller->func(poller);
+		__poller_yield(poller);
+	}
+}
+
+static void poller_schedule(struct poller_struct *poller)
+{
+	if (!IS_ENABLED(CONFIG_POLLER_YIELD)) {
+		poller->func(poller);
+		return;
+	}
+
+	coroutine_schedule(poller->coroutine);
+}
+
 void poller_call(void)
 {
 	struct poller_struct *poller, *tmp;
 	bool run_workqueues = !slice_acquired(&command_slice);
 
-	if (poller_active)
+	if (active_poller)
 		return;
 
 	command_slice_acquire();
@@ -120,13 +174,13 @@ void poller_call(void)
 	if (run_workqueues)
 		wq_do_all_works();
 
-	poller_active = 1;
-
-	list_for_each_entry_safe(poller, tmp, &poller_list, list)
-		poller->func(poller);
+	list_for_each_entry_safe(poller, tmp, &poller_list, list) {
+		active_poller = poller;
+		poller_schedule(poller);
+	}
 
+	active_poller = NULL;
 	command_slice_release();
-	poller_active = 0;
 }
 
 #if defined CONFIG_CMD_POLLER
diff --git a/include/poller.h b/include/poller.h
index db773265b2f6..ac3c5865ba2d 100644
--- a/include/poller.h
+++ b/include/poller.h
@@ -8,13 +8,18 @@
 
 #include <linux/list.h>
 
+struct coroutine;
+
 struct poller_struct {
 	void (*func)(struct poller_struct *poller);
 	int registered;
 	struct list_head list;
 	char *name;
+	struct coroutine *coroutine;
 };
 
+extern struct poller_struct *active_poller;
+
 int poller_register(struct poller_struct *poller, const char *name);
 int poller_unregister(struct poller_struct *poller);
 
@@ -39,12 +44,21 @@ static inline bool poller_async_active(struct poller_async *pa)
 	return pa->active;
 }
 
+static inline bool in_poller(void)
+{
+	return active_poller != NULL;
+}
+
 #ifdef CONFIG_POLLER
 void poller_call(void);
 #else
 static inline void poller_call(void)
 {
 }
-#endif	/* CONFIG_POLLER */
+#endif /* CONFIG_POLLER */
+
+/* Only for use when CONFIG_POLLER_YIELD=y */
+void poller_yield(void);
+int poller_reschedule(void);
 
 #endif	/* !POLLER_H */
diff --git a/include/slice.h b/include/slice.h
index b2d65b80cd69..d09d17924fb4 100644
--- a/include/slice.h
+++ b/include/slice.h
@@ -1,6 +1,8 @@
 #ifndef __SLICE_H
 #define __SLICE_H
 
+#include <poller.h>
+
 enum slice_action {
 	SLICE_ACQUIRE = 1,
 	SLICE_RELEASE = -1,
@@ -33,11 +35,9 @@ extern struct slice command_slice;
 void command_slice_acquire(void);
 void command_slice_release(void);
 
-extern int poller_active;
-
 #ifdef CONFIG_POLLER
 #define assert_command_context() ({    \
-	WARN_ONCE(poller_active, "%s called in poller\n", __func__); \
+	WARN_ONCE(in_poller(), "%s called in poller\n", __func__); \
 })
 #else
 #define assert_command_context() do { } while (0)
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
