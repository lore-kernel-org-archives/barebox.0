Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Scgc0-0006XR-9m
 for barebox@lists.infradead.org; Thu, 07 Jun 2012 17:35:09 +0000
Date: Thu, 7 Jun 2012 19:35:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120607173506.GK30400@pengutronix.de>
References: <1339074051-9781-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1339074051-9781-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 1/3] I.MX clko: Using strtol function instead strtoul for
 getting argument for clko source
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Thu, Jun 07, 2012 at 05:00:49PM +0400, Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/mach-imx/clko.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
>

Can you please add an explanation why this change is done? I assume that
-1 can be used to disable clko, but the commit log should mention this.

Sascha

> diff --git a/arch/arm/mach-imx/clko.c b/arch/arm/mach-imx/clko.c
> index 0e4fbcc..8e568d2 100644
> --- a/arch/arm/mach-imx/clko.c
> +++ b/arch/arm/mach-imx/clko.c
> @@ -14,7 +14,7 @@ static int do_clko(int argc, char *argv[])
>  			div = simple_strtoul(optarg, NULL, 0);
>  			break;
>  		case 's':
> -			src = simple_strtoul(optarg, NULL, 0);
> +			src = simple_strtol(optarg, NULL, 0);
>  			break;
>  		}
>  	}
> -- 
> 1.7.3.4
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
