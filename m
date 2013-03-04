Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCbbQ-0005Yl-8P
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 20:03:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 21:03:08 +0100
Message-Id: <1362427389-2144-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362427389-2144-1-git-send-email-s.hauer@pengutronix.de>
References: <1362427389-2144-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/6] ARN: fixup vector addresses for relocatable binaries
To: barebox@lists.infradead.org

With relocatable binaries the vector addresses cannot be supplied by
the linker. This adds support for fixing them up during runtime.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/exceptions.S          | 55 +++++++++++++++++++++++++++++++++-----
 arch/arm/cpu/mmu.c                 |  2 ++
 arch/arm/include/asm/barebox-arm.h |  8 ++++++
 arch/arm/include/asm/mmu.h         |  1 -
 4 files changed, 59 insertions(+), 7 deletions(-)

diff --git a/arch/arm/cpu/exceptions.S b/arch/arm/cpu/exceptions.S
index 4185bd1..6d87cd2 100644
--- a/arch/arm/cpu/exceptions.S
+++ b/arch/arm/cpu/exceptions.S
@@ -1,4 +1,5 @@
 #include <config.h>
+#include <linux/linkage.h>
 #include <asm-generic/memory_layout.h>
 
 /*
@@ -137,16 +138,58 @@ fiq:
 	bad_save_user_regs
 	bl 	do_fiq
 
+#ifdef CONFIG_RELOCATABLE
+/*
+ * With relocatable binary support the runtime exception vectors do not match
+ * the addresses in the binary. We have to fix them up during runtime
+ */
+ENTRY(arm_fixup_vectors)
+	ldr	r0, =undefined_instruction
+	ldr	r1, =_undefined_instruction
+	str	r0, [r1]
+	ldr	r0, =software_interrupt
+	ldr	r1, =_software_interrupt
+	str	r0, [r1]
+	ldr	r0, =prefetch_abort
+	ldr	r1, =_prefetch_abort
+	str	r0, [r1]
+	ldr	r0, =data_abort
+	ldr	r1, =_data_abort
+	str	r0, [r1]
+	ldr	r0, =irq
+	ldr	r1, =_irq
+	str	r0, [r1]
+	ldr	r0, =fiq
+	ldr	r1, =_fiq
+	str	r0, [r1]
+	bx	lr
+ENDPROC(arm_fixup_vectors)
+#endif
+
 .section .text_exceptions
+.globl extable
+extable:
 1:	b 1b				/* barebox_arm_reset_vector */
 #ifdef CONFIG_ARM_EXCEPTIONS
-	ldr pc, =undefined_instruction	/* undefined instruction */
-	ldr pc, =software_interrupt	/* software interrupt (SWI) */
-	ldr pc, =prefetch_abort		/* prefetch abort */
-	ldr pc, =data_abort		/* data abort */
+	ldr pc, _undefined_instruction	/* undefined instruction */
+	ldr pc, _software_interrupt	/* software interrupt (SWI) */
+	ldr pc, _prefetch_abort		/* prefetch abort */
+	ldr pc, _data_abort		/* data abort */
 1:	b 1b				/* (reserved) */
-	ldr pc, =irq			/* irq (interrupt) */
-	ldr pc, =fiq			/* fiq (fast interrupt) */
+	ldr pc, _irq			/* irq (interrupt) */
+	ldr pc, _fiq			/* fiq (fast interrupt) */
+.globl _undefined_instruction
+_undefined_instruction: .word undefined_instruction
+.globl _software_interrupt
+_software_interrupt: .word software_interrupt
+.globl _prefetch_abort
+_prefetch_abort: .word prefetch_abort
+.globl _data_abort
+_data_abort: .word data_abort
+.globl _irq
+_irq: .word irq
+.globl _fiq
+_fiq: .word fiq
 #else
 1:	b 1b				/* undefined instruction */
 1:	b 1b				/* software interrupt (SWI) */
diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 219f50a..34fe5c3 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -247,6 +247,8 @@ static void vectors_init(void)
 		exc = arm_create_pte(0x0);
 	}
 
+	arm_fixup_vectors();
+
 	vectors = xmemalign(PAGE_SIZE, PAGE_SIZE);
 	memset(vectors, 0, PAGE_SIZE);
 	memcpy(vectors, __exceptions_start, __exceptions_stop - __exceptions_start);
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 9c10e36..f051fe3 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -42,4 +42,12 @@ uint32_t get_runtime_offset(void);
 void setup_c(void);
 void __noreturn barebox_arm_entry(uint32_t membase, uint32_t memsize, uint32_t boarddata);
 
+#ifdef CONFIG_RELOCATABLE
+void arm_fixup_vectors(void);
+#else
+static inline void arm_fixup_vectors(void)
+{
+}
+#endif
+
 #endif	/* _BAREBOX_ARM_H_ */
diff --git a/arch/arm/include/asm/mmu.h b/arch/arm/include/asm/mmu.h
index f32cea6..4234979 100644
--- a/arch/arm/include/asm/mmu.h
+++ b/arch/arm/include/asm/mmu.h
@@ -122,4 +122,3 @@ void __dma_flush_range(unsigned long, unsigned long);
 void __dma_inv_range(unsigned long, unsigned long);
 
 #endif /* __ASM_MMU_H */
-
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
