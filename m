Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NwaO2-0001v3-L2
	for barebox@lists.infradead.org; Tue, 30 Mar 2010 12:17:39 +0000
Date: Tue, 30 Mar 2010 14:17:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100330121736.GK2241@pengutronix.de>
References: <1269855383-22716-1-git-send-email-s.hauer@pengutronix.de>
	<1269855383-22716-9-git-send-email-s.hauer@pengutronix.de>
	<87iq8eav8i.fsf@macbook.be.48ers.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87iq8eav8i.fsf@macbook.be.48ers.dk>
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
Subject: Re: [PATCH 08/12] echo: add -e option support
To: Peter Korsgaard <jacmet@sunsite.dk>
Cc: barebox@lists.infradead.org

On Tue, Mar 30, 2010 at 01:45:33PM +0200, Peter Korsgaard wrote:
> >>>>> "Sascha" == Sascha Hauer <s.hauer@pengutronix.de> writes:
> 
>  Sascha> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>  Sascha> ---
>  Sascha>  commands/echo.c |   52 +++++++++++++++++++++++++++++++++++++++++++++++++++-
>  Sascha>  1 files changed, 51 insertions(+), 1 deletions(-)
> 
>  Sascha> diff --git a/commands/echo.c b/commands/echo.c
>  Sascha> index d5640a0..6f4f136 100644
>  Sascha> --- a/commands/echo.c
>  Sascha> +++ b/commands/echo.c
>  Sascha> @@ -26,12 +26,59 @@
>  Sascha>  #include <fcntl.h>
>  Sascha>  #include <errno.h>
>  
>  Sascha> +static int my_fputs(int fd, const char *s)
> 
> That's not a very descriptive name - What about something like
> advanced_fputs, escape_fputs or format_fputs?

Uh, I forgot to squash this commit with 10/12. This is what this patch
should look like:


From a9ff0c8e8b720f1902a1e89444072e9469847a2f Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 Mar 2010 15:35:39 +0100
Subject: [PATCH 09/23] echo: add -e option support

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig |    6 ++++++
 commands/echo.c  |   19 +++++++++++++++++--
 2 files changed, 23 insertions(+), 2 deletions(-)

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
index d5640a0..dfa14d6 100644
--- a/commands/echo.c
+++ b/commands/echo.c
@@ -25,6 +25,7 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <errno.h>
+#include <libbb.h>
 
 static int do_echo(struct command *cmdtp, int argc, char *argv[])
 {
@@ -32,7 +33,10 @@ static int do_echo(struct command *cmdtp, int argc, char *argv[])
 	int fd = stdout, opt, newline = 1;
 	char *file = NULL;
 	int oflags = O_WRONLY | O_CREAT;
-
+#ifdef CONFIG_CMD_ECHO_E
+	char str[CONFIG_CBSIZE];
+	int process_escape = 0;
+#endif
 	/* We can't use getopt() here because we want to
 	 * echo all things we don't understand.
 	 */
@@ -62,6 +66,11 @@ static int do_echo(struct command *cmdtp, int argc, char *argv[])
 				goto no_optarg_out;
 			optind++;
 			break;
+#ifdef CONFIG_CMD_ECHO_E
+		case 'e':
+			process_escape = 1;
+			break;
+#endif
 		default:
 			goto exit_parse;
 		}
@@ -80,7 +89,13 @@ exit_parse:
 	for (i = optind; i < argc; i++) {
 		if (i > optind)
 			fputc(fd, ' ');
-		fputs(fd, argv[i]);
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

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
