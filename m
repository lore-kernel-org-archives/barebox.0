Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X7KjF-0000vO-DI
 for barebox@lists.infradead.org; Wed, 16 Jul 2014 08:38:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 16 Jul 2014 10:37:52 +0200
Message-Id: <1405499873-6385-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1405499873-6385-1-git-send-email-s.hauer@pengutronix.de>
References: <1405499873-6385-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] ppc: Use generic find_*_bit functions
To: barebox@lists.infradead.org

The ppc implementation is identical to the generic implementation, so
use the generic one instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/ppc/Kconfig              |  1 +
 arch/ppc/include/asm/bitops.h | 44 +------------------------------------------
 2 files changed, 2 insertions(+), 43 deletions(-)

diff --git a/arch/ppc/Kconfig b/arch/ppc/Kconfig
index eaf60e0..7ebfa86 100644
--- a/arch/ppc/Kconfig
+++ b/arch/ppc/Kconfig
@@ -3,6 +3,7 @@ config PPC
 	select HAVE_CONFIGURABLE_TEXT_BASE
 	select HAS_KALLSYMS
 	select HAS_MODULES
+	select GENERIC_FIND_NEXT_BIT
 	select OFTREE
 	default y
 
diff --git a/arch/ppc/include/asm/bitops.h b/arch/ppc/include/asm/bitops.h
index eea9e0c..74f7f6d 100644
--- a/arch/ppc/include/asm/bitops.h
+++ b/arch/ppc/include/asm/bitops.h
@@ -182,49 +182,7 @@ extern __inline__ int ffs(int x)
 
 #endif /* __KERNEL__ */
 
-/*
- * This implementation of find_{first,next}_zero_bit was stolen from
- * Linus' asm-alpha/bitops.h.
- */
-#define find_first_zero_bit(addr, size) \
-	find_next_zero_bit((addr), (size), 0)
-
-extern __inline__ unsigned long find_next_zero_bit(void * addr,
-	unsigned long size, unsigned long offset)
-{
-	unsigned int * p = ((unsigned int *) addr) + (offset >> 5);
-	unsigned int result = offset & ~31UL;
-	unsigned int tmp;
-
-	if (offset >= size)
-		return size;
-	size -= result;
-	offset &= 31UL;
-	if (offset) {
-		tmp = *p++;
-		tmp |= ~0UL >> (32-offset);
-		if (size < 32)
-			goto found_first;
-		if (tmp != ~0U)
-			goto found_middle;
-		size -= 32;
-		result += 32;
-	}
-	while (size >= 32) {
-		if ((tmp = *p++) != ~0U)
-			goto found_middle;
-		result += 32;
-		size -= 32;
-	}
-	if (!size)
-		return result;
-	tmp = *p;
-found_first:
-	tmp |= ~0UL << size;
-found_middle:
-	return result + ffz(tmp);
-}
-
+#include <asm-generic/bitops/find.h>
 
 #define _EXT2_HAVE_ASM_BITOPS_
 
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
