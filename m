Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TAe7c-0002Ml-3n
 for barebox@lists.infradead.org; Sun, 09 Sep 2012 09:48:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun,  9 Sep 2012 11:47:56 +0200
Message-Id: <1347184076-15238-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1347184076-15238-1-git-send-email-s.hauer@pengutronix.de>
References: <1347184076-15238-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] ARM lowlevel: Use get_runtime_offset
To: barebox@lists.infradead.org

The current approach to get the offset between link and runtime address
is fragile. It requires a big fat comment to put no code above it and it
requires an extra linker section. Instead use a small assembler function.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start-pbl.c           |   12 +++---------
 arch/arm/cpu/start.c               |   12 +++---------
 arch/arm/include/asm/barebox-arm.h |    1 -
 arch/arm/lib/barebox.lds.S         |    2 --
 arch/arm/pbl/zbarebox.lds.S        |    2 --
 5 files changed, 6 insertions(+), 23 deletions(-)

diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index 09a1940..5a6b99b 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -152,23 +152,17 @@ static void barebox_uncompress(void *compressed_start, unsigned int len)
  * Board code can jump here by either returning from board_init_lowlevel
  * or by calling this function directly.
  */
-void __naked __section(.text_ll_return) board_init_lowlevel_return(void)
+void __naked board_init_lowlevel_return(void)
 {
-	uint32_t r, addr, offset;
+	uint32_t r, offset;
 	uint32_t pg_start, pg_end, pg_len;
 
-	/*
-	 * Get runtime address of this function. Do not
-	 * put any code above this.
-	 */
-	__asm__ __volatile__("1: adr %0, 1b":"=r"(addr));
-
 	/* Setup the stack */
 	r = STACK_BASE + STACK_SIZE - 16;
 	__asm__ __volatile__("mov sp, %0" : : "r"(r));
 
 	/* Get offset between linked address and runtime address */
-	offset = (uint32_t)__ll_return - addr;
+	offset = get_runtime_offset();
 
 	pg_start = (uint32_t)&input_data - offset;
 	pg_end = (uint32_t)&input_data_end - offset;
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index e43ff9c..4fb0c07 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -59,22 +59,16 @@ void __naked __section(.text_entry) start(void)
  * Board code can jump here by either returning from board_init_lowlevel
  * or by calling this function directly.
  */
-void __naked __section(.text_ll_return) board_init_lowlevel_return(void)
+void __naked board_init_lowlevel_return(uint32_t params)
 {
-	uint32_t r, addr, offset;
-
-	/*
-	 * Get runtime address of this function. Do not
-	 * put any code above this.
-	 */
-	__asm__ __volatile__("1: adr %0, 1b":"=r"(addr));
+	uint32_t r, offset;
 
 	/* Setup the stack */
 	r = STACK_BASE + STACK_SIZE - 16;
 	__asm__ __volatile__("mov sp, %0" : : "r"(r));
 
 	/* Get offset between linked address and runtime address */
-	offset = (uint32_t)__ll_return - addr;
+	offset = get_runtime_offset();
 
 	/* relocate to link address if necessary */
 	if (offset)
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 3639365..a71f420 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -37,7 +37,6 @@ int	board_init(void);
 int	dram_init (void);
 
 extern char __exceptions_start[], __exceptions_stop[];
-extern char __ll_return[];
 
 void board_init_lowlevel(void);
 void board_init_lowlevel_return(void);
diff --git a/arch/arm/lib/barebox.lds.S b/arch/arm/lib/barebox.lds.S
index a69013f..40af705 100644
--- a/arch/arm/lib/barebox.lds.S
+++ b/arch/arm/lib/barebox.lds.S
@@ -40,8 +40,6 @@ SECTIONS
 		_stext = .;
 		_text = .;
 		*(.text_entry*)
-		__ll_return = .;
-		*(.text_ll_return*)
 		__bare_init_start = .;
 		*(.text_bare_init*)
 		__bare_init_end = .;
diff --git a/arch/arm/pbl/zbarebox.lds.S b/arch/arm/pbl/zbarebox.lds.S
index 2dca278..37af4e9 100644
--- a/arch/arm/pbl/zbarebox.lds.S
+++ b/arch/arm/pbl/zbarebox.lds.S
@@ -39,8 +39,6 @@ SECTIONS
 		_stext = .;
 		_text = .;
 		*(.text_head_entry*)
-		__ll_return = .;
-		*(.text_ll_return*)
 		__bare_init_start = .;
 		*(.text_bare_init*)
 		__bare_init_end = .;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
