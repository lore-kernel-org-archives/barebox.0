Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXsH7-0004tL-UD
 for barebox@lists.infradead.org; Mon, 03 Jun 2019 19:05:47 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1hXsH3-00071t-JQ
 for barebox@lists.infradead.org; Mon, 03 Jun 2019 21:05:37 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hXsH3-00043X-CV
 for barebox@lists.infradead.org; Mon, 03 Jun 2019 21:05:37 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 Jun 2019 21:05:35 +0200
Message-Id: <20190603190535.15346-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] commands: don't use stale errno when calling fb_open
To: barebox@lists.infradead.org

fb_open returns a pointer and doesn't populate errno, which will
results in a stale errno being evaluated by perror() on failure.
Fix this by populating errno manually at call sites.

While at it, correct the typo in the prefix passed to perror().

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/fbtest.c | 5 +++--
 commands/splash.c | 5 +++--
 2 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/commands/fbtest.c b/commands/fbtest.c
index e5dd8ba7fabf..2c589f77d3b8 100644
--- a/commands/fbtest.c
+++ b/commands/fbtest.c
@@ -271,8 +271,9 @@ static int do_fbtest(int argc, char *argv[])
 
 	sc = fb_open(fbdev);
 	if (IS_ERR(sc)) {
-		perror("fd_open");
-		return PTR_ERR(sc);
+		errno = PTR_ERR(sc);
+		perror("fb_open");
+		return errno;
 	}
 
 	if (!pattern_name) {
diff --git a/commands/splash.c b/commands/splash.c
index 2b70b296837e..75b3ee3fadaf 100644
--- a/commands/splash.c
+++ b/commands/splash.c
@@ -54,8 +54,9 @@ static int do_splash(int argc, char *argv[])
 
 	sc = fb_open(fbdev);
 	if (IS_ERR(sc)) {
-		perror("fd_open");
-		return PTR_ERR(sc);
+		errno = PTR_ERR(sc);
+		perror("fb_open");
+		return errno;
 	}
 
 	buf = gui_screen_render_buffer(sc);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
