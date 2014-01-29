Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og107.obsmtp.com ([64.18.0.184])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W8SzP-0006jo-9O
 for barebox@lists.infradead.org; Wed, 29 Jan 2014 11:07:28 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Wed, 29 Jan 2014 11:06:50 +0000
Message-Id: <1390993612-26246-2-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1390993612-26246-1-git-send-email-renaud.barbier@ge.com>
References: <1390993612-26246-1-git-send-email-renaud.barbier@ge.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/3] ppc: remove bit operation headers file conflict
To: barebox@lists.infradead.org

Removed the ppc bit operation functions and definitions in the ppc
file asm/bitops.h since these are already defined in the asm-generic header
files. Moved ffs64 definition to the mpc85xx header files because
the function requires the inclusion of linux/log2.h which also includes
asm/bitops.h.

The conflict was noted when UBIFS was enabled in barebox.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/cpu-85xx/tlb.c                    |    2 +-
 arch/ppc/include/asm/bitops.h              |   46 +--------------------------
 arch/ppc/mach-mpc85xx/fsl_law.c            |    1 +
 arch/ppc/mach-mpc85xx/include/mach/ffs64.h |   20 ++++++++++++
 4 files changed, 24 insertions(+), 45 deletions(-)
 create mode 100644 arch/ppc/mach-mpc85xx/include/mach/ffs64.h

diff --git a/arch/ppc/cpu-85xx/tlb.c b/arch/ppc/cpu-85xx/tlb.c
index 3ffcfff..a2739d0 100644
--- a/arch/ppc/cpu-85xx/tlb.c
+++ b/arch/ppc/cpu-85xx/tlb.c
@@ -24,7 +24,7 @@
 #include <common.h>
 #include <asm/processor.h>
 #include <asm/config.h>
-#include <asm/bitops.h>
+#include <linux/log2.h>
 #include <mach/mmu.h>
 
 void e500_invalidate_tlb(u8 tlb)
diff --git a/arch/ppc/include/asm/bitops.h b/arch/ppc/include/asm/bitops.h
index 3b31d54..eea9e0c 100644
--- a/arch/ppc/include/asm/bitops.h
+++ b/arch/ppc/include/asm/bitops.h
@@ -6,13 +6,7 @@
 #define _PPC_BITOPS_H
 
 #include <asm/byteorder.h>
-
-extern void set_bit(int nr, volatile void *addr);
-extern void clear_bit(int nr, volatile void *addr);
-extern void change_bit(int nr, volatile void *addr);
-extern int test_and_set_bit(int nr, volatile void *addr);
-extern int test_and_clear_bit(int nr, volatile void *addr);
-extern int test_and_change_bit(int nr, volatile void *addr);
+#include <asm-generic/bitops/ops.h>
 
 /*
  * Arguably these bit operations don't imply any memory barrier or
@@ -143,13 +137,6 @@ extern __inline__ int test_and_change_bit(int nr, volatile void *addr)
 }
 #endif /* __INLINE_BITOPS */
 
-extern __inline__ int test_bit(int nr, __const__ volatile void *addr)
-{
-	__const__ unsigned int *p = (__const__ unsigned int *) addr;
-
-	return ((p[nr >> 5] >> (nr & 0x1f)) & 1) != 0;
-}
-
 /* Return the bit position of the most significant 1 bit in a word */
 extern __inline__ int __ilog2(unsigned int x)
 {
@@ -178,36 +165,6 @@ static inline int fls(unsigned int x)
 	return 32 - lz;
 }
 
-/*
- * fls64 - find last set bit in a 64-bit word
- * @x: the word to search
- *
- * This is defined in a similar way as the libc and compiler builtin
- * ffsll, but returns the position of the most significant set bit.
- *
- * fls64(value) returns 0 if value is 0 or the position of the last
- * set bit if value is nonzero. The last (most significant) bit is
- * at position 64.
- */
-
-static inline int fls64(__u64 x)
-{
-	__u32 h = x >> 32;
-	if (h)
-		return fls(h) + 32;
-	return fls(x);
-}
-
-static inline int __ilog2_u64(u64 n)
-{
-	return fls64(n) - 1;
-}
-
-static inline int ffs64(u64 x)
-{
-	return __ilog2_u64(x & -x) + 1ull;
-}
-
 #ifdef __KERNEL__
 
 /*
@@ -220,6 +177,7 @@ extern __inline__ int ffs(int x)
 	return __ilog2(x & -x) + 1;
 }
 
+#include <asm-generic/bitops/fls64.h>
 #include <asm-generic/bitops/hweight.h>
 
 #endif /* __KERNEL__ */
diff --git a/arch/ppc/mach-mpc85xx/fsl_law.c b/arch/ppc/mach-mpc85xx/fsl_law.c
index 34c039d..38902e3 100644
--- a/arch/ppc/mach-mpc85xx/fsl_law.c
+++ b/arch/ppc/mach-mpc85xx/fsl_law.c
@@ -24,6 +24,7 @@
 #include <common.h>
 #include <asm/config.h>
 #include <asm/fsl_law.h>
+#include <mach/ffs64.h>
 
 #define FSL_HW_NUM_LAWS FSL_NUM_LAWS
 
diff --git a/arch/ppc/mach-mpc85xx/include/mach/ffs64.h b/arch/ppc/mach-mpc85xx/include/mach/ffs64.h
new file mode 100644
index 0000000..045498c
--- /dev/null
+++ b/arch/ppc/mach-mpc85xx/include/mach/ffs64.h
@@ -0,0 +1,20 @@
+/*
+ * Copyright 2013 GE Intelligent Platforms, Inc.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+#include <linux/log2.h>
+
+static inline int ffs64(u64 x)
+{
+	return __ilog2_u64(x & -x) + 1ull;
+}
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
