Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosH-0008BP-AE
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:53:40 +0100
Message-Id: <20180316125354.23462-65-s.hauer@pengutronix.de>
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
Subject: [PATCH 64/78] ARM: aarch64: print more information on sync exception
To: Barebox List <barebox@lists.infradead.org>

On a sync exception more useful information can be printed than we
currently do. Pass the ESR and FAR value to do_sync and print the
reason for the exception along with the address that actually faulted.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/exceptions_64.S | 4 ++++
 arch/arm/cpu/interrupts_64.c | 4 ++--
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/exceptions_64.S b/arch/arm/cpu/exceptions_64.S
index 58ca50b709..22034eaef9 100644
--- a/arch/arm/cpu/exceptions_64.S
+++ b/arch/arm/cpu/exceptions_64.S
@@ -35,12 +35,15 @@
 	switch_el x11, 3f, 2f, 1f
 3:	mrs	x1, esr_el3
 	mrs	x2, elr_el3
+	mrs     x3, far_el3
 	b	0f
 2:	mrs	x1, esr_el2
 	mrs	x2, elr_el2
+	mrs     x3, far_el2
 	b	0f
 1:	mrs	x1, esr_el1
 	mrs	x2, elr_el1
+	mrs     x3, far_el1
 0:
 	stp	x2, x0, [sp, #-16]!
 	mov	x0, sp
@@ -99,6 +102,7 @@ _do_bad_error:
 
 _do_sync:
 	exception_entry
+	mov	x2, x3
 	bl	do_sync
 	b	exception_exit
 
diff --git a/arch/arm/cpu/interrupts_64.c b/arch/arm/cpu/interrupts_64.c
index c32cd4f051..ee3dc3380b 100644
--- a/arch/arm/cpu/interrupts_64.c
+++ b/arch/arm/cpu/interrupts_64.c
@@ -143,9 +143,9 @@ void do_bad_error(struct pt_regs *pt_regs)
 	do_exception(pt_regs);
 }
 
-void do_sync(struct pt_regs *pt_regs)
+void do_sync(struct pt_regs *pt_regs, unsigned int esr, unsigned long far)
 {
-	printf("sync exception\n");
+	printf("%s exception at 0x%016lx\n", esr_get_class_string(esr), far);
 	do_exception(pt_regs);
 }
 
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
