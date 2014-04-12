Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp36.i.mail.ru ([94.100.177.96])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WYt2Z-00072N-C1
 for barebox@lists.infradead.org; Sat, 12 Apr 2014 08:11:57 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 12 Apr 2014 12:11:04 +0400
Message-Id: <1397290265-21273-11-git-send-email-shc_work@mail.ru>
In-Reply-To: <1397290265-21273-1-git-send-email-shc_work@mail.ru>
References: <1397290265-21273-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 11/12] mtd: partition: Remove unused variable
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/mtd/partition.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/mtd/partition.c b/drivers/mtd/partition.c
index 720c2ad..c2461a0 100644
--- a/drivers/mtd/partition.c
+++ b/drivers/mtd/partition.c
@@ -7,11 +7,8 @@
 static int mtd_part_read(struct mtd_info *mtd, loff_t from, size_t len,
                 size_t *retlen, u_char *buf)
 {
-	struct mtd_ecc_stats stats;
 	int res;
 
-	stats = mtd->master->ecc_stats;
-
 	if (from >= mtd->size)
 		len = 0;
 	else if (from + len > mtd->size)
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
