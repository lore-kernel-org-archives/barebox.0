Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22f.google.com ([2a00:1450:4010:c04::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9HHr-0004p8-Ui
 for barebox@lists.infradead.org; Mon, 21 Jul 2014 17:22:08 +0000
Received: by mail-lb0-f175.google.com with SMTP id 10so1811731lbg.6
 for <barebox@lists.infradead.org>; Mon, 21 Jul 2014 10:21:45 -0700 (PDT)
Date: Mon, 21 Jul 2014 21:34:16 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140721213416.f9800e212477dd3fd6e92a55@gmail.com>
In-Reply-To: <20140721194150.1d5ea1f772f27fb02e267f42@gmail.com>
References: <1405370916-6828-1-git-send-email-antonynpavlov@gmail.com>
 <1405370916-6828-5-git-send-email-antonynpavlov@gmail.com>
 <20140718054413.GL23235@pengutronix.de>
 <20140718113626.19aba6e8e971f15944a6ff93@gmail.com>
 <CAOpc7mEHJFktB5v=uRqLUWgEdzHA05KmFmC3_ix+gfooO-0MKw@mail.gmail.com>
 <20140720095522.41f6874de19b368a29573cf7@gmail.com>
 <20140721064106.GS23235@pengutronix.de>
 <20140721111025.4a0d6d2c1ef5977e1d45f152@gmail.com>
 <20140721081150.GT23235@pengutronix.de>
 <20140721194150.1d5ea1f772f27fb02e267f42@gmail.com>
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
Subject: Re: [RFC v3 4/5] commands: add hwclock
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, 21 Jul 2014 19:41:50 +0400
Antony Pavlov <antonynpavlov@gmail.com> wrote:

> On Mon, 21 Jul 2014 10:11:50 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> =

> > On Mon, Jul 21, 2014 at 11:10:25AM +0400, Antony Pavlov wrote:
> > > On Mon, 21 Jul 2014 08:41:06 +0200
> > > Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > > =

> > > > On Sun, Jul 20, 2014 at 09:55:22AM +0400, Antony Pavlov wrote:
> > > > > On Sat, 19 Jul 2014 21:02:22 +0200
> > > > > Holger Schurig <holgerschurig@gmail.com> wrote:
> > > > > =

> > > > > > I'd prefer a more logical format (and that is also in the help).
> > > > > > However, in this case I wouldn't name the command "hwclock", bu=
t maybe
> > > > > > "setclock".
> > > > > =

> > > > > hwclock allows to use a logical format!
> > > > > =

> > > > > e.g. here is a quote from hwclock manpage:
> > > > > =

> > > > >      --date=3Ddate_string
> > > > >               You  need this option if you specify the --set or -=
-predict functions, otherwise
> > > > >               it is ignored.  It specifies the time to which to s=
et the Hardware Clock, or the
> > > > >               time  for which to predict the Hardware Clock readi=
ng.  The value of this option
> > > > >               is an argument to the date(1) program.  For example:
> > > > > =

> > > > >                   hwclock --set --date=3D"2011-08-14 16:45:05"
> > > > =

> > > > Is this format easy enough to parse? If yes, that sounds like a good
> > > > format.
> > > =

> > > So you have no objections on using a logical format :)
> > =

> > No, not at all ;)
> > =

> > > =

> > > I can make a small review on conventional date_string formats so we c=
an discuss most appropriate one.
> > =

> > Nice, thanks.
> > =

> > I think we can always add additional formats using different command
> > line switches, but the better we chose our default format the lesser
> > need we'll have to add additional formats.
> =

> I know about at least two widespread date command realizations used with =
linux:
> =

>   * coreutils realization;
>   * busybox realization.
> =

> =

> coreutils realization
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =

> I have looked inside parse_datetime() from coreutils-8.21/lib/parse-datet=
ime.c.
> =

> It uses yyparse() for date string parsing! The corresponding yacc descrip=
tion
> is inside the lib/parse-datetime.y file. Can I easely steal this code for=
 barebox? I suppose NO!
> =

> =

> busybox realization
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =

> Here is parse_datestr() (barebox.git/libbb/time.c) date format list:
                           ^^^^^^^^^^^
                                    Sorry! I meant busybox.git. =


--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
