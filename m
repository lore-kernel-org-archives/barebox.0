Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1She6j-0002rL-KQ
 for barebox@lists.infradead.org; Thu, 21 Jun 2012 09:55:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 21 Jun 2012 11:55:16 +0200
Message-Id: <1340272517-8972-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/9] partition: Use dma_alloc for allocating buffers
To: barebox@lists.infradead.org

Drivers may use dma to transfer blocks, so put them into
dma save memory.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/partitions.c |    5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/common/partitions.c b/common/partitions.c
index 74b4f12..3d92838 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -31,6 +31,7 @@
 #include <block.h>
 #include <asm/unaligned.h>
 #include <disks.h>
+#include <dma.h>
 
 struct partition {
 	uint64_t first_sec;
@@ -102,7 +103,7 @@ static void __maybe_unused try_dos_partition(struct block_device *blk,
 	struct partition pentry;
 	int i, rc;
 
-	buffer = xmalloc(SECTOR_SIZE);
+	buffer = dma_alloc(SECTOR_SIZE);
 
 	/* read in the MBR to get the partition table */
 	rc = blk->ops->read(blk, buffer, 0, 1);
@@ -142,7 +143,7 @@ static void __maybe_unused try_dos_partition(struct block_device *blk,
 	}
 
 on_error:
-	free(buffer);
+	dma_free(buffer);
 }
 
 /**
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
