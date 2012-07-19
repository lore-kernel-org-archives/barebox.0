Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Srlr9-0005KP-Ho
 for barebox@lists.infradead.org; Thu, 19 Jul 2012 08:13:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 19 Jul 2012 10:13:01 +0200
Message-Id: <1342685582-13244-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1342685582-13244-1-git-send-email-s.hauer@pengutronix.de>
References: <1342685582-13244-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/9] ARM: Separate assembler functions into their own section
To: barebox@lists.infradead.org

To let the linker remove unused functions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/cache-armv4.S      |    7 ++++++-
 arch/arm/cpu/cache-armv5.S      |    7 ++++++-
 arch/arm/cpu/cache-armv6.S      |   11 +++++++++--
 arch/arm/cpu/cache-armv7.S      |    8 ++++++--
 arch/arm/lib/ashldi3.S          |    1 +
 arch/arm/lib/ashrdi3.S          |    1 +
 arch/arm/lib/findbit.S          |    9 +++++++++
 arch/arm/lib/io-writesw-armv4.S |    2 ++
 arch/arm/lib/lib1funcs.S        |    7 +++++++
 arch/arm/lib/lshrdi3.S          |    1 +
 10 files changed, 48 insertions(+), 6 deletions(-)

diff --git a/arch/arm/cpu/cache-armv4.S b/arch/arm/cpu/cache-armv4.S
index 6d03565..2231eee 100644
--- a/arch/arm/cpu/cache-armv4.S
+++ b/arch/arm/cpu/cache-armv4.S
@@ -3,6 +3,7 @@
 
 #define CACHE_DLINESIZE 32
 
+.section .text.__mmu_cache_on
 ENTRY(__mmu_cache_on)
 		mov	r12, lr
 #ifdef CONFIG_MMU
@@ -30,6 +31,7 @@ __common_mmu_cache_on:
 		mrc	p15, 0, r0, c1, c0, 0	@ and read it back to
 		sub	pc, lr, r0, lsr #32	@ properly flush pipeline
 
+.section .text.__mmu_cache_off
 ENTRY(__mmu_cache_off)
 #ifdef CONFIG_MMU
 		mrc	p15, 0, r0, c1, c0
@@ -42,6 +44,7 @@ ENTRY(__mmu_cache_off)
 		mov	pc, lr
 ENDPROC(__mmu_cache_off)
 
+.section .text.__mmu_cache_flush
 ENTRY(__mmu_cache_flush)
 		mrc	p15, 0, r6, c0, c0	@ get processor ID
 		mov	r2, #64*1024		@ default: 32K dcache size (*2)
@@ -74,7 +77,6 @@ no_cache_id:
 		mov	pc, lr
 ENDPROC(__mmu_cache_flush)
 
-.section ".text.text"
 /*
  *	dma_inv_range(start, end)
  *
@@ -88,6 +90,7 @@ ENDPROC(__mmu_cache_flush)
  *
  * (same as v4wb)
  */
+.section .text.__dma_inv_range
 ENTRY(__dma_inv_range)
 	tst	r0, #CACHE_DLINESIZE - 1
 	bic	r0, r0, #CACHE_DLINESIZE - 1
@@ -111,6 +114,7 @@ ENTRY(__dma_inv_range)
  *
  * (same as v4wb)
  */
+.section .text.__dma_clean_range
 ENTRY(__dma_clean_range)
 	bic	r0, r0, #CACHE_DLINESIZE - 1
 1:	mcr	p15, 0, r0, c7, c10, 1		@ clean D entry
@@ -128,6 +132,7 @@ ENTRY(__dma_clean_range)
  *	- start	- virtual start address
  *	- end	- virtual end address
  */
+.section .text.__dma_flush_range
 ENTRY(__dma_flush_range)
 	bic	r0, r0, #CACHE_DLINESIZE - 1
 1:	mcr	p15, 0, r0, c7, c14, 1		@ clean+invalidate D entry
