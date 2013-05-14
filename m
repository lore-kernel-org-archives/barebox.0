Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.cvg.de ([62.153.82.30])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UcF5s-00067c-9h
 for barebox@lists.infradead.org; Tue, 14 May 2013 13:16:41 +0000
Received: from mail.cvg.de (mail.cvg.de [62.153.82.30])
 by mailout-1.intern.sigma-chemnitz.de (8.14.4/8.14.4) with ESMTP id
 r4EDFQad009812
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=OK)
 for <barebox@lists.infradead.org>; Tue, 14 May 2013 15:15:26 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Tue, 14 May 2013 15:14:56 +0200
Message-Id: <1368537296-19610-3-git-send-email-enrico.scholz@sigma-chemnitz.de>
In-Reply-To: <1368537296-19610-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
References: <1368537296-19610-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
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
Subject: [PATCH 3/3] ARM v7: added v7_mmu_cache_invalidate()
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

At least the iMX6 boot rom seems to jump into barebox with a non
invalidated d-cache which causes data corruption when
v7_mmu_cache_flush() executed by arm_early_mmu_cache_flush() overrides
stack or other valid data.

That's why the cache must be invalided for this processors explicitly
(e.g. in barebox_arm_reset_vector()).  Operation differs from flush only
in one instruction so that patch modifies the existing
v7_mmu_cache_flush() function slightly by adding an optional argument.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 arch/arm/cpu/cache-armv7.S | 22 ++++++++++++++++++----
 1 file changed, 18 insertions(+), 4 deletions(-)

diff --git a/arch/arm/cpu/cache-armv7.S b/arch/arm/cpu/cache-armv7.S
index 5595cf6..84c833e 100644
--- a/arch/arm/cpu/cache-armv7.S
+++ b/arch/arm/cpu/cache-armv7.S
@@ -57,7 +57,17 @@ ENTRY(v7_mmu_cache_off)
 ENDPROC(v7_mmu_cache_off)
 
 .section .text.v7_mmu_cache_flush
+ENTRY(v7_mmu_cache_invalidate)
+		mov	r0, #1
+		b	_v7_mmu_cache_flush
+ENDPROC(v7_mmu_cache_invalidate)
+
 ENTRY(v7_mmu_cache_flush)
+		mov	r0, #0
+		b	_v7_mmu_cache_flush
+ENDPROC(v7_mmu_cache_flush)
+
+ENTRY(_v7_mmu_cache_flush)
 		mrc	p15, 0, r12, c0, c1, 5	@ read ID_MMFR1
 		tst	r12, #0xf << 16		@ hierarchical cache (ARMv7)
 		mov	r12, #0
@@ -65,7 +75,8 @@ ENTRY(v7_mmu_cache_flush)
 		mcr	p15, 0, r12, c7, c14, 0	@ clean+invalidate D
 		b	iflush
 hierarchical:
-		stmfd	sp!, {r4-r7, r9-r11}
+		stmfd	sp!, {r4-r11}
+		mov	r8, r0
 		mcr	p15, 0, r12, c7, c10, 5	@ DMB
 		mrc	p15, 1, r0, c0, c0, 1	@ read clidr
 		ands	r3, r0, #0x7000000	@ extract loc from clidr
@@ -97,7 +108,10 @@ THUMB(		lsl	r6, r9, r5		)
 THUMB(		orr	r11, r12, r6		) @ factor way and cache number into r11
 THUMB(		lsl	r6, r7, r2		)
 THUMB(		orr	r11, r11, r6		) @ factor index number into r11
-		mcr	p15, 0, r11, c7, c14, 2	@ clean & invalidate by set/way
+		cmp	r8, #0
+THUMB(		ite	eq)
+		mcreq	p15, 0, r11, c7, c14, 2	@ clean & invalidate by set/way
+		mcrne	p15, 0, r11, c7, c6, 2	@ invalidate by set/way
 		subs	r9, r9, #1		@ decrement the way
 		bge	loop3
 		subs	r7, r7, #1		@ decrement the index
@@ -107,7 +121,7 @@ skip:
 		cmp	r3, r12
 		bgt	loop1
 finished:
-		ldmfd	sp!, {r4-r7, r9-r11}
+		ldmfd	sp!, {r4-r11}
 		mov	r12, #0			@ switch back to cache level 0
 		mcr	p15, 2, r12, c0, c0, 0	@ select current cache level in cssr
 iflush:
@@ -116,7 +130,7 @@ iflush:
 		mcr	p15, 0, r12, c7, c10, 4	@ DSB
 		mcr	p15, 0, r12, c7, c5, 4	@ ISB
 		mov	pc, lr
-ENDPROC(v7_mmu_cache_flush)
+ENDPROC(_v7_mmu_cache_flush)
 
 /*
  * cache_line_size - get the cache line size from the CSIDR register
-- 
1.8.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
