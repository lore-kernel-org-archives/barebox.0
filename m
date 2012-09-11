Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo5.mail-out.ovh.net ([46.105.56.132]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TBNbt-0003VJ-57
 for barebox@lists.infradead.org; Tue, 11 Sep 2012 10:22:28 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 62743FFA319
 for <barebox@lists.infradead.org>; Tue, 11 Sep 2012 12:27:56 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 11 Sep 2012 12:19:25 +0200
Message-Id: <1347358767-1180-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1347358767-1180-1-git-send-email-plagnioj@jcrosoft.com>
References: <1347358767-1180-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/7] echo: always allow to pass -e option
To: barebox@lists.infradead.org

This will allow to do not taint if not enabled

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/echo.c |   12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/commands/echo.c b/commands/echo.c
index a19d992..4a5c981 100644
--- a/commands/echo.c
+++ b/commands/echo.c
@@ -33,10 +33,9 @@ static int do_echo(int argc, char *argv[])
 	int fd = stdout, opt, newline = 1;
 	char *file = NULL;
 	int oflags = O_WRONLY | O_CREAT;
-#ifdef CONFIG_CMD_ECHO_E
 	char str[CONFIG_CBSIZE];
 	int process_escape = 0;
-#endif
+
 	/* We can't use getopt() here because we want to
 	 * echo all things we don't understand.
 	 */
@@ -66,11 +65,9 @@ static int do_echo(int argc, char *argv[])
 				goto no_optarg_out;
 			optind++;
 			break;
-#ifdef CONFIG_CMD_ECHO_E
 		case 'e':
-			process_escape = 1;
+			process_escape = IS_ENABLED(CONFIG_CMD_ECHO_E);
 			break;
-#endif
 		default:
 			goto exit_parse;
 		}
@@ -89,13 +86,12 @@ exit_parse:
 	for (i = optind; i < argc; i++) {
 		if (i > optind)
 			fputc(fd, ' ');
-#ifdef CONFIG_CMD_ECHO_E
 		if (process_escape) {
 			process_escape_sequence(argv[i], str, CONFIG_CBSIZE);
 			fputs(fd, str);
-		} else
-#endif
+		} else {
 			fputs(fd, argv[i]);
+		}
 	}
 
 	if (newline)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