diff --git a/arch/arm/cpu/cache-armv5.S b/arch/arm/cpu/cache-armv5.S
index a1193a6..d6ffaf1 100644
--- a/arch/arm/cpu/cache-armv5.S
+++ b/arch/arm/cpu/cache-armv5.S
@@ -3,6 +3,7 @@
 
 #define CACHE_DLINESIZE 32
 
+.section .text.__mmu_cache_on
 ENTRY(__mmu_cache_on)
 		mov	r12, lr
 #ifdef CONFIG_MMU
@@ -30,6 +31,7 @@ __common_mmu_cache_on:
 		mrc	p15, 0, r0, c1, c0, 0	@ and read it back to
 		sub	pc, lr, r0, lsr #32	@ properly flush pipeline
 
+.section .text.__mmu_cache_off
 ENTRY(__mmu_cache_off)
 #ifdef CONFIG_MMU
 		mrc	p15, 0, r0, c1, c0
@@ -42,6 +44,7 @@ ENTRY(__mmu_cache_off)
 		mov	pc, lr
 ENDPROC(__mmu_cache_off)
 
+.section .text.__mmu_cache_flush
 ENTRY(__mmu_cache_flush)
 1:		mrc	p15, 0, r15, c7, c14, 3	@ test,clean,invalidate D cache
 		bne	1b
@@ -49,7 +52,6 @@ ENTRY(__mmu_cache_flush)
 		mcr	p15, 0, r0, c7, c10, 4	@ drain WB
 		mov	pc, lr
 ENDPROC(__mmu_cache_flush)
-.section ".text.text"
 
 /*
  *	dma_inv_range(start, end)
@@ -64,6 +66,7 @@ ENDPROC(__mmu_cache_flush)
  *
  * (same as v4wb)
  */
+.section .text.__dma_inv_range
 ENTRY(__dma_inv_range)
 	tst	r0, #CACHE_DLINESIZE - 1
 	bic	r0, r0, #CACHE_DLINESIZE - 1
@@ -87,6 +90,7 @@ ENTRY(__dma_inv_range)
  *
  * (same as v4wb)
  */
+.section .text.__dma_clean_range
 ENTRY(__dma_clean_range)
 	bic	r0, r0, #CACHE_DLINESIZE - 1
 1:	mcr	p15, 0, r0, c7, c10, 1		@ clean D entry
@@ -104,6 +108,7 @@ ENTRY(__dma_clean_range)
  *	- start	- virtual start address
  *	- end	- virtual end address
  */
+.section .text.__dma_flush_range
 ENTRY(__dma_flush_range)
 	bic	r0, r0, #CACHE_DLINESIZE - 1
 1:	mcr	p15, 0, r0, c7, c14, 1		@ clean+invalidate D entry
diff --git a/arch/arm/cpu/cache-armv6.S b/arch/arm/cpu/cache-armv6.S
index 335bac2..02b1d3e 100644
--- a/arch/arm/cpu/cache-armv6.S
+++ b/arch/arm/cpu/cache-armv6.S
@@ -5,6 +5,7 @@
 #define CACHE_LINE_SIZE		32
 #define D_CACHE_LINE_SIZE	32
 
+.section .text.__mmu_cache_on
 ENTRY(__mmu_cache_on)
 		mov	r12, lr
 #ifdef CONFIG_MMU
@@ -33,6 +34,7 @@ __common_mmu_cache_on:
 		sub	pc, lr, r0, lsr #32	@ properly flush pipeline
 
 
+.section .text.__mmu_cache_off
 ENTRY(__mmu_cache_off)
 #ifdef CONFIG_MMU
 		mrc	p15, 0, r0, c1, c0
@@ -44,6 +46,7 @@ ENTRY(__mmu_cache_off)
 #endif
 		mov	pc, lr
 
+.section .text.__mmu_cache_flush
 ENTRY(__mmu_cache_flush)
 		mov	r1, #0
 		mcr	p15, 0, r1, c7, c14, 0	@ clean+invalidate D
@@ -52,7 +55,6 @@ ENTRY(__mmu_cache_flush)
 		mcr	p15, 0, r1, c7, c10, 4	@ drain WB
 		mov	pc, lr
 ENDPROC(__mmu_cache_flush)
