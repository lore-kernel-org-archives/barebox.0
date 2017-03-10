Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cmEft-00038R-KI
 for barebox@lists.infradead.org; Fri, 10 Mar 2017 07:09:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 Mar 2017 08:08:54 +0100
Message-Id: <20170310070854.30358-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] video: call fb_[en|dis]able instead of fops directly
To: Barebox List <barebox@lists.infradead.org>

We have fb_enable and fb_disable which handle enabling of a
framebuffer, so use it instead of calling into the ops directly.
This gets the enable count straight.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/fb.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index 6b88f2df97..b6f87e47c6 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -12,23 +12,25 @@ static int fb_ioctl(struct cdev* cdev, int req, void *data)
 {
 	struct fb_info *info = cdev->priv;
 	struct fb_info **fb;
+	int ret;
 
 	switch (req) {
 	case FBIOGET_SCREENINFO:
 		fb = data;
 		*fb = info;
+		ret = 0;
 		break;
 	case FBIO_ENABLE:
-		info->fbops->fb_enable(info);
+		ret = fb_enable(info);
 		break;
 	case FBIO_DISABLE:
-		info->fbops->fb_disable(info);
+		ret = fb_disable(info);
 		break;
 	default:
 		return -ENOSYS;
 	}
 
-	return 0;
+	return ret;
 }
 
 static int fb_close(struct cdev *cdev)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
