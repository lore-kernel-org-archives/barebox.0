Delivery-date: Mon, 01 Mar 2021 12:02:56 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGgKG-0004VN-AG
	for lore@lore.pengutronix.de; Mon, 01 Mar 2021 12:02:56 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGgKD-0000KA-7f
	for lore@pengutronix.de; Mon, 01 Mar 2021 12:02:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aY/i58gX4u0kkRSVpjA9zrGb8nCRBSEVe6N48etZqkQ=; b=PXyrQIFN0AEsp7gKFj2jug6/K
	j1FYZbnEBV/79SZeEHHKmz4XoAD8ybzNgxxJhjaGd0Sklv1wFbw34FuNsYD6/LYXT50eFB5SrrVib
	n/qZK8oUSlqUSyNySeJKjS1UxYO10Uf48o8Abzsp1+NrIiUmUuU2Lu6vZ6HyMPSNGcYfqWkXG5H/9
	ds1vypvj1+/Dm/jHBVgYPTE9el7OtYaD0chxm7QJIWtYQP8dzuyMZtH65/ugqODKrFAhS5WqryS98
	Wl8hFi7elAYS4uP+M2DrmGYNwYlcuDdHMNObHpL6Y+bAWdnllbv0Vi0UMDVBvyhBNlRdm7sAtyq/M
	cYHcygL9A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGgIv-0005Qa-Mv; Mon, 01 Mar 2021 11:01:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGgIe-0005Hx-F5
 for barebox@lists.infradead.org; Mon, 01 Mar 2021 11:01:20 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lGgIb-00089E-5o; Mon, 01 Mar 2021 12:01:13 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lGgIa-0001b2-BZ; Mon, 01 Mar 2021 12:01:12 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  1 Mar 2021 12:00:57 +0100
Message-Id: <20210301110106.3764-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210301110106.3764-1-a.fatoum@pengutronix.de>
References: <20210301110106.3764-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210301_060116_874204_E76C90A2 
X-CRM114-Status: GOOD (  36.93  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Jules Maselbas <jmaselbas@kalray.eu>, Stafford Horne <shorne@gmail.com>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>, sha@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 02/11] common: introduce bthreads,
 co-operative barebox threads
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Coroutines generalize subroutines for non-preemptive multitasking,
by allowing execution to be suspended and resumed. We already have very
limited coroutines in the form of pollers. A poller is a function that
is cooperatively scheduled and yields after it has run to completion.
In the next poller_call(), this function is resumed from start.

Proper coroutines allow for the this yielding to happen at any point of
time. The coroutine's state is then saved and execution continues else
where. Later on, execution is resumed by restoring the saved context.

standard C setjmp/longjmp can be used to implement stackless coroutines.
setjmp stores the registers comprising the execution context into a
jmp_buf and longjmp switches to that context and continues execution just
after the setjmp that allocated that jmp_buf.

These coroutines are stackless, because jumping to a setjmp down the
call stack means that the code there will clobber the stack
below it. On resuming the coroutine, it will run with a stack changed
in the interim leading to undefined behavior.

There are ways around that without resorting to Assembly:

  - Allocate a buffer on the scheduler's stack, so coroutine can
    grow into them
     -> Problem: exploits Undefined behavior
  - Yield first time on scheduler stack, then patch jmp_buf to point at
    another stack
     -> Problem: Code switching stacks should not itself use the stack

It thus seems there is no way around adding a new function to initialize
a setjmp with a freshly cloned stack.

This commit adds an implementation for co-operatively scheduled bthreads.
Architectures wishing to use it need to provide setjmp/longjmp/initjmp
and in their arch Kconfig should select CONFIG_HAS_ARCH_SJLJ.
Code wishing to make use of it will need a depends on
CONFIG_HAS_ARCH_SJLJ.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/devel/background-execution.rst |  43 +++-
 commands/Kconfig                             |   9 +
 commands/Makefile                            |   1 +
 common/Kconfig                               |  13 ++
 common/Makefile                              |   1 +
 common/bthread.c                             | 214 +++++++++++++++++++
 common/clock.c                               |   5 +-
 common/console.c                             |   2 +
 include/bthread.h                            |  31 +++
 include/slice.h                              |  16 +-
 lib/readline.c                               |   5 +-
 11 files changed, 326 insertions(+), 14 deletions(-)
 create mode 100644 common/bthread.c
 create mode 100644 include/bthread.h

