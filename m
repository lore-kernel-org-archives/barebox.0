Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SOoqg-0000O1-Cg
 for barebox@lists.infradead.org; Mon, 30 Apr 2012 11:32:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Apr 2012 13:32:52 +0200
Message-Id: <1335785575-14953-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1335785575-14953-1-git-send-email-s.hauer@pengutronix.de>
References: <1335785575-14953-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] edit: Add proper screen size handling
To: barebox@lists.infradead.org

We used to have a quite slow algorithm to detect the screen size
which was unused for long time. This patch changes this to first
set the cursor to x=999, y=999 and the read back the actual cursor
position. Since I am not confident that this works on all terminals
this is only used when edit is called as 'sedit'.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/edit.c |   50 ++++++++++++++++++++------------------------------
 1 file changed, 20 insertions(+), 30 deletions(-)

diff --git a/commands/edit.c b/commands/edit.c
index db2f89a..fae76cd 100644
--- a/commands/edit.c
+++ b/commands/edit.c
@@ -355,37 +355,26 @@ static void merge_line(struct line *line)
 	refresh(1);
 }
 
-/* not a good idea on slow serial lines */
-/* #define GETWINSIZE */
+#define ESC "\033"
 
-#ifdef GETWINSIZE
-static void getwinsize(void) {
-	int y, yy = 25, xx = 80, i, n, r;
+static void getwinsize(void)
+{
+	int i = 0, r;
 	char buf[100];
 	char *endp;
 
-	for (y = 25; y < 320; y++) {
-		pos(y, y);
-		printf("%c[6n", 27);
-		i = 0;
-		while ((r = getc()) != 'R') {
-			buf[i] = r;
-			i++;
-		}
-		n = simple_strtoul(buf + 2, &endp, 10);
-		if (n == y + 1)
-			yy = y + 1;
-		n = simple_strtoul(endp + 1, NULL, 10);
-		if (n == y + 1)
-			xx = y + 1;
+	printf(ESC "7" ESC "[r" ESC "[999;999H" ESC "[6n");
+
+	while ((r = getc()) != 'R') {
+		buf[i] = r;
+		i++;
 	}
-	pos(0,0);
-	screenheight = yy;
-	screenwidth = xx;
-	printf("%d %d\n", xx, yy);
-	mdelay(1000);
+
+	screenheight = simple_strtoul(buf + 2, &endp, 10);
+	screenwidth = simple_strtoul(endp + 1, NULL, 10);
+
+	pos(0, 0);
 }
-#endif
 
 static int do_edit(int argc, char *argv[])
 {
@@ -397,18 +386,19 @@ static int do_edit(int argc, char *argv[])
 	if (argc != 2)
 		return COMMAND_ERROR_USAGE;
 
+	screenwidth = 80;
+	screenheight = 25;
+
 	/* check if we are called as "sedit" instead of "edit" */
-	if (*argv[0] == 's')
+	if (*argv[0] == 's') {
 		smartscroll = 1;
+		getwinsize();
+	}
 
 	buffer = NULL;
 	if(edit_read_file(argv[1]))
 		return 1;
 
-#ifdef GETWINSIZE
-	getwinsize();
-#endif
-
 	cursx  = 0;
 	cursy  = 0;
 	textx  = 0;
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
