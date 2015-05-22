Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YvgBD-0003Gd-QJ
 for barebox@lists.infradead.org; Fri, 22 May 2015 06:11:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 May 2015 08:10:59 +0200
Message-Id: <1432275071-28554-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1432275071-28554-1-git-send-email-s.hauer@pengutronix.de>
References: <1432275071-28554-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/14] drop __BITS_PER_LONG
To: Barebox List <barebox@lists.infradead.org>

The kernel has __BITS_PER_LONG and BITS_PER_LONG. The formaer
is needed for architectures which support 32bit userspace on a
64bit kernel. This is not relevant for barebox, so drop
__BITS_PER_LONG and use BITS_PER_LONG only.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/mips/include/asm/bitsperlong.h |  4 +---
 include/asm-generic/bitsperlong.h   | 22 ----------------------
 include/asm-generic/swab.h          |  2 +-
 3 files changed, 2 insertions(+), 26 deletions(-)

diff --git a/arch/mips/include/asm/bitsperlong.h b/arch/mips/include/asm/bitsperlong.h
index 3e4c10a..4171216 100644
--- a/arch/mips/include/asm/bitsperlong.h
+++ b/arch/mips/include/asm/bitsperlong.h
@@ -1,8 +1,6 @@
 #ifndef __ASM_MIPS_BITSPERLONG_H
 #define __ASM_MIPS_BITSPERLONG_H
 
-#define __BITS_PER_LONG _MIPS_SZLONG
-
-#include <asm-generic/bitsperlong.h>
+#define BITS_PER_LONG _MIPS_SZLONG
 
 #endif /* __ASM_MIPS_BITSPERLONG_H */
diff --git a/include/asm-generic/bitsperlong.h b/include/asm-generic/bitsperlong.h
index 4ae54e0..bb98650 100644
--- a/include/asm-generic/bitsperlong.h
+++ b/include/asm-generic/bitsperlong.h
@@ -1,32 +1,10 @@
 #ifndef __ASM_GENERIC_BITS_PER_LONG
 #define __ASM_GENERIC_BITS_PER_LONG
 
-/*
- * There seems to be no way of detecting this automatically from user
- * space, so 64 bit architectures should override this in their
- * bitsperlong.h. In particular, an architecture that supports
- * both 32 and 64 bit user space must not rely on CONFIG_64BIT
- * to decide it, but rather check a compiler provided macro.
- */
-#ifndef __BITS_PER_LONG
-#define __BITS_PER_LONG 32
-#endif
-
-#ifdef __KERNEL__
-
 #ifdef CONFIG_64BIT
 #define BITS_PER_LONG 64
 #else
 #define BITS_PER_LONG 32
 #endif /* CONFIG_64BIT */
 
-/*
- * FIXME: The check currently breaks x86-64 build, so it's
- * temporarily disabled. Please fix x86-64 and reenable
- */
-#if 0 && BITS_PER_LONG != __BITS_PER_LONG
-#error Inconsistent word size. Check asm/bitsperlong.h
-#endif
-
-#endif /* __KERNEL__ */
 #endif /* __ASM_GENERIC_BITS_PER_LONG */
diff --git a/include/asm-generic/swab.h b/include/asm-generic/swab.h
index a8e9029..3ab5add 100644
--- a/include/asm-generic/swab.h
+++ b/include/asm-generic/swab.h
@@ -9,7 +9,7 @@
  * valid if the compiler supports 64 bit data types.
  */
 
-#if __BITS_PER_LONG == 32
+#if BITS_PER_LONG == 32
 #if defined(__GNUC__) && !defined(__STRICT_ANSI__) || defined(__KERNEL__)
 #define __SWAB_64_THRU_32__
 #endif
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
