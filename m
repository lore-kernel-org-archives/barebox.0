Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T0ZBd-0004KZ-Dg
 for barebox@lists.infradead.org; Sun, 12 Aug 2012 14:30:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 12 Aug 2012 16:30:29 +0200
Message-Id: <1344781832-17978-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1344781832-17978-1-git-send-email-s.hauer@pengutronix.de>
References: <1344781832-17978-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] ARM __mmu_cache_*: Do not clobber registers
To: barebox@lists.infradead.org

Save/restore the registers used in __mmu_cache_* so that they can
be called as regular C functions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/cache-armv4.S |    3 ++-
 arch/arm/cpu/cache-armv7.S |    6 ++++--
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/cache-armv4.S b/arch/arm/cpu/cache-armv4.S
index 2231eee..22fab14 100644
--- a/arch/arm/cpu/cache-armv4.S
+++ b/arch/arm/cpu/cache-armv4.S
@@ -46,6 +46,7 @@ ENDPROC(__mmu_cache_off)
 
 .section .text.__mmu_cache_flush
 ENTRY(__mmu_cache_flush)
+		stmfd	sp!, {r6, r11, lr}
 		mrc	p15, 0, r6, c0, c0	@ get processor ID
 		mov	r2, #64*1024		@ default: 32K dcache size (*2)
 		mov	r11, #32		@ default: 32 byte line size
@@ -74,7 +75,7 @@ no_cache_id:
 		mcr	p15, 0, r1, c7, c5, 0	@ flush I cache
 		mcr	p15, 0, r1, c7, c6, 0	@ flush D cache
 		mcr	p15, 0, r1, c7, c10, 4	@ drain WB
-		mov	pc, lr
+		ldmfd	sp!, {r6, r11, pc}
 ENDPROC(__mmu_cache_flush)
 
 /*
diff --git a/arch/arm/cpu/cache-armv7.S b/arch/arm/cpu/cache-armv7.S
index 9bd7425..2eba959 100644
--- a/arch/arm/cpu/cache-armv7.S
+++ b/arch/arm/cpu/cache-armv7.S
@@ -3,6 +3,7 @@
 
 .section .text.__mmu_cache_on
 ENTRY(__mmu_cache_on)
+		stmfd	sp!, {r11, lr}
 		mov	r12, lr
 #ifdef CONFIG_MMU
 		mrc	p15, 0, r11, c0, c1, 4	@ read ID_MMFR0
@@ -28,7 +29,7 @@ ENTRY(__mmu_cache_on)
 		mrc	p15, 0, r0, c1, c0, 0	@ and read it back
 		mov	r0, #0
 		mcr	p15, 0, r0, c7, c5, 4	@ ISB
-		mov	pc, r12
+		ldmfd	sp!, {r11, pc}
 ENDPROC(__mmu_cache_on)
 
 .section .text.__mmu_cache_off
@@ -54,6 +55,7 @@ ENDPROC(__mmu_cache_off)
 
 .section .text.__mmu_cache_flush
 ENTRY(__mmu_cache_flush)
+		stmfd	sp!, {r10, lr}
 		mrc	p15, 0, r10, c0, c1, 5	@ read ID_MMFR1
 		tst	r10, #0xf << 16		@ hierarchical cache (ARMv7)
 		mov	r10, #0
@@ -111,7 +113,7 @@ iflush:
 		mcr	p15, 0, r10, c7, c5, 0	@ invalidate I+BTB
 		mcr	p15, 0, r10, c7, c10, 4	@ DSB
 		mcr	p15, 0, r10, c7, c5, 4	@ ISB
-		mov	pc, lr
+		ldmfd	sp!, {r10, pc}
 ENDPROC(__mmu_cache_flush)
 
 /*
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
