Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cqKLU-0003HY-2q
 for barebox@lists.infradead.org; Tue, 21 Mar 2017 14:01:15 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 21 Mar 2017 15:00:23 +0100
Message-Id: <20170321140025.25784-7-o.rempel@pengutronix.de>
In-Reply-To: <20170321140025.25784-1-o.rempel@pengutronix.de>
References: <20170321140025.25784-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v6 6/8] crypto: caam - fix RNG buffer cache alignment
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

this is alternate version of linux fix:
---------------------------------------------------------------------
| commit 412c98c1bef65fe7589f1300e93735d96130307c
| Author: Steve Cornelius <steve.cornelius@freescale.com>
| Date:   Mon Jun 15 16:52:59 2015 -0700
|
| crypto: caam - fix RNG buffer cache alignment
|
| The hwrng output buffers (2) are cast inside of a a struct (caam_rng_ctx)
| allocated in one DMA-tagged region. While the kernel's heap allocator
| should place the overall struct on a cacheline aligned boundary, the 2
| buffers contained within may not necessarily align. Consenquently, the
| ends of unaligned buffers may not fully flush, and if so, stale data will be
| left behind, resulting in small repeating patterns.
|
| This fix aligns the buffers inside the struct.
|
| Note that not all of the data inside caam_rng_ctx necessarily needs to
| be DMA-tagged, only the buffers themselves require this. However, a fix
| would incur the expense of error-handling bloat in the case of allocation
| failure.
|
| Cc: stable@vger.kernel.org
| Signed-off-by: Steve Cornelius <steve.cornelius@freescale.com>
| Signed-off-by: Victoria Milhoan <vicki.milhoan@freescale.com>
| Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
---------------------------------------------------------------------

instead we will use just dma_alloc()

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/crypto/caam/caamrng.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/crypto/caam/caamrng.c b/drivers/crypto/caam/caamrng.c
index aabad0416..31a92731d 100644
--- a/drivers/crypto/caam/caamrng.c
+++ b/drivers/crypto/caam/caamrng.c
@@ -55,7 +55,7 @@
 
 /* Buffer, its dma address and lock */
 struct buf_data {
-	u8 buf[RN_BUF_SIZE];
+	u8 *buf;
 	dma_addr_t addr;
 	u32 hw_desc[DESC_JOB_O_LEN];
 #define BUF_NOT_EMPTY 0
@@ -218,6 +218,8 @@ static int caam_init_buf(struct caam_rng_ctx *ctx, int buf_id)
 	struct buf_data *bd = &ctx->bufs[buf_id];
 	int err;
 
+	bd->buf = dma_alloc(RN_BUF_SIZE);
+
 	err = rng_create_job_desc(ctx, buf_id);
 	if (err)
 		return err;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
