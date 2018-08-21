Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fs1Qv-0001en-Sf
 for barebox@lists.infradead.org; Tue, 21 Aug 2018 07:50:35 +0000
Date: Tue, 21 Aug 2018 09:50:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180821075019.cl2r4w7zbyxilb26@pengutronix.de>
References: <20180820145215.GA22058@ravnborg.org>
 <20180820145612.17576-2-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180820145612.17576-2-sam@ravnborg.org>
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
Subject: Re: [PATCH v3 2/3] phylib: add support for reset-gpios
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>


Hi Sam,

Looks good generally, but there's one point

On Mon, Aug 20, 2018 at 04:56:11PM +0200, Sam Ravnborg wrote:
>  /**
>   * of_mdiobus_register - Register mii_bus and create PHYs from the device tree
>   * @mdio: pointer to mii_bus structure
> @@ -111,6 +186,8 @@ static int of_mdiobus_register(struct mii_bus *mdio, struct device_node *np)
>  			continue;
>  		}
>  
> +		of_reset_phy(mdio, child);
> +
>  		of_mdiobus_register_phy(mdio, child, addr);
>  	}
>  
> @@ -154,6 +231,11 @@ int mdiobus_register(struct mii_bus *bus)
>  
>  	pr_info("%s: probed\n", dev_name(&bus->dev));
>  
> +	/* register PHY's as child node to the ethernet node */
> +	if (bus->parent->device_node)
> +		of_mdiobus_register(bus, bus->parent->device_node);

I am not so convinced of this change. Here you assume that bus->parent
is the ethernet node, but this doesn't necessarily have to be the case
as some mdio controllers are standalone and not part of an ethernet
device (see "virtual,mdio-gpio" to get examples).

So instead of introducing this change I would prefer if you let the code
below trigger:

> +
> +	/* register PHY's as child node to mdio node */
>  	if (bus->dev.device_node)
>  		of_mdiobus_register(bus, bus->dev.device_node);

This means you have to set bus->dev.device_node in your ethernet driver
like some drivers already do:

drivers/net/macb.c:666:                 macb->miibus.dev.device_node = mdiobus;

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
