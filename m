Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosI-0001qC-4r
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 23/78] ARM: aarch64: cache: Add v8_inv_dcache_range
Date: Fri, 16 Mar 2018 13:52:59 +0100
Message-Id: <20180316125354.23462-24-s.hauer@pengutronix.de>
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
To: Barebox List <barebox@lists.infradead.org>

implement v8_flush_dcache_range based on v8_inv_dcache_range. While
at it add a prototype for v8_inv_dcache_range.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/cache-armv8.S   | 19 +++++++++++++++++++
 arch/arm/include/asm/cache.h |  2 ++
 2 files changed, 21 insertions(+)

diff --git a/arch/arm/cpu/cache-armv8.S b/arch/arm/cpu/cache-armv8.S
index 82b2f81778..3e21b35913 100644
--- a/arch/arm/cpu/cache-armv8.S
+++ b/arch/arm/cpu/cache-armv8.S
@@ -148,6 +148,25 @@ ENTRY(v8_flush_dcache_range)
 	ret
 ENDPROC(v8_flush_dcache_range)
 
+.section .text.v8_inv_dcache_range
+ENTRY(v8_inv_dcache_range)
+	mrs	x3, ctr_el0
+	lsr	x3, x3, #16
+	and	x3, x3, #0xf
+	mov	x2, #4
+	lsl	x2, x2, x3		/* cache line size */
+
+	/* x2 <- minimal cache line size in cache system */
+	sub	x3, x2, #1
+	bic	x0, x0, x3
+1:	dc	ivac, x0	/* invalidate data or unified cache */
+	add	x0, x0, x2
+	cmp	x0, x1
+	b.lo	1b
+	dsb	sy
+	ret
+ENDPROC(v8_inv_dcache_range)
+
 /*
  * void v8_invalidate_icache_all(void)
  *
diff --git a/arch/arm/include/asm/cache.h b/arch/arm/include/asm/cache.h
index 406a9d5d99..503bf8a0f7 100644
--- a/arch/arm/include/asm/cache.h
+++ b/arch/arm/include/asm/cache.h
@@ -5,6 +5,8 @@
 extern void v8_invalidate_icache_all(void);
 void v8_flush_dcache_all(void);
 void v8_invalidate_dcache_all(void);
+void v8_flush_dcache_range(unsigned long start, unsigned long end);
+void v8_inv_dcache_range(unsigned long start, unsigned long end);
 #endif
 
 static inline void icache_invalidate(void)
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
