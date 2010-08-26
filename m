Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OoYGP-0006rX-8W
	for barebox@lists.infradead.org; Thu, 26 Aug 2010 08:56:50 +0000
Date: Thu, 26 Aug 2010 10:56:45 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20100826085645.GB5355@pengutronix.de>
References: <AANLkTimM6xAp48S98Ob1eRwks+AKa6OR++ufO30wZNFH@mail.gmail.com>
	<4C761942.1020800@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4C761942.1020800@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: barebox and setenv
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello,

On Thu, Aug 26, 2010 at 09:35:30AM +0200, Marc Kleine-Budde wrote:
> Nataraj S Narayan wrote:
> > Hi
> > =

> > How do I  "setenv bootargs mem=3D64M console=3DttyS0,115200 root=3D/dev=
/mtdblock0
> > rw rootfstype=3Djffs2" in barebox?
> > =

> > export seems not to work for me.
> =

> the barebox shell is "sh" like, so use
> =

> bootargs=3D"mem=3D64M console=3DttyS0,115200 root=3D/dev/mtdblock0 rw roo=
tfstype=3Djffs2"
... probably followed by

	export bootargs

as you asked for (C-Shell like) setenv, not set.

BTW, I recently saw a bug concerning export.  Exporting a variable
twice results in an error.  I havn't investigated it though.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
