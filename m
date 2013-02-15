Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U6P33-00083F-Mz
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 17:26:12 +0000
Date: Fri, 15 Feb 2013 18:26:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130215172608.GV1906@pengutronix.de>
References: <1360927492-7047-1-git-send-email-fabio.porcedda@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360927492-7047-1-git-send-email-fabio.porcedda@gmail.com>
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
Subject: Re: [PATCH v3] at91sam9260/9g20ek: use IS_ENABLED instead of
 #if/#ifdef
To: Fabio Porcedda <fabio.porcedda@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Feb 15, 2013 at 12:24:52PM +0100, Fabio Porcedda wrote:
> Using IS_ENABLED instead of #if/#ifdef the compiler can check
> all the code.
> Using IS_ENABLED for configuring smc->mode is an optimization,
> reduce init.o text from 905 to 877.
> 
> Signed-off-by: Fabio Porcedda <fabio.porcedda@gmail.com>
> Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
> v3:
>  - fix second patch using IS_ENABLED to discard the struct.
>  - squash them because both use IS_ENABLED in the same way.
> v2:
>  - fixed the first patch by removing the #ifdef inside nand_pdata definition.
> 
>  arch/arm/boards/at91sam9260ek/init.c | 31 +++++++++++++------------------
>  1 file changed, 13 insertions(+), 18 deletions(-)
> 
> diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
> index 06a53f2..77ca6bb 100644
> --- a/arch/arm/boards/at91sam9260ek/init.c
> +++ b/arch/arm/boards/at91sam9260ek/init.c
> @@ -37,9 +37,8 @@ static void ek_set_board_type(void)
>  {
>  	if (machine_is_at91sam9g20ek()) {
>  		armlinux_set_architecture(MACH_TYPE_AT91SAM9G20EK);
> -#ifdef CONFIG_AT91_HAVE_2MMC
> -		armlinux_set_revision(HAVE_2MMC);
> -#endif
> +		if (IS_ENABLED(CONFIG_AT91_HAVE_2MMC))
> +			armlinux_set_revision(HAVE_2MMC);
>  	} else {
>  		armlinux_set_architecture(MACH_TYPE_AT91SAM9260EK);
>  	}
> @@ -51,11 +50,6 @@ static struct atmel_nand_data nand_pdata = {
>  	.det_pin	= -EINVAL,
>  	.rdy_pin	= AT91_PIN_PC13,
>  	.enable_pin	= AT91_PIN_PC14,
> -#if defined(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16)
> -	.bus_width_16	= 1,
> -#else
> -	.bus_width_16	= 0,
> -#endif
>  	.on_flash_bbt	= 1,
>  };
>  
> @@ -107,10 +101,12 @@ static void ek_add_device_nand(void)
>  		smc = &ek_9260_nand_smc_config;
>  
>  	/* setup bus-width (8 or 16) */
> -	if (nand_pdata.bus_width_16)
> +	if (IS_ENABLED(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16)) {
> +		nand_pdata.bus_width_16 = 1;
>  		smc->mode |= AT91_SMC_DBW_16;
> -	else
> +	} else {
>  		smc->mode |= AT91_SMC_DBW_8;
> +	}
>  
>  	/* configure chip-select 3 (NAND) */
>  	sam9_smc_configure(0, 3, smc);
> @@ -157,7 +153,6 @@ static void at91sam9260ek_phy_reset(void)
>  /*
>   * MCI (SD/MMC)
>   */
> -#if defined(CONFIG_MCI_ATMEL)
>  static struct atmel_mci_platform_data __initdata ek_mci_data = {
>  	.bus_width	= 4,
>  	.slot_b		= 1,
> @@ -165,14 +160,14 @@ static struct atmel_mci_platform_data __initdata ek_mci_data = {
>  
>  static void ek_usb_add_device_mci(void)
>  {
> +	if (!IS_ENABLED(CONFIG_MCI_ATMEL))
> +		return;
> +
>  	if (machine_is_at91sam9g20ek())
>  		ek_mci_data.detect_pin = AT91_PIN_PC9;
>  
>  	at91_add_device_mci(0, &ek_mci_data);
>  }
> -#else
> -static void ek_usb_add_device_mci(void) {}
> -#endif
>  
>  /*
>   * USB Host port
> @@ -209,10 +204,10 @@ static void __init ek_add_led(void)
>  {
>  	int i;
>  
> -#ifdef CONFIG_AT91_HAVE_2MMC
> -	leds[0].gpio = AT91_PIN_PB8;
> -	leds[1].gpio = AT91_PIN_PB9;
> -#endif
> +	if (IS_ENABLED(CONFIG_AT91_HAVE_2MMC)) {
> +		leds[0].gpio = AT91_PIN_PB8;
> +		leds[1].gpio = AT91_PIN_PB9;
> +	}
>  
>  	for (i = 0; i < ARRAY_SIZE(leds); i++) {
>  		at91_set_gpio_output(leds[i].gpio, leds[i].active_low);
> -- 
> 1.8.1.1
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
