Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4gZp-0000bW-7z
 for barebox@lists.infradead.org; Mon, 02 Sep 2019 07:16:38 +0000
Date: Mon, 2 Sep 2019 09:16:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190902071635.xjnnj6rjwhrd7vrl@pengutronix.de>
References: <20190829124318.30339-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829124318.30339-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH] gpio: iopoll: implement gpio_poll_timeout_us
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Aug 29, 2019 at 02:43:18PM +0200, Ahmad Fatoum wrote:
> Sometimes we need to wait for state change on a GPIO,
> provide a helper to do this.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/gpio.h | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/include/gpio.h b/include/gpio.h
> index 1926edeca757..89cb306a195c 100644
> --- a/include/gpio.h
> +++ b/include/gpio.h
> @@ -3,6 +3,7 @@
>  
>  #include <linux/types.h>
>  #include <linux/list.h>
> +#include <linux/iopoll.h>
>  
>  #ifdef CONFIG_GENERIC_GPIO
>  void gpio_set_value(unsigned gpio, int value);
> @@ -31,6 +32,13 @@ static inline int gpio_direction_input(unsigned gpio)
>  void gpio_set_active(unsigned gpio, bool state);
>  int gpio_is_active(unsigned gpio);
>  int gpio_direction_active(unsigned gpio, bool state);
> +
> +#define gpio_poll_timeout_us(gpio, active, timeout_us)			\

Please add a comment what this macro does. Specificall it's interesting
to know if this function polls as long as the gpio is active or if it
polls until it's active.

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
