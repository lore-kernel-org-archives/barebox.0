Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QqJbr-0001Ex-LC
	for barebox@lists.infradead.org; Mon, 08 Aug 2011 06:46:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 Aug 2011 08:46:40 +0200
Message-Id: <1312786003-14734-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1312786003-14734-1-git-send-email-s.hauer@pengutronix.de>
References: <1312786003-14734-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/8] ARM: exceptions: remove unnecessary function declarations
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/interrupts.c |    8 --------
 1 files changed, 0 insertions(+), 8 deletions(-)

diff --git a/arch/arm/cpu/interrupts.c b/arch/arm/cpu/interrupts.c
index 68b2931..a405fae 100644
--- a/arch/arm/cpu/interrupts.c
+++ b/arch/arm/cpu/interrupts.c
@@ -29,14 +29,6 @@
 #include <asm/ptrace.h>
 #include <asm/unwind.h>
 
-void do_undefined_instruction (struct pt_regs *pt_regs);
-void do_software_interrupt (struct pt_regs *pt_regs);
-void do_prefetch_abort (struct pt_regs *pt_regs);
-void do_data_abort (struct pt_regs *pt_regs);
-void do_not_used (struct pt_regs *pt_regs);
-void do_fiq (struct pt_regs *pt_regs);
-void do_irq (struct pt_regs *pt_regs);
-
 #ifdef CONFIG_USE_IRQ
 /* enable IRQ interrupts */
 void enable_interrupts (void)
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
