Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WE1LG-000100-J4
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 18:48:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Feb 2014 19:48:33 +0100
Message-Id: <1392317314-8985-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1392317314-8985-1-git-send-email-s.hauer@pengutronix.de>
References: <1392317314-8985-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] mtd: mtdraw: Do not create for partitions and devices
 without oob
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/mtdraw.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/mtd/mtdraw.c b/drivers/mtd/mtdraw.c
index be34723..006b28f 100644
--- a/drivers/mtd/mtdraw.c
+++ b/drivers/mtd/mtdraw.c
@@ -285,6 +285,9 @@ static int add_mtdraw_device(struct mtd_info *mtd, char *devname, void **priv)
 {
 	struct mtdraw *mtdraw;
 
+	if (mtd->master || mtd->oobsize == 0)
+		return 0;
+
 	mtdraw = xzalloc(sizeof(*mtdraw));
 	mtdraw->writebuf = xmalloc(RAW_WRITEBUF_SIZE);
 	mtdraw->mtd = mtd;
@@ -306,6 +309,9 @@ static int del_mtdraw_device(struct mtd_info *mtd, void **priv)
 {
 	struct mtdraw *mtdraw;
 
+	if (mtd->master || mtd->oobsize == 0)
+		return 0;
+
 	mtdraw = *priv;
 	devfs_remove(&mtdraw->cdev);
 	free(mtdraw);
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
