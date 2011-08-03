Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo3.mail-out.ovh.net ([87.98.178.58]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qoeh9-0004br-8T
	for barebox@lists.infradead.org; Wed, 03 Aug 2011 16:53:24 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 651A6FFBF0E
	for <barebox@lists.infradead.org>;
	Wed,  3 Aug 2011 18:54:29 +0200 (CEST)
Date: Wed, 3 Aug 2011 18:35:14 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110803163514.GD24730@game.jcrosoft.org>
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

On 19:35 Wed 03 Aug     , Antony Pavlov wrote:
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
yeah we can drop the check simply

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
