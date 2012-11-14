Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TYbht-0003vd-RT
 for barebox@lists.infradead.org; Wed, 14 Nov 2012 12:04:38 +0000
Date: Wed, 14 Nov 2012 13:04:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121114120436.GL10369@pengutronix.de>
References: <1352841245-22767-1-git-send-email-plagnioj@jcrosoft.com>
 <20121114080528.GF10369@pengutronix.de>
 <20121114093458.GH25679@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121114093458.GH25679@game.jcrosoft.org>
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
Subject: Re: [PATCH 1/1] phy: phy_update_status wait auto neg done when enabled
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Nov 14, 2012 at 10:34:58AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 09:05 Wed 14 Nov     , Sascha Hauer wrote:
> > On Tue, Nov 13, 2012 at 10:14:05PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > >  
> > >  int phy_update_status(struct phy_device *dev)
> > >  {
> > > @@ -35,11 +54,18 @@ int phy_update_status(struct phy_device *dev)
> > >  	struct eth_device *edev = dev->attached_dev;
> > >  	int ret;
> > >  	int oldspeed = dev->speed, oldduplex = dev->duplex;
> > > +	int old_link = dev->link;
> > >  
> > >  	ret = drv->read_status(dev);
> > >  	if (ret)
> > >  		return ret;
> > >  
> > > +	if (dev->link && !old_link) {
> > > +		ret = phy_wait_aneg_read_status(dev, drv);
> > > +		if (ret)
> > > +			return ret;
> > > +	}
> > 
> > This does not help. dev->link is false after reset, so we never get into
> > phy_wait_aneg_read_status() which waits for a link.
> read_status update the dev->link as we call update_link
> 
> if !dev->link means no cable detected

How should the phy detect the cable if we do not wait for it being
detected?

Here's what I get from my board:

> barebox@Freescale i.MX53 LOCO:/ dhcp 
> r 0x0000 0x0001 0x7809

BMSR_ANEGCOMPLETE (1<<5) not set, this means autonegotiation is not complete

> r 0x0000 0x0004 0x01e1
> r 0x0000 0x0000 0x3000
> r 0x0000 0x0001 0x7809

Still not complete,

> r 0x0000 0x0001 0x7809
> r 0x0000 0x0005 0x0001
> r 0x0000 0x0004 0x01e1
> dhcp failed: Network is down

but we do not wait for it, so network down

> dhcp: Network is down
> barebox@Freescale i.MX53 LOCO:/ dhcp 
> r 0x0000 0x0001 0x782d

Next try, a few seconds later. BMSR_ANEGCOMPLETE is set, autonegotiation is complete,
BMSR_LSTATUS showd that link status is up.

> r 0x0000 0x0001 0x782d
> r 0x0000 0x0005 0x45e1
> r 0x0000 0x0004 0x01e1
> 100Mbps full duplex link detected

And it works.

I do not believe that this behaviour is specific to the special phy on
this board.

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
