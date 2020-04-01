Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJZiM-0001a1-7r
 for barebox@lists.infradead.org; Wed, 01 Apr 2020 09:31:18 +0000
Received: from geraet.fritz.box (muedsl-82-207-203-222.citykom.de
 [82.207.203.222]) (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 2719D1C0013
 for <barebox@lists.infradead.org>; Wed,  1 Apr 2020 09:31:10 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed,  1 Apr 2020 11:31:01 +0200
Message-Id: <20200401093104.959691-2-ahmad@a3f.at>
In-Reply-To: <20200401093104.959691-1-ahmad@a3f.at>
References: <20200401093104.959691-1-ahmad@a3f.at>
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
Subject: [RFC PATCH 1/4] ARM: implement sjlj-based TRY/CATCH exception handling
To: barebox@lists.infradead.org

Now with setjmp supported in barebox, we don't need to limit ourselves
to outdated of return-value-based error propagation.
Instead, embrace the state-of-the-art and port kazlib's ANSI C exceptions
to barebox.

Reviewed-by: Ahmad Fatoum <ahmad@a3f.at>
---
 common/Makefile      |   3 +
 common/except.c      | 282 +++++++++++++++++++++++++++++
 include/except.h     | 156 ++++++++++++++++
 include/exceptions.h | 419 +++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 860 insertions(+)
 create mode 100644 common/except.c
 create mode 100644 include/except.h
 create mode 100644 include/exceptions.h

diff --git a/common/Makefile b/common/Makefile
index 84463b4d485a..ee0d75ae86e2 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -69,6 +69,9 @@ obj-$(CONFIG_SERIAL_DEV_BUS)	+= serdev.o
 obj-$(CONFIG_USBGADGET_START)	+= usbgadget.o
 pbl-$(CONFIG_PBL_OPTEE)		+= optee.o
 obj-$(CONFIG_BOOTM_OPTEE)	+= optee.o
+obj-y				+= except.o
+
+UBSAN_SANITIZE_except.o := n
 
 ifdef CONFIG_PASSWORD
 
diff --git a/common/except.c b/common/except.c
new file mode 100644
index 000000000000..0e408c669ee0
--- /dev/null
+++ b/common/except.c
@@ -0,0 +1,282 @@
+/*
+ * Portable Exception Handling for ANSI C.
+ * Copyright (C) 1999 Kaz Kylheku <kaz@ashi.footprints.net>
+ *
+ * modified for barebox:
+ * Copyright (C) 2019 Ahmad Fatoum
+ *
+ * Free Software License:
+ *
+ * All rights are reserved by the author, with the following exceptions:
+ * Permission is granted to freely reproduce and distribute this software,
+ * possibly in exchange for a fee, provided that this copyright notice appears
+ * intact. Permission is also granted to adapt this software to produce
+ * derivative works, as long as the modified versions carry this copyright
+ * notice and additional notices stating that the work has been modified.
+ * This source code may be translated into executable form and incorporated
+ * into proprietary software; there is no requirement for such software to
+ * contain a copyright notice related to this source.
+ * $Id: except.c,v 1.27.2.2 2001/07/27 01:20:34 kaz Exp $
+ * $Name: kazlib_1_20 $
+ */
+
+#include <stdlib.h>
+#include <common.h>
+#include <stdio.h>
+#include <stdarg.h>
+#include <linux/kernel.h>
+#include "except.h"
+
+#define XCEPT_BUFFER_SIZE	1024
+
+#define group except_group
+#define code except_code
+#define id except_id
+#define message except_message
+#define dyndata except_dyndata
+#define func except_func
+#define context except_context
+#define id except_id
+#define size except_size
+#define obj except_obj
+#define jmp except_jmp
+#define down except_down
+#define type except_type
+#define catcher except_catcher
+#define cleanup except_cleanup
+#define info except_info
+
+static int init_counter;
+static void unhandled_catcher(except_t *);
+static void (*uh_catcher_ptr)(except_t *) = unhandled_catcher;
+static void *(*allocator)(size_t) = malloc;
+static void (*deallocator)(void *) = free;
+static struct except_stacknode *stack_top;
+
+#define get_top() (stack_top)
+#define set_top(T) (stack_top = (T))
+#define get_catcher() (uh_catcher_ptr)
+#define set_catcher(C) (uh_catcher_ptr = (C))
+#define get_alloc() (allocator)
+#define set_alloc(A) (allocator = (A))
+#define get_dealloc() (deallocator)
+#define set_dealloc(D) (deallocator = (D))
+
+int except_init(void)
+{
+    WARN_ON(init_counter == INT_MAX);
+    init_counter++;
+    return 1;
+}
+
+void except_deinit(void)
+{
+    WARN_ON(init_counter <= 0);
+    init_counter--;
+}
+
+static int match(const volatile except_id_t *thrown, const except_id_t *caught)
+{
+    int group_match = (caught->group == XCEPT_GROUP_ANY || caught->group == thrown->group);
+    int code_match = (caught->code == XCEPT_CODE_ANY || caught->code == thrown->code);
+
+    return group_match && code_match;
+}
+
+static __noreturn void do_throw(except_t *except)
+{
+    struct except_stacknode *top;
+
+    WARN_ON(except->id.group == 0 || except->id.code == 0);
+
+    for (top = get_top(); top != 0; top = top->down) {
+	if (top->type == XCEPT_CLEANUP) {
+	    top->info.cleanup->func(top->info.cleanup->context);
+	} else {
+	    struct except_catch *catcher = top->info.catcher;
+	    const except_id_t *pi = catcher->id;
+	    size_t i;
+
+	    WARN_ON(top->type != XCEPT_CATCHER);
+	    except_free(catcher->obj.dyndata);
+
+	    for (i = 0; i < catcher->size; pi++, i++) {
+		if (match(&except->id, pi)) {
+		    catcher->obj = *except;
+		    set_top(top);
+		    longjmp(catcher->jmp, 1);
+		}
+	    }
+	}
+    }
+
+    set_top(top);
+    get_catcher()(except);	/* unhandled exception */
+    panic("");
+}
+
+static const char * const exception_strs[] = {
+	[LogicError]			= "LogicError",
+	[RuntimeError]			= "RuntimeError",
+	[OutOfMemoryError]		= "OutOfMemoryError",
+	[UndefinedInstructionException]	= "UndefinedInstructionException",
+	[SoftwareInterruptException]	= "SoftwareInterruptException",
+	[PrefetchAbortException]	= "PrefetchAbortException",
+	[DataAbortException]		= "DataAbortExceotion",
+	[FiqException]			= "FiqException",
+	[IrqException]			= "IrqException",
+};
+
+static void unhandled_catcher(except_t *except)
+{
+	printk("Unhandled exception (\"%s\", msg=%p, group=%ld, code=%ld)\n",
+	       exception_strs[except->id.code],
+	       except->message, except->id.group, except->id.code);
+	dump_stack();
+	panic("");
+}
+
+static void stack_push(struct except_stacknode *node)
+{
+    node->down = get_top();
+    set_top(node);
+}
+
+void except_setup_clean(struct except_stacknode *esn,
+	struct except_cleanup *ecl, void (*cleanf)(void *), void *context)
+{
+    esn->type = XCEPT_CLEANUP;
+    ecl->func = cleanf;
+    ecl->context = context;
+    esn->info.cleanup = ecl;
+    stack_push(esn);
+}
+
+void except_setup_try(struct except_stacknode *esn,
+	struct except_catch *ech, const except_id_t id[], size_t size)
+{
+   ech->id = id;
+   ech->size = size;
+   ech->obj.dyndata = 0;
+   esn->type = XCEPT_CATCHER;
+   esn->info.catcher = ech;
+   stack_push(esn);
+}
+
+struct except_stacknode *except_pop(void)
+{
+    struct except_stacknode *top = get_top();
+    set_top(top->down);
+    return top;
+}
+
+__noreturn void except_rethrow(except_t *except)
+{
+    struct except_stacknode *top = get_top();
+    WARN_ON(top == 0);
+    WARN_ON(top->type != XCEPT_CATCHER);
+    WARN_ON(&top->info.catcher->obj != except);
+    set_top(top->down);
+    do_throw(except);
+}
+
+__noreturn void except_throw(long group, long code, const char *msg)
+{
+    except_t except;
+
+    except.id.group = group;
+    except.id.code = code;
+    except.message = msg;
+    except.dyndata = 0;
+
+    do_throw(&except);
+}
+
+__noreturn void except_throwd(long group, long code, const char *msg, void *data)
+{
+    except_t except;
+
+    except.id.group = group;
+    except.id.code = code;
+    except.message = msg;
+    except.dyndata = data;
+
+    do_throw(&except);
+}
+
+__noreturn void except_vthrowf(long group, long code, const char *fmt,
+			       va_list vl)
+{
+    char *buf = except_alloc(XCEPT_BUFFER_SIZE);
+
+    vsnprintf(buf, XCEPT_BUFFER_SIZE, fmt, vl);
+    except_throwd(group, code, buf, buf);
+}
+
+__noreturn void except_throwf(long group, long code, const char *fmt, ...)
+{
+    va_list vl;
+
+    va_start (vl, fmt);
+    except_vthrowf(group, code, fmt, vl);
+    va_end (vl);
+}
+
+void (*except_unhandled_catcher(void (*new_catcher)(except_t *)))(except_t *)
+{
+    void (*old_catcher)(except_t *) = get_catcher();
+    set_catcher(new_catcher);
+    return old_catcher;
+}
+
+#undef except_code
+#undef except_group
+#undef except_message
+#undef except_data
+
+unsigned long except_code(except_t *ex)
+{
+    return ex->id.code;
+}
+
+unsigned long except_group(except_t *ex)
+{
+    return ex->id.group;
+}
+
+const char *except_message(except_t *ex)
+{
+    return ex->message;
+}
+
+void *except_data(except_t *ex)
+{
+    return ex->dyndata;
+}
+
+void *except_take_data(except_t *ex)
+{
+    void *data = ex->dyndata;
+    ex->dyndata = 0;
+    return data;
+}
+
+void except_set_allocator(void *(*alloc)(size_t), void (*dealloc)(void *))
+{
+    set_alloc(alloc);
+    set_dealloc(dealloc);
+}
+
+void *except_alloc(size_t size)
+{
+    void *ptr = get_alloc()(size);
+
+    if (ptr == 0)
+	except_throw(XCEPT_BAD_ALLOC, 0, "out of memory");
+    return ptr;
+}
+
+void except_free(void *ptr)
+{
+    get_dealloc()(ptr);
+}
diff --git a/include/except.h b/include/except.h
new file mode 100644
index 000000000000..ccf99d5d03d3
--- /dev/null
+++ b/include/except.h
@@ -0,0 +1,156 @@
+/*
+ * Portable Exception Handling for ANSI C.
+ * Copyright (C) 1999 Kaz Kylheku <kaz@ashi.footprints.net>
+ *
+ * modified for barebox:
+ * Copyright (C) 2019 Ahmad Fatoum
+ *
+ * Free Software License:
+ *
+ * All rights are reserved by the author, with the following exceptions:
+ * Permission is granted to freely reproduce and distribute this software,
+ * possibly in exchange for a fee, provided that this copyright notice appears
+ * intact. Permission is also granted to adapt this software to produce
+ * derivative works, as long as the modified versions carry this copyright
+ * notice and additional notices stating that the work has been modified.
+ * This source code may be translated into executable form and incorporated
+ * into proprietary software; there is no requirement for such software to
+ * contain a copyright notice related to this source.
+ *
+ * $Id: except.h,v 1.18.2.1 2001/07/25 03:37:06 kaz Exp $
+ * $Name: kazlib_1_20 $
+ */
+
+#ifndef XCEPT_H
+#define XCEPT_H
+
+#include <asm/setjmp.h>
+#include <stdlib.h>
+#include <stdarg.h>
+#include <linux/bug.h>
+
+#define LogicError			0
+#define RuntimeError			1
+#define OutOfMemoryError		2
+#define UndefinedInstructionException	3
+#define	SoftwareInterruptException	4
+#define	PrefetchAbortException		5
+#define	DataAbortException		6
+#define	FiqException			7
+#define	IrqException			8
+
+#define XCEPT_GROUP_ANY	0
+#define XCEPT_CODE_ANY	0
+#define XCEPT_BAD_ALLOC	1
+
+#define XCEPT_DATA_NONDYN(x) ((void *volatile)((unsigned long)x | 1))
+
+enum { except_no_call, except_call };
+
+typedef struct {
+	unsigned long except_group;
+	unsigned long except_code;
+} except_id_t;
+
+typedef struct {
+	except_id_t volatile except_id;
+	const char *volatile except_message;
+	void *volatile except_dyndata;
+} except_t;
+
+struct except_cleanup {
+	void (*except_func)(void *);
+	void *except_context;
+};
+
+struct except_catch {
+	const except_id_t *except_id;
+	size_t except_size;
+	except_t except_obj;
+	jmp_buf except_jmp;
+};
+
+enum except_stacktype {
+	XCEPT_CLEANUP, XCEPT_CATCHER
+};
+
+struct except_stacknode {
+	struct except_stacknode *except_down;
+	enum except_stacktype except_type;
+	union {
+		struct except_catch *except_catcher;	
+		struct except_cleanup *except_cleanup;
+	} except_info;
+};
+
+/* private functions made external so they can be used in macros */
+void except_setup_clean(struct except_stacknode *,
+			struct except_cleanup *, void (*)(void *), void *);
+void except_setup_try(struct except_stacknode *,
+		      struct except_catch *, const except_id_t [], size_t);
+struct except_stacknode *except_pop(void);
+
+/* public interface functions */
+int except_init(void);
+void except_deinit(void);
+__noreturn void except_rethrow(except_t *);
+__noreturn void except_throw(long, long, const char *);
+__noreturn void except_throwd(long, long, const char *, void *);
+__noreturn void except_vthrowf(long group, long code, const char *fmt, va_list vl);
+__noreturn void except_throwf(long, long, const char *, ...) __printf(3, 4);
+void (*except_unhandled_catcher(void (*)(except_t *)))(except_t *);
+unsigned long except_code(except_t *);
+unsigned long except_group(except_t *);
+const char *except_message(except_t *);
+void *except_data(except_t *);
+void *except_take_data(except_t *);
+void except_set_allocator(void *(*)(size_t), void (*)(void *));
+void *except_alloc(size_t);
+void except_free(void *);
+
+#define except_code(E) ((E)->except_id.except_code)
+#define except_group(E) ((E)->except_id.except_group)
+#define except_message(E) ((E)->except_message)
+#define except_data(E) ((E)->except_dyndata)
+
+/* void except_cleanup_push(void (*)(void *), void *); */
+#define except_cleanup_push(F, C) 				\
+{								\
+	struct except_stacknode except_sn;			\
+	struct except_cleanup except_cl;			\
+	except_setup_clean(&except_sn, &except_cl, F, C)
+
+/* void except_cleanup_pop(int); */
+#define except_cleanup_pop(E)					\
+	except_pop();						\
+	if (E)							\
+	except_cl.except_func(except_cl.except_context);	\
+}
+
+/* void except_checked_cleanup_pop(void (*)(void *), int); */
+#define except_checked_cleanup_pop(F, E)			\
+	except_pop();						\
+	WARN_ON(except_cl.except_func != (F));			\
+	if (E)							\
+	except_cl.except_func(except_cl.except_context);	\
+	}
+
+/* void except_try_push(const except_id_t [], size_t, except_t **); */
+#define except_try_push(ID, NUM, PPE)				\
+{								\
+	struct except_stacknode except_sn;			\
+	struct except_catch except_ch;				\
+	except_setup_try(&except_sn, &except_ch, ID, NUM);	\
+	if (setjmp(except_ch.except_jmp))			\
+	*(PPE) = &except_ch.except_obj;				\
+	else							\
+	*(PPE) = 0
+
+/* void except_try_pop(void); */
+#define except_try_pop()							\
+	if ((((unsigned long)except_ch.except_obj.except_dyndata) & 1) == 0)	\
+		except_free(except_ch.except_obj.except_dyndata);		\
+	except_pop();								\
+}
+
+#endif
diff --git a/include/exceptions.h b/include/exceptions.h
new file mode 100644
index 000000000000..8183b7f86fbb
--- /dev/null
+++ b/include/exceptions.h
@@ -0,0 +1,419 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright 1998 Gerald Combs, original Wireshark code
+ * Copyright 2019 Ahmad Fatoum, barebox port
+ *
+ */
+
+#ifndef __EXCEPTIONS_H__
+#define __EXCEPTIONS_H__
+
+#include "except.h"
+
+/* We've only one exception group, to make these macros simple */
+#define XCEPT_GROUP_BAREBOX 1
+
+#define CATCH_ERRORS \
+	CATCH3(LogicError, RuntimeError, OutOfMemoryError)
+
+#define CATCH_EXCEPTIONS \
+	CATCH6(UndefinedInstructionException, \
+		SoftwareInterruptException, \
+		PrefetchAbortException, \
+		DataAbortException, \
+		FiqException, \
+		IrqException)
+
+/* Usage:
+ *
+ * TRY {
+ * 	code;
+ * }
+ *
+ * CATCH(exception) {
+ * 	code;
+ * }
+ *
+ * CATCH2(exception1, exception2) {
+ * 	code;
+ * }
+ *
+ * CATCH3(exception1, exception2, exception3) {
+ * 	code;
+ * }
+ *
+ * CATCH4(exception1, exception2, exception3, exception4) {
+ * 	code;
+ * }
+ *
+ * CATCH5(exception1, exception2, exception3, exception4, exception5) {
+ * 	code;
+ * }
+ *
+ * CATCH6(exception1, exception2, exception3, exception4, exception5, exception6) {
+ * 	code;
+ * }
+ *
+ * CATCH7(exception1, exception2, exception3, exception4, exception5, exception6, exception7) {
+ * 	code;
+ * }
+ *
+ * CATCH8(exception1, exception2, exception3, exception4, exception5, exception6, exception7, exception8) {
+ * 	code;
+ * }
+ *
+ * CATCH9(exception1, exception2, exception3, exception4, exception5, exception6, exception7, exception8, exception9) {
+ * 	code;
+ * }
+ *
+ * CATCH_NONFATAL_ERRORS {
+ *	code;
+ * }
+ *
+ * CATCH_BOUNDS_ERRORS {
+ *	code;
+ * }
+ *
+ * CATCH_ALL {
+ * 	code;
+ * }
+ *
+ * FINALLY {
+ * 	code;
+ * }
+ *
+ * ENDTRY;
+ *
+ * ********* Never use 'goto' or 'return' inside the TRY, CATCH*, or
+ * ********* FINALLY blocks. Execution must proceed through ENDTRY before
+ * ********* branching out.
+ *
+ * This is really something like:
+ *
+ * {
+ * 	caught = FALSE:
+ * 	x = setjmp();
+ * 	if (x == 0) {
+ * 		<TRY code>
+ * 	}
+ * 	if (!caught && x == 1) {
+ * 		caught = TRUE;
+ * 		<CATCH(1) code>
+ * 	}
+ * 	if (!caught && x == 2) {
+ * 		caught = TRUE;
+ * 		<CATCH(2) code>
+ * 	}
+ * 	if (!caught && (x == 3 || x == 4)) {
+ * 		caught = TRUE;
+ * 		<CATCH2(3,4) code>
+ * 	}
+ * 	if (!caught && (x == 5 || x == 6 || x == 7)) {
+ * 		caught = TRUE;
+ * 		<CATCH3(5,6,7) code>
+ * 	}
+ * 	if (!caught && x != 0) {
+ *		caught = TRUE;
+ * 		<CATCH_ALL code>
+ * 	}
+ * 	<FINALLY code>
+ * 	if(!caught) {
+ *      	RETHROW(x)
+ * 	}
+ * }<ENDTRY tag>
+ *
+ * All CATCH's must precede a CATCH_ALL.
+ * FINALLY must occur after any CATCH or CATCH_ALL.
+ * ENDTRY marks the end of the TRY code.
+ * TRY and ENDTRY are the mandatory parts of a TRY block.
+ * CATCH, CATCH_ALL, and FINALLY are all optional (although
+ * you'll probably use at least one, otherwise why "TRY"?)
+ *
+ * GET_MESSAGE	returns string ptr to exception message
+ * 		when exception is thrown via THROW_MESSAGE()
+ *
+ * To throw/raise an exception.
+ *
+ * THROW(exception)
+ * RETHROW				rethrow the caught exception
+ *
+ * A cleanup callback is a function called in case an exception occurs
+ * and is not caught. It should be used to free any dynamically-allocated data.
+ * A pop or call_and_pop should occur at the same statement-nesting level
+ * as the push.
+ *
+ * CLEANUP_CB_PUSH(func, data)
+ * CLEANUP_CB_POP
+ * CLEANUP_CB_CALL_AND_POP
+ */
+
+/* we do up to three passes through the bit of code after except_try_push(),
+ * and except_state is used to keep track of where we are.
+ */
+#define EXCEPT_CAUGHT   1 /* exception has been caught, no need to rethrow at
+                           * ENDTRY */
+
+#define EXCEPT_RETHROWN 2 /* the exception was rethrown from a CATCH
+                           * block. Don't reenter the CATCH blocks, but do
+                           * execute FINALLY and rethrow at ENDTRY */
+
+#define EXCEPT_FINALLY  4 /* we've entered the FINALLY block - don't allow
+                           * RETHROW, and don't reenter FINALLY if a
+                           * different exception is thrown */
+
+#define TRY \
+{\
+	except_t *volatile exc; \
+	volatile int except_state = 0; \
+	static const except_id_t catch_spec[] = { \
+		{ XCEPT_GROUP_BAREBOX, XCEPT_CODE_ANY } }; \
+	except_try_push(catch_spec, 1, &exc); \
+	                                               \
+    	if(except_state & EXCEPT_CAUGHT)               \
+            except_state |= EXCEPT_RETHROWN;           \
+	except_state &= ~EXCEPT_CAUGHT;                \
+	                                               \
+	if (except_state == 0 && exc == 0)             \
+		/* user's code goes here */
+
+#define ENDTRY \
+	/* rethrow the exception if necessary */ \
+	if(!(except_state&EXCEPT_CAUGHT) && exc != 0)  \
+	    except_rethrow(exc);                 \
+	except_try_pop();\
+}
+
+/* the (except_state |= EXCEPT_CAUGHT) in the below is a way of setting
+ * except_state before the user's code, without disrupting the user's code if
+ * it's a one-liner.
+ */
+#define CATCH(x) \
+	if (except_state == 0 && exc != 0 && \
+	    exc->except_id.except_code == (x) && \
+	    (except_state |= EXCEPT_CAUGHT)) \
+		/* user's code goes here */
+
+#define CATCH2(x,y) \
+	if (except_state == 0 && exc != 0 && \
+	    (exc->except_id.except_code == (x) || \
+	     exc->except_id.except_code == (y)) && \
+	    (except_state|=EXCEPT_CAUGHT)) \
+		/* user's code goes here */
+
+#define CATCH3(x,y,z) \
+	if (except_state == 0 && exc != 0 && \
+	    (exc->except_id.except_code == (x) || \
+	     exc->except_id.except_code == (y) || \
+	     exc->except_id.except_code == (z)) && \
+	    (except_state|=EXCEPT_CAUGHT)) \
+		/* user's code goes here */
+
+#define CATCH4(w,x,y,z) \
+	if (except_state == 0 && exc != 0 && \
+	    (exc->except_id.except_code == (w) || \
+	     exc->except_id.except_code == (x) || \
+	     exc->except_id.except_code == (y) || \
+	     exc->except_id.except_code == (z)) && \
+	    (except_state|=EXCEPT_CAUGHT)) \
+		/* user's code goes here */
+
+#define CATCH5(v,w,x,y,z) \
+	if (except_state == 0 && exc != 0 && \
+	    (exc->except_id.except_code == (v) || \
+	     exc->except_id.except_code == (w) || \
+	     exc->except_id.except_code == (x) || \
+	     exc->except_id.except_code == (y) || \
+	     exc->except_id.except_code == (z)) && \
+	    (except_state|=EXCEPT_CAUGHT)) \
+		/* user's code goes here */
+
+#define CATCH6(u,v,w,x,y,z) \
+	if (except_state == 0 && exc != 0 && \
+	    (exc->except_id.except_code == (u) || \
+	     exc->except_id.except_code == (v) || \
+	     exc->except_id.except_code == (w) || \
+	     exc->except_id.except_code == (x) || \
+	     exc->except_id.except_code == (y) || \
+	     exc->except_id.except_code == (z)) && \
+	    (except_state|=EXCEPT_CAUGHT)) \
+		/* user's code goes here */
+
+#define CATCH7(t,u,v,w,x,y,z) \
+	if (except_state == 0 && exc != 0 && \
+	    (exc->except_id.except_code == (t) || \
+	     exc->except_id.except_code == (u) || \
+	     exc->except_id.except_code == (v) || \
+	     exc->except_id.except_code == (w) || \
+	     exc->except_id.except_code == (x) || \
+	     exc->except_id.except_code == (y) || \
+	     exc->except_id.except_code == (z)) && \
+	    (except_state|=EXCEPT_CAUGHT)) \
+		/* user's code goes here */
+
+#define CATCH8(s,t,u,v,w,x,y,z) \
+	if (except_state == 0 && exc != 0 && \
+	    (exc->except_id.except_code == (s) || \
+	    (exc->except_id.except_code == (t) || \
+	     exc->except_id.except_code == (u) || \
+	     exc->except_id.except_code == (v) || \
+	     exc->except_id.except_code == (w) || \
+	     exc->except_id.except_code == (x) || \
+	     exc->except_id.except_code == (y) || \
+	     exc->except_id.except_code == (z)) && \
+	    (except_state|=EXCEPT_CAUGHT)) \
+		/* user's code goes here */
+
+#define CATCH9(r,s,t,u,v,w,x,y,z) \
+	if (except_state == 0 && exc != 0 && \
+	    (exc->except_id.except_code == (r) || \
+	    (exc->except_id.except_code == (s) || \
+	    (exc->except_id.except_code == (t) || \
+	     exc->except_id.except_code == (u) || \
+	     exc->except_id.except_code == (v) || \
+	     exc->except_id.except_code == (w) || \
+	     exc->except_id.except_code == (x) || \
+	     exc->except_id.except_code == (y) || \
+	     exc->except_id.except_code == (z)) && \
+	    (except_state|=EXCEPT_CAUGHT)) \
+		/* user's code goes here */
+
+#define CATCH_ALL \
+	if (except_state == 0 && exc != 0 && \
+	    (except_state|=EXCEPT_CAUGHT)) \
+		/* user's code goes here */
+
+#define FINALLY \
+	if( !(except_state & EXCEPT_FINALLY) && (except_state|=EXCEPT_FINALLY)) \
+		/* user's code goes here */
+
+#define THROW(x) \
+	except_throw(XCEPT_GROUP_BAREBOX, (x), NULL)
+
+#define THROW_ON(cond, x) do { \
+	if ((cond)) \
+		except_throw(XCEPT_GROUP_BAREBOX, (x), NULL); \
+} while (0)
+
+#define THROW_MESSAGE(x, y) \
+	except_throw(XCEPT_GROUP_BAREBOX, (x), (y))
+
+#define THROW_MESSAGE_ON(cond, x, y) do { \
+	if ((cond)) \
+		except_throw(XCEPT_GROUP_BAREBOX, (x), (y)); \
+} while (0)
+
+#define THROW_DATA(x, s, d) \
+	except_throwd(XCEPT_GROUP_BAREBOX, (x), (s), (d))
+
+#define THROW_DATA_ON(cond, x, s, d) do { \
+	if ((cond)) \
+		except_throwd(XCEPT_GROUP_BAREBOX, (x), (s), (d)); \
+} while (0)
+
+/* Throws a formatted message, its memory is cleared after catching it. */
+#define THROW_FORMATTED(x, ...) \
+	except_throwf(XCEPT_GROUP_BAREBOX, (x), __VA_ARGS__)
+
+/* Like THROW_FORMATTED, but takes a va_list as an argument */
+#define VTHROW_FORMATTED(x, format, args) \
+	except_vthrowf(XCEPT_GROUP_BAREBOX, (x), format, args)
+
+#define GET_MESSAGE			except_message(exc)
+#define GET_DATA			except_data(exc)
+
+#define RETHROW                                     \
+    {                                               \
+        /* check we're in a catch block */          \
+        WARN_ON(except_state != EXCEPT_CAUGHT);     \
+	/* we can't use except_rethrow here, as that pops a catch block \
+	 * off the stack, and we don't want to do that, because we want to \
+	 * excecute the FINALLY {} block first.     \
+	 * except_throw doesn't provide an interface to rethrow an existing \
+	 * exception; however, longjmping back to except_try_push() has the \
+	 * desired effect.			    \
+	 *					    \
+	 * Note also that THROW and RETHROW should provide much the same \
+	 * functionality in terms of which blocks to enter, so any messing \
+	 * about with except_state in here would indicate that THROW is \
+	 * doing the wrong thing.                   \
+	 */					    \
+        longjmp(except_ch.except_jmp,1);            \
+    }
+
+#define EXCEPT_CODE			except_code(exc)
+
+/* Register cleanup functions in case an exception is thrown and not caught.
+ * From the Kazlib documentation, with modifications for use with the
+ * Wireshark-specific macros:
+ *
+ * CLEANUP_PUSH(func, arg)
+ *
+ *  The call to CLEANUP_PUSH shall be matched with a call to
+ *  CLEANUP_CALL_AND_POP or CLEANUP_POP which must occur in the same
+ *  statement block at the same level of nesting. This requirement allows
+ *  an implementation to provide a CLEANUP_PUSH macro which opens up a
+ *  statement block and a CLEANUP_POP which closes the statement block.
+ *  The space for the registered pointers can then be efficiently
+ *  allocated from automatic storage.
+ *
+ *  The CLEANUP_PUSH macro registers a cleanup handler that will be
+ *  called if an exception subsequently occurs before the matching
+ *  CLEANUP_[CALL_AND_]POP is executed, and is not intercepted and
+ *  handled by a try-catch region that is nested between the two.
+ *
+ *  The first argument to CLEANUP_PUSH is a pointer to the cleanup
+ *  handler, a function that returns nothing and takes a single
+ *  argument of type void*. The second argument is a void* value that
+ *  is registered along with the handler.  This value is what is passed
+ *  to the registered handler, should it be called.
+ *
+ *  Cleanup handlers are called in the reverse order of their nesting:
+ *  inner handlers are called before outer handlers.
+ *
+ *  The program shall not leave the cleanup region between
+ *  the call to the macro CLEANUP_PUSH and the matching call to
+ *  CLEANUP_[CALL_AND_]POP by means other than throwing an exception,
+ *  or calling CLEANUP_[CALL_AND_]POP.
+ *
+ *  Within the call to the cleanup handler, it is possible that new
+ *  exceptions may happen.  Such exceptions must be handled before the
+ *  cleanup handler terminates. If the call to the cleanup handler is
+ *  terminated by an exception, the behavior is undefined. The exception
+ *  which triggered the cleanup is not yet caught; thus the program
+ *  would be effectively trying to replace an exception with one that
+ *  isn't in a well-defined state.
+ *
+ *
+ * CLEANUP_POP and CLEANUP_CALL_AND_POP
+ *
+ *  A call to the CLEANUP_POP or CLEANUP_CALL_AND_POP macro shall match
+ *  each call to CLEANUP_PUSH which shall be in the same statement block
+ *  at the same nesting level.  It shall match the most recent such a
+ *  call that is not matched by a previous CLEANUP_[CALL_AND_]POP at
+ *  the same level.
+ *
+ *  These macros causes the registered cleanup handler to be removed. If
+ *  CLEANUP_CALL_AND_POP is called, the cleanup handler is called.
+ *  In that case, the registered context pointer is passed to the cleanup
+ *  handler. If CLEANUP_POP is called, the cleanup handler is not called.
+ *
+ *  The program shall not leave the region between the call to the
+ *  macro CLEANUP_PUSH and the matching call to CLEANUP_[CALL_AND_]POP
+ *  other than by throwing an exception, or by executing the
+ *  CLEANUP_CALL_AND_POP.
+ *
+ */
+
+
+#define CLEANUP_PUSH(f,a)		except_cleanup_push((f),(a))
+#define CLEANUP_POP			except_cleanup_pop(0)
+#define CLEANUP_CALL_AND_POP		except_cleanup_pop(1)
+
+/* Variants to allow nesting of except_cleanup_push w/o "shadowing" variables */
+#define CLEANUP_PUSH_PFX(pfx,f,a)	except_cleanup_push_pfx(pfx,(f),(a))
+#define CLEANUP_POP_PFX(pfx)		except_cleanup_pop_pfx(pfx,0)
+#define CLEANUP_CALL_AND_POP_PFX(pfx)	except_cleanup_pop_pfx(pfx,1)
+
+
+
+#endif /* __EXCEPTIONS_H__ */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
