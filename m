Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SjsgR-0007Q4-7M
 for barebox@lists.infradead.org; Wed, 27 Jun 2012 13:53:28 +0000
Date: Wed, 27 Jun 2012 15:53:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120627135325.GO1623@pengutronix.de>
References: <20120627093551.GC18096@pengutronix.de>
 <20120627095128.GF1623@pengutronix.de>
 <20120627105915.GE18096@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120627105915.GE18096@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: is errno supposed to be positive or negative?
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jun 27, 2012 at 12:59:15PM +0200, Uwe Kleine-K=F6nig wrote:
> On Wed, Jun 27, 2012 at 11:51:28AM +0200, Sascha Hauer wrote:
> > On Wed, Jun 27, 2012 at 11:35:51AM +0200, Uwe Kleine-K=F6nig wrote:
> > > Hello,
> > > =

> > > Well, ok, errno is supposed to be zero, but in the rare cases where i=
t's
> > > not, what is intended?
> > > =

> > > Assuming ESOMETHING is always positive, in userspace errno is
> > > positive, e.g. you test for errno =3D=3D EBADF.
> > > =

> > > In barebox however most assignments use
> > > =

> > > 	errno =3D -ESOMETHING
> > > =

> > > but there are also some tests and assignments without minus. barebox'
> > > perror expects a negative errno which is also different from POSIX'
> > > perror. strerror uses positive semantics in both barebox and POSIX.
> > =

> > Your tree is not up to date.
> > =

> > see:
> > =

> > commit 6188685091c58c9772b990cf0ca6ac522f97a9d0
> > Author: Sascha Hauer <s.hauer@pengutronix.de>
> > Date:   Sun May 13 12:43:58 2012 +0200
> > =

> >     Make errno a positive value
> >     =

> >     Normally errno contains a positive error value. A certain unnamed d=
eveloper
> >     mixed this up while implementing U-Boot-v2. Also, normally errno is=
 never
> >     set to zero by any library function. This patch fixes this.
> >     =

> >     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> OK, you're right.
> =

> There is just:
> =

> 	$ git grep errno\ =3D\ -E origin/master
> 	origin/master:fs/ramfs.c:                       errno =3D -ENOENT;

Oops, this shouldn't be there at all. errno should be set in the
filesystem layer, not in the fs drivers.

Sascha


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
