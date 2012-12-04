Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo1.mail-out.ovh.net ([178.32.127.22]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TfzoK-00017Q-5D
 for barebox@lists.infradead.org; Tue, 04 Dec 2012 21:13:49 +0000
Received: from mail189.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id CF11BFF9272
 for <barebox@lists.infradead.org>; Tue,  4 Dec 2012 22:25:42 +0100 (CET)
Date: Tue, 4 Dec 2012 22:11:55 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121204211155.GI8327@game.jcrosoft.org>
References: <1354641636-23483-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1354641636-23483-1-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH] net: phy: mdio_bus: fix inverted logic in mdio_bus_match
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On 18:20 Tue 04 Dec     , Jan Luebbe wrote:
> The bus match functions return 0 on success.
> 
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
already fix in next

Best Regards,
J.
> ---
>  drivers/net/phy/mdio_bus.c |    6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
> index 9424179..aaac559 100644
> --- a/drivers/net/phy/mdio_bus.c
> +++ b/drivers/net/phy/mdio_bus.c
> @@ -126,7 +126,11 @@ static int mdio_bus_match(struct device_d *dev, struct driver_d *drv)
>  	struct phy_device *phydev = to_phy_device(dev);
>  	struct phy_driver *phydrv = to_phy_driver(drv);
>  
> -	return ((phydrv->phy_id & phydrv->phy_id_mask) ==
> +	pr_debug("%s: trying to match driver %s: (0x%08x & 0x%08x) ~ 0x%08x\n",
> +		dev->name, drv->name,
> +		phydev->phy_id, phydrv->phy_id_mask, phydrv->phy_id);
> +
> +	return ((phydrv->phy_id & phydrv->phy_id_mask) !=
>  		(phydev->phy_id & phydrv->phy_id_mask));
>  }
>  
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
