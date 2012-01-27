Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rql63-0006uZ-Gi
 for barebox@lists.infradead.org; Fri, 27 Jan 2012 12:40:04 +0000
Message-ID: <4F229B1B.5000504@pengutronix.de>
Date: Fri, 27 Jan 2012 13:39:55 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <4F229A11.8020102@pengutronix.de>
 <20120127123832.GG5446@pengutronix.de>
In-Reply-To: <20120127123832.GG5446@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2992136196461903423=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: mx35-3stack 124MiByte RAM
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox mailing list <barebox@lists.infradead.org>

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============2992136196461903423==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enigF83BFDDE8B7AD5ACC11D7D06"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enigF83BFDDE8B7AD5ACC11D7D06
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 01/27/2012 01:38 PM, Sascha Hauer wrote:
> On Fri, Jan 27, 2012 at 01:35:29PM +0100, Marc Kleine-Budde wrote:
>>> =20
>>> -	register_device(&sdram_dev);
>>> +	sdram_dev =3D add_mem_device("ram0", IMX_SDRAM_CS0, 124 * 1024 * 10=
24,
>>                                                           ^^^
>>
>> What happened to the upper 4 MiByte?
>=20
> This was changed in a unrelated patch. Probably a type. This is fixed i=
n
> -next since:

Thanks...

Marc
--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enigF83BFDDE8B7AD5ACC11D7D06
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk8imx4ACgkQjTAFq1RaXHPhWwCfZxlKCeFd1aDdL0vyNa6eQf86
rGMAnRC7d9g1dUUzVEtjtpvsEirw8TfH
=SmYd
-----END PGP SIGNATURE-----

--------------enigF83BFDDE8B7AD5ACC11D7D06--


--===============2992136196461903423==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2992136196461903423==--
