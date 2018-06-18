Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fV15f-00085V-8j
 for barebox@lists.infradead.org; Mon, 18 Jun 2018 20:49:33 +0000
Date: Mon, 18 Jun 2018 22:49:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180618204918.ovyvzti5esmfymcq@pengutronix.de>
References: <20180615041136.23492-1-andrew.smirnov@gmail.com>
 <20180615092857.yrvh4pgs4ccu2pum@pengutronix.de>
 <CAHQ1cqGXm=cBNq0SnWm33QrXDzeiexUsWm_YG5dp1jT+PXoH-w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqGXm=cBNq0SnWm33QrXDzeiexUsWm_YG5dp1jT+PXoH-w@mail.gmail.com>
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
Subject: Re: [PATCH 00/27] Console code consolidation
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Jun 15, 2018 at 05:11:17AM -0700, Andrey Smirnov wrote:
> On Fri, Jun 15, 2018 at 2:28 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >
> > Hi Andrey,
> >
> > On Thu, Jun 14, 2018 at 09:11:06PM -0700, Andrey Smirnov wrote:
> > > Everyone:
> > >
> > > While debugging the reason behind print_hex_dump() not producing
> > > carriage return properly, when used in PBL, I realised that current
> > > codebase contained:
> > >
> > >  - at least 5 places where '\n' was replaced with '\n\r'
> > >  - at least 3 almost identical implementations of puts()
> > >  - at least 3 almost identical implementations of printf()
> > >
> > > so this patcheset is an attempt to consolidate, share and simplify
> > > console related code.
> >
> > The console support really deserves some cleanup. We have the LL console
> > support, PBL console support, regular console support and simple console
> > support, all mixed into a single codebase so that it's sometimes really
> > hard to understand what is going on.
> >
> > Instead of optimizing the different variants for better code sharing I
> > wonder if we could not consolidate some of the console types to reduce
> > the number of variants in the code.  PBL console works by calling
> > pbl_set_putc() to specify a putc function.  PUTC_LL instead works by
> > putting a PUTC_LL function into a SoC specific header function. Instead
> > each board could provide its own putc function, say board_putc() or so.
> > This would be enough to replace the DEBUG_LL and the PBL console
> > support.
> >
> 
> - That still leaves psci_set_putc(), which currently is handled the
> same way pbl_set_putc() does
> - Dropping pbl_set_putc(), would require making direct changes to the
> code for boards I don't have access to (as opposed to indirect API
> changes that I can test with on boards that I do have)
> 
> IMHO, what you are proposing is orthogonal to the work in this
> patchset. One can unify PUTC_LL and pbl_set_putc() usecases, but it
> wouldn't change the fact that PBL code has it's own, yet another,
> implementation of puts() and printf().

Ok, I buy this argument.

> > Then I don't like weak functions. It can provide nifty solutions to some
> > problems, but I think it also often leads to situations where you don't
> > really know if something has been overwritten or with what is has been
> > overwritten with.
> 
> And with #ifdefs you do? I regularly find myself having to inject
> #error statements or look at the final disassembly to make sure I
> interpret the preprocessor logic right, but that might be my unique
> experience.

I know this problem and in fact it was one problem that has driven me
away from U-Boot. No, you are right, #fdefs are not better than weak
functions. I just have the feeling that allowing weak functions is yet
another can of worms, also admittedly a less ugly one than #ifdefs.

> 
> OK, do you want me to get rid of all of the uses of __weak in this
> patch set or does your comment apply only to "console: Drop
> ARCH_HAS_CTRLC"?

Leave them in for now. So far I haven't seen the major selling point for
this series. It makes some things better, but others just look
different.

One thing I noticed is that the resulting barebox.bin for
imx_v7_defconfig gets 5k bigger with this series. I have no idea why
this happens, nothing obvious pops up, but that's not what I expect
from a series which tries to consolidate things.

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
