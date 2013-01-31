Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo1.mail-out.ovh.net ([178.32.119.250]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U0sUI-0004gL-88
 for barebox@lists.infradead.org; Thu, 31 Jan 2013 11:39:27 +0000
Received: from mail610.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 91DB9FF99F7
 for <barebox@lists.infradead.org>; Thu, 31 Jan 2013 12:54:09 +0100 (CET)
Date: Thu, 31 Jan 2013 12:38:08 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130131113808.GY26329@game.jcrosoft.org>
References: <1359628977-20069-1-git-send-email-fabio.porcedda@gmail.com>
 <1359628977-20069-3-git-send-email-fabio.porcedda@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1359628977-20069-3-git-send-email-fabio.porcedda@gmail.com>
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
Subject: Re: [PATCH 2/3] at91sam9260/9g20ek: move sam9_smc_config
 modification inside definition
To: Fabio Porcedda <fabio.porcedda@gmail.com>
Cc: barebox@lists.infradead.org

On 11:42 Thu 31 Jan     , Fabio Porcedda wrote:
> This is a optimization.

Nack

I do not what to ifdef

this make the code not easy to check via the compiler

Best Regards,
J.
> 
> Signed-off-by: Fabio Porcedda <fabio.porcedda@gmail.com>
> Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/boards/at91sam9260ek/init.c | 28 +++++++++++++---------------
>  1 file changed, 13 insertions(+), 15 deletions(-)
> 
> diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
> index f0d8adf..5080f2a 100644
> --- a/arch/arm/boards/at91sam9260ek/init.c
> +++ b/arch/arm/boards/at91sam9260ek/init.c
> @@ -74,7 +74,11 @@ static struct sam9_smc_config ek_9260_nand_smc_config = {
>  	.write_cycle		= 5,
>  
>  	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE |
> -				  AT91_SMC_EXNWMODE_DISABLE,
> +#if defined(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16)
> +				  AT91_SMC_EXNWMODE_DISABLE | AT91_SMC_DBW_16,
> +#else
> +				  AT91_SMC_EXNWMODE_DISABLE | AT91_SMC_DBW_8,
> +#endif
>  	.tdf_cycles		= 2,
>  };
>  
> @@ -93,27 +97,21 @@ static struct sam9_smc_config ek_9g20_nand_smc_config = {
>  	.write_cycle		= 7,
>  
>  	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE |
> -				  AT91_SMC_EXNWMODE_DISABLE,
> +#if defined(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16)
> +				  AT91_SMC_EXNWMODE_DISABLE | AT91_SMC_DBW_16,
> +#else
> +				  AT91_SMC_EXNWMODE_DISABLE | AT91_SMC_DBW_8,
> +#endif
>  	.tdf_cycles		= 3,
>  };
>  
>  static void ek_add_device_nand(void)
>  {
> -	struct sam9_smc_config *smc;
> -
> +	/* configure chip-select 3 (NAND) */
>  	if (machine_is_at91sam9g20ek())
> -		smc = &ek_9g20_nand_smc_config;
> -	else
> -		smc = &ek_9260_nand_smc_config;
> -
> -	/* setup bus-width (8 or 16) */
> -	if (nand_pdata.bus_width_16)
> -		smc->mode |= AT91_SMC_DBW_16;
> +		sam9_smc_configure(0, 3, &ek_9g20_nand_smc_config);
>  	else
> -		smc->mode |= AT91_SMC_DBW_8;
> -
> -	/* configure chip-select 3 (NAND) */
> -	sam9_smc_configure(0, 3, smc);
> +		sam9_smc_configure(0, 3, &ek_9260_nand_smc_config);
>  
>  	at91_add_device_nand(&nand_pdata);
>  }
> -- 
> 1.8.1.1
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
