Delivery-date: Wed, 10 Mar 2021 09:50:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJuY8-0001Cr-QD
	for lore@lore.pengutronix.de; Wed, 10 Mar 2021 09:50:36 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJuY7-0002ai-5T
	for lore@pengutronix.de; Wed, 10 Mar 2021 09:50:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Qisvz+rbFNjg3k71A1f96rLHVqk/Vrfj0ernR+PSzNM=; b=Psu2LU826IG6lZjQ1BwgBhj6B
	/GKWjzzL1wWbc9a/zFwQYDvxXaj5ZECk+Xzw8BokhTWlMplC6Ju/2EI1kQRRW55uInuD4VIOVcHoB
	E5nUTpMPOBCG6+8/7MM2Ev5Wtf8F8pS+lBpcfjEGEpNtIaTbB9HsW/Oah0zRv/oUOhQJoLPjvAWLu
	NiELkWVoV4OUjxhB5Yg+/EB1U/h59Pez9KQHGytVdLT++gD9XRraobAgpbIPygGWNJyGEU83rixuQ
	3L0s+qztTRhz7CiBmrcWTDWAHNFYc8Z4I1+xT8qOe8oKT/H7MQWZZdMff76hPNstkNMxyLaElnJzh
	BJstUgNKQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJuWn-006Lfq-Rh; Wed, 10 Mar 2021 08:49:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJuVk-006LL9-0k
 for barebox@lists.infradead.org; Wed, 10 Mar 2021 08:48:13 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lJuVj-0001Tj-HA; Wed, 10 Mar 2021 09:48:07 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lJuVd-0001zm-M1; Wed, 10 Mar 2021 09:48:01 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>, Peter Korsgaard <peter@korsgaard.com>,
 Sascha Hauer <sha@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 10 Mar 2021 09:47:58 +0100
Message-Id: <20210310084800.3584-15-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210310084800.3584-1-a.fatoum@pengutronix.de>
References: <20210310084800.3584-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_084808_700898_B91017C9 
X-CRM114-Status: GOOD (  35.70  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 14/16] common: introduce bthreads,
 co-operative barebox threads
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With the new setjmp/longjmp/initjmp support, we have all the
architecture support in place to have suspendable green
threads in barebox. These are expected to replace pollers and
workqueues. For now we still have a differentiation between
the main and secondary threads. The main thread is allowed
I/O access unconditionally. If it's in a delay loop, a secondary
thread running needs to be wary of not entering the same driver
and doing hardware manipulation. We already have slices as
mechanism to guard against this, but they aren't used as widely
as needed.

Preferably, in the end, threads will automatically yield until
they can claim a resource (i.e. lock a mutex). Until we are there,
take the same care when using bthreads as with pollers.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/devel/background-execution.rst |  37 +++-
 common/Kconfig                               |   8 +
 common/Makefile                              |   1 +
 common/bthread.c                             | 214 +++++++++++++++++++
 include/bthread.h                            |  53 +++++
 include/poller.h                             |   2 +
 include/sched.h                              |   3 +
 include/slice.h                              |  17 +-
 8 files changed, 323 insertions(+), 12 deletions(-)
 create mode 100644 common/bthread.c
 create mode 100644 include/bthread.h

diff --git a/Documentation/devel/background-execution.rst b/Documentation/devel/background-execution.rst
index eadad9d898d0..fa4d23e6d271 100644
--- a/Documentation/devel/background-execution.rst
+++ b/Documentation/devel/background-execution.rst
@@ -1,10 +1,10 @@
 Background execution in barebox
 ===============================
 
-barebox is single-threaded and doesn't support interrupts. Nevertheless it is
-sometimes desired to execute code "in the background", like for example polling
-for completion of transfers or to regularly blink a heartbeat LED.  For these
-scenarios barebox offers the techniques described below.
+barebox does not use interrupts to avoid the associated increase in complexity.
+Nevertheless it is sometimes desired to execute code "in the background",
+like for example polling for completion of transfers or to regularly blink a
+heartbeat LED. For these scenarios barebox offers the techniques described below.
 
 Pollers
 -------
@@ -71,6 +71,35 @@ actually queueing a work item on a work queue. This can be called from poller
 code. Usually a work item is allocated by the poller and then freed either in
 ``work_queue.fn()`` or in ``work_queue.cancel()``.
 
