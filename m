Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOamN-0002D4-4D
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 21:04:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Oct 2012 23:03:27 +0200
Message-Id: <1350507817-7819-19-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 18/28] ARM start: remove unused board_init_lowlevel* functions
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start-pbl.c           |    9 +++------
 arch/arm/cpu/start.c               |   37 +++++++++++++++++-------------------
 arch/arm/include/asm/barebox-arm.h |    2 --
 3 files changed, 20 insertions(+), 28 deletions(-)

diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index 8b4f691..a2cdbf2 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -156,11 +156,8 @@ static void barebox_uncompress(void *compressed_start, unsigned int len)
 	barebox();
 }
 
-/*
- * Board code can jump here by either returning from board_init_lowlevel
- * or by calling this function directly.
- */
-void __naked board_init_lowlevel_return(void)
+static noinline void __barebox_arm_entry(uint32_t membase, uint32_t memsize,
+		uint32_t boarddata)
 {
 	uint32_t offset;
 	uint32_t pg_start, pg_end, pg_len;
@@ -199,5 +196,5 @@ void __naked board_init_lowlevel_return(void)
 void __naked barebox_arm_entry(uint32_t membase, uint32_t memsize,
 		uint32_t boarddata)
 {
-	board_init_lowlevel_return();
+	__barebox_arm_entry(membase, memsize, boarddata);
 }
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index c21a8d7..c75728f 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -26,24 +26,8 @@
 #include <asm/cache.h>
 #include <memory.h>
 
-/*
- * First function in the uncompressed image. We get here from
- * the pbl.
- */
-void __naked __section(.text_entry) start(void)
-{
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
-void __naked board_init_lowlevel_return(void)
+static noinline __naked void __start(uint32_t membase, uint32_t memsize,
+		uint32_t boarddata)
 {
 	arm_setup_stack(STACK_BASE + STACK_SIZE - 16);
 
@@ -63,7 +47,20 @@ void __naked board_init_lowlevel_return(void)
  * be preserved and can be accessed later with barebox_arm_boarddata().
  */
 void __naked barebox_arm_entry(uint32_t membase, uint32_t memsize,
-                uint32_t boarddata)
+		uint32_t boarddata)
 {
-	board_init_lowlevel_return();
+	__start(membase, memsize, boarddata);
+}
+
+/*
+ * First function in the uncompressed image. We get here from
+ * the pbl.
+ */
+void __naked __section(.text_entry) start(void)
+{
+#ifdef CONFIG_PBL_IMAGE
+	__start(0, 0, 0);
+#else
+	barebox_arm_head();
+#endif
 }
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 3eb28c0..ce1eb47 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -34,8 +34,6 @@ int	dram_init (void);
 
 extern char __exceptions_start[], __exceptions_stop[];
 
-void board_init_lowlevel(void);
-void board_init_lowlevel_return(void);
 uint32_t get_runtime_offset(void);
 
 void setup_c(void);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
