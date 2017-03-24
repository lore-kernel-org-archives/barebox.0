Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1crIyA-0007pa-Fu
 for barebox@lists.infradead.org; Fri, 24 Mar 2017 06:45:08 +0000
Date: Fri, 24 Mar 2017 07:44:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170324064444.4zjhgxvzclxt5bdi@pengutronix.de>
References: <20170324033954.2364-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170324033954.2364-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] net: phy: mdio-gpio.c: fix "no previous prototype" warning
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Mar 24, 2017 at 06:39:54AM +0300, Antony Pavlov wrote:
> The patch fixes this compiler's warning:
> 
> drivers/net/phy/mdio-gpio.c:48:24: warning: no previous prototype
>         for 'mdio_gpio_of_get_info' [-Wmissing-prototypes]
>  struct mdio_gpio_info *mdio_gpio_of_get_info(struct device_d *dev)
>                         ^
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/net/phy/mdio-gpio.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/phy/mdio-gpio.c b/drivers/net/phy/mdio-gpio.c
> index a839f2dee..a846fb28e 100644
> --- a/drivers/net/phy/mdio-gpio.c
> +++ b/drivers/net/phy/mdio-gpio.c
> @@ -45,7 +45,7 @@ struct mdio_gpio_info {
>  	int mdc_active_low, mdio_active_low, mdo_active_low;
>  };
>  
> -struct mdio_gpio_info *mdio_gpio_of_get_info(struct device_d *dev)
> +static struct mdio_gpio_info *mdio_gpio_of_get_info(struct device_d *dev)
>  {
>  	int ret;
>  	enum of_gpio_flags flags;
> -- 
> 2.11.0
> 
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
