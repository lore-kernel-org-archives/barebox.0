Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo5.mail-out.ovh.net ([46.105.39.65]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TYgjG-0001SE-TR
 for barebox@lists.infradead.org; Wed, 14 Nov 2012 17:26:24 +0000
Received: from mail614.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 8AC95FFABEB
 for <barebox@lists.infradead.org>; Wed, 14 Nov 2012 18:33:58 +0100 (CET)
Date: Wed, 14 Nov 2012 18:24:17 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121114172417.GA31820@game.jcrosoft.org>
References: <1352841245-22767-1-git-send-email-plagnioj@jcrosoft.com>
 <20121114080528.GF10369@pengutronix.de>
 <20121114093458.GH25679@game.jcrosoft.org>
 <20121114120436.GL10369@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121114120436.GL10369@pengutronix.de>
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

On 13:04 Wed 14 Nov     , Sascha Hauer wrote:
> On Wed, Nov 14, 2012 at 10:34:58AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 09:05 Wed 14 Nov     , Sascha Hauer wrote:
> > > On Tue, Nov 13, 2012 at 10:14:05PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > >  
> > > >  int phy_update_status(struct phy_device *dev)
> > > >  {
> > > > @@ -35,11 +54,18 @@ int phy_update_status(struct phy_device *dev)
> > > >  	struct eth_device *edev = dev->attached_dev;
> > > >  	int ret;
> > > >  	int oldspeed = dev->speed, oldduplex = dev->duplex;
> > > > +	int old_link = dev->link;
> > > >  
> > > >  	ret = drv->read_status(dev);
> > > >  	if (ret)
> > > >  		return ret;
> > > >  
> > > > +	if (dev->link && !old_link) {
> > > > +		ret = phy_wait_aneg_read_status(dev, drv);
> > > > +		if (ret)
> > > > +			return ret;
> > > > +	}
> > > 
> > > This does not help. dev->link is false after reset, so we never get into
> > > phy_wait_aneg_read_status() which waits for a link.
> > read_status update the dev->link as we call update_link
> > 
> > if !dev->link means no cable detected
> 
> How should the phy detect the cable if we do not wait for it being
> detected?
we do not have too

I'm going to try on the loco

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
