Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TGlmY-0003mN-EF
 for barebox@lists.infradead.org; Wed, 26 Sep 2012 07:11:43 +0000
Date: Wed, 26 Sep 2012 09:11:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120926071139.GH1322@pengutronix.de>
References: <1348613994-1793-1-git-send-email-vicencb@gmail.com>
 <1348613994-1793-2-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348613994-1793-2-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH 1/7] Improved an error message and solved a minor bug
To: vj <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 26, 2012 at 12:59:48AM +0200, vj wrote:
> ---
>  arch/arm/lib/armlinux.c  | 2 +-
>  drivers/mci/omap_hsmmc.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
> index 191274e..74d59a9 100644
> --- a/arch/arm/lib/armlinux.c
> +++ b/arch/arm/lib/armlinux.c
> @@ -80,7 +80,7 @@ void armlinux_set_revision(unsigned int rev)
>  #ifdef CONFIG_ENVIRONMENT_VARIABLES
>  	export_env_ull("armlinux_system_rev", rev);
>  #else
> -	return armlinux_system_rev;
> +	armlinux_system_rev = rev;
>  #endif
>  }
>  
> diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
> index e0b245b..e6f4e47 100644
> --- a/drivers/mci/omap_hsmmc.c
> +++ b/drivers/mci/omap_hsmmc.c
> @@ -238,7 +238,7 @@ static int mmc_init_setup(struct mci_host *mci, struct device_d *dev)
>  	start = get_time_ns();
>  	while ((readl(&mmc_base->sysstatus) & RESETDONE) == 0) {
>  		if (is_timeout(start, SECOND)) {
> -			dev_dbg(hsmmc->dev, "timedout waiting for cc2!\n");
> +			dev_dbg(hsmmc->dev, "timeout waiting for reset done\n");
>  			return -ETIMEDOUT;
>  		}
>  	}

This looks good, but it should be two patches. Please always give the
subject the context of the patches, that would be "ARM: ..." for the
first one and "mmc omap: ..."

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
