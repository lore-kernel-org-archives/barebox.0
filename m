Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo4.mail-out.ovh.net ([91.121.62.11]
 helo=mo4.mail-out.ovh.net)
 by bombadil.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U21GZ-0007G4-Q5
 for barebox@lists.infradead.org; Sun, 03 Feb 2013 15:14:00 +0000
Received: from mail403.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 6CE10104E9FF
 for <barebox@lists.infradead.org>; Sun,  3 Feb 2013 16:22:03 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  3 Feb 2013 16:10:33 +0100
Message-Id: <1359904236-11622-33-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 33/36] ARM: Automatically determine malloc size
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start.c  |   28 ++++++++++++++++++++++++++++
 arch/arm/lib/Makefile |    1 -
 arch/arm/lib/arm.c    |   14 --------------
 3 files changed, 28 insertions(+), 15 deletions(-)
 delete mode 100644 arch/arm/lib/arm.c

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index d90b244..cd34d9c 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -35,6 +35,7 @@ static noinline __noreturn void __start(uint32_t membase, uint32_t memsize,
 		uint32_t boarddata)
 {
 	unsigned long endmem = membase + memsize;
+	unsigned long malloc_start, malloc_end;
 
 	setup_c();
 
@@ -50,6 +51,33 @@ static noinline __noreturn void __start(uint32_t membase, uint32_t memsize,
 			mmu_early_enable(membase, memsize, endmem);
 	}
 
+	if ((unsigned long)_text > membase + memsize ||
+			(unsigned long)_text < membase)
+		/*
+		 * barebox is either outside SDRAM or in another
+		 * memory bank, so we can use the whole bank for
+		 * malloc.
+		 */
+		malloc_end = endmem;
+	else
+		malloc_end = (unsigned long)_text;
+
+	/*
+	 * Maximum malloc space is the Kconfig value if given
+	 * or 64MB.
+	 */
+	if (MALLOC_SIZE > 0) {
+		malloc_start = malloc_end - MALLOC_SIZE;
+		if (malloc_start < membase)
+			malloc_start = membase;
+	} else {
+		malloc_start = malloc_end - (malloc_end - membase) / 2;
+		if (malloc_end - malloc_start > SZ_64M)
+			malloc_start = malloc_end - SZ_64M;
+	}
+
+	mem_malloc_init((void *)malloc_start, (void *)malloc_end - 1);
+
 	start_barebox();
 }
 
diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
index 2e624cd..3ea695c 100644
--- a/arch/arm/lib/Makefile
+++ b/arch/arm/lib/Makefile
@@ -4,7 +4,6 @@ obj-$(CONFIG_CMD_BOOTZ)	+= bootz.o
 obj-$(CONFIG_CMD_BOOTU)	+= bootu.o
 obj-y	+= div0.o
 obj-y	+= findbit.o
-obj-y	+= arm.o
 obj-y	+= io.o
 obj-y	+= io-readsb.o
 obj-y	+= io-readsw-armv4.o
diff --git a/arch/arm/lib/arm.c b/arch/arm/lib/arm.c
deleted file mode 100644
index 80b62e9..0000000
--- a/arch/arm/lib/arm.c
+++ /dev/null
@@ -1,14 +0,0 @@
-#include <common.h>
-#include <init.h>
-#include <memory.h>
-#include <asm/barebox-arm.h>
-#include <asm-generic/memory_layout.h>
-
-static int arm_mem_malloc_init(void)
-{
-	mem_malloc_init((void *)MALLOC_BASE,
-			(void *)(MALLOC_BASE + MALLOC_SIZE - 1));
-	return 0;
-}
-
-core_initcall(arm_mem_malloc_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
