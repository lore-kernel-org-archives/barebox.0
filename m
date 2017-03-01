Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cj5De-0000xV-L9
 for barebox@lists.infradead.org; Wed, 01 Mar 2017 14:27:10 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1cj5DF-0004KM-RK
 for barebox@lists.infradead.org; Wed, 01 Mar 2017 15:26:41 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed,  1 Mar 2017 15:26:41 +0100
Message-Id: <20170301142641.6596-3-l.stach@pengutronix.de>
In-Reply-To: <20170301142641.6596-1-l.stach@pengutronix.de>
References: <20170301142641.6596-1-l.stach@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: execute DMB before trying to flush cache
To: barebox@lists.infradead.org

The CPU write buffer needs to be coherent with the cache, otherwise
we might flush stale entries with the actual data stuck in the cache.

This is really important on newer CPU core with bigger write buffers.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/cpu/cache-armv7.S | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/cpu/cache-armv7.S b/arch/arm/cpu/cache-armv7.S
index c19618bde182..aaa8bf8c62e1 100644
--- a/arch/arm/cpu/cache-armv7.S
+++ b/arch/arm/cpu/cache-armv7.S
@@ -68,6 +68,7 @@ ENTRY(v7_mmu_cache_flush)
 ENDPROC(v7_mmu_cache_flush)
 
 ENTRY(__v7_mmu_cache_flush_invalidate)
+		mcr	p15, 0, r12, c7, c10, 5	@ DMB
 		mrc	p15, 0, r12, c0, c1, 5	@ read ID_MMFR1
 		tst	r12, #0xf << 16		@ hierarchical cache (ARMv7)
 		mov	r12, #0
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
