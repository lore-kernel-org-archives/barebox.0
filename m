Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YAuTD-0003WG-4w
 for barebox@lists.infradead.org; Tue, 13 Jan 2015 05:56:52 +0000
Received: from mail94.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 16EA21004FEA
 for <barebox@lists.infradead.org>; Tue, 13 Jan 2015 06:47:36 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 13 Jan 2015 06:47:31 +0100
Message-Id: <1421128051-6505-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1421128051-6505-1-git-send-email-plagnioj@jcrosoft.com>
References: <1421128051-6505-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] command/splash: fix return value
To: barebox@lists.infradead.org

return errno when possible

otherwise return 0 for ok or 1 for error

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/splash.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/commands/splash.c b/commands/splash.c
index 2ce1bdd..9bd84fb 100644
--- a/commands/splash.c
+++ b/commands/splash.c
@@ -11,7 +11,8 @@ static int do_splash(int argc, char *argv[])
 {
 	struct surface s;
 	struct screen sc;
-	int ret, opt, fd;
+	int ret = 0;
+	int opt, fd;
 	char *fbdev = "/dev/fb0";
 	char *image_file;
 	int offscreen = 0;
@@ -54,7 +55,7 @@ static int do_splash(int argc, char *argv[])
 	fd = fb_open(fbdev, &sc, offscreen);
 	if (fd < 0) {
 		perror("fd_open");
-		return 1;
+		return fd;
 	}
 
 	if (sc.offscreenbuf) {
@@ -67,8 +68,9 @@ static int do_splash(int argc, char *argv[])
 		memset_pixel(&sc.info, sc.fb, bg_color, sc.s.width * sc.s.height);
 	}
 
-	if (image_renderer_file(&sc, &s, image_file) < 0)
-		ret = 1;
+	ret = image_renderer_file(&sc, &s, image_file);
+	if (ret > 0)
+		ret = 0;
 
 	screen_blit(&sc);
 
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
