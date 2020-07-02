Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jr15Y-0005AK-Ro
 for barebox@lists.infradead.org; Thu, 02 Jul 2020 15:25:25 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  2 Jul 2020 17:25:07 +0200
Message-Id: <20200702152507.13694-3-a.fatoum@pengutronix.de>
In-Reply-To: <20200702152507.13694-1-a.fatoum@pengutronix.de>
References: <20200702152507.13694-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 3/3] sandbox: include: <asm/types.h>: don't define
 INTERNAL_SIZE_T
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The INTERNAL_SIZE_T default is size_t, which already is 64-bit on 64-bit
platforms and 32-bit on 32-bit ones. We can thus drop the #define and go
back to the minimal <asm/types.h>.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/include/asm/types.h | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

diff --git a/arch/sandbox/include/asm/types.h b/arch/sandbox/include/asm/types.h
index 28046670f4e2..7b356a99eb66 100644
--- a/arch/sandbox/include/asm/types.h
+++ b/arch/sandbox/include/asm/types.h
@@ -1,15 +1,6 @@
-#ifndef __ASM_I386_TYPES_H
-#define __ASM_I386_TYPES_H
+#ifndef __ASM_SANDBOX_TYPES_H
+#define __ASM_SANDBOX_TYPES_H
 
 #include <asm-generic/int-ll64.h>
 
-#ifdef __x86_64__
-/*
- * This is used in dlmalloc. On X86_64 we need it to be
- * 64 bit
- */
-#define INTERNAL_SIZE_T unsigned long
-
-#endif
-
 #endif
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
