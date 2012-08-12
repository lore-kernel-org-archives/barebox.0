Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T0ZBd-0004Kb-Dc
 for barebox@lists.infradead.org; Sun, 12 Aug 2012 14:30:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 12 Aug 2012 16:30:32 +0200
Message-Id: <1344781832-17978-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1344781832-17978-1-git-send-email-s.hauer@pengutronix.de>
References: <1344781832-17978-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] create a common ARM flush_icache function
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start-pbl.c     |    7 +++----
 arch/arm/cpu/start.c         |    4 ++--
 arch/arm/include/asm/cache.h |    9 +++++++++
 3 files changed, 14 insertions(+), 6 deletions(-)
 create mode 100644 arch/arm/include/asm/cache.h

diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index 1b67e2a..3f2eb07 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -29,6 +29,7 @@
 #include <asm-generic/memory_layout.h>
 #include <asm/sections.h>
 #include <asm/pgtable.h>
+#include <asm/cache.h>
 
 #include "mmu.h"
 
@@ -113,8 +114,7 @@ static void barebox_uncompress(void *compressed_start, unsigned int len)
 	if (use_mmu)
 		mmu_disable();
 
-	/* flush I-cache before jumping to the uncompressed binary */
-	__asm__ __volatile__("mcr p15, 0, %0, c7, c5, 0" : : "r" (0));
+	flush_icache();
 
 	barebox();
 }
@@ -173,8 +173,7 @@ copy_link:
 	/* clear bss */
 	memset(__bss_start, 0, __bss_stop - __bss_start);
 
-	/* flush I-cache before jumping to the copied binary */
-	__asm__ __volatile__("mcr p15, 0, %0, c7, c5, 0" : : "r" (0));
+	flush_icache();
 
 	r = (unsigned int)&barebox_uncompress;
 	/* call barebox_uncompress with its absolute address */
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 8365a75..07e7dfe 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -26,6 +26,7 @@
 #include <asm/barebox-arm-head.h>
 #include <asm-generic/memory_layout.h>
 #include <asm/sections.h>
+#include <asm/cache.h>
 
 #ifdef CONFIG_PBL_IMAGE
 /*
@@ -80,8 +81,7 @@ void __naked __section(.text_ll_return) board_init_lowlevel_return(void)
 	/* clear bss */
 	memset(__bss_start, 0, __bss_stop - __bss_start);
 
-	/* flush I-cache before jumping to the copied binary */
-	__asm__ __volatile__("mcr p15, 0, %0, c7, c5, 0" : : "r" (0));
+	flush_icache();
 
 	/* call start_barebox with its absolute address */
 	r = (unsigned int)&start_barebox;
diff --git a/arch/arm/include/asm/cache.h b/arch/arm/include/asm/cache.h
new file mode 100644
index 0000000..ff79749
--- /dev/null
+++ b/arch/arm/include/asm/cache.h
@@ -0,0 +1,9 @@
+#ifndef __ASM_CACHE_H
+#define __ASM_CACHE_H
+
+static inline void flush_icache(void)
+{
+	asm volatile("mcr p15, 0, %0, c7, c5, 0" : : "r" (0));
+}
+
+#endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
