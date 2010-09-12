Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Oukm1-0004q3-3b
	for barebox@lists.infradead.org; Sun, 12 Sep 2010 11:31:06 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 12 Sep 2010 13:30:04 +0200
Message-Id: <1284291004-32335-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1283704919-26808-1-git-send-email-plagnioj@jcrosoft.com>
References: <1283704919-26808-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH v2] init: introduce __BARE_INIT for .section
	".text_bare_init.text"
To: barebox@lists.infradead.org

and make init.h availlable for assembly too

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/cpu/cache-armv4.S |    3 ++-
 arch/arm/cpu/cache-armv5.S |    3 ++-
 arch/arm/cpu/cache-armv6.S |    3 ++-
 arch/arm/cpu/cache-armv7.S |    3 ++-
 include/init.h             |    6 ++++++
 5 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/arch/arm/cpu/cache-armv4.S b/arch/arm/cpu/cache-armv4.S
index 3cec4dd..fc53653 100644
--- a/arch/arm/cpu/cache-armv4.S
+++ b/arch/arm/cpu/cache-armv4.S
@@ -1,4 +1,5 @@
 #include <linux/linkage.h>
+#include <init.h>
 
 #define CACHE_DLINESIZE 32
 
@@ -41,7 +42,7 @@ ENTRY(__mmu_cache_off)
 		mov	pc, lr
 ENDPROC(__mmu_cache_off)
 
-.section ".text_bare_init.text"
+__BARE_INIT
 ENTRY(__mmu_cache_flush)
 		mrc	p15, 0, r6, c0, c0	@ get processor ID
 		mov	r2, #64*1024		@ default: 32K dcache size (*2)
diff --git a/arch/arm/cpu/cache-armv5.S b/arch/arm/cpu/cache-armv5.S
index 9fb320f..d870e6b 100644
--- a/arch/arm/cpu/cache-armv5.S
+++ b/arch/arm/cpu/cache-armv5.S
@@ -1,4 +1,5 @@
 #include <linux/linkage.h>
+#include <init.h>
 
 #define CACHE_DLINESIZE 32
 
@@ -41,7 +42,7 @@ ENTRY(__mmu_cache_off)
 		mov	pc, lr
 ENDPROC(__mmu_cache_off)
 
-.section ".text_bare_init.text"
+__BARE_INIT
 ENTRY(__mmu_cache_flush)
 1:		mrc	p15, 0, r15, c7, c14, 3	@ test,clean,invalidate D cache
 		bne	1b
diff --git a/arch/arm/cpu/cache-armv6.S b/arch/arm/cpu/cache-armv6.S
index 25476d5..9de76da 100644
--- a/arch/arm/cpu/cache-armv6.S
+++ b/arch/arm/cpu/cache-armv6.S
@@ -1,4 +1,5 @@
 #include <linux/linkage.h>
+#include <init.h>
 
 #define HARVARD_CACHE
 #define CACHE_LINE_SIZE		32
@@ -43,7 +44,7 @@ ENTRY(__mmu_cache_off)
 #endif
 		mov	pc, lr
 
-.section ".text_bare_init.text"
+__BARE_INIT
 ENTRY(__mmu_cache_flush)
 		mov	r1, #0
 		mcr	p15, 0, r1, c7, c14, 0	@ clean+invalidate D
diff --git a/arch/arm/cpu/cache-armv7.S b/arch/arm/cpu/cache-armv7.S
index a303dc1..79bc243 100644
--- a/arch/arm/cpu/cache-armv7.S
+++ b/arch/arm/cpu/cache-armv7.S
@@ -1,4 +1,5 @@
 #include <linux/linkage.h>
+#include <init.h>
 
 ENTRY(__mmu_cache_on)
 		mov	r12, lr
@@ -49,7 +50,7 @@ ENTRY(__mmu_cache_off)
 		mov	pc, r12
 ENDPROC(__mmu_cache_on)
 
-.section ".text_bare_init.text"
+__BARE_INIT
 ENTRY(__mmu_cache_flush)
 		mrc	p15, 0, r10, c0, c1, 5	@ read ID_MMFR1
 		tst	r10, #0xf << 16		@ hierarchical cache (ARMv7)
diff --git a/include/init.h b/include/init.h
index 8692b68..2f4fac1 100644
--- a/include/init.h
+++ b/include/init.h
@@ -7,6 +7,10 @@
 #define __init
 #define __initdata
 
+/* For assembly routines */
+#define __BARE_INIT	.section ".text_bare_init.text","ax"
+
+#ifndef __ASSEMBLY__
 typedef int (*initcall_t)(void);
 
 #define __define_initcall(level,fn,id) \
@@ -40,5 +44,7 @@ typedef int (*initcall_t)(void);
  */
 #define __bare_init          __section(.text_bare_init.text)
 
+#endif
+
 #endif /* _INIT_H */
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
