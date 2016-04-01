Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1alxpj-0005Pq-BF
 for barebox@lists.infradead.org; Fri, 01 Apr 2016 12:05:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Apr 2016 14:05:18 +0200
Message-Id: <1459512319-32073-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1459512319-32073-1-git-send-email-s.hauer@pengutronix.de>
References: <1459512319-32073-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] ARM: Do not use last 64KiB of address space for barebox
To: Barebox List <barebox@lists.infradead.org>

The last 64KiB of address space may be used for the vector table at
0xffff0000, so we cannot use it for barebox. The easiest way to archieve
this is to never use the last 64KiB of memory.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/entry.c               | 3 ++-
 arch/arm/include/asm/barebox-arm.h | 2 +-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/entry.c b/arch/arm/cpu/entry.c
index 3b74c6a..0cdcfec 100644
--- a/arch/arm/cpu/entry.c
+++ b/arch/arm/cpu/entry.c
@@ -1,6 +1,7 @@
 #include <types.h>
 
 #include <asm/cache.h>
+#include <asm/barebox-arm.h>
 
 #include "entry.h"
 
@@ -26,7 +27,7 @@
 void __naked __noreturn barebox_arm_entry(unsigned long membase,
 					  unsigned long memsize, void *boarddata)
 {
-	arm_setup_stack(membase + memsize - 16);
+	arm_setup_stack(arm_mem_stack(membase, membase + memsize) + STACK_SIZE - 16);
 	arm_early_mmu_cache_invalidate();
 
 	if (IS_ENABLED(CONFIG_PBL_MULTI_IMAGES))
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 6713326..8e7b45c 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -97,7 +97,7 @@ void *barebox_arm_boot_dtb(void);
 static inline unsigned long arm_mem_stack(unsigned long membase,
 					  unsigned long endmem)
 {
-	return endmem - STACK_SIZE;
+	return endmem - SZ_64K - STACK_SIZE;
 }
 
 static inline unsigned long arm_mem_ttb(unsigned long membase,
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
