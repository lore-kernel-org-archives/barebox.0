Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9yS0-0001an-0G
	for barebox@lists.infradead.org; Wed, 13 Apr 2011 11:41:37 +0000
Message-ID: <4DA58BEB.8040505@pengutronix.de>
Date: Wed, 13 Apr 2011 13:41:31 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <4D9ED2EC.8070406@telemotive.de>	<20110408132127.GW7285@pengutronix.de>	<4DA56CC1.6040904@gmx.de>
	<4DA5720E.7020601@pengutronix.de> <4DA58130.5060709@gmx.de>
In-Reply-To: <4DA58130.5060709@gmx.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1625848656=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Update barebox on mmc without touching partition table
To: Thomas Mayer <tm.telemotive@gmx.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============1625848656==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enigCD09020EFB5487D0ED87ACD6"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enigCD09020EFB5487D0ED87ACD6
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 04/13/2011 12:55 PM, Thomas Mayer wrote:
>> memcpy -s barebox.bin -d /dev/self0 1024 1024
>>
> works too, with partition from 0x00000 to 0x040000.

\o/

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enigCD09020EFB5487D0ED87ACD6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk2li+sACgkQjTAFq1RaXHPxVgCfUPO7NQdhj1KxixsK5FMP2BP9
ydEAn1NnL+fU3xPZEG6RzXEsGMFlok6+
=nMJ8
-----END PGP SIGNATURE-----

--------------enigCD09020EFB5487D0ED87ACD6--


--===============1625848656==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1625848656==--
