Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lCfm6-00063o-OF
 for barebox@lists.infradead.org; Thu, 18 Feb 2021 09:39:07 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Feb 2021 10:39:01 +0100
Message-Id: <20210218093902.15354-4-a.fatoum@pengutronix.de>
In-Reply-To: <20210218093902.15354-1-a.fatoum@pengutronix.de>
References: <20210218093902.15354-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v3 4/5] lib: remove duplicate __div64_32
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

f933da28cf3f ("include: <linux/math64.h>: sync with upstream") imported
the div64 code from Linux, which also defines __div64_32 as a weak
symbol. __div64_32 was defined before in a separate file though and used
from do_div. Remove this duplication.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v2 -> v3:
  - no change
v1 -> v2:
  - no change
---
 lib/Makefile      |  2 --
 lib/div64.c       | 54 -----------------------------------------------
 lib/math/Makefile |  1 +
 3 files changed, 1 insertion(+), 56 deletions(-)
 delete mode 100644 lib/div64.c

diff --git a/lib/Makefile b/lib/Makefile
index 9c6f4133d77c..9b37d847e0cc 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -9,8 +9,6 @@ obj-y			+= kstrtox.o
 obj-y			+= vsprintf.o
 obj-$(CONFIG_KASAN)	+= kasan/
 pbl-$(CONFIG_PBL_CONSOLE) += vsprintf.o
-obj-y			+= div64.o
-pbl-y			+= div64.o
 obj-y			+= misc.o
 obj-$(CONFIG_PARAMETER)	+= parameter.o
 obj-y			+= xfuncs.o
diff --git a/lib/div64.c b/lib/div64.c
deleted file mode 100644
index 0196725ce9b2..000000000000
--- a/lib/div64.c
+++ /dev/null
@@ -1,54 +0,0 @@
-/*
- * Copyright (C) 2003 Bernardo Innocenti <bernie@develer.com>
- *
- * Based on former do_div() implementation from asm-parisc/div64.h:
- *	Copyright (C) 1999 Hewlett-Packard Co
- *	Copyright (C) 1999 David Mosberger-Tang <davidm@hpl.hp.com>
- *
- *
- * Generic C version of 64bit/32bit division and modulo, with
- * 64bit result and 32bit remainder.
- *
- * The fast case for (n>>32 == 0) is handled inline by do_div().
- *
- * Code generated for this function might be very inefficient
- * for some CPUs. __div64_32() can be overridden by linking arch-specific
- * assembly versions such as arch/ppc/lib/div64.S and arch/sh/lib/div64.S.
- */
-
-#include <linux/types.h>
-
-#include <asm-generic/div64.h>
-
-uint32_t __div64_32(uint64_t *n, uint32_t base)
-{
-	uint64_t rem = *n;
-	uint64_t b = base;
-	uint64_t res, d = 1;
-	uint32_t high = rem >> 32;
-
-	/* Reduce the thing a bit first */
-	res = 0;
-	if (high >= base) {
-		high /= base;
-		res = (uint64_t) high << 32;
-		rem -= (uint64_t) (high*base) << 32;
-	}
-
-	while ((int64_t)b > 0 && b < rem) {
-		b = b+b;
-		d = d+d;
-	}
-
-	do {
-		if (rem >= b) {
-			rem -= b;
-			res += d;
-		}
-		b >>= 1;
-		d >>= 1;
-	} while (d);
-
-	*n = res;
-	return rem;
-}
diff --git a/lib/math/Makefile b/lib/math/Makefile
index 3341a8e4744b..c2c892dd557c 100644
--- a/lib/math/Makefile
+++ b/lib/math/Makefile
@@ -1 +1,2 @@
 obj-y += div64.o
+pbl-y += div64.o
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
