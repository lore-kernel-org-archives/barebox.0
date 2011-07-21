Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QjojJ-00010Q-HM
	for barebox@lists.infradead.org; Thu, 21 Jul 2011 08:35:42 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu, 21 Jul 2011 10:34:27 +0200
References: <CAA4bVAGTD7BQxa-wh=i8iiZX33aQOR3g1O5o7_G6XQkYCgShnw@mail.gmail.com>
	<20110721031224.GL15388@game.jcrosoft.org>
	<20110721062818.GU20587@pengutronix.de>
In-Reply-To: <20110721062818.GU20587@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201107211034.27574.jbe@pengutronix.de>
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
To: barebox@lists.infradead.org

Sascha Hauer wrote:
> On Thu, Jul 21, 2011 at 05:12:24AM +0200, Jean-Christophe PLAGNIOL-VILLARD 
wrote:
> > On 22:31 Wed 20 Jul     , Sascha Hauer wrote:
> > > On Wed, Jul 20, 2011 at 11:51:04PM +0400, Antony Pavlov wrote:
> > > > Hi!
> > > >
> > > > In include/ns16550.h we have:
> > > >
> > > > struct NS16550_plat {
> > > >         unsigned int clock;
> > > >         unsigned char f_caps;
> > > >         /**
> > > >          * register read access capability
> > > >          */
> > > >         unsigned int (*reg_read) (unsigned long base, unsigned char
> > > > reg_offset); /**
> > > >          * register write access capability
> > > >          */
> > > >         void (*reg_write) (unsigned int val, unsigned long base,
> > > >                                     unsigned char reg_offset);
> > > > };
> > > >
> > > > Why reg_read and reg_write's argument base has type unsigned long?
> > > > IMHO pointer type (void * or char *)  is more natural.
> > >
> > > You're right, I also wondered about this recently when looking at a
> > > patch on the list. I would also rather see void __iomem *. The problem
> > > is that this driver is also used on X86 which uses inb/outb which take
> > > an integer argument.
> > > The Linux driver works around this by having a membase and a iobase
> > > field along with different register accessors. While being cleaner
> > > I'm unsure if we want to go this way.
> >
> > we can do it via resoure and the flasgs IORESOURCE_MEM_8BIT,
> > IORESOURCE_MEM_168BITi etc..
>
> Yes, but this does not solve the problem with different accessor
> functions (and their argument type).

Why not adapt the x86 inb/outb function to the same arguments types than other 
archs are using for their memory mapped access? We are in Barebox, not in the 
kernel. I think we can do so, without damaging something in our _small_ x86 
Barebox world.

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-5121-206917-5128 |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
