Delivery-date: Mon, 01 Mar 2021 12:03:21 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGgKf-0004Wn-B5
	for lore@lore.pengutronix.de; Mon, 01 Mar 2021 12:03:21 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGgKd-0000Yg-Qa
	for lore@pengutronix.de; Mon, 01 Mar 2021 12:03:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eg0K6L24AhjK1n8HN8QoM9gKnlZrelhQ0Lom1u2K2ng=; b=odT0R5Jz3br/l/gfkhcL8wDRE
	JeNByPgd+EJp/2TsUMs1bF3/bUHxUHfFmF82OLhR61HTG0XbSyPuISI56HA+3DBaJ8yK1HvUy/GrP
	HQXv2I40fkkGcE60kvwfSKeL2JfQfHsLfmcb6BO3KZ84BxlubmgFE+4dU7tfth8/COY5BwlDHi4Es
	ovX247qdb5abZfQq/G7r0L7dWT8L/DjswKDGb1FV68AfbPr1Dr44vL9+C++jh6yCZ6T2t4OUa0Ins
	mJ3G7gdAi96CWU0RIbQVBfC1Hr9ZVzMPlNDDRKusdfSh9kWs0VPPFvH4Isyd7lpAtKtODLd4jWMCo
	RLrtjElkA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGgJR-0005fJ-Ur; Mon, 01 Mar 2021 11:02:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGgIk-0005Kk-9K
 for barebox@lists.infradead.org; Mon, 01 Mar 2021 11:01:29 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lGgIb-00089H-61; Mon, 01 Mar 2021 12:01:13 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lGgIa-0001bC-D7; Mon, 01 Mar 2021 12:01:12 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  1 Mar 2021 12:01:00 +0100
Message-Id: <20210301110106.3764-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210301110106.3764-1-a.fatoum@pengutronix.de>
References: <20210301110106.3764-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210301_060122_820149_6DE3141E 
X-CRM114-Status: GOOD (  31.14  )
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
Subject: [PATCH v2 05/11] sandbox: asm: implement setjmp/longjmp/initjmp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

To extend yielding poller support to sandbox, implement setjmp, longjmp
and initjmp. Unlike bare metal platforms, setjmp() and longjmp() are
readily provided on standard-conforming hosted platforms.  initjmp() on
the other hand requires us to be able to invoke a function with a
user-supplied stack pointer, which isn't possible in standard C.

For POSIX systems, there are two methods to portably achieve this
though:

  - Use makecontext(2) to set up a new context. makecontext(2) was however
    removed in POSIX.1-2008 and at least GCC 10.2.1 ASan complains that it
    "doesn't fully support makecontext/swapcontext functions and may
    produce false positives in some cases!"

  - Use sigaltstack to set a new signal stack, call setjmp there to
    store the stack pointer, return regularly from signal handler and then
    longjmp back and invoke the coroutine.

Both methods are implemented in QEMU. While QEMU uses the makecontext
method by default, for the reasons described, import the second implementation
and use it implement initjmp.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/Kconfig              |   1 +
 arch/sandbox/Makefile             |   5 +-
 arch/sandbox/include/asm/setjmp.h |  17 +++
 arch/sandbox/os/Makefile          |   5 +-
 arch/sandbox/os/setjmp.c          | 180 ++++++++++++++++++++++++++++++
 5 files changed, 204 insertions(+), 4 deletions(-)
 create mode 100644 arch/sandbox/include/asm/setjmp.h
 create mode 100644 arch/sandbox/os/setjmp.c

diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index 1a4e3bacf66d..cef8e9fb7ab4 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -13,6 +13,7 @@ config SANDBOX
 	select PARTITION_DISK
 	select ARCH_HAS_STACK_DUMP if ASAN
 	select GENERIC_FIND_NEXT_BIT
+	select HAS_ARCH_SJLJ
 	default y
 
 config ARCH_TEXT_BASE
diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index ea594944e4eb..5fc7e227be67 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -27,7 +27,8 @@ KBUILD_CFLAGS += -Dmalloc=barebox_malloc -Dcalloc=barebox_calloc \
 		-Dftruncate=barebox_ftruncate -Dasprintf=barebox_asprintf \
 		-Dopendir=barebox_opendir -Dreaddir=barebox_readdir \
 		-Dclosedir=barebox_closedir -Dreadlink=barebox_readlink \
-		-Doptarg=barebox_optarg -Doptind=barebox_optind
+		-Doptarg=barebox_optarg -Doptind=barebox_optind \
+		-Dsetjmp=barebox_setjmp -Dlongjmp=barebox_longjmp
 
 machdirs := $(patsubst %,arch/sandbox/mach-%/,$(machine-y))
 
