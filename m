Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1She6j-0002rK-K4
 for barebox@lists.infradead.org; Thu, 21 Jun 2012 09:55:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 21 Jun 2012 11:55:15 +0200
Message-Id: <1340272517-8972-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1340272517-8972-1-git-send-email-s.hauer@pengutronix.de>
References: <1340272517-8972-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/9] block: use dma_alloc to allocate buffers
To: barebox@lists.infradead.org

Drivers may use dma to transfer blocks, so put them into
dma save memory.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/block.c |    7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/common/block.c b/common/block.c
index 71ecfd5..f3bcdc8 100644
--- a/common/block.c
+++ b/common/block.c
@@ -24,6 +24,7 @@
 #include <malloc.h>
 #include <linux/err.h>
 #include <linux/list.h>
+#include <dma.h>
 
 #define BLOCKSIZE(blk)	(1 << blk->blockbits)
 
@@ -357,7 +358,7 @@ int blockdevice_register(struct block_device *blk)
 
 	for (i = 0; i < 8; i++) {
 		struct chunk *chunk = xzalloc(sizeof(*chunk));
-		chunk->data = xmalloc(BUFSIZE);
+		chunk->data = dma_alloc(BUFSIZE);
 		chunk->num = i;
 		list_add_tail(&chunk->list, &blk->idle_blocks);
 	}
@@ -376,12 +377,12 @@ int blockdevice_unregister(struct block_device *blk)
 	writebuffer_flush(blk);
 
 	list_for_each_entry_safe(chunk, tmp, &blk->buffered_blocks, list) {
-		free(chunk->data);
+		dma_free(chunk->data);
 		free(chunk);
 	}
 
 	list_for_each_entry_safe(chunk, tmp, &blk->idle_blocks, list) {
-		free(chunk->data);
+		dma_free(chunk->data);
 		free(chunk);
 	}
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
