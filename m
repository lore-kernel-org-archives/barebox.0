Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo4.mail-out.ovh.net ([91.121.62.11]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qjjwu-00052h-Hc
	for barebox@lists.infradead.org; Thu, 21 Jul 2011 03:29:21 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 91766FF9620
	for <barebox@lists.infradead.org>;
	Thu, 21 Jul 2011 05:29:52 +0200 (CEST)
Date: Thu, 21 Jul 2011 05:12:24 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110721031224.GL15388@game.jcrosoft.org>
References: <CAA4bVAGTD7BQxa-wh=i8iiZX33aQOR3g1O5o7_G6XQkYCgShnw@mail.gmail.com>
	<20110720203156.GT20587@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110720203156.GT20587@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

On 22:31 Wed 20 Jul     , Sascha Hauer wrote:
> On Wed, Jul 20, 2011 at 11:51:04PM +0400, Antony Pavlov wrote:
> > Hi!
> > 
> > In include/ns16550.h we have:
> > 
> > struct NS16550_plat {
> >         unsigned int clock;
> >         unsigned char f_caps;
> >         /**
> >          * register read access capability
> >          */
> >         unsigned int (*reg_read) (unsigned long base, unsigned char reg_offset);
> >         /**
> >          * register write access capability
> >          */
> >         void (*reg_write) (unsigned int val, unsigned long base,
> >                                     unsigned char reg_offset);
> > };
> > 
> > Why reg_read and reg_write's argument base has type unsigned long?
> > IMHO pointer type (void * or char *)  is more natural.
> 
> You're right, I also wondered about this recently when looking at a
> patch on the list. I would also rather see void __iomem *. The problem
> is that this driver is also used on X86 which uses inb/outb which take
> an integer argument.
> The Linux driver works around this by having a membase and a iobase
> field along with different register accessors. While being cleaner
> I'm unsure if we want to go this way.

we can do it via resoure and the flasgs IORESOURCE_MEM_8BIT,
IORESOURCE_MEM_168BITi etc..

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
