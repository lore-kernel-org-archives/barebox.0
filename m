Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TzPla-0007J2-H6
 for barebox@lists.infradead.org; Sun, 27 Jan 2013 10:47:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 27 Jan 2013 11:46:59 +0100
Message-Id: <1359283623-1782-31-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1359283623-1782-1-git-send-email-s.hauer@pengutronix.de>
References: <1359283623-1782-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 30/34] ARM: Enable mmu early
To: barebox@lists.infradead.org

This optionally enabled the MMU in the PBL or during early startup for
the non PBL case. The regular MMU init code will pickup the already enabled
MMU later. This might complicate debugging early code, so this has been
made optional.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start-pbl.c |    8 +++++++-
 arch/arm/cpu/start.c     |   12 ++++++++++++
 common/Kconfig           |    9 +++++++++
 3 files changed, 28 insertions(+), 1 deletion(-)

diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index 96a9dcf..b93f5a3 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -31,7 +31,7 @@
 #include <asm/pgtable.h>
 #include <asm/cache.h>
 
-#include "mmu.h"
+#include "mmu-early.h"
 
 unsigned long free_mem_ptr;
 unsigned long free_mem_end_ptr;
@@ -101,6 +101,12 @@ static noinline __noreturn void __barebox_arm_entry(uint32_t membase,
 
 	setup_c();
 
+	if (IS_ENABLED(CONFIG_MMU_EARLY)) {
+		endmem &= ~0x3fff;
+		endmem -= SZ_16K; /* ttb */
+		mmu_early_enable(membase, memsize, endmem);
+	}
+
 	endmem -= SZ_128K; /* early malloc */
 	free_mem_ptr = endmem;
 	free_mem_end_ptr = free_mem_ptr + SZ_128K;
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index b77b070..b25592c 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -19,6 +19,7 @@
 
 #include <common.h>
 #include <init.h>
+#include <sizes.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
 #include <asm-generic/memory_layout.h>
@@ -26,6 +27,8 @@
 #include <asm/cache.h>
 #include <memory.h>
 
+#include "mmu-early.h"
+
 unsigned long arm_stack_top;
 
 static noinline __noreturn void __start(uint32_t membase, uint32_t memsize,
@@ -39,6 +42,15 @@ static noinline __noreturn void __start(uint32_t membase, uint32_t memsize,
 	arm_stack_top = endmem;
 	endmem -= STACK_SIZE; /* Stack */
 
+	if (IS_ENABLED(CONFIG_MMU_EARLY)) {
+
+		endmem &= ~0x3fff;
+		endmem -= SZ_16K; /* ttb */
+
+		if (!IS_ENABLED(CONFIG_PBL_IMAGE))
+			mmu_early_enable(membase, memsize, endmem);
+	}
+
 	start_barebox();
 }
 
diff --git a/common/Kconfig b/common/Kconfig
index 532755b..22155b3 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -154,6 +154,15 @@ config MMU
 	  to enable the data cache which depends on the MMU. See Documentation/mmu.txt
 	  for further information.
 
+config MMU_EARLY
+	bool "Enable MMU early"
+	depends on ARM
+	depends on MMU
+	default y
+	help
+	  This enables the MMU during early startup. This speeds up things during startup
+	  of barebox, but may lead to harder to debug code. If unsure say yes here.
+
 config HAVE_CONFIGURABLE_TEXT_BASE
 	bool
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
