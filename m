Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZaKB-0005LY-3D
 for barebox@lists.infradead.org; Mon, 02 Nov 2020 13:56:44 +0000
Date: Mon, 2 Nov 2020 14:56:39 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20201102135639.czd5xxxwqjr3sdkx@pengutronix.de>
References: <20201030113614.9572-1-u.kleine-koenig@pengutronix.de>
 <20201102091429.GU26805@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20201102091429.GU26805@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8040553421757361124=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] nfs: check return value of various rpc calls
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


--===============8040553421757361124==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6coye5qxuofavley"
Content-Disposition: inline


--6coye5qxuofavley
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Sascha,

On Mon, Nov 02, 2020 at 10:14:29AM +0100, Sascha Hauer wrote:
> On Fri, Oct 30, 2020 at 12:36:14PM +0100, Uwe Kleine-K=F6nig wrote:
> > Check more carefully for failing requests. This improves the error
> > message when trying to mount a non-exported nfs directory from:
> >=20
> > 	nfs_mount_req: file handle too big: 44831
> >=20
> > to
> >=20
> > 	nfs_mount_req: Mounting gave error NFS3ERR_ACCES(0xd)
> >=20
> > .
> >=20
> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > ---
> >  fs/nfs.c | 91 +++++++++++++++++++++++++++++++++++++++++++++++++-------
> >  1 file changed, 81 insertions(+), 10 deletions(-)
> >=20
> > diff --git a/fs/nfs.c b/fs/nfs.c
> > index 15ddab7915df..0be32322fb65 100644
> > --- a/fs/nfs.c
> > +++ b/fs/nfs.c
> > @@ -636,13 +636,33 @@ static uint32_t *nfs_read_post_op_attr(uint32_t *=
p, struct inode *inode)
> >  	return p;
> >  }
> > =20
> > +static int nfserror_to_err(u32 nfserror, const char **errorname)
> > +{
> > +#define E(NFSERR, ERR)			\
> > +	case NFSERR:			\
> > +		*errorname =3D #NFSERR;	\
> > +		return -ERR
> > +
> > +	switch (nfserror) {
> > +	E(NFS3_OK, 0);
> > +	E(NFS3ERR_NOENT, ENOENT);
> > +	E(NFS3ERR_IO, EIO);
> > +	E(NFS3ERR_ACCES, EACCES);
> > +	E(NFS3ERR_NOTDIR, ENOTDIR);
> > +	E(NFS3ERR_NAMETOOLONG, ENAMETOOLONG);
>=20
> You convert the NFS error codes to the corresponding error codes. For
> these we already have strings, so why not just print them with %pe rather
> than returning another string from this function?

When I started this function I wasn't aware that this is a real 1:1
mapping (i.e. s/NFSERR_/E/) and I considered it useful that the error
name (as it appears in the NFS3-RFC) is part of the error message. With
some distance to this patch just skipping the errorname part looks fine
for me.

I will rework that.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--6coye5qxuofavley
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl+gEBQACgkQwfwUeK3K
7AmI5QgAjrVw7gZwikRj+cOup8Rm60QwSwwLKV1/KgK89jFAbldKCnh7I66gRWfW
PSSXwPUk/AqOchvw0a+VF3Gu/uxVRom1L7xlNOQR81sIRTALQCLfJIEMJvSf+OsK
4STRA+DNX0Q4G2vpFx2rmfCESS8w7KTn4e9nK8yL++gHzjI12xd2sUgdzpd6Xac/
A4h/mpDGsOLYc1dw57iIuqwKwa8iBDasD8cFT+CGr4BXrFnoWptOBNc5tbqcTYBk
jz3y7HimkV7pId/v46bak1+8l8NS3LngZm3/PiLdixtob7rHLkivPOfhSEQAVD0S
BEuH9XUU9ys5J4ehf33PgIvqRDRDAg==
=AD9p
-----END PGP SIGNATURE-----

--6coye5qxuofavley--


--===============8040553421757361124==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8040553421757361124==--
