Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f177.google.com ([209.85.212.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLMEj-0007Oe-J0
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 22:55:47 +0000
Received: by mail-wi0-f177.google.com with SMTP id hj13so3126618wib.0
 for <barebox@lists.infradead.org>; Mon, 08 Oct 2012 15:55:45 -0700 (PDT)
From: Vicente <vicencb@gmail.com>
Date: Tue,  9 Oct 2012 00:55:13 +0200
Message-Id: <1349736924-24667-4-git-send-email-vicencb@gmail.com>
In-Reply-To: <1349736924-24667-1-git-send-email-vicencb@gmail.com>
References: <1349736924-24667-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 03/14] ARM: import irq handling from linux
To: barebox@lists.infradead.org
Cc: Vicente <vicencb@gmail.com>


Signed-off-by: Vicente <vicencb@gmail.com>
---
 arch/arm/cpu/exceptions.S       |   1 -
 arch/arm/cpu/interrupts.c       |   6 +-
 arch/arm/include/asm/irqflags.h | 155 ++++++++++++++++++++++++++++++++++++++++
 arch/arm/include/asm/ptrace.h   |  55 +++++++-------
 4 files changed, 188 insertions(+), 29 deletions(-)
 create mode 100644 arch/arm/include/asm/irqflags.h

diff --git a/arch/arm/cpu/exceptions.S b/arch/arm/cpu/exceptions.S
index 7f94f9f..8a08b2a 100644
--- a/arch/arm/cpu/exceptions.S
+++ b/arch/arm/cpu/exceptions.S
@@ -35,7 +35,6 @@
 #define S_R0		0
 
 #define MODE_SVC	0x13
-#define I_BIT		0x80
 
 _STACK_START:
 	.word STACK_BASE + STACK_SIZE - 4
diff --git a/arch/arm/cpu/interrupts.c b/arch/arm/cpu/interrupts.c
index 4ed562f..6e60adc 100644
--- a/arch/arm/cpu/interrupts.c
+++ b/arch/arm/cpu/interrupts.c
@@ -57,9 +57,9 @@ void show_regs (struct pt_regs *regs)
 	printf ("r3 : %08lx  r2 : %08lx  r1 : %08lx  r0 : %08lx\n",
 		regs->ARM_r3, regs->ARM_r2, regs->ARM_r1, regs->ARM_r0);
 	printf ("Flags: %c%c%c%c",
-		flags & CC_N_BIT ? 'N' : 'n',
-		flags & CC_Z_BIT ? 'Z' : 'z',
-		flags & CC_C_BIT ? 'C' : 'c', flags & CC_V_BIT ? 'V' : 'v');
+		flags & PSR_N_BIT ? 'N' : 'n',
+		flags & PSR_Z_BIT ? 'Z' : 'z',
+		flags & PSR_C_BIT ? 'C' : 'c', flags & PSR_V_BIT ? 'V' : 'v');
 	printf ("  IRQs %s  FIQs %s  Mode %s%s\n",
 		interrupts_enabled (regs) ? "on" : "off",
 		fast_interrupts_enabled (regs) ? "on" : "off",
diff --git a/arch/arm/include/asm/irqflags.h b/arch/arm/include/asm/irqflags.h
new file mode 100644
index 0000000..1e6cca5
--- /dev/null
+++ b/arch/arm/include/asm/irqflags.h
@@ -0,0 +1,155 @@
+#ifndef __ASM_ARM_IRQFLAGS_H
+#define __ASM_ARM_IRQFLAGS_H
+
+#ifdef __KERNEL__
+
+#include <asm/ptrace.h>
+
+/*
+ * CPU interrupt mask handling.
+ */
+#if __LINUX_ARM_ARCH__ >= 6
+
+static inline unsigned long arch_local_irq_save(void)
+{
+	unsigned long flags;
+
+	asm volatile(
+		"	mrs	%0, cpsr	@ arch_local_irq_save\n"
+		"	cpsid	i"
+		: "=r" (flags) : : "memory", "cc");
+	return flags;
+}
+
+static inline void arch_local_irq_enable(void)
+{
+	asm volatile(
+		"	cpsie i			@ arch_local_irq_enable"
+		:
+		:
+		: "memory", "cc");
+}
+
+static inline void arch_local_irq_disable(void)
+{
+	asm volatile(
+		"	cpsid i			@ arch_local_irq_disable"
+		:
+		:
+		: "memory", "cc");
+}
+
+#define local_fiq_enable()  __asm__("cpsie f	@ __stf" : : : "memory", "cc")
+#define local_fiq_disable() __asm__("cpsid f	@ __clf" : : : "memory", "cc")
+#else
+
+/*
+ * Save the current interrupt enable state & disable IRQs
+ */
+static inline unsigned long arch_local_irq_save(void)
+{
+	unsigned long flags, temp;
+
+	asm volatile(
+		"	mrs	%0, cpsr	@ arch_local_irq_save\n"
+		"	orr	%1, %0, #128\n"
+		"	msr	cpsr_c, %1"
+		: "=r" (flags), "=r" (temp)
+		:
+		: "memory", "cc");
+	return flags;
+}
+
+/*
+ * Enable IRQs
+ */
+static inline void arch_local_irq_enable(void)
+{
+	unsigned long temp;
+	asm volatile(
+		"	mrs	%0, cpsr	@ arch_local_irq_enable\n"
+		"	bic	%0, %0, #128\n"
+		"	msr	cpsr_c, %0"
+		: "=r" (temp)
+		:
+		: "memory", "cc");
+}
+
+/*
+ * Disable IRQs
+ */
+static inline void arch_local_irq_disable(void)
+{
+	unsigned long temp;
+	asm volatile(
+		"	mrs	%0, cpsr	@ arch_local_irq_disable\n"
+		"	orr	%0, %0, #128\n"
+		"	msr	cpsr_c, %0"
+		: "=r" (temp)
+		:
+		: "memory", "cc");
+}
+
+/*
+ * Enable FIQs
+ */
+#define local_fiq_enable()					\
+	({							\
+		unsigned long temp;				\
+	__asm__ __volatile__(					\
+	"mrs	%0, cpsr		@ stf\n"		\
+"	bic	%0, %0, #64\n"					\
+"	msr	cpsr_c, %0"					\
+	: "=r" (temp)						\
+	:							\
+	: "memory", "cc");					\
+	})
+
+/*
+ * Disable FIQs
+ */
+#define local_fiq_disable()					\
+	({							\
+		unsigned long temp;				\
+	__asm__ __volatile__(					\
+	"mrs	%0, cpsr		@ clf\n"		\
+"	orr	%0, %0, #64\n"					\
+"	msr	cpsr_c, %0"					\
+	: "=r" (temp)						\
+	:							\
+	: "memory", "cc");					\
+	})
+
+#endif
+
+/*
+ * Save the current interrupt enable state.
+ */
+static inline unsigned long arch_local_save_flags(void)
+{
+	unsigned long flags;
+	asm volatile(
+		"	mrs	%0, cpsr	@ local_save_flags"
+		: "=r" (flags) : : "memory", "cc");
+	return flags;
+}
+
+/*
+ * restore saved IRQ & FIQ state
+ */
+static inline void arch_local_irq_restore(unsigned long flags)
+{
+	asm volatile(
+		"	msr	cpsr_c, %0	@ local_irq_restore"
+		:
+		: "r" (flags)
+		: "memory", "cc");
+}
+
+static inline int arch_irqs_disabled_flags(unsigned long flags)
+{
+	return flags & PSR_I_BIT;
+}
+
+#endif
+#endif
diff --git a/arch/arm/include/asm/ptrace.h b/arch/arm/include/asm/ptrace.h
index b384369..ac065ab 100644
--- a/arch/arm/include/asm/ptrace.h
+++ b/arch/arm/include/asm/ptrace.h
@@ -23,25 +23,30 @@
 /*
  * PSR bits
  */
-#define USR26_MODE	0x00
-#define FIQ26_MODE	0x01
-#define IRQ26_MODE	0x02
-#define SVC26_MODE	0x03
-#define USR_MODE	0x10
-#define FIQ_MODE	0x11
-#define IRQ_MODE	0x12
-#define SVC_MODE	0x13
-#define ABT_MODE	0x17
-#define UND_MODE	0x1b
-#define SYSTEM_MODE	0x1f
-#define MODE_MASK	0x1f
-#define T_BIT		0x20
-#define F_BIT		0x40
-#define I_BIT		0x80
-#define CC_V_BIT	(1 << 28)
-#define CC_C_BIT	(1 << 29)
-#define CC_Z_BIT	(1 << 30)
-#define CC_N_BIT	(1 << 31)
+#define USR26_MODE	0x00000000
+#define FIQ26_MODE	0x00000001
+#define IRQ26_MODE	0x00000002
+#define SVC26_MODE	0x00000003
+#define USR_MODE	0x00000010
+#define FIQ_MODE	0x00000011
+#define IRQ_MODE	0x00000012
+#define SVC_MODE	0x00000013
+#define ABT_MODE	0x00000017
+#define UND_MODE	0x0000001b
+#define SYSTEM_MODE	0x0000001f
+#define MODE32_BIT	0x00000010
+#define MODE_MASK	0x0000001f
+#define PSR_T_BIT	0x00000020
+#define PSR_F_BIT	0x00000040
+#define PSR_I_BIT	0x00000080
+#define PSR_A_BIT	0x00000100
+#define PSR_E_BIT	0x00000200
+#define PSR_J_BIT	0x01000000
+#define PSR_Q_BIT	0x08000000
+#define PSR_V_BIT	0x10000000
+#define PSR_C_BIT	0x20000000
+#define PSR_Z_BIT	0x40000000
+#define PSR_N_BIT	0x80000000
 #define PCMASK		0
 
 #ifndef __ASSEMBLY__
@@ -79,7 +84,7 @@ struct pt_regs {
 
 #ifdef CONFIG_ARM_THUMB
 #define thumb_mode(regs) \
-	(((regs)->ARM_cpsr & T_BIT))
+	(((regs)->ARM_cpsr & PSR_T_BIT))
 #else
 #define thumb_mode(regs) (0)
 #endif
@@ -88,13 +93,13 @@ struct pt_regs {
 	((regs)->ARM_cpsr & MODE_MASK)
 
 #define interrupts_enabled(regs) \
-	(!((regs)->ARM_cpsr & I_BIT))
+	(!((regs)->ARM_cpsr & PSR_I_BIT))
 
 #define fast_interrupts_enabled(regs) \
-	(!((regs)->ARM_cpsr & F_BIT))
+	(!((regs)->ARM_cpsr & PSR_F_BIT))
 
 #define condition_codes(regs) \
-	((regs)->ARM_cpsr & (CC_V_BIT|CC_C_BIT|CC_Z_BIT|CC_N_BIT))
+	((regs)->ARM_cpsr & (PSR_V_BIT|PSR_C_BIT|PSR_Z_BIT|PSR_N_BIT))
 
 /* Are the current registers suitable for user mode?
  * (used to maintain security in signal handlers)
@@ -102,13 +107,13 @@ struct pt_regs {
 static inline int valid_user_regs(struct pt_regs *regs)
 {
 	if ((regs->ARM_cpsr & 0xf) == 0 &&
-	    (regs->ARM_cpsr & (F_BIT|I_BIT)) == 0)
+	    (regs->ARM_cpsr & (PSR_F_BIT|PSR_I_BIT)) == 0)
 		return 1;
 
 	/*
 	 * Force CPSR to something logical...
 	 */
-	regs->ARM_cpsr &= (CC_V_BIT|CC_C_BIT|CC_Z_BIT|CC_N_BIT|0x10);
+	regs->ARM_cpsr &= (PSR_V_BIT|PSR_C_BIT|PSR_Z_BIT|PSR_N_BIT|0x10);
 
 	return 0;
 }
-- 
1.7.12.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
