Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kBXaf-0006KO-Sr
 for barebox@lists.infradead.org; Fri, 28 Aug 2020 06:10:22 +0000
Date: Fri, 28 Aug 2020 08:10:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200828061018.GC4498@pengutronix.de>
References: <20200823223053.1710-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200823223053.1710-1-rhi@pengutronix.de>
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
Subject: Re: [PATCH] common: remove negative dependency on SANDBOX for
 IMD_TARGET
To: Roland Hieber <rhi@pengutronix.de>
Cc: Barebox Mailing List <barebox@lists.infradead.org>

On Mon, Aug 24, 2020 at 12:30:53AM +0200, Roland Hieber wrote:
> This dependency was added in commit b3d5c43cb8a2d492355a (2016-04-07,
> Antony Pavlov: "common: add dependency !SANDBOX on imd target tool"),
> but it seems to compile fine four years down the line.
> 
> Signed-off-by: Roland Hieber <rhi@pengutronix.de>
> ---
>  common/Kconfig | 1 -
>  1 file changed, 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/common/Kconfig b/common/Kconfig
> index 658437f01c5e..9e2417569bd5 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -699,7 +699,6 @@ config IMD
>  config IMD_TARGET
>  	bool "build bareboximd target tool"
>  	depends on IMD
> -	depends on !SANDBOX
>  
>  config KERNEL_INSTALL_TARGET
>  	bool
> -- 
> 2.28.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
