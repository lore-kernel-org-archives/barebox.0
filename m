Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo3.mail-out.ovh.net ([178.32.228.3])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TYZP3-0007uU-B9
 for barebox@lists.infradead.org; Wed, 14 Nov 2012 09:37:02 +0000
Received: from mail412.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 7018FFF9B56
 for <barebox@lists.infradead.org>; Wed, 14 Nov 2012 10:47:41 +0100 (CET)
Date: Wed, 14 Nov 2012 10:34:58 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121114093458.GH25679@game.jcrosoft.org>
References: <1352841245-22767-1-git-send-email-plagnioj@jcrosoft.com>
 <20121114080528.GF10369@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121114080528.GF10369@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:05 Wed 14 Nov     , Sascha Hauer wrote:
> On Tue, Nov 13, 2012 at 10:14:05PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > if the autoneg was start by the hw wait it to be finished
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  drivers/net/phy/phy.c |   26 ++++++++++++++++++++++++++
> >  1 file changed, 26 insertions(+)
> > 
> > diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
> > index 0c2e602..43738c2 100644
> > --- a/drivers/net/phy/phy.c
> > +++ b/drivers/net/phy/phy.c
> > @@ -28,6 +28,25 @@
> >  #define PHY_AN_TIMEOUT	10
> >  
> >  static int genphy_config_init(struct phy_device *phydev);
> > +static int phy_aneg_done(struct phy_device *phydev);
> > +
> > +static int phy_wait_aneg_read_status(struct phy_device *dev, struct phy_driver *drv)
> > +{
> > +	int ret;
> > +
> > +	if (AUTONEG_ENABLE != dev->autoneg)
> > +		return 0;
> > +
> > +	ret = phy_aneg_done(dev);
> > +	if (ret)
> > +		return ret;
> > +
> > +	/*
> > +	 * re-read the status as the aneg may not be finished
> > +	 * when we read it the first time
> > +	 */
> > +	return drv->read_status(dev);
> > +}
> >  
> >  int phy_update_status(struct phy_device *dev)
> >  {
> > @@ -35,11 +54,18 @@ int phy_update_status(struct phy_device *dev)
> >  	struct eth_device *edev = dev->attached_dev;
> >  	int ret;
> >  	int oldspeed = dev->speed, oldduplex = dev->duplex;
> > +	int old_link = dev->link;
> >  
> >  	ret = drv->read_status(dev);
> >  	if (ret)
> >  		return ret;
> >  
> > +	if (dev->link && !old_link) {
> > +		ret = phy_wait_aneg_read_status(dev, drv);
> > +		if (ret)
> > +			return ret;
> > +	}
> 
> This does not help. dev->link is false after reset, so we never get into
> phy_wait_aneg_read_status() which waits for a link.
read_status update the dev->link as we call update_link

if !dev->link means no cable detected

if the phy is reset the link is ready immediately or that means the reset is
not finished and the phy is not stable

this may means the phy need specific init

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
