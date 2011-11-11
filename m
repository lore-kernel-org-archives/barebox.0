Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ROovB-0002nt-Qs
 for barebox@lists.infradead.org; Fri, 11 Nov 2011 11:05:24 +0000
Date: Fri, 11 Nov 2011 12:05:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111111110506.GO16886@pengutronix.de>
References: <1320854621-633-1-git-send-email-h.feurstein@gmail.com>
 <20111111104614.GC15318@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20111111104614.GC15318@game.jcrosoft.org>
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
Subject: Re: [PATCH] at91: add config option for ohci driver
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Nov 11, 2011 at 11:46:14AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 17:03 Wed 09 Nov     , Hubert Feurstein wrote:
> > Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
> > Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  drivers/usb/host/Kconfig  |    4 ++++
> >  drivers/usb/host/Makefile |    2 +-
> >  2 files changed, 5 insertions(+), 1 deletions(-)
> > 
> > diff --git a/drivers/usb/host/Kconfig b/drivers/usb/host/Kconfig
> > index 929eb89..96e09e2 100644
> > --- a/drivers/usb/host/Kconfig
> > +++ b/drivers/usb/host/Kconfig
> > @@ -7,3 +7,7 @@ config USB_EHCI_OMAP
> > 
> >  config USB_OHCI
> >  	bool "OHCI driver"
> > +
> > +config USB_OHCI_AT91
> > +	depends on ARCH_AT91
> > +	bool "AT91 OHCI driver"
> Sacahs can you revert this one
> 
> there is no need to have any select for the user
> 
> if you enalbe the OHCI it must just enable it on AT91 directly otherwise you
> have a OHCI enable but without driver

What the patch fixes is that ohci-at91.c is compiled even when USB is
completely disabled, so reverting just it is not a good solution. I'm
open to better solutions.

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
