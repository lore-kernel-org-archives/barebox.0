Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hIz4Q-0003tS-38
 for barebox@lists.infradead.org; Tue, 23 Apr 2019 17:19:04 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 23 Apr 2019 19:18:50 +0200
Message-Id: <20190423171852.26126-4-a.fatoum@pengutronix.de>
In-Reply-To: <20190423171852.26126-1-a.fatoum@pengutronix.de>
References: <20190423171852.26126-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/5] ARM: cache-armv7: start invalidation from outer levels
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, lst@pengutronix.de, ore@pengutronix.de, rcz@pengutronix.de

The ARM Cortex-A Series Programmer's Guide notes[1]:
> Some care is required with cache maintenance activity in multi-core
> systems that include a L2C-310 L2 cache (or similar). Cleaning or
> invalidating the L1 cache and L2 cache will not be a single atomic
> operation. A core might therefore perform cache maintenance on
> a particular address in both L1 and L2 caches only as two discrete
> steps. If another core were to access the affected address between
> those two actions, a coherency problem can occur. Such problems can
> be avoided by following two simple rules.
>
> * When cleaning, always clean the innermost (L1) cache first and then
>   clean the outer cache(s).
> * When invalidating, always invalidate the outermost cache first and
>   the L1 cache last.

The current code correctly iterates from inner to outer cache levels
when flushing/cleaning (r8 == 0), invalidation (r8 == 1) occurs in the
same direction though. Adjust the invalidation iteration order to start
from the outermost cache instead.

Equivalent C-Code:

	enum cache_op { CACHE_FLUSH = 0, CACHE_INVAL = 1 };
	register enum cache_op operation asm("r8");
	register int i asm("r12");
	register int limit asm("r3") = max_cache_level << 1; // e.g. 4 with L2 max

	+if (operation == CACHE_FLUSH) {
	 	i = 0;
	+} else {
	+	i = limit - 2;
	+}

	 bool loop_again;
	 do {
		/* [snip] */
	+	if (operation == CACHE_FLUSH) {
			i += 2;
			loop_again = limit > i;
	+	} else {
	+		loop_again = i > 0;
	+		i -= 2;
	+	}
	} while (loop_again);

[1]: 18.6 "TLB and cache maintenance broadcast", Version 4.0

Suggested-by: Lucas Stach <l.stach@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/cache-armv7.S | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/arm/cpu/cache-armv7.S b/arch/arm/cpu/cache-armv7.S
index 0eb0ecfee756..b2d70bece7b9 100644
--- a/arch/arm/cpu/cache-armv7.S
+++ b/arch/arm/cpu/cache-armv7.S
@@ -83,7 +83,10 @@ hierarchical:
 		ands	r3, r0, #0x7000000	@ extract loc from clidr
 		mov	r3, r3, lsr #23		@ left align loc bit field
 		beq	finished		@ if loc is 0, then no need to clean
-		mov	r12, #0			@ start clean at cache level 0
+		cmp	r8, #0
+THUMB(		ite	eq			)
+		moveq	r12, #0
+		subne	r12, r3, #2		@ start invalidate at outmost cache level
 loop1:
 		add	r2, r12, r12, lsr #1	@ work out 3x current cache level
 		mov	r1, r0, lsr r2		@ extract cache type bits from clidr
@@ -118,8 +121,15 @@ THUMB(		ite	eq			)
 		subs	r7, r7, #1		@ decrement the index
 		bge	loop2
 skip:
+		cmp	r8, #0
+		bne	inval_check
 		add	r12, r12, #2		@ increment cache number
 		cmp	r3, r12
+		b	loop_end_check
+inval_check:
+		cmp	r12, #0
+		sub	r12, r12, #2		@ decrement cache number
+loop_end_check:
 #ifdef CONFIG_ARM_ERRATA_814220
 		dsb
 #endif
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
