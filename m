Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY2l0-0008RB-FJ
 for barebox@lists.infradead.org; Mon, 11 May 2020 07:21:51 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 11 May 2020 09:21:31 +0200
Message-Id: <20200511072140.29610-15-a.fatoum@pengutronix.de>
In-Reply-To: <20200511072140.29610-1-a.fatoum@pengutronix.de>
References: <20200511072140.29610-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 14/23] ARM: atomic.h: move generic implementation to
 asm-generic
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

For easier code-sharing, the UBIFS code still uses the Linux atomic
accessors.  Make porting it to sandbox easier, by providing these
functions for all platforms.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/atomic.h | 108 +---------------------------------
 include/asm-generic/atomic.h  |  99 +++++++++++++++++++++++++++++++
 2 files changed, 102 insertions(+), 105 deletions(-)
 create mode 100644 include/asm-generic/atomic.h

diff --git a/arch/arm/include/asm/atomic.h b/arch/arm/include/asm/atomic.h
index 9b79506b594b..6abe62a278e9 100644
--- a/arch/arm/include/asm/atomic.h
+++ b/arch/arm/include/asm/atomic.h
@@ -1,111 +1,9 @@
-/*
- *  linux/include/asm-arm/atomic.h
- *
- *  Copyright (c) 1996 Russell King.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- *  Changelog:
- *   27-06-1996	RMK	Created
- *   13-04-1997	RMK	Made functions atomic!
- *   07-12-1997	RMK	Upgraded for v2.1.
- *   26-08-1998	PJB	Added #ifdef __KERNEL__
- */
+// SPDX-License-Identifier: GPL2.0
+
 #ifndef __ASM_ARM_ATOMIC_H
 #define __ASM_ARM_ATOMIC_H
 
-#ifdef CONFIG_SMP
-#error SMP not supported
-#endif
-
-typedef struct { volatile int counter; } atomic_t;
-
-#define ATOMIC_INIT(i)	{ (i) }
-
-#ifdef __KERNEL__
 #include <asm/proc-armv/system.h>
+#include <asm-generic/atomic.h>
 
-#define atomic_read(v)	((v)->counter)
-#define atomic_set(v,i)	(((v)->counter) = (i))
-
-static inline void atomic_add(int i, volatile atomic_t *v)
-{
-	unsigned long flags = 0;
-
-	local_irq_save(flags);
-	v->counter += i;
-	local_irq_restore(flags);
-}
-
-static inline void atomic_sub(int i, volatile atomic_t *v)
-{
-	unsigned long flags = 0;
-
-	local_irq_save(flags);
-	v->counter -= i;
-	local_irq_restore(flags);
-}
-
-static inline void atomic_inc(volatile atomic_t *v)
-{
-	unsigned long flags = 0;
-
-	local_irq_save(flags);
-	v->counter += 1;
-	local_irq_restore(flags);
-}
-
-static inline void atomic_dec(volatile atomic_t *v)
-{
-	unsigned long flags = 0;
-
-	local_irq_save(flags);
-	v->counter -= 1;
-	local_irq_restore(flags);
-}
-
-static inline int atomic_dec_and_test(volatile atomic_t *v)
-{
-	unsigned long flags = 0;
-	int val;
-
-	local_irq_save(flags);
-	val = v->counter;
-	v->counter = val -= 1;
-	local_irq_restore(flags);
-
-	return val == 0;
-}
-
-static inline int atomic_add_negative(int i, volatile atomic_t *v)
-{
-	unsigned long flags = 0;
-	int val;
-
-	local_irq_save(flags);
-	val = v->counter;
-	v->counter = val += i;
-	local_irq_restore(flags);
-
-	return val < 0;
-}
-
-static inline void atomic_clear_mask(unsigned long mask, unsigned long *addr)
-{
-	unsigned long flags = 0;
-
-	local_irq_save(flags);
-	*addr &= ~mask;
-	local_irq_restore(flags);
-}
-
-/* Atomic operations are already serializing on ARM */
-#define smp_mb__before_atomic_dec()	barrier()
-#define smp_mb__after_atomic_dec()	barrier()
-#define smp_mb__before_atomic_inc()	barrier()
-#define smp_mb__after_atomic_inc()	barrier()
-
-#endif
 #endif
diff --git a/include/asm-generic/atomic.h b/include/asm-generic/atomic.h
new file mode 100644
index 000000000000..6357b66a5304
--- /dev/null
+++ b/include/asm-generic/atomic.h
@@ -0,0 +1,99 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ *  based on linux/include/asm-arm/atomic.h
+ *
+ *  Copyright (c) 1996 Russell King.
+ */
+
+#ifndef __ASM_GENERIC_ATOMIC_H
+#define __ASM_GENERIC_ATOMIC_H
+
+#ifdef CONFIG_SMP
+#error SMP not supported
+#endif
+
+typedef struct { volatile int counter; } atomic_t;
+
+#define ATOMIC_INIT(i)	{ (i) }
+
+#define atomic_read(v)	((v)->counter)
+#define atomic_set(v,i)	(((v)->counter) = (i))
+
+static inline void atomic_add(int i, volatile atomic_t *v)
+{
+	unsigned long flags = 0;
+
+	local_irq_save(flags);
+	v->counter += i;
+	local_irq_restore(flags);
+}
+
+static inline void atomic_sub(int i, volatile atomic_t *v)
+{
+	unsigned long flags = 0;
+
+	local_irq_save(flags);
+	v->counter -= i;
+	local_irq_restore(flags);
+}
+
+static inline void atomic_inc(volatile atomic_t *v)
+{
+	unsigned long flags = 0;
+
+	local_irq_save(flags);
+	v->counter += 1;
+	local_irq_restore(flags);
+}
+
+static inline void atomic_dec(volatile atomic_t *v)
+{
+	unsigned long flags = 0;
+
+	local_irq_save(flags);
+	v->counter -= 1;
+	local_irq_restore(flags);
+}
+
+static inline int atomic_dec_and_test(volatile atomic_t *v)
+{
+	unsigned long flags = 0;
+	int val;
+
+	local_irq_save(flags);
+	val = v->counter;
+	v->counter = val -= 1;
+	local_irq_restore(flags);
+
+	return val == 0;
+}
+
+static inline int atomic_add_negative(int i, volatile atomic_t *v)
+{
+	unsigned long flags = 0;
+	int val;
+
+	local_irq_save(flags);
+	val = v->counter;
+	v->counter = val += i;
+	local_irq_restore(flags);
+
+	return val < 0;
+}
+
+static inline void atomic_clear_mask(unsigned long mask, unsigned long *addr)
+{
+	unsigned long flags = 0;
+
+	local_irq_save(flags);
+	*addr &= ~mask;
+	local_irq_restore(flags);
+}
+
+/* Atomic operations are already serializing on ARM */
+#define smp_mb__before_atomic_dec()	barrier()
+#define smp_mb__after_atomic_dec()	barrier()
+#define smp_mb__before_atomic_inc()	barrier()
+#define smp_mb__after_atomic_inc()	barrier()
+
+#endif
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
