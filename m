Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosF-0008BY-HC
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:53:35 +0100
Message-Id: <20180316125354.23462-60-s.hauer@pengutronix.de>
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
Subject: [PATCH 59/78] ARM: aarch64: implement show_regs()
To: Barebox List <barebox@lists.infradead.org>

Do something useful in an exception and at least print the current
register contents.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/interrupts_64.c  |  8 ++++++++
 arch/arm/include/asm/ptrace.h | 19 +++++++++++++++++++
 2 files changed, 27 insertions(+)

diff --git a/arch/arm/cpu/interrupts_64.c b/arch/arm/cpu/interrupts_64.c
index b3bd0aa5a4..ffdb87af94 100644
--- a/arch/arm/cpu/interrupts_64.c
+++ b/arch/arm/cpu/interrupts_64.c
@@ -30,6 +30,14 @@
  */
 void show_regs(struct pt_regs *regs)
 {
+	int i;
+
+	printf("elr: %016lx lr : %016lx\n", regs->elr, regs->regs[30]);
+
+	for (i = 0; i < 29; i += 2)
+		printf("x%-2d: %016lx x%-2d: %016lx\n",
+			i, regs->regs[i], i + 1, regs->regs[i + 1]);
+	printf("\n");
 }
 
 static void __noreturn do_exception(struct pt_regs *pt_regs)
diff --git a/arch/arm/include/asm/ptrace.h b/arch/arm/include/asm/ptrace.h
index 6520a0a73a..7fbd8d9b6f 100644
--- a/arch/arm/include/asm/ptrace.h
+++ b/arch/arm/include/asm/ptrace.h
@@ -10,6 +10,23 @@
 #ifndef __ASM_ARM_PTRACE_H
 #define __ASM_ARM_PTRACE_H
 
+#ifdef CONFIG_CPU_64
+
+#ifndef __ASSEMBLY__
+
+/*
+ * This struct defines the way the registers are stored
+ * on the stack during an exception.
+ */
+struct pt_regs {
+	unsigned long elr;
+	unsigned long regs[31];
+};
+
+#endif  /* __ASSEMBLY__ */
+
+#else   /* CONFIG_CPU_64 */
+
 #define PTRACE_GETREGS		12
 #define PTRACE_SETREGS		13
 #define PTRACE_GETFPREGS	14
@@ -141,4 +158,6 @@ extern void show_regs(struct pt_regs *);
 
 #endif /* __ASSEMBLY__ */
 
+#endif /* CONFIG_CPU_64 */
+
 #endif
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
