Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIF0Z-0001Jj-3R
 for barebox@lists.infradead.org; Wed, 09 Oct 2019 16:40:17 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Oct 2019 18:40:07 +0200
Message-Id: <20191009164009.24265-2-a.fatoum@pengutronix.de>
In-Reply-To: <20191009164009.24265-1-a.fatoum@pengutronix.de>
References: <20191009164009.24265-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/3] ARM: cache-armv7: remove duplicate domain initialization
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>

From: Ahmad Fatoum <ahmad@a3f.at>

We already call set_domain each time we do __mmu_cache_on. Writing the
DACR in the armv7 __mmu_cache_on is thus superfluous. Drop it.

This changes existing behavior, whereas all 16 memory domains had the same
access permissions set (manager) before, now only the first domain has.
This is ok, as we only ever use domain 0 in barebox and on non-armv7,
we don't bother with the other ones at all.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/cpu/cache-armv7.S | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/cpu/cache-armv7.S b/arch/arm/cpu/cache-armv7.S
index 6a8aff8bb12c..2aa34ab4d7d8 100644
--- a/arch/arm/cpu/cache-armv7.S
+++ b/arch/arm/cpu/cache-armv7.S
@@ -21,8 +21,6 @@ ENTRY(v7_mmu_cache_on)
 		orr	r0, r0, #1 << 25	@ big-endian page tables
 #endif
 		orrne	r0, r0, #1		@ MMU enabled
-		movne	r1, #-1
-		mcrne	p15, 0, r1, c3, c0, 0	@ load domain access control
 #endif
 		isb
 		mcr	p15, 0, r0, c1, c0, 0	@ load control register
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
