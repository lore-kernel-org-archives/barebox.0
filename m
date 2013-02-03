Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo4.mail-out.ovh.net ([91.121.62.11]
 helo=mo4.mail-out.ovh.net)
 by bombadil.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U21GZ-0007G3-Mk
 for barebox@lists.infradead.org; Sun, 03 Feb 2013 15:14:00 +0000
Received: from mail403.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 5FB36104ED82
 for <barebox@lists.infradead.org>; Sun,  3 Feb 2013 16:22:03 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  3 Feb 2013 16:10:32 +0100
Message-Id: <1359904236-11622-32-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359904236-11622-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130203150333.GE18068@game.jcrosoft.org>
 <1359904236-11622-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 32/36] ARM: Enable mmu early
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

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
index 0599c57..a825e9f 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -32,7 +32,7 @@
 #include <asm/pgtable.h>
 #include <asm/cache.h>
 
-#include "mmu.h"
+#include "mmu-early.h"
 
 unsigned long free_mem_ptr;
 unsigned long free_mem_end_ptr;
@@ -83,6 +83,12 @@ static noinline __noreturn void __barebox_arm_entry(uint32_t membase,
 
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
index a621161..d90b244 100644
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
@@ -38,6 +41,15 @@ static noinline __noreturn void __start(uint32_t membase, uint32_t memsize,
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
index 595e91f..3f6c11e 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -114,6 +114,15 @@ config MMU
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
