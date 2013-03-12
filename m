Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo4.mail-out.ovh.net ([91.121.62.11]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFVQ4-0000r0-Fw
 for barebox@lists.infradead.org; Tue, 12 Mar 2013 20:03:33 +0000
Received: from mail428.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id AEA4F104E286
 for <barebox@lists.infradead.org>; Tue, 12 Mar 2013 21:14:46 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 12 Mar 2013 20:59:09 +0100
Message-Id: <1363118349-19267-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] splash: fix background color support
To: barebox@lists.infradead.org

the fb info is stored in struct screen by fb_open

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/splash.c |    6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/commands/splash.c b/commands/splash.c
index 4cc463e..0955c01 100644
--- a/commands/splash.c
+++ b/commands/splash.c
@@ -13,7 +13,6 @@ static int do_splash(int argc, char *argv[])
 	struct screen sc;
 	int ret, opt, fd;
 	char *fbdev = "/dev/fb0";
-	struct fb_info info;
 	char *image_file;
 	int offscreen = 0;
 	u32 bg_color = 0x00000000;
@@ -21,7 +20,6 @@ static int do_splash(int argc, char *argv[])
 
 	memset(&s, 0, sizeof(s));
 	memset(&sc, 0, sizeof(sc));
-	memset(&info, 0, sizeof(info));
 
 	s.x = -1;
 	s.y = -1;
@@ -61,12 +59,12 @@ static int do_splash(int argc, char *argv[])
 
 	if (sc.offscreenbuf) {
 		if (do_bg)
-			memset_pixel(&info, sc.offscreenbuf, bg_color,
+			memset_pixel(&sc.info, sc.offscreenbuf, bg_color,
 					sc.s.width * sc.s.height);
 		else
 			memcpy(sc.offscreenbuf, sc.fb, sc.fbsize);
 	} else if (do_bg) {
-		memset_pixel(&info, sc.fb, bg_color, sc.s.width * sc.s.height);
+		memset_pixel(&sc.info, sc.fb, bg_color, sc.s.width * sc.s.height);
 	}
 
 	if (image_renderer_file(&sc, &s, image_file) < 0)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
