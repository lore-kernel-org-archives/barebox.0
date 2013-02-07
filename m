Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo4.mail-out.ovh.net ([188.165.55.104]
 helo=mo4.mail-out.ovh.net)
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U3QCM-0005Ag-Qr
 for barebox@lists.infradead.org; Thu, 07 Feb 2013 12:03:28 +0000
Received: from mail34.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id BA0051050241
 for <barebox@lists.infradead.org>; Thu,  7 Feb 2013 13:13:33 +0100 (CET)
Date: Thu, 7 Feb 2013 13:02:06 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130207120206.GJ19322@game.jcrosoft.org>
References: <1360235367-30530-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360235367-30530-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 1/2] net phy: Add support for finding a mdio bus by its
 name
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 12:09 Thu 07 Feb     , Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/net/phy/mdio_bus.c |   19 +++++++++++++++++++
>  include/linux/phy.h        |    3 +++
>  2 files changed, 22 insertions(+)
> 
> diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
> index d1d802b..3c4be1c 100644
> --- a/drivers/net/phy/mdio_bus.c
> +++ b/drivers/net/phy/mdio_bus.c
> @@ -25,6 +25,8 @@
>  #include <linux/phy.h>
>  #include <linux/err.h>
>  
> +static LIST_HEAD(mii_bus_list);
> +
>  /**
>   * mdiobus_register - bring up all the PHYs on a given bus and attach them to bus
>   * @bus: target mii_bus
> @@ -57,6 +59,8 @@ int mdiobus_register(struct mii_bus *bus)
>  	if (bus->reset)
>  		bus->reset(bus);
>  
> +	list_add_tail(&bus->list, &mii_bus_list);
> +
>  	pr_info("%s: probed\n", dev_name(&bus->dev));
>  	return 0;
>  }
> @@ -71,9 +75,24 @@ void mdiobus_unregister(struct mii_bus *bus)
>  			unregister_device(&bus->phy_map[i]->dev);
>  		bus->phy_map[i] = NULL;
>  	}
> +
> +	list_del(&bus->list);
>  }
>  EXPORT_SYMBOL(mdiobus_unregister);
>  
> +struct mii_bus *mdiobus_find(const char *name)
> +{
> +	struct mii_bus *bus;
> +
> +	list_for_each_entry(bus, &mii_bus_list, list) {
	no use bus_for_each

Best Regards,
J.
> +		if (!strcmp(dev_name(&bus->dev), name))
> +			return bus;
> +	}
> +
> +	return NULL;
> +}
> +EXPORT_SYMBOL(mdiobus_find);
> +
>  struct phy_device *mdiobus_scan(struct mii_bus *bus, int addr)
>  {
>  	struct phy_device *phydev;
> diff --git a/include/linux/phy.h b/include/linux/phy.h
> index 6c9cac9..9ab6e06 100644
> --- a/include/linux/phy.h
> +++ b/include/linux/phy.h
> @@ -84,11 +84,14 @@ struct mii_bus {
>  
>  	/* PHY addresses to be ignored when probing */
>  	u32 phy_mask;
> +
> +	struct list_head list;
>  };
>  #define to_mii_bus(d) container_of(d, struct mii_bus, dev)
>  
>  int mdiobus_register(struct mii_bus *bus);
>  void mdiobus_unregister(struct mii_bus *bus);
> +struct mii_bus *mdiobus_find(const char *name);
>  struct phy_device *mdiobus_scan(struct mii_bus *bus, int addr);
>  
>  /**
> -- 
> 1.7.10.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
