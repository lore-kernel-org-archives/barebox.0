Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHke5-0005ce-JU
 for barebox@lists.infradead.org; Tue, 08 Oct 2019 08:15:03 +0000
Received: by mail-lj1-x243.google.com with SMTP id a22so16542691ljd.0
 for <barebox@lists.infradead.org>; Tue, 08 Oct 2019 01:15:00 -0700 (PDT)
Date: Tue, 8 Oct 2019 11:14:53 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20191008111453.f86347799806b48209b6df1f@gmail.com>
In-Reply-To: <CAHQ1cqEKP4KPRLy+XTbQzeDB9ucisP95LdS84ZpfkdBT4hZxTA@mail.gmail.com>
References: <20191001005718.27165-1-andrew.smirnov@gmail.com>
 <20191001090331.81644cde6b0b9efd04a8a7a7@gmail.com>
 <CAHQ1cqEKP4KPRLy+XTbQzeDB9ucisP95LdS84ZpfkdBT4hZxTA@mail.gmail.com>
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
Subject: Re: [PATCH] version_string: Add toolchain and build host info
To: Andrey Smirnov <andrew.smirnov@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, 7 Oct 2019 22:14:41 -0700
Andrey Smirnov <andrew.smirnov@gmail.com> wrote:

> On Mon, Sep 30, 2019 at 11:03 PM Antony Pavlov <antonynpavlov@gmail.com> =
wrote:
> >
> > On Mon, 30 Sep 2019 17:57:18 -0700
> > Andrey Smirnov <andrew.smirnov@gmail.com> wrote:
> >
> > Hi!
> >
> > > Linux kernel reports the version of toolchain it was built with as a
> > > part of its version string, which can be extremely useful when
> > > debugging toolchain related issues. Make Barebox version string, mimic
> > > that of Linux to get the same level of information in Barebox.
> > >
> > > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > > ---
> > >  common/version.c | 3 ++-
> > >  1 file changed, 2 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/common/version.c b/common/version.c
> > > index 8b1fd4dbe7..5f57022dac 100644
> > > --- a/common/version.c
> > > +++ b/common/version.c
> > > @@ -3,7 +3,8 @@
> > >  #include <generated/utsrelease.h>
> > >
> > >  const char version_string[] =3D
> > > -     "barebox " UTS_RELEASE " " UTS_VERSION "\n";
> > > +     "barebox " UTS_RELEASE " (" BAREBOX_COMPILE_BY "@"
> > > +     BAREBOX_COMPILE_HOST ") (" BAREBOX_COMPILER ") " UTS_VERSION "\=
n";
> > >  EXPORT_SYMBOL(version_string);
> >
> >
> > Can we keep COMPILE_BY and COMPILE_HOST in one line (as linux does)?
> =

> I don't understand. This line already follows formatting found in
> Linux, e. g. https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/lin=
ux.git/tree/init/version.c?h=3Dv5.4-rc2#n46
> =

> I have no preference how this is going to be formatted, really. Can
> you just take this patch reformat it the way you want to see it and
> submit it?

Sorry!
I have made local patch several months ago. I have used it for debug purpos=
es
only because the resulting version string is very long and looks ugly
on start.

It looks like I have used linux **proc_banner** as a reference for my patch.
Please ignore my previous message.

@Sascha
I think that long version string with all these *_COMPILE_BY and *_COMPILER
can be very handy. On the other hand this information is not very interesti=
ng for
most users.
Can we put all these *_COMPILE_BY and *_COMPILER into some "global" variabl=
es?

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