-.section ".text.text"
 
 /*
  *	v6_dma_inv_range(start,end)
@@ -64,6 +66,7 @@ ENDPROC(__mmu_cache_flush)
  *	- start   - virtual start address of region
  *	- end     - virtual end address of region
  */
+.section .text.__dma_inv_range
 ENTRY(__dma_inv_range)
 	tst	r0, #D_CACHE_LINE_SIZE - 1
 	bic	r0, r0, #D_CACHE_LINE_SIZE - 1
@@ -91,12 +94,14 @@ ENTRY(__dma_inv_range)
 	mov	r0, #0
 	mcr	p15, 0, r0, c7, c10, 4		@ drain write buffer
 	mov	pc, lr
+ENDPROC(__dma_inv_range)
 
 /*
  *	v6_dma_clean_range(start,end)
  *	- start   - virtual start address of region
  *	- end     - virtual end address of region
  */
+.section .text.__dma_clean_range
 ENTRY(__dma_clean_range)
 	bic	r0, r0, #D_CACHE_LINE_SIZE - 1
 1:
@@ -111,12 +116,14 @@ ENTRY(__dma_clean_range)
 	mov	r0, #0
 	mcr	p15, 0, r0, c7, c10, 4		@ drain write buffer
 	mov	pc, lr
+ENDPROC(__dma_clean_range)
 
 /*
  *	v6_dma_flush_range(start,end)
  *	- start   - virtual start address of region
  *	- end     - virtual end address of region
  */
+.section .text.__dma_flush_range
 ENTRY(__dma_flush_range)
 	bic	r0, r0, #D_CACHE_LINE_SIZE - 1
 1:
@@ -131,4 +138,4 @@ ENTRY(__dma_flush_range)
 	mov	r0, #0
 	mcr	p15, 0, r0, c7, c10, 4		@ drain write buffer
 	mov	pc, lr
-
+ENDPROC(__dma_flush_range)
diff --git a/arch/arm/cpu/cache-armv7.S b/arch/arm/cpu/cache-armv7.S
index 28a6315..9bd7425 100644
--- a/arch/arm/cpu/cache-armv7.S
+++ b/arch/arm/cpu/cache-armv7.S
@@ -1,6 +1,7 @@
 #include <linux/linkage.h>
 #include <init.h>
 
+.section .text.__mmu_cache_on
 ENTRY(__mmu_cache_on)
 		mov	r12, lr
 #ifdef CONFIG_MMU
@@ -30,6 +31,7 @@ ENTRY(__mmu_cache_on)
 		mov	pc, r12
 ENDPROC(__mmu_cache_on)
 
+.section .text.__mmu_cache_off
 ENTRY(__mmu_cache_off)
 		mrc	p15, 0, r0, c1, c0
 #ifdef CONFIG_MMU
@@ -50,6 +52,7 @@ ENTRY(__mmu_cache_off)
 		mov	pc, r12
 ENDPROC(__mmu_cache_off)
 
+.section .text.__mmu_cache_flush
 ENTRY(__mmu_cache_flush)
 		mrc	p15, 0, r10, c0, c1, 5	@ read ID_MMFR1
 		tst	r10, #0xf << 16		@ hierarchical cache (ARMv7)
@@ -110,7 +113,6 @@ iflush:
 		mcr	p15, 0, r10, c7, c5, 4	@ ISB
 		mov	pc, lr
 ENDPROC(__mmu_cache_flush)
-.section ".text.text"
 
 /*
  * cache_line_size - get the cache line size from the CSIDR register
@@ -134,6 +136,7 @@ ENDPROC(__mmu_cache_flush)
  *	- start   - virtual start address of region
  *	- end     - virtual end address of region
  */
+.section .text.__dma_inv_range
 ENTRY(__dma_inv_range)
 	dcache_line_size r2, r3
 	sub	r3, r2, #1
@@ -158,6 +161,7 @@ ENDPROC(__dma_inv_range)
  *	- start   - virtual start address of region
  *	- end     - virtual end address of region
  */
