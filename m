Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TaNRE-0005mY-Ct
 for barebox@lists.infradead.org; Mon, 19 Nov 2012 09:14:44 +0000
Date: Mon, 19 Nov 2012 10:14:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121119091443.GE10369@pengutronix.de>
References: <alpine.DEB.2.02.1211180836390.17973@oneiric>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1211180836390.17973@oneiric>
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
Subject: Re: [PATCH] arm lib: Remove redundant boot usage info from boot[uz].c
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Sun, Nov 18, 2012 at 08:39:51AM -0500, Robert P. J. Day wrote:
> 
> There is no need to add the command name to the "usage" info when
> defining a command.
> 
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

Applied, thanks

Sascha

> 
> ---
> 
>   fairly sure the command name is superfluous in the usage string,
> yes?
> 
> diff --git a/arch/arm/lib/bootu.c b/arch/arm/lib/bootu.c
> index 0d155cb..75e0de3 100644
> --- a/arch/arm/lib/bootu.c
> +++ b/arch/arm/lib/bootu.c
> @@ -36,7 +36,7 @@ static const __maybe_unused char cmd_bootu_help[] =
> 
>  BAREBOX_CMD_START(bootu)
>  	.cmd            = do_bootu,
> -	.usage          = "bootu - start a raw linux image",
> +	.usage          = "start a raw linux image",
>  	BAREBOX_CMD_HELP(cmd_bootu_help)
>  BAREBOX_CMD_END
> 
> diff --git a/arch/arm/lib/bootz.c b/arch/arm/lib/bootz.c
> index f069127..9f5b3b4 100644
> --- a/arch/arm/lib/bootz.c
> +++ b/arch/arm/lib/bootz.c
> @@ -133,7 +133,7 @@ static const __maybe_unused char cmd_bootz_help[] =
> 
>  BAREBOX_CMD_START(bootz)
>  	.cmd            = do_bootz,
> -	.usage          = "bootz - start a zImage",
> +	.usage          = "start a zImage",
>  	BAREBOX_CMD_HELP(cmd_bootz_help)
>  BAREBOX_CMD_END
> 
> 
> -- 
> 
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
> 
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
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
