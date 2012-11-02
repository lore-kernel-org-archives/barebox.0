Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo4.mail-out.ovh.net ([46.105.34.195]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TUDWJ-0001IW-1O
 for barebox@lists.infradead.org; Fri, 02 Nov 2012 09:26:33 +0000
Received: from mail247.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id CAED2104F244
 for <barebox@lists.infradead.org>; Fri,  2 Nov 2012 10:33:38 +0100 (CET)
Date: Fri, 2 Nov 2012 10:24:19 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121102092419.GN29599@game.jcrosoft.org>
References: <20121101094216.GI29599@game.jcrosoft.org>
 <1351763092-5781-1-git-send-email-plagnioj@jcrosoft.com>
 <20121102072940.GB1641@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121102072940.GB1641@pengutronix.de>
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
Subject: Re: [PATCH 1/4] i2c: adapter: register it's own device
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 08:29 Fri 02 Nov     , Sascha Hauer wrote:
> On Thu, Nov 01, 2012 at 10:44:49AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > so we can show the this of i2c busses
> > set the bus device as parent of all devices.
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  drivers/i2c/busses/i2c-imx.c  |   20 ++++++++++----------
> >  drivers/i2c/busses/i2c-omap.c |   30 +++++++++++++++---------------
> >  drivers/i2c/i2c.c             |   18 +++++++++++++++---
> >  include/i2c/i2c.h             |    2 +-
> >  4 files changed, 41 insertions(+), 29 deletions(-)
> > 
> >  int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
> >  {
> > -	if (i2c_get_adapter(adapter->nr))
> > -		return -EBUSY;
> 
> If you remove this and instead depend on register_device bailing out
> later then you should change the error value register_device returns
> to -EBUSY. Currently it returns -EINVAL, -EBUSY seems much better here.
> 
> 
> > +	int ret;
> > +
> > +	adapter->dev.id = adapter->nr;
> > +	strcpy(adapter->dev.name, "i2c");
> > +
> > +	if (adapter->dev.parent)
> > +		dev_add_child(adapter->dev.parent, &adapter->dev);
> 
> We should push the dev_add_child to the driver core. Doing this here
> means that...
> 
> > +
> > +	ret = register_device(&adapter->dev);
> > +	if (ret)
> > +		return ret;
> 
> ... the parents child list will be corrupted when register_device fails.
> At least w1 and mdiobus have the same problem. But ok, we can fix that
> later.

ok I'll take a look after the whole sam9x5 stuff will merged

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
