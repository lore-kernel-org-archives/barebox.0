Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by casper.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NMfrP-0001EA-UW
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 10:51:33 +0000
Date: Mon, 21 Dec 2009 11:50:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20091221105034.GA15126@pengutronix.de>
References: <alpine.LFD.2.00.0912210502480.11932@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.00.0912210502480.11932@localhost>
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
Subject: Re: [PATCH] commands: correct "CONFIG_SIMPLE_PARSER" to
	"CONFIG_SHELL_SIMPLE".
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Mon, Dec 21, 2009 at 05:05:51AM -0500, Robert P. J. Day wrote:
> 
> Based on suggestion from S. Hauer, fix the obvious typo in
> commands/Makefile.
> 
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

Ok, applied.

Sascha

> 
> ---
> 
>   just as an aside, as i mentioned earlier, i'll make a bunch of these
> corrections as logically independent patches, rather than mixing them
> all together.
> 
> 
> diff --git a/commands/Makefile b/commands/Makefile
> index a08837e..134d8b3 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -32,7 +32,7 @@ obj-$(CONFIG_CMD_FLASH)		+= flash.o
>  obj-$(CONFIG_CMD_MEMINFO)	+= meminfo.o
>  obj-$(CONFIG_CMD_TIMEOUT)	+= timeout.o
>  obj-$(CONFIG_CMD_READLINE)	+= readline.o
> -obj-$(CONFIG_SIMPLE_PARSER)	+= setenv.o
> +obj-$(CONFIG_SHELL_SIMPLE)	+= setenv.o
>  obj-$(CONFIG_CMD_EXPORT)	+= export.o
>  obj-$(CONFIG_CMD_PRINTENV)	+= printenv.o
>  obj-$(CONFIG_CMD_SAVEENV)	+= saveenv.o
> 
> rday
> --
> 
> ========================================================================
> Robert P. J. Day                               Waterloo, Ontario, CANADA
> 
>             Linux Consulting, Training and Kernel Pedantry.
> 
> Web page:                                          http://crashcourse.ca
> Twitter:                                       http://twitter.com/rpjday
> ========================================================================
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
