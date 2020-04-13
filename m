Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNttB-0005Sd-VE
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 07:52:19 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1jNttA-0003R3-Rl
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 09:52:16 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1jNttA-0005Dm-II
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 09:52:16 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 13 Apr 2020 09:51:48 +0200
Message-Id: <20200413075204.17544-6-a.fatoum@pengutronix.de>
In-Reply-To: <20200413075204.17544-1-a.fatoum@pengutronix.de>
References: <20200413075204.17544-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 05/21] ARM: include: remove unused <asm/processor.h>
To: barebox@lists.infradead.org

File has been in source tree for 17 years and is unused.
Drop it. The only definition we might want out of the file is
cpu_relax(), which we already open code as barrier() with a comment in a
couple of places. Move the definition to <linux/barebox-wrapper.h>
and drop the file altogether.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/processor.h | 131 -------------------------------
 include/linux/barebox-wrapper.h  |   2 +
 2 files changed, 2 insertions(+), 131 deletions(-)
 delete mode 100644 arch/arm/include/asm/processor.h

diff --git a/arch/arm/include/asm/processor.h b/arch/arm/include/asm/processor.h
deleted file mode 100644
index d5dbab0ac283..000000000000
--- a/arch/arm/include/asm/processor.h
+++ /dev/null
@@ -1,131 +0,0 @@
-/*
- *  linux/include/asm-arm/processor.h
- *
- *  Copyright (C) 1995-2002 Russell King
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- */
-
-#ifndef __ASM_ARM_PROCESSOR_H
-#define __ASM_ARM_PROCESSOR_H
-
-/*
- * Default implementation of macro that returns current
- * instruction pointer ("program counter").
- */
-#define current_text_addr() ({ __label__ _l; _l: &&_l;})
-
-#define FP_SIZE 35
-
-struct fp_hard_struct {
-	unsigned int save[FP_SIZE];		/* as yet undefined */
-};
-
-struct fp_soft_struct {
-	unsigned int save[FP_SIZE];		/* undefined information */
-};
-
-union fp_state {
-	struct fp_hard_struct	hard;
-	struct fp_soft_struct	soft;
-};
-
-typedef unsigned long mm_segment_t;		/* domain register	*/
-
-#ifdef __KERNEL__
-
-#define EISA_bus 0
-#define MCA_bus 0
-#define MCA_bus__is_a_macro
-
-#include <asm/atomic.h>
-#include <asm/ptrace.h>
-#include <asm/proc/processor.h>
-#include <asm/types.h>
-
-union debug_insn {
-	u32	arm;
-	u16	thumb;
-};
-
-struct debug_entry {
-	u32			address;
-	union debug_insn	insn;
-};
-
-struct debug_info {
-	int			nsaved;
-	struct debug_entry	bp[2];
-};
-
-struct thread_struct {
-	atomic_t			refcount;
-							/* fault info	  */
-	unsigned long			address;
-	unsigned long			trap_no;
-	unsigned long			error_code;
-							/* floating point */
-	union fp_state			fpstate;
-							/* debugging	  */
-	struct debug_info		debug;
-							/* context info	  */
-	struct context_save_struct	*save;
-	EXTRA_THREAD_STRUCT
-};
-
-#define INIT_THREAD  {					\
-	refcount:	ATOMIC_INIT(1),			\
-	EXTRA_THREAD_STRUCT_INIT			\
-}
-
-/*
- * Return saved PC of a blocked thread.
- */
-static inline unsigned long thread_saved_pc(struct thread_struct *t)
-{
-	return t->save ? pc_pointer(t->save->pc) : 0;
-}
-
-static inline unsigned long thread_saved_fp(struct thread_struct *t)
-{
-	return t->save ? t->save->fp : 0;
-}
-
-/* Forward declaration, a strange C thing */
-struct task_struct;
-
-/* Free all resources held by a thread. */
-extern void release_thread(struct task_struct *);
-
-/* Copy and release all segment info associated with a VM */
-#define copy_segments(tsk, mm)		do { } while (0)
-#define release_segments(mm)		do { } while (0)
-
-unsigned long get_wchan(struct task_struct *p);
-
-#define THREAD_SIZE	(8192)
-
-extern struct task_struct *alloc_task_struct(void);
-extern void __free_task_struct(struct task_struct *);
-#define get_task_struct(p)	atomic_inc(&(p)->thread.refcount)
-#define free_task_struct(p)					\
- do {								\
-	if (atomic_dec_and_test(&(p)->thread.refcount))		\
-		__free_task_struct((p));			\
- } while (0)
-
-#define init_task	(init_task_union.task)
-#define init_stack	(init_task_union.stack)
-
-#define cpu_relax()	barrier()
-
-/*
- * Create a new kernel thread
- */
-extern int arch_kernel_thread(int (*fn)(void *), void *arg, unsigned long flags);
-
-#endif
-
-#endif /* __ASM_ARM_PROCESSOR_H */
diff --git a/include/linux/barebox-wrapper.h b/include/linux/barebox-wrapper.h
index e998932d1201..82c52dd93309 100644
--- a/include/linux/barebox-wrapper.h
+++ b/include/linux/barebox-wrapper.h
@@ -52,4 +52,6 @@ typedef int irqreturn_t;
 #define __clk_get_rate			clk_get_rate
 #define __clk_get_parent		clk_get_parent
 
+#define cpu_relax()	barrier()
+
 #endif /* __INCLUDE_LINUX_BAREBOX_WRAPPER_H */
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
