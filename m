Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1THbc5-0004hY-TC
 for barebox@lists.infradead.org; Fri, 28 Sep 2012 14:32:24 +0000
Date: Fri, 28 Sep 2012 16:32:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120928143220.GG1322@pengutronix.de>
References: <1348840701-1951-1-git-send-email-maxime.ripard@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348840701-1951-1-git-send-email-maxime.ripard@free-electrons.com>
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
Subject: Re: [PATCH] arm: cfa10036: Add the OCOTP device
To: Maxime Ripard <maxime.ripard@free-electrons.com>
Cc: barebox@lists.infradead.org, brian@crystalfontz.com

On Fri, Sep 28, 2012 at 03:58:21PM +0200, Maxime Ripard wrote:
> Signed-off-by: Maxime Ripard <maxime.ripard@free-electrons.com>
> ---
>  arch/arm/boards/crystalfontz-cfa10036/cfa10036.c |    4 ++++
>  1 file changed, 4 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
> index fcb7057..522d2d7 100644
> --- a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
> +++ b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
> @@ -23,6 +23,7 @@
>  #include <init.h>
>  #include <mci.h>
>  #include <io.h>
> +#include <net.h>
>  #include <sizes.h>
>  
>  #include <mach/clock.h>
> @@ -93,6 +94,9 @@ static int cfa10036_devices_init(void)
>  	add_generic_device("mxs_mci", 0, NULL, IMX_SSP0_BASE, SZ_8K,
>  			   IORESOURCE_MEM, &mci_pdata);
>  
> +	add_generic_device("ocotp", 0, NULL, IMX_OCOTP_BASE, SZ_8K,
> +			   IORESOURCE_MEM, NULL);
> +
>  	return 0;
>  }
>  device_initcall(cfa10036_devices_init);
> -- 
> 1.7.9.5
> 
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
