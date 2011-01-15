Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pe80s-0007aE-IH
	for barebox@lists.infradead.org; Sat, 15 Jan 2011 15:25:59 +0000
Date: Sat, 15 Jan 2011 16:25:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110115152555.GE9041@pengutronix.de>
References: <1295058354-14732-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1295058354-14732-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH] at91sam9m10g45ek: add board revision support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, Patrice Vilchez <patrice.vilchez@atmel.com>, Nicolas Ferre <nicolas.ferre@atmel.com>

On Sat, Jan 15, 2011 at 03:25:54AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> we use the board revision to specify to the linux kernel the type of lcd
> we use. So we can have only one machine for those 3 boards:
>  - sam9m10-ekes (LG)
>  - sam9g45-ekes (LG)
>  - sam9m10g45-ek (Truly)
> 
> today we support 2 lcds model:
>  - LG philips LB043WQ1
>  - Truly TFT1N4633-E
> 
> by default we select the Truly as the sam9m10g45-ek is the most common board
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> Cc: Nicolas Ferre <nicolas.ferre@atmel.com>
> Cc: Patrice Vilchez <patrice.vilchez@atmel.com>
> ---
>  arch/arm/boards/at91sam9m10g45ek/init.c |   21 +++++++++++++++++++++
>  arch/arm/mach-at91/Kconfig              |   15 ++++++++++++++-
>  2 files changed, 35 insertions(+), 1 deletions(-)
> 
> diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
> index bb8b7ba..77d51b7 100644
> --- a/arch/arm/boards/at91sam9m10g45ek/init.c
> +++ b/arch/arm/boards/at91sam9m10g45ek/init.c
> @@ -40,6 +40,26 @@
>  #include <mach/at91sam9_smc.h>
>  #include <mach/sam9_smc.h>
>  
> +/*
> + * board revision encoding
> + * bit 0-3: lcd type
> + *	0 => truly TFT1N4633-E (sam9m10g45-ek)
> + *	1 => LG philips LB043WQ1 (sam9m10-ekes and sam9g45-ekes)
> + */
> +#define HAVE_LCD_TRULY_TFT1N4633E	(0 << 0)
> +#define HAVE_LCD_LG_LB043WQ1		(1 << 0)
> +static void ek_set_board_revision(void)
> +{
> +	u32 rev;
> +
> +#ifdef CONFIG_LCD_LG_LB043WQ1
> +		rev = HAVE_LCD_LG_LB043WQ1;
> +#else
> +		rev = HAVE_LCD_TRULY_TFT1N4633E;
> +#endif
> +		armlinux_set_revision(rev);
> +}
> +
>  static struct atmel_nand_data nand_pdata = {
>  	.ale		= 21,
>  	.cle		= 22,
> @@ -103,6 +123,7 @@ static int at91sam9m10g45ek_devices_init(void)
>  
>  	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_6 + 0x100));
>  	armlinux_set_architecture(MACH_TYPE_AT91SAM9M10G45EK);
> +	ek_set_board_revision();
>  
>  	return 0;
>  }
> diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
> index e5bd45e..4d35ebe 100644
> --- a/arch/arm/mach-at91/Kconfig
> +++ b/arch/arm/mach-at91/Kconfig
> @@ -174,7 +174,8 @@ config MACH_AT91SAM9M10G45EK
>  	bool "Atmel AT91SAM9M10G45-EK Evaluation Kit"
>  	select HAVE_NAND_ATMEL_BUSWIDTH_16
>  	help
> -	  Select this if you are using Atmel's AT91SAM9M10G45-EK Evaluation Kit.
> +	  Select this if you are using Atmel's AT91SAM9M10G45-EK Evaluation Kit
> +	  or AT91SAM9G45-EKES or AT91SAM9M10-EKES (for those 2 select the LG LCD)
>  	  <http://atmel.com/dyn/products/tools_card_v2.asp?tool_id=4735>

Isn't it better to let the user choose the exact board type here and
select the display type automatically depending on the choice?

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
