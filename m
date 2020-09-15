Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kI4zc-0005fj-QF
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 07:03:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Sep 2020 09:03:05 +0200
Message-Id: <20200915070305.15763-7-s.hauer@pengutronix.de>
In-Reply-To: <20200915070305.15763-1-s.hauer@pengutronix.de>
References: <20200915070305.15763-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 6/6] powerpc: Add function prototypes for exception handlers
To: Barebox List <barebox@lists.infradead.org>

The exception handlers lead to -Wmissing-prototypes warnings. Add
prototypes for them to avoid these warnings.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/powerpc/include/asm/processor.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/powerpc/include/asm/processor.h b/arch/powerpc/include/asm/processor.h
index 39a89a9d15..f4677d11e1 100644
--- a/arch/powerpc/include/asm/processor.h
+++ b/arch/powerpc/include/asm/processor.h
@@ -1109,6 +1109,14 @@ void ll_puts(const char *);
 /* In misc.c */
 void _nmask_and_or_msr(unsigned long nmask, unsigned long or_val);
 
+void CritcalInputException(struct pt_regs *regs);
+void MachineCheckException(struct pt_regs *regs);
+void AlignmentException(struct pt_regs *regs);
+void ProgramCheckException(struct pt_regs *regs);
+void PITException(struct pt_regs *regs);
+void UnknownException(struct pt_regs *regs);
+void DebugException(struct pt_regs *regs);
+
 #endif /* ndef ASSEMBLY*/
 
 #ifdef CONFIG_MACH_SPECIFIC
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
