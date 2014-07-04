Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X2w93-0004a8-1f
 for barebox@lists.infradead.org; Fri, 04 Jul 2014 05:34:49 +0000
Date: Fri, 4 Jul 2014 07:34:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140704053426.GE26384@pengutronix.de>
References: <alpine.LFD.2.11.1407030915130.26580@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.11.1407030915130.26580@localhost>
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
Subject: Re: [PATCH] splash.c: Add that .png files are suitable as splash
 images.
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Thu, Jul 03, 2014 at 09:16:17AM -0400, Robert P. J. Day wrote:
> 
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

Applied, thanks

Sascha

> 
> ---
> 
> diff --git a/commands/splash.c b/commands/splash.c
> index 5d0c0ad..2ce1bdd 100644
> --- a/commands/splash.c
> +++ b/commands/splash.c
> @@ -78,8 +78,9 @@ static int do_splash(int argc, char *argv[])
>  }
> 
>  BAREBOX_CMD_HELP_START(splash)
> -BAREBOX_CMD_HELP_TEXT("This command displays a graphics in the bitmap (.bmp) format on the")
> -BAREBOX_CMD_HELP_TEXT("framebuffer. Currently images with 8 and 24 bit color depth are supported.")
> +BAREBOX_CMD_HELP_TEXT("This command displays a graphics image of either bitmap (.bmp) format")
> +BAREBOX_CMD_HELP_TEXT("or Portable Network Graphics (.png) format on the framebuffer.")
> +BAREBOX_CMD_HELP_TEXT("Currently images with 8 and 24 bit color depth are supported.")
>  BAREBOX_CMD_HELP_TEXT("")
>  BAREBOX_CMD_HELP_TEXT("Options:")
>  BAREBOX_CMD_HELP_OPT ("-f FB\t",    "framebuffer device (default /dev/fb0)")
> @@ -91,7 +92,7 @@ BAREBOX_CMD_HELP_END
> 
>  BAREBOX_CMD_START(splash)
>  	.cmd		= do_splash,
> -	BAREBOX_CMD_DESC("display a BMP image")
> +	BAREBOX_CMD_DESC("display a BMP or PNG splash image")
>  	BAREBOX_CMD_OPTS("[-fxyno] FILE")
>  	BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
>  	BAREBOX_CMD_HELP(cmd_splash_help)
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
