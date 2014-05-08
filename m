Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WiIsV-0002rC-9R
 for barebox@lists.infradead.org; Thu, 08 May 2014 07:36:28 +0000
Date: Thu, 8 May 2014 09:36:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140508073605.GK5858@pengutronix.de>
References: <1399493130-13670-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1399493130-13670-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH 1/2] ARM: tegra30: slow down CPU to 600 MHz
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Wed, May 07, 2014 at 10:05:29PM +0200, Lucas Stach wrote:
> It's not safe to ramp up the CPU clock speed to
> 1,4 GHz on all T30 SKUs, as this may result in failure
> to start the kernel properly. Start CPU at 600 MHz,
> which is safe even for the slowest SKUs.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>

Applied both, thanks

Sascha

> ---
>  arch/arm/mach-tegra/tegra_avp_init.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/mach-tegra/tegra_avp_init.c b/arch/arm/mach-tegra/tegra_avp_init.c
> index 1afea44..53e81d9 100644
> --- a/arch/arm/mach-tegra/tegra_avp_init.c
> +++ b/arch/arm/mach-tegra/tegra_avp_init.c
> @@ -87,10 +87,10 @@ static struct pll_config pllx_config_table[][4] = {
>  		{1000, 26, 0, 12},	/* OSC 26.0 MHz */
>  	}, /* TEGRA 20 */
>  	{
> -		{862, 8,  0, 8},
> -		{583, 8,  0, 4},
> -		{700, 6,  0, 8},
> -		{700, 13, 0, 8},
> +		{600,  13, 0, 8 },
> +		{500,  16, 0, 8 },
> +		{600,  12, 0, 8 },
> +		{600,  26, 0, 8 },
>  	}, /* TEGRA 30 */
>  };
>  
> -- 
> 1.9.0
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