+.section .text.__dma_clean_range
 ENTRY(__dma_clean_range)
 	dcache_line_size r2, r3
 	sub	r3, r2, #1
@@ -176,6 +180,7 @@ ENDPROC(__dma_clean_range)
  *	- start   - virtual start address of region
  *	- end     - virtual end address of region
  */
+.section .text.__dma_flush_range
 ENTRY(__dma_flush_range)
 	dcache_line_size r2, r3
 	sub	r3, r2, #1
@@ -188,4 +193,3 @@ ENTRY(__dma_flush_range)
 	dsb
 	mov	pc, lr
 ENDPROC(__dma_flush_range)
-
diff --git a/arch/arm/lib/ashldi3.S b/arch/arm/lib/ashldi3.S
index 638deb1..6588846 100644
--- a/arch/arm/lib/ashldi3.S
+++ b/arch/arm/lib/ashldi3.S
@@ -36,6 +36,7 @@ Boston, MA 02110-1301, USA.  */
 #define ah r1
 #endif
 
+.section .text.__ashldi3
 ENTRY(__ashldi3)
 ENTRY(__aeabi_llsl)
 
diff --git a/arch/arm/lib/ashrdi3.S b/arch/arm/lib/ashrdi3.S
index 015e8aa..a8a32f6 100644
--- a/arch/arm/lib/ashrdi3.S
+++ b/arch/arm/lib/ashrdi3.S
@@ -36,6 +36,7 @@ Boston, MA 02110-1301, USA.  */
 #define ah r1
 #endif
 
+.section .text.__ashrdi3
 ENTRY(__ashrdi3)
 ENTRY(__aeabi_lasr)
 
diff --git a/arch/arm/lib/findbit.S b/arch/arm/lib/findbit.S
index ef4caff..422455d 100644
--- a/arch/arm/lib/findbit.S
+++ b/arch/arm/lib/findbit.S
@@ -22,6 +22,7 @@
  * Purpose  : Find a 'zero' bit
  * Prototype: int find_first_zero_bit(void *addr, unsigned int maxbit);
  */
+.section .text._find_first_zero_bit_le
 ENTRY(_find_first_zero_bit_le)
 		teq	r1, #0
 		beq	3f
@@ -43,6 +44,7 @@ ENDPROC(_find_first_zero_bit_le)
  * Purpose  : Find next 'zero' bit
  * Prototype: int find_next_zero_bit(void *addr, unsigned int maxbit, int offset)
  */
+.section .text._find_next_zero_bit_le
 ENTRY(_find_next_zero_bit_le)
 		teq	r1, #0
 		beq	3b
@@ -63,6 +65,7 @@ ENDPROC(_find_next_zero_bit_le)
  * Purpose  : Find a 'one' bit
  * Prototype: int find_first_bit(const unsigned long *addr, unsigned int maxbit);
  */
+.section .text._find_first_bit_le
 ENTRY(_find_first_bit_le)
 		teq	r1, #0
 		beq	3f
@@ -84,6 +87,7 @@ ENDPROC(_find_first_bit_le)
  * Purpose  : Find next 'one' bit
  * Prototype: int find_next_zero_bit(void *addr, unsigned int maxbit, int offset)
  */
+.section .text._find_next_bit_le
 ENTRY(_find_next_bit_le)
 		teq	r1, #0
 		beq	3b
@@ -101,6 +105,7 @@ ENDPROC(_find_next_bit_le)
 
 #ifdef __ARMEB__
 
+.section .text._find_first_zero_bit_be
 ENTRY(_find_first_zero_bit_be)
 		teq	r1, #0
 		beq	3f
@@ -118,6 +123,7 @@ ENTRY(_find_first_zero_bit_be)
 		mov	pc, lr
 ENDPROC(_find_first_zero_bit_be)
 
+.section .text._find_next_zero_bit_be
 ENTRY(_find_next_zero_bit_be)
 		teq	r1, #0
 		beq	3b
