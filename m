Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOamF-00027m-BX
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 21:03:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Oct 2012 23:03:33 +0200
Message-Id: <1350507817-7819-25-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1350507817-7819-1-git-send-email-s.hauer@pengutronix.de>
References: <1350507817-7819-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 24/28] ARM: Determine base and size of malloc space from SDRAM
To: barebox@lists.infradead.org

Now that we know how where to find memory we no longer depend on hardcoded
values. If no malloc size has been specified in Kconfig set up the malloc
space based on the available SDRAM. We use the SDRAM base up to TEXT_BASE
for malloc and unused memory where we put the kernel later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start.c |   43 +++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 41 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 901dc6d..163a636 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -25,6 +25,7 @@
 #include <asm/sections.h>
 #include <asm/cache.h>
 #include <memory.h>
+#include <sizes.h>
 
 static uint32_t __barebox_arm_boarddata;
 
@@ -41,10 +42,48 @@ uint32_t barebox_arm_boarddata(void)
 static noinline void __start(uint32_t membase, uint32_t memsize,
 		uint32_t boarddata)
 {
+	unsigned long malloc_start, malloc_end;
+
 	setup_c();
 
-	mem_malloc_init((void *)MALLOC_BASE,
-			(void *)(MALLOC_BASE + MALLOC_SIZE - 1));
+	if ((unsigned long)_text > membase + memsize ||
+			(unsigned long) _text < membase)
+		/*
+		 * barebox is either outside SDRAM or in another
+		 * memory bank, so we can use the whole bank for
+		 * malloc.
+		 */
+		malloc_end = membase + memsize - 1;
+	else
+		malloc_end = (unsigned long)_text - 1;
+
+	if (MALLOC_SIZE > 0) {
+		/*
+		 * malloc size has been configured in Kconfig. Use it, but
+		 * check if it's outside the region we are provided.
+		 */
+		malloc_start = malloc_end - MALLOC_SIZE + 1;
+		if (malloc_start < membase)
+			malloc_start = membase;
+	} else {
+		/*
+		 * No memory size given in Kconfig, try to make the best out of the
+		 * available space.
+		 *
+		 * We need space for malloc and space to put the kernel outside the
+		 * malloc space later. Divide available memory into two parts.
+		 */
+		malloc_start = (membase + malloc_end) / 2;
+
+		/*
+		 * Limit space we do not use for malloc to 16MB
+		 */
+		if (malloc_start - membase > SZ_16M)
+			malloc_start = membase + SZ_16M;
+	}
+
+	mem_malloc_init((void *)malloc_start,
+			(void *)malloc_end);
 
 	__barebox_arm_boarddata = boarddata;
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
