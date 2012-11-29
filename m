Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Te9OI-0000FJ-Gs
 for barebox@lists.infradead.org; Thu, 29 Nov 2012 19:03:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 29 Nov 2012 20:03:05 +0100
Message-Id: <1354215786-25615-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] mtd oob: do not register oob device for devices without
 oob
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/mtdoob.c |    3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/mtd/mtdoob.c b/drivers/mtd/mtdoob.c
index c7bf40c..e5d8039 100644
--- a/drivers/mtd/mtdoob.c
+++ b/drivers/mtd/mtdoob.c
@@ -73,6 +73,9 @@ static int add_mtdoob_device(struct mtd_info *mtd, char *devname, void **priv)
 {
 	struct mtdoob *mtdoob;
 
+	if (mtd->oobsize == 0)
+		return 0;
+
 	mtdoob = xzalloc(sizeof(*mtdoob));
 	mtdoob->cdev.ops = &mtd_ops_oob;
 	mtdoob->cdev.size = (mtd->size / mtd->writesize) * mtd->oobsize;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