@@ -64,7 +65,7 @@ endif
 BAREBOX_LDFLAGS += \
 	-Wl,-T,$(BAREBOX_LDS) \
 	-Wl,--whole-archive $(BAREBOX_OBJS) -Wl,--no-whole-archive \
-	-lrt $(SDL_LIBS) $(FTDI1_LIBS) \
+	-lrt -pthread $(SDL_LIBS) $(FTDI1_LIBS) \
 	$(SANITIZER_LIBS)
 
 cmd_barebox__ = $(CC) -o $@ $(BAREBOX_LDFLAGS)
diff --git a/arch/sandbox/include/asm/setjmp.h b/arch/sandbox/include/asm/setjmp.h
new file mode 100644
index 000000000000..f085a9079dd7
--- /dev/null
+++ b/arch/sandbox/include/asm/setjmp.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __SETJMP_H_
+#define __SETJMP_H_
+
+struct jmp_buf_data {
+	unsigned char opaque[512] __aligned(16);
+};
+
+typedef struct jmp_buf_data jmp_buf[1];
+
+int setjmp(jmp_buf jmp) __attribute__((returns_twice));
+void longjmp(jmp_buf jmp, int ret) __attribute__((noreturn));
+
+int initjmp(jmp_buf jmp, void __noreturn (*func)(void), void *stack_top);
+
+#endif
diff --git a/arch/sandbox/os/Makefile b/arch/sandbox/os/Makefile
index fb2c3cfd8632..5d0c938ce68c 100644
--- a/arch/sandbox/os/Makefile
+++ b/arch/sandbox/os/Makefile
@@ -4,7 +4,8 @@ machdirs := $(patsubst %,arch/sandbox/mach-%/,$(machine-y))
 
 KBUILD_CPPFLAGS = $(patsubst %,-I$(srctree)/%include,$(machdirs))
 
-KBUILD_CPPFLAGS += -DCONFIG_MALLOC_SIZE=$(CONFIG_MALLOC_SIZE) -D_FILE_OFFSET_BITS=64
+KBUILD_CPPFLAGS += -DCONFIG_MALLOC_SIZE=$(CONFIG_MALLOC_SIZE) -D_FILE_OFFSET_BITS=64 \
+		   -DCONFIG_STACK_SIZE=$(CONFIG_STACK_SIZE)
 
 KBUILD_CFLAGS := -Wall
 
@@ -14,7 +15,7 @@ ifeq ($(CONFIG_SANDBOX_LINUX_I386),y)
 KBUILD_CFLAGS += -m32
 endif
 
-obj-y = common.o tap.o
+obj-y = common.o tap.o setjmp.o
 obj-$(CONFIG_MALLOC_LIBC) += libc_malloc.o
 
 CFLAGS_sdl.o = $(shell pkg-config sdl2 --cflags)
