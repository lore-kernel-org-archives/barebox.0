Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dV9SR-0000Yg-4E
 for barebox@lists.infradead.org; Wed, 12 Jul 2017 04:41:04 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 12 Jul 2017 06:40:28 +0200
Message-Id: <20170712044028.9309-2-o.rempel@pengutronix.de>
In-Reply-To: <20170712044028.9309-1-o.rempel@pengutronix.de>
References: <20170712044028.9309-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v2] crypto: caam: use dma_alloc_coherent instead of dma_alloc
To: barebox@lists.infradead.org, l.stach@pengutronix.de
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

It is a fixup for following patch:
| commit ef4144b4ab6301d7417af3eb4d79cfc66bf0e731
| Date:   Wed Mar 22 10:14:37 2017 +0100
|
|    crypto: caam - fix RNG buffer cache alignment

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/crypto/caam/caamrng.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/crypto/caam/caamrng.c b/drivers/crypto/caam/caamrng.c
index 31a92731d2..51c267e3d3 100644
--- a/drivers/crypto/caam/caamrng.c
+++ b/drivers/crypto/caam/caamrng.c
@@ -203,8 +203,6 @@ static inline int rng_create_job_desc(struct caam_rng_ctx *ctx, int buf_id)
 	init_job_desc_shared(desc, ctx->sh_desc_dma, sh_len, HDR_SHARE_DEFER |
 			     HDR_REVERSE);
 
-	bd->addr = (dma_addr_t)bd->buf;
-
 	append_seq_out_ptr_intlen(desc, bd->addr, RN_BUF_SIZE, 0);
 #ifdef DEBUG
 	print_hex_dump(KERN_ERR, "rng job desc@: ", DUMP_PREFIX_OFFSET, 16, 4,
@@ -218,7 +216,7 @@ static int caam_init_buf(struct caam_rng_ctx *ctx, int buf_id)
 	struct buf_data *bd = &ctx->bufs[buf_id];
 	int err;
 
-	bd->buf = dma_alloc(RN_BUF_SIZE);
+	bd->buf = dma_alloc_coherent(RN_BUF_SIZE, &bd->addr);
 
 	err = rng_create_job_desc(ctx, buf_id);
 	if (err)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
