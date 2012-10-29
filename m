Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TSk0M-00017m-Ki
 for barebox@lists.infradead.org; Mon, 29 Oct 2012 07:43:27 +0000
Date: Mon, 29 Oct 2012 08:43:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121029074324.GK1641@pengutronix.de>
References: <1351368639-20174-1-git-send-email-plagnioj@jcrosoft.com>
 <1351369365-21395-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1351369365-21395-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1 v2] gpio: move gpio_is_valid to gpio.h
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Oct 27, 2012 at 10:22:45PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> gpio < 0 means invalid too
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

What we really should do is to get rid of is the inclusion of
mach/gpio.h, asm/gpio.h from gpio.h. I began to prepare a patch for
this, but it has to wait some time due to other things to do.

Applied, thanks

Sascha

> ---
> send right version
> 
> Best Regards,
> J.
>  drivers/gpio/gpio.c        |    9 ---------
>  include/asm-generic/gpio.h |   11 +++++++++++
>  2 files changed, 11 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpio/gpio.c b/drivers/gpio/gpio.c
> index 6ad8d27..042a062 100644
> --- a/drivers/gpio/gpio.c
> +++ b/drivers/gpio/gpio.c
> @@ -4,17 +4,8 @@
>  
>  static LIST_HEAD(chip_list);
>  
> -#define ARCH_NR_GPIOS 256
> -
>  static struct gpio_chip *gpio_desc[ARCH_NR_GPIOS];
>  
> -static int gpio_is_valid(unsigned gpio)
> -{
> -	if (gpio < ARCH_NR_GPIOS)
> -		return 1;
> -	return 0;
> -}
> -
>  void gpio_set_value(unsigned gpio, int value)
>  {
>  	struct gpio_chip *chip = gpio_desc[gpio];
> diff --git a/include/asm-generic/gpio.h b/include/asm-generic/gpio.h
> index 1997888..c2e7a5d 100644
> --- a/include/asm-generic/gpio.h
> +++ b/include/asm-generic/gpio.h
> @@ -1,6 +1,17 @@
>  #ifndef __ASM_GENERIC_GPIO_H
>  #define __ASM_GENERIC_GPIO_H
>  
> +#define ARCH_NR_GPIOS 256
> +
> +static inline int gpio_is_valid(int gpio)
> +{
> +	if (gpio < 0)
> +		return 0;
> +	if (gpio < ARCH_NR_GPIOS)
> +		return 1;
> +	return 0;
> +}
> +
>  void gpio_set_value(unsigned gpio, int value);
>  int gpio_get_value(unsigned gpio);
>  int gpio_direction_output(unsigned gpio, int value);
> -- 
> 1.7.10.4
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
