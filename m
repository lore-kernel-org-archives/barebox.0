Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x229.google.com ([2a00:1450:4010:c04::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ac7tl-00061q-P4
 for barebox@lists.infradead.org; Sat, 05 Mar 2016 08:49:19 +0000
Received: by mail-lb0-x229.google.com with SMTP id bc4so84662637lbc.2
 for <barebox@lists.infradead.org>; Sat, 05 Mar 2016 00:48:57 -0800 (PST)
Date: Sat, 5 Mar 2016 12:15:04 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20160305121504.bec4f18e0b3bb403081a87d6@gmail.com>
In-Reply-To: <6507601457136246@web20j.yandex.ru>
References: <1457009332-27205-1-git-send-email-rndfax@yandex.ru>
 <20160304071152.GC21869@pengutronix.de>
 <4064341457088134@web21g.yandex.ru>
 <20160304145955.a02cc43b4d49ae2cc2897f97@gmail.com>
 <4943131457093089@web17h.yandex.ru>
 <CAHQ1cqFcgVVnQvO6ACpNJx3Czgvdm+-eKyVGMDEYCRsVuFoutA@mail.gmail.com>
 <5582221457124464@web27h.yandex.ru>
 <CAHQ1cqEqTAB1jjfcacfmNuAuA_M3A=5udjiX63ZfPHNMBohv1g@mail.gmail.com>
 <6507601457136246@web20j.yandex.ru>
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
Subject: Re: [PATCH] ehci-hcd: remove useless timeout
To: Aleksey Kuleshov <rndfax@yandex.ru>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Sat, 05 Mar 2016 03:04:06 +0300
Aleksey Kuleshov <rndfax@yandex.ru> wrote:

> >>  Was it so necessary?
> >
> > Yes.
> >>  Does Barebox really need this?
> >
> > Yes.
> =

> Oh, these are exhaustive answers, thank you :)
> =

> >> =A0Or it's just blindly following the rules made by Linux project?
> >
> > It's irrelevant if BB follows this practice blindly, or with extensive
> > knowledge and understanding of all factors involved if the procedure
> > involved is believed to be legally sound
> >
> >> =A0Do really small projects need to follow all such bureaucratic way r=
ather than
> >> =A0just growing up?
> >
> > Yes, project with identical licensing, regardless of their size, need
> > to adhere to certain legal procedures in order to have a good case if
> > they are ever in court.
> =

> So this means that every GPL'ed hello-world.c project should follow
> Linux's rules "to have a good case if they are ever in court"?
> =

> And If think in this way then Barebox should create a Barebox Foundation,
> hire a lawyer and wait until someone will sue them. But this is ridiculou=
s, because
> Barebox don't need this! That's why there is no Barebox Foundation with l=
awyer.
> =

> >> =A0What if git history magically disappears? Only authors written in f=
iles will be fixed,
> >> =A0but all authors of patches will disappear as well. So this SOB fiel=
d is only
> >> =A0valid while "git log" gives you something to read.
> >
> > I don't understand the point you are trying to make.
> =

> SOB is just a matter of "git log".
> =

> >>  But that's for Linux - companies, billions of dollars... What about B=
arebox?
> > Same license, same rules.
> =

> (see about GPL'ed hello-world.c)
> =

> > Aleksey, I am not really interested in continuing this discussion or
> > trying to convince you to add SOB to your patch, so if any of the
> > above explanations are insufficient for you, I am afraid we are going
> > to have to agree to disagree on this subject.
> =

> I asked a simple question - still no use case of SOB in Barebox.

Of course there is a use case for SOB in Barebox!

Git has the 'Author' placeholder only for one person.
If more that one person works on a patch
then we can't put all their names into the 'Author' field.
However we can use SOB to indicated co-authoring.

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
