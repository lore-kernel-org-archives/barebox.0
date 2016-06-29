Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bI8V0-0008AS-2X
 for barebox@lists.infradead.org; Wed, 29 Jun 2016 05:57:23 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Wed, 29 Jun 2016 07:56:58 +0200
Message-ID: <4661321.Y6GvhYOqll@adelgunde>
In-Reply-To: <20160628065532.GE13410@pengutronix.de>
References: <1466762762-15212-1-git-send-email-mpa@pengutronix.de>
 <20160628061847.GH20657@pengutronix.de>
 <20160628065532.GE13410@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6474671352638313181=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 5/6] state: backend_storage_direct: also use cached
 data on write
To: Michael Grzeschik <mgr@pengutronix.de>
Cc: barebox@lists.infradead.org


--===============6474671352638313181==
Content-Type: multipart/signed; boundary="nextPart6438607.BKAbcPZykv"; micalg="pgp-sha256"; protocol="application/pgp-signature"


--nextPart6438607.BKAbcPZykv
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="us-ascii"

On Tuesday 28 June 2016 08:55:32 Michael Grzeschik wrote:
> On Tue, Jun 28, 2016 at 08:18:47AM +0200, Sascha Hauer wrote:
> > On Fri, Jun 24, 2016 at 12:06:01PM +0200, Markus Pargmann wrote:
> > > From: Michael Grzeschik <m.grzeschik@pengutronix.de>
> > >=20
> > > Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> > > Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
> > > ---
> > >  common/state/backend_bucket_direct.c | 55 ++++++++++++++++++++++=
++++++++++++++
> > >  1 file changed, 55 insertions(+)
> >=20
> > What's the problem this patch tries to solve?
>=20
> The backend storage is writing the first correct bucket data it finds=

> back to each copy. Therefor every bucket got written on every boot. E=
ven
> if the content did not change. The direct backend was missing an cach=
e
> that represent the current data in the buckets. This patch adds the
> cache and improves the bootup time on systems with direct bucket stor=
age
> like eeproms.

I talked with Sascha. He suggested to use a separate cache that
implements caching for any bucket type. That would remove all the
caching code from bucket-direct and bucket-circular and make it simpler=
.

Best Regards,

Markus

