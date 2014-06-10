Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WuFdO-0004QH-9m
 for barebox@lists.infradead.org; Tue, 10 Jun 2014 06:34:15 +0000
Date: Tue, 10 Jun 2014 08:33:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140610063346.GR15686@pengutronix.de>
References: <1402045936-18733-1-git-send-email-matteo.fortini@gmail.com>
 <assp.02348a4d47.1402045936-18733-2-git-send-email-matteo.fortini@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <assp.02348a4d47.1402045936-18733-2-git-send-email-matteo.fortini@gmail.com>
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
Subject: Re: [PATCH 1/2] sama5d3x: fix HSMC MODE register offset and add
 TIMINGS register
To: Matteo Fortini <matteo.fortini@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Jun 06, 2014 at 11:12:15AM +0200, Matteo Fortini wrote:
> As stated in section 29.19.35 of SAMA5D3 Series Datasheet,
> MODE register has offset 0x10 and at offset 0x0C there is
> a TIMINGS register.
> 
> Signed-off-by: Matteo Fortini <matteo.fortini@gmail.com>
> ---
>  arch/arm/mach-at91/include/mach/at91sam9_smc.h | 31 +++++++++++++++++++++++++-
>  arch/arm/mach-at91/sam9_smc.c                  | 19 ++++++++++++++++
>  2 files changed, 49 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-at91/include/mach/at91sam9_smc.h b/arch/arm/mach-at91/include/mach/at91sam9_smc.h
> index d5cf5f7..6412664 100644
> --- a/arch/arm/mach-at91/include/mach/at91sam9_smc.h
> +++ b/arch/arm/mach-at91/include/mach/at91sam9_smc.h
> @@ -43,6 +43,16 @@ struct sam9_smc_config {
>  	/* Mode register */
>  	u32 mode;
>  	u8 tdf_cycles:4;
> +
> +	/* Timings register */
> +	u8 tclr;
> +	u8 tadl;
> +	u8 tar;
> +	u8 ocms;
> +	u8 trr;
> +	u8 twb;
> +	u8 rbnsel;
> +	u8 nfsel;
>  };
>  
>  extern void sam9_smc_configure(int id, int cs, struct sam9_smc_config *config);
> @@ -77,7 +87,25 @@ extern void sam9_smc_write_mode(int id, int cs, struct sam9_smc_config *config);
>  #define		AT91_SMC_NRDCYCLE	(0x1ff << 16)			/* Total Read Cycle Length */
>  #define			AT91_SMC_NRDCYCLE_(x)	((x) << 16)
>  
> -#define AT91_SMC_MODE		0x0c				/* Mode Register for CS n */
> +#define AT91_SMC_TIMINGS	0x0c				/* Timings register for CS n */
> +#define		AT91_SMC_TCLR		(0x0f  <<  0)			/* CLE to REN Low Delay */
> +#define			AT91_SMC_TCLR_(x)	((x) << 0)
> +#define		AT91_SMC_TADL		(0x0f  <<  4)			/* ALE to Data Start */
> +#define			AT91_SMC_TADL_(x)	((x) << 4)
> +#define		AT91_SMC_TAR		(0x0f  <<  8)			/* ALE to REN Low Delay */
> +#define			AT91_SMC_TAR_(x)	((x) << 8)
> +#define		AT91_SMC_OCMS		(0x1   << 12)			/* Off Chip Memory Scrambling Enable */
> +#define			AT91_SMC_OCMS_(x)	((x) << 12)
> +#define		AT91_SMC_TRR		(0x0f  << 16)			/* Ready to REN Low Delay */
> +#define			AT91_SMC_TRR_(x)        ((x) << 16)
> +#define		AT91_SMC_TWB		(0x0f  << 24)			/* WEN High to REN to Busy */
> +#define			AT91_SMC_TWB_(x)	((x) << 24)
> +#define		AT91_SMC_RBNSEL		(0x07  << 28)			/* Ready/Busy Line Selection */
> +#define			AT91_SMC_RBNSEL_(x)	((x) << 28)
> +#define		AT91_SMC_NFSEL		(0x01  << 31)			/* Nand Flash Selection */
> +#define			AT91_SMC_NFSEL_(x)	((x) << 31)
> +
> +#define AT91_SMC_MODE		((at91_soc_initdata.type == AT91_SOC_SAMA5D3) ? 0x10 : 0x0c)				/* Mode Register for CS n */
>  #define		AT91_SMC_READMODE	(1 <<  0)			/* Read Mode */
>  #define		AT91_SMC_WRITEMODE	(1 <<  1)			/* Write Mode */
>  #define		AT91_SMC_EXNWMODE	(3 <<  4)			/* NWAIT Mode */
> @@ -101,4 +129,5 @@ extern void sam9_smc_write_mode(int id, int cs, struct sam9_smc_config *config);
>  #define			AT91_SMC_PS_16			(2 << 28)
>  #define			AT91_SMC_PS_32			(3 << 28)
>  
> +
>  #endif

This hunk shouldn't be here.

> diff --git a/arch/arm/mach-at91/sam9_smc.c b/arch/arm/mach-at91/sam9_smc.c
> index c7bfdfd..89f73ef 100644
> --- a/arch/arm/mach-at91/sam9_smc.c
> +++ b/arch/arm/mach-at91/sam9_smc.c
> @@ -30,6 +30,20 @@ static void sam9_smc_cs_write_mode(void __iomem *base,
>  		   base + AT91_SMC_MODE);
>  }
>  
> +static void sam9_smc_cs_write_timings(void __iomem *base,
> +					struct sam9_smc_config *config)
> +{
> +	__raw_writel(AT91_SMC_TCLR_(config->tclr)
> +                   | AT91_SMC_TADL_(config->tadl)
> +                   | AT91_SMC_TAR_(config->tar)
> +                   | AT91_SMC_OCMS_(config->ocms)
> +                   | AT91_SMC_TRR_(config->trr)
> +                   | AT91_SMC_TWB_(config->twb)
> +                   | AT91_SMC_RBNSEL_(config->rbnsel)
> +                   | AT91_SMC_NFSEL_(config->nfsel),
> +		   base + AT91_SMC_TIMINGS);
> +}
> +
>  void sam9_smc_write_mode(int id, int cs,
>  					struct sam9_smc_config *config)
>  {
> @@ -61,6 +75,11 @@ static void sam9_smc_cs_configure(void __iomem *base,
>  
>  	/* Mode register */
>  	sam9_smc_cs_write_mode(base, config);
> +
> +	/* Timings register */
> +	if (at91_soc_initdata.type == AT91_SOC_SAMA5D3) {
> +		sam9_smc_cs_write_timings(base, config);
> +	}

I would pretty much prefer a

sama5d3_smc_cs_configure(int id, int cs, struct sama5d3_smc_config *config)

function so that the older SoCs do not have the overhead which the new
SoC requires.

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
