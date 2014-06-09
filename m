Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from webmail.celad.com ([84.14.244.162])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wu1H9-0007BS-MP
 for barebox@lists.infradead.org; Mon, 09 Jun 2014 15:14:20 +0000
From: Herve Codina <Herve.CODINA@celad.com>
Date: Mon, 9 Jun 2014 17:14:07 +0200
Message-ID: <1402326848-16239-1-git-send-email-Herve.CODINA@celad.com>
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
Subject: [PATCH 1/2] mtd: Fix writesize parameter value
To: barebox@lists.infradead.org
Cc: Herve Codina <Herve.CODINA@celad.com>

Signed-off-by: Herve Codina <Herve.CODINA@celad.com>
---
 drivers/mtd/core.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index d954f72..d3e7763 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -403,7 +403,7 @@ int add_mtd_device(struct mtd_info *mtd, char *devname, int device_id)
 	if (IS_ENABLED(CONFIG_PARAMETER)) {
 		dev_add_param_int_ro(&mtd->class_dev, "size", mtd->size, "%llu");
 		dev_add_param_int_ro(&mtd->class_dev, "erasesize", mtd->erasesize, "%u");
-		dev_add_param_int_ro(&mtd->class_dev, "writesize", mtd->oobsize, "%u");
+		dev_add_param_int_ro(&mtd->class_dev, "writesize", mtd->writesize, "%u");
 		dev_add_param_int_ro(&mtd->class_dev, "oobsize", mtd->oobsize, "%u");
 	}
 
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
