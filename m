Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NLQdz-0005jv-J5
	for barebox@lists.infradead.org; Fri, 18 Dec 2009 00:24:32 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.69)
	(envelope-from <rsc@pengutronix.de>) id 1NLQdN-0002OY-CE
	for barebox@lists.infradead.org; Fri, 18 Dec 2009 01:23:53 +0100
Received: from rsc by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <rsc@pengutronix.de>) id 1NLQdN-0000aE-B7
	for barebox@lists.infradead.org; Fri, 18 Dec 2009 01:23:53 +0100
Date: Fri, 18 Dec 2009 01:23:53 +0100
From: Robert Schwebel <r.schwebel@pengutronix.de>
Message-ID: <20091218002353.GP22533@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] readline: keys should be unsigned char consistently
To: barebox@lists.infradead.org

When building the sandbox, I get these warnings:

lib/readline.c: In function 'readline':
lib/readline.c:264: warning: case label value is less than minimum value for type
lib/readline.c:274: warning: case label value is less than minimum value for type
lib/readline.c:290: warning: case label value is less than minimum value for type

Make keys unsigned char consistently.

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 commands/edit.c   |    2 +-
 include/readkey.h |   12 ++++++------
 lib/readkey.c     |    4 ++--
 lib/readline.c    |   10 +++++-----
 4 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/commands/edit.c b/commands/edit.c
index 6503edf..4f4ba4f 100644
--- a/commands/edit.c
+++ b/commands/edit.c
@@ -394,7 +394,7 @@ static int do_edit(cmd_tbl_t * cmdtp, int argc, char *argv[])
 	int lastscrcol;
 	int i;
 	int linepos;
-	char c;
+	unsigned char c;
 
 	if (argc != 2)
 		return COMMAND_ERROR_USAGE;
diff --git a/include/readkey.h b/include/readkey.h
index d27f0b4..1f149b5 100644
--- a/include/readkey.h
+++ b/include/readkey.h
@@ -14,15 +14,15 @@
 #define KEY_ERASE_LINE		CTL_CH('x')
 #define KEY_INSERT		CTL_CH('o')
 #define KEY_CLEAR_SCREEN	CTL_CH('l')
-#define KEY_DEL7		(char)127
-#define KEY_END			(char)133	// Cursor Key End
-#define KEY_PAGEUP		(char)135	// Cursor Key Page Up
-#define KEY_PAGEDOWN		(char)136	// Cursor Key Page Down
-#define KEY_DEL			(char)137	// Cursor Key Del
+#define KEY_DEL7		(unsigned char)127
+#define KEY_END			(unsigned char)133	// Cursor Key End
+#define KEY_PAGEUP		(unsigned char)135	// Cursor Key Page Up
+#define KEY_PAGEDOWN		(unsigned char)136	// Cursor Key Page Down
+#define KEY_DEL			(unsigned char)137	// Cursor Key Del
 
 #define ANSI_CLEAR_SCREEN "\e[2J\e[;H"
 
-char read_key(void);
+unsigned char read_key(void);
 
 #endif /* READKEY_H */
 
diff --git a/lib/readkey.c b/lib/readkey.c
index 5937fd0..3efe5c4 100644
--- a/lib/readkey.c
+++ b/lib/readkey.c
@@ -28,7 +28,7 @@
 
 struct esc_cmds {
 	const char *seq;
-	char val;
+	unsigned char val;
 };
 
 static const struct esc_cmds esccmds[] = {
@@ -52,7 +52,7 @@ static const struct esc_cmds esccmds[] = {
 	{"[6~", KEY_PAGEDOWN},// Cursor Key Page Down
 };
 
-char read_key(void)
+unsigned char read_key(void)
 {
 	char c;
 	char esc[5];
diff --git a/lib/readline.c b/lib/readline.c
index 750da3b..73cf046 100644
--- a/lib/readline.c
+++ b/lib/readline.c
@@ -17,8 +17,8 @@
 #define MAX_CMDBUF_SIZE		256
 
 #define CTL_BACKSPACE		('\b')
-#define DEL			((char)255)
-#define DEL7			((char)127)
+#define DEL			((unsigned char)255)
+#define DEL7			((unsigned char)127)
 #define CREAD_HIST_CHAR		('!')
 
 #define getcmd_putch(ch)	putchar(ch)
@@ -137,8 +137,8 @@ static char* hist_next(void)
 	}					\
 }
 
-static void cread_add_char(char ichar, int insert, unsigned long *num,
-	       unsigned long *eol_num, char *buf, unsigned long len)
+static void cread_add_char(unsigned char ichar, int insert, unsigned long *num,
+	       unsigned long *eol_num, unsigned char *buf, unsigned long len)
 {
 	unsigned long wlen;
 
@@ -328,7 +328,7 @@ int readline(const char *prompt, char *buf, int len)
 			continue;
 		}
 		default:
-			if (isascii(ichar) && isprint(ichar))
+			if (isascii((int)ichar) && isprint((int)ichar))
 				cread_add_char(ichar, insert, &num, &eol_num, buf, len);
 			break;
 		}
-- 
1.5.6.5

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
