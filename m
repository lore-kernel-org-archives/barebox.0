Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TlwmS-0005X5-Jo
 for barebox@lists.infradead.org; Fri, 21 Dec 2012 07:12:29 +0000
Date: Fri, 21 Dec 2012 08:12:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121221071223.GK26326@pengutronix.de>
References: <20121220131250.GG26483@game.jcrosoft.org>
 <1356013440-23651-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1356013440-23651-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/2] gpiolib: add gpio_request and gpio_free support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Dec 20, 2012 at 03:23:59PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> as today if no request or free provided do not complain
> 
> if the gpio is not request auto requested at first use
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  drivers/gpio/gpio.c |   87 ++++++++++++++++++++++++++++++++++++++++++++++-----
>  include/gpio.h      |    7 +++++
>  2 files changed, 87 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpio/gpio.c b/drivers/gpio/gpio.c
> index 042a062..e29f0ba 100644
> --- a/drivers/gpio/gpio.c
> +++ b/drivers/gpio/gpio.c
> @@ -1,19 +1,71 @@
>  #include <common.h>
>  #include <gpio.h>
>  #include <errno.h>
> +#include <malloc.h>
>  
>  static LIST_HEAD(chip_list);
>  
> -static struct gpio_chip *gpio_desc[ARCH_NR_GPIOS];
> +struct gpio_info {
> +	struct gpio_chip *chip;
> +	bool requested;
> +	char *label;
> +};
> +
> +static struct gpio_info gpio_desc[ARCH_NR_GPIOS];
> +
> +int gpio_request(unsigned gpio, const char *label)
> +{
> +	struct gpio_info *gi = &gpio_desc[gpio];
> +	struct gpio_chip *chip = gi->chip;
> +	int ret;
> +
> +	if (!gpio_is_valid(gpio))
> +		return -EINVAL;
> +	if (!chip)
> +		return -EINVAL;
> +	if (gi->requested)
> +		return -ENODEV;

-EBUSY?

>  void gpio_set_value(unsigned gpio, int value)
>  {
> -	struct gpio_chip *chip = gpio_desc[gpio];
> +	struct gpio_info *gi = &gpio_desc[gpio];
> +	struct gpio_chip *chip = gi->chip;
>  
>  	if (!gpio_is_valid(gpio))
>  		return;
>  	if (!chip)
>  		return;
> +	if (!gi->requested && gpio_request(gpio, "gpio"))
> +		return;

Could you factor out this into a gpio_ensure_requested function? This
way we would have a single point where the implicit gpio_request calls
are handled.

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
