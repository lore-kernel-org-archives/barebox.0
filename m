Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZrM4K-0002fM-O3
 for barebox@lists.infradead.org; Wed, 28 Oct 2015 08:26:53 +0000
References: <1445807016-6637-1-git-send-email-mkl@pengutronix.de>
 <1445807016-6637-3-git-send-email-mkl@pengutronix.de>
 <20151028062054.GQ25308@pengutronix.de>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <563086AF.10706@pengutronix.de>
Date: Wed, 28 Oct 2015 09:26:23 +0100
MIME-Version: 1.0
In-Reply-To: <20151028062054.GQ25308@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5300773552401115248=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3 2/9] of_path: add of_find_path_by_node()
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============5300773552401115248==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="mORsMtI7N2AbTXrcbfBqaJqwC40jbv4bQ"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--mORsMtI7N2AbTXrcbfBqaJqwC40jbv4bQ
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 10/28/2015 07:20 AM, Sascha Hauer wrote:
> On Sun, Oct 25, 2015 at 10:03:29PM +0100, Marc Kleine-Budde wrote:
>> This patch adds the function of_find_path_by_node(), which is similar =
to
>> of_find_path(), but it translates a device tree node into a barebox de=
vice path
>> directly.
>>
>> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
>> ---
>>  drivers/of/of_path.c | 17 ++++++++++++++++-
>>  include/of.h         |  1 +
>>  2 files changed, 17 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
>> index ad64bee08af9..690390525919 100644
>> --- a/drivers/of/of_path.c
>> +++ b/drivers/of/of_path.c
>> @@ -126,7 +126,7 @@ static int __of_find_path(struct device_node *node=
, const char *propname, char *
>> =20
>>  	i =3D 1;
>> =20
>> -	while (1) {
>> +	while (propname) {
>>  		ret =3D of_property_read_string_index(node, propname, i++, &str);
>>  		if (ret)
>>  			break;
>=20
> Is this hunk intentional? Is this a fix for something?

Yes, it's called with propname =3D=3D NULL by int of_find_path_by_node():=


> +int of_find_path_by_node(struct device_node *node, char **outpath, uns=
igned flags)=20
> +{=20
> +	return __of_find_path(node, NULL, outpath, flags);
                                    ^^^^

> +}=20
> +=20

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--mORsMtI7N2AbTXrcbfBqaJqwC40jbv4bQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJWMIavAAoJEP5prqPJtc/HkM8H/1r+mM7YuNpjn0AeEL59eDAM
FsxXD9MX6DN0QHMBMRa+kIv/Jx8ksEBIGez+nZeAYUor6avdRK3EtgtMYcRtUA8r
amA8Spw3RnSg/voLXp6zxdFwB39x/HadpNvKEjZ0DpQEl/N9Xa00QjkcnwQBI8rK
ZB51K7ascEIkcpfzRS3pxzIVwSm9zm4ko47Kx7z7aMCkikP6D9sNFRF4FiJun6XN
mQVbbKMiMmMSkBzFn000Xkitc1bZhbersS1Gg3dIcqNAbyXX9Nw5A0a+glSQY1jM
M+7KJ4qeSnVCPAC/AI9QacuSgp1Pp7W/32wWX+eK6cZqGv3Ffq6V/IXUiIL4ACA=
=7uiL
-----END PGP SIGNATURE-----

--mORsMtI7N2AbTXrcbfBqaJqwC40jbv4bQ--


--===============5300773552401115248==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5300773552401115248==--
