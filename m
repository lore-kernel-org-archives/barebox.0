Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.cvg.de ([62.153.82.30])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UcF5s-00067e-9m
 for barebox@lists.infradead.org; Tue, 14 May 2013 13:16:42 +0000
Received: from mail.cvg.de (mail.cvg.de [62.153.82.30])
 by mailout-1.intern.sigma-chemnitz.de (8.14.4/8.14.4) with ESMTP id
 r4EDFVos009818
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=OK)
 for <barebox@lists.infradead.org>; Tue, 14 May 2013 15:15:31 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Tue, 14 May 2013 15:14:54 +0200
Message-Id: <1368537296-19610-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
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
Subject: [PATCH 1/3] ARM v7: fix mmu-off operation
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

Although conclusions in 50d1b2de8ea0f3b8d89fe3a97ce64315996ed4cb "ARM
v7: Fix register corruption in v7_mmu_cache_off" are correct, the
implemented fix is not complete because the following failure can
happen:

1. d-cache contains the cache line around 'sp'

2. v7_mmu_cache_off() disables cache

3. early v7_mmu_cache_flush() pushes 'lr' on uncached stack

4. v7_mmu_cache_flush() flushes d-cache and can override stack written
   by step 3.

5. v7_mmu_cache_flush() pops 'lr' out of cache and jumps to it which
   might be random data now.

Patch avoids step 3 which is easy because 'lr' is never modified by the
function.  By using the 'r12' scratch register instead of 'r10', the
whole initial 'push' can be avoided.

Patch moves also the 'DMB' operation so that it is executed after data
has been pushed on stack.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 arch/arm/cpu/cache-armv7.S | 50 +++++++++++++++++++++++-----------------------
 1 file changed, 25 insertions(+), 25 deletions(-)

diff --git a/arch/arm/cpu/cache-armv7.S b/arch/arm/cpu/cache-armv7.S
index 13542d9..5bdf7e4 100644
--- a/arch/arm/cpu/cache-armv7.S
+++ b/arch/arm/cpu/cache-armv7.S
@@ -34,7 +34,10 @@ ENDPROC(v7_mmu_cache_on)
 
 .section .text.v7_mmu_cache_off
 ENTRY(v7_mmu_cache_off)
-		stmfd	sp!, {r0-r7, r9-r11}
+		/* although 'r12' is an eabi scratch register which does
+		   not need to be restored, save it to ensure an 8-byte
+	           stack alignment */
+		stmfd	sp!, {r4-r12, lr}
 		mrc	p15, 0, r0, c1, c0
 #ifdef CONFIG_MMU
 		bic	r0, r0, #0x000d
@@ -42,7 +45,6 @@ ENTRY(v7_mmu_cache_off)
 		bic	r0, r0, #0x000c
 #endif
 		mcr	p15, 0, r0, c1, c0	@ turn MMU and cache off
-		mov	r12, lr
 		bl	v7_mmu_cache_flush
 		mov	r0, #0
 #ifdef CONFIG_MMU
@@ -51,35 +53,33 @@ ENTRY(v7_mmu_cache_off)
 		mcr	p15, 0, r0, c7, c5, 6	@ invalidate BTC
 		mcr	p15, 0, r0, c7, c10, 4	@ DSB
 		mcr	p15, 0, r0, c7, c5, 4	@ ISB
-		ldmfd	sp!, {r0-r7, r9-r11}
-		mov	pc, r12
+		ldmfd	sp!, {r4-r12, pc}
 ENDPROC(v7_mmu_cache_off)
 
 .section .text.v7_mmu_cache_flush
 ENTRY(v7_mmu_cache_flush)
-		stmfd	sp!, {r10, lr}
-		mrc	p15, 0, r10, c0, c1, 5	@ read ID_MMFR1
-		tst	r10, #0xf << 16		@ hierarchical cache (ARMv7)
-		mov	r10, #0
+		mrc	p15, 0, r12, c0, c1, 5	@ read ID_MMFR1
+		tst	r12, #0xf << 16		@ hierarchical cache (ARMv7)
+		mov	r12, #0
 		beq	hierarchical
-		mcr	p15, 0, r10, c7, c14, 0	@ clean+invalidate D
+		mcr	p15, 0, r12, c7, c14, 0	@ clean+invalidate D
 		b	iflush
 hierarchical:
