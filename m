Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QqJbr-0001Ey-NG
	for barebox@lists.infradead.org; Mon, 08 Aug 2011 06:46:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 Aug 2011 08:46:41 +0200
Message-Id: <1312786003-14734-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/8] ARM: remove unused irq enable/disable functions
To: barebox@lists.infradead.org

We do not have irq support in barebox, so remove the unused interrupt
functions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/interrupts.c |   31 -------------------------------
 1 files changed, 0 insertions(+), 31 deletions(-)

diff --git a/arch/arm/cpu/interrupts.c b/arch/arm/cpu/interrupts.c
index a405fae..71744ac 100644
--- a/arch/arm/cpu/interrupts.c
+++ b/arch/arm/cpu/interrupts.c
@@ -29,37 +29,6 @@
 #include <asm/ptrace.h>
 #include <asm/unwind.h>
 
-#ifdef CONFIG_USE_IRQ
-/* enable IRQ interrupts */
-void enable_interrupts (void)
-{
-	unsigned long temp;
-	__asm__ __volatile__("mrs %0, cpsr\n"
-			     "bic %0, %0, #0x80\n"
-			     "msr cpsr_c, %0"
-			     : "=r" (temp)
-			     :
-			     : "memory");
-}
-
-
-/*
- * disable IRQ/FIQ interrupts
- * returns true if interrupts had been enabled before we disabled them
- */
-int disable_interrupts (void)
-{
-	unsigned long old,temp;
-	__asm__ __volatile__("mrs %0, cpsr\n"
-			     "orr %1, %0, #0xc0\n"
-			     "msr cpsr_c, %1"
-			     : "=r" (old), "=r" (temp)
-			     :
-			     : "memory");
-	return(old & 0x80) == 0;
-}
-#endif
-
 /**
  * FIXME
  */
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
