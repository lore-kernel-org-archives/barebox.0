Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1abpr3-0005Zj-Uf
 for barebox@lists.infradead.org; Fri, 04 Mar 2016 13:33:18 +0000
Received: by mail-lb0-x230.google.com with SMTP id bc4so60993585lbc.2
 for <barebox@lists.infradead.org>; Fri, 04 Mar 2016 05:32:57 -0800 (PST)
Date: Fri, 4 Mar 2016 16:59:04 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20160304165904.ca1b14a860e6fdb84a4a6e4f@gmail.com>
In-Reply-To: <4943131457093089@web17h.yandex.ru>
References: <1457009332-27205-1-git-send-email-rndfax@yandex.ru>
 <20160304071152.GC21869@pengutronix.de>
 <4064341457088134@web21g.yandex.ru>
 <20160304145955.a02cc43b4d49ae2cc2897f97@gmail.com>
 <4943131457093089@web17h.yandex.ru>
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
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Fri, 04 Mar 2016 15:04:49 +0300
Aleksey Kuleshov <rndfax@yandex.ru> wrote:

> [quote]
> To improve tracking of who did what, especially with patches that can
> percolate to their final resting place in the kernel through several
> layers of maintainers, we've introduced a "sign-off" procedure on
> patches that are being emailed around.
> [/quote]
> =

> So Linux kernel had some problems due to their huge developers/maintainer=
s list
> and they solved them by using "sign-off" procedure.
> Do Barebox have that burden of "patches that can
> percolate to their final resting place in the kernel through several
> layers of maintainers"?
> =

> Also in chapter 11 there are rules which are pure bureaucratic. =

> Bureaucracy is a thing of a large projects.
> Is Barebox such as big as Linux that it must have these rules too?
> =

> Solving inexisting problems doesn't make life easier but complicates it.
> =

> So, the question "what this (git commit -s) will give you?" is still open.

There are some full-system-image-generation frameworks: OpenWrt, buildroot =
etc.
These frameworks make several independant pieces of software (compiler,
linux kernel, C lib implementation, busybox etc) work together to combine
solid system. Often these frameworks use mainline versions of software comp=
onents
with additional (non-mainline) patches. E.g. here is patch for barebox from=
 buildroot:

    https://github.com/maximeh/buildroot/tree/master/board/calao/qil-a9260/=
patches/barebox

It is reasonable to have as much author(s) information as possible. So your=
 Sob will be
very usable if somebody who works with the patch.

Here is a poor example: patch without any comments at all, it's very diffic=
ult to trace origins
of this patch:

    https://github.com/openwrt/openwrt/blob/master/target/linux/ar71xx/patc=
hes-4.4/200-MIPS-ath79-fix-ar933x-wmac-reset.patch

> =

> 04.03.2016, 14:33, "Antony Pavlov" <antonynpavlov@gmail.com>:
> > On Fri, 04 Mar 2016 13:42:14 +0300
> > Aleksey Kuleshov <rndfax@yandex.ru> wrote:
> >
> >> =A0Don't get me wrong, but what this (git commit -s) will give you?
> >> =A0What is the purpose of this?
> >
> > You can find the answer at https://www.kernel.org/doc/Documentation/Sub=
mittingPatches
> > Please see chapter 11 (Sign your work).
> >
> >> =A004.03.2016, 10:11, "Sascha Hauer" <s.hauer@pengutronix.de>:
> >>
> >> =A0> Also, like you other patches this one lacks a SoB. Please commit =
with
> >> =A0> git commit -s.
> >
> > --
> > --
> > Best regards,
> > =A0 Antony Pavlov


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
