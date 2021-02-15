Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lBbKL-0005qc-8t
 for barebox@lists.infradead.org; Mon, 15 Feb 2021 10:42:02 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Feb 2021 11:37:02 +0100
Message-Id: <20210215103704.32537-10-a.fatoum@pengutronix.de>
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
Subject: [PATCH 09/12] include: add kthread wrappers for pollers
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

With the new fancy yielding poller support, we can properly represent
kernel threads in barebox. Do so.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/kthread.h | 72 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 72 insertions(+)
 create mode 100644 include/linux/kthread.h

diff --git a/include/linux/kthread.h b/include/linux/kthread.h
new file mode 100644
index 000000000000..17b6de9cf168
--- /dev/null
+++ b/include/linux/kthread.h
@@ -0,0 +1,72 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LINUX_KTHREAD_H
+#define _LINUX_KTHREAD_H
+/* Wrapper around pollers to ease porting from Linux */
+
+#include <linux/kernel.h>
+#include <linux/err.h>
+#include <linux/string.h>
+#include <poller.h>
+
+struct task_struct {
+	struct poller_struct poller;
+	int (*threadfn)(void *data);
+	void *data;
+};
+
+static inline void kthread_poller(struct poller_struct *poller)
+{
+	struct task_struct *task = container_of(poller, struct task_struct, poller);
+	task->threadfn(task->data);
+}
+
+static inline struct task_struct *kthread_create(int (*threadfn)(void *data),
+						 void *data, const char *name)
+{
+	struct task_struct *task;
+
+	task = calloc(sizeof(*task), 1);
+	if (!task)
+		return ERR_PTR(-ENOMEM);
+
+	task->threadfn = threadfn;
+	task->data = data;
+	task->poller.func = kthread_poller;
+	task->poller.name = strdup(name);
+
+	return task;
+}
+
+static inline int wake_up_process(struct task_struct *task)
+{
+	return poller_register(&task->poller, task->poller.name);
+}
+
+/**
+ * kthread_run - create and wake a thread.
+ * @threadfn: the function to run until signal_pending(current).
+ * @data: data ptr for @threadfn.
+ * @name: name for the thread.
+ *
+ * Description: Convenient wrapper for kthread_create() followed by
+ * wake_up_process().  Returns the kthread or ERR_PTR(-ENOMEM).
+ */
+#define kthread_run(threadfn, data, name)				   \
+({									   \
+	struct task_struct *__k						   \
+		= kthread_create(threadfn, data, name);			   \
+	if (!IS_ERR(__k))						   \
+		wake_up_process(__k);					   \
+	__k;								   \
+})
+
+static inline void free_kthread_struct(struct task_struct *k)
+{
+	if (!k)
+		return;
+
+	poller_unregister(&k->poller);
+	free(k);
+}
+
+#endif /* _LINUX_KTHREAD_H */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
