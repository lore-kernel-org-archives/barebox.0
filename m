Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwNuF-0007ml-Oe
 for barebox@lists.infradead.org; Wed, 20 Feb 2019 09:11:14 +0000
Date: Wed, 20 Feb 2019 10:11:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190220091105.ys6b5znoqvyh2exy@pengutronix.de>
References: <20190219172150.11901-1-a.fatoum@pengutronix.de>
 <20190219172150.11901-7-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190219172150.11901-7-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v2 06/16] ARM: at91: import lowlevel clock initialization
 from at91bootstrap
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Feb 19, 2019 at 06:21:40PM +0100, Ahmad Fatoum wrote:
> For use by future at91 first stage bootloaders, this commit imports
> https://github.com/linux4sam/at91bootstrap/blob/v3.8.12/driver/pmc.c
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/mach-at91/Makefile                   |   1 +
>  .../include/mach/at91_lowlevel_clock.h        |  43 +++++
>  arch/arm/mach-at91/include/mach/at91_pmc.h    |  16 +-
>  arch/arm/mach-at91/lowlevel_clock.c           | 174 ++++++++++++++++++
>  4 files changed, 233 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/mach-at91/include/mach/at91_lowlevel_clock.h
>  create mode 100644 arch/arm/mach-at91/lowlevel_clock.c
> 
> +void at91_lowlevel_clock_init(void __iomem *pmc_base)
> +{
> +	u32 tmp;
> +
> +	/*
> +	 * Switch the master clock to the slow clock without modifying other
> +	 * parameters. It is assumed that ROM code set H32MXDIV, PLLADIV2,
> +	 * PCK_DIV3.
> +	 */
> +	tmp = at91_pmc_read(AT91_PMC_MCKR);
> +	tmp &= ~AT91_PMC_ALT_PCKR_CSS;
> +	tmp |= AT91_PMC_CSS_SLOW;
> +	at91_pmc_write(AT91_PMC_MCKR, tmp);
> +
> +	while (!(at91_pmc_read(AT91_PMC_SR) & AT91_PMC_MCKRDY))
> +		;
> +
> +	if (IS_ENABLED(CONFIG_SOC_AT91SAM9X5) || IS_ENABLED(CONFIG_SOC_AT91SAM9N12)
> +	   || IS_ENABLED(CONFIG_SOC_SAMA5)) {

This doesn't work as expected. Consider a case where multiple SoCs are
selected then you can't decide at build time which code path to choose.

The trick is to move away from at91_lowlevel_clock_init() and create
multiple SoC specific functions in which you do the right stuff for each
SoC. The caller always knows the SoC type we are running on and thus
which function to call.

> +void at91_pmc_cfg_mck(void __iomem *pmc_base, u32 pmc_mckr)
> +{
> +	u32 tmp;
> +
> +	/*
> +	 * Program the PRES field in the AT91_PMC_MCKR register
> +	 */
> +	tmp = at91_pmc_read(AT91_PMC_MCKR);
> +	tmp &= ~(0x1 << 13);
> +	if (IS_ENABLED(CONFIG_SOC_AT91SAM9X5)
> +	    || IS_ENABLED(CONFIG_SOC_AT91SAM9N12)
> +	    || IS_ENABLED(CONFIG_SOC_SAMA5)) {
> +		tmp &= ~AT91_PMC_ALT_PRES;
> +		tmp |= pmc_mckr & AT91_PMC_ALT_PRES;
> +	} else {
> +		tmp &= ~AT91_PMC_PRES;
> +		tmp |= pmc_mckr & AT91_PMC_PRES;
> +	}

Same here.

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
