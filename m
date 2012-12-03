Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tfa6i-0000Z9-Oa
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 17:47:07 +0000
Date: Mon, 3 Dec 2012 12:46:58 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <20121203162121.GT10369@pengutronix.de>
Message-ID: <alpine.DEB.2.02.1212031243060.27270@oneiric>
References: <alpine.DEB.2.02.1212031041250.19977@oneiric>
 <20121203162121.GT10369@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: how does one enable barebox's low-level debugging?
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Mon, 3 Dec 2012, Sascha Hauer wrote:

> On Mon, Dec 03, 2012 at 10:45:41AM -0500, Robert P. J. Day wrote:
> >
> >   looking through common/startup.c and decided i wanted to see
> > confirmation of all the initcalls running here:
> >
> >         for (initcall = __barebox_initcalls_start;
> >                         initcall < __barebox_initcalls_end; initcall++) {
> >                 debug("initcall-> %pS\n", *initcall);
> >                 result = (*initcall)();
> >                 if (result)
> >                         pr_err("initcall %pS failed: %s\n", *initcall,
> >                                         strerror(-result));
> >         }
> >
> >
> > so i started from scratch, ran "make menuconfig" for both the x-loader
> > and barebox to enable "low level debug messages", but i don't see any
> > difference in the boot output.
> >
> >   i've perused the barebox wiki and don't see anything regarding that
> > setting.  am i doing something wrong?
>
> You have to add a "#define DEBUG" to the file you want to have the
> debug messages from. Add this *above* the includes, just like in the
> kernel.

  ah, got it ... for some reason, i thought it was that menuconfig
setting that was responsible but now i see they're actually
independent features.

  so, as i read it, using "#define DEBUG" causes this to kick in for a
given source file:

#ifdef DEBUG
#define pr_debug(fmt, arg...)   printf(fmt, ##arg)
#else
#define pr_debug(fmt, arg...)   do {} while(0)
#endif

#define debug(fmt, arg...)      pr_debug(fmt, ##arg)

  while that menuconfig setting for "low-level messages" defines
operations for these (totally independent of DEBUG, right?)

# define PUTC_LL(c) do {} while (0)
# define PUTHEX_LL(v) do {} while (0)
# define PUTS_LL(c) do {} while (0)

  thanks.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
