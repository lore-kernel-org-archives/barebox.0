Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TqM1w-0007ic-U0
 for barebox@lists.infradead.org; Wed, 02 Jan 2013 10:58:41 +0000
Date: Wed, 2 Jan 2013 11:58:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130102105839.GS24458@pengutronix.de>
References: <20121228191327.GC7216@game.jcrosoft.org>
 <1356722174-22598-1-git-send-email-plagnioj@jcrosoft.com>
 <1356722174-22598-2-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1356722174-22598-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 02/13] at91: enable clock via clock framework
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Dec 28, 2012 at 08:16:03PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> fix at91sam926x timer and dss11
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/boards/dss11/init.c          |    6 ++++--
>  arch/arm/mach-at91/at91sam926x_time.c |   23 ++++++++++++++++-------
>  2 files changed, 20 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm/boards/dss11/init.c b/arch/arm/boards/dss11/init.c
> index 27c1ec7..12d4263 100644
> --- a/arch/arm/boards/dss11/init.c
> +++ b/arch/arm/boards/dss11/init.c
> @@ -32,8 +32,8 @@
>  #include <mach/sam9_smc.h>
>  #include <gpio.h>
>  #include <mach/io.h>
> -#include <mach/at91_pmc.h>
>  #include <mach/at91_rstc.h>
> +#include <linux/clk.h>
>  
>  static struct atmel_nand_data nand_pdata = {
>  	.ale		= 21,
> @@ -82,7 +82,9 @@ static struct at91_ether_platform_data macb_pdata = {
>  static void dss11_phy_reset(void)
>  {
>  	unsigned long rstc;
> -	at91_sys_write(AT91_PMC_PCER, 1 << AT91SAM9260_ID_EMAC);
> +	struct clk *clk = clk_get(NULL, "macb_clk");
> +
> +	clk_enable(clk);
>  
>  	at91_set_gpio_input(AT91_PIN_PA14, 0);
>  	at91_set_gpio_input(AT91_PIN_PA15, 0);
> diff --git a/arch/arm/mach-at91/at91sam926x_time.c b/arch/arm/mach-at91/at91sam926x_time.c
> index 7425e0a..1ce8d30 100644
> --- a/arch/arm/mach-at91/at91sam926x_time.c
> +++ b/arch/arm/mach-at91/at91sam926x_time.c
> @@ -30,11 +30,11 @@
>  #include <clock.h>
>  #include <asm/hardware.h>
>  #include <mach/at91_pit.h>
> -#include <mach/at91_pmc.h>
>  #include <mach/at91_rstc.h>
>  #include <mach/io.h>
>  #include <io.h>
>  #include <linux/clk.h>
> +#include <linux/err.h>
>  
>  uint64_t at91sam9_clocksource_read(void)
>  {
> @@ -49,15 +49,24 @@ static struct clocksource cs = {
>  
>  static int clocksource_init (void)
>  {
> +	struct clk *clk;
>  	u32 pit_rate;
>  
> -	/*
> -	 * Enable PITC Clock
> -	 * The clock is already enabled for system controller in boot
> -	 */
> -	at91_sys_write(AT91_PMC_PCER, 1 << AT91_ID_SYS);
> +	clk = clk_get(NULL, "mck");
> +	if (IS_ERR(clk)) {
> +		ret = PTR_ERR(clk);
> +		dev_err(dev, "clock not found: %d\n", ret);
> +		return ret;
> +	}

This breaks compilation:

arch/arm/mach-at91/at91sam926x_time.c: In function 'clocksource_init':
arch/arm/mach-at91/at91sam926x_time.c:57:3: error: 'ret' undeclared (first use in this function)
arch/arm/mach-at91/at91sam926x_time.c:57:3: note: each undeclared identifier is reported only once for each function it appears in
arch/arm/mach-at91/at91sam926x_time.c:58:3: error: 'dev' undeclared (first use in this function)

I guess the patch order is wrong.

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
