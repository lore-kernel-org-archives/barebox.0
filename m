Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SUY52-0006B0-Cb
 for barebox@lists.infradead.org; Wed, 16 May 2012 06:51:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 16 May 2012 08:51:23 +0200
Message-Id: <1337151083-5576-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] edit: Add a status line
To: barebox@lists.infradead.org

When invoked from a skript it's useful to know which file is edited. Also
Add information how to exit the editor to the status line.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/edit.c |   17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/commands/edit.c b/commands/edit.c
index fae76cd..eddec0b 100644
--- a/commands/edit.c
+++ b/commands/edit.c
@@ -62,7 +62,7 @@ static int scrcol = 0;		/* the first column on screen */
 
 static void pos(int x, int y)
 {
-	printf("%c[%d;%dH", 27, y + 1, x + 1);
+	printf("%c[%d;%dH", 27, y + 2, x + 1);
 }
 
 static char *screenline(char *line, int *pos)
@@ -409,6 +409,17 @@ static int do_edit(int argc, char *argv[])
 	lastscrcol = 0;
 
 	printf("%c[2J", 27);
+
+	pos(0, -1);
+
+	printf("%c[7m %-25s <ctrl-d>: Save and quit <ctrl-c>: quit %c[0m",
+			27, argv[1], 27);
+	printf("%c[2;%dr", 27, screenheight);
+
+	screenheight--; /* status line */
+
+	pos(0, 0);
+
 	refresh(1);
 
 	while (1) {
@@ -416,7 +427,7 @@ static int do_edit(int argc, char *argv[])
 
 		if (textx > curlen)
 			textx = curlen;
-		if (textx < 0)
+		if (textx < 1)
 			textx = 0;
 
 		screenline(curline->data, &linepos);
@@ -531,7 +542,7 @@ static int do_edit(int argc, char *argv[])
 	}
 out:
 	free_buffer();
-	printf("%c[2J", 27);
+	printf("%c[2J%c[r", 27, 27);
 	printf("\n");
 	return 0;
 }
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
