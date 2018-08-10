Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fo16J-0004HA-4R
 for barebox@lists.infradead.org; Fri, 10 Aug 2018 06:40:45 +0000
Date: Fri, 10 Aug 2018 08:40:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180810064031.omn5j5mt67xbbefv@pengutronix.de>
References: <20180808191505.GA27531@ravnborg.org>
 <20180808191701.27586-2-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180808191701.27586-2-sam@ravnborg.org>
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
Subject: Re: [PATCH v2 2/3] phylib: add support for reset-gpios
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sam,

Some comments inside.

On Wed, Aug 08, 2018 at 09:17:00PM +0200, Sam Ravnborg wrote:
> Add minimal support for reset-gpios.
> 
> Example DT that uses this:
> 
> 	mdio {
> 		#address-cells = <1>;
> 		#size-cells = <0>;
> 		reset-gpios = <&pioE 17 GPIO_ACTIVE_LOW>;
> 		reset-delay-us = <1000>;
> 		ethphy0: ethernet-phy@1 {
> 			reg = <3>;
> 		};
> 	};
> 
> This was required to get the Davicom PHY operational on
> my proprietary board.
> I added the minimal mdio_reset() calls.
> 
> Another options was to use a bus reset, but then
> the net/ driver used should have dedicated reset support.
> 
> The reset-gpios solution is general and matches the
> binding specification in net/mdio.txt
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> ---
>  drivers/net/phy/mdio_bus.c | 64 ++++++++++++++++++++++++++++++++++++++++++++--
>  include/linux/phy.h        |  5 ++++
>  2 files changed, 67 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
> index d209716a1..ad358192d 100644
> --- a/drivers/net/phy/mdio_bus.c
> +++ b/drivers/net/phy/mdio_bus.c
> @@ -17,6 +17,8 @@
>  #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
>  
>  #include <common.h>
> +#include <of_gpio.h>
> +#include <gpio.h>
>  #include <driver.h>
>  #include <init.h>
>  #include <clock.h>
> @@ -25,6 +27,8 @@
>  #include <linux/phy.h>
>  #include <linux/err.h>
>  
> +#define DEFAULT_GPIO_RESET_DELAY	10 /* us */
> +
>  LIST_HEAD(mii_bus_list);
>  
>  int mdiobus_detect(struct device_d *dev)
> @@ -83,6 +87,45 @@ static int of_mdiobus_register_phy(struct mii_bus *mdio, struct device_node *chi
>  }
>  
>  /**
> + * of_mdioibus_register_reset - register optional reset-gpios

s/mdioibus/mdiobus/

> + * @mdio: pointer to mii_bus structure
> + * @np: pointer to device_node of MDIO bus.
> + *
> + * Read optional reset-gpios from mido node in DT

s/mido/mdio/

> + */
> +static void of_mdiobus_register_reset(struct mii_bus *mdio,
> +				      struct device_node *np)
> +{
> +	enum of_gpio_flags of_flags;
> +	u32 reset_delay;
> +	int gpio;
> +
> +	if (!np)
> +		return;
> +
> +	reset_delay = DEFAULT_GPIO_RESET_DELAY;
> +	of_property_read_u32(np, "reset-delay-us", &reset_delay);
> +
> +	gpio = of_get_named_gpio_flags(np, "reset-gpios", 0, &of_flags);
> +	if (gpio_is_valid(gpio)) {
> +		unsigned long flags;
> +		char *name;
> +
> +		name = basprintf("%s-reset", dev_name(&mdio->dev));

Free after use?

> +		flags = GPIOF_OUT_INIT_INACTIVE;
> +
> +		if (of_flags & OF_GPIO_ACTIVE_LOW)
> +			flags |= GPIOF_ACTIVE_LOW;
> +
> +		if (gpio_request_one(gpio, flags, name) >= 0) {
> +			mdio->reset_gpio = gpio;
> +			mdio->reset_delay = reset_delay;
> +		}

This shouldn't fail silently. If we find a GPIO we should be able to
request it, otherwise it's a bug.

> +	}
> +
> +}
> +
> +/**
>   * of_mdiobus_register - Register mii_bus and create PHYs from the device tree
>   * @mdio: pointer to mii_bus structure
>   * @np: pointer to device_node of MDIO bus.
> @@ -96,6 +139,9 @@ static int of_mdiobus_register(struct mii_bus *mdio, struct device_node *np)
>  	u32 addr;
>  	int ret;
>  
> +	if (!np)
> +		return -ENODEV;
> +
>  	/* Loop over the child nodes and register a phy_device for each one */
>  	for_each_available_child_of_node(np, child) {
>  		ret = of_property_read_u32(child, "reg", &addr);
> @@ -128,6 +174,7 @@ static int of_mdiobus_register(struct mii_bus *mdio, struct device_node *np)
>   */
>  int mdiobus_register(struct mii_bus *bus)
>  {
> +	struct device_node *np;
>  	int err;
>  
>  	if (NULL == bus ||
> @@ -147,6 +194,11 @@ int mdiobus_register(struct mii_bus *bus)
>  		return -EINVAL;
>  	}
>  
> +	np = bus->dev.device_node;
> +
> +	of_mdiobus_register_reset(bus, np);
> +
> +	mdio_reset(bus);
>  	if (bus->reset)
>  		bus->reset(bus);
>  
> @@ -154,8 +206,7 @@ int mdiobus_register(struct mii_bus *bus)
>  
>  	pr_info("%s: probed\n", dev_name(&bus->dev));
>  
> -	if (bus->dev.device_node)
> -		of_mdiobus_register(bus, bus->dev.device_node);
> +	of_mdiobus_register(bus, np);
>  
>  	return 0;
>  }
> @@ -190,6 +241,15 @@ struct phy_device *mdiobus_scan(struct mii_bus *bus, int addr)
>  }
>  EXPORT_SYMBOL(mdiobus_scan);
>  
> +void mdio_reset(const struct mii_bus *bus)
> +{
> +	if (gpio_is_valid(bus->reset_gpio)) {

'0' is a valid GPIO, you have to initialize bus->reset_gpio explicitly
to a negative value for the general case when no reset GPIO is
available.

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
