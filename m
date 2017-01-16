Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cT1UT-00088p-Ty
 for barebox@lists.infradead.org; Mon, 16 Jan 2017 07:14:08 +0000
Date: Mon, 16 Jan 2017 08:13:41 +0100
From: "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Message-ID: <20170116071341.vvp5cmdv66qsnx3a@pengutronix.de>
References: <12b302f6-75ae-bf83-370b-abaf0aef9d29@mev.co.uk>
 <20170111083254.hndsbxkeh7c5x3gt@pengutronix.de>
 <1484329660.30810.68.camel@kymetacorp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1484329660.30810.68.camel@kymetacorp.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Problem loading environment from spi-nor flash partition since
 barebox 2017.01.0
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, "abbotti@mev.co.uk" <abbotti@mev.co.uk>

On Fri, Jan 13, 2017 at 05:46:41PM +0000, Trent Piepho wrote:
> On Wed, 2017-01-11 at 09:32 +0100, Sascha Hauer wrote:
> > With (real) SPI this is a little different and works as expected: If the
> > qspi node would be handled by the SPI layer then the SPI core would
> > register the child nodes as devices on a SPI bus. The normal probe
> > mechanism would then bind the device and the driver together.
> > 
> > With the cadence-quadspi driver a device is registered in
> > cqspi_setup_flash(), but there is never a driver attached to it, thus
> > the dev->driver test fails.
> > 
> > The proper way if probably to register the n25q00 device on a qspi bus
> > and to provide a qspi-nor-flash driver which gets probed then.
> > The not-so-proper, faster way could be to just create a dummy driver
> > struct and attach it to the device allocated in cqspi_setup_flash().
> 
> The qspi device is more like an MTD device than a SPI master.  It just
> supports memory devices, not arbitrary SPI slaves that have their own
> drivers.
> 
> But that said, there is sort of a driver for the SPI NOR chips attached
> to the qspi in spi-nor.c, but it is not a real 'struct driver_d' driver.
> Maybe it could be?
> 
> qspi could create a "qspi" or "spi-flash" bus (I don't think it will fit
> well as a generic SPI bus) with the flash devices on it, and then
> spi-nor could bind to them like a normal driver.

Yes, that was what I tried to express in my mail.

> 
> Or spi-nor could have a driver_d that's not registered and make
> nor->dev->driver point to it in spi_nor_scan().

Yes.

> 
> Or spi_nor_scan() could just set nor->dev->driver =
> nor->dev->parent->driver.

Probably not a good idea. I looks wrong.

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