diff --git a/arch/sandbox/os/setjmp.c b/arch/sandbox/os/setjmp.c
new file mode 100644
index 000000000000..7f686b0fc6e9
--- /dev/null
+++ b/arch/sandbox/os/setjmp.c
@@ -0,0 +1,180 @@
+// SPDX-License-Identifier: LGPL-2.1-or-later
+/*
+ * sigaltstack coroutine initialization code
+ *
+ * Copyright (C) 2006  Anthony Liguori <anthony@codemonkey.ws>
+ * Copyright (C) 2011  Kevin Wolf <kwolf@redhat.com>
+ * Copyright (C) 2012  Alex Barcelo <abarcelo@ac.upc.edu>
+ * Copyright (C) 2021  Ahmad Fatoum, Pengutronix
+ * This file is partly based on pth_mctx.c, from the GNU Portable Threads
+ *  Copyright (c) 1999-2006 Ralf S. Engelschall <rse@engelschall.com>
+ */
+
+/* XXX Is there a nicer way to disable glibc's stack check for longjmp? */
+#ifdef _FORTIFY_SOURCE
+#undef _FORTIFY_SOURCE
+#endif
+
+#include <pthread.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <setjmp.h>
+#include <signal.h>
+
+typedef sigjmp_buf _jmp_buf __attribute__((aligned((16))));
+_Static_assert(sizeof(_jmp_buf) <= 512, "sigjmp_buf size exceeds expectation");
+
+/*
+ * Information for the signal handler (trampoline)
+ */
+static struct {
+	_jmp_buf *reenter;
+	void (*entry)(void);
+	volatile sig_atomic_t called;
+} tr_state;
+
+/*
+ * "boot" function
+ * This is what starts the coroutine, is called from the trampoline
+ * (from the signal handler when it is not signal handling, read ahead
+ * for more information).
+ */
+static void __attribute__((noinline, noreturn))
+coroutine_bootstrap(void (*entry)(void))
+{
+	for (;;)
+		entry();
+}
+
+/*
+ * This is used as the signal handler. This is called with the brand new stack
+ * (thanks to sigaltstack). We have to return, given that this is a signal
+ * handler and the sigmask and some other things are changed.
+ */
+static void coroutine_trampoline(int signal)
+{
+	/* Get the thread specific information */
+	tr_state.called = 1;
+
+	/*
+	 * Here we have to do a bit of a ping pong between the caller, given that
+	 * this is a signal handler and we have to do a return "soon". Then the
+	 * caller can reestablish everything and do a siglongjmp here again.
+	 */
+	if (!sigsetjmp(*tr_state.reenter, 0)) {
+		return;
+	}
+
+	/*
+	 * Ok, the caller has siglongjmp'ed back to us, so now prepare
+	 * us for the real machine state switching. We have to jump
+	 * into another function here to get a new stack context for
+	 * the auto variables (which have to be auto-variables
+	 * because the start of the thread happens later). Else with
+	 * PIC (i.e. Position Independent Code which is used when PTH
+	 * is built as a shared library) most platforms would
+	 * horrible core dump as experience showed.
+	 */
+	coroutine_bootstrap(tr_state.entry);
+}
+
+int initjmp(_jmp_buf jmp, void (*func)(void), void *stack_top)
+{
+	struct sigaction sa;
+	struct sigaction osa;
+	stack_t ss;
+	stack_t oss;
+	sigset_t sigs;
+	sigset_t osigs;
+
+	/* The way to manipulate stack is with the sigaltstack function. We
+	 * prepare a stack, with it delivering a signal to ourselves and then
+	 * put sigsetjmp/siglongjmp where needed.
+	 * This has been done keeping coroutine-ucontext (from the QEMU project)
+	 * as a model and with the pth ideas (GNU Portable Threads).
+	 * See coroutine-ucontext for the basics of the coroutines and see
+	 * pth_mctx.c (from the pth project) for the
+	 * sigaltstack way of manipulating stacks.
+	 */
+
+	tr_state.entry = func;
+	tr_state.reenter = (void *)jmp;
+
+	/*
+	 * Preserve the SIGUSR2 signal state, block SIGUSR2,
+	 * and establish our signal handler. The signal will
+	 * later transfer control onto the signal stack.
+	 */
+	sigemptyset(&sigs);
+	sigaddset(&sigs, SIGUSR2);
+	pthread_sigmask(SIG_BLOCK, &sigs, &osigs);
+	sa.sa_handler = coroutine_trampoline;
+	sigfillset(&sa.sa_mask);
+	sa.sa_flags = SA_ONSTACK;
+	if (sigaction(SIGUSR2, &sa, &osa) != 0) {
+		return -1;
+	}
+
+	/*
+	 * Set the new stack.
+	 */
+	ss.ss_sp = stack_top - CONFIG_STACK_SIZE;
+	ss.ss_size = CONFIG_STACK_SIZE;
+	ss.ss_flags = 0;
+	if (sigaltstack(&ss, &oss) < 0) {
+		return -1;
+	}
+
+	/*
+	 * Now transfer control onto the signal stack and set it up.
+	 * It will return immediately via "return" after the sigsetjmp()
+	 * was performed. Be careful here with race conditions.  The
+	 * signal can be delivered the first time sigsuspend() is
+	 * called.
+	 */
+	tr_state.called = 0;
+	pthread_kill(pthread_self(), SIGUSR2);
+	sigfillset(&sigs);
+	sigdelset(&sigs, SIGUSR2);
+	while (!tr_state.called) {
+		sigsuspend(&sigs);
+	}
+
+	/*
+	 * Inform the system that we are back off the signal stack by
+	 * removing the alternative signal stack. Be careful here: It
+	 * first has to be disabled, before it can be removed.
+	 */
+	sigaltstack(NULL, &ss);
+	ss.ss_flags = SS_DISABLE;
+	if (sigaltstack(&ss, NULL) < 0) {
+		return -1;
+	}
+	sigaltstack(NULL, &ss);
+	if (!(oss.ss_flags & SS_DISABLE)) {
+		sigaltstack(&oss, NULL);
+	}
+
+	/*
+	 * Restore the old SIGUSR2 signal handler and mask
+	 */
+	sigaction(SIGUSR2, &osa, NULL);
+	pthread_sigmask(SIG_SETMASK, &osigs, NULL);
+
+	/*
+	 * jmp can now be used to enter the trampoline again, but not as a
+	 * signal handler. Instead it's longjmp'd to directly.
+	 */
+
+	return 0;
+}
+
+int  __attribute__((returns_twice)) barebox_setjmp(_jmp_buf jmp)
+{
+	return sigsetjmp(jmp, 0);
+}
+
+void __attribute((noreturn)) barebox_longjmp(_jmp_buf jmp, int ret)
+{
+	siglongjmp(jmp, ret);
+}
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

