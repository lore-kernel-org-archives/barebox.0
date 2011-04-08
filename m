Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q89FU-0007Qd-Iy
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 10:49:09 +0000
Message-ID: <4D9EE81E.3060001@pengutronix.de>
Date: Fri, 08 Apr 2011 12:49:02 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1302257948-18174-1-git-send-email-mkl@pengutronix.de>
	<1302257948-18174-2-git-send-email-mkl@pengutronix.de>
	<20110408104258.GV7285@pengutronix.de>
In-Reply-To: <20110408104258.GV7285@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1754499393=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/7] defaultenv: simplify scripting
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============1754499393==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enigE8239F691206EB520AE3E990"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enigE8239F691206EB520AE3E990
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 04/08/2011 12:42 PM, Sascha Hauer wrote:
> On Fri, Apr 08, 2011 at 12:19:02PM +0200, Marc Kleine-Budde wrote:
>> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
>> ---
>>  defaultenv/bin/boot   |    2 +-
>>  defaultenv/bin/update |    8 ++++----
>>  2 files changed, 5 insertions(+), 5 deletions(-)
>>
>> diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
>> index de4fa24..c97a396 100644
>> --- a/defaultenv/bin/boot
>> +++ b/defaultenv/bin/boot
>> @@ -74,7 +74,7 @@ if [ ! -e /dev/ram0.kernel ]; then
>>  	addpart /dev/ram0 8M@8M(kernel)
>>  fi
>> =20
>> -if [ x$kernel_loc =3D xnfs ] || [ x$kernel_loc =3D xtftp ]; then
>> +if [ x$kernel_loc =3D xnfs -o x$kernel_loc =3D xtftp ]; then
>>  	if [ x$ip =3D xdhcp ]; then
>>  		dhcp
>>  	fi
>> diff --git a/defaultenv/bin/update b/defaultenv/bin/update
>> index 7c37c36..c78159d 100644
>> --- a/defaultenv/bin/update
>> +++ b/defaultenv/bin/update
>> @@ -32,12 +32,12 @@ elif [ x${type} =3D xrootfs ]; then
>>  	type=3Droot
>>  elif [ x${type} =3D xbarebox ]; then
>>  	image=3D$bareboximage
>> -	if [ x${image} =3D x ]; then
>> +	if [ -z x${image} ]; then
>=20
> s/x${image}/${image}/

ACK

Marc
--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enigE8239F691206EB520AE3E990
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk2e6CIACgkQjTAFq1RaXHNQ1gCghlmKGN0mwE/TleehCsN2yeDM
efoAmwQBnUCW+LZsshhXBs9G1UCJUamR
=h2vf
-----END PGP SIGNATURE-----

--------------enigE8239F691206EB520AE3E990--


--===============1754499393==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1754499393==--
