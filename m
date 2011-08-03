Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo3.mail-out.ovh.net ([87.98.184.158]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qoeju-0004dk-On
	for barebox@lists.infradead.org; Wed, 03 Aug 2011 16:56:15 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 7379BFFC01C
	for <barebox@lists.infradead.org>;
	Wed,  3 Aug 2011 18:57:22 +0200 (CEST)
Date: Wed, 3 Aug 2011 18:38:08 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110803163808.GE24730@game.jcrosoft.org>
References: <CAA4bVAGcGr9Xv1RTMBbzYDxhcq+xrUeZCCvDJMDZ04cjVsPhZw@mail.gmail.com>
	<20110803155208.GT31404@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110803155208.GT31404@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

On 17:52 Wed 03 Aug     , Sascha Hauer wrote:
> On Wed, Aug 03, 2011 at 07:35:18PM +0400, Antony Pavlov wrote:
> > Hi!
> > 
> > IMHO there is a problem in ns16550_probe() (see
> > drivers/serial/serial_ns16550.c:243).
> > 
> > There is the construction:
> > ------
> > if (!(dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK) &&
> >             ((plat->reg_read == NULL) || (plat->reg_write == NULL)))
> >                 return -EINVAL;
> > ------
> > 
> > Imagine creation of typical serial port:
> > ------
> > static struct NS16550_plat plat = {
> >         .clock = 1843200,
> > };
> > 
> > ...
> > 
> > add_ns16550_device(-1, UART_ADDR, 8, IORESOURCE_MEM_8BIT, &plat);
> > ------
> > 
> > Here we have plat.reg_read == NULL, plat.reg_write == NULL.
> > Usage of add_ns16550_device will make
> > dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK == IORESOURCE_MEM_8BIT.
> > 
> > But take into account this (see include/linux/ioport.h):
> > ------
> > #define IORESOURCE_MEM_TYPE_MASK        (3<<3)
> > #define IORESOURCE_MEM_8BIT             (0<<3)
> > ------
> > 
> > So IORESOURCE_MEM_8BIT == 0 (sic!)
> > 
> > A son tour, !(dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK) give
> > true, if flags select IORESOURCE_MEM_8BIT.
> > 
> > As a result, if add_ns16550_device() take IORESOURCE_MEM_8BIT, and
> > plat->reg_read == NULL, plat->reg_write == NULL then ns16550_probe()
> > will return -EINVAL.
> 
> Ok, then we have to check for the existence of plat->reg_read/write
> first. If the exist, we have to skip further IORESOURCE_MEM_xBIT checks.
> If they don't exist we do whatever IORESOURCE_MEM_xBIT indicates.
> 
> That only leaves the problem that if a user registers a ns16550 driver
> without reg_read/write and does not care about resource types either
> the driver defaults to 8 bit mmio accesses, but I think we can live with
> that.
that was my idea at the beginning

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
