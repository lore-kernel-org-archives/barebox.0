Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yt8s4-0003Pf-IF
 for barebox@lists.infradead.org; Fri, 15 May 2015 06:13:22 +0000
references: <1431511952-32124-1-git-send-email-mkl@pengutronix.de>
 <1431511952-32124-5-git-send-email-mkl@pengutronix.de>
 <20150515050549.GF6325@pengutronix.de>
From: Marc Kleine-Budde <mkl@pengutronix.de>
message-id: <55558E62.9090902@pengutronix.de>
Date: Fri, 15 May 2015 08:12:50 +0200
mime-version: 1.0
in-reply-to: <20150515050549.GF6325@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8699014768150863899=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 5/7] state: backend: support phandle and of_path references
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============8699014768150863899==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="8kMiOsFp5Jv7i01oQjKprdEI2lF0uW0Xg"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--8kMiOsFp5Jv7i01oQjKprdEI2lF0uW0Xg
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 05/15/2015 07:05 AM, Sascha Hauer wrote:
> On Wed, May 13, 2015 at 12:12:30PM +0200, Marc Kleine-Budde wrote:
>> This patch improves the backend property, it can be either a phandle o=
r a
>> of_path. During probe() of the state driver the backend property is
>> dereferenced and the resulting of_path is saved in the state context. =
In a
>> later patch it will be used to generate a phandle reference to the bac=
kend
>> during DT fixup.
>>
>> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
>> ---
>>  common/state.c       |  9 ++++---
>>  drivers/misc/state.c | 70 ++++++++++++++++++++++++++++++++++++++++++-=
---------
>>  include/state.h      |  7 +++---
>>  3 files changed, 67 insertions(+), 19 deletions(-)
>>
>> diff --git a/common/state.c b/common/state.c
>> index 744a6f8250c4..d6060bb7dff4 100644
>> --- a/common/state.c
>> +++ b/common/state.c
>> @@ -54,6 +54,7 @@ struct state_backend {
>>  	int (*load)(struct state_backend *backend, struct state *state);
>>  	int (*save)(struct state_backend *backend, struct state *state);
>>  	const char *name;
>> +	const char *of_path;
>>  	const char *path;
>>  };
>> =20
>> @@ -903,7 +904,7 @@ out:
>>   * @state	The state instance to work on
>>   * @path	The path where the state will be stored to
>>   */
>> -int state_backend_dtb_file(struct state *state, const char *path)
>> +int state_backend_dtb_file(struct state *state, const char *of_path, =
const char *path)
>>  {
>>  	struct state_backend_dtb *backend_dtb;
>>  	struct state_backend *backend;
>> @@ -918,6 +919,7 @@ int state_backend_dtb_file(struct state *state, co=
nst char *path)
>> =20
>>  	backend->load =3D state_backend_dtb_load;
>>  	backend->save =3D state_backend_dtb_save;
>> +	backend->of_path =3D xstrdup(of_path);
>>  	backend->path =3D xstrdup(path);
>>  	backend->name =3D "dtb";
>> =20
>> @@ -1133,8 +1135,8 @@ out_free:
>>   * device @size may be 0. The two copies are spread to different
>>   * eraseblocks if approriate for this device.
>>   */
>> -int state_backend_raw_file(struct state *state, const char *path, off=
_t offset,
>> -		size_t size)
>> +int state_backend_raw_file(struct state *state, const char *of_path,
>> +		const char *path, off_t offset, size_t size)
>>  {
>>  	struct state_backend_raw *backend_raw;
>>  	struct state_backend *backend;
>> @@ -1159,6 +1161,7 @@ int state_backend_raw_file(struct state *state, =
const char *path, off_t offset,
>> =20
>>  	backend->load =3D state_backend_raw_load;
>>  	backend->save =3D state_backend_raw_save;
>> +	backend->of_path =3D xstrdup(of_path);
>>  	backend->path =3D xstrdup(path);
>>  	backend->name =3D "raw";
>> =20
>> diff --git a/drivers/misc/state.c b/drivers/misc/state.c
>> index 3b07bb93d725..9e8a40255348 100644
>> --- a/drivers/misc/state.c
>> +++ b/drivers/misc/state.c
>> @@ -24,10 +24,12 @@
>>  static int state_probe(struct device_d *dev)
>>  {
>>  	struct device_node *np =3D dev->device_node;
>> +	struct device_node *partition_node;
>>  	struct state *state;
>>  	const char *alias;
>>  	const char *backend_type =3D NULL;
>>  	int ret;
>> +	const char *of_path;
>>  	char *path;
>> =20
>>  	if (!np)
>> @@ -41,28 +43,70 @@ static int state_probe(struct device_d *dev)
>>  	if (IS_ERR(state))
>>  		return PTR_ERR(state);
>> =20
>> -	ret =3D of_find_path(np, "backend", &path, 0);
>> -	if (ret)
>> -		return ret;
>> +	of_path =3D of_get_property(np, "backend", NULL);
>> +	if (!of_path) {
>> +		ret =3D -ENODEV;
>> +		goto out_release;
>> +	}
>> +
>> +	/* guess if of_path is a path, not a phandle */
>> +	if (of_path[0] =3D=3D '/') {
>=20
> Since this also matches to the 47th phandle in the device tree I made
> this:
>=20
> 	if (of_path[0] =3D=3D '/' && len > 1)

Makes sense.

> And applied up to 6/7

Thanks,
Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--8kMiOsFp5Jv7i01oQjKprdEI2lF0uW0Xg
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJVVY5iAAoJEP5prqPJtc/HEXgIAJWoRtEi13tqXZBaKR7l7IT2
wg5AKMG+B+kJNhKeHKsbTRZBIEcECN+KoAhBhGf38nku7nda5hkyiXtWu+EqzFBm
MVizMx39Zzq3k50L6Z/9d4brdQM7er1CsgJZpBc1hWa0JghbxzPlVJXhkbYkdfmx
X/CRm/MEXBFYUyd5nrrYIvGySjQpJjjwkcqoY3Iju3+mYlVNmpftJ91LfUwr4UBv
pUS1FK29nIxB0Kxz57xpMwIBlIy2K09IZaMVQw7C5uwnN9f1lTgelFanD0wRqqKS
wgIP0px6eak97u6bYjyyA4JZx9qMPi/Ou4SYLwrd0KfmfybzOmSSfiCvThd7uqc=
=VmEA
-----END PGP SIGNATURE-----

--8kMiOsFp5Jv7i01oQjKprdEI2lF0uW0Xg--


--===============8699014768150863899==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8699014768150863899==--
