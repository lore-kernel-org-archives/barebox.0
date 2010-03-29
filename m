Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NwBP1-00088l-BI
	for barebox@lists.infradead.org; Mon, 29 Mar 2010 09:37:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 29 Mar 2010 11:36:19 +0200
Message-Id: <1269855383-22716-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/12] echo: add -e option support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/echo.c |   52 +++++++++++++++++++++++++++++++++++++++++++++++++++-
 1 files changed, 51 insertions(+), 1 deletions(-)

diff --git a/commands/echo.c b/commands/echo.c
index d5640a0..6f4f136 100644
--- a/commands/echo.c
+++ b/commands/echo.c
@@ -26,12 +26,59 @@
 #include <fcntl.h>
 #include <errno.h>
 
+static int my_fputs(int fd, const char *s)
+{
+	int c;
+
+	while (*s) {
+		if (*s == '\\') {
+			switch (*(s + 1)) {
+			case 0:
+				return 0;
+			case '\\':
+				c = '\\';
+				break;
+			case 'a':
+				c = '\a';
+				break;
+			case 'b':
+				c = '\b';
+				break;
+			case 'n':
+				c = '\n';
+				break;
+			case 'r':
+				c = '\r';
+				break;
+			case 't':
+				c = '\t';
+				break;
+			case 'f':
+				c = '\f';
+				break;
+			case 'e':
+				c = 0x1b;
+				break;
+			default:
+				fputc(fd, '\\');
+				c = *(s + 1);
+			}
+			s++;
+			fputc(fd, c);
+		} else
+			fputc(fd, *s);
+		s++;
+	}
+	return 0;
+}
+
 static int do_echo(struct command *cmdtp, int argc, char *argv[])
 {
 	int i, optind = 1;
 	int fd = stdout, opt, newline = 1;
 	char *file = NULL;
 	int oflags = O_WRONLY | O_CREAT;
+	int (*fputsfunc)(int, const char *) = fputs;
 
 	/* We can't use getopt() here because we want to
 	 * echo all things we don't understand.
@@ -62,6 +109,9 @@ static int do_echo(struct command *cmdtp, int argc, char *argv[])
 				goto no_optarg_out;
 			optind++;
 			break;
+		case 'e':
+			fputsfunc = my_fputs;
+			break;
 		default:
 			goto exit_parse;
 		}
@@ -80,7 +130,7 @@ exit_parse:
 	for (i = optind; i < argc; i++) {
 		if (i > optind)
 			fputc(fd, ' ');
-		fputs(fd, argv[i]);
+		fputsfunc(fd, argv[i]);
 	}
 
 	if (newline)
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
