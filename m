Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo5.mail-out.ovh.net ([178.32.119.138]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TDTnz-0001Vn-RI
 for barebox@lists.infradead.org; Mon, 17 Sep 2012 05:23:37 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 78D1BFF9B82
 for <barebox@lists.infradead.org>; Mon, 17 Sep 2012 07:29:16 +0200 (CEST)
Date: Mon, 17 Sep 2012 07:20:58 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120917052058.GM25990@game.jcrosoft.org>
References: <20120916124223.GK25990@game.jcrosoft.org>
 <1347818098-10408-1-git-send-email-plagnioj@jcrosoft.com>
 <20120916210158.GL6180@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120916210158.GL6180@pengutronix.de>
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
Subject: Re: [PATCH 1/1] net: introduce phylib
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 23:01 Sun 16 Sep     , Sascha Hauer wrote:
> On Sun, Sep 16, 2012 at 07:54:58PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Adapt phylib from linux
> > 
> > switch all the driver to it
> > 
> > This will allow to have
> >  - phy drivers
> >  - to only connect the phy at then opening of the device
> >  - if the phy is not ready or not up fail on open
> > 
> > Same behaviour as in linux and will allow to share code and simplify porting.
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> 
> > +/* Automatically gets and returns the PHY device */
> > +int phy_device_connect(struct mii_device *bus, int addr,
> > +		       void (*adjust_link) (struct eth_device *edev),
> > +		       u32 flags, phy_interface_t interface)
> > +{
> > +	struct eth_device *edev = bus->edev;
> 
> You should pass in a struct eth_device pointer here instead of getting
> it from bus->edev because a struct mii_device can have multiple ethernet
> devices. The next step would be to remove the edev member from struct
> mii_dev and add it to struct phy_device insted.
pass the edev ok.
drop the edbua in mii_device ok.
add the phy_device no
the miidev is just the bus do not care about the phydev.
we add attached the phydev to the eth_device not the mii_device
> 
> BTW no typedefs please. Use enum phy_interface instead.
linux code I really do not want to touch it

Best Regards,
J.
> 
> Sascha
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