-		mcr	p15, 0, r10, c7, c10, 5	@ DMB
 		stmfd	sp!, {r0-r7, r9-r11}
+		mcr	p15, 0, r12, c7, c10, 5	@ DMB
 		mrc	p15, 1, r0, c0, c0, 1	@ read clidr
 		ands	r3, r0, #0x7000000	@ extract loc from clidr
 		mov	r3, r3, lsr #23		@ left align loc bit field
 		beq	finished		@ if loc is 0, then no need to clean
-		mov	r10, #0			@ start clean at cache level 0
+		mov	r12, #0			@ start clean at cache level 0
 loop1:
-		add	r2, r10, r10, lsr #1	@ work out 3x current cache level
+		add	r2, r12, r12, lsr #1	@ work out 3x current cache level
 		mov	r1, r0, lsr r2		@ extract cache type bits from clidr
 		and	r1, r1, #7		@ mask of the bits for current cache only
 		cmp	r1, #2			@ see what cache we have at this level
 		blt	skip			@ skip if no cache, or just i-cache
-		mcr	p15, 2, r10, c0, c0, 0	@ select current cache level in cssr
-		mcr	p15, 0, r10, c7, c5, 4	@ isb to sych the new cssr&csidr
+		mcr	p15, 2, r12, c0, c0, 0	@ select current cache level in cssr
+		mcr	p15, 0, r12, c7, c5, 4	@ isb to sych the new cssr&csidr
 		mrc	p15, 1, r1, c0, c0, 0	@ read the new csidr
 		and	r2, r1, #7		@ extract the length of the cache lines
 		add	r2, r2, #4		@ add 4 (line length offset)
@@ -91,10 +91,10 @@ loop1:
 loop2:
 		mov	r9, r4			@ create working copy of max way size
 loop3:
-ARM(		orr	r11, r10, r9, lsl r5	) @ factor way and cache number into r11
+ARM(		orr	r11, r12, r9, lsl r5	) @ factor way and cache number into r11
 ARM(		orr	r11, r11, r7, lsl r2	) @ factor index number into r11
 THUMB(		lsl	r6, r9, r5		)
-THUMB(		orr	r11, r10, r6		) @ factor way and cache number into r11
+THUMB(		orr	r11, r12, r6		) @ factor way and cache number into r11
 THUMB(		lsl	r6, r7, r2		)
 THUMB(		orr	r11, r11, r6		) @ factor index number into r11
 		mcr	p15, 0, r11, c7, c14, 2	@ clean & invalidate by set/way
@@ -103,19 +103,19 @@ THUMB(		orr	r11, r11, r6		) @ factor index number into r11
 		subs	r7, r7, #1		@ decrement the index
 		bge	loop2
 skip:
-		add	r10, r10, #2		@ increment cache number
-		cmp	r3, r10
+		add	r12, r12, #2		@ increment cache number
+		cmp	r3, r12
 		bgt	loop1
 finished:
 		ldmfd	sp!, {r0-r7, r9-r11}
-		mov	r10, #0			@ switch back to cache level 0
-		mcr	p15, 2, r10, c0, c0, 0	@ select current cache level in cssr
+		mov	r12, #0			@ switch back to cache level 0
+		mcr	p15, 2, r12, c0, c0, 0	@ select current cache level in cssr
 iflush:
-		mcr	p15, 0, r10, c7, c10, 4	@ DSB
-		mcr	p15, 0, r10, c7, c5, 0	@ invalidate I+BTB
-		mcr	p15, 0, r10, c7, c10, 4	@ DSB
-		mcr	p15, 0, r10, c7, c5, 4	@ ISB
-		ldmfd	sp!, {r10, pc}
+		mcr	p15, 0, r12, c7, c10, 4	@ DSB
+		mcr	p15, 0, r12, c7, c5, 0	@ invalidate I+BTB
+		mcr	p15, 0, r12, c7, c10, 4	@ DSB
+		mcr	p15, 0, r12, c7, c5, 4	@ ISB
+		mov	pc, lr
 ENDPROC(v7_mmu_cache_flush)
 
 /*
-- 
1.8.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
