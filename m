Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f3Ggn-00021T-Qv
 for barebox@lists.infradead.org; Tue, 03 Apr 2018 07:49:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  3 Apr 2018 09:48:51 +0200
Message-Id: <20180403074851.5411-20-s.hauer@pengutronix.de>
In-Reply-To: <20180403074851.5411-1-s.hauer@pengutronix.de>
References: <20180403074851.5411-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 19/19] block: Adjust cache sizes
To: Barebox List <barebox@lists.infradead.org>

Use four times more cache entries and divide the memory for each entry
by four. This lowers the linear read throughput somewhat but increases
the access speed for filesystems.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/block.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/block.c b/common/block.c
index 55d8d1637e..219b943afc 100644
--- a/common/block.c
+++ b/common/block.c
@@ -36,7 +36,7 @@ struct chunk {
 	struct list_head list;
 };
 
-#define BUFSIZE (PAGE_SIZE * 16)
+#define BUFSIZE (PAGE_SIZE * 4)
 
 /*
  * Write all dirty chunks back to the device
@@ -361,7 +361,7 @@ int blockdevice_register(struct block_device *blk)
 	debug("%s: rdbufsize: %d blockbits: %d blkmask: 0x%08x\n", __func__, blk->rdbufsize, blk->blockbits,
 			blk->blkmask);
 
-	for (i = 0; i < 8; i++) {
+	for (i = 0; i < 32; i++) {
 		struct chunk *chunk = xzalloc(sizeof(*chunk));
 		chunk->data = dma_alloc(BUFSIZE);
 		chunk->num = i;
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
