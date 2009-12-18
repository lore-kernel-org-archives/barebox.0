Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NLf4n-0005Cs-Ao
	for barebox@lists.infradead.org; Fri, 18 Dec 2009 15:49:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 18 Dec 2009 16:47:54 +0100
Message-Id: <1261151305-18627-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1261151305-18627-5-git-send-email-s.hauer@pengutronix.de>
References: <1261151305-18627-1-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-2-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-3-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-4-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/36] Remove unnecessary casts in key defines
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/edit.c   |    2 +-
 include/readkey.h |   12 ++++++------
 lib/readkey.c     |    2 +-
 lib/readline.c    |    6 +++---
 4 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/commands/edit.c b/commands/edit.c
index 6503edf..d292a52 100644
--- a/commands/edit.c
+++ b/commands/edit.c
@@ -394,7 +394,7 @@ static int do_edit(cmd_tbl_t * cmdtp, int argc, char *argv[])
 	int lastscrcol;
 	int i;
 	int linepos;
-	char c;
+	int c;
 
 	if (argc != 2)
 		return COMMAND_ERROR_USAGE;
diff --git a/include/readkey.h b/include/readkey.h
index d27f0b4..d073e43 100644
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
+#define KEY_DEL7		127
+#define KEY_END			133		// Cursor Key End
+#define KEY_PAGEUP		135		// Cursor Key Page Up
+#define KEY_PAGEDOWN		136		// Cursor Key Page Down
+#define KEY_DEL			137		// Cursor Key Del
 
 #define ANSI_CLEAR_SCREEN "\e[2J\e[;H"
 
-char read_key(void);
+int read_key(void);
 
 #endif /* READKEY_H */
 
diff --git a/lib/readkey.c b/lib/readkey.c
index 0464ce4..a42d1cb 100644
--- a/lib/readkey.c
+++ b/lib/readkey.c
@@ -52,7 +52,7 @@ static const struct esc_cmds esccmds[] = {
 	{"[6~", KEY_PAGEDOWN},// Cursor Key Page Down
 };
 
-char read_key(void)
+int read_key(void)
 {
 	char c;
 	char esc[5];
diff --git a/lib/readline.c b/lib/readline.c
index 750da3b..b82150e 100644
--- a/lib/readline.c
+++ b/lib/readline.c
@@ -17,8 +17,8 @@
 #define MAX_CMDBUF_SIZE		256
 
 #define CTL_BACKSPACE		('\b')
-#define DEL			((char)255)
-#define DEL7			((char)127)
+#define DEL			255
+#define DEL7			127
 #define CREAD_HIST_CHAR		('!')
 
 #define getcmd_putch(ch)	putchar(ch)
@@ -178,7 +178,7 @@ int readline(const char *prompt, char *buf, int len)
 	unsigned long eol_num = 0;
 	unsigned long rlen;
 	unsigned long wlen;
-	unsigned char ichar;
+	int ichar;
 	int insert = 1;
 	int rc = 0;
 #ifdef CONFIG_AUTO_COMPLETE
-- 
1.6.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
