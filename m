Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo5.mail-out.ovh.net ([178.32.116.78]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TGtwS-0005dj-6m
 for barebox@lists.infradead.org; Wed, 26 Sep 2012 15:54:29 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 19131FFF803
 for <barebox@lists.infradead.org>; Wed, 26 Sep 2012 18:00:28 +0200 (CEST)
Date: Wed, 26 Sep 2012 17:51:55 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120926155155.GU26553@game.jcrosoft.org>
References: <20120924093122.GD26553@game.jcrosoft.org>
 <1348667976-25910-1-git-send-email-plagnioj@jcrosoft.com>
 <20120926151749.GQ1322@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120926151749.GQ1322@pengutronix.de>
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
Subject: Re: [PATCH 1/1] net/eth: fix link handling
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 17:17 Wed 26 Sep     , Sascha Hauer wrote:
> On Wed, Sep 26, 2012 at 03:59:36PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > The current code handle just the send where we are supposed to the same on rx
> > The current code use activate for both open and link up.
> > 
> > Now we handle both seperatly and update the link at first rx or tx not at
> > open.
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  drivers/net/phy/phy.c |   34 ++++++++++++++++-------
> >  include/linux/phy.h   |    3 +++
> >  include/net.h         |    4 +++
> >  net/eth.c             |   72 ++++++++++++++++++++++++++++++++++++-------------
> >  4 files changed, 85 insertions(+), 28 deletions(-)
> > 
> > diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
> > index e1a24fa..56cc25b 100644
> > --- a/drivers/net/phy/phy.c
> > +++ b/drivers/net/phy/phy.c
> > @@ -29,6 +29,29 @@
> >  
> >  static int genphy_config_init(struct phy_device *phydev);
> >  
> > +int phy_update_status(struct phy_device *dev)
> > +{
> > +	struct phy_driver *drv = to_phy_driver(dev->dev.driver);
> > +	struct eth_device *edev = dev->attached_dev;
> > +	int ret;
> > +
> > +	ret = drv->read_status(dev);
> > +	if (ret)
> > +		return ret;
> > +
> > +	if (dev->link == edev->carrier)
> > +		return 0;
> > +
> > +	dev->adjust_link(edev);
> > +	edev->carrier = dev->link;
> 
> dev->link is 0 for no link, 1 for link. According to this patch carrier
> should be one of CARRIER_ON, CARRIER_OFF, CARRIER_UNKNOW...
> 
> > +
> >  /* Generic PHY support and helper functions */
> >  int genphy_restart_aneg(struct phy_device *phydev);
> >  int genphy_config_aneg(struct phy_device *phydev);
> > diff --git a/include/net.h b/include/net.h
> > index 39fad12..a3474a5 100644
> > --- a/include/net.h
> > +++ b/include/net.h
> > @@ -32,6 +32,10 @@ struct device_d;
> >  
> >  struct eth_device {
> >  	int active;
> > +	#define CARRIER_ON	0
> > +	#define CARRIER_OFF	1
> 
> ... so when the link is up you set edev->link to CARRIER_OFF
> 
> > @@ -124,24 +125,61 @@ int eth_complete(struct string_list *sl, char *instr)
> >  }
> >  #endif
> >  
> > -int eth_send(void *packet, int length)
> > +static int eth_carrier_check(void)
> >  {
> >  	int ret;
> >  
> > -	if (!eth_current)
> > -		return -ENODEV;
> > +	if (!eth_current->phydev) {
> > +		eth_current->carrier = CARRIER_ON;
> > +		return 0;
> > +	}
> >  
> > -	if (!eth_current->active) {
> > -		ret = eth_current->open(eth_current);
> > +	if (eth_current->carrier == CARRIER_UNKNOW ||
> > +	    is_timeout(last_link_check, 10 * SECOND)) {
> > +		ret = phy_update_status(eth_current->phydev);
> >  		if (ret)
> >  			return ret;
> > -
> > -		if (eth_current->phydev)
> > -			eth_current->active = eth_current->phydev->link;
> > -		else
> > -			eth_current->active = 1;
> > +		last_link_check = get_time_ns();
> >  	}
> >  
> > +	if (!eth_current->carrier)
> > +		return -ENETDOWN;
> 
> So we have:
> 
> 	if (eth_current->carrier == CARRIER_ON)
> 		return -ENETDOWN;
> 
> Could you do us a favour and look at your code before sending it?
ok I invert the the macro that I should not even put

but the current code does work

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
