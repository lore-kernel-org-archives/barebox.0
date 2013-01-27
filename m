Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TzPlU-00064D-8i
 for barebox@lists.infradead.org; Sun, 27 Jan 2013 10:47:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 27 Jan 2013 11:46:54 +0100
Message-Id: <1359283623-1782-26-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 25/34] ARM start: pickup parameters from pbl
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start.c               |   44 +++++++++++++++++++-----------------
 arch/arm/include/asm/barebox-arm.h |    1 -
 2 files changed, 23 insertions(+), 22 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index b59c489..64de5da 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -26,32 +26,21 @@
 #include <asm/cache.h>
 #include <memory.h>
 
-/*
- * First function in the uncompressed image. We get here from
- * the pbl.
- */
-void __naked __section(.text_entry) start(void)
+static noinline __noreturn void __start(uint32_t membase, uint32_t memsize,
+		uint32_t boarddata)
 {
-#ifdef CONFIG_PBL_IMAGE
-	board_init_lowlevel_return();
-#else
-	barebox_arm_head();
-#endif
-}
-
-/*
- * Board code can jump here by either returning from board_init_lowlevel
- * or by calling this function directly.
- */
-void __naked __noreturn board_init_lowlevel_return(void)
-{
-	arm_setup_stack(STACK_BASE + STACK_SIZE - 16);
-
 	setup_c();
 
 	start_barebox();
 }
 
+#ifndef CONFIG_PBL_IMAGE
+
+void __naked __section(.text_entry) start(void)
+{
+	barebox_arm_head();
+}
+
 /*
  * Main ARM entry point in the uncompressed image. Call this with the memory
  * region you can spare for barebox. This doesn't necessarily have to be the
@@ -74,5 +63,18 @@ void __naked __noreturn board_init_lowlevel_return(void)
 void __naked __noreturn barebox_arm_entry(uint32_t membase, uint32_t memsize,
                 uint32_t boarddata)
 {
-	board_init_lowlevel_return();
+	arm_setup_stack(STACK_BASE + STACK_SIZE - 16);
+
+	__start(membase, memsize, boarddata);
 }
+#else
+/*
+ * First function in the uncompressed image. We get here from
+ * the pbl. The stack already has been set up by the pbl.
+ */
+void __naked __section(.text_entry) start(uint32_t membase, uint32_t memsize,
+                uint32_t boarddata)
+{
+	__start(membase, memsize, boarddata);
+}
+#endif
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 0574f34..42b7a3f 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -35,7 +35,6 @@ int	dram_init (void);
 extern char __exceptions_start[], __exceptions_stop[];
 
 void board_init_lowlevel(void);
-void __noreturn board_init_lowlevel_return(void);
 uint32_t get_runtime_offset(void);
 
 void setup_c(void);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
