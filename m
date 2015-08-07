Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1ZNhyK-0008Rr-OS
 for barebox@lists.infradead.org; Fri, 07 Aug 2015 13:46:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Aug 2015 15:45:37 +0200
Message-Id: <1438955141-8850-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/8] splash command: simplify offscreen rendering
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/splash.c | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/commands/splash.c b/commands/splash.c
index 90f0a0c..29e30ae 100644
--- a/commands/splash.c
+++ b/commands/splash.c
@@ -18,6 +18,7 @@ static int do_splash(int argc, char *argv[])
 	int offscreen = 0;
 	u32 bg_color = 0x00000000;
 	bool do_bg = false;
+	void *buf;
 
 	memset(&s, 0, sizeof(s));
 
@@ -58,15 +59,11 @@ static int do_splash(int argc, char *argv[])
 		return PTR_ERR(sc);
 	}
 
-	if (sc->offscreenbuf) {
-		if (do_bg)
-			gu_memset_pixel(sc->info, sc->offscreenbuf, bg_color,
-					sc->s.width * sc->s.height);
-		else
-			memcpy(sc->offscreenbuf, sc->fb, sc->fbsize);
-	} else if (do_bg) {
-		gu_memset_pixel(sc->info, sc->fb, bg_color, sc->s.width * sc->s.height);
-	}
+	buf = gui_screen_render_buffer(sc);
+
+	if (do_bg)
+		gu_memset_pixel(sc->info, buf, bg_color,
+				sc->s.width * sc->s.height);
 
 	ret = image_renderer_file(sc, &s, image_file);
 	if (ret > 0)
-- 
2.4.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
