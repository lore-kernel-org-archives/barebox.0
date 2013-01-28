Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TzkM9-0001sP-OF
 for barebox@lists.infradead.org; Mon, 28 Jan 2013 08:46:22 +0000
Date: Mon, 28 Jan 2013 09:46:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130128084619.GJ1906@pengutronix.de>
References: <1359310079-19688-1-git-send-email-plagnioj@jcrosoft.com>
 <20130128073246.GE1906@pengutronix.de>
 <20130128082814.GP26329@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130128082814.GP26329@game.jcrosoft.org>
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
Subject: Re: [PATCH 1/2] at91rm9200: fix default TEXT_BASE to 15MiB
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Jan 28, 2013 at 09:28:14AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 08:32 Mon 28 Jan     , Sascha Hauer wrote:
> > On Sun, Jan 27, 2013 at 07:07:58PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > 
> > Applied, thanks
> 
> can we have those 2 for master
> 
> as we report the kernel that we have 64MiB of sdram instead of 32MiB

Ok, applied for master.

Sascha

> 
> Best Regards,
> J.
> > 
> > Sascha
> > 
> > > ---
> > >  arch/arm/mach-at91/Kconfig |    1 +
> > >  1 file changed, 1 insertion(+)
> > > 
> > > diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
> > > index 9d4359e..955328f 100644
> > > --- a/arch/arm/mach-at91/Kconfig
> > > +++ b/arch/arm/mach-at91/Kconfig
> > > @@ -23,6 +23,7 @@ config ARCH_TEXT_BASE
> > >  	default 0x73f00000 if ARCH_AT91SAM9G45
> > >  	default 0x26f00000 if ARCH_AT91SAM9X5
> > >  	default 0x21f00000 if MACH_ANIMEO_IP
> > > +	default 0x20f00000 if ARCH_AT91RM9200
> > >  	default 0x23f00000
> > >  
> > >  config BOARDINFO
> > > -- 
> > > 1.7.10.4
> > > 
> > > 
> > > _______________________________________________
> > > barebox mailing list
> > > barebox@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/barebox
> > > 
> > 
> > -- 
> > Pengutronix e.K.                           |                             |
> > Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> > Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
