Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d0jCT-0003Xk-Bh
 for barebox@lists.infradead.org; Wed, 19 Apr 2017 06:34:52 +0000
Date: Wed, 19 Apr 2017 08:34:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170419063424.rgfle3hnfg2n4tjx@pengutronix.de>
References: <20170412133539.32000-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170412133539.32000-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/3] common: bootchooser: add dependencies
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Apr 12, 2017 at 03:35:37PM +0200, Lucas Stach wrote:
> Bootchooser isn't worth much without the boot infrastructure, also
> it needs at least the simple shell variant to be enabled.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  common/Kconfig | 3 +++
>  1 file changed, 3 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/common/Kconfig b/common/Kconfig
> index 852b7a10ab47..b075e582adae 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -937,6 +937,9 @@ config STATE_CRYPTO
>  
>  config BOOTCHOOSER
>  	bool "bootchooser infrastructure"
> +	depends on !SHELL_NONE
> +	select BOOT
> +	select BOOTM
>  	select ENVIRONMENT_VARIABLES
>  	select OFTREE
>  	select PARAMETER
> -- 
> 2.11.0
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
