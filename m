Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo5.mail-out.ovh.net ([46.105.47.167]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TDcK6-00005K-9t
 for barebox@lists.infradead.org; Mon, 17 Sep 2012 14:29:19 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id F113FFFAB1B
 for <barebox@lists.infradead.org>; Mon, 17 Sep 2012 16:35:00 +0200 (CEST)
Date: Mon, 17 Sep 2012 16:26:43 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120917142643.GQ25990@game.jcrosoft.org>
References: <20120917054332.GO25990@game.jcrosoft.org>
 <1347861568-20072-1-git-send-email-plagnioj@jcrosoft.com>
 <20120917141336.GB24458@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120917141336.GB24458@pengutronix.de>
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

On 16:13 Mon 17 Sep     , Sascha Hauer wrote:
> On Mon, Sep 17, 2012 at 07:59:28AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
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
> > ---
> 
> [...]
> 
> > +/* Automatically gets and returns the PHY device */
> > +int phy_device_connect(struct eth_device *edev, struct mii_device *bus, int addr,
> > +		       void (*adjust_link) (struct eth_device *edev),
> > +		       u32 flags, phy_interface_t interface)
> > +{
> > +	struct phy_driver* drv;
> > +	struct phy_device* dev = NULL;
> > +	unsigned int i;
> > +	int ret = -EINVAL;
> > +
> > +	if (!edev->phydev) {
> > +		if (addr >= 0) {
> > +			dev = get_phy_device(bus, addr);
> > +			if (IS_ERR(dev)) {
> > +				ret = PTR_ERR(dev);
> > +				goto fail;
> > +			}
> > +
> > +			dev->attached_dev = edev;
> > +			dev->interface = interface;
> > +			dev->dev_flags = flags;
> > +
> > +			ret = register_device(&dev->dev);
> > +			if (ret)
> > +				goto fail;
> > +		} else {
> > +			for (i = 0; i < PHY_MAX_ADDR && !edev->phydev; i++) {
> > +				dev = get_phy_device(bus, i);
> > +				if (IS_ERR(dev))
> > +					continue;
> > +
> > +				dev->attached_dev = edev;
> > +				dev->interface = interface;
> > +				dev->dev_flags = flags;
> > +
> > +				ret = register_device(&dev->dev);
> > +				if (ret)
> > +					goto fail;
> > +			}
> > +
> > +			if (i == 32) {
> > +				ret = -EIO;
> > +				goto fail;
> > +			}
> 
> I just found out the hard way that this does not work with a phy_id of
> 31. I don't know exactly the intention of this code, but I would just
> test for !edev->phydev instead of i==32.
the phy_id is from 0x0 to 0x1f so 31 need to work

tag updated with

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index bfebe3b..ef4e771 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -158,11 +158,11 @@ int phy_device_connect(struct eth_device *edev, struct mii_device *bus, int addr
                                if (ret)
                                        goto fail;
                        }
+               }
 
-                       if (i == 32) {
-                               ret = -EIO;
-                               goto fail;
-                       }
+               if (!edev->phydev) {
+                       ret = -EIO;
+                       goto fail;
                }
        } 

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
