Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx0b-00176a03.pphosted.com ([67.231.157.48])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X2Msu-0000A7-7s
 for barebox@lists.infradead.org; Wed, 02 Jul 2014 15:55:48 +0000
Received: from pps.filterd (m0048300.ppops.net [127.0.0.1])
 by m0048300.ppops.net-00176a03. (8.14.7/8.14.7) with SMTP id s62FsbJD013097
 for <barebox@lists.infradead.org>; Wed, 2 Jul 2014 11:55:23 -0400
Received: from cinmlip10.e2k.ad.ge.com (n165-156-000-000.static.ge.com
 [165.156.4.1] (may be forged))
 by m0048300.ppops.net-00176a03. with ESMTP id 1mvmunr3ae-1
 (version=TLSv1/SSLv3 cipher=RC4-SHA bits=128 verify=NOT)
 for <barebox@lists.infradead.org>; Wed, 02 Jul 2014 11:55:23 -0400
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Wed,  2 Jul 2014 16:55:14 +0100
Message-Id: <1404316514-23162-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH] mtd: delete partition erase size initialisation
To: barebox@lists.infradead.org

Delete the partition erase size initialisation to let the code
that follows determine the biggest partition erase size.
---
 drivers/mtd/partition.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/mtd/partition.c b/drivers/mtd/partition.c
index 5c0d46f..9b2b20e 100644
--- a/drivers/mtd/partition.c
+++ b/drivers/mtd/partition.c
@@ -108,7 +108,6 @@ struct mtd_info *mtd_add_partition(struct mtd_info *mtd, off_t offset,
 	part->type = mtd->type;
 	part->flags = mtd->flags;
 	part->parent = &mtd->class_dev;
-	part->erasesize = mtd->erasesize;
 	part->writesize = mtd->writesize;
 	part->writebufsize = mtd->writebufsize;
 	part->oobsize = mtd->oobsize;
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