+bthreads
+--------
+
+barebox threads are co-operative green threads, which are scheduled whenever
+``is_timeout()`` is called.  This has a few implications. First of all,
+bthreads are not scheduled when ``is_timeout()`` is not called.
+For this and other reasons, loops polling for hardware events should always
+use a timeout, which is best implemented with ``is_timeout()``.
+Another thing to remember is that bthreads can be scheduled anywhere
+in the middle of other device accesses whenever ``is_timeout()`` is
+called. Care must be taken that a green thread doesn't access the very same device
+again itself. See "slices" below on how devices can safely be accessed from
+bthreads.
+
+The bthread interface is declared in ``include/bthread.h``.
+``bthread_create()`` is used to allocate a bthread control block along with
+its stack. ``bthread_wake()`` can be used to add it into the run queue.
+From this moment on and until the thread terminates, the thread will be
+switched to regularly as long as someone calls ``is_timeout()``.
+bthreads are allowed to call ``is_timeout()``, which will arrange for
+other threads to execute.
+
+barebox threads are planned to replace previous infrastructure, pollers
+and workqueues. Poller like behavior can be easily achieved by looping
+and yielding on every iteration. There's ``bthread_should_stop()``, which
+can be used as condition for continuing the loop. Workqueues could be
+replaced along the same line, but with mutexes protecting underlying device
+access.
+
 Slices
 ------
 
diff --git a/common/Kconfig b/common/Kconfig
index c0ff57bcdba4..b1f4543e03cd 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -960,6 +960,14 @@ config BAREBOXCRC32_TARGET
 config POLLER
 	bool "generic polling infrastructure"
 
+config BTHREAD
+	bool "barebox co-operative (green) thread infrastructure"
+	depends on HAS_ARCH_SJLJ
+	help
+	 barebox threads are lightweight cooperative (green) threads that are
+	 scheduled within delay loops and the console idle to asynchronously
+	 execute actions, like checking for link up or feeding a watchdog.
+
 config STATE
 	bool "generic state infrastructure"
 	select CRC32
diff --git a/common/Makefile b/common/Makefile
index 0e0ba384c9b5..c0b45d263e5b 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -50,6 +50,7 @@ obj-$(CONFIG_OFTREE)		+= oftree.o
 obj-$(CONFIG_PARTITION_DISK)	+= partitions.o partitions/
 obj-$(CONFIG_PASSWORD)		+= password.o
 obj-$(CONFIG_POLLER)		+= poller.o
+obj-$(CONFIG_BTHREAD)		+= bthread.o
 obj-$(CONFIG_RESET_SOURCE)	+= reset_source.o
 obj-$(CONFIG_SHELL_HUSH)	+= hush.o
 obj-$(CONFIG_SHELL_SIMPLE)	+= parser.o
