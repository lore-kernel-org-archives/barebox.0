Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmBhQ-0006RM-1u
 for barebox@lists.infradead.org; Fri, 19 Jun 2020 07:44:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 19 Jun 2020 09:44:08 +0200
Message-Id: <20200619074427.17289-3-s.hauer@pengutronix.de>
In-Reply-To: <20200619074427.17289-1-s.hauer@pengutronix.de>
References: <20200619074427.17289-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/21] Add workqueues
To: Barebox List <barebox@lists.infradead.org>
Cc: =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

Some code wants to run arbitrary code in the background, examples are
fastboot and ratp. Currently this is implemented in pollers. The problem
with this is that pollers are executed whenever is_timeout() is called
which may happen anywhere in the code. With this we can never tell which
resources are currently in use when the poller is executed.

This adds a work queue interface which is specifically designed to
trigger doing work in a context where it's safe to run arbitrary commands.

Code in pollers can attach work to a work queue which is at that time
only queued up. A new slice, the command slice, is added which by
default is acquired. It is only released at places where the shell waits
for input. When during this time pollers are executed the queued up
works are done before running the registered pollers.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Makefile    |  1 +
 common/hush.c      |  6 +++++
 common/poller.c    |  9 +++++++
 common/slice.c     | 32 +++++++++++++++++++++++++
 common/startup.c   |  3 +++
 common/workqueue.c | 58 ++++++++++++++++++++++++++++++++++++++++++++++
 include/slice.h    |  5 ++++
 include/work.h     | 29 +++++++++++++++++++++++
 8 files changed, 143 insertions(+)
 create mode 100644 common/workqueue.c
 create mode 100644 include/work.h

diff --git a/common/Makefile b/common/Makefile
index 141109b23a..603edd4f52 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -12,6 +12,7 @@ obj-$(CONFIG_ELF)		+= elf.o
 obj-y				+= restart.o
 obj-y				+= poweroff.o
 obj-y				+= slice.o
+obj-y				+= workqueue.o
 obj-$(CONFIG_MACHINE_ID)	+= machine_id.o
 obj-$(CONFIG_AUTO_COMPLETE)	+= complete.o
 obj-y				+= version.o
diff --git a/common/hush.c b/common/hush.c
index c24b2c7cd2..ec0d5129b7 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -121,6 +121,7 @@
 #include <libbb.h>
 #include <password.h>
 #include <glob.h>
+#include <slice.h>
 #include <getopt.h>
 #include <libfile.h>
 #include <libbb.h>
@@ -460,7 +461,12 @@ static void get_user_input(struct in_str *i)
 	else
 		prompt = CONFIG_PROMPT_HUSH_PS2;
 
+	command_slice_release();
+
 	n = readline(prompt, console_buffer, CONFIG_CBSIZE);
+
+	command_slice_acquire();
+
 	if (n == -1 ) {
 		i->interrupt = 1;
 		n = 0;
diff --git a/common/poller.c b/common/poller.c
index 95f828b439..7b1b92714c 100644
--- a/common/poller.c
+++ b/common/poller.c
@@ -12,6 +12,8 @@
 #include <param.h>
 #include <poller.h>
 #include <clock.h>
+#include <work.h>
+#include <slice.h>
 
 static LIST_HEAD(poller_list);
 static int poller_active;
@@ -110,15 +112,22 @@ int poller_async_unregister(struct poller_async *pa)
 void poller_call(void)
 {
 	struct poller_struct *poller, *tmp;
+	bool run_workqueues = !slice_acquired(&command_slice);
 
 	if (poller_active)
 		return;
 
+	command_slice_acquire();
+
+	if (run_workqueues)
+		wq_do_all_works();
+
 	poller_active = 1;
 
 	list_for_each_entry_safe(poller, tmp, &poller_list, list)
 		poller->func(poller);
 
+	command_slice_release();
 	poller_active = 0;
 }
 
diff --git a/common/slice.c b/common/slice.c
index 085d67604f..62e5d56d89 100644
--- a/common/slice.c
+++ b/common/slice.c
@@ -3,6 +3,7 @@
 #define pr_fmt(fmt) "slice: " fmt
 
 #include <common.h>
+#include <init.h>
 #include <slice.h>
 
 /*
@@ -231,6 +232,37 @@ void slice_exit(struct slice *slice)
 	free(slice->name);
 }
 
+struct slice command_slice;
+
+/**
+ * command_slice_acquire - acquire the command slice
+ *
+ * The command slice is acquired by default. It is only released
+ * at certain points we know it's safe to execute code in the
+ * background, like when the shell is waiting for input.
+ */
+void command_slice_acquire(void)
+{
+	slice_acquire(&command_slice);
+}
+
+/**
+ * command_slice_release - release the command slice
+ */
+void command_slice_release(void)
+{
+	slice_release(&command_slice);
+}
+
+static int command_slice_init(void)
+{
+	slice_init(&command_slice, "idle");
+	slice_acquire(&command_slice);
+	return 0;
+}
+
+pure_initcall(command_slice_init);
+
 #if defined CONFIG_CMD_SLICE
 
 #include <command.h>
diff --git a/common/startup.c b/common/startup.c
index 511675ed55..7425e31882 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -34,6 +34,7 @@
 #include <debug_ll.h>
 #include <fs.h>
 #include <errno.h>
+#include <slice.h>
 #include <linux/stat.h>
 #include <envfs.h>
 #include <magicvar.h>
@@ -268,8 +269,10 @@ enum autoboot_state do_autoboot_countdown(void)
 		break;
 	}
 