@@ -135,6 +141,7 @@ ENTRY(_find_next_zero_bit_be)
 		b	2b			@ loop for next bit
 ENDPROC(_find_next_zero_bit_be)
 
+.section .text._find_first_bit_be
 ENTRY(_find_first_bit_be)
 		teq	r1, #0
 		beq	3f
@@ -152,6 +159,7 @@ ENTRY(_find_first_bit_be)
 		mov	pc, lr
 ENDPROC(_find_first_bit_be)
 
+.section .text._find_next_bit_be
 ENTRY(_find_next_bit_be)
 		teq	r1, #0
 		beq	3b
@@ -173,6 +181,7 @@ ENDPROC(_find_next_bit_be)
 /*
  * One or more bits in the LSB of r3 are assumed to be set.
  */
+.section .text.L_found
 .L_found:
 #if __LINUX_ARM_ARCH__ >= 5
 		rsb	r0, r3, #0
diff --git a/arch/arm/lib/io-writesw-armv4.S b/arch/arm/lib/io-writesw-armv4.S
index ff4f71b..9e8308d 100644
--- a/arch/arm/lib/io-writesw-armv4.S
+++ b/arch/arm/lib/io-writesw-armv4.S
@@ -22,6 +22,8 @@
 #endif
 		.endm
 
+.section .text.__raw_writesw
+
 .Loutsw_align:	movs	ip, r1, lsl #31
 		bne	.Loutsw_noalign
 
diff --git a/arch/arm/lib/lib1funcs.S b/arch/arm/lib/lib1funcs.S
index 5143e90..7d6f708 100644
--- a/arch/arm/lib/lib1funcs.S
+++ b/arch/arm/lib/lib1funcs.S
@@ -205,6 +205,7 @@ Boston, MA 02111-1307, USA.  */
 .endm
 
 
+.section .text.__udivsi3
 ENTRY(__udivsi3)
 ENTRY(__aeabi_uidiv)
 
@@ -233,6 +234,7 @@ ENTRY(__aeabi_uidiv)
 ENDPROC(__udivsi3)
 ENDPROC(__aeabi_uidiv)
 
+.section .text.__umodsi3
 ENTRY(__umodsi3)
 
 	subs	r2, r1, #1			@ compare divisor with 1
@@ -249,6 +251,7 @@ ENTRY(__umodsi3)
 
 ENDPROC(__umodsi3)
 
+.section .text.__divsi3
 ENTRY(__divsi3)
 ENTRY(__aeabi_idiv)
 
@@ -290,6 +293,7 @@ ENTRY(__aeabi_idiv)
 ENDPROC(__divsi3)
 ENDPROC(__aeabi_idiv)
 
+.section .text.__modsi3
 ENTRY(__modsi3)
 
 	cmp	r1, #0
@@ -314,6 +318,7 @@ ENDPROC(__modsi3)
 
 #ifdef CONFIG_AEABI
 
+.section .text.__aeabi_uidivmod
 ENTRY(__aeabi_uidivmod)
 
 	stmfd	sp!, {r0, r1, ip, lr}
@@ -325,6 +330,7 @@ ENTRY(__aeabi_uidivmod)
 
 ENDPROC(__aeabi_uidivmod)
 
+.section .text.__aeabi_idivmod
 ENTRY(__aeabi_idivmod)
 
 	stmfd	sp!, {r0, r1, ip, lr}
@@ -338,6 +344,7 @@ ENDPROC(__aeabi_idivmod)
 
 #endif
 
+.section .text.Ldiv0
 Ldiv0:
 
 	str	lr, [sp, #-8]!
diff --git a/arch/arm/lib/lshrdi3.S b/arch/arm/lib/lshrdi3.S
index f83d449..3c7df3b 100644
--- a/arch/arm/lib/lshrdi3.S
+++ b/arch/arm/lib/lshrdi3.S
@@ -36,6 +36,7 @@ Boston, MA 02110-1301, USA.  */
 #define ah r1
 #endif
 
+.section .text.__lshrdi3
 ENTRY(__lshrdi3)
 ENTRY(__aeabi_llsr)
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
