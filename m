Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8Co6-0000ro-CX
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 14:37:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Apr 2011 16:36:49 +0200
Message-Id: <1302273422-6987-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302273422-6987-1-git-send-email-s.hauer@pengutronix.de>
References: <1302273422-6987-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/16] ubi: do not use filep
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/ubi/cdev.c |    8 +-------
 1 files changed, 1 insertions(+), 7 deletions(-)

diff --git a/drivers/mtd/ubi/cdev.c b/drivers/mtd/ubi/cdev.c
index 5520132..46e1cb5 100644
--- a/drivers/mtd/ubi/cdev.c
+++ b/drivers/mtd/ubi/cdev.c
@@ -9,7 +9,6 @@ struct ubi_volume_cdev_priv {
 	struct ubi_device *ubi;
 	struct ubi_volume *vol;
 	int updating;
-	unsigned long mode;
 };
 
 static ssize_t ubi_volume_cdev_read(struct cdev *cdev, void *buf, size_t size,
@@ -86,12 +85,7 @@ static int ubi_volume_cdev_open(struct cdev *cdev, struct filep *f)
 {
 	struct ubi_volume_cdev_priv *priv = cdev->priv;
 
-	/* only allow read or write, but not both */
-	if ((f->flags & O_ACCMODE) == O_RDWR)
-		return -EINVAL;
-
 	priv->updating = 0;
-	priv->mode = f->flags & O_ACCMODE;
 
 	return 0;
 }
@@ -132,7 +126,7 @@ static off_t ubi_volume_cdev_lseek(struct cdev *cdev, off_t ofs)
 	struct ubi_volume_cdev_priv *priv = cdev->priv;
 
 	/* We can only update ubi volumes sequentially */
-	if (priv->mode == O_WRONLY)
+	if (priv->updating)
 		return -EINVAL;
 
 	return ofs;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
