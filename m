Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X2dOi-0005Gm-FP
 for barebox@lists.infradead.org; Thu, 03 Jul 2014 09:33:45 +0000
Date: Thu, 3 Jul 2014 11:33:21 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20140703093321.GU14781@pengutronix.de>
References: <20140703085122.GT14781@pengutronix.de>
 <alpine.DEB.2.10.1407031026270.15322@9VTHT2J-D520>
 <20140703090045.GA21384@mail.gnudd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140703090045.GA21384@mail.gnudd.com>
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
Subject: Re: [PATCH] automount: check for recursive automount
To: Alessandro Rubini <rubini-list@gnudd.com>
Cc: barebox@lists.infradead.org, embedded24@evers-fischer.de

On Thu, Jul 03, 2014 at 11:00:45AM +0200, Alessandro Rubini wrote:
> > static variables are initialized to 0 (for pointers: NULL) by the
> > compiler.
> =

> Well, not really. The compiler just places them in the .bss area.  It
> is barebox, it is run-time initialization, that zeroes bss.
> =

> So it is barebox, not the compiler.
Yeah, in general it's even worse because there might be platforms where
NULL isn't represented by a literal 0. (Not sure if something like this
exists, but it's allowed by the standard.)

C99 tells us:

If an object that has automatic storage duration is not initialized explici=
tly,
its value is indeterminate. If an object that has static storage duration is
not initialized explicitly, then:
- if it has pointer type, it is initialized to a null pointer;
- if it has arithmetic type, it is initialized to (positive or unsigned) ze=
ro;
- if it is an aggregate, every member is initialized (recursively) accordin=
g to
  these rules;
- if it is a union, the first named member is initialized (recursively)
  according to these rules.

I assume it's included in earlier standards, too, but I don't have these
handy.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
