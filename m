Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X1Ugx-0006TR-I6
 for barebox@lists.infradead.org; Mon, 30 Jun 2014 06:03:52 +0000
Date: Mon, 30 Jun 2014 08:03:29 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20140630060329.GY14781@pengutronix.de>
References: <1403763212-924-1-git-send-email-s.hauer@pengutronix.de>
 <20140626090114.GA9064@omega>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140626090114.GA9064@omega>
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
Subject: Re: [PATCH] kconfig: Fix compiler warning
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jun 26, 2014 at 11:02:18AM +0200, Alexander Aring wrote:
> Hi Sascha,
> =

> I get this warning about 1 month and it makes me crazy and I am unsing
> "gcc (GCC) 4.9.0 20140604 (prerelease)".
> =

> =

> Why I didn't sent any patches?
> Because you say it here it's a compiler bug and the linux world doesn't
> fix it this way. Look at [0].
> =

> "... since we will still want to catch unitialised use in the future,
> should we were to changethe code." - which sounds useful.
> =

> They already add a comment to this. I think otherwise they get much
> patches because this warning.
> =

> When I look into the current mainline code [1]. Then this is currently
> not fixed in any way (comment or setting to NULL
There is also the macro uninitialized_var (in both kernel and barebox)
that could be used here instead of the explicit =3D NULL.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
