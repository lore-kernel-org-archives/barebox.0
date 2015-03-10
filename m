Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YVN82-0005ud-S3
 for barebox@lists.infradead.org; Tue, 10 Mar 2015 16:35:35 +0000
Message-ID: <54FF1D37.1000407@pengutronix.de>
Date: Tue, 10 Mar 2015 17:35:03 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1425566201-31989-1-git-send-email-mkl@pengutronix.de>
 <20150310142407.GI30554@ns203013.ovh.net> <54FEFF1C.7030801@pengutronix.de>
 <54FF0549.8090804@pengutronix.de>
In-Reply-To: <54FF0549.8090804@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1354762799112403740=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/3] sandbox cleanups
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============1354762799112403740==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="URMPBOK8BxfKhxVSXXMTthc0mbtNs1B6v"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--URMPBOK8BxfKhxVSXXMTthc0mbtNs1B6v
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 03/10/2015 03:52 PM, Marc Kleine-Budde wrote:
> On 03/10/2015 03:26 PM, Marc Kleine-Budde wrote:
>>> can we fix it asap please TOO busy to dig into it
>>
>> Can you apply there three patches and check if the problem is solved?
>=20
> Should be fixed on next now.

Works here as I expect it:

> =E2=9E=9C (pts/2) frogger@hardanger:betuta/barebox (state) ./barebox -e=
 env0
> add env0 backed by file env0
[...]
> barebox@barebox sandbox:/ ls -l /dev/env0=20
> crw-------      16384 /dev/env0

> =E2=9E=9C (pts/2) frogger@hardanger:betuta/barebox (state) ./barebox -i=
 env0
> add fd0 backed by file env0
[...]
> barebox@barebox sandbox:/ ls -l /dev/fd0
> crw-------      16384 /dev/fd0

Tested on amd64 host.

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--URMPBOK8BxfKhxVSXXMTthc0mbtNs1B6v
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJU/x06AAoJECte4hHFiupUkLMP/i3LipxmofOYfbTC95PK27Ur
u+8ECAlBWRXb+G9OJCFDRuOqi6R/giDD6moIttDo5ak3d8rft4CAkw+IaAQ5rKIn
kfvOA4bvdMB3eN9awzu3UYrKbaVScDaXateDT3NHYSFszxJuuIs0soWey9Pcj1R2
ikqlQxUAX6YWCF03RhztfC3nUv4Hkz+IxAhuHo+OEE/G2jnPs9+RNcPyjG9qFpNL
RrrX3btgIBfGq8HZd1eXDgiql/1tlS2cZsBuqOA/tH7wlDxQrD+7NYSiYJuWsYTI
kWjCE4zY8uwJtLCUvoPwcR/UlqbUGZV0wRmTvNOGmn88E88WkurgY2NdUHulI1oF
AmgIFJzDnXZZ2x/V4e+7Q0UBAd5hXQBpbwwK5Us5lZQ3+c/gZDvqwW0eTxPDl5th
VwHW16KHcO/elGrRtmh/RYbALheNr7JFCzArNz/HHOs8erXibwoNAsRXvrRbOwwJ
gZDwRdJwp90Si/WnSyLb54IEWaQSEPPji7uc3pbgHSMa/ZhdcpbtYa6HEjPFbAt4
PljsHbI/dv/WXesnBeCydB5LBzpvBapYKhOiU0L+2fWEyxQWwmfYKLYphIg4ouCD
PjhYT34LmSYloPsfB/Ks0FAzUs79ZUqybP7PefpABsTBOUTGJKhmG046rWr/GHjg
bVwLWZKAd4f40jMFwEpj
=tACT
-----END PGP SIGNATURE-----

--URMPBOK8BxfKhxVSXXMTthc0mbtNs1B6v--


--===============1354762799112403740==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1354762799112403740==--
