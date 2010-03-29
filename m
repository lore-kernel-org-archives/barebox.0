Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NwBP4-00088q-CH
	for barebox@lists.infradead.org; Mon, 29 Mar 2010 09:37:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 29 Mar 2010 11:36:21 +0200
Message-Id: <1269855383-22716-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1269855383-22716-1-git-send-email-s.hauer@pengutronix.de>
References: <1269855383-22716-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/12] echo command: Add -e option
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig |    6 +++++
 commands/echo.c  |   65 ++++++++++++-----------------------------------------
 2 files changed, 21 insertions(+), 50 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 543ee71..0c09f91 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -118,6 +118,12 @@ config CMD_ECHO
 	default y
 	prompt "echo"
 
+config CMD_ECHO_E
+	bool
+	depends on CMD_ECHO
+	select PROCESS_ESCAPE_SEQUENCE
+	prompt "support -e option to echo"
+
 endmenu
 
 menu "memory                        "
diff --git a/commands/echo.c b/commands/echo.c
index 6f4f136..dfa14d6 100644
--- a/commands/echo.c
+++ b/commands/echo.c
@@ -25,52 +25,7 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <errno.h>
-
-static int my_fputs(int fd, const char *s)
-{
-	int c;
-
-	while (*s) {
-		if (*s == '\\') {
-			switch (*(s + 1)) {
-			case 0:
-				return 0;
-			case '\\':
-				c = '\\';
-				break;
-			case 'a':
-				c = '\a';
-				break;
-			case 'b':
-				c = '\b';
-				break;
-			case 'n':
-				c = '\n';
-				break;
-			case 'r':
-				c = '\r';
-				break;
-			case 't':
-				c = '\t';
-				break;
-			case 'f':
-				c = '\f';
-				break;
-			case 'e':
-				c = 0x1b;
-				break;
-			default:
-				fputc(fd, '\\');
-				c = *(s + 1);
-			}
-			s++;
-			fputc(fd, c);
-		} else
-			fputc(fd, *s);
-		s++;
-	}
-	return 0;
-}
+#include <libbb.h>
 
 static int do_echo(struct command *cmdtp, int argc, char *argv[])
 {
@@ -78,8 +33,10 @@ static int do_echo(struct command *cmdtp, int argc, char *argv[])
 	int fd = stdout, opt, newline = 1;
 	char *file = NULL;
 	int oflags = O_WRONLY | O_CREAT;
-	int (*fputsfunc)(int, const char *) = fputs;
-
+#ifdef CONFIG_CMD_ECHO_E
+	char str[CONFIG_CBSIZE];
+	int process_escape = 0;
+#endif
 	/* We can't use getopt() here because we want to
 	 * echo all things we don't understand.
 	 */
@@ -109,9 +66,11 @@ static int do_echo(struct command *cmdtp, int argc, char *argv[])
 				goto no_optarg_out;
 			optind++;
 			break;
+#ifdef CONFIG_CMD_ECHO_E
 		case 'e':
-			fputsfunc = my_fputs;
+			process_escape = 1;
 			break;
+#endif
 		default:
 			goto exit_parse;
 		}
@@ -130,7 +89,13 @@ exit_parse:
 	for (i = optind; i < argc; i++) {
 		if (i > optind)
 			fputc(fd, ' ');
-		fputsfunc(fd, argv[i]);
+#ifdef CONFIG_CMD_ECHO_E
+		if (process_escape) {
+			process_escape_sequence(argv[i], str, CONFIG_CBSIZE);
+			fputs(fd, str);
+		} else
+#endif
+			fputs(fd, argv[i]);
 	}
 
 	if (newline)
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
