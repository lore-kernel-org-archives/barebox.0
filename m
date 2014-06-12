Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from webmail.celad.com ([84.14.244.162])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wv1SU-0007yV-Me
 for barebox@lists.infradead.org; Thu, 12 Jun 2014 09:38:11 +0000
From: Herve Codina <Herve.CODINA@celad.com>
Date: Thu, 12 Jun 2014 11:37:38 +0200
Message-ID: <1402565858-7098-2-git-send-email-Herve.CODINA@celad.com>
In-Reply-To: <1402565858-7098-1-git-send-email-Herve.CODINA@celad.com>
References: <1402565858-7098-1-git-send-email-Herve.CODINA@celad.com>
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
Subject: [PATCH 2/2] mtd: use long long dev param for size
To: barebox@lists.infradead.org
Cc: Herve Codina <Herve.CODINA@celad.com>

Signed-off-by: Herve Codina <Herve.CODINA@celad.com>
---
 drivers/mtd/core.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index d3e7763..82fb5f7 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -401,7 +401,7 @@ int add_mtd_device(struct mtd_info *mtd, char *devname, int device_id)
 	mtd->cdev.mtd = mtd;
 
 	if (IS_ENABLED(CONFIG_PARAMETER)) {
-		dev_add_param_int_ro(&mtd->class_dev, "size", mtd->size, "%llu");
+		dev_add_param_llint_ro(&mtd->class_dev, "size", mtd->size, "%llu");
 		dev_add_param_int_ro(&mtd->class_dev, "erasesize", mtd->erasesize, "%u");
 		dev_add_param_int_ro(&mtd->class_dev, "writesize", mtd->writesize, "%u");
 		dev_add_param_int_ro(&mtd->class_dev, "oobsize", mtd->oobsize, "%u");
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
