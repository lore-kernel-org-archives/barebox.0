Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lBbJx-0005eB-ED
 for barebox@lists.infradead.org; Mon, 15 Feb 2021 10:41:39 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Feb 2021 11:36:54 +0100
Message-Id: <20210215103704.32537-2-a.fatoum@pengutronix.de>
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
Subject: [PATCH 01/12] common: add coroutine support
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

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

This commit adds the C boilerplate. Architectures wishing to use it need
to provide setjmp/longjmp/initjmp and in their arch Kconfig should
select CONFIG_HAS_ARCH_SJLJ. Code wishing to make use of it will need a
depends on CONFIG_HAS_ARCH_SJLJ. For now this will just be the new
poller_yield() facility introduced in a later commit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig      |   6 ++
 common/Makefile     |   1 +
 common/coroutine.c  | 178 ++++++++++++++++++++++++++++++++++++++++++++
 include/coroutine.h |  43 +++++++++++
 4 files changed, 228 insertions(+)
 create mode 100644 common/coroutine.c
 create mode 100644 include/coroutine.h

diff --git a/common/Kconfig b/common/Kconfig
index edadcc9f4979..d78aad1deb6b 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -20,6 +20,12 @@ config HAS_CACHE
 	  Drivers that depend on a cache implementation can depend on this
 	  config, so that you don't get a compilation error.
 
+config HAS_ARCH_SJLJ
+	bool
+	help
+	  Architecture has support implemented for
+	  setjmp()/longjmp()/initjmp()
+
 config HAS_DMA
 	bool
 	help
diff --git a/common/Makefile b/common/Makefile
index 0e0ba384c9b5..e85a27713177 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -50,6 +50,7 @@ obj-$(CONFIG_OFTREE)		+= oftree.o
 obj-$(CONFIG_PARTITION_DISK)	+= partitions.o partitions/
 obj-$(CONFIG_PASSWORD)		+= password.o
 obj-$(CONFIG_POLLER)		+= poller.o
+obj-$(CONFIG_HAS_ARCH_SJLJ)	+= coroutine.o
 obj-$(CONFIG_RESET_SOURCE)	+= reset_source.o
 obj-$(CONFIG_SHELL_HUSH)	+= hush.o
 obj-$(CONFIG_SHELL_SIMPLE)	+= parser.o
