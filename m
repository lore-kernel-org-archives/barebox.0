Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x230.google.com ([2607:f8b0:4001:c0b::230])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTnZt-0006vY-5a
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 12:11:43 +0000
Received: by mail-it0-x230.google.com with SMTP id p185-v6so2374777itp.4
 for <barebox@lists.infradead.org>; Fri, 15 Jun 2018 05:11:30 -0700 (PDT)
MIME-Version: 1.0
References: <20180615041136.23492-1-andrew.smirnov@gmail.com>
 <20180615092857.yrvh4pgs4ccu2pum@pengutronix.de>
In-Reply-To: <20180615092857.yrvh4pgs4ccu2pum@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 15 Jun 2018 05:11:17 -0700
Message-ID: <CAHQ1cqGXm=cBNq0SnWm33QrXDzeiexUsWm_YG5dp1jT+PXoH-w@mail.gmail.com>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Jun 15, 2018 at 2:28 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> Hi Andrey,
>
> On Thu, Jun 14, 2018 at 09:11:06PM -0700, Andrey Smirnov wrote:
> > Everyone:
> >
> > While debugging the reason behind print_hex_dump() not producing
> > carriage return properly, when used in PBL, I realised that current
> > codebase contained:
> >
> >  - at least 5 places where '\n' was replaced with '\n\r'
> >  - at least 3 almost identical implementations of puts()
> >  - at least 3 almost identical implementations of printf()
> >
> > so this patcheset is an attempt to consolidate, share and simplify
> > console related code.
>
> The console support really deserves some cleanup. We have the LL console
> support, PBL console support, regular console support and simple console
> support, all mixed into a single codebase so that it's sometimes really
> hard to understand what is going on.
>
> Instead of optimizing the different variants for better code sharing I
> wonder if we could not consolidate some of the console types to reduce
> the number of variants in the code.  PBL console works by calling
> pbl_set_putc() to specify a putc function.  PUTC_LL instead works by
> putting a PUTC_LL function into a SoC specific header function. Instead
> each board could provide its own putc function, say board_putc() or so.
> This would be enough to replace the DEBUG_LL and the PBL console
> support.
>

- That still leaves psci_set_putc(), which currently is handled the
same way pbl_set_putc() does
- Dropping pbl_set_putc(), would require making direct changes to the
code for boards I don't have access to (as opposed to indirect API
changes that I can test with on boards that I do have)

IMHO, what you are proposing is orthogonal to the work in this
patchset. One can unify PUTC_LL and pbl_set_putc() usecases, but it
wouldn't change the fact that PBL code has it's own, yet another,
implementation of puts() and printf().

I guess what I am saying is that I don't see a reason why one has to
be done _instead_ of the other and simplification that you propose
could (and IMHO should) be done on top of this work.

More importantly, I think that that work is really outside of the
scope of this patch. I am happy to bring this patchset over the finish
line and get it into merge-able state, but I already spent as much
time as I could on this, so any further improvement might have to wait
until some other time or some other developer.

> Then I don't like weak functions. It can provide nifty solutions to some
> problems, but I think it also often leads to situations where you don't
> really know if something has been overwritten or with what is has been
> overwritten with.

And with #ifdefs you do? I regularly find myself having to inject
#error statements or look at the final disassembly to make sure I
interpret the preprocessor logic right, but that might be my unique
experience.

> I don't consider replacing ifdefs with weak functions
> a general improvment.
>

OK, do you want me to get rid of all of the uses of __weak in this
patch set or does your comment apply only to "console: Drop
ARCH_HAS_CTRLC"?

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
