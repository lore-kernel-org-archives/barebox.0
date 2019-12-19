Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihrrr-0004Ei-QB
 for barebox@lists.infradead.org; Thu, 19 Dec 2019 09:13:13 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1ihrrq-0003A9-K7
 for barebox@lists.infradead.org; Thu, 19 Dec 2019 10:13:10 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 19 Dec 2019 10:13:08 +0100
Message-Id: <20191219091310.27421-2-l.stach@pengutronix.de>
In-Reply-To: <20191219091310.27421-1-l.stach@pengutronix.de>
References: <20191219091310.27421-1-l.stach@pengutronix.de>
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
Subject: [PATCH 1/3] ARM64: entry: save/restore potentially clobbered registers
To: barebox@lists.infradead.org

While the comment is correct that currently arm_early_mmu_cache_invalidate()
is only a call to to v8_invalidate_icache_all() , which doesn't clobber x0-x2,
this starts to fall apart as soon as we do something more in this function.

Make sure to properly save/restore the parameters passed to the entry function.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/cpu/entry_ll_64.S | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/arch/arm/cpu/entry_ll_64.S b/arch/arm/cpu/entry_ll_64.S
index 37e0cb66b549..fb8645e0a03f 100644
--- a/arch/arm/cpu/entry_ll_64.S
+++ b/arch/arm/cpu/entry_ll_64.S
@@ -10,14 +10,16 @@
 .section .text.__barebox_arm_entry
 ENTRY(__barebox_arm_entry)
 	mov	sp, x3
-	/*
-	 * arm_early_mmu_cache_invalidate is jsut a call to
-	 * v8_invalidate_icache_all() which doesn't clobber x0, x1 or x2
- 	 */
+	mov	x19, x0
+	mov	x20, x1
+	mov	x21, x2
 	bl	arm_early_mmu_cache_invalidate
+	mov	x0, x19
+	mov	x1, x20
+	mov	x2, x21
 #if IS_ENABLED(CONFIG_PBL_IMAGE)
 	b	barebox_pbl_start
 #else
 	b	barebox_non_pbl_start
 #endif
-ENDPROC(__barebox_arm_entry)
\ No newline at end of file
+ENDPROC(__barebox_arm_entry)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
