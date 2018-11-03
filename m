Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gIjQY-00071t-Jy
 for barebox@lists.infradead.org; Sat, 03 Nov 2018 00:04:36 +0000
Received: by mail-wm1-x343.google.com with SMTP id l2-v6so3173845wmh.3
 for <barebox@lists.infradead.org>; Fri, 02 Nov 2018 17:04:23 -0700 (PDT)
MIME-Version: 1.0
References: <20181101091846.10882-1-l.stach@pengutronix.de>
 <20181101091846.10882-4-l.stach@pengutronix.de>
 <20181102222727.GA17886@ravnborg.org>
In-Reply-To: <20181102222727.GA17886@ravnborg.org>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 2 Nov 2018 17:04:10 -0700
Message-ID: <CAHQ1cqFnL4eGC7PR-Q+W4ZsqEwSBi9OxEhxGhq6VGi7y_f-ndg@mail.gmail.com>
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
Subject: Re: [PATCH v4 04/11] ARM: allow secure monitor code to be built
 without PSCI
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Nov 2, 2018 at 3:29 PM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Lucas.
>
> On Thu, Nov 01, 2018 at 10:18:39AM +0100, Lucas Stach wrote:
> > The hyp mode handling added in the secure monitor code is also useful
> > when Barebox doesn't have PSCI control. Allow to build without PSCI.
> >
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > Tested-by: Roland Hieber <r.hieber@pengutronix.de>
> > ---
> >  arch/arm/cpu/sm_as.S | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/arch/arm/cpu/sm_as.S b/arch/arm/cpu/sm_as.S
> > index 09580e75de5f..0d01e1bf2435 100644
> > --- a/arch/arm/cpu/sm_as.S
> > +++ b/arch/arm/cpu/sm_as.S
> > @@ -129,7 +129,9 @@ secure_monitor:
> >       sub     sp, sp, #4*4                    @ allocate result structure on stack
> >       mov     r12, sp
> >       push    {r4-r6, r12}
> > +#ifdef CONFIG_ARM_PSCI
> >       bl      psci_entry
> > +#endif
> >       pop     {r4-r6, r12}
> >       ldm     r12, {r0-r3}
> >       add     sp, sp, #4*4
> > @@ -163,6 +165,8 @@ ENTRY(psci_cpu_entry)
> >       mcr     p15, 0, r0, c1, c0, 1   @ ACTLR
> >
> >       bl      secure_monitor_stack_setup
> > +#ifdef CONFIG_ARM_PSCI
> >       bl      psci_cpu_entry_c
> > +#endif
>
> It looks strange to have two consecutive
>
>         bl  something
>         bl  something_else
>
> In the above (when CONFIG_ARM_PSCI is defined).
> Seems that we will never hit the second branch long instruction.
>
> But maybe I am just clueless on the assembly syntax?
>

That just a regular call, "bl" means "branch and store return address
in link register", if you look at the source of of
"secure_monitor_stack_setup" its last instruction is "bx lr" which is
"branch to address stored in link register" (potentially switching
from/to Thumb, if I remember the meaning of "x" at the end correctly).

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