diff --git a/Documentation/devel/background-execution.rst b/Documentation/devel/background-execution.rst
index eadad9d898d0..2fd70934d0b2 100644
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
@@ -71,6 +71,41 @@ actually queueing a work item on a work queue. This can be called from poller
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
+Unlike pollers, which bthreads are replacing, bthreads are allowed
+access to virtual filesystem. The macro ``assert_command_context()`` is added
+to entry points of the VFS to have the thread yield until it may execute in
+in the correct context. The poller interface is declared in
+``include/bthread.h``.  ``bthread_create()`` is used to allocate a bthread
+control block along with its stack. ``bthread_wake()`` can be used to hang
+it into the run queue. From this moment on and until the thread terminates,
+the thread will be switched to regularly as long as someone calls
+``is_timeout()``. bthreads are allowed to call ``is_timeout()``, which will
+arrange for other threads to execute.
+
+barebox threads replace previous the previous pollers and workqueues. Poller
+like behavior can be easily achieved by looping and yielding on every
+iteration. There's ``bthread_should_stop()``, which can be used as condition
+for continuing the loop. Workqueues can be replaced along the same line. On
+first VFS access, the thread will yield until it can run in the same context
+work queues used to execute in.
+
+If you want to add a new barebox thread, check that the devices it accesses
+are correctly using slices for protecting critical sections.
+
 Slices
 ------
 
diff --git a/commands/Kconfig b/commands/Kconfig
index 520ad4b1dea3..6d84c956e576 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -253,6 +253,15 @@ config CMD_POLLER
 	  is_timeout() or one of the various delay functions. The poller command prints
 	  informations about registered pollers.
 
+config CMD_BTHREAD
+	tristate
+	prompt "bthread"
+	depends on BTHREAD
+	help
+	  barebox threads are cooperatively-scheduled (green) threads that are running in
+	  the background whenever code executes is_timeout() or one of the various delay
+	  functions. The bthread command prints informations about registered bthreads.
+
 config CMD_SLICE
 	tristate
 	prompt "slice"
diff --git a/commands/Makefile b/commands/Makefile
index 034c0e6383d3..cdf14a5e1d8d 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -129,6 +129,7 @@ obj-$(CONFIG_CMD_MMC_EXTCSD)	+= mmc_extcsd.o
 obj-$(CONFIG_CMD_NAND_BITFLIP)	+= nand-bitflip.o
 obj-$(CONFIG_CMD_SEED)		+= seed.o
 obj-$(CONFIG_CMD_IP_ROUTE_GET)  += ip-route-get.o
+obj-$(CONFIG_CMD_BTHREAD)	+= bthread.o
 obj-$(CONFIG_CMD_UBSAN)		+= ubsan.o
 
 UBSAN_SANITIZE_ubsan.o := y
diff --git a/common/Kconfig b/common/Kconfig
index edadcc9f4979..0e4a85f102ff 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -20,6 +20,11 @@ config HAS_CACHE
 	  Drivers that depend on a cache implementation can depend on this
 	  config, so that you don't get a compilation error.
 
+config HAS_ARCH_SJLJ
+	bool
+	help
+	  Architecture has support implemented for setjmp()/longjmp()/initjmp()
+
 config HAS_DMA
 	bool
 	help
