Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d3Ghj-0003gO-6e
 for barebox@lists.infradead.org; Wed, 26 Apr 2017 06:45:36 +0000
Date: Wed, 26 Apr 2017 08:45:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170426064513.5hlh4ijj2z72hhdt@pengutronix.de>
References: <20170425085526.4037-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170425085526.4037-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/4] common: BLSPEC needs boot infrastructure and at
 least simple command support
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Apr 25, 2017 at 10:55:23AM +0200, Lucas Stach wrote:
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  common/Kconfig | 3 +++
>  1 file changed, 3 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/common/Kconfig b/common/Kconfig
> index b075e582adae..8d026b41f9a1 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -645,6 +645,9 @@ config BOOTM_FORCE_SIGNED_IMAGES
>  config BLSPEC
>  	depends on BLOCK
>  	depends on FLEXIBLE_BOOTARGS
> +	depends on !SHELL_NONE
> +	select BOOT
> +	select BOOTM
>  	select OFTREE
>  	bool
>  	prompt "Support bootloader spec"
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
