Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XClKp-0002lP-Fi
 for barebox@lists.infradead.org; Thu, 31 Jul 2014 08:03:36 +0000
From: Juergen Borleis <jbe@pengutronix.de>
Date: Thu, 31 Jul 2014 10:03:11 +0200
References: <1406715606-6821-1-git-send-email-jbe@pengutronix.de>
 <201407310933.02138.jbe@pengutronix.de>
 <20140731074416.GR6146@pengutronix.de>
In-Reply-To: <20140731074416.GR6146@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201407311003.11853.jbe@pengutronix.de>
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
Subject: Re: envfs: provide an intentional way to ignore an existing external
 environment
To: barebox@lists.infradead.org
Cc: Uwe =?iso-8859-1?q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>

Hi Uwe,

On Thursday 31 July 2014 09:44:16 Uwe Kleine-K=F6nig wrote:
> On Thu, Jul 31, 2014 at 09:33:02AM +0200, Juergen Borleis wrote:
> > Hi Uwe,
> >
> > On Thursday 31 July 2014 09:14:25 Uwe Kleine-K=F6nig wrote:
> > > [...]
> > > Compared with storing the default environment in the external store t=
he
> > > only difference is that you don't need to modify it if you change the
> > > internal one, right?
> >
> > This would also be an advantage of this new feature.
>
> The only one even?

No. Confusing error messages are gone and we can force the intended behavio=
ur =

as well.

> > > I wonder what the targeted use case is.
> >
> > To use an external stored environment *only* for development purposes or
> > tests and to keep the possibility to do so.
>
> Doesn't make a warm and cosy feeling. Isn't it easier and more robust to
> just not tell barebox about the external storage at all and for the
> testing/development procedure do an explicit
>
> 	loadenv /dev/tralala

Developers are lazy... I'm sure they will not love you for this suggestion =
;)

Regards,
Juergen

-- =

Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| Juergen Borleis =A0 =A0 =A0 =A0 =A0 =A0 |
Industrial Linux Solutions               =A0 =A0 =A0| http://www.pengutroni=
x.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
