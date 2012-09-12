Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo5.mail-out.ovh.net ([91.121.55.239]
 helo=mo5.mail-out.ovh.net)
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TBnJr-0008H8-TU
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 13:49:33 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 05616FF9DD3
 for <barebox@lists.infradead.org>; Wed, 12 Sep 2012 15:51:04 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 12 Sep 2012 15:42:45 +0200
Message-Id: <1347457369-9215-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1347457369-9215-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120912132443.GQ31207@game.jcrosoft.org>
 <1347457369-9215-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 07/11] splash: add support to set a background color
To: barebox@lists.infradead.org

This will allow to reset the screen to a default color when using transparent
PNG.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/splash.c |   20 +++++++++++++++++---
 1 file changed, 17 insertions(+), 3 deletions(-)

diff --git a/commands/splash.c b/commands/splash.c
index 88a6cf1..f40e3e1 100644
--- a/commands/splash.c
+++ b/commands/splash.c
@@ -8,6 +8,7 @@
 #include <fcntl.h>
 #include <fb.h>
 #include <image_renderer.h>
+#include <graphic_utils.h>
 
 static int do_splash(int argc, char *argv[])
 {
@@ -19,13 +20,19 @@ static int do_splash(int argc, char *argv[])
 	int startx = -1, starty = -1;
 	int xres, yres;
 	int offscreen = 0;
+	u32 bg_color = 0x00000000;
+	bool do_bg = false;
 	void *offscreenbuf = NULL;
 
-	while((opt = getopt(argc, argv, "f:x:y:o")) > 0) {
+	while((opt = getopt(argc, argv, "f:x:y:ob:")) > 0) {
 		switch(opt) {
 		case 'f':
 			fbdev = optarg;
 			break;
+		case 'b':
+			bg_color = simple_strtoul(optarg, NULL, 0);
+			do_bg = true;
+			break;
 		case 'x':
 			startx = simple_strtoul(optarg, NULL, 0);
 			break;
@@ -71,8 +78,14 @@ static int do_splash(int argc, char *argv[])
 
 		fbsize = xres * yres * (info.bits_per_pixel >> 3);
 		offscreenbuf = malloc(fbsize);
-		if (offscreenbuf)
-			memcpy(offscreenbuf, fb, fbsize);
+		if (offscreenbuf) {
+			if (do_bg)
+				memset_pixel(&info, offscreenbuf, bg_color, xres * yres);
+			else
+				memcpy(offscreenbuf, fb, fbsize);
+		}
+	} else if (do_bg) {
+		memset_pixel(&info, fb, bg_color, xres * yres);
 	}
 
 	if (image_renderer_file(&info, image_file, fb, startx, starty,
@@ -98,6 +111,7 @@ BAREBOX_CMD_HELP_SHORT("Show the bitmap FILE on the framebuffer.\n")
 BAREBOX_CMD_HELP_OPT  ("-f <fb>",   "framebuffer device (/dev/fb0)\n")
 BAREBOX_CMD_HELP_OPT  ("-x <xofs>", "x offset (default center)\n")
 BAREBOX_CMD_HELP_OPT  ("-y <yofs>", "y offset (default center)\n")
+BAREBOX_CMD_HELP_OPT  ("-b <color>", "background color in 0xttrrggbb\n")
 BAREBOX_CMD_HELP_OPT  ("-o",        "render offscreen\n")
 BAREBOX_CMD_HELP_END
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
