Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aT51n-0004aX-Q8
 for barebox@lists.infradead.org; Tue, 09 Feb 2016 09:56:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Feb 2016 10:55:48 +0100
Message-Id: <1455011748-5538-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1455011748-5538-1-git-send-email-s.hauer@pengutronix.de>
References: <1455011748-5538-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/7] mtd: mtdoob device: change name to have the chip name
 first
To: Barebox List <barebox@lists.infradead.org>

Normally all device files assoctiated to a mtd device begin with
the chip name itself. Only the mtdoob device is an exception:
it begins with the chip name without the index end ends with the
index. Change the name to be like the other names, i.e. change
nand_oob0 to nand0.oob.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/mtdoob.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/mtdoob.c b/drivers/mtd/mtdoob.c
index 6160ddb..4dcf2f5 100644
--- a/drivers/mtd/mtdoob.c
+++ b/drivers/mtd/mtdoob.c
@@ -79,7 +79,7 @@ static int add_mtdoob_device(struct mtd_info *mtd, const char *devname, void **p
 	mtdoob = xzalloc(sizeof(*mtdoob));
 	mtdoob->cdev.ops = &mtd_ops_oob;
 	mtdoob->cdev.size = mtd_div_by_wb(mtd->size, mtd) * mtd->oobsize;
-	mtdoob->cdev.name = asprintf("%s_oob%d", devname, mtd->class_dev.id);
+	mtdoob->cdev.name = asprintf("%s.oob", mtd->cdev.name);
 	mtdoob->cdev.priv = mtdoob;
 	mtdoob->cdev.dev = &mtd->class_dev;
 	mtdoob->mtd = mtd;
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
