Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dUwWF-0005Vo-Vy
 for barebox@lists.infradead.org; Tue, 11 Jul 2017 14:52:09 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 11 Jul 2017 16:51:41 +0200
Message-Id: <20170711145141.4279-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1] crypto: caam: use dma_alloc_coherent instead of dma_alloc
To: barebox@lists.infradead.org, l.stach@pengutronix.de
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

It is a fixup for fallowing patch:
| commit ef4144b4ab6301d7417af3eb4d79cfc66bf0e731
| Date:   Wed Mar 22 10:14:37 2017 +0100
|
|    crypto: caam - fix RNG buffer cache alignmen

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/crypto/caam/caamrng.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/crypto/caam/caamrng.c b/drivers/crypto/caam/caamrng.c
index 31a92731d2..a991cc855a 100644
--- a/drivers/crypto/caam/caamrng.c
+++ b/drivers/crypto/caam/caamrng.c
@@ -218,7 +218,7 @@ static int caam_init_buf(struct caam_rng_ctx *ctx, int buf_id)
 	struct buf_data *bd = &ctx->bufs[buf_id];
 	int err;
 
-	bd->buf = dma_alloc(RN_BUF_SIZE);
+	bd->buf = dma_alloc_coherent(RN_BUF_SIZE, DMA_ADDRESS_BROKEN);
 
 	err = rng_create_job_desc(ctx, buf_id);
 	if (err)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
