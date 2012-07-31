Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SwINt-0007xp-0m
 for barebox@lists.infradead.org; Tue, 31 Jul 2012 19:45:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 31 Jul 2012 21:45:10 +0200
Message-Id: <1343763911-4410-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1343763911-4410-1-git-send-email-s.hauer@pengutronix.de>
References: <1343763911-4410-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ubi: cdev->write has to return the bytes read, not 0
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/ubi/cdev.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/ubi/cdev.c b/drivers/mtd/ubi/cdev.c
index c99b64d..6b1e432 100644
--- a/drivers/mtd/ubi/cdev.c
+++ b/drivers/mtd/ubi/cdev.c
@@ -78,7 +78,7 @@ static ssize_t ubi_volume_cdev_write(struct cdev* cdev, const void *buf,
 		return err;
 	}
 
-	return err;
+	return size;
 }
 
 static int ubi_volume_cdev_open(struct cdev *cdev, unsigned long flags)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
