Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YLpY2-0003ly-85
 for barebox@lists.infradead.org; Thu, 12 Feb 2015 08:54:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Feb 2015 09:54:30 +0100
Message-Id: <1423731274-9860-14-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1423731274-9860-1-git-send-email-s.hauer@pengutronix.de>
References: <1423731274-9860-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/17] mtd: Use flags parameter in mtd_add_partition
To: Barebox List <barebox@lists.infradead.org>

mtd_add_partition is passed a flag parameter. This has been unused
so the DEVFS_PARTITION_FIXED and DEVFS_PARTITION_READONLY were ignored.
Fix this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/partition.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/partition.c b/drivers/mtd/partition.c
index c514d4b..98b9081 100644
--- a/drivers/mtd/partition.c
+++ b/drivers/mtd/partition.c
@@ -123,6 +123,7 @@ struct mtd_info *mtd_add_partition(struct mtd_info *mtd, off_t offset,
 	part->ecclayout = mtd->ecclayout;
 	part->ecc_strength = mtd->ecc_strength;
 	part->subpage_sft = mtd->subpage_sft;
+	part->cdev.flags = flags;
 
 	if (mtd->numeraseregions > 1) {
 		/* Deal with variable erase size stuff */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