>=20
> Michael
>=20
> > Sascha
> >=20
> > >=20
> > > diff --git a/common/state/backend_bucket_direct.c b/common/state/=
backend_bucket_direct.c
> > > index 08892f001e25..772267f6dc1d 100644
> > > --- a/common/state/backend_bucket_direct.c
> > > +++ b/common/state/backend_bucket_direct.c
> > > @@ -29,6 +29,10 @@ struct state_backend_storage_bucket_direct {
> > > =20
> > >  =09int fd;
> > > =20
> > > +=09/* Cached data of the last read/write */
> > > +=09u8 *current_data;
> > > +=09ssize_t current_data_len;
> > > +
> > >  =09struct device_d *dev;
> > >  };
> > > =20
> > > @@ -99,6 +103,29 @@ static int state_backend_bucket_direct_read(s=
truct state_backend_storage_bucket
> > >  =09return 0;
> > >  }
> > > =20
> > > +
> > > +static int state_backend_bucket_direct_fill_cache(
> > > +=09=09struct state_backend_storage_bucket *bucket)
> > > +{
> > > +=09struct state_backend_storage_bucket_direct *direct =3D
> > > +=09    get_bucket_direct(bucket);
> > > +=09ssize_t read_len;
> > > +=09uint8_t *buf;
> > > +=09int ret;
> > > +
> > > +=09ret =3D state_backend_bucket_direct_read(bucket, &buf, &read_=
len);
> > > +=09if (ret < 0) {
> > > +=09=09dev_err(direct->dev, "Failed to read from file, %d\n", ret=
);
> > > +=09=09free(buf);
> > > +=09=09return ret;
> > > +=09}
> > > +
> > > +=09direct->current_data =3D buf;
> > > +=09direct->current_data_len =3D read_len;
> > > +
> > > +=09return 0;
> > > +}
> > > +
> > >  static int state_backend_bucket_direct_write(struct state_backen=
d_storage_bucket
> > >  =09=09=09=09=09     *bucket, const uint8_t * buf,
> > >  =09=09=09=09=09     ssize_t len)
> > > @@ -111,6 +138,11 @@ static int state_backend_bucket_direct_write=
(struct state_backend_storage_bucket
> > >  =09if (direct->max_size && len > direct->max_size)
> > >  =09=09return -E2BIG;
> > > =20
> > > +=09/* Nothing in cache? Then read to see what is on the device c=
urrently */
> > > +=09if (!direct->current_data) {
> > > +=09=09state_backend_bucket_direct_fill_cache(bucket);
> > > +=09}
> > > +
> > >  =09ret =3D lseek(direct->fd, direct->offset, SEEK_SET);
> > >  =09if (ret < 0) {
> > >  =09=09dev_err(direct->dev, "Failed to seek file, %d\n", ret);
> > > @@ -119,6 +151,26 @@ static int state_backend_bucket_direct_write=
(struct state_backend_storage_bucket
> > > =20
> > >  =09meta.magic =3D direct_magic;
> > >  =09meta.written_length =3D len;
> > > +
> > > +=09/*
> > > +=09 * If we would write the same data that is currently on the d=
evice, we
> > > +=09 * can return successfully without writing.
> > > +=09 * Note that the cache may still be empty if the storage is e=
mpty or
> > > +=09 * errors occured.
> > > +=09 */
> > > +=09if (direct->current_data) {
> > > +=09=09dev_dbg(direct->dev, "Comparing cached data, writing %zd b=
ytes, cached %zd bytes\n",
> > > +=09=09=09len, direct->current_data_len);
> > > +=09=09if (len =3D=3D direct->current_data_len &&
> > > +=09=09    !memcmp(direct->current_data, buf, len)) {
> > > +=09=09=09dev_dbg(direct->dev, "Data already on device, not writi=
ng again\n");
> > > +=09=09=09return ret;
> > > +=09=09} else {
> > > +=09=09=09free(direct->current_data);
> > > +=09=09=09direct->current_data =3D NULL;
> > > +=09=09}
> > > +=09}
> > > +
> > >  =09ret =3D write_full(direct->fd, &meta, sizeof(meta));
> > >  =09if (ret < 0) {
> > >  =09=09dev_err(direct->dev, "Failed to write metadata to file, %d=
\n", ret);
> > > @@ -147,6 +199,9 @@ static void state_backend_bucket_direct_free(=
struct
> > >  =09struct state_backend_storage_bucket_direct *direct =3D
> > >  =09    get_bucket_direct(bucket);
> > > =20
> > > +=09if (direct->current_data)
> > > +=09=09free(direct->current_data);
> > > +
> > >  =09close(direct->fd);
> > >  =09free(direct);
> > >  }
> >=20
>=20
>=20

=2D-=20
Pengutronix e.K.                           |                           =
  |
Industrial Linux Solutions                 | http://www.pengutronix.de/=
  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0  =
  |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-555=
5 |

--nextPart6438607.BKAbcPZykv
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJXc2MqAAoJENnm3voMNZulsxEP/RKP5FJogcQaOwb4LHakhPFJ
D6LenMryLqhFgFUZPvDI5U1+s0Z/dH9WNv2nYi919Jpmu3pOqfhVed8gERUQ86bO
K+hkVdxG4d99TicfDw6SIdCk9PUhDJmY51BK+u+6S62AAHyiAsk4sMO8e2kiMDr2
sZo+7yxAKxfH+blfuXH/fnwZfl1zNqx4qerYkepwIm9h3CFSYUNO9wXibIMjnw5r
p7u2XzwpDk3TMydk8POkqlK0so7T4iP1egWgeE2Se+GhdZocC+zC/xJRHS0XTU45
J6w+5PndMEiqO2iPB/h9cAMZu4+UVXrJ7LAYU1QbyvRYqVKL9WYFQkZ7gEXKnma9
2RfdzEh+6KuSvm8hV1R+NcwRN915K5uQbrlRy+iZEKYcG33idLWSz2iYiHGS/eDr
3NbmJ6mcE04fMwzmwTahQU63+0ctZ8n2AeSMo8LZQj+1f4XijW57ht8W7z7M49PQ
cHLLGeGMx71xFcanZJuD6nwQXE4OEx1RDUgFnbNHFJqDRB+5VQvtSarRZzCaTfg7
5NfRHkItC0+LhyrSKdXHAiG6m1mFLvhEpGc/XVpxlzMpiFzhLxfcAYKBZLpI/lPB
P0hxmrfPbWpQqj4IQSN7AjnV7TX5k2ZfzgogBm/uJ/ghdpVA4NHZVSLcAjf61wTw
Y6XklQtj+6/gZOj87PGJ
=UBh2
-----END PGP SIGNATURE-----

--nextPart6438607.BKAbcPZykv--



--===============6474671352638313181==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6474671352638313181==--
