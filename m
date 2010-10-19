Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P8Bj8-0000sZ-MP
	for barebox@lists.infradead.org; Tue, 19 Oct 2010 12:55:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Oct 2010 14:55:29 +0200
Message-Id: <1287492930-15716-42-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
References: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 41/42] arm interrupts.c: sparse fixes
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/interrupts.c |   10 +++++++++-
 1 files changed, 9 insertions(+), 1 deletions(-)

diff --git a/arch/arm/cpu/interrupts.c b/arch/arm/cpu/interrupts.c
index 0557172..4a0b3f8 100644
--- a/arch/arm/cpu/interrupts.c
+++ b/arch/arm/cpu/interrupts.c
@@ -28,6 +28,14 @@
 #include <common.h>
 #include <asm/ptrace.h>
 
+void do_undefined_instruction (struct pt_regs *pt_regs);
+void do_software_interrupt (struct pt_regs *pt_regs);
+void do_prefetch_abort (struct pt_regs *pt_regs);
+void do_data_abort (struct pt_regs *pt_regs);
+void do_not_used (struct pt_regs *pt_regs);
+void do_fiq (struct pt_regs *pt_regs);
+void do_irq (struct pt_regs *pt_regs);
+
 #ifdef CONFIG_USE_IRQ
 /* enable IRQ interrupts */
 void enable_interrupts (void)
@@ -62,7 +70,7 @@ int disable_interrupts (void)
 /**
  * FIXME
  */
-void bad_mode (void)
+static void bad_mode (void)
 {
 	panic ("Resetting CPU ...\n");
 	reset_cpu (0);
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
