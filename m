Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RTVSu-0005Aa-TB
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 09:19:33 +0000
Message-ID: <4ECE0C16.4040602@pengutronix.de>
Date: Thu, 24 Nov 2011 10:19:18 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1321965139-17745-1-git-send-email-j.weitzel@phytec.de>
 <20111122202002.GN27267@pengutronix.de>
In-Reply-To: <20111122202002.GN27267@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8144366534471580270=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] readkey: force return from while true
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============8144366534471580270==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enigCAE27FDC7CECA44A86DBF677"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enigCAE27FDC7CECA44A86DBF677
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 11/22/2011 09:20 PM, Sascha Hauer wrote:
> On Tue, Nov 22, 2011 at 01:32:19PM +0100, Jan Weitzel wrote:
>> If read_key is feeded by STRG + KEY_LEFT you run into the while(1)
>> loop and corrupt memory through esc array.
>> Force return if index gets too high.
>>
>=20
> Wow, a shortcut to crash barebox. Applied to master.
>=20
> Sascha
>=20
>> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
>> ---
>>  lib/readkey.c |    2 ++
>>  1 files changed, 2 insertions(+), 0 deletions(-)
>>
>> diff --git a/lib/readkey.c b/lib/readkey.c
>> index a42d1cb..895db82 100644
>> --- a/lib/readkey.c
>> +++ b/lib/readkey.c
>> @@ -67,6 +67,8 @@ int read_key(void)
>>  				esc[i] =3D getc();
>>  				if (esc[i++] =3D=3D '~')
>>  					break;
>> +				if (i =3D=3D 5)

ARRAY_SIZE?

>> +					return -1;
>>  			}
>>  		}
>>  		esc[i] =3D 0;
>> --=20
>> 1.7.0.4
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
>>
>=20

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enigCAE27FDC7CECA44A86DBF677
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk7ODBkACgkQjTAFq1RaXHOZWgCeKVfBTF8yI23wuvHbTOKOnUTv
mWQAn0k+xm1WaVKGYSwyb1rk7jvz13vX
=WfUJ
-----END PGP SIGNATURE-----

--------------enigCAE27FDC7CECA44A86DBF677--


--===============8144366534471580270==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8144366534471580270==--
