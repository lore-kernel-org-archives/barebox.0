Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK6Zw-0008BE-7e
 for barebox@lists.infradead.org; Mon, 14 Oct 2019 20:04:29 +0000
Received: from geraet.fritz.box (i538754B4.versanet.de [83.135.84.180])
 (Authenticated sender: ahmad@a3f.at)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 55378C0005
 for <barebox@lists.infradead.org>; Mon, 14 Oct 2019 20:04:14 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 14 Oct 2019 22:04:07 +0200
Message-Id: <20191014200408.17643-1-ahmad@a3f.at>
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
Subject: [PATCH 1/2] edit: replace %c for literal with literal directly
To: barebox@lists.infradead.org

There's no need to use %c for ESC, when we can use the appropriate
escape sequence directly. Do this and shave off 60~ bytes on my
compressed THUMB-2 barebox.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 commands/edit.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/commands/edit.c b/commands/edit.c
index ba6a8c7cdd78..8668a8c0655c 100644
--- a/commands/edit.c
+++ b/commands/edit.c
@@ -55,7 +55,7 @@ static int scrcol = 0;		/* the first column on screen */
 
 static void pos(int x, int y)
 {
-	printf("%c[%d;%dH", 27, y + 2, x + 1);
+	printf("\x1b[%d;%dH", y + 2, x + 1);
 }
 
 static char *screenline(char *line, int *pos)
@@ -110,7 +110,7 @@ static void refresh_line(struct line *line, int ypos)
 	char *str = screenline(line->data, NULL) + scrcol;
 	pos(0, ypos);
 	str[screenwidth] = 0;
-	printf("%s%c[K", str, 27);
+	printf("%s\x1b[K", str);
 	pos(cursx, cursy);
 }
 
@@ -130,7 +130,7 @@ static void refresh(int full)
 	if (!full) {
 		if (smartscroll) {
 			if (scrline->next == lastscrline) {
-				printf("%c[1T", 27);
+				printf("\x1b[1T");
 				refresh_line(scrline, 0);
 				pos(0, screenheight);
 				printf("%*s", screenwidth, "");
@@ -138,7 +138,7 @@ static void refresh(int full)
 			}
 
 			if (scrline->prev == lastscrline) {
-				printf("%c[1S", 27);
+				printf("\x1b[1S");
 				for (i = 0; i < screenheight - 1; i++) {
 					l = l->next;
 					if (!l)
@@ -420,13 +420,13 @@ static int do_edit(int argc, char *argv[])
 	lastscrline = scrline;
 	lastscrcol = 0;
 
-	printf("%c[2J", 27);
+	printf("\x1b[2J");
 
 	pos(0, -1);
 
-	printf("%c[7m %-25s <ctrl-d>: Save and quit <ctrl-c>: quit %c[0m",
-			27, argv[1], 27);
-	printf("%c[2;%dr", 27, screenheight);
+	printf("\x1b[7m %-25s <ctrl-d>: Save and quit <ctrl-c>: quit \x1b[0m",
+			argv[1]);
+	printf("\x1b[2;%dr", screenheight);
 
 	screenheight--; /* status line */
 
@@ -554,7 +554,7 @@ static int do_edit(int argc, char *argv[])
 	}
 out:
 	free_buffer();
-	printf("%c[2J%c[r", 27, 27);
+	printf("\x1b[2J\x1b[r");
 	printf("\n");
 	return ret;
 }
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
