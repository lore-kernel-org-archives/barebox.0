Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9RA0-0003fH-Kd
 for barebox@lists.infradead.org; Mon, 08 Oct 2018 08:45:07 +0000
Date: Mon, 8 Oct 2018 10:44:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181008084451.clh4bf5btxoyq6di@pengutronix.de>
References: <20181008063542.18709-1-andrew.smirnov@gmail.com>
 <20181008063542.18709-14-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181008063542.18709-14-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 13/16] mdio_bus: Allow for non PHY-devices on MDIO buses
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Oct 07, 2018 at 11:35:39PM -0700, Andrey Smirnov wrote:
> Instead of just creating a simple PHY device for every child of MDIO
> bus node, add code to check if any of them have "compatible" property
> set as well as code to create a proper platform device for such cases.
> 
> This change is useful for when MDIO bus and some of Ethernet ports are
> connected to a switch or some other MDIO device that doesn't behave
> like a generic PHY and can't be probed via its PHY ID.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/net/phy/mdio_bus.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
> index d7d6d8940..589ed57d2 100644
> --- a/drivers/net/phy/mdio_bus.c
> +++ b/drivers/net/phy/mdio_bus.c
> @@ -26,6 +26,7 @@
>  #include <errno.h>
>  #include <linux/phy.h>
>  #include <linux/err.h>
> +#include <of_device.h>
>  
>  #define DEFAULT_GPIO_RESET_ASSERT       1000      /* us */
>  #define DEFAULT_GPIO_RESET_DEASSERT     1000      /* us */
> @@ -179,6 +180,16 @@ static int of_mdiobus_register(struct mii_bus *mdio, struct device_node *np)
>  
>  	/* Loop over the child nodes and register a phy_device for each one */
>  	for_each_available_child_of_node(np, child) {
> +		if (of_get_property(child, "compatible", NULL)) {
> +			if (!of_platform_device_create(child, &mdio->dev)) {
> +				dev_err(&mdio->dev,
> +					"Failed to create device for %s\n",
> +					child->full_name);
> +			}
> +
> +			continue;
> +		}

PHYs can have a compatible property aswell which is checked for here:

> +
>  		if (!of_mdiobus_child_is_phy(child))
>  			continue;

So I believe you have to create a platform device only if it is not a
PHY device.

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
