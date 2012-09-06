Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo3.mail-out.ovh.net ([46.105.75.36]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9VCo-00079E-LU
 for barebox@lists.infradead.org; Thu, 06 Sep 2012 06:04:49 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 6BF93FF8C33
 for <barebox@lists.infradead.org>; Thu,  6 Sep 2012 08:12:21 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  6 Sep 2012 08:04:55 +0200
Message-Id: <1346911500-12902-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1346911500-12902-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120906060058.GE4761@game.jcrosoft.org>
 <1346911500-12902-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 07/12] splash: add support to set a background color
To: barebox@lists.infradead.org

This will allow to reset the screen to a default color when using transparent
PNG.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/splash.c |   79 +++++++++++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 76 insertions(+), 3 deletions(-)

diff --git a/commands/splash.c b/commands/splash.c
index 88a6cf1..4bddc6c 100644
--- a/commands/splash.c
+++ b/commands/splash.c
@@ -9,6 +9,66 @@
 #include <fb.h>
 #include <image_renderer.h>
 
+static u32 get_pixel(struct fb_info *info, u32 color)
+{
+	u32 px;
+	u8 t = (color >> 24) & 0xff;
+	u8 r = (color >> 16) & 0xff;
+	u8 g = (color >> 8 ) & 0xff;
+	u8 b = (color >> 0 ) & 0xff;
+
+	if (info->grayscale) {
+		 px = (r | g | b) ? 0xffffffff : 0x0;
+		 return px;
+	}
+
+	px = (t >> (8 - info->transp.length)) << info->transp.offset |
+		 (r >> (8 - info->red.length)) << info->red.offset |
+		 (g >> (8 - info->green.length)) << info->green.offset |
+		 (b >> (8 - info->blue.length)) << info->blue.offset;
+
+	return px;
+}
+
+static void memsetw(void *s, u16 c, size_t n)
+{
+	size_t i;
+	u16* tmp = s;
+
+	for (i = 0; i < n; i++)
+		*tmp++ = c;
+}
+
+static void memsetl(void *s, u32 c, size_t n)
+{
+	size_t i;
+	u32* tmp = s;
+
+	for (i = 0; i < n; i++)
+		*tmp++ = c;
+}
+
+static void memset_pixel(struct fb_info *info, void* buf, u32 color, size_t size)
+{
+	u32 px;
+	u8 *screen = buf;
+
+	px = get_pixel(info, color);
+
+	switch (info->bits_per_pixel) {
+	case 8:
+		memset(screen, (uint8_t)px, size);
+		break;
+	case 16:
+		memsetw(screen, (uint16_t)px, size);
+		break;
+	case 32:
+	case 24:
+		memsetl(screen, px, size);
+		break;
+	}
+}
+
 static int do_splash(int argc, char *argv[])
 {
 	int ret, opt, fd;
@@ -19,13 +79,19 @@ static int do_splash(int argc, char *argv[])
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
@@ -71,8 +137,14 @@ static int do_splash(int argc, char *argv[])
 
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
@@ -98,6 +170,7 @@ BAREBOX_CMD_HELP_SHORT("Show the bitmap FILE on the framebuffer.\n")
 BAREBOX_CMD_HELP_OPT  ("-f <fb>",   "framebuffer device (/dev/fb0)\n")
 BAREBOX_CMD_HELP_OPT  ("-x <xofs>", "x offset (default center)\n")
 BAREBOX_CMD_HELP_OPT  ("-y <yofs>", "y offset (default center)\n")
+BAREBOX_CMD_HELP_OPT  ("-b <backgroung>", "backgroung color\n")
 BAREBOX_CMD_HELP_OPT  ("-o",        "render offscreen\n")
 BAREBOX_CMD_HELP_END
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
