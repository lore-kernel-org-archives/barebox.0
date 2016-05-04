Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x235.google.com ([2a00:1450:400c:c09::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1axyDI-00062r-2N
 for barebox@lists.infradead.org; Wed, 04 May 2016 14:55:46 +0000
Received: by mail-wm0-x235.google.com with SMTP id e201so191680252wme.0
 for <barebox@lists.infradead.org>; Wed, 04 May 2016 07:55:23 -0700 (PDT)
Date: Wed, 4 May 2016 16:55:14 +0200
From: Wjatscheslaw Stoljarski <wjatscheslaw.stoljarski@kiwigrid.com>
Message-ID: <20160504145514.GA15697@gmail.com>
References: <1462346935-31609-1-git-send-email-wjatscheslaw.stoljarski@kiwigrid.com>
 <20160504131121.GO19714@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160504131121.GO19714@pengutronix.de>
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
Subject: Re: [PATCH] net: fec: add simple support for fixed-link
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sascha,

it works for me. Thanks!

On Wed, May 04, 2016 at 03:11:21PM +0200, Sascha Hauer wrote:
> Hi Wjatscheslaw,
> 
> On Wed, May 04, 2016 at 09:28:55AM +0200, Wjatscheslaw Stoljarski wrote:
> > Signed-off-by: Wjatscheslaw Stoljarski <wjatscheslaw.stoljarski@kiwigrid.com>
> > ---
> >  drivers/net/fec_imx.c | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> > 
> > diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
> 
> Instead of introducing a i.MX FEC specific solution for this problem,
> can you test the following patch? It currently lacks support for the
> speed/full-duplex properties, but with these added we could apply the
> patch.
> 
> Sascha
> 
> -------------------------------8<------------------------------
> 
> From 4a2bfb1400dff8c5d4a14e0faeb653974c3e4acf Mon Sep 17 00:00:00 2001
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Date: Thu, 11 Feb 2016 11:05:11 +0100
> Subject: [PATCH] net: phy: Add fixed link support
> 
> Some network devices, especially when connected to a switch, are
> connected via a fixed link. This patch adds support for a fixed phy
> configured through device tree.
> TODO: Add support for the "speed" and "full-duplex" properties.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/net/phy/phy.c | 49 +++++++++++++++++++++++++++++++++++++++++--------
>  include/linux/phy.h   |  2 +-
>  2 files changed, 42 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
> index be2c68b..73176fb 100644
> --- a/drivers/net/phy/phy.c
> +++ b/drivers/net/phy/phy.c
> @@ -52,9 +52,11 @@ int phy_update_status(struct phy_device *phydev)
>  	int ret;
>  	int oldspeed = phydev->speed, oldduplex = phydev->duplex;
>  
> -	ret = drv->read_status(phydev);
> -	if (ret)
> -		return ret;
> +	if (drv) {
> +		ret = drv->read_status(phydev);
> +		if (ret)
> +			return ret;
> +	}
>  
>  	if (phydev->speed == oldspeed && phydev->duplex == oldduplex)
>  		return 0;
> @@ -173,10 +175,15 @@ struct phy_device *phy_device_create(struct mii_bus *bus, int addr, int phy_id)
>  	phydev->bus = bus;
>  	phydev->dev.bus = &mdio_bus_type;
>  
> -	sprintf(phydev->dev.name, "mdio%d-phy%02x",
> +	if (bus) {
> +		sprintf(phydev->dev.name, "mdio%d-phy%02x",
>  				   phydev->bus->dev.id,
>  				   phydev->addr);
> -	phydev->dev.id = DEVICE_ID_SINGLE;
> +		phydev->dev.id = DEVICE_ID_SINGLE;
> +	} else {
> +		sprintf(phydev->dev.name, "fixed-phy");
> +		phydev->dev.id = DEVICE_ID_DYNAMIC;
> +	}
>  
>  	return phydev;
>  }
> @@ -245,7 +252,9 @@ static void phy_config_aneg(struct phy_device *phydev)
>  	struct phy_driver *drv;
>  
>  	drv = to_phy_driver(phydev->dev.driver);
> -	drv->config_aneg(phydev);
> +
> +	if (drv)
> +		drv->config_aneg(phydev);
>  }
>  
>  int phy_register_device(struct phy_device *phydev)
> @@ -255,13 +264,15 @@ int phy_register_device(struct phy_device *phydev)
>  	if (phydev->registered)
>  		return -EBUSY;
>  
> -	phydev->dev.parent = &phydev->bus->dev;
> +	if (!phydev->dev.parent)
> +		phydev->dev.parent = &phydev->bus->dev;
>  
>  	ret = register_device(&phydev->dev);
>  	if (ret)
>  		return ret;
>  
> -	phydev->bus->phy_map[phydev->addr] = phydev;
> +	if (phydev->bus)
> +		phydev->bus->phy_map[phydev->addr] = phydev;
>  
>  	phydev->registered = 1;
>  
> @@ -289,6 +300,22 @@ void phy_unregister_device(struct phy_device *phydev)
>  	phydev->registered = 0;
>  }
>  
> +struct phy_device *of_phy_register_fixed_link(struct device_node *np, struct eth_device *edev)
> +{
> +	struct phy_device *phydev;
> +
> +	phydev = phy_device_create(NULL, 0, 0);
> +
> +	phydev->dev.parent = &edev->dev;
> +	phydev->registered = 1;
> +	phydev->speed = 1000;
> +	phydev->duplex = 1;
> +	phydev->pause = phydev->asym_pause = 0;
> +	phydev->link = 1;
> +
> +	return phydev;
> +}
> +
>  static struct phy_device *of_mdio_find_phy(struct eth_device *edev)
>  {
>  	struct device_d *dev;
> @@ -305,6 +332,12 @@ static struct phy_device *of_mdio_find_phy(struct eth_device *edev)
>  		phy_node = of_parse_phandle(edev->parent->device_node, "phy", 0);
>  	if (!phy_node)
>  		phy_node = of_parse_phandle(edev->parent->device_node, "phy-device", 0);
> +	if (!phy_node) {
> +		phy_node = of_get_child_by_name(edev->parent->device_node, "fixed-link");
> +		if (phy_node)
> +			return of_phy_register_fixed_link(phy_node, edev);
> +	}
> +
>  	if (!phy_node)
>  		return NULL;
>  
> diff --git a/include/linux/phy.h b/include/linux/phy.h
> index 38b0670..d7b10af 100644
> --- a/include/linux/phy.h
> +++ b/include/linux/phy.h
> @@ -251,7 +251,7 @@ struct phy_driver {
>  
>  	struct driver_d	 drv;
>  };
> -#define to_phy_driver(d) container_of(d, struct phy_driver, drv)
> +#define to_phy_driver(d) ((d) ? container_of(d, struct phy_driver, drv) : NULL)
>  
>  #define PHY_ANY_ID "MATCH ANY PHY"
>  #define PHY_ANY_UID 0xffffffff
> -- 
> 2.8.0.rc3
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
