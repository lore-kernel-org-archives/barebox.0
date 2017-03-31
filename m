Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctpC4-0005GX-76
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 05:33:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 07:33:15 +0200
Message-Id: <20170331053323.17821-7-s.hauer@pengutronix.de>
In-Reply-To: <20170331053323.17821-1-s.hauer@pengutronix.de>
References: <20170331053323.17821-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/14] mtd: partition: set cdev->offset to the actual offset
To: Barebox List <barebox@lists.infradead.org>

cdev->offset is currently not used, but can be useful later when
we separate the of_partition_fixup from mtd, because then we will
need the offset of the partition.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/partition.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mtd/partition.c b/drivers/mtd/partition.c
index 777cb758ce..745834384f 100644
--- a/drivers/mtd/partition.c
+++ b/drivers/mtd/partition.c
@@ -225,6 +225,8 @@ struct mtd_info *mtd_add_partition(struct mtd_info *mtd, off_t offset,
 	if (ret)
 		goto err;
 
+	part->cdev.offset = offset;
+
 	return part;
 err:
 	free(part->cdev.partname);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
