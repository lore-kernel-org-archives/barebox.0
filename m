Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvHUI-0003Sr-6u
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 22:59:19 +0000
Received: by wyf23 with SMTP id 23so1676226wyf.36
	for <barebox@lists.infradead.org>; Thu, 03 Mar 2011 14:59:12 -0800 (PST)
From: franck.jullien@gmail.com
Date: Thu,  3 Mar 2011 23:58:39 +0100
Message-Id: <4d701d40.9009d80a.2cd3.5e8c@mx.google.com>
In-Reply-To: <n>
References: <n>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 25/54] Add arch/nios2/include/asm/bitops.h
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

Add arch/nios2/include/asm/bitops.h

---
 arch/nios2/include/asm/bitops.h |   45 +++++++++++++++++++++++++++++++++++++++
 1 files changed, 45 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/include/asm/bitops.h

diff --git a/arch/nios2/include/asm/bitops.h b/arch/nios2/include/asm/bitops.h
new file mode 100644
index 0000000..8108b0e
--- /dev/null
+++ b/arch/nios2/include/asm/bitops.h
@@ -0,0 +1,45 @@
+#ifndef __ASM_GENERIC_BITOPS_H
+#define __ASM_GENERIC_BITOPS_H
+
+/*
+ * For the benefit of those who are trying to port Linux to another
+ * architecture, here are some C-language equivalents.  You should
+ * recode these in the native assembly language, if at all possible.
+ *
+ * C language equivalents written by Theodore Ts'o, 9/26/92
+ */
+/*
+#include <asm/irqflags.h>
+#include <asm/compiler.h>
+*/
+/*
+ * clear_bit may not imply a memory barrier
+ */
+#ifndef smp_mb__before_clear_bit
+#define smp_mb__before_clear_bit()	smp_mb()
+#define smp_mb__after_clear_bit()	smp_mb()
+#endif
+/*
+#include <asm/__ffs.h>
+#include <asm/ffz.h>
+#include <asm/fls.h>
+#include <asm/__fls.h>
+#include <asm/fls64.h>
+#include <asm/find.h>
+*/
+#ifndef _LINUX_BITOPS_H
+#error only <linux/bitops.h> can be included directly
+#endif
+/*
+#include <asm/sched.h>
+#include <asm/ffs.h>
+#include <asm/hweight.h>
+#include <asm/lock.h>*/
+/*
+#include <asm/atomic.h>
+#include <asm/non-atomic.h>
+#include <asm/ext2-non-atomic.h>
+#include <asm/ext2-atomic.h>
+#include <asm/minix.h>*/
+
+#endif /* __ASM_GENERIC_BITOPS_H */
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