diff --git a/common/bthread.c b/common/bthread.c
new file mode 100644
index 000000000000..df8031266d55
--- /dev/null
+++ b/common/bthread.c
@@ -0,0 +1,214 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2021 Ahmad Fatoum, Pengutronix
+ *
+ * ASAN bookkeeping based on Qemu coroutine-ucontext.c
+ */
+
+/* To avoid future issues; fortify doesn't like longjmp up the call stack */
+#ifndef __NO_FORTIFY
+#define __NO_FORTIFY
+#endif
+
+#include <common.h>
+#include <bthread.h>
+#include <asm/setjmp.h>
+#include <linux/overflow.h>
+
+static struct bthread {
+	int (*threadfn)(void *);
+	union {
+		void *data;
+		int ret;
+	};
+	char *name;
+	jmp_buf jmp_buf;
+	void *stack;
+	u32 stack_size;
+	struct list_head list;
+#ifdef CONFIG_ASAN
+	void *fake_stack_save;
+#endif
+	u16 awake :1;
+	u16 should_stop :1;
+	u16 has_stopped :1;
+	u8 stack_space[] __aligned(16);
+} main_thread = {
+	.list = LIST_HEAD_INIT(main_thread.list),
+	.name = "main",
+};
+
+struct bthread *current = &main_thread;
+
+/*
+ * When using ASAN, it needs to be told when we switch stacks.
+ */
+static void start_switch_fiber(struct bthread *, bool terminate_old);
+static void finish_switch_fiber(struct bthread *);
+
+static void __noreturn bthread_trampoline(void)
+{
+	finish_switch_fiber(current);
+	bthread_reschedule();
+
+	current->ret = current->threadfn(current->data);
+
+	bthread_suspend(current);
+	current->has_stopped = true;
+
+	current = &main_thread;
+	start_switch_fiber(current, true);
+	longjmp(current->jmp_buf, 1);
+}
+
+bool bthread_is_main(struct bthread *bthread)
+{
+	return bthread == &main_thread;
+}
+
+void bthread_free(struct bthread *bthread)
+{
+	free(bthread->name);
+	free(bthread);
+}
+
+const char *bthread_name(struct bthread *bthread)
+{
+	return bthread->name;
+}
+
+struct bthread *bthread_create(int (*threadfn)(void *), void *data,
+			       const char *namefmt, ...)
+{
+	struct bthread *bthread = NULL;
+	va_list ap;
+	int len;
+
+	bthread = malloc(struct_size(bthread, stack_space, CONFIG_STACK_SIZE));
+	if (!bthread)
+		goto err;
+
+	memset(bthread, 0, sizeof(*bthread));
+
+	bthread->stack = bthread->stack_space;
+	bthread->stack_size = CONFIG_STACK_SIZE;
+	bthread->threadfn = threadfn;
+	bthread->data = data;
+
+	va_start(ap, namefmt);
+	len = vasprintf(&bthread->name, namefmt, ap);
+	va_end(ap);
+
+	if (len < 0)
+		goto err;
+
+	/* set up bthread context with the new stack */
+	initjmp(bthread->jmp_buf, bthread_trampoline,
+		bthread->stack + CONFIG_STACK_SIZE);
+
+	return bthread;
+err:
+	free(bthread);
+	return NULL;
+}
+
+void bthread_wake(struct bthread *bthread)
+{
+	if (bthread->awake)
+		return;
+	list_add_tail(&bthread->list, &current->list);
+	bthread->awake = true;
+}
+
+void bthread_suspend(struct bthread *bthread)
+{
+	if (!bthread->awake)
+		return;
+	bthread->awake = false;
+	list_del(&bthread->list);
+}
+
+int bthread_stop(struct bthread *bthread)
+{
+	bthread->should_stop = true;
+
+	while (!bthread->has_stopped)
+		bthread_reschedule();
+
+	return bthread->ret;
+}
+
+int bthread_should_stop(void)
+{
+	if (bthread_is_main(current))
+		return -EINTR;
+	bthread_reschedule();
+	return current->should_stop;
+}
+
+void bthread_info(void)
+{
+	struct bthread *bthread;
+
+	printf("Registered barebox threads:\n%s\n", current->name);
+
+	list_for_each_entry(bthread, &current->list, list)
+		printf("%s\n", bthread->name);
+}
+
+void bthread_reschedule(void)
+{
+	bthread_schedule(list_next_entry(current, list));
+}
+
+void bthread_schedule(struct bthread *to)
+{
+	struct bthread *from = current;
+	int ret;
+
+	start_switch_fiber(to, false);
+
+	ret = setjmp(from->jmp_buf);
+	if (ret == 0) {
+		current = to;
+		longjmp(to->jmp_buf, 1);
+	}
+
+	finish_switch_fiber(from);
+}
+
+#ifdef CONFIG_ASAN
+
+void __sanitizer_start_switch_fiber(void **fake_stack_save, const void *bottom, size_t size);
+void __sanitizer_finish_switch_fiber(void *fake_stack_save, const void **bottom_old, size_t *size_old);
+
+static void finish_switch_fiber(struct bthread *bthread)
+{
+	const void *bottom_old;
+	size_t size_old;
+
+	__sanitizer_finish_switch_fiber(bthread->fake_stack_save, &bottom_old, &size_old);
+
+	if (!main_thread.stack) {
+		main_thread.stack = (void *)bottom_old;
+		main_thread.stack_size = size_old;
+	}
+}
+
+static void start_switch_fiber(struct bthread *to, bool terminate_old)
+{
+	__sanitizer_start_switch_fiber(terminate_old ? &to->fake_stack_save : NULL,
+				       to->stack, to->stack_size);
+}
+
+#else
+
+static void finish_switch_fiber(struct bthread *bthread)
+{
+}
+
+static void start_switch_fiber(struct bthread *to, bool terminate_old)
+{
+}
+
+#endif
diff --git a/include/bthread.h b/include/bthread.h
new file mode 100644
index 000000000000..e3871fb11555
--- /dev/null
+++ b/include/bthread.h
@@ -0,0 +1,53 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2021 Ahmad Fatoum, Pengutronix
+ */
+
+#ifndef __BTHREAD_H_
+#define __BTHREAD_H_
+
+#include <linux/stddef.h>
+
+struct bthread;
+
+extern struct bthread *current;
+
+struct bthread *bthread_create(int (*threadfn)(void *), void *data, const char *namefmt, ...);
+void bthread_free(struct bthread *bthread);
+
+void bthread_schedule(struct bthread *);
+void bthread_wake(struct bthread *bthread);
+void bthread_suspend(struct bthread *bthread);
+int bthread_should_stop(void);
+int bthread_stop(struct bthread *bthread);
+void bthread_info(void);
+const char *bthread_name(struct bthread *bthread);
+bool bthread_is_main(struct bthread *bthread);
+
+/**
+ * bthread_run - create and wake a thread.
+ * @threadfn: the function to run for coming reschedule cycles
+ * @data: data ptr for @threadfn.
+ * @namefmt: printf-style name for the thread.
+ *
+ * Description: Convenient wrapper for bthread_create() followed by
+ * bthread_wakeup().  Returns the bthread or NULL
+ */
+#define bthread_run(threadfn, data, namefmt, ...)                          \
+({                                                                         \
+        struct bthread *__b                                                \
+                = bthread_create(threadfn, data, namefmt, ## __VA_ARGS__); \
+        if (__b)							   \
+                bthread_wake(__b);                                         \
+        __b;                                                               \
+})
+
+#ifdef CONFIG_BTHREAD
+void bthread_reschedule(void);
+#else
+static inline void bthread_reschedule(void)
+{
+}
+#endif
+
+#endif
diff --git a/include/poller.h b/include/poller.h
index db773265b2f6..371dafc6f8b8 100644
--- a/include/poller.h
+++ b/include/poller.h
@@ -39,6 +39,8 @@ static inline bool poller_async_active(struct poller_async *pa)
 	return pa->active;
 }
 
