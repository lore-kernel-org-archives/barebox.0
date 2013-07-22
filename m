Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1CrQ-0003X3-Cq
 for barebox@lists.infradead.org; Mon, 22 Jul 2013 09:56:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Jul 2013 11:56:21 +0200
Message-Id: <1374486983-5263-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1374486983-5263-1-git-send-email-s.hauer@pengutronix.de>
References: <1374486983-5263-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] block: shortcut writebuffer_flush if writing is disabled
To: barebox@lists.infradead.org

Saves a few bytes of binary space.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/block.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/common/block.c b/common/block.c
index ad07f8b..ab39a36 100644
--- a/common/block.c
+++ b/common/block.c
@@ -43,6 +43,9 @@ static int writebuffer_flush(struct block_device *blk)
 {
 	struct chunk *chunk;
 
+	if (!IS_ENABLED(CONFIG_BLOCK_WRITE))
+		return 0;
+
 	list_for_each_entry(chunk, &blk->buffered_blocks, list) {
 		if (chunk->dirty) {
 			blk->ops->write(blk, chunk->data, chunk->block_start, blk->rdbufsize);
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
