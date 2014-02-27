Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WIxUO-00076U-Ow
 for barebox@lists.infradead.org; Thu, 27 Feb 2014 09:42:49 +0000
Date: Thu, 27 Feb 2014 10:42:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140227094227.GL17250@pengutronix.de>
References: <1393490986-3866-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1393490986-3866-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH] fixup! tegra: add Tegra3 to relevant lowlevel functions
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Thu, Feb 27, 2014 at 09:49:46AM +0100, Lucas Stach wrote:
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
> This got messed up while applying. You may want to
> squash this in while the original patch still sits
> in -next.

Just did that.

Sascha

> ---
>  arch/arm/mach-tegra/include/mach/lowlevel.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/mach-tegra/include/mach/lowlevel.h b/arch/arm/mach-tegra/include/mach/lowlevel.h
> index 11d930b..cc346a0 100644
> --- a/arch/arm/mach-tegra/include/mach/lowlevel.h
> +++ b/arch/arm/mach-tegra/include/mach/lowlevel.h
> @@ -78,6 +78,8 @@ enum tegra_chiptype tegra_get_chiptype(void)
>  	switch ((hidrev & HIDREV_CHIPID_MASK) >> HIDREV_CHIPID_SHIFT) {
>  	case 0x20:
>  		return TEGRA20;
> +	case 0x30:
> +		return TEGRA30;
>  	default:
>  		return TEGRA_UNK_REV;
>  	}
> @@ -89,8 +91,6 @@ int tegra_get_num_cores(void)
>  	switch (tegra_get_chiptype()) {
>  	case TEGRA20:
>  		return 2;
> -	case 0x30:
> -		return TEGRA30;
>  	case TEGRA30:
>  		return 4;
>  	default:
> -- 
> 1.8.5.3
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