diff --git a/common/coroutine.c b/common/coroutine.c
new file mode 100644
index 000000000000..d21cfc45067f
--- /dev/null
+++ b/common/coroutine.c
@@ -0,0 +1,178 @@
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
+#include <coroutine.h>
+#include <asm/setjmp.h>
+#include <linux/overflow.h>
+
+/** struct coroutine
+ *
+ * @entry	coroutine entry point
+ * @arg		coroutine user-supplied argument
+ * @jmp_buf	coroutine context when yielded
+ * @stack	pointer to stack bottom (for stacks growing down)
+ * @stack_size	size of stack in bytes
+ * @stack_space actual stack for coroutines; empty for main thread
+ */
+struct coroutine {
+	__coroutine (*entry)(void *);
+	void *arg;
+	jmp_buf jmp_buf;
+	void *stack;
+	size_t stack_size;
+	u8 stack_space[] __aligned(16);
+};
+
+/** enum coroutine_action
+ *
+ * @COROUTINE_CHECKPOINT	placeholder, 0 reserved for regular setjmp return
+ * @COROUTINE_BOOTSTRAP		initial yield in trampline
+ * @COROUTINE_ENTER		switching from scheduler to coroutine
+ * @COROUTINE_YIELD		switching from coroutine to scheduler
+ * @COROUTINE_TERMINATE		final yield in trampoline
+ */
+enum coroutine_action {
+	COROUTINE_CHECKPOINT = 0,
+	COROUTINE_BOOTSTRAP,
+	COROUTINE_ENTER,
+	COROUTINE_YIELD,
+	COROUTINE_TERMINATE
+};
+
+/** The main "thread". Execution returns here when a coroutine yields */
+static struct coroutine scheduler;
+/** Argument for trampoline as initjmp doesn't pass an argument */
+static struct coroutine *new_coro;
+
+static enum coroutine_action coroutine_switch(struct coroutine *from,
+					      struct coroutine *to,
+					      enum coroutine_action action);
+
+static void __noreturn coroutine_trampoline(void)
+{
+	struct coroutine *coro = new_coro;
+
+	coroutine_switch(coro, &scheduler, COROUTINE_BOOTSTRAP);
+
+	coro->entry(coro->arg);
+
+	longjmp(scheduler.jmp_buf, COROUTINE_TERMINATE);
+}
+
+struct coroutine *coroutine_alloc(__coroutine (*entry)(void *), void *arg)
+{
+	struct coroutine *coro;
+	int ret;
+
+	coro = malloc(struct_size(coro, stack_space, CONFIG_STACK_SIZE));
+	if (!coro)
+		return NULL;
+
+	coro->stack = coro->stack_space;
+	coro->stack_size = CONFIG_STACK_SIZE;
+	coro->entry = entry;
+	coro->arg = arg;
+
+	/* set up coroutine context with the new stack */
+	ret = initjmp(coro->jmp_buf, coroutine_trampoline,
+		      coro->stack + CONFIG_STACK_SIZE);
+	if (ret) {
+		free(coro);
+		return NULL;
+	}
+
+	/* jump to new context to finish initialization */
+	new_coro = coro;
+	coroutine_schedule(coro);
+	new_coro = NULL;
+
+	return coro;
+}
+
+void coroutine_schedule(struct coroutine *coro)
+{
+	coroutine_switch(&scheduler, coro, COROUTINE_ENTER);
+}
+
+void coroutine_yield(struct coroutine *coro)
+{
+	coroutine_switch(coro, &scheduler, COROUTINE_YIELD);
+}
+
+void coroutine_free(struct coroutine *coro)
+{
+	free(coro);
+}
+
+/*
+ * When using ASAN, it needs to be told when we switch stacks.
+ */
+static void start_switch_fiber(void **fake_stack, struct coroutine *to);
+static void finish_switch_fiber(void *fake_stack_save);
+
+static enum coroutine_action coroutine_switch(struct coroutine *from, struct coroutine *to,
+					      enum coroutine_action action)
+{
+	void *fake_stack_save = NULL;
+	int ret;
+
+	if (action == COROUTINE_BOOTSTRAP)
+		finish_switch_fiber(NULL);
+
+	ret = setjmp(from->jmp_buf);
+	if (ret == 0) {
+		start_switch_fiber(action == COROUTINE_TERMINATE ? NULL : &fake_stack_save, to);
+		longjmp(to->jmp_buf, COROUTINE_YIELD);
+	}
+
+	finish_switch_fiber(fake_stack_save);
+
+	return ret;
+}
+
+#ifdef CONFIG_ASAN
+
+void __sanitizer_start_switch_fiber(void **fake_stack_save, const void *bottom, size_t size);
+void __sanitizer_finish_switch_fiber(void *fake_stack_save, const void **bottom_old, size_t *size_old);
+
+static void finish_switch_fiber(void *fake_stack_save)
+{
+    const void *bottom_old;
+    size_t size_old;
+
+    __sanitizer_finish_switch_fiber(fake_stack_save, &bottom_old, &size_old);
+
+    if (!scheduler.stack) {
+        scheduler.stack = (void *)bottom_old;
+        scheduler.stack_size = size_old;
+    }
+}
+
+static void start_switch_fiber(void **fake_stack_save,
+                               struct coroutine *to)
+{
+	__sanitizer_start_switch_fiber(fake_stack_save, to->stack, to->stack_size);
+}
+
+#else
+
+static void finish_switch_fiber(void *fake_stack_save)
+{
+}
+
+static void start_switch_fiber(void **fake_stack_save,
+                               struct coroutine *to)
+{
+}
+
+#endif
diff --git a/include/coroutine.h b/include/coroutine.h
new file mode 100644
index 000000000000..f6484e930166
--- /dev/null
+++ b/include/coroutine.h
@@ -0,0 +1,43 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2021 Ahmad Fatoum, Pengutronix
+ */
+
+#ifndef __COROUTINE_H_
+#define __COROUTINE_H_
+
+#include <linux/stddef.h>
+
+struct coroutine;
+
+#define __coroutine void
+
+#ifdef CONFIG_HAS_ARCH_SJLJ
+
+struct coroutine *coroutine_alloc(__coroutine (*entry)(void *), void *arg);
+void coroutine_schedule(struct coroutine *coro);
+void coroutine_yield(struct coroutine *coro);
+void coroutine_free(struct coroutine *coro);
+
+#else
+
+static inline struct coroutine *coroutine_alloc(__coroutine (*entry)(void *), void *arg)
+{
+	return NULL;
+}
+
+static inline void coroutine_schedule(struct coroutine *coro)
+{
+}
+
+static inline void coroutine_yield(struct coroutine *coro)
+{
+}
+
+static inline void coroutine_free(struct coroutine *coro)
+{
+}
+
+#endif
+
+#endif
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
