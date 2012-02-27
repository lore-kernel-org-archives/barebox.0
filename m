Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S25nB-0004c3-1E
 for barebox@lists.infradead.org; Mon, 27 Feb 2012 18:59:26 +0000
Date: Mon, 27 Feb 2012 19:59:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120227185920.GH3852@pengutronix.de>
References: <20120222073359.GL3852@pengutronix.de>
 <1330330813-21605-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1330330813-21605-1-git-send-email-eric@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 1/7] add i2c clock support
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org


Applied this series.

Thanks

Sascha

On Mon, Feb 27, 2012 at 09:20:07AM +0100, Eric B=E9nard wrote:
> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  arch/arm/mach-imx/speed-imx53.c |   26 ++++++++++++++++++++++++++
>  1 files changed, 26 insertions(+), 0 deletions(-)
> =

> diff --git a/arch/arm/mach-imx/speed-imx53.c b/arch/arm/mach-imx/speed-im=
x53.c
> index 0d6ac24..a2385fa 100644
> --- a/arch/arm/mach-imx/speed-imx53.c
> +++ b/arch/arm/mach-imx/speed-imx53.c
> @@ -169,6 +169,31 @@ unsigned long imx_get_fecclk(void)
>  	return imx_get_ipgclk();
>  }
>  =

> +static unsigned long imx_get_ipg_perclk(void)
> +{
> +	u32 reg;
> +
> +	reg =3D ccm_readl(MX5_CCM_CBCDR);
> +	if (!(reg & MX5_CCM_CBCDR_PERIPH_CLK_SEL))
> +		return pll2_sw_get_rate();
> +	reg =3D ccm_readl(MX5_CCM_CBCMR);
> +	switch ((reg & MX5_CCM_CBCMR_PERIPH_CLK_SEL_MASK) >>
> +		MX5_CCM_CBCMR_PERIPH_CLK_SEL_OFFSET) {
> +	case 0:
> +		return pll1_main_get_rate();
> +	case 1:
> +		return pll3_sw_get_rate();
> +	/* case 2:
> +		TODO : LP_APM */
> +	}
> +	return 0;
> +}
> +
> +unsigned long imx_get_i2cclk(void)
> +{
> +	return imx_get_ipg_perclk();
> +}
> +
>  unsigned long imx_get_mmcclk(void)
>  {
>  	u32 reg, prediv, podf, rate;
> @@ -201,4 +226,5 @@ void imx_dump_clocks(void)
>  	printf("ipg:  %ld\n", imx_get_ipgclk());
>  	printf("fec:  %ld\n", imx_get_fecclk());
>  	printf("gpt:  %ld\n", imx_get_gptclk());
> +	printf("i2c:  %ld\n", imx_get_i2cclk());
>  }
> -- =

> 1.7.7.6
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
