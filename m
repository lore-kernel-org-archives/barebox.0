Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOamN-0002D6-Bd
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 21:04:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Oct 2012 23:03:31 +0200
Message-Id: <1350507817-7819-23-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 22/28] ARM start: pick up memory/boarddata arguments from pbl
To: barebox@lists.infradead.org

Now that the pbl calls the uncompressed image with memory/boarddata
arguments we can pick these up and use them in the next step.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start.c |   28 ++++++++++++++++++----------
 1 file changed, 18 insertions(+), 10 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index c75728f..ee351bb 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -26,11 +26,9 @@
 #include <asm/cache.h>
 #include <memory.h>
 
-static noinline __naked void __start(uint32_t membase, uint32_t memsize,
+static noinline void __start(uint32_t membase, uint32_t memsize,
 		uint32_t boarddata)
 {
-	arm_setup_stack(STACK_BASE + STACK_SIZE - 16);
-
 	setup_c();
 
 	mem_malloc_init((void *)MALLOC_BASE,
@@ -39,6 +37,14 @@ static noinline __naked void __start(uint32_t membase, uint32_t memsize,
 	start_barebox();
 }
 
+#ifndef CONFIG_PBL_IMAGE
+
+void __naked __section(.text_entry) start(uint32_t membase, uint32_t memsize,
+		uint32_t boarddata)
+{
+	barebox_arm_head();
+}
+
 /*
  * Main ARM entry point in the uncompressed image. Call this with the memory
  * region you can spare for barebox. This doesn't necessarily have to be the
@@ -49,18 +55,20 @@ static noinline __naked void __start(uint32_t membase, uint32_t memsize,
 void __naked barebox_arm_entry(uint32_t membase, uint32_t memsize,
 		uint32_t boarddata)
 {
+	arm_setup_stack(membase + memsize - 8);
+
 	__start(membase, memsize, boarddata);
 }
 
+#else
+
 /*
  * First function in the uncompressed image. We get here from
- * the pbl.
+ * the pbl. The stack already has been set up by the pbl.
  */
-void __naked __section(.text_entry) start(void)
+void __naked __section(.text_entry) start(uint32_t membase, uint32_t memsize,
+		uint32_t boarddata)
 {
-#ifdef CONFIG_PBL_IMAGE
-	__start(0, 0, 0);
-#else
-	barebox_arm_head();
-#endif
+	__start(membase, memsize, boarddata);
 }
+#endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
