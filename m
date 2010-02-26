Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NkuYK-0005SB-KW
	for barebox@lists.infradead.org; Fri, 26 Feb 2010 07:24:06 +0000
Date: Fri, 26 Feb 2010 08:23:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100226072352.GG25271@pengutronix.de>
References: <20100224190807.GW20201@darwin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100224190807.GW20201@darwin>
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
Subject: Re: [PATCH] edb93xx: Fix SDRAM precharge
To: Matthias Kaehlcke <matthias@kaehlcke.net>
Cc: barebox@lists.infradead.org

On Wed, Feb 24, 2010 at 08:08:07PM +0100, Matthias Kaehlcke wrote:
> edb93xx SDRAM initialization: Issue a precharge all command before forcing the
> precharge of all SDRAM banks. Write to the SDRAM in order to force a precharge,
> reading causes the edb93xx boards to hang

Ok, applied.

Sascha

> 
> Signed-off-by: Matthias Kaehlcke <matthias@kaehlcke.net>
> ---
>  board/edb93xx/sdram_cfg.c |   21 +++++++++++++++------
>  1 files changed, 15 insertions(+), 6 deletions(-)
> 
> diff --git a/board/edb93xx/sdram_cfg.c b/board/edb93xx/sdram_cfg.c
> index 25b214b..3d4fe08 100644
> --- a/board/edb93xx/sdram_cfg.c
> +++ b/board/edb93xx/sdram_cfg.c
> @@ -31,9 +31,9 @@
>  		(SDRAM_BASE_ADDR | SDRAM_BANK_SEL_##bank | SDRAM_MODE_REG_VAL))
>  
>  #define PRECHARGE_BANK(bank)		(*(volatile uint32_t *)	\
> -				(SDRAM_BASE_ADDR | SDRAM_BANK_SEL_##bank))
> +		(SDRAM_BASE_ADDR | SDRAM_BANK_SEL_##bank)) = 0
>  
> -static void force_precharge(void);
> +static void precharge_all_banks(void);
>  static void setup_refresh_timer(void);
>  static void program_mode_registers(void);
>  
> @@ -48,7 +48,7 @@ void sdram_cfg(void)
>  
>  	early_udelay(200);
>  
> -	force_precharge();
> +	precharge_all_banks();
>  
>  	setup_refresh_timer();
>  
> @@ -58,13 +58,22 @@ void sdram_cfg(void)
>  	writel(GLCONFIG_CKE, &sdram->glconfig);
>  }
>  
> -static void force_precharge(void)
> +static void precharge_all_banks(void)
>  {
> +	struct sdram_regs *sdram = (struct sdram_regs *)SDRAM_BASE;
> +
> +	/* Issue PRECHARGE ALL commands */
> +	writel(GLCONFIG_INIT | GLCONFIG_CKE, &sdram->glconfig);
> +
>  	/*
> -	 * Errata most EP93xx revisions say that PRECHARGE ALL isn't always
> +	 * Errata of most EP93xx revisions say that PRECHARGE ALL isn't always
>  	 * issued.
>  	 *
> -	 * Do a read from each bank to make sure they're precharged
> +	 *  Cirrus proposes a workaround which consists in performing a read from
> +	 * each bank to force the precharge. This causes some boards to hang.
> +	 * Writing to the SDRAM banks instead of reading has the same
> +	 * side-effect (the SDRAM controller issues the necessary precharges),
> +	 * but is known to work on all supported boards
>  	 */
>  
>  	PRECHARGE_BANK(0);
> -- 
> 1.6.5
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
