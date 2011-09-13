Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R3P53-0005iJ-Br
	for barebox@lists.infradead.org; Tue, 13 Sep 2011 09:15:02 +0000
Message-ID: <4E6F1F11.6070206@pengutronix.de>
Date: Tue, 13 Sep 2011 11:14:57 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <4E6E0F25.7060403@wellsense-tech.com>
	<4E6F1B57.7060507@wellsense-tech.com>
In-Reply-To: <4E6F1B57.7060507@wellsense-tech.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2043322543=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: bareboxenv usage
To: Boaz Ben-David <boaz.bd@wellsense-tech.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============2043322543==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enigD4EFF87DF4A486706D25498C"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enigD4EFF87DF4A486706D25498C
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 09/13/2011 10:59 AM, Boaz Ben-David wrote:
> All I am asking is: do I need to use /dev/mtdblock or /dev/mtd when
> loading and saving envs

neither nor - loadenv & saveenv are not bad block aware. In barebox you
use the .bb devices, which are bad block are, under linux use nandwrite
+ nanddump to write or read data from the nand into a file. Then use
loadenv/saveenv.

cheers, Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enigD4EFF87DF4A486706D25498C
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk5vHxEACgkQjTAFq1RaXHPFNwCeJka//UQOYGRSYOFdziuRZ91y
zPYAn11VuqxdXAqeqntfYyOFJytqV7Oa
=hOhF
-----END PGP SIGNATURE-----

--------------enigD4EFF87DF4A486706D25498C--


--===============2043322543==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2043322543==--
