Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBglC-00042I-55
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 06:49:20 +0000
Date: Wed, 12 Sep 2012 08:47:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120912064711.GF6180@pengutronix.de>
References: <1347370313-15184-1-git-send-email-s.hauer@pengutronix.de>
 <1347370313-15184-4-git-send-email-s.hauer@pengutronix.de>
 <20120911140455.GL31207@game.jcrosoft.org>
 <20120911142722.GD6180@pengutronix.de>
 <20120911155619.GM31207@game.jcrosoft.org>
 <20120911161057.GE6180@pengutronix.de>
 <20120911172427.GN31207@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120911172427.GN31207@game.jcrosoft.org>
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
Subject: Re: [PATCH 3/5] I2C: Put I2C devices on their own bus
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Sep 11, 2012 at 07:24:27PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > > > +
> > > > > > +static int i2c_match(struct device_d *dev, struct driver_d *drv)
> > > > > > +{
> > > > > > +	return strcmp(dev->name, drv->name) ? -1 : 0;
> > > > > can we check the address too here
> > > > 
> > > > What do you mean?
> > > i2c client address is valid
> > 
> > This should be done at i2c_new_device() time.
> so what are you doing here except check the driver name?
> 
> which is the same as the current core code

What do you mean with 'i2c client address is valid'? address <= 0x7f?

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
