Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1O7OXj-0008Dp-Uf
	for barebox@lists.infradead.org; Thu, 29 Apr 2010 07:52:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 29 Apr 2010 09:52:10 +0200
Message-Id: <1272527535-17527-13-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1272527535-17527-1-git-send-email-s.hauer@pengutronix.de>
References: <1272527535-17527-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/17] arm: move __mmu_cache_flush to bare_init section
To: barebox@lists.infradead.org

Instead of having seperate cache flush functions in the startup code
we want to call the generic functions. To accomplish this they have
to be in the bare_init section.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/cache-armv4.S |    2 ++
 arch/arm/cpu/cache-armv5.S |    2 ++
 arch/arm/cpu/cache-armv6.S |    3 +++
 arch/arm/cpu/cache-armv7.S |    2 ++
 4 files changed, 9 insertions(+), 0 deletions(-)

diff --git a/arch/arm/cpu/cache-armv4.S b/arch/arm/cpu/cache-armv4.S
index a79cc27..3cec4dd 100644
--- a/arch/arm/cpu/cache-armv4.S
+++ b/arch/arm/cpu/cache-armv4.S
@@ -41,6 +41,7 @@ ENTRY(__mmu_cache_off)
 		mov	pc, lr
 ENDPROC(__mmu_cache_off)
 
+.section ".text_bare_init.text"
 ENTRY(__mmu_cache_flush)
 		mrc	p15, 0, r6, c0, c0	@ get processor ID
 		mov	r2, #64*1024		@ default: 32K dcache size (*2)
@@ -73,6 +74,7 @@ no_cache_id:
 		mov	pc, lr
 ENDPROC(__mmu_cache_flush)
 
+.section ".text.text"
 /*
  *	dma_inv_range(start, end)
  *
diff --git a/arch/arm/cpu/cache-armv5.S b/arch/arm/cpu/cache-armv5.S
index f52bcb7..9fb320f 100644
--- a/arch/arm/cpu/cache-armv5.S
+++ b/arch/arm/cpu/cache-armv5.S
@@ -41,6 +41,7 @@ ENTRY(__mmu_cache_off)
 		mov	pc, lr
 ENDPROC(__mmu_cache_off)
 
+.section ".text_bare_init.text"
 ENTRY(__mmu_cache_flush)
 1:		mrc	p15, 0, r15, c7, c14, 3	@ test,clean,invalidate D cache
 		bne	1b
@@ -48,6 +49,7 @@ ENTRY(__mmu_cache_flush)
 		mcr	p15, 0, r0, c7, c10, 4	@ drain WB
 		mov	pc, lr
 ENDPROC(__mmu_cache_flush)
+.section ".text.text"
 
 /*
  *	dma_inv_range(start, end)
diff --git a/arch/arm/cpu/cache-armv6.S b/arch/arm/cpu/cache-armv6.S
index e3498bb..25476d5 100644
--- a/arch/arm/cpu/cache-armv6.S
+++ b/arch/arm/cpu/cache-armv6.S
@@ -31,6 +31,7 @@ __common_mmu_cache_on:
 		mrc	p15, 0, r0, c1, c0, 0	@ and read it back to
 		sub	pc, lr, r0, lsr #32	@ properly flush pipeline
 
+
 ENTRY(__mmu_cache_off)
 #ifdef CONFIG_MMU
 		mrc	p15, 0, r0, c1, c0
@@ -42,6 +43,7 @@ ENTRY(__mmu_cache_off)
 #endif
 		mov	pc, lr
 
+.section ".text_bare_init.text"
 ENTRY(__mmu_cache_flush)
 		mov	r1, #0
 		mcr	p15, 0, r1, c7, c14, 0	@ clean+invalidate D
@@ -50,6 +52,7 @@ ENTRY(__mmu_cache_flush)
 		mcr	p15, 0, r1, c7, c10, 4	@ drain WB
 		mov	pc, lr
 ENDPROC(__mmu_cache_flush)
+.section ".text.text"
 
 /*
  *	v6_dma_inv_range(start,end)
diff --git a/arch/arm/cpu/cache-armv7.S b/arch/arm/cpu/cache-armv7.S
index 9afa20d..a303dc1 100644
--- a/arch/arm/cpu/cache-armv7.S
+++ b/arch/arm/cpu/cache-armv7.S
@@ -49,6 +49,7 @@ ENTRY(__mmu_cache_off)
 		mov	pc, r12
 ENDPROC(__mmu_cache_on)
 
+.section ".text_bare_init.text"
 ENTRY(__mmu_cache_flush)
 		mrc	p15, 0, r10, c0, c1, 5	@ read ID_MMFR1
 		tst	r10, #0xf << 16		@ hierarchical cache (ARMv7)
@@ -105,6 +106,7 @@ iflush:
 		mcr	p15, 0, r10, c7, c5, 4	@ ISB
 		mov	pc, lr
 ENDPROC(__mmu_cache_flush)
+.section ".text.text"
 
 /*
  * cache_line_size - get the cache line size from the CSIDR register
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
