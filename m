Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp27.mail.ru ([94.100.176.180])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sa4Sg-0004rm-5z
 for barebox@lists.infradead.org; Thu, 31 May 2012 12:26:43 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu, 31 May 2012 16:26:34 +0400
Message-Id: <1338467194-11552-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] block: Fix printf warning
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 common/block.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/common/block.c b/common/block.c
index 5983171..71ecfd5 100644
--- a/common/block.c
+++ b/common/block.c
@@ -136,7 +136,7 @@ static int block_cache(struct block_device *blk, int block)
 	chunk = get_chunk(blk);
 	chunk->block_start = block & ~blk->blkmask;
 
-	debug("%s: %d to %d %s\n", __func__, chunk->block_start,
+	debug("%s: %d to %d\n", __func__, chunk->block_start,
 			chunk->num);
 
 	num_blocks = min(blk->rdbufsize, blk->num_blocks - chunk->block_start);
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
