Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZluNy-0006wp-Kg
 for barebox@lists.infradead.org; Tue, 13 Oct 2015 07:52:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 13 Oct 2015 09:51:54 +0200
Message-Id: <1444722714-30445-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1444722714-30445-1-git-send-email-s.hauer@pengutronix.de>
References: <1444722714-30445-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] fs: pass path directly to cdev_open
To: Barebox List <barebox@lists.infradead.org>

Now that cdev_open handles a path we no longer have to add /dev/ to
the name.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 2d7578b..4983fc7 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1222,12 +1222,7 @@ static const char *detect_fs(const char *filename)
 
 int fsdev_open_cdev(struct fs_device_d *fsdev)
 {
-	const char *backingstore = fsdev->backingstore;
-
-	if (!strncmp(backingstore , "/dev/", 5))
-		backingstore += 5;
-
-	fsdev->cdev = cdev_open(backingstore, O_RDWR);
+	fsdev->cdev = cdev_open(fsdev->backingstore, O_RDWR);
 	if (!fsdev->cdev)
 		return -EINVAL;
 
-- 
2.6.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
