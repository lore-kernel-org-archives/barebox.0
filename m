Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qodjw-0003jK-0U
	for barebox@lists.infradead.org; Wed, 03 Aug 2011 15:52:13 +0000
Date: Wed, 3 Aug 2011 17:52:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110803155208.GT31404@pengutronix.de>
References: <CAA4bVAGcGr9Xv1RTMBbzYDxhcq+xrUeZCCvDJMDZ04cjVsPhZw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAGcGr9Xv1RTMBbzYDxhcq+xrUeZCCvDJMDZ04cjVsPhZw@mail.gmail.com>
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
Subject: Re: problem in serial_ns16550.c
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

On Wed, Aug 03, 2011 at 07:35:18PM +0400, Antony Pavlov wrote:
> Hi!
> 
> IMHO there is a problem in ns16550_probe() (see
> drivers/serial/serial_ns16550.c:243).
> 
> There is the construction:
> ------
> if (!(dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK) &&
>             ((plat->reg_read == NULL) || (plat->reg_write == NULL)))
>                 return -EINVAL;
> ------
> 
> Imagine creation of typical serial port:
> ------
> static struct NS16550_plat plat = {
>         .clock = 1843200,
> };
> 
> ...
> 
> add_ns16550_device(-1, UART_ADDR, 8, IORESOURCE_MEM_8BIT, &plat);
> ------
> 
> Here we have plat.reg_read == NULL, plat.reg_write == NULL.
> Usage of add_ns16550_device will make
> dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK == IORESOURCE_MEM_8BIT.
> 
> But take into account this (see include/linux/ioport.h):
> ------
> #define IORESOURCE_MEM_TYPE_MASK        (3<<3)
> #define IORESOURCE_MEM_8BIT             (0<<3)
> ------
> 
> So IORESOURCE_MEM_8BIT == 0 (sic!)
> 
> A son tour, !(dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK) give
> true, if flags select IORESOURCE_MEM_8BIT.
> 
> As a result, if add_ns16550_device() take IORESOURCE_MEM_8BIT, and
> plat->reg_read == NULL, plat->reg_write == NULL then ns16550_probe()
> will return -EINVAL.

Ok, then we have to check for the existence of plat->reg_read/write
first. If the exist, we have to skip further IORESOURCE_MEM_xBIT checks.
If they don't exist we do whatever IORESOURCE_MEM_xBIT indicates.

That only leaves the problem that if a user registers a ns16550 driver
without reg_read/write and does not care about resource types either
the driver defaults to 8 bit mmio accesses, but I think we can live with
that.

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
