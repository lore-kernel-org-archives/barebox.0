Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e1di3-0005mz-IT
 for barebox@lists.infradead.org; Mon, 09 Oct 2017 19:27:29 +0000
Date: Mon, 9 Oct 2017 21:27:05 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20171009192705.4qlbv6twvw7xklw4@pengutronix.de>
References: <20170926212646.2968-1-u.kleine-koenig@pengutronix.de>
 <20171006042900.nqfe5vsmgogcoxxh@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171006042900.nqfe5vsmgogcoxxh@pengutronix.de>
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
Subject: Re: [PATCH 0/3] gpiolib: introduce gpio initializer
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Sascha,

On Fri, Oct 06, 2017 at 06:29:00AM +0200, Sascha Hauer wrote:
> On Tue, Sep 26, 2017 at 11:26:43PM +0200, Uwe Kleine-K=F6nig wrote:
> > the target of this series is to allow gpios to be initialized but
> > without the side effect that the gpios are unusable then (as is the case
> > with gpio-hogs).
> > =

> > This can for example be used to prevent debug pins from floating when
> > unused or keep a chip in reset until a matching driver is available.
> > =

> > I already tried to fix the binding, no feedback so far.
> > See http://patchwork.ozlabs.org/patch/817695/ .
> =

> I'm delaying this for some time in the hope that upstream settles to
> some solution.

IMHO patches 1 and 2 can already go in. They are clean up and
optimisation that are IMOH worth to have even without the last patch.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
