Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo3.mail-out.ovh.net ([87.98.178.36]
 helo=mo3.mail-out.ovh.net)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X2yG5-0001GS-53
 for barebox@lists.infradead.org; Fri, 04 Jul 2014 07:50:14 +0000
Received: from mail420.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id E557EFFA48F
 for <barebox@lists.infradead.org>; Fri,  4 Jul 2014 09:49:50 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.2\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <assp.02522ea1fe.1403609192-5862-2-git-send-email-matteo.fortini@gmail.com>
Date: Fri, 4 Jul 2014 15:49:12 +0800
Message-Id: <31C34534-4C78-47B6-8574-016BDE7661C4@jcrosoft.com>
References: <1403609192-5862-1-git-send-email-matteo.fortini@gmail.com>
 <assp.02522ea1fe.1403609192-5862-2-git-send-email-matteo.fortini@gmail.com>
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


On Jun 24, 2014, at 7:26 PM, Matteo Fortini <matteo.fortini@gmail.com> wrote:

> 
> As stated in section 29.19.35 of SAMA5D3 Series Datasheet,
> MODE register has offset 0x10 and at offset 0x0C there is
> a TIMINGS register.
> 
> Signed-off-by: Matteo Fortini <matteo.fortini@gmail.com>
> ---
> arch/arm/mach-at91/include/mach/at91sam9_smc.h | 35 +++++++++++++++++++++++++-
> arch/arm/mach-at91/sam9_smc.c                  | 21 ++++++++++++++++
> 2 files changed, 55 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-at91/include/mach/at91sam9_smc.h b/arch/arm/mach-at91/include/mach/at91sam9_smc.h
> index d5cf5f7..e4f0f54 100644
> --- a/arch/arm/mach-at91/include/mach/at91sam9_smc.h
> +++ b/arch/arm/mach-at91/include/mach/at91sam9_smc.h
> @@ -45,10 +45,24 @@ struct sam9_smc_config {
> 	u8 tdf_cycles:4;
> };
> 
> +struct sam9_smc_sama5d3_extra_config {
> +	/* Timings register */
> +	u8 tclr;
> +	u8 tadl;
> +	u8 tar;
> +	u8 ocms;
> +	u8 trr;
> +	u8 twb;
> +	u8 rbnsel;
> +	u8 nfsel;
> +};
> +
> extern void sam9_smc_configure(int id, int cs, struct sam9_smc_config *config);
> extern void sam9_smc_read(int id, int cs, struct sam9_smc_config *config);
> extern void sam9_smc_read_mode(int id, int cs, struct sam9_smc_config *config);
> extern void sam9_smc_write_mode(int id, int cs, struct sam9_smc_config *config);
> +
> +extern void sam9_smc_sama5d3_configure(int id, int cs, struct sam9_smc_config *config, struct sam9_smc_sama5d3_extra_config *sama5d3_extra_config);
> #endif
> 
> #define AT91_SMC_SETUP		0x00				/* Setup Register for CS n */
> @@ -77,7 +91,25 @@ extern void sam9_smc_write_mode(int id, int cs, struct sam9_smc_config *config);
> #define		AT91_SMC_NRDCYCLE	(0x1ff << 16)			/* Total Read Cycle Length */
> #define			AT91_SMC_NRDCYCLE_(x)	((x) << 16)
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
> #define		AT91_SMC_READMODE	(1 <<  0)			/* Read Mode */
> #define		AT91_SMC_WRITEMODE	(1 <<  1)			/* Write Mode */
> #define		AT91_SMC_EXNWMODE	(3 <<  4)			/* NWAIT Mode */
> @@ -101,4 +133,5 @@ extern void sam9_smc_write_mode(int id, int cs, struct sam9_smc_config *config);
> #define			AT91_SMC_PS_16			(2 << 28)
> #define			AT91_SMC_PS_32			(3 << 28)
> 
> +
> #endif
> diff --git a/arch/arm/mach-at91/sam9_smc.c b/arch/arm/mach-at91/sam9_smc.c
> index c7bfdfd..a068d89 100644
> --- a/arch/arm/mach-at91/sam9_smc.c
> +++ b/arch/arm/mach-at91/sam9_smc.c
> @@ -30,6 +30,20 @@ static void sam9_smc_cs_write_mode(void __iomem *base,
> 		   base + AT91_SMC_MODE);
> }
> 
> +static void sam9_smc_cs_write_timings(void __iomem *base,
> +					struct sam9_smc_sama5d3_extra_config *config)
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
> void sam9_smc_write_mode(int id, int cs,
> 					struct sam9_smc_config *config)
> {
> @@ -120,6 +134,13 @@ void sam9_smc_read(int id, int cs, struct sam9_smc_config *config)
> 	sam9_smc_cs_read(AT91_SMC_CS(id, cs), config);
> }
> 
> +void sam9_smc_sama5d3_configure(int id, int cs, struct sam9_smc_config *config, struct sam9_smc_sama5d3_extra_config *sama5d3_extra_config)
2 structures no

just extend the current one for sam9 we just ignore the additional config

Best Regards,
J.
> +{
> +        sam9_smc_configure(id, cs, config);
> +
> +        sam9_smc_cs_write_timings(AT91_SMC_CS(id, cs), sama5d3_extra_config);
> +}
> +
> static int at91sam9_smc_probe(struct device_d *dev)
> {
> 	int id = dev->id;
> -- 
> 2.0.0
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
