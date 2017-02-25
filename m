Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1chik8-00089S-NT
 for barebox@lists.infradead.org; Sat, 25 Feb 2017 20:15:03 +0000
Date: Sat, 25 Feb 2017 21:14:34 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20170225201434.eikfubeizke6tjho@pengutronix.de>
References: <20170223212841.12846-1-u.kleine-koenig@pengutronix.de>
 <20170224074513.pxsqbvjd4uyuqndj@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170224074513.pxsqbvjd4uyuqndj@pengutronix.de>
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
Subject: Re: [PATCH] lseek: ensure errno is set on failure and return -1
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Sascha,

On Fri, Feb 24, 2017 at 08:45:13AM +0100, Sascha Hauer wrote:
> On Thu, Feb 23, 2017 at 10:28:41PM +0100, Uwe Kleine-K=F6nig wrote:
> > All error paths before calling the driver's lseek callback return -1 and
> > set errno. Do the same if the callback returns an error.
> > =

> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > ---
> >  fs/fs.c | 8 +++++++-
> >  1 file changed, 7 insertions(+), 1 deletion(-)
> > =

> > diff --git a/fs/fs.c b/fs/fs.c
> > index 2b4659cfbb76..e7b696591433 100644
> > --- a/fs/fs.c
> > +++ b/fs/fs.c
> > @@ -926,7 +926,13 @@ loff_t lseek(int fildes, loff_t offset, int whence)
> >  		goto out;
> >  	}
> >  =

> > -	return fsdrv->lseek(&f->fsdev->dev, f, pos);
> > +	pos =3D fsdrv->lseek(&f->fsdev->dev, f, pos);
> > +	if (pos < 0) {
> > +		errno =3D -pos;
> > +		return -1;
> > +	}
> =

> Before calling into the drivers lseek checks if the position is within
> the bounds of the file. So when fsdrv->lseek() returns successfully then
> the position must be the same that was passed in. I think we can just
> let fsdrv->lseek() return an error code rather than the file position.

This is a separate and orthogonal change however that doesn't make my
patch wrong.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
