Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RXWJn-0004PQ-RF
 for barebox@lists.infradead.org; Mon, 05 Dec 2011 11:02:45 +0000
Date: Mon, 5 Dec 2011 12:02:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111205110232.GB27267@pengutronix.de>
References: <20111205084032.GY27267@pengutronix.de>
 <611c10fc-3097-4519-84b6-c56508dad731@zimbra1-e1.priv.proxad.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <611c10fc-3097-4519-84b6-c56508dad731@zimbra1-e1.priv.proxad.net>
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
Subject: Re: [PATCH V3 3/3] arm/mach-pxa: add mioa701 board
To: robert.jarzmik@free.fr
Cc: barebox@lists.infradead.org

On Mon, Dec 05, 2011 at 11:49:23AM +0100, robert.jarzmik@free.fr wrote:
> ----- Mail original -----
> De: "Sascha Hauer" <s.hauer@pengutronix.de>
> On Sat, Dec 03, 2011 at 06:02:02PM +0100, Robert Jarzmik wrote:
> > Add Mitac MioA701 board initial support.
> > The support only provides basic boot and a console over USB
> > (serial gadget).
> 
> > This currently does not compile because mach/udc_pxa2xx.h is missing.
> > We could either remove the udc support or wait with your board support
> > until the udc driver is in the tree.
> I think we can safely wait for the UDC to reach the tree. The board support
> is still a new born, and there's no hurry in getting it merged.
> 
> > I'm fine with your udc driver, I was just waiting for the cache issues
> > to be resolved before applying it.
> Which cache issues ? I think I missed a mail in there ... I only have
> in mind the discussion about page 0 mapping for the MTD driver ... I
> must have missed something.

I thought the udc driver currently does not work with mmu enabled
because it does not have any dma operations.

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
