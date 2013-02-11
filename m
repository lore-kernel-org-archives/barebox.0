Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U4pt5-000593-MN
 for barebox@lists.infradead.org; Mon, 11 Feb 2013 09:41:24 +0000
Date: Mon, 11 Feb 2013 10:41:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130211094121.GU1906@pengutronix.de>
References: <1360317743-25975-1-git-send-email-shc_work@mail.ru>
 <20130211084840.GM1906@pengutronix.de>
 <1360575053.921797761@f74.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360575053.921797761@f74.mail.ru>
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
Subject: Re: [PATCH 01/11] ARM: clps711x: Move lowlevel initialization in
 common CLPS711X location
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Mon, Feb 11, 2013 at 01:30:53PM +0400, Alexander Shiyan wrote:
> Hello.
> 
> ...
> > > diff --git a/arch/arm/boards/clep7212/Makefile b/arch/arm/boards/clep7212/Makefile
> > > index a63aeae..676e867 100644
> > > --- a/arch/arm/boards/clep7212/Makefile
> > > +++ b/arch/arm/boards/clep7212/Makefile
> > > @@ -1,2 +1 @@
> > > -obj-y += lowlevel.o clep7212.o
> > > -pbl-y += lowlevel.o
> > > +obj-y += clep7212.o
> > > diff --git a/arch/arm/boards/clep7212/lowlevel.c b/arch/arm/boards/clep7212/lowlevel.c
> > 
> > I think it's better to keep the reset vector in board specific code.
> > Then you can have a board specific reset vector, which simply calls
> > a SoC specific one. This also solves the Kconfig problem with the
> > PLL setup. So you would have this in your board:
> > 
> > void __naked __bare_init barebox_arm_reset_vector(void)
> > {
> > 	arm_cpu_lowlevel_init();
> > 
> > 	clps711x_barebox_entry();
> > }
> > 
> > You could add different more specific clps711x_* functions which will
> > result in different CPU speeds, or you could pass a PLL value to the
> > entry function, if that better fits your needs.
> > 
> > The rest of this series looks fine.
> 
> Can we leave this basic clps711x_barebox_entry in mach-clps711x/lowlevel.c
> and just additionally mark it as "__weak" for ability to override?

I'm not a big fan of __weak functions. Also, if you mark it as weak this
would mean that you would have to duplicate the other setup the original
weak function does.

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
