Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1baHlJ-0006Tr-DD
 for barebox@lists.infradead.org; Thu, 18 Aug 2016 07:29:14 +0000
Date: Thu, 18 Aug 2016 09:28:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160818072852.GK20657@pengutronix.de>
References: <20160808193203.13ab931dc3ea505a3cdb2b09@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160808193203.13ab931dc3ea505a3cdb2b09@gmail.com>
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
Subject: Re: net: phy: fixed link
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Aug 08, 2016 at 07:32:03PM +0300, Antony Pavlov wrote:
> Hi Sascha!
> 
> I have just took a look on Lukas' 
> 'net: phy: fixed-link: read link parameters from devicetree' patch.
> I see two problems with current 'of_phy_register_fixed_link()' implementation
> unrelated to Lukas' changes.
> 
> Please see current of_phy_register_fixed_link() implementation:
> 
>         static struct phy_device *of_phy_register_fixed_link(struct device_node *np,
>                                                 struct eth_device *edev)
>         {
>                 struct phy_device *phydev;
> 
>                 phydev = phy_device_create(NULL, 0, 0);
> 
>                 phydev->dev.parent = &edev->dev;
>                 phydev->registered = 1;
>                 phydev->speed = 1000;
>                 phydev->duplex = 1;
>                 phydev->pause = phydev->asym_pause = 0;
>                 phydev->link = 1;
> 
>                 return phydev;
>         }
> 
> 1. (a trivial think) the line
> 
>         phydev->link = 1;
> 
> is redundant because phy_device_create() has already set it.

Yes, this is redundant and can be removed.

> 
> 2. (not so trivial think) the line
> 
>        phydev->registered = 1;
> 
> Why we want to set phydev->registered here? Can we use phy_register_device() instead?

If we use phy_register_device() here then I think the genphy driver is
attached to the fixed link which probably can't handle this fake device.
You can give it a try, but I assume you will see NULL pointer exceptions
in several places.

phydev->registered = 1 is necessary because without this
phy_register_device() is called in phy_device_attach() which is called
from phy_device_connect() called from the network device driver.

There may be ways to properly register a fixed link as a phy device, but
this would mean some serious rework of the phy layer.

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
