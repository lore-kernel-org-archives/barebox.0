Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WDtUz-0001N5-Jv
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 10:26:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Feb 2014 11:25:33 +0100
Message-Id: <1392287135-445-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1392287135-445-1-git-send-email-s.hauer@pengutronix.de>
References: <1392287135-445-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/8] mtd: partition: only copy selected fields to partition
To: barebox@lists.infradead.org

struct mtd_info contains members which should not be copied
to the new partition, like for example the class_dev, so
only copy selected members of struct mtd_info to the partition.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/partition.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/partition.c b/drivers/mtd/partition.c
index 7431fc1..450f281 100644
--- a/drivers/mtd/partition.c
+++ b/drivers/mtd/partition.c
@@ -83,7 +83,18 @@ struct mtd_info *mtd_add_partition(struct mtd_info *mtd, off_t offset, size_t si
 
 	part = xzalloc(sizeof(*part));
 
-	memcpy(part, mtd, sizeof(*part));
+	part->type = mtd->type;
+	part->flags = mtd->flags;
+	part->parent = mtd->parent;
+	part->erasesize = mtd->erasesize;
+	part->writesize = mtd->writesize;
+	part->writebufsize = mtd->writebufsize;
+	part->oobsize = mtd->oobsize;
+	part->oobavail = mtd->oobavail;
+	part->bitflip_threshold = mtd->bitflip_threshold;
+	part->ecclayout = mtd->ecclayout;
+	part->ecc_strength = mtd->ecc_strength;
+	part->subpage_sft = mtd->subpage_sft;
 
 	/*
 	 * find the number of eraseregions the partition includes.
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