+extern int poller_active;
+
 #ifdef CONFIG_POLLER
 void poller_call(void);
 #else
diff --git a/include/sched.h b/include/sched.h
index 43d239c3ef63..57be1678fdaa 100644
--- a/include/sched.h
+++ b/include/sched.h
@@ -2,11 +2,14 @@
 #ifndef __BAREBOX_SCHED_H_
 #define __BAREBOX_SCHED_H_
 
+#include <bthread.h>
 #include <poller.h>
 
 static inline void resched(void)
 {
 	poller_call();
+	if (!IS_ENABLED(CONFIG_POLLER) || !poller_active)
+		bthread_reschedule();
 }
 
 #endif
diff --git a/include/slice.h b/include/slice.h
index b2d65b80cd69..cf684300a809 100644
--- a/include/slice.h
+++ b/include/slice.h
@@ -1,6 +1,8 @@
 #ifndef __SLICE_H
 #define __SLICE_H
 
+#include <bthread.h>
+
 enum slice_action {
 	SLICE_ACQUIRE = 1,
 	SLICE_RELEASE = -1,
@@ -35,12 +37,11 @@ void command_slice_release(void);
 
 extern int poller_active;
 
-#ifdef CONFIG_POLLER
-#define assert_command_context() ({    \
-	WARN_ONCE(poller_active, "%s called in poller\n", __func__); \
-})
-#else
-#define assert_command_context() do { } while (0)
-#endif
+#define assert_command_context() do { \
+	WARN_ONCE(IS_ENABLED(CONFIG_POLLER) && poller_active, \
+		  "%s called in poller\n", __func__); \
+	WARN_ONCE(IS_ENABLED(CONFIG_BTHREAD) && !bthread_is_main(current), \
+		  "%s called in secondary bthread\n", __func__); \
+} while (0)
 
-#endif /* __SLICE_H */
+#endif
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

