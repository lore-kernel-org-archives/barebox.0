Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d2gXl-0002KE-Ci
 for barebox@lists.infradead.org; Mon, 24 Apr 2017 16:08:59 +0000
Received: by mail-lf0-x241.google.com with SMTP id i3so17232044lfh.2
 for <barebox@lists.infradead.org>; Mon, 24 Apr 2017 09:08:33 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 24 Apr 2017 19:08:16 +0300
Message-Id: <20170424160816.20936-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] readline_simple: drop unusable u-boot legacy stuff
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 lib/readline_simple.c | 13 -------------
 1 file changed, 13 deletions(-)

diff --git a/lib/readline_simple.c b/lib/readline_simple.c
index c2960665fb..c4d3d240e5 100644
--- a/lib/readline_simple.c
+++ b/lib/readline_simple.c
@@ -57,19 +57,6 @@ int readline (const char *prompt, char *line, int len)
 	col = plen;
 
 	for (;;) {
-#ifdef CONFIG_BOOT_RETRY_TIME
-		while (!tstc()) {	/* while no incoming data */
-			if (retry_time >= 0 && get_ticks() > endtime)
-				return (-2);	/* timed out */
-		}
-#endif
-
-#ifdef CONFIG_SHOW_ACTIVITY
-		while (!tstc()) {
-			extern void show_activity(int arg);
-			show_activity(0);
-		}
-#endif
 		c = getchar();
 
 		/*
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
