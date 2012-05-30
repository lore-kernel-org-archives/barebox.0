Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SZbVH-0004Nb-JV
 for barebox@lists.infradead.org; Wed, 30 May 2012 05:31:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 30 May 2012 07:31:15 +0200
Message-Id: <1338355875-18830-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1338355875-18830-1-git-send-email-s.hauer@pengutronix.de>
References: <1338355875-18830-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] block: do not BUG() on failed block_get
To: barebox@lists.infradead.org

It does not necessarily means a bug when block_get fails here,
this can also be a failure on the underlying device.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/block.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/block.c b/common/block.c
index 437dc95..5983171 100644
--- a/common/block.c
+++ b/common/block.c
@@ -245,7 +245,7 @@ static int block_put(struct block_device *blk, const void *buf, int block)
 
 	data = block_get(blk, block);
 	if (IS_ERR(data))
-		BUG();
+		return PTR_ERR(data);
 
 	memcpy(data, buf, 1 << blk->blockbits);
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
