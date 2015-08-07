Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1ZNhyX-0008SC-Db
 for barebox@lists.infradead.org; Fri, 07 Aug 2015 13:46:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Aug 2015 15:45:35 +0200
Message-Id: <1438955141-8850-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1438955141-8850-1-git-send-email-s.hauer@pengutronix.de>
References: <1438955141-8850-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/8] fb: return original fb_info in FBIOGET_SCREENINFO
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/fb.c      | 4 +++-
 lib/gui/graphic_utils.c | 6 ++----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index 29b4c71..dbda8d4 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -11,10 +11,12 @@
 static int fb_ioctl(struct cdev* cdev, int req, void *data)
 {
 	struct fb_info *info = cdev->priv;
+	struct fb_info **fb;
 
 	switch (req) {
 	case FBIOGET_SCREENINFO:
-		memcpy(data, info, sizeof(*info));
+		fb = data;
+		*fb = info;
 		break;
 	case FBIO_ENABLE:
 		info->fbops->fb_enable(info);
diff --git a/lib/gui/graphic_utils.c b/lib/gui/graphic_utils.c
index 47003a0..f928ee1 100644
--- a/lib/gui/graphic_utils.c
+++ b/lib/gui/graphic_utils.c
@@ -281,7 +281,7 @@ struct screen *fb_open(const char * fbdev, bool offscreen)
 
 	info = xzalloc(sizeof(*info));
 
-	ret = ioctl(fd, FBIOGET_SCREENINFO, info);
+	ret = ioctl(fd, FBIOGET_SCREENINFO, &info);
 	if (ret) {
 		goto failed_screeninfo;
 	}
@@ -310,10 +310,8 @@ void fb_close(struct screen *sc)
 {
 	free(sc->offscreenbuf);
 
-	if (sc->fd > 0) {
+	if (sc->fd > 0)
 		close(sc->fd);
-		free(sc->info);
-	}
 
 	free(sc);
 }
-- 
2.4.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
