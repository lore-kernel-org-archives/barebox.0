Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f50.google.com ([209.85.214.50])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ty79h-0006mZ-RE
 for barebox@lists.infradead.org; Wed, 23 Jan 2013 20:42:46 +0000
Received: by mail-bk0-f50.google.com with SMTP id jf3so4757052bkc.37
 for <barebox@lists.infradead.org>; Wed, 23 Jan 2013 12:42:44 -0800 (PST)
Date: Wed, 23 Jan 2013 21:43:19 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20130123204318.GD3427@x61s.8.8.8.8>
References: <1358257730-20579-1-git-send-email-alex.aring@gmail.com>
 <1358257730-20579-9-git-send-email-alex.aring@gmail.com>
 <20130117095431.GB1906@pengutronix.de>
 <20130123200134.GA3427@x61s.8.8.8.8>
 <20130123201844.GY1906@pengutronix.de>
 <20130123202501.GC3427@x61s.8.8.8.8>
 <20130123203051.GQ26329@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130123203051.GQ26329@game.jcrosoft.org>
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
Subject: Re: [PATCH 8/8] memtest: add rewritten memtest command
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Jan 23, 2013 at 09:30:51PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 21:25 Wed 23 Jan     , Alexander Aring wrote:
> > Hi Sascha,
> > 
> > On Wed, Jan 23, 2013 at 09:18:44PM +0100, Sascha Hauer wrote:
> > > Hi Alexander,
> > > 
> > > On Wed, Jan 23, 2013 at 09:01:36PM +0100, Alexander Aring wrote:
> > > > > > +/*
> > > > > > + * PTE flags variables to set cached and
> > > > > > + * uncached regions.
> > > > > > + */
> > > > > > +static uint32_t PTE_FLAGS_CACHED;
> > > > > > +static uint32_t PTE_FLAGS_UNCACHED;
> > > > > 
> > > > > Please no uppercase letters for variable names.
> > > > >
> > > > Ok. I took it from mach/arm/cpu/mmu.c, should I create a patch which
> > > > rename it in arch/arm/cpu/mmu.c lower case, too?
> > > 
> > > Yes, that would be great. I must have forgotten reviewing my own patch
> > > ;)
> > > 
> > > > 
> > > > > > +#else
> > > > > > +static char optstr[] = "s:e:i:b";
> > > > > > +#endif
> > > > > > +
> > > > > > +/*
> > > > > > + * Perform a memory test. The complete test
> > > > > > + * loops until interrupted by ctrl-c.
> > > > > > + */
> > > > > > +static int mem_test(vu_long _start, vu_long _end,
> > > > > > +		int bus_only)
> > > > > 
> > > > > It would be good to move this function to common/memory_test.c. This way
> > > > > it could be called from C. Especially testing memory might be called
> > > > > from some early small (no shell) development binaries which are running from some
> > > > > internal SRAM.
> > > > > 
> > > > Ok.
> > > > Maybe we can do a menu entry via Kconfig or something else to run a
> > > > memtest after booting automatically.
> > > 
> > > Maybe this could be added as an init script in the environment, but
> > > personally I don't think I'll run it by default on our boards. We are
> > > more into booting fast.
> > But how will you run the memtest command in a (no shell) environment? :)
> make as an option but this will be board specific
> 
> I do not want it by default too
> 
> booting time are critical for a lost of client
> 
> Best Regards,
> J.
Ok, hold on.
We want this to move it in common/memory_test.c to call memtest in a
(no shell) environment for a small barebox which running in the internal
sram(like omap MLO), not in the connected "ram".

This can be useful to test the complete "connected ram" without allocated
barebox regions.

But to do this in a (no shell) environment, somebody need to modify some
code to call memtest at barebox boot. Or?

Regards
Alex
> > 
> > > 
> > > Sascha
> > > 
> > > -- 
> > > Pengutronix e.K.                           |                             |
> > > Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> > > Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> > > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> > 
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
