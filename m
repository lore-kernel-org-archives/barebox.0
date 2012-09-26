Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TGpOA-0001Nm-Ml
 for barebox@lists.infradead.org; Wed, 26 Sep 2012 11:02:47 +0000
Date: Wed, 26 Sep 2012 13:02:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120926110244.GH24458@pengutronix.de>
References: <20120924093122.GD26553@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120924093122.GD26553@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/1 v7] net: introduce phylib
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Sep 24, 2012 at 11:31:22AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> 	v7:
> 	 - drop the duplicate platform_data for fec driver
> 	   as we need to update both with the same data (piss me off)
> 
> 	v6:
> 	- probe phy at mdiobus_register
> 	- reimplement the mdiobuss support
> 
> 	v5:
> 	 - drop edev in mii_device
> 
> 	v4:
> 	 - move phy_dev attachement to eth_device instead of mii_device
> 	   this will allow multiple phy_device per mii bus
> 	 - move phy cdev to phy_device
> 	 - add interface type support (so phy driver can configure themselves
> 	   if MII/RMII/RGMII etc...
> 	 - manage link status at framework level
> 	 - mx6 update to fixup the phy at device opening
> 
> 	v3:
> 	 - fix comment
> 	 - add phy_driver probe and remove
> 	 - renambe phydev.h to phy.h and phylib.c to phy.c as in linux

I think the main reason you introduced phylib was proper link handling,
but what we have now is worse than ever!

Now when no cable is connected, the phylib internally recognizes it but
the status is never propagated. So without cable I get:

barebox@Freescale i.MX51 PDK:/ dhcp 
T transmission timeout
T T transmission timeout
T T transmission timeout
T T transmission timeout
T T transmission timeout

Plugging in a cable does not help, since the link status is only
evaluated once during eth_open. If then a cable is plugged, adjust_link
is never called, so the driver never adjusts to the actual link.

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
