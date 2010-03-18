Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1Ns9y3-0003Ij-TB
	for barebox@lists.infradead.org; Thu, 18 Mar 2010 07:16:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Mar 2010 08:16:27 +0100
Message-Id: <1268896587-20407-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1268896587-20407-1-git-send-email-s.hauer@pengutronix.de>
References: <1268896587-20407-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] remove unused file arch/arm/cpu/cache.S
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/cache.S |   70 --------------------------------------------------
 1 files changed, 0 insertions(+), 70 deletions(-)
 delete mode 100644 arch/arm/cpu/cache.S

diff --git a/arch/arm/cpu/cache.S b/arch/arm/cpu/cache.S
deleted file mode 100644
index f91500a..0000000
--- a/arch/arm/cpu/cache.S
+++ /dev/null
@@ -1,70 +0,0 @@
-#ifndef ENTRY
-#define ENTRY(name) \
-  .globl name; \
-  name:
-#endif
-
-#define CACHE_DLINESIZE 32
-
-/*
- *	dma_inv_range(start, end)
- *
- *	Invalidate (discard) the specified virtual address range.
- *	May not write back any entries.  If 'start' or 'end'
- *	are not cache line aligned, those lines must be written
- *	back.
- *
- *	- start	- virtual start address
- *	- end	- virtual end address
- *
- * (same as v4wb)
- */
-ENTRY(dma_inv_range)
-	tst	r0, #CACHE_DLINESIZE - 1
-	bic	r0, r0, #CACHE_DLINESIZE - 1
-	mcrne	p15, 0, r0, c7, c10, 1		@ clean D entry
-	tst	r1, #CACHE_DLINESIZE - 1
-	mcrne	p15, 0, r1, c7, c10, 1		@ clean D entry
-1:	mcr	p15, 0, r0, c7, c6, 1		@ invalidate D entry
-	add	r0, r0, #CACHE_DLINESIZE
-	cmp	r0, r1
-	blo	1b
-	mcr	p15, 0, r0, c7, c10, 4		@ drain WB
-	mov	pc, lr
-
-/*
- *	dma_clean_range(start, end)
- *
- *	Clean the specified virtual address range.
- *
- *	- start	- virtual start address
- *	- end	- virtual end address
- *
- * (same as v4wb)
- */
-ENTRY(dma_clean_range)
-	bic	r0, r0, #CACHE_DLINESIZE - 1
-1:	mcr	p15, 0, r0, c7, c10, 1		@ clean D entry
-	add	r0, r0, #CACHE_DLINESIZE
-	cmp	r0, r1
-	blo	1b
-	mcr	p15, 0, r0, c7, c10, 4		@ drain WB
-	mov	pc, lr
-
-/*
- *	dma_flush_range(start, end)
- *
- *	Clean and invalidate the specified virtual address range.
- *
- *	- start	- virtual start address
- *	- end	- virtual end address
- */
-ENTRY(dma_flush_range)
-	bic	r0, r0, #CACHE_DLINESIZE - 1
-1:	mcr	p15, 0, r0, c7, c14, 1		@ clean+invalidate D entry
-	add	r0, r0, #CACHE_DLINESIZE
-	cmp	r0, r1
-	blo	1b
-	mcr	p15, 0, r0, c7, c10, 4		@ drain WB
-	mov	pc, lr
-
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
