Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gMwt1-0005BC-Tg
 for barebox@lists.infradead.org; Wed, 14 Nov 2018 15:15:25 +0000
From: Enrico Jorns <ejo@pengutronix.de>
Date: Wed, 14 Nov 2018 16:14:54 +0100
Message-Id: <20181114151454.8326-1-ejo@pengutronix.de>
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
Subject: [PATCH] nand: denali: remove undefined GFP_DMA flag
To: barebox@lists.infradead.org
Cc: Enrico Jorns <ejo@pengutronix.de>

This was a remnant from porting kernel code to barebox.
While being uncritical so far, this will now cause a compiler error
since kzalloc is not a define but a static inline function.

As the kzalloc() 'mode' argument was ignored before and still will be,
it is safe to remove the parameter.

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
---
 drivers/mtd/nand/nand_denali.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/nand_denali.c b/drivers/mtd/nand/nand_denali.c
index 8b09b3722f..ef3395864c 100644
--- a/drivers/mtd/nand/nand_denali.c
+++ b/drivers/mtd/nand/nand_denali.c
@@ -1387,7 +1387,7 @@ int denali_init(struct denali_nand_info *denali)
 	}
 
 	/* allocate a temporary buffer for nand_scan_ident() */
-	denali->buf.buf = kzalloc(PAGE_SIZE, GFP_DMA | GFP_KERNEL);
+	denali->buf.buf = kzalloc(PAGE_SIZE, GFP_KERNEL);
 	if (!denali->buf.buf)
 		return -ENOMEM;
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
