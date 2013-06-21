Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x236.google.com ([2a00:1450:4010:c03::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpvtM-0002tN-Jq
 for barebox@lists.infradead.org; Fri, 21 Jun 2013 07:36:21 +0000
Received: by mail-la0-f54.google.com with SMTP id ec20so6612908lab.41
 for <barebox@lists.infradead.org>; Fri, 21 Jun 2013 00:35:58 -0700 (PDT)
Date: Fri, 21 Jun 2013 11:34:37 +0400
From: "antonynpavlov@gmail.com" <antonynpavlov@gmail.com>
Message-Id: <20130621113437.e71ee33309f59c91d718fb50@gmail.com>
In-Reply-To: <20130621072319.GB32299@pengutronix.de>
References: <1371633093-23179-1-git-send-email-linux@rempel-privat.de>
 <20130621053017.GW32299@pengutronix.de>
 <20130621102525.8cdf578379630c9ff8d6052a@gmail.com>
 <20130621072319.GB32299@pengutronix.de>
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
Subject: Re: [PATCH 0/8] low level initialisation for ar2313
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, 21 Jun 2013 09:23:19 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Fri, Jun 21, 2013 at 10:25:25AM +0400, antonynpavlov@gmail.com wrote:
> > On Fri, 21 Jun 2013 07:30:17 +0200
> > Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > =

> > > Hi Oleksij, Antony,
> > > =

> > > I'm fine with this series. Antony, do you have comments?
> > =

> > The series looks good!
> > =

> > But in the last minute I made a small fix for the "MIPS: pbl: add pbl_s=
leep macro" patch.
> > =

> > It's a shame, but generated label inside assembly macros are not "local=
" (at least I have not found how to make them local in my toolchain). =

> > =

> > As the user of the pbl_sleep can use generated label "1" (this label al=
ready used in pbl_sleep), there can be some painful side effects, e.g. =

> > =

> > 1:                    // user's generated label
> > =

> >    ...                // some user code
> > =

> >    pbl_sleep t1 100
> > =

> >    ...                // another user code
> > =

> >    b 1b               // jump to the back label "1"
> > =

> > =

> > Inside the pbl_sleep macro we have one more "1" label, so the jump inst=
ruction of the
> > example transfer control not to the user's label "1" but to label "1" i=
nside pbl_sleep. =

> > =

> > So I propose a ad-hoc solution.
> > =

> > --- a/arch/mips/include/asm/pbl_macros.h
> > +++ b/arch/mips/include/asm/pbl_macros.h
> > @@ -32,8 +32,8 @@
> >         .set push
> >         .set noreorder
> >         li      \reg, \count
> > -1:
> > -       bgtz    \reg, 1b
> > +254:
> > +       bgtz    \reg, 254b
> >          addi   \reg, -1
> >         .set    pop
> >         .endm
> =

> Yeah, I noticed the same problem some time ago and came up with the same
> solution. I'm not aware of a better way to do this.
> =

> > =

> > The programmers are lazy (at least many of them), they like short names=
 "1", "2"
> > and "254" is very long name, so the conflict is not expected.
> > To prevent conflicts like this we can make a convention "don't use gene=
rated labels 200-255 in you assembler pbl code". =

> > =

> > Is there a need for series/patch reposting for fixing the issue?
> =

> Yes, please post what you want me to apply on -next.

Oleksij have reposted the fixed patch: "[PATCH 2/8 v2] MIPS: pbl: add pbl_s=
leep macro"

> =

> Sascha
> =

> -- =

> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
