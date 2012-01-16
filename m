Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rmje4-0004TH-27
 for barebox@lists.infradead.org; Mon, 16 Jan 2012 10:18:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Jan 2012 11:18:16 +0100
Message-Id: <1326709100-24106-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1326709100-24106-1-git-send-email-s.hauer@pengutronix.de>
References: <1326709100-24106-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/10] ARM omap3: remove vector setup from lowlevel code
To: barebox@lists.infradead.org

No need to do this so early. We can't print anything right
now anyway, so there is no need to setup vectors.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/omap3_core.S |   41 ++++----------------------------------
 1 files changed, 5 insertions(+), 36 deletions(-)

diff --git a/arch/arm/mach-omap/omap3_core.S b/arch/arm/mach-omap/omap3_core.S
index b32017c..dffbe99 100644
--- a/arch/arm/mach-omap/omap3_core.S
+++ b/arch/arm/mach-omap/omap3_core.S
@@ -36,40 +36,15 @@
  */
 
 #include <config.h>
+#include <linux/linkage.h>
+#include <asm/assembler.h>
 #include <mach/silicon.h>
 #include <mach/wdt.h>
 #include <mach/clocks.h>
 
 #ifdef CONFIG_ARCH_HAS_LOWLEVEL_INIT
-.globl arch_init_lowlevel
-arch_init_lowlevel:
-       /* Copy vectors to mask ROM indirect addr */
-	mov	r0, pc			/* Store the current pc address */
-	sub	r0, r0, #8		/* Reduce offset */
-	ldr	r1, arch_start		/* Load the link address for arch_int */
-	ldr	r2, barebox_start		/* load the link address of start_init*/
-	sub	r1, r1, r2		/* get the offset */
-	/* subtract the offset from PC of arch=Current start */
-	sub	r0, r0, r1
-	mov	r2, #OMAP_SRAM_INTVECT_COPYSIZE		/* r2 <- size to copy */
-	add	r2, r0, r2		/* r2 <- source end address */
-	ldr	r1, SRAM_INTVECT	/* build vect addr */
-next:
-	ldmia	r0!, {r3-r10}		/* copy from source address [r0]    */
-	stmia	r1!, {r3-r10}		/* copy to   target address [r1]    */
-	cmp	r0, r2			/* until source end address [r2]    */
-	ble	next			/* loop until equal */
-
-	ldr	r1, SRAM_INTVECT	/* build vect addr */
-	/* Read the interrupt vector base address */
-	mrc p15, #0, r0, c12, c0, #0
-	/* Clear the vector base 4:0 is reserved. */
-	and r0, r0, #0xF
-	/* Store the SRAM_INTVECT address */
-	orr r0, r0, r1
-	/* Store the new vector address */
-	mcr p15, #0, r0, c12, c0, #0
-
+ENTRY(arch_init_lowlevel)
+	/* Invalidate all Dcaches */
 #ifndef CONFIG_CPU_V7_DCACHE_SKIP
 	/* If Arch specific ROM code SMI handling does not exist */
 	mrc	p15, 1, r0, c0, c0, 1	/* read clidr */
@@ -114,13 +89,7 @@ finished_inval:
 #endif /* CONFIG_CPU_V7_DCACHE_SKIP */
 	/* back to arch calling code */
 	mov	pc,	lr
-
-arch_start:
-	.word	arch_init_lowlevel
-barebox_start:
-	.word	exception_vectors
-SRAM_INTVECT:
-	.word	OMAP_SRAM_INTVECT
+ENDPROC(arch_init_lowlevel)
 
 SRAM_STACK:
 	.word	OMAP_SRAM_STACK
-- 
1.7.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
