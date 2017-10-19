Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e57qA-0003nn-Oz
 for barebox@lists.infradead.org; Thu, 19 Oct 2017 10:14:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 19 Oct 2017 12:13:48 +0200
Message-Id: <20171019101348.13954-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] graphic_utils: Fix freeing uninitialzed pointer in fb_open()
To: Barebox List <barebox@lists.infradead.org>

In fb_open() when fb_create_screen() fails then sc contains an
error pointer which is then freed in the failure path. Fix this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/gui/graphic_utils.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/lib/gui/graphic_utils.c b/lib/gui/graphic_utils.c
index 7d238e9ff9..0bed932213 100644
--- a/lib/gui/graphic_utils.c
+++ b/lib/gui/graphic_utils.c
@@ -285,15 +285,13 @@ struct screen *fb_open(const char * fbdev)
 	sc = fb_create_screen(info);
 	if (IS_ERR(sc)) {
 		ret = PTR_ERR(sc);
-		goto failed_create;
+		goto failed_screeninfo;
 	}
 
 	sc->fd = fd;
 
 	return sc;
 
-failed_create:
-	free(sc);
 failed_screeninfo:
 	close(fd);
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
