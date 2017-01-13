Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([208.187.125.9])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cS5wO-00032u-I4
 for barebox@lists.infradead.org; Fri, 13 Jan 2017 17:47:10 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Fri, 13 Jan 2017 17:46:41 +0000
Message-ID: <1484329660.30810.68.camel@kymetacorp.com>
References: <12b302f6-75ae-bf83-370b-abaf0aef9d29@mev.co.uk>
 <20170111083254.hndsbxkeh7c5x3gt@pengutronix.de>
In-Reply-To: <20170111083254.hndsbxkeh7c5x3gt@pengutronix.de>
Content-Language: en-US
Content-ID: <53F29A8C24E9E541999AED5F99AD162C@kymetacorp.com>
MIME-Version: 1.0
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
To: "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, "abbotti@mev.co.uk" <abbotti@mev.co.uk>

On Wed, 2017-01-11 at 09:32 +0100, Sascha Hauer wrote:
> With (real) SPI this is a little different and works as expected: If the
> qspi node would be handled by the SPI layer then the SPI core would
> register the child nodes as devices on a SPI bus. The normal probe
> mechanism would then bind the device and the driver together.
> 
> With the cadence-quadspi driver a device is registered in
> cqspi_setup_flash(), but there is never a driver attached to it, thus
> the dev->driver test fails.
> 
> The proper way if probably to register the n25q00 device on a qspi bus
> and to provide a qspi-nor-flash driver which gets probed then.
> The not-so-proper, faster way could be to just create a dummy driver
> struct and attach it to the device allocated in cqspi_setup_flash().

The qspi device is more like an MTD device than a SPI master.  It just
supports memory devices, not arbitrary SPI slaves that have their own
drivers.

But that said, there is sort of a driver for the SPI NOR chips attached
to the qspi in spi-nor.c, but it is not a real 'struct driver_d' driver.
Maybe it could be?

qspi could create a "qspi" or "spi-flash" bus (I don't think it will fit
well as a generic SPI bus) with the flash devices on it, and then
spi-nor could bind to them like a normal driver.

Or spi-nor could have a driver_d that's not registered and make
nor->dev->driver point to it in spi_nor_scan().

Or spi_nor_scan() could just set nor->dev->driver =
nor->dev->parent->driver.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
