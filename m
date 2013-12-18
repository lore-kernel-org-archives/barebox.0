Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VtJMQ-0001l1-PP
 for barebox@lists.infradead.org; Wed, 18 Dec 2013 15:48:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Dec 2013 16:48:10 +0100
Message-Id: <1387381690-6088-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] poller: Allow to call functions asynchronously
To: barebox@lists.infradead.org

Sometimes execution of a function has to be delayed, for example
when a backlight can only be turned on when the picture has stabilized.
To help in such situations add a convenience function around the poller
stuff to call a function after a delay.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/poller.c  | 58 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/poller.h | 14 +++++++++++++-
 2 files changed, 71 insertions(+), 1 deletion(-)

diff --git a/common/poller.c b/common/poller.c
index 0583a53..496636d 100644
--- a/common/poller.c
+++ b/common/poller.c
@@ -11,24 +11,82 @@
 #include <module.h>
 #include <param.h>
 #include <poller.h>
+#include <clock.h>
 
 static LIST_HEAD(poller_list);
 static int poller_active;
 
 int poller_register(struct poller_struct *poller)
 {
+	if (poller->registered)
+		return -EBUSY;
+
 	list_add_tail(&poller->list, &poller_list);
+	poller->registered = 1;
 
 	return 0;
 }
 
 int poller_unregister(struct poller_struct *poller)
 {
+	if (!poller->registered)
+		return -ENODEV;
+
 	list_del(&poller->list);
+	poller->registered = 0;
 
 	return 0;
 }
 
+static void poller_async_callback(struct poller_struct *poller)
+{
+	struct poller_async *pa = container_of(poller, struct poller_async, poller);
+
+	if (get_time_ns() < pa->end)
+		return;
+
+	pa->fn(pa->ctx);
+	pa->fn = NULL;
+	poller_unregister(&pa->poller);
+}
+
+/*
+ * Cancel an outstanding asynchronous function call
+ *
+ * @pa		the poller that has been scheduled
+ *
+ * Cancel an outstanding function call. Returns 0 if the call
+ * has actually been cancelled or -ENODEV when the call wasn't
+ * scheduled.
+ *
+ */
+int poller_async_cancel(struct poller_async *pa)
+{
+	return poller_unregister(&pa->poller);
+}
+
+/*
+ * Call a function asynchronously
+ *
+ * @pa		the poller to be used
+ * @delay	The delay in nanoseconds
+ * @fn		The function to call
+ * @ctx		context pointer passed to the function
+ *
+ * This calls the passed function after a delay of delay_ns. Returns
+ * a pointer which can be used as a cookie to cancel a scheduled call.
+ */
+int poller_call_async(struct poller_async *pa, uint64_t delay_ns,
+		void (*fn)(void *), void *ctx)
+{
+	pa->ctx = ctx;
+	pa->poller.func = poller_async_callback;
+	pa->end = get_time_ns() + delay_ns;
+	pa->fn = fn;
+
+	return poller_register(&pa->poller);
+}
+
 void poller_call(void)
 {
 	struct poller_struct *poller, *tmp;
diff --git a/include/poller.h b/include/poller.h
index dc98155..cda5b57 100644
--- a/include/poller.h
+++ b/include/poller.h
@@ -12,13 +12,25 @@
 
 struct poller_struct {
 	void (*func)(struct poller_struct *poller);
-
+	int registered;
 	struct list_head list;
 };
 
 int poller_register(struct poller_struct *poller);
 int poller_unregister(struct poller_struct *poller);
 
+struct poller_async;
+
+struct poller_async {
+	struct poller_struct poller;
+	void (*fn)(void *);
+	void *ctx;
+	uint64_t end;
+};
+
+int poller_call_async(struct poller_async *pa, uint64_t delay_ns,
+		void (*fn)(void *), void *ctx);
+int poller_async_cancel(struct poller_async *pa);
 
 #ifdef CONFIG_POLLER
 void poller_call(void);
-- 
1.8.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
