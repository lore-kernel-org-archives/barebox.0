Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QjmkC-0007DN-DQ
	for barebox@lists.infradead.org; Thu, 21 Jul 2011 06:28:25 +0000
Date: Thu, 21 Jul 2011 08:28:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110721062818.GU20587@pengutronix.de>
References: <CAA4bVAGTD7BQxa-wh=i8iiZX33aQOR3g1O5o7_G6XQkYCgShnw@mail.gmail.com>
	<20110720203156.GT20587@pengutronix.de>
	<20110721031224.GL15388@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110721031224.GL15388@game.jcrosoft.org>
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
Subject: Re: serial_ns16550 driver question
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox <barebox@lists.infradead.org>

On Thu, Jul 21, 2011 at 05:12:24AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 22:31 Wed 20 Jul     , Sascha Hauer wrote:
> > On Wed, Jul 20, 2011 at 11:51:04PM +0400, Antony Pavlov wrote:
> > > Hi!
> > > 
> > > In include/ns16550.h we have:
> > > 
> > > struct NS16550_plat {
> > >         unsigned int clock;
> > >         unsigned char f_caps;
> > >         /**
> > >          * register read access capability
> > >          */
> > >         unsigned int (*reg_read) (unsigned long base, unsigned char reg_offset);
> > >         /**
> > >          * register write access capability
> > >          */
> > >         void (*reg_write) (unsigned int val, unsigned long base,
> > >                                     unsigned char reg_offset);
> > > };
> > > 
> > > Why reg_read and reg_write's argument base has type unsigned long?
> > > IMHO pointer type (void * or char *)  is more natural.
> > 
> > You're right, I also wondered about this recently when looking at a
> > patch on the list. I would also rather see void __iomem *. The problem
> > is that this driver is also used on X86 which uses inb/outb which take
> > an integer argument.
> > The Linux driver works around this by having a membase and a iobase
> > field along with different register accessors. While being cleaner
> > I'm unsure if we want to go this way.
> 
> we can do it via resoure and the flasgs IORESOURCE_MEM_8BIT,
> IORESOURCE_MEM_168BITi etc..

Yes, but this does not solve the problem with different accessor
functions (and their argument type).

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
