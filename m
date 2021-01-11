Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kyuUg-0007po-L2
 for barebox@lists.infradead.org; Mon, 11 Jan 2021 10:32:16 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 11 Jan 2021 11:32:05 +0100
Message-Id: <20210111103205.4330-2-s.trumtrar@pengutronix.de>
In-Reply-To: <20210111103205.4330-1-s.trumtrar@pengutronix.de>
References: <20210111103205.4330-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 2/2] image-sparse: change chunk_data_sz to u64
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

chunk_data_sz is set to the result of a __le32 * __le32 multiplication:

  chunk_data_sz = si->sparse.blk_sz * si->chunk.chunk_sz;

This will overflow.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 lib/image-sparse.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/lib/image-sparse.c b/lib/image-sparse.c
index 8e7a52fd71..c375c78d63 100644
--- a/lib/image-sparse.c
+++ b/lib/image-sparse.c
@@ -62,7 +62,8 @@ struct sparse_image_ctx {
 
 static int sparse_seek(struct sparse_image_ctx *si)
 {
-	unsigned int chunk_data_sz, payload;
+	uint64_t chunk_data_sz;
+	unsigned int payload;
 	loff_t offs;
 	int ret;
 
@@ -94,7 +95,7 @@ again:
 			return -errno;
 	}
 
-	chunk_data_sz = si->sparse.blk_sz * si->chunk.chunk_sz;
+	chunk_data_sz = (uint64_t) si->sparse.blk_sz * si->chunk.chunk_sz;
 	payload = si->chunk.total_sz - si->sparse.chunk_hdr_sz;
 
 	si->processed_chunks++;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
