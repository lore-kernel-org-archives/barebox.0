Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SNIre-0002u5-9O
 for barebox@lists.infradead.org; Thu, 26 Apr 2012 07:11:43 +0000
Date: Thu, 26 Apr 2012 09:11:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120426071140.GG3852@pengutronix.de>
References: <1335386138-15103-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1335386138-15103-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] PCM038: Added config option for PCM970 development board
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

Hi Alexander,

On Thu, Apr 26, 2012 at 12:35:38AM +0400, Alexander Shiyan wrote:
> This change includes:
> - Adding Kconfig option for PCM970 development board.
> - Moving some devices from PCM038, which really not installed on module.
> - Some reformatting source code.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Can you please try and make the patch smaller so that we can see what is
going on?

>  
>  #include "pll.h"
>  
> +#define GPIO_SPI_CS0	(GPIO_PORTD + 28)
> +
>  static struct fec_platform_data fec_info = {
> -	.xcv_type = MII100,
> -	.phy_addr = 1,
> +	.xcv_type	= MII100,
> +	.phy_addr	= 1,
>  };

This only adds to the patch size and increases the chance that a 'git
blame' only directs to cosmetic changes instead of the commit
introducing a real change.

I do not enforce a particular alignment. I agree that having struct
initializers aligned looks nice, but it also has the disadvantage that
the alignment may break with a longer variable name.

So in short, if an author has decided for one or the other, just keep
it like it is.

>  
> -static int pcm038_spi_cs[] = {GPIO_PORTD + 28};
> +static int pcm038_spi_cs[] = { GPIO_SPI_CS0, };

Seems unrelated to this patch.

> -/**
> - * If the PLL settings are in place switch the CPU core frequency to the max. value
> - */
> -static int pcm038_power_init(void)
> -{
> -	uint32_t spctl0;
> -
> -	spctl0 = get_pll_spctl10();
> -
> -	/* PLL registers already set to their final values? */
> -	if (spctl0 == SPCTL0_VAL && MPCTL0 == MPCTL0_VAL) {
> -		console_flush();
> -		if (!pmic_power()) {
> -			/* wait for required power level to run the CPU at 400 MHz */
> -			udelay(100000);
> -			CSCR = CSCR_VAL_FINAL;
> -			PCDR0 = 0x130410c3;
> -			PCDR1 = 0x09030911;
> -			/* Clocks have changed. Notify clients */
> -			clock_notifier_call_chain();
> -		} else {
> -			printf("Failed to initialize PMIC. Will continue with low CPU speed\n");
> -		}
> -	}
> -
> -	/* clock gating enable */
> -	GPCR = 0x00050f08;
> -
> -	return 0;
> -}
> -
> -late_initcall(pcm038_power_init);

You move pcm038_power_init from a late_initcall to a direct call
somewhere else. There might be reasons to do this, but such a change
should not be hidden in a big patch which according to the commit log
factors out baseboard code. Also I don't see why the function moves
to another place in this patch.

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
