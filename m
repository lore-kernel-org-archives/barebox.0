Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U4wmB-0000zz-05
 for barebox@lists.infradead.org; Mon, 11 Feb 2013 17:02:46 +0000
Received: from mail401.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 17725DC19B7
 for <barebox@lists.infradead.org>; Mon, 11 Feb 2013 18:13:01 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 11 Feb 2013 18:01:30 +0100
Message-Id: <1360602090-11095-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1360602090-11095-1-git-send-email-plagnioj@jcrosoft.com>
References: <1360602090-11095-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] arm: move outercase to cpu.c as some SoC as the ux500
 always need to flush the l2x0
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/cpu/cpu.c |   22 ++++++++++++++++++++--
 arch/arm/cpu/mmu.c |   15 ---------------
 arch/arm/cpu/mmu.h |    6 ++++++
 3 files changed, 26 insertions(+), 17 deletions(-)

diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index 7761f5c..5f697d7 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -34,6 +34,8 @@
 #include <asm/cache.h>
 #include <asm/ptrace.h>
 
+#include "mmu.h"
+
 /**
  * Enable processor's instruction cache
  */
@@ -67,6 +69,24 @@ int icache_status(void)
 	return (get_cr () & CR_I) != 0;
 }
 
+/*
+ * SoC like the ux500 have the l2x0 always enable
+ * with or without MMU enable
+ */
+struct outer_cache_fns outer_cache;
+
+/*
+ * Clean and invalide caches, disable MMU
+ */
+void mmu_disable(void)
+{
+	if (outer_cache.disable)
+		outer_cache.disable();
+
+	__mmu_cache_flush();
+	__mmu_cache_off();
+}
+
 /**
  * Disable MMU and D-cache, flush caches
  * @return 0 (always)
@@ -78,9 +98,7 @@ void arch_shutdown(void)
 {
 	uint32_t r;
 
-#ifdef CONFIG_MMU
 	mmu_disable();
-#endif
 	flush_icache();
 	/*
 	 * barebox normally does not use interrupts, but some functionalities
diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 73dd0d3..e065fb0 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -322,21 +322,6 @@ static int mmu_init(void)
 }
 mmu_initcall(mmu_init);
 
-struct outer_cache_fns outer_cache;
-
-/*
- * Clean and invalide caches, disable MMU
- */
-void mmu_disable(void)
-{
-
-	if (outer_cache.disable)
-		outer_cache.disable();
-
-	__mmu_cache_flush();
-	__mmu_cache_off();
-}
-
 void *dma_alloc_coherent(size_t size)
 {
 	void *ret;
diff --git a/arch/arm/cpu/mmu.h b/arch/arm/cpu/mmu.h
index 618968b..79ebc80 100644
--- a/arch/arm/cpu/mmu.h
+++ b/arch/arm/cpu/mmu.h
@@ -1,8 +1,14 @@
 #ifndef __ARM_MMU_H
 #define __ARM_MMU_H
 
+#ifdef CONFIG_MMU
 void __mmu_cache_on(void);
 void __mmu_cache_off(void);
 void __mmu_cache_flush(void);
+#else
+static inline void __mmu_cache_on(void) {}
+static inline void __mmu_cache_off(void) {}
+static inline void __mmu_cache_flush(void) {}
+#endif
 
 #endif /* __ARM_MMU_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
