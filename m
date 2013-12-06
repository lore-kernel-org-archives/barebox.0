Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22f.google.com ([2a00:1450:400c:c05::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vou51-0002te-6T
 for barebox@lists.infradead.org; Fri, 06 Dec 2013 12:00:23 +0000
Received: by mail-wi0-f175.google.com with SMTP id hi5so735480wib.8
 for <barebox@lists.infradead.org>; Fri, 06 Dec 2013 04:00:01 -0800 (PST)
Date: Fri, 6 Dec 2013 12:59:56 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20131206115955.GA21997@omega>
References: <1386199691-12032-1-git-send-email-alex.aring@gmail.com>
 <20131206090732.GA28174@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131206090732.GA28174@pengutronix.de>
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
Subject: Re: [PATCH] serial: add missing depends on ARCH_ZYNQ
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Steffen,

On Fri, Dec 06, 2013 at 10:07:32AM +0100, Steffen Trumtrar wrote:
> Hi!
> 
> On Thu, Dec 05, 2013 at 12:28:11AM +0100, Alexander Aring wrote:
> > The cadence serial driver is some ARCH_ZYNQ specific driver.
> > Add a depends on ARCH_ZYNQ for this driver.
> > 
> > Signed-off-by: Alexander Aring <alex.aring@gmail.com>
> > ---
> >  drivers/serial/Kconfig | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
> > index 11fc155..d520dda 100644
> > --- a/drivers/serial/Kconfig
> > +++ b/drivers/serial/Kconfig
> > @@ -119,6 +119,7 @@ config DRIVER_SERIAL_OMAP4_USBBOOT
> >  
> >  config DRIVER_SERIAL_CADENCE
> >  	bool "Cadence UART driver"
> > +	depends on ARCH_ZYNQ
> >  	help
> >  	  Say Y here if you have a Cadence serial IP core.
> >  
> > -- 
> > 1.8.4.2
> > 
> > 
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> > 
> 
> Does is not compile with other archs?
> This is intended to be a generic driver; Zynq just happens to be the only user.
> -> It should not depend on ARCH_ZYNQ.

oh, I first figure out a depends on COMMON_CLK was missing and though
that this driver is a platform specific driver.

When it's a generic driver we should add a "depends on COMMON_CLK"
because there are some generic clock api calls.

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
