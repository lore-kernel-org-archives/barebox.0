Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBRQF-0006Ri-BW
 for barebox@lists.infradead.org; Tue, 11 Sep 2012 14:26:40 +0000
Date: Tue, 11 Sep 2012 16:26:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120911142637.GC6180@pengutronix.de>
References: <1347370313-15184-1-git-send-email-s.hauer@pengutronix.de>
 <1347370313-15184-3-git-send-email-s.hauer@pengutronix.de>
 <20120911140349.GK31207@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120911140349.GK31207@game.jcrosoft.org>
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
Subject: Re: [PATCH 2/5] SPI: Put SPI devices on their own bus bus
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Sep 11, 2012 at 04:03:49PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 15:31 Tue 11 Sep     , Sascha Hauer wrote:
> > This patch adds a SPI bus on which the SPI devices and drivers register.
> > This makes it cleaner as SPI devices won't accidently end up probed by
> > a platform_device driver.
> > 
> >  EXPORT_SYMBOL(spi_write_then_read);
> > +
> > +static int spi_match(struct device_d *dev, struct driver_d *drv)
> > +{
> > +	return strcmp(dev->name, drv->name) ? -1 : 0;
> > +}
> > +
> > +static int spi_probe(struct device_d *dev)
> > +{
> > +	return dev->driver->probe(dev);
> > +}
> > +
> > +static void spi_remove(struct device_d *dev)
> > +{
> > +	dev->driver->remove(dev);
> > +}
> this is code is commonon with the generix drvier can we share it?

One of the next step in this area probably is to call a device->probe
function with a struct i2c_device / struct spi_device, so I don't think
it's worth the effort now.

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
