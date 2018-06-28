Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fYRa1-00023W-S7
 for barebox@lists.infradead.org; Thu, 28 Jun 2018 07:43:02 +0000
Received: by mail-lf0-x241.google.com with SMTP id g21-v6so3462094lfb.4
 for <barebox@lists.infradead.org>; Thu, 28 Jun 2018 00:42:50 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 28 Jun 2018 10:39:43 +0300
Message-Id: <20180628073953.15384-3-antonynpavlov@gmail.com>
In-Reply-To: <20180628073953.15384-1-antonynpavlov@gmail.com>
References: <20180628073953.15384-1-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 02/12] MIPS: Use generic GCC library routines from lib/
To: barebox@lists.infradead.org

This is a port of Linux kernel commit

| commit 740129b36faf049e6845819144542a0455e1e285
| Author: Antony Pavlov <antonynpavlov@gmail.com>
| Date:   Wed Apr 11 08:50:19 2018 +0100
|
|     MIPS: Use generic GCC library routines from lib/

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Kconfig       |  3 +++
 arch/mips/lib/Makefile  |  5 -----
 arch/mips/lib/ashldi3.c | 28 ----------------------------
 arch/mips/lib/ashrdi3.c | 30 ------------------------------
 arch/mips/lib/libgcc.h  | 29 -----------------------------
 arch/mips/lib/lshrdi3.c | 28 ----------------------------
 6 files changed, 3 insertions(+), 120 deletions(-)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 359f67883c..5dd95b42a7 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -3,6 +3,9 @@
 #
 config MIPS
 	bool
+	select GENERIC_LIB_ASHLDI3
+	select GENERIC_LIB_ASHRDI3
+	select GENERIC_LIB_LSHRDI3
 	select HAS_KALLSYMS
 	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
 	select HAVE_CONFIGURABLE_TEXT_BASE
diff --git a/arch/mips/lib/Makefile b/arch/mips/lib/Makefile
index d25d0969fc..1a049c7914 100644
--- a/arch/mips/lib/Makefile
+++ b/arch/mips/lib/Makefile
@@ -1,8 +1,5 @@
 extra-$(CONFIG_GENERIC_LINKER_SCRIPT) += barebox.lds
 obj-$(CONFIG_CSRC_R4K_LIB) += csrc-r4k.o
-obj-y += lshrdi3.o
-obj-y += ashldi3.o
-obj-y += ashrdi3.o
 obj-y += cpu-probe.o
 obj-y += traps.o
 obj-y += genex.o
@@ -17,5 +14,3 @@ obj-$(CONFIG_CPU_MIPS64) += c-r4k.o
 
 obj-$(CONFIG_CMD_MIPS_CPUINFO) += cpuinfo.o
 obj-$(CONFIG_CMD_BOOTM)	+= bootm.o
-
-pbl-y	+= ashldi3.o
diff --git a/arch/mips/lib/ashldi3.c b/arch/mips/lib/ashldi3.c
deleted file mode 100644
index cbdbcbb6a9..0000000000
--- a/arch/mips/lib/ashldi3.c
+++ /dev/null
@@ -1,28 +0,0 @@
-#include <module.h>
-
-#include "libgcc.h"
-
-long long __ashldi3(long long u, word_type b)
-{
-	DWunion uu, w;
-	word_type bm;
-
-	if (b == 0)
-		return u;
-
-	uu.ll = u;
-	bm = 32 - b;
-
-	if (bm <= 0) {
-		w.s.low = 0;
-		w.s.high = (unsigned int) uu.s.low << -bm;
-	} else {
-		const unsigned int carries = (unsigned int) uu.s.low >> bm;
-
-		w.s.low = (unsigned int) uu.s.low << b;
-		w.s.high = ((unsigned int) uu.s.high << b) | carries;
-	}
-
-	return w.ll;
-}
-EXPORT_SYMBOL(__ashldi3);
diff --git a/arch/mips/lib/ashrdi3.c b/arch/mips/lib/ashrdi3.c
deleted file mode 100644
index 928d6d97ce..0000000000
--- a/arch/mips/lib/ashrdi3.c
+++ /dev/null
@@ -1,30 +0,0 @@
-#include <module.h>
-
-#include "libgcc.h"
-
-long long __ashrdi3(long long u, word_type b)
-{
-	DWunion uu, w;
-	word_type bm;
-
-	if (b == 0)
-		return u;
-
-	uu.ll = u;
-	bm = 32 - b;
-
-	if (bm <= 0) {
-		/* w.s.high = 1..1 or 0..0 */
-		w.s.high =
-		    uu.s.high >> 31;
-		w.s.low = uu.s.high >> -bm;
-	} else {
-		const unsigned int carries = (unsigned int) uu.s.high << bm;
-
-		w.s.high = uu.s.high >> b;
-		w.s.low = ((unsigned int) uu.s.low >> b) | carries;
-	}
-
-	return w.ll;
-}
-EXPORT_SYMBOL(__ashrdi3);
diff --git a/arch/mips/lib/libgcc.h b/arch/mips/lib/libgcc.h
deleted file mode 100644
index 593e598022..0000000000
--- a/arch/mips/lib/libgcc.h
+++ /dev/null
@@ -1,29 +0,0 @@
-#ifndef __ASM_LIBGCC_H
-#define __ASM_LIBGCC_H
-
-#include <asm/byteorder.h>
-
-typedef int word_type __attribute__ ((mode (__word__)));
-
-#ifdef __BIG_ENDIAN
-struct DWstruct {
-	int high, low;
-};
-#elif defined(__LITTLE_ENDIAN)
-struct DWstruct {
-	int low, high;
-};
-#else
-#error I feel sick.
-#endif
-
-typedef union {
-	struct DWstruct s;
-	long long ll;
-} DWunion;
-
-long long __lshrdi3(long long u, word_type b);
-long long __ashldi3(long long u, word_type b);
-long long __ashrdi3(long long u, word_type b);
-
-#endif /* __ASM_LIBGCC_H */
diff --git a/arch/mips/lib/lshrdi3.c b/arch/mips/lib/lshrdi3.c
deleted file mode 100644
index 74a4846e97..0000000000
--- a/arch/mips/lib/lshrdi3.c
+++ /dev/null
@@ -1,28 +0,0 @@
-#include <module.h>
-
-#include "libgcc.h"
-
-long long __lshrdi3(long long u, word_type b)
-{
-	DWunion uu, w;
-	word_type bm;
-
-	if (b == 0)
-		return u;
-
-	uu.ll = u;
-	bm = 32 - b;
-
-	if (bm <= 0) {
-		w.s.high = 0;
-		w.s.low = (unsigned int) uu.s.high >> -bm;
-	} else {
-		const unsigned int carries = (unsigned int) uu.s.high << bm;
-
-		w.s.high = (unsigned int) uu.s.high >> b;
-		w.s.low = ((unsigned int) uu.s.low >> b) | carries;
-	}
-
-	return w.ll;
-}
-EXPORT_SYMBOL(__lshrdi3);
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
