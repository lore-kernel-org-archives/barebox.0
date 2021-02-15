Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lBbJZ-0005TN-GS
 for barebox@lists.infradead.org; Mon, 15 Feb 2021 10:41:14 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Feb 2021 11:37:01 +0100
Message-Id: <20210215103704.32537-9-a.fatoum@pengutronix.de>
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
Subject: [PATCH 08/12] poller: implement basic Linux-like completion API
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

So far, completions made sense only in one direction: The main thread
can wait for pollers, but the other way around didn't work. With the new
yielding poller support, pollers can wait for completions as well. Wrap
this up using the Linux poller API to make porting threaded code easier.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/completion.h | 61 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 61 insertions(+)
 create mode 100644 include/linux/completion.h

diff --git a/include/linux/completion.h b/include/linux/completion.h
new file mode 100644
index 000000000000..f2db80716c7f
--- /dev/null
+++ b/include/linux/completion.h
@@ -0,0 +1,61 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __LINUX_COMPLETION_H
+#define __LINUX_COMPLETION_H
+
+/*
+ * (C) Copyright 2021 Ahmad Fatoum
+ *
+ * Async wait-for-completion handler data structures.
+ * This allows pollers to wait for main thread and vice versa
+ * Requires poller_yield() support
+ */
+
+#include <poller.h>
+#include <linux/bug.h>
+
+struct completion {
+	unsigned int done;
+};
+
+static inline void init_completion(struct completion *x)
+{
+	x->done = 0;
+}
+
+static inline void reinit_completion(struct completion *x)
+{
+	x->done = 0;
+}
+
+static inline int wait_for_completion_interruptible(struct completion *x)
+{
+	int ret;
+
+	while (!x->done) {
+		ret = poller_reschedule();
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+static inline bool completion_done(struct completion *x)
+{
+	return x->done;
+}
+
+static inline void complete(struct completion *x)
+{
+	x->done = 1;
+}
+
+static inline void __noreturn complete_and_exit(struct completion *x, int ret)
+{
+	BUG_ON(!in_poller());
+	complete(x);
+	for (;;)
+		poller_yield();
+}
+
+#endif
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
