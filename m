Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R3Rcl-0007FZ-33
	for barebox@lists.infradead.org; Tue, 13 Sep 2011 11:58:04 +0000
Message-ID: <4E6F4542.70408@pengutronix.de>
Date: Tue, 13 Sep 2011 13:57:54 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <E78BBE677EB9144B8F0A0A29674CD533489C0CDC8A@SRV-VS06.TELEVIC.COM>	<20110913114353.GA25206@sapphire.tkos.co.il>
	<E78BBE677EB9144B8F0A0A29674CD533489C0CDCAF@SRV-VS06.TELEVIC.COM>
In-Reply-To: <E78BBE677EB9144B8F0A0A29674CD533489C0CDCAF@SRV-VS06.TELEVIC.COM>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1914375216=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: tftp to flash from linux
To: Vanhauwaert Wouter <W.Vanhauwaert@TELEVIC.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============1914375216==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig6EF7EDAE52FDFBBF074498D3"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig6EF7EDAE52FDFBBF074498D3
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello Vanhauwaert,

please don't reply to an existing thread if you start a new topic!

On 09/13/2011 01:50 PM, Vanhauwaert Wouter wrote:
> Yes, I already thought that this nandwrite command can be used for
> writing. But problem is I get the image via tftp and my RAM is to
> little to store it temporary. So I have to write it directly to
> flash. Can I combine this nandwrite and tftp in any way? I'm using
> busybox

You need a tftp client that supports writing to stdout and a nandwrite
that supports reading from stdin.

Than it's the usual

tftp $server $file | nandwrite /dev/mtdfoo -

You probably need to pad the input file with '-p'

cheers, Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enig6EF7EDAE52FDFBBF074498D3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk5vRUIACgkQjTAFq1RaXHMnyQCbBtSihlPIH9c0z5AMiUayR29a
zSQAn2ln/winhmUUw6RDe/F2uQtzYF7D
=fG8e
-----END PGP SIGNATURE-----

--------------enig6EF7EDAE52FDFBBF074498D3--


--===============1914375216==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1914375216==--
