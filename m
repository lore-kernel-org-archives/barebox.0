Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f7mNp-0002g3-3b
 for barebox@lists.infradead.org; Sun, 15 Apr 2018 18:28:15 +0000
Date: Sun, 15 Apr 2018 20:27:58 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20180415182758.2gvkmxp7e5zzxtev@pengutronix.de>
References: <20180413233053.15570-1-u.kleine-koenig@pengutronix.de>
 <20180413233053.15570-4-u.kleine-koenig@pengutronix.de>
 <CAHQ1cqFkU=9aPg9xr3gbmApgx-rSfM3toH3m-Br3=PjN1Voqvw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqFkU=9aPg9xr3gbmApgx-rSfM3toH3m-Br3=PjN1Voqvw@mail.gmail.com>
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
Subject: Re: [PATCH 4/4] pci: don't hide hard to understand sanity check in
 size calculation
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

Hello Andrey,

On Sat, Apr 14, 2018 at 09:25:59AM -0700, Andrey Smirnov wrote:
> On Fri, Apr 13, 2018 at 4:30 PM, Uwe Kleine-K=F6nig
> <u.kleine-koenig@pengutronix.de> wrote:
> > +               /*
> > +                * if maxbase isn't in the form 0b1...10...0 there is s=
omething
> > +                * fishy
> > +                */
> > +               if ((maxbase | (maxbase - 1)) !=3D (u32)-1 || maxbase =
=3D=3D 0) {
> =

> U32_MAX instead of (u32)-1 ?

I don't feel strong here. Given that the LHS uses some characteristics
of the binary representation I slightly prefer (u32)-1, but I can change
it to U32_MAX, too.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
