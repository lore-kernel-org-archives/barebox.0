Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k2gyW-0005DB-DV
 for barebox@lists.infradead.org; Mon, 03 Aug 2020 20:22:25 +0000
Date: Mon, 3 Aug 2020 22:22:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200803202222.GJ31536@pengutronix.de>
References: <20200723103326.23226-1-o.rempel@pengutronix.de>
 <20200723103326.23226-9-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200723103326.23226-9-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v1 08/11] gpiolib: add gpio_array_to_id helper to get ID
 out of GPIO array
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org, david@protonic.nl

Hi Oleksij,

On Thu, Jul 23, 2020 at 12:33:23PM +0200, Oleksij Rempel wrote:
> Some boards provide a board version and/or ID coded by pull-up/down
> resistors connected to the gpio pins (or pins which can be multiplexed
> at some point as gpio). In this case every one implements own gpio id
> reader function.
> 
> To avoid it, provide the common helper function to extract a value out
> of provided gpio array.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/gpio/gpiolib.c | 28 ++++++++++++++++++++++++++++
>  include/gpio.h         |  5 +++++
>  2 files changed, 33 insertions(+)
> 
> diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
> index 27674af54c..2e9150d2ea 100644
> --- a/drivers/gpio/gpiolib.c
> +++ b/drivers/gpio/gpiolib.c
> @@ -381,6 +381,34 @@ void gpio_free_array(const struct gpio *array, size_t num)
>  }
>  EXPORT_SYMBOL_GPL(gpio_free_array);
>  
> +int gpio_array_to_id(const struct gpio *array, size_t num, u32 *val)
> +{
> +	u32 id = 0;
> +	int ret, i;
> +
> +	if (num > 32)
> +		return -EOVERFLOW;
> +
> +	ret = gpio_request_array(array, num);
> +	if (ret)
> +		return ret;

This function expects an unrequested array and returns with the array
requested. This is at least inconsistent.

> +
> +	/* Wait untill logic level will be stable */

s/untill/until/

> +	udelay(5);

This delay looks rather arbitrary. Is it really necessary?

> +	for (i = 0; i < num; i++) {
> +		ret = gpio_is_active(array[i].gpio);
> +		if (ret < 0)
> +			return ret;
> +
> +		id |= ret << i;

'ret' is signed. Does this work when i == 31 ?

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
