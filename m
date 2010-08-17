Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from bear.ext.ti.com ([192.94.94.41])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OlOxc-0004jW-GR
	for barebox@lists.infradead.org; Tue, 17 Aug 2010 16:24:25 +0000
From: Nishanth Menon <nm@ti.com>
Date: Tue, 17 Aug 2010 11:24:19 -0500
Message-Id: <1282062259-26339-1-git-send-email-nm@ti.com>
In-Reply-To: <omap3: omap3530_beagle_per_uart_defconfig broken>
References: <omap3: omap3530_beagle_per_uart_defconfig broken>
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
Subject: [PATCH] omap3: add arch specific dcache flush
To: barebox <barebox@lists.infradead.org>
Cc: Nishanth Menon <nm@ti.com>, Michael <mgr@pengutronix.de>

Add OMAP3 architecture specific dcache flush back in.

Commit 78104ae181f78d83664fdc7522eb632d9c3b2ec9 isolates
the cache handling to appropriate handlers, but certain
architectures may need special handling esp during boot
time.
without this patch, building barebox with
	omap3530_beagle_per_uart_defconfig
and attempting to use peripheral download with pusb/pserial
will fail as OMAP ROM code depends on 2nd stage bootloaders
to clean up things.

Discussion Thread: http://www.spinics.net/lists/u-boot-v2/msg01286.html

Cc: Michael <mgr@pengutronix.de>
Cc: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Nishanth Menon <nm@ti.com>
---
This patch is based on master commit id: 3762bb2

 arch/arm/mach-omap/omap3_core.S |   43 +++++++++++++++++++++++++++++++++++++++
 1 files changed, 43 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-omap/omap3_core.S b/arch/arm/mach-omap/omap3_core.S
index d904231..ee4c133 100644
--- a/arch/arm/mach-omap/omap3_core.S
+++ b/arch/arm/mach-omap/omap3_core.S
@@ -86,6 +86,49 @@ next:
         ldr     lr,	[sp]    /* restore current link register */
         ldr     ip,	[sp]    /* restore save ip */
 
+	/* Invalidate all Dcaches */
+#ifndef CONFIG_CPU_V7_DCACHE_SKIP
+	/* If Arch specific ROM code SMI handling does not exist */
+	mrc	p15, 1, r0, c0, c0, 1	/* read clidr */
+	ands	r3, r0, #0x7000000	/* extract loc from clidr */
+	mov	r3, r3, lsr #23		/* left align loc bit field */
+	beq	finished_inval		/* if loc is 0, then no need to clean */
+	mov	r10, #0			/* start clean at cache level 0 */
+inval_loop1:
+	add	r2, r10, r10, lsr #1	/* work out 3x current cache level */
+	mov	r1, r0, lsr r2		/* extract cache type bits from clidr */
+	and	r1, r1, #	7	/* mask of the bits for current cache only */
+	cmp	r1, #2			/* see what cache we have at this level */
+	blt	skip_inval		/* skip if no cache, or just i-cache */
+	mcr	p15, 2, r10, c0, c0, 0	/* select current cache level in cssr */
+	isb				/* isb to sych the new cssr&csidr */
+	mrc	p15, 1, r1, c0, c0, 0	/* read the new csidr */
+	and	r2, r1, #7		/* extract the length of the cache lines */
+	add	r2, r2, #4		/* add 4 (line length offset) */
+	ldr	r4, =0x3ff
+	ands	r4, r4, r1, lsr #3	/* find maximum number on the way size*/
+	clz	r5, r4			/* find bit position of way size increment */
+	ldr	r7, =0x7fff
+	ands	r7, r7, r1, lsr #13	/* extract max number of the index size */
+inval_loop2:
+	mov	r9, r4			/* create working copy of max way size */
+inval_loop3:
+	orr	r11, r10, r9, lsl r5	/* factor way and cache number into r11*/
+	orr	r11, r11, r7, lsl r2	/* factor index number into r11 */
+	mcr	p15, 0, r11, c7, c6, 2	/* invalidate by set/way */
+	subs	r9, r9, #1		/* decrement the way */
+	bge	inval_loop3
+	subs	r7, r7, #1		/* decrement the index */
+	bge	inval_loop2
+skip_inval:
+	add	r10, r10, #2		/* increment cache number */
+	cmp	r3, r10
+	bgt	inval_loop1
+finished_inval:
+	mov	r10, #0			/* swith back to cache level 0 */
+	mcr	p15, 2, r10, c0, c0, 0	/* select current cache level in cssr */
+	isb
+#endif /* CONFIG_CPU_V7_DCACHE_SKIP */
 	/* back to arch calling code */
 	mov	pc,	lr
 
-- 
1.6.3.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
