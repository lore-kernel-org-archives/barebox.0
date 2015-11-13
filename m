Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zx8vp-0005HW-0u
 for barebox@lists.infradead.org; Fri, 13 Nov 2015 07:38:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 13 Nov 2015 08:37:37 +0100
Message-Id: <1447400257-1198-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] graphics_utils: check for valid framebuffer before creating a
 screen
To: Barebox List <barebox@lists.infradead.org>

Otherwise we crash later when we try to print on that screen.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/gui/graphic_utils.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/lib/gui/graphic_utils.c b/lib/gui/graphic_utils.c
index 4c1885d..2fe9fa3 100644
--- a/lib/gui/graphic_utils.c
+++ b/lib/gui/graphic_utils.c
@@ -249,6 +249,10 @@ struct screen *fb_create_screen(struct fb_info *info)
 {
 	struct screen *sc;
 
+	if (!info->xres || !info->yres || !info->line_length ||
+			!info->screen_base)
+		return ERR_PTR(-EINVAL);
+
 	sc = xzalloc(sizeof(*sc));
 
 	sc->s.x = 0;
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
