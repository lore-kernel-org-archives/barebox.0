Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WE1LL-00010D-CS
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 18:49:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Feb 2014 19:48:34 +0100
Message-Id: <1392317314-8985-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] mtd: mtdoob: Do not create for partitions
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/mtdoob.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/mtdoob.c b/drivers/mtd/mtdoob.c
index 1e88b53..b9cac2a 100644
--- a/drivers/mtd/mtdoob.c
+++ b/drivers/mtd/mtdoob.c
@@ -73,7 +73,7 @@ static int add_mtdoob_device(struct mtd_info *mtd, char *devname, void **priv)
 {
 	struct mtdoob *mtdoob;
 
-	if (mtd->oobsize == 0)
+	if (mtd->master || mtd->oobsize == 0)
 		return 0;
 
 	mtdoob = xzalloc(sizeof(*mtdoob));
@@ -93,6 +93,9 @@ static int del_mtdoob_device(struct mtd_info *mtd, void **priv)
 {
 	struct mtdoob *mtdoob;
 
+	if (mtd->master || mtd->oobsize == 0)
+		return 0;
+
 	mtdoob = *priv;
 	devfs_remove(&mtdoob->cdev);
 	free(mtdoob);
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
