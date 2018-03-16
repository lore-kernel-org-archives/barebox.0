Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewos8-00068D-6L
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:52:49 +0100
Message-Id: <20180316125354.23462-14-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/78] ARM: aarch64: Add dummy naked attribute
To: Barebox List <barebox@lists.infradead.org>

The naked attribute is not supported on aarch64. To silence the compiler
warning add a dummy naked attribute.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/entry.c               |  2 +-
 arch/arm/cpu/start.c               |  4 ++--
 arch/arm/include/asm/barebox-arm.h | 17 +++++++++++++++--
 3 files changed, 18 insertions(+), 5 deletions(-)

diff --git a/arch/arm/cpu/entry.c b/arch/arm/cpu/entry.c
index 33b1429d4a..b48c1ca11d 100644
--- a/arch/arm/cpu/entry.c
+++ b/arch/arm/cpu/entry.c
@@ -24,7 +24,7 @@
  * be fine.
  */
 
-void __naked __noreturn barebox_arm_entry(unsigned long membase,
+void NAKED __noreturn barebox_arm_entry(unsigned long membase,
 					  unsigned long memsize, void *boarddata)
 {
 	arm_setup_stack(arm_mem_stack_top(membase, membase + memsize) - 16);
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 171e6ad0eb..9f4213bfb9 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -229,7 +229,7 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
 
 #ifndef CONFIG_PBL_IMAGE
 
-void __naked __section(.text_entry) start(void)
+void NAKED __section(.text_entry) start(void)
 {
 	barebox_arm_head();
 }
@@ -239,7 +239,7 @@ void __naked __section(.text_entry) start(void)
  * First function in the uncompressed image. We get here from
  * the pbl. The stack already has been set up by the pbl.
  */
-void __naked __section(.text_entry) start(unsigned long membase,
+void NAKED __section(.text_entry) start(unsigned long membase,
 		unsigned long memsize, void *boarddata)
 {
 	barebox_non_pbl_start(membase, memsize, boarddata);
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 3aea2e070e..170839aaad 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -161,13 +161,13 @@ static inline unsigned long arm_mem_barebox_image(unsigned long membase,
 #define ENTRY_FUNCTION(name, arg0, arg1, arg2)				\
 	static void __##name(uint32_t, uint32_t, uint32_t);		\
 									\
-	void __naked __section(.text_head_entry_##name)	name		\
+	void NAKED __section(.text_head_entry_##name)	name		\
 				(uint32_t r0, uint32_t r1, uint32_t r2)	\
 		{							\
 			__barebox_arm_head();				\
 			__##name(r0, r1, r2);				\
 		}							\
-		static void __naked noinline __##name			\
+		static void NAKED noinline __##name			\
 			(uint32_t arg0, uint32_t arg1, uint32_t arg2)
 
 /*
@@ -181,4 +181,17 @@ static inline unsigned long arm_mem_barebox_image(unsigned long membase,
 
 #define barebox_image_size (__image_end - __image_start)
 
+#ifdef CONFIG_CPU_32
+#define NAKED __naked
+#else
+/*
+ * There is no naked support for aarch64, so do not rely on it.
+ * This basically means we must have a stack configured when a
+ * function with the naked attribute is entered. On nowadays hardware
+ * the ROM should have some basic stack already. If not, set one
+ * up before jumping into the barebox entry functions.
+ */
+#define NAKED
+#endif
+
 #endif	/* _BAREBOX_ARM_H_ */
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