@@ -955,6 +960,14 @@ config BAREBOXCRC32_TARGET
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
index 000000000000..399a13d24a1d
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
+struct bthread {
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
+#define next(bthread)	list_next_entry(bthread, list)
+#define prev(bthread)	list_prev_entry(bthread, list)
+#define empty(bthread)	list_empty(&(bthread)->list)
+
+static struct bthread *current = &main_thread;
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
+	bthread_schedule(&main_thread);
+
+	current->ret = current->threadfn(current->data);
+
+	current->has_stopped = true;
+	bthread_suspend(current);
+
+	current = &main_thread;
+	start_switch_fiber(&main_thread, true);
+	longjmp(main_thread.jmp_buf, 1);
+}
+
+void bthread_free(struct bthread *bthread)
+{
+	free(bthread->name);
+	free(bthread);
+}
+
+struct bthread *bthread_create(int (*threadfn)(void *), void *data, const char *name)
+{
+	struct bthread *bthread;
+	int ret;
+
+	bthread = malloc(struct_size(bthread, stack_space, CONFIG_STACK_SIZE));
+	if (!bthread)
+		return NULL;
+
+	memset(bthread, 0, sizeof(*bthread));
+
+	bthread->stack = bthread->stack_space;
+	bthread->stack_size = CONFIG_STACK_SIZE;
+	bthread->threadfn = threadfn;
+	bthread->data = data;
+	bthread->name = strdup(name);
+
+	/* set up bthread context with the new stack */
+	ret = initjmp(bthread->jmp_buf, bthread_trampoline,
+		      bthread->stack + CONFIG_STACK_SIZE);
+	if (ret) {
+		bthread_free(bthread);
+		return NULL;
+	}
+
+	return bthread;
+}
+
+void bthread_wake(struct bthread *bthread)
+{
+	if (bthread->awake)
+		return;
+	list_add(&bthread->list, &main_thread.list);
+	bthread->awake = true;
+}
+
+void bthread_suspend(struct bthread *bthread)
+{
+	if (!bthread->awake || bthread == &main_thread)
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
+	if (current == &main_thread)
+		return -EINTR;
+	bthread_schedule(&main_thread);
+	return current->should_stop;
+}
+
+void bthread_info(void)
+{
+	struct bthread *bthread;
+
+	printf("Registered secondary barebox threads:\n");
+
+	if (empty(&main_thread)) {
+		printf("<none>\n");
+		return;
+	}
+
+	list_for_each_entry(bthread, &main_thread.list, list)
+		printf("%s\n", bthread->name);
+}
+
+void bthread_reschedule(void)
+{
+	struct bthread *to, *tmp;
+
+	if (current != &main_thread) {
+		bthread_schedule(&main_thread);
+		return;
+	}
+
+	list_for_each_entry_safe(to, tmp, &main_thread.list, list)
+		bthread_schedule(to);
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
diff --git a/common/clock.c b/common/clock.c
index 7eeba88317ac..3781268cc796 100644
--- a/common/clock.c
+++ b/common/clock.c
@@ -14,6 +14,7 @@
 #include <linux/math64.h>
 #include <clock.h>
 #include <poller.h>
+#include <bthread.h>
 
 static uint64_t time_ns;
 
@@ -171,8 +172,10 @@ int is_timeout(uint64_t start_ns, uint64_t time_offset_ns)
 {
 	int ret = is_timeout_non_interruptible(start_ns, time_offset_ns);
 
-	if (time_offset_ns >= 100 * USECOND)
+	if (time_offset_ns >= 100 * USECOND) {
 		poller_call();
+		bthread_reschedule();
+	}
 
 	return ret;
 }
diff --git a/common/console.c b/common/console.c
index 974d3de9e483..a1d7c1eb54a0 100644
--- a/common/console.c
+++ b/common/console.c
@@ -18,6 +18,7 @@
 #include <kfifo.h>
 #include <module.h>
 #include <poller.h>
+#include <bthread.h>
 #include <ratp_bb.h>
 #include <magicvar.h>
 #include <globalvar.h>
@@ -580,6 +581,7 @@ int ctrlc(void)
 	int ret = 0;
 
 	poller_call();
+	bthread_reschedule();
 
 	if (!ctrlc_allowed)
 		return 0;
diff --git a/include/bthread.h b/include/bthread.h
new file mode 100644
index 000000000000..2935852f68cf
--- /dev/null
+++ b/include/bthread.h
@@ -0,0 +1,31 @@
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
+struct bthread *bthread_create(int (*threadfn)(void *), void *data, const char *name);
+void bthread_free(struct bthread *bthread);
+
+void bthread_schedule(struct bthread *);
+void bthread_wake(struct bthread *bthread);
+void bthread_suspend(struct bthread *bthread);
+int bthread_should_stop(void);
+int bthread_stop(struct bthread *bthread);
+void bthread_info(void);
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
diff --git a/include/slice.h b/include/slice.h
index b2d65b80cd69..4916263d1b8b 100644
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
@@ -35,12 +37,10 @@ void command_slice_release(void);
 
 extern int poller_active;
 
-#ifdef CONFIG_POLLER
-#define assert_command_context() ({    \
-	WARN_ONCE(poller_active, "%s called in poller\n", __func__); \
-})
-#else
-#define assert_command_context() do { } while (0)
-#endif
+#define assert_command_context() do { \
+	WARN_ONCE(IS_ENABLED(CONFIG_POLLER) && poller_active, "%s called in poller\n", __func__); \
+	while (IS_ENABLED(CONFIG_BTHREAD) && !slice_acquired(&command_slice)) \
+		bthread_reschedule(); \
+} while (0)
 
-#endif /* __SLICE_H */
+#endif
diff --git a/lib/readline.c b/lib/readline.c
index e5370f9c7b6e..87f3e715c129 100644
--- a/lib/readline.c
+++ b/lib/readline.c
@@ -3,6 +3,7 @@
 #include <init.h>
 #include <libbb.h>
 #include <poller.h>
+#include <bthread.h>
 #include <xfuncs.h>
 #include <complete.h>
 #include <linux/ctype.h>
@@ -199,8 +200,10 @@ int readline(const char *prompt, char *buf, int len)
 	puts (prompt);
 
 	while (1) {
-		while (!tstc())
+		while (!tstc()) {
 			poller_call();
+			bthread_reschedule();
+		}
 
 		ichar = read_key();
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

