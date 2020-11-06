Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kb1xL-00054V-Tr
 for barebox@lists.infradead.org; Fri, 06 Nov 2020 13:39:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  6 Nov 2020 14:38:46 +0100
Message-Id: <20201106133900.2656-13-s.hauer@pengutronix.de>
In-Reply-To: <20201106133900.2656-1-s.hauer@pengutronix.de>
References: <20201106133900.2656-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 12/26] mtd: Add ecc_step_size
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/partition.c | 1 +
 include/linux/mtd/mtd.h | 3 +++
 2 files changed, 4 insertions(+)

diff --git a/drivers/mtd/partition.c b/drivers/mtd/partition.c
index 917122a844..1572038392 100644
--- a/drivers/mtd/partition.c
+++ b/drivers/mtd/partition.c
@@ -166,6 +166,7 @@ struct mtd_info *mtd_add_partition(struct mtd_info *mtd, off_t offset,
 	part->oobavail = mtd->oobavail;
 	part->bitflip_threshold = mtd->bitflip_threshold;
 	part->ecclayout = mtd->ecclayout;
+	part->ecc_step_size = mtd->ecc_step_size;
 	part->ecc_strength = mtd->ecc_strength;
 	part->subpage_sft = mtd->subpage_sft;
 	part->cdev.flags = flags;
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index 75407a9790..710cba7a20 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -124,6 +124,9 @@ struct mtd_info {
 	/* ecc layout structure pointer - read only ! */
 	struct nand_ecclayout *ecclayout;
 
+	/* the ecc step size. */
+	unsigned int ecc_step_size;
+
 	/* max number of correctible bit errors per ecc step */
 	unsigned int ecc_strength;
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
