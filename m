Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7EdA-0001DA-Qq
 for barebox@lists.infradead.org; Mon, 09 Sep 2019 08:02:38 +0000
Received: from geraet.pengutronix.de (hazel.nat.pengutronix.de [85.220.165.66])
 (Authenticated sender: ahmad@a3f.at)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 744CD4000B
 for <barebox@lists.infradead.org>; Mon,  9 Sep 2019 08:02:19 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon,  9 Sep 2019 10:02:13 +0200
Message-Id: <20190909080213.26068-1-ahmad@a3f.at>
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
Subject: [RFC PATCH v1] edit: add vi alias with vi-style bindings
To: barebox@lists.infradead.org

The edit command already supports a few key bindings for code
navigation. To improve user experience for vi-impaired users, add a vi
alias that maps traditional vi key bindings to the barebox edit ones.
This is done by adding a mode-aware read_modal_key that maps vi
normal-mode keys to barebox edit's. For operations that requires more
than one barebox edit key, a backlog of two characters is additionally
used.

In interest of code size reduction, a command mode (and the associated
readline overhead) are not implemented, the effect of the most common
commands :q and :wq commands can be realized with vim-like ZQ and ZZ
bindings instead.

This increases the size of a compressed THUMB2 barebox by 733 bytes.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 commands/edit.c | 148 +++++++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 139 insertions(+), 9 deletions(-)

diff --git a/commands/edit.c b/commands/edit.c
index 290222ce152f..0dc19841f351 100644
--- a/commands/edit.c
+++ b/commands/edit.c
@@ -378,8 +378,120 @@ static void getwinsize(void)
 	pos(0, 0);
 }
 
+static inline void statusbar(const char *str)
+{
+	pos(0, screenheight+1);
+	printf("%*c\r", screenwidth, ' ');
+	printf(str);
+	pos(cursx, cursy);
+}
+
+static int read_modal_key(bool is_modal)
+{
+	static enum { MODE_INSERT, MODE_NORMAL } mode = MODE_NORMAL;
+	static int backlog[2] = { -1, -1 };
+	int c;
+
+	if (backlog[0] >= 0) {
+		/* pop a character */
+		c = backlog[0];
+		backlog[0] = backlog[1];
+		backlog[1] = -1;
+	} else {
+		c = read_key();
+	}
+
+	if (is_modal && mode == MODE_INSERT && (c == -1 || c == CTL_CH('c'))) {
+		mode = MODE_NORMAL;
+		statusbar("");
+		return -EAGAIN;
+	}
+
+	if (!is_modal || mode == MODE_INSERT)
+		return c;
+
+	switch (c) {
+	case -1: /* invalid escape, e.g. two escapes in a row */
+		break;
+	case 'i':
+		statusbar("-- INSERT --");
+		mode = MODE_INSERT;
+		break;
+	case 'h':
+		return BB_KEY_LEFT;
+	case 'j':
+		return BB_KEY_DOWN;
+	case 'k':
+		return BB_KEY_UP;
+	case 'a':
+		statusbar("-- INSERT --");
+		mode = MODE_INSERT;
+		/* fall through */
+	case 'l':
+		return BB_KEY_RIGHT;
+	case 'O':
+		backlog[0] = '\n';
+		backlog[1] = BB_KEY_UP;
+		/* fall through */
+	case 'I':
+		statusbar("-- INSERT --");
+		mode = MODE_INSERT;
+		/* fall through */
+	case '^':
+	case '0':
+		return BB_KEY_HOME;
+	case 'g':
+		c = read_key();
+		if (c != 'g')
+			break;
+		backlog[0] = CTL_CH('u');
+		backlog[1] = CTL_CH('u');
+		/* fall through */
+	case CTL_CH('u'):
+		return BB_KEY_PAGEUP;
+	case 'G':
+		backlog[0] = CTL_CH('d');
+		backlog[1] = CTL_CH('d');
+		/* fall through */
+	case CTL_CH('d'):
+		return BB_KEY_PAGEDOWN;
+	case 'o':
+		backlog[0] = '\n';
+		/* fall through */
+	case 'A':
+		statusbar("-- INSERT --");
+		mode = MODE_INSERT;
+		/* fall through */
+	case '$':
+		return BB_KEY_END;
+	case CTL_CH('c'):
+		statusbar("Type ZQ to abandon all changes and exit vi."
+			  "Type ZZ to exit whilesaving them.");
+		break;
+	case ':':
+		statusbar("ERROR: command mode not supported");
+		break;
+	case 'Z':
+		c = read_key();
+		if (c == 'Z')
+			return CTL_CH('d');
+		if (c == 'Q')
+			return CTL_CH('c');
+	case 'x':
+		return BB_KEY_DEL;
+	case 'X':
+		return '\b';
+	default:
+		statusbar("ERROR: not implemented");
+		break;
+	}
+
+	return -EAGAIN;
+}
+
 static int do_edit(int argc, char *argv[])
 {
+	bool is_vi = false;
 	int lastscrcol;
 	int i;
 	int linepos;
@@ -401,10 +513,14 @@ static int do_edit(int argc, char *argv[])
 	else
 		screenheight = 25;
 
-	/* check if we are called as "sedit" instead of "edit" */
-	if (*argv[0] == 's') {
+	/* check if we are not called as "edit" */
+	if (*argv[0] != 'e') {
 		smartscroll = 1;
 		getwinsize();
+
+		/* check if we are called as "vi" */
+		if (*argv[0] == 'v')
+			is_vi = true;
 	}
 
 	buffer = NULL;
@@ -424,14 +540,24 @@ static int do_edit(int argc, char *argv[])
 
 	pos(0, -1);
 
-	printf("%c[7m %-25s <ctrl-d>: Save and quit <ctrl-c>: quit %c[0m",
-			27, argv[1], 27);
-	printf("%c[2;%dr", 27, screenheight);
-
-	screenheight--; /* status line */
+	if (is_vi) {
+		screenheight -= 2;
+		printf("%c[7m%*c%c[0m", 27, screenwidth , ' ', 27);
+		pos(0, screenheight-1);
+		printf("%c[7m%*c%c[0m", 27, screenwidth , ' ', 27);
+		printf("\r%c[7m%-25s%c[0m", 27, argv[1], 27);
+		printf("%c[2;%dr", 27, screenheight);
+	} else {
+		pos(0, -1);
+		printf("%c[7m %-25s <ctrl-d>: Save and quit <ctrl-c>: quit %c[0m",
+		       27, argv[1], 27);
+		printf("%c[2;%dr", 27, screenheight);
+	}
 
 	pos(0, 0);
 
+	screenheight--; /* status line */
+
 	refresh(1);
 
 	while (1) {
@@ -469,7 +595,11 @@ static int do_edit(int argc, char *argv[])
 		lastscrline = scrline;
 		pos(cursx, cursy);
 
-		c = read_key();
+again:
+		c = read_modal_key(is_vi);
+		if (c == -EAGAIN)
+			goto again;
+
 		switch (c) {
 		case BB_KEY_UP:
 			if (!curline->prev)
@@ -559,7 +689,7 @@ out:
 	return ret;
 }
 
-static const char * const edit_aliases[] = { "sedit", NULL};
+static const char * const edit_aliases[] = { "sedit", "vi", NULL};
 
 BAREBOX_CMD_HELP_START(edit)
 BAREBOX_CMD_HELP_TEXT("Use cursor keys, Ctrl-C to exit and Ctrl-D to exit-with-save.")
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
