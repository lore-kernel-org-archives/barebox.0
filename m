Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X4R6m-0006Vj-Uz
 for barebox@lists.infradead.org; Tue, 08 Jul 2014 08:50:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Jul 2014 10:50:06 +0200
Message-Id: <1404809417-21477-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1404809417-21477-1-git-send-email-s.hauer@pengutronix.de>
References: <1404809417-21477-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/21] block: Add flush callback
To: barebox@lists.infradead.org

Some block devices need an explicit callback for flushing written
blocks. Add this callback.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/block.c  | 3 +++
 include/block.h | 1 +
 2 files changed, 4 insertions(+)

diff --git a/common/block.c b/common/block.c
index e522ee4..0edc861 100644
--- a/common/block.c
+++ b/common/block.c
@@ -55,6 +55,9 @@ static int writebuffer_flush(struct block_device *blk)
 		}
 	}
 
+	if (blk->ops->flush)
+		return blk->ops->flush(blk);
+
 	return 0;
 }
 
diff --git a/include/block.h b/include/block.h
index 872a4c1..9137767 100644
--- a/include/block.h
+++ b/include/block.h
@@ -9,6 +9,7 @@ struct block_device;
 struct block_device_ops {
 	int (*read)(struct block_device *, void *buf, int block, int num_blocks);
 	int (*write)(struct block_device *, const void *buf, int block, int num_blocks);
+	int (*flush)(struct block_device *);
 };
 
 struct chunk;
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
