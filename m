Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x234.google.com ([2a00:1450:4010:c07::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zw3LJ-0003j2-Et
 for barebox@lists.infradead.org; Tue, 10 Nov 2015 07:27:51 +0000
Received: by lfdo63 with SMTP id o63so19711153lfd.2
 for <barebox@lists.infradead.org>; Mon, 09 Nov 2015 23:27:27 -0800 (PST)
Received: from localhost.localdomain (ppp91-79-57-136.pppoe.mtu-net.ru.
 [91.79.57.136])
 by smtp.gmail.com with ESMTPSA id bn6sm281576lbc.10.2015.11.09.23.27.26
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 09 Nov 2015 23:27:26 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 10 Nov 2015 10:27:16 +0300
Message-Id: <1447140436-29099-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1447140436-29099-1-git-send-email-antonynpavlov@gmail.com>
References: <1447140436-29099-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 4/4] MIPS: allow user to pass incorrect address to md command
To: barebox@lists.infradead.org

This commit makes it possible to handle exception on
incorrect data access so 'md' command just show 'xxxxxxxx'
instead of crashing the system.

    barebox:/ md -l 0xa0000003+4
    a0000003: xxxxxxxx                                           ....

Without this commit we will get this

    barebox:/ md -l 0xa0000003+4
    a0000003:
    Ooops, address error on load or ifetch!

    ...

    ### ERROR ### Please RESET the board ###

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/barebox.h |  2 +-
 arch/mips/lib/genex.S           |  6 +++++
 arch/mips/lib/traps.c           | 52 ++++++++++++++++++++++++++++++++++++-----
 3 files changed, 53 insertions(+), 7 deletions(-)

diff --git a/arch/mips/include/asm/barebox.h b/arch/mips/include/asm/barebox.h
index 499b731..e5b964c 100644
--- a/arch/mips/include/asm/barebox.h
+++ b/arch/mips/include/asm/barebox.h
@@ -15,6 +15,6 @@
 #ifndef _ASM_MIPS_BAREBOX_H_
 #define _ASM_MIPS_BAREBOX_H_
 
-/* nothing special yet */
+#define ARCH_HAS_DATA_ABORT_MASK
 
 #endif /* _ASM_MIPS_BAREBOX_H_ */
diff --git a/arch/mips/lib/genex.S b/arch/mips/lib/genex.S
index 8941714..5fb2223 100644
--- a/arch/mips/lib/genex.S
+++ b/arch/mips/lib/genex.S
@@ -31,3 +31,9 @@ NESTED(except_vec3_generic, 0, sp)
 	 nop
 	END(except_vec3_generic)
 	.set	at
+
+FEXPORT(ret_from_exception)
+	.set	noat
+	RESTORE_ALL_AND_RET
+	 nop
+	.set	at
diff --git a/arch/mips/lib/traps.c b/arch/mips/lib/traps.c
index d69697d..5fc32fe 100644
--- a/arch/mips/lib/traps.c
+++ b/arch/mips/lib/traps.c
@@ -1,9 +1,25 @@
 #include <common.h>
-
+#include <abort.h>
 #include <asm/mipsregs.h>
 #include <asm/ptrace.h>
 
-void barebox_exc_handler(const struct pt_regs *regs);
+static int mips_ignore_data_abort;
+static int mips_data_abort_occurred;
+
+void data_abort_mask(void)
+{
+	mips_data_abort_occurred = 0;
+	mips_ignore_data_abort = 1;
+}
+
+int data_abort_unmask(void)
+{
+	mips_ignore_data_abort = 0;
+
+	return mips_data_abort_occurred != 0;
+}
+
+void barebox_exc_handler(struct pt_regs *regs);
 
 /*
  * Trap codes from OpenBSD trap.h
@@ -31,9 +47,14 @@ void barebox_exc_handler(const struct pt_regs *regs);
 #define CR_EXC_CODE             0x0000007c
 #define CR_EXC_CODE_SHIFT       2
 
+static inline u32 get_exc_code(u32 cause)
+{
+	return (cause & CR_EXC_CODE) >> CR_EXC_CODE_SHIFT;
+}
+
 static char *get_exc_name(u32 cause)
 {
-	switch ((cause & CR_EXC_CODE) >> CR_EXC_CODE_SHIFT) {
+	switch (get_exc_code(cause)) {
 
 	case T_INT:
 		return "interrupt pending";
@@ -133,12 +154,31 @@ static void show_regs(const struct pt_regs *regs)
 	printf("Config: %08x\n\n", read_c0_config());
 }
 
-void barebox_exc_handler(const struct pt_regs *regs)
+void barebox_exc_handler(struct pt_regs *regs)
 {
 	unsigned int cause = regs->cp0_cause;
 
-	printf("\nOoops, %s!\n\n", get_exc_name(cause));
-	show_regs(regs);
+	if (get_exc_code(cause) == T_ADDR_ERR_LD && mips_ignore_data_abort) {
+
+		mips_data_abort_occurred = 1;
+
+		regs->cp0_epc += 4;
+
+		/*
+		 * Don't let your children do this ...
+		 */
+		__asm__ __volatile__(
+			"move\t$29, %0\n\t"
+			"j\tret_from_exception"
+			:/* no outputs */
+			:"r" (&regs));
+
+		/* Unreached */
+
+	} else {
+		printf("\nOoops, %s!\n\n", get_exc_name(cause));
+		show_regs(regs);
+	}
 
 	hang();
 }
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
