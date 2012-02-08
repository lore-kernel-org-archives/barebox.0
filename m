Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvAXd-0004zk-3w
 for barebox@lists.infradead.org; Wed, 08 Feb 2012 16:38:48 +0000
Message-ID: <4F32A501.4080102@pengutronix.de>
Date: Wed, 08 Feb 2012 17:38:25 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <OFFA780848.709EDB56-ONC125799E.004D9434-C125799E.004E5941@o0802.rafi.inhouse>
In-Reply-To: <OFFA780848.709EDB56-ONC125799E.004D9434-C125799E.004E5941@o0802.rafi.inhouse>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3645841476688199979=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: flash image through CAN
To: christian.buettner@rafi.de
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============3645841476688199979==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig3FB37E4C8F3356A3255C7008"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig3FB37E4C8F3356A3255C7008
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 02/08/2012 03:15 PM, christian.buettner@rafi.de wrote:
> Hi all,
>=20
> we use the i.MX28 from freescale.
> Has anyone succeeded flashing a linux or rootfs image through the bareb=
ox=20
> bootloader using a CAN bus connection?
> We need it to make a field update of the target possible.=20

Not yet, but we can port the CAN stack to barebox. However, if you have
the space, I suggest to boot into a minimal Linux-System to run the
update there.

Marc
--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enig3FB37E4C8F3356A3255C7008
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk8ypQMACgkQjTAFq1RaXHPaYwCbBbKm32w2Ud9yTI60B8T8HDjb
6lEAnRJMXZSM0OmRSha5G+VKby8Er8/y
=uOqv
-----END PGP SIGNATURE-----

--------------enig3FB37E4C8F3356A3255C7008--


--===============3645841476688199979==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3645841476688199979==--
