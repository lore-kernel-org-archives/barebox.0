Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cnL1U-0005hE-Fc
 for barebox@lists.infradead.org; Mon, 13 Mar 2017 08:08:10 +0000
Date: Mon, 13 Mar 2017 09:07:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170313080746.352fidr5iq2zx2v3@pengutronix.de>
References: <20170309175832.20213-2-o.rempel@pengutronix.de>
 <20170310060523.25810-1-o.rempel@pengutronix.de>
 <20170310060523.25810-3-o.rempel@pengutronix.de>
 <9591E4EA-C0D3-4893-9770-3E13804EA055@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9591E4EA-C0D3-4893-9770-3E13804EA055@jcrosoft.com>
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
Subject: Re: [PATCH v3 2/3] console_countdown: add possibility to abort
 countdown by external commands
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org

On Fri, Mar 10, 2017 at 05:14:37PM +0800, Jean-Christophe PLAGNIOL-VILLARD wrote:
> 
> > On Mar 10, 2017, at 2:05 PM, Oleksij Rempel <o.rempel@pengutronix.de> wrote:
> > 
> > From: Marc Kleine-Budde <mkl@pengutronix.de>
> > 
> > This patch makes it possible to abort a console countdown by an external
> > command, for example when fastboot is used. This requires additional
> > modifications in the external commands, a call to "console_countdown_abort()"
> > has to be inserted.
> > 
> > Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> > Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> > ---
> > commands/timeout.c          |  8 ++++++--
> > common/console_countdown.c  | 15 +++++++++++++++
> > include/console_countdown.h |  2 ++
> > 3 files changed, 23 insertions(+), 2 deletions(-)
> > 
> > diff --git a/commands/timeout.c b/commands/timeout.c
> > index ef1a037c1..d197cedd8 100644
> > --- a/commands/timeout.c
> > +++ b/commands/timeout.c
> > @@ -32,7 +32,7 @@ static int do_timeout(int argc, char *argv[])
> > 	char str[2] = { };
> > 	const char *varname = NULL;
> > 
> > -	while((opt = getopt(argc, argv, "crsav:")) > 0) {
> > +	while ((opt = getopt(argc, argv, "crsav:e")) > 0) {
> > 		switch(opt) {
> > 		case 'r':
> > 			flags |= CONSOLE_COUNTDOWN_RETURN;
> > @@ -46,6 +46,9 @@ static int do_timeout(int argc, char *argv[])
> > 		case 's':
> > 			flags |= CONSOLE_COUNTDOWN_SILENT;
> > 			break;
> > +		case 'e':
> > +			flags |= CONSOLE_COUNTDOWN_EXTERN;
> > +			break;
> > 		case 'v':
> > 			varname = optarg;
> > 			break;
> > @@ -73,6 +76,7 @@ BAREBOX_CMD_HELP_TEXT("Options:")
> > BAREBOX_CMD_HELP_OPT("-a", "interrupt on any key")
> > BAREBOX_CMD_HELP_OPT("-c", "interrupt on Ctrl-C")
> > BAREBOX_CMD_HELP_OPT("-r", "interrupt on RETURN")
> > +BAREBOX_CMD_HELP_OPT("-e", "interrupt on external commands (i.e. fastboot")
> > BAREBOX_CMD_HELP_OPT("-s", "silent mode")
> > BAREBOX_CMD_HELP_OPT("-v <VARIABLE>", "export pressed key to environment")
> > BAREBOX_CMD_HELP_END
> > @@ -80,7 +84,7 @@ BAREBOX_CMD_HELP_END
> > BAREBOX_CMD_START(timeout)
> > 	.cmd		= do_timeout,
> > 	BAREBOX_CMD_DESC("wait for a specified timeout")
> > -	BAREBOX_CMD_OPTS("[-acrsv] SECONDS")
> > +	BAREBOX_CMD_OPTS("[-acrsev] SECONDS")
> > 	BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
> > 	BAREBOX_CMD_HELP(cmd_timeout_help)
> > BAREBOX_CMD_END
> > diff --git a/common/console_countdown.c b/common/console_countdown.c
> > index b2eec72b2..03b9b3353 100644
> > --- a/common/console_countdown.c
> > +++ b/common/console_countdown.c
> > @@ -23,6 +23,13 @@
> > #include <console_countdown.h>
> > #include <stdio.h>
> > 
> > +static bool console_countdown_timeout_abort;
> > +
> > +void console_countdown_abort(void)
> > +{
> > +	console_countdown_timeout_abort = true;
> Nack 
> 
> this break the security support
> 
> If we enable password  you can not activate it by default

This patch only changes anything when the -e option is given to the
timeout command, which is not the case in the current startup scripts.

Also this patch only aborts the autoboot timeout, something you can
always do with a key press, even when password/login is enabled. The
login comes after the timeout and is unaffected by this code.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
