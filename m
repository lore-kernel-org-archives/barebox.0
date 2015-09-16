Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x235.google.com ([2a00:1450:4010:c03::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zc8KG-0005lf-G9
 for barebox@lists.infradead.org; Wed, 16 Sep 2015 08:44:25 +0000
Received: by lanb10 with SMTP id b10so123667180lan.3
 for <barebox@lists.infradead.org>; Wed, 16 Sep 2015 01:44:02 -0700 (PDT)
Date: Wed, 16 Sep 2015 12:06:07 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150916120607.c46535eb3bc16f2c7b023427@gmail.com>
In-Reply-To: <20150916083523.GE4018@pengutronix.de>
References: <1442385648-6063-1-git-send-email-u74147@gmail.com>
 <20150916105033.d6d9a93ef5344d0c12ad4334@gmail.com>
 <20150916083523.GE4018@pengutronix.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] MIPS: start.S depends on banner
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Kevin Du Huanpeng <u74147@gmail.com>

On Wed, 16 Sep 2015 10:35:23 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Wed, Sep 16, 2015 at 10:50:33AM +0300, Antony Pavlov wrote:
> > On Wed, 16 Sep 2015 14:40:48 +0800
> > Kevin Du Huanpeng <u74147@gmail.com> wrote:
> > =

> > > Signed-off-by: Kevin Du Huanpeng <u74147@gmail.com>
> > > ---
> > >  arch/mips/Kconfig | 1 +
> > >  1 file changed, 1 insertion(+)
> > > =

> > > diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
> > > index aeb5c04..fde4c2e 100644
> > > --- a/arch/mips/Kconfig
> > > +++ b/arch/mips/Kconfig
> > > @@ -6,6 +6,7 @@ config MIPS
> > >  	select HAS_KALLSYMS
> > >  	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
> > >  	select HAVE_CONFIGURABLE_TEXT_BASE
> > > +	select BANNER
> > >  	default y
> > >  =

> > >  config SYS_SUPPORTS_BIG_ENDIAN
> > > -- =

> > > 1.9.1
> > > =

> > =

> > IMHO we can make banner use in start.S optional. E.g.:
> > =

> > diff --git a/arch/mips/boot/start.S b/arch/mips/boot/start.S
> > index 7e2ae5e..f3a6a00 100644
> > --- a/arch/mips/boot/start.S
> > +++ b/arch/mips/boot/start.S
> > @@ -22,8 +22,10 @@
> >  #include <asm/mipsregs.h>
> >  #include <asm/asm.h>
> >  #include <asm-generic/memory_layout.h>
> > +#ifdef CONFIG_BANNER
> >  #include <generated/compile.h>
> >  #include <generated/utsrelease.h>
> > +#endif
> =

> CONFIG_BANNER and this compilation failure have nothing to do with each
> other.

Yes, but now I see that some parts of MIPS start.S and PBL need a code refa=
ctoring.
:)
 =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
