Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo3.mail-out.ovh.net ([188.165.33.202]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TIK8b-0002Di-6o
 for barebox@lists.infradead.org; Sun, 30 Sep 2012 14:04:53 +0000
Received: from mail181.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id DD73FFFB20A
 for <barebox@lists.infradead.org>; Sun, 30 Sep 2012 16:13:33 +0200 (CEST)
Date: Sun, 30 Sep 2012 16:02:25 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120930140225.GR26553@game.jcrosoft.org>
References: <1348973437-31132-1-git-send-email-vicencb@gmail.com>
 <1348973437-31132-7-git-send-email-vicencb@gmail.com>
 <CAA4bVAG-yzYGNb4mNGTT=hcz1EwAcgDZyKVWnZ-aM8AVaN3wmg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAG-yzYGNb4mNGTT=hcz1EwAcgDZyKVWnZ-aM8AVaN3wmg@mail.gmail.com>
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
Subject: Re: [PATCH 6/9] omap4: add usb boot support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, vj <vicencb@gmail.com>

On 16:14 Sun 30 Sep     , Antony Pavlov wrote:
> On 30 September 2012 06:50, vj <vicencb@gmail.com> wrote:
> > ---
> >  arch/arm/cpu/cpu.c                              |   1 +
> >  arch/arm/mach-omap/Kconfig                      |   7 +
> >  arch/arm/mach-omap/Makefile                     |   1 +
> >  arch/arm/mach-omap/include/mach/omap4_rom_usb.h | 142 ++++++++
> >  arch/arm/mach-omap/omap4_generic.c              |  13 +
> >  arch/arm/mach-omap/omap4_rom_usb.c              | 186 +++++++++++
> >  scripts/.gitignore                              |   1 +
> >  scripts/Makefile                                |   4 +
> >  scripts/omap4_usbboot.c                         | 416 ++++++++++++++++++++++++
> >  scripts/usb.h                                   |  61 ++++
> >  scripts/usb_linux.c                             | 397 ++++++++++++++++++++++
> >  11 files changed, 1229 insertions(+)
> >  create mode 100644 arch/arm/mach-omap/include/mach/omap4_rom_usb.h
> >  create mode 100644 arch/arm/mach-omap/omap4_rom_usb.c
> >  create mode 100644 scripts/omap4_usbboot.c
> >  create mode 100644 scripts/usb.h
> >  create mode 100644 scripts/usb_linux.c
> >
> > diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
> > index 71ef8c0..05343de 100644
> > --- a/arch/arm/cpu/cpu.c
> > +++ b/arch/arm/cpu/cpu.c
> > @@ -89,6 +89,7 @@ void arch_shutdown(void)
> >                 : "r0", "r1", "r2", "r3", "r6", "r10", "r12", "lr", "cc", "memory"
> >         );
> >  #endif
> > +       __asm__ __volatile__ ("cpsid i\n");
???

why do you add this?

we never enable the interrupt

and this is generic not omap4 must be in a seperate patch


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