+	command_slice_release();
 	ret = console_countdown(global_autoboot_timeout, flags, abortkeys,
 				&outkey);
+	command_slice_acquire();
 
 	if (ret == 0)
 		autoboot_state = AUTOBOOT_BOOT;
diff --git a/common/workqueue.c b/common/workqueue.c
new file mode 100644
index 0000000000..6fdd4e42ea
--- /dev/null
+++ b/common/workqueue.c
@@ -0,0 +1,58 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <common.h>
+#include <work.h>
+
+static void wq_do_pending_work(struct work_queue *wq)
+{
+	struct work_struct *work, *tmp;
+
+	list_for_each_entry_safe(work, tmp, &wq->work, list) {
+		list_del(&work->list);
+		wq->fn(work);
+	}
+}
+
+void wq_cancel_work(struct work_queue *wq)
+{
+	struct work_struct *work, *tmp;
+
+	list_for_each_entry_safe(work, tmp, &wq->work, list) {
+		list_del(&work->list);
+		wq->cancel(work);
+	}
+}
+
+static LIST_HEAD(work_queues);
+
+/**
+ * wq_do_all_works - do all pending work
+ *
+ * This calls all pending work functions
+ */
+void wq_do_all_works(void)
+{
+	struct work_queue *wq;
+
+	list_for_each_entry(wq, &work_queues, list)
+		wq_do_pending_work(wq);
+}
+
+/**
+ * wq_register - register a new work queue
+ * @wq:    The work queue
+ */
+void wq_register(struct work_queue *wq)
+{
+	INIT_LIST_HEAD(&wq->work);
+	list_add_tail(&wq->list, &work_queues);
+}
+
+/**
+ * wq_unregister - unregister a work queue
+ * @wq:    The work queue
+ */
+void wq_unregister(struct work_queue *wq)
+{
+	wq_cancel_work(wq);
+	list_del(&wq->list);
+}
diff --git a/include/slice.h b/include/slice.h
index 5538fc434a..fd753e194b 100644
--- a/include/slice.h
+++ b/include/slice.h
@@ -28,4 +28,9 @@ void slice_exit(struct slice *slice);
 
 void slice_debug_acquired(struct slice *slice);
 
+extern struct slice command_slice;
+
+void command_slice_acquire(void);
+void command_slice_release(void);
+
 #endif /* __SLICE_H */
diff --git a/include/work.h b/include/work.h
new file mode 100644
index 0000000000..e428e821ea
--- /dev/null
+++ b/include/work.h
@@ -0,0 +1,29 @@
+#ifndef __WORK_H
+#define __WORK_H
+
+#include <linux/list.h>
+
+struct work_struct {
+	struct list_head list;
+};
+
+struct work_queue {
+	void (*fn)(struct work_struct *work);
+	void (*cancel)(struct work_struct *work);
+
+	struct list_head list;
+	struct list_head work;
+};
+
+static inline void wq_queue_work(struct work_queue *wq, struct work_struct *work)
+{
+	list_add_tail(&work->list, &wq->work);
+}
+
+void wq_register(struct work_queue *wq);
+void wq_unregister(struct work_queue *wq);
+
+void wq_do_all_works(void);
+void wq_cancel_work(struct work_queue *wq);
+
+#endif /* __WORK_H */
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
