Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NhOhS-0005Py-VF
	for barebox@lists.infradead.org; Tue, 16 Feb 2010 14:47:04 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 16 Feb 2010 15:46:21 +0100
Message-Id: <1266331586-11253-7-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1266331586-11253-6-git-send-email-mkl@pengutronix.de>
References: <1266331586-11253-1-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-2-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-3-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-4-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-5-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-6-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 06/11] start-arm: cleanup: propper indention
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/arm/cpu/start-arm.S |   12 ++++++------
 1 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/cpu/start-arm.S b/arch/arm/cpu/start-arm.S
index a30b281..4d61cee 100644
--- a/arch/arm/cpu/start-arm.S
+++ b/arch/arm/cpu/start-arm.S
@@ -127,16 +127,16 @@ reset:
 	msr	cpsr,r0
 
 #ifdef CONFIG_ARCH_HAS_LOWLEVEL_INIT
-	bl arch_init_lowlevel
+	bl	arch_init_lowlevel
 #endif
 
 #ifdef CONFIG_CPU_V7
 	/*
 	 * Invalidate v7 I/D caches
 	 */
-	mov     r0, #0                 /* set up for MCR */
-	mcr     p15, 0, r0, c8, c7, 0  /* invalidate TLBs */
-	mcr     p15, 0, r0, c7, c5, 0  /* invalidate icache */
+	mov	r0, #0			/* set up for MCR */
+	mcr	p15, 0, r0, c8, c7, 0	/* invalidate TLBs */
+	mcr	p15, 0, r0, c7, c5, 0	/* invalidate icache */
 	/* Invalidate all Dcaches */
 #ifndef CONFIG_CPU_V7_DCACHE_SKIP
 	/* If Arch specific ROM code SMI handling does not exist */
@@ -212,8 +212,8 @@ finished_inval:
 relocate:				/* relocate barebox to RAM	    */
 	adr	r0, _start		/* r0 <- current position of code   */
 	ldr	r1, _TEXT_BASE		/* test if we run from flash or RAM */
-	cmp     r0, r1                  /* don't reloc during debug         */
-	beq     stack_setup
+	cmp	r0, r1			/* don't reloc during debug         */
+	beq	stack_setup
 
 	ldr	r2, _barebox_start
 	ldr	r3, _bss_start
-- 
1.6.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
