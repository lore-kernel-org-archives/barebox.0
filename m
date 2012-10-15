Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo5.mail-out.ovh.net ([178.32.228.5])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TNm1K-0005fp-Hw
 for barebox@lists.infradead.org; Mon, 15 Oct 2012 14:51:56 +0000
Received: from mail419.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id D30DEFFA294
 for <barebox@lists.infradead.org>; Mon, 15 Oct 2012 16:58:31 +0200 (CEST)
Date: Mon, 15 Oct 2012 16:49:35 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121015144935.GA5803@game.jcrosoft.org>
References: <20121014205929.GU13639@game.jcrosoft.org>
 <20121015071010.GI27665@pengutronix.de>
 <20121015102307.GV13639@game.jcrosoft.org>
 <20121015132125.GM27665@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121015132125.GM27665@pengutronix.de>
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
Subject: Re: [PATCH 00/12] add bus device
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 15:21 Mon 15 Oct     , Sascha Hauer wrote:
> On Mon, Oct 15, 2012 at 12:23:07PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 09:10 Mon 15 Oct     , Sascha Hauer wrote:
> > > +	ret = register_device(&bus->bus_dev);
> > > +	if (ret)
> > > +		return ret;
> > > +
> > >  	list_add_tail(&bus->list, &bus_list);
> > >  
> > >  	return 0;
> > > diff --git a/drivers/base/driver.c b/drivers/base/driver.c
> > > index 5b7286a..395546b 100644
> > > --- a/drivers/base/driver.c
> > > +++ b/drivers/base/driver.c
> > > @@ -127,6 +127,11 @@ int register_device(struct device_d *new_device)
> > >  
> > >  	list_add_tail(&new_device->bus_list, &new_device->bus->device_list);
> > >  
> > > +	if (!new_device->parent) {
> > > +		new_device->parent = &new_device->bus->dev;
> > > +		dev_add_child(new_device->parent, new_device);
> > and I was wanting to add global name "barebox" and add everyone under to it
> > 
> > I choose to do let the bus manage the child
> > and to create a device or not
> 
> Any idea why we would need this?
mdio bus as example I was thinking to drop the device as they are always
attached to a ethernet device

input bus too

as example some bus as device specific so no need to add device as the device
is already here

I already implement this on arm and so it in the kernel arm too

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
