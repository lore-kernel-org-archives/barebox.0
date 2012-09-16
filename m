Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo5.mail-out.ovh.net ([178.32.96.204]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TDAFc-0005uV-OV
 for barebox@lists.infradead.org; Sun, 16 Sep 2012 08:30:49 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 4CD5AFF9AC7
 for <barebox@lists.infradead.org>; Sun, 16 Sep 2012 10:36:29 +0200 (CEST)
Date: Sun, 16 Sep 2012 10:28:13 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120916082813.GE25990@game.jcrosoft.org>
References: <20120914073755.GD20834@game.jcrosoft.org>
 <1347609426-21286-1-git-send-email-plagnioj@jcrosoft.com>
 <20120916081139.GZ24458@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120916081139.GZ24458@pengutronix.de>
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
Subject: Re: [PATCH 1/3] net: introduce phylib
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10:11 Sun 16 Sep     , Sascha Hauer wrote:
> On Fri, Sep 14, 2012 at 09:57:04AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > 
> > Adapt phylib from linux
> > 
> > switch all the driver to it
> > 
> > This will allow to have
> >  - phy drivers
> >  - to only connect the phy at then opening of the device
> >  - if the phy is not ready fail on open
> > 
> > Same behaviour as in linux and will allow to share code and simplify porting.
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> 
> [...]
> 
>  +
> > +/* Automatically gets and returns the PHY device */
> > +int phy_device_connect(struct mii_device *bus, int addr,
> > +		void (*adjust_link) (struct mii_device *miidev))
> 
> The prototype of adjust_link seems wrong. A mii_device is a mii bus with
> potentially multiple phys. adjust_link should work on the phy_device. With
> the above, when a mii_device has multiple phys, a network driver has no
> way to figure out which phy has an updated link.
> 
> This probably bites Renaud who has a single mii bus for multiple network
> devices.
not really as the phydev have a bus field so will be the same

but I guess we wil have to do like in linux attacehd the phydev to the
eth_device

Best Regars,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
