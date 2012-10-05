Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TKB1R-0001eu-Cb
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 16:45:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  5 Oct 2012 18:45:02 +0200
Message-Id: <1349455505-31731-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349455505-31731-1-git-send-email-s.hauer@pengutronix.de>
References: <1349455505-31731-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] ARM: add assembly function for setting up C environment
To: barebox@lists.infradead.org

Sometimes Assembler beats C. In this case a small assembler
function called without parameters can:

- copy a binary to its link address
- clear the bss
- return to the same position in the copied binary

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/Makefile              |    4 ++--
 arch/arm/cpu/setupc.S              |   34 ++++++++++++++++++++++++++++++++++
 arch/arm/cpu/start-pbl.c           |   19 ++-----------------
 arch/arm/cpu/start.c               |   23 +++++------------------
 arch/arm/include/asm/barebox-arm.h |    2 ++
 5 files changed, 45 insertions(+), 37 deletions(-)
 create mode 100644 arch/arm/cpu/setupc.S

diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index f7ab276..b3122c8 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -1,7 +1,7 @@
 obj-y += cpu.o
 obj-$(CONFIG_ARM_EXCEPTIONS) += exceptions.o
 obj-$(CONFIG_ARM_EXCEPTIONS) += interrupts.o
-obj-y += start.o
+obj-y += start.o setupc.o
 
 #
 # Any variants can be called as start-armxyz.S
@@ -19,4 +19,4 @@ obj-$(CONFIG_CPU_32v7) += cache-armv7.o
 pbl-$(CONFIG_CPU_32v7) += cache-armv7.o
 obj-$(CONFIG_CACHE_L2X0) += cache-l2x0.o
 
-pbl-y += start-pbl.o
+pbl-y += start-pbl.o setupc.o
diff --git a/arch/arm/cpu/setupc.S b/arch/arm/cpu/setupc.S
new file mode 100644
index 0000000..9a8d54c
--- /dev/null
+++ b/arch/arm/cpu/setupc.S
@@ -0,0 +1,34 @@
+#include <linux/linkage.h>
+
+.section .text.setupc
+
+/*
+ * setup_c: copy binary to link address, clear bss and
+ * continue executing at new address.
+ *
+ * This function does not return to the address it is
+ * called from, but to the same location in the copied
+ * binary.
+ */
+ENTRY(setup_c)
+	push	{r4, r5}
+	mov	r5, lr
+	bl	get_runtime_offset
+	subs	r4, r0, #0
+	beq	1f			/* skip memcpy if already at correct address */
+	ldr	r0,=_text
+	ldr	r2,=__bss_start
+	sub	r2, r2, r0
+	sub	r1, r0, r4
+	bl	memcpy			/* memcpy(_text, _text - offset, __bss_start - _text) */
+1:	ldr	r0, =__bss_start
+	mov	r1, #0
+	ldr	r2, =__bss_stop
+	sub	r2, r2, r0
+	bl	memset			/* clear bss */
+	mov	r0, #0
+	mcr	p15, 0, r0, c7, c5, 0	/* flush icache */
+	add	lr, r5, r4		/* adjust return address to new location */
+	pop	{r4, r5}
+	mov	pc, lr
+ENDPROC(setup_c)
diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index 0467dfe..1298ca0 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -208,23 +208,8 @@ copy_piggy_link:
 	pg_start = (uint32_t)&input_data;
 
 copy_link:
-	/* relocate to link address if necessary */
-	if (offset)
-		memcpy((void *)_text, (void *)(_text - offset),
-				__bss_start - _text);
 
-	/* clear bss */
-	memset(__bss_start, 0, __bss_stop - __bss_start);
+	setup_c();
 
-	flush_icache();
-
-	r = (unsigned int)&barebox_uncompress;
-	/* call barebox_uncompress with its absolute address */
-	__asm__ __volatile__(
-		"mov r0, %1\n"
-		"mov r1, %2\n"
-		"mov pc, %0\n"
-		:
-		: "r"(r), "r"(pg_start), "r"(pg_len)
-		: "r0", "r1");
+	barebox_uncompress((void *)pg_start, pg_len);
 }
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 8676267..7e0a29a 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -37,8 +37,8 @@ void __naked __section(.text_entry) start(void)
 	/* Setup the stack */
 	r = STACK_BASE + STACK_SIZE - 16;
 	__asm__ __volatile__("mov sp, %0" : : "r"(r));
-	/* clear bss */
-	memset(__bss_start, 0, __bss_stop - __bss_start);
+
+	setup_c();
 
 	start_barebox();
 }
@@ -70,27 +70,14 @@ void __naked __bare_init reset(void)
  */
 void __naked board_init_lowlevel_return(void)
 {
-	uint32_t r, offset;
+	uint32_t r;
 
 	/* Setup the stack */
 	r = STACK_BASE + STACK_SIZE - 16;
 	__asm__ __volatile__("mov sp, %0" : : "r"(r));
 
-	/* Get offset between linked address and runtime address */
-	offset = get_runtime_offset();
-
-	/* relocate to link address if necessary */
-	if (offset)
-		memcpy((void *)_text, (void *)(_text - offset),
-				__bss_start - _text);
-
-	/* clear bss */
-	memset(__bss_start, 0, __bss_stop - __bss_start);
+	setup_c();
 
-	flush_icache();
-
-	/* call start_barebox with its absolute address */
-	r = (unsigned int)&start_barebox;
-	__asm__ __volatile__("mov pc, %0" : : "r"(r));
+	start_barebox();
 }
 #endif
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 9e17b4f..993130d 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -38,4 +38,6 @@ void board_init_lowlevel(void);
 void board_init_lowlevel_return(void);
 uint32_t get_runtime_offset(void);
 
+void setup_c(void);
+
 #endif	/* _BAREBOX_ARM_H_ */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
