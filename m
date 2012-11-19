Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TaNR3-0005l7-Jv
 for barebox@lists.infradead.org; Mon, 19 Nov 2012 09:14:34 +0000
Date: Mon, 19 Nov 2012 10:14:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121119091431.GD10369@pengutronix.de>
References: <alpine.DEB.2.02.1211180828470.17933@oneiric>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1211180828470.17933@oneiric>
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
Subject: Re: [PATCH] mach-imx: Comment typo fix, "enviroment" -> "environment"
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Sun, Nov 18, 2012 at 08:30:44AM -0500, Robert P. J. Day wrote:
> 
> A couple trivial spelling fixes.
> 
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

Applied, thanks

Sascha

> 
> ---
> 
>   i thought i'd sent this in already but don't see it in outbox so
> just playing it safe.
> 
> diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
> index cdddbe5..ae7c48b 100644
> --- a/arch/arm/mach-imx/boot.c
> +++ b/arch/arm/mach-imx/boot.c
> @@ -77,7 +77,7 @@ static const enum imx_bootsource locations[4][4] = {
>  };
> 
>  /*
> - * Saves the boot source media into the $barebox_loc enviroment variable
> + * Saves the boot source media into the $barebox_loc environment variable
>   *
>   * This information is useful for barebox init scripts as we can then easily
>   * use a kernel image stored on the same media that we launch barebox with
> diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
> index f5a867b..4b0786b 100644
> --- a/arch/arm/mach-imx/imx51.c
> +++ b/arch/arm/mach-imx/imx51.c
> @@ -75,7 +75,7 @@ static int imx51_init(void)
>  postcore_initcall(imx51_init);
> 
>  /*
> - * Saves the boot source media into the $barebox_loc enviroment variable
> + * Saves the boot source media into the $barebox_loc environment variable
>   *
>   * This information is useful for barebox init scripts as we can then easily
>   * use a kernel image stored on the same media that we launch barebox with
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
