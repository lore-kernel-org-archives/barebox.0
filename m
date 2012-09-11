Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBMSz-0004OY-1T
 for barebox@lists.infradead.org; Tue, 11 Sep 2012 09:09:09 +0000
Date: Tue, 11 Sep 2012 11:09:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120911090906.GQ18243@pengutronix.de>
References: <1347205442-14299-1-git-send-email-plagnioj@jcrosoft.com>
 <20120910071420.GS18243@pengutronix.de>
 <20120910130800.GB31207@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120910130800.GB31207@game.jcrosoft.org>
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
Subject: Re: [PATCH 1/3 v2] net: introduce phylib
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Sep 10, 2012 at 03:08:00PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 09:14 Mon 10 Sep     , Sascha Hauer wrote:
> > On Sun, Sep 09, 2012 at 05:44:00PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > +
> > > +	drv->config_init(dev);
> > 
> > Call _dev->driver->probe instead? A phy driver would have to convert the
> > device argument to a phy_device using to_phy_device(), but this would be
> > the same as other subsystems do it currently.
> 
> the phy probe is the for the driver which I did not add but I could 
> here the config_init is correct

I have assumed that phy drivers would need the opportunity to allocate
memory, and hence also to free it on remove. Appearantly this is not
the case, even in Linux. So ok, let's keep it this way.

> > 
> > > +
> > > +static void phy_remove(struct device_d *dev)
> > > +{
> > > +}
> > > +
> > > +struct bus_type phy_bustype = {
> > > +	.name = "phy",
> > > +	.match = phy_match,
> > > +	.probe = phy_probe,
> > > +	.remove = phy_remove,
> > 
> > Then you could just remove the .remove callback which has the effect
> > that a phy drivers .remove function would be called.
> the generic code make the remove mandatory

Indeed, I thought the generic code bahaves differently here.

Sascha

> 
> > 
> > > +};
> > > +
> > > +int phy_driver_register(struct phy_driver *phydrv)
> > > +{
> > > +	if (!phydrv)
> > > +		return -1;
> > 
> > Drop this check. A stack dump contains more information than an error
> > code that nobody checks. EPERM would be the wrong error code anyway.

Would you mind dropping this? Then we are free to go.

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
