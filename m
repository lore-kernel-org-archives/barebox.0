Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo5.mail-out.ovh.net ([46.105.56.132]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TvKEE-0000my-2w
 for barebox@lists.infradead.org; Wed, 16 Jan 2013 04:03:55 +0000
Received: from mail644.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 1212DFFA7DB
 for <barebox@lists.infradead.org>; Wed, 16 Jan 2013 05:13:28 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 16 Jan 2013 05:02:24 +0100
Message-Id: <1358308944-5842-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] graphic_utils/fb_open: fix fbsize
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 lib/gui/graphic_utils.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/gui/graphic_utils.c b/lib/gui/graphic_utils.c
index 3800ee2..95687df 100644
--- a/lib/gui/graphic_utils.c
+++ b/lib/gui/graphic_utils.c
@@ -219,7 +219,7 @@ int fb_open(const char * fbdev, struct screen *sc, bool offscreen)
 	sc->s.y = 0;
 	sc->s.width = sc->info.xres;
 	sc->s.height = sc->info.yres;
-	sc->fbsize = sc->s.x * sc->s.x * (sc->info.bits_per_pixel >> 3);
+	sc->fbsize = sc->s.width * sc->s.height * (sc->info.bits_per_pixel >> 3);
 
 	if (offscreen) {
 		/* Don't fail if malloc fails, just continue rendering directly
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
