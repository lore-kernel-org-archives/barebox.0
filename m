Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OvmLc-0004If-Kr
	for barebox@lists.infradead.org; Wed, 15 Sep 2010 07:24:05 +0000
Message-ID: <4C907488.7050806@pengutronix.de>
Date: Wed, 15 Sep 2010 09:23:52 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <4C903D22.6040900@verizon.net>
In-Reply-To: <4C903D22.6040900@verizon.net>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1342108233=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: WATCHDOG question
To: James Robinson <jmrobinson3@verizon.net>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============1342108233==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enigF1BD38E13E257D87A0F41623"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enigF1BD38E13E257D87A0F41623
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 09/15/2010 05:27 AM, James Robinson wrote:
>  Hello,
> I have created my own port of our i.MX27 board and it is running great.=

> One of the final things I need to get working is my external watchdog
> code. I added the code to my board's wamce.c (my boards main "C" file)
> and CONFIG_WATCHDOG=3D1 in config.h. I see that it is in-fact getting
> called from the device drivers. But.... when I break into the shell, I
> don't see it being called. I found that the simple shell has a watchdog=

> kick in the readline function, but has anyone implemented the watchdog
> with the hush shell?
>=20
> I have gotten the following to work and would like to thank the group
> for making it REALLY easy to get it working...
> 1) NAND flash
> 2) ethernet.
> 3) i2c - I can see my 2 i2c buses and also talk to my SM buss controlle=
r.
> 4) GPIO for fan,leds, and power button.
> 5) HS usb host. (still need to get FS host to work) I can see our hub's=

> and touch controller.

I've implemented a generic polling "framework" for barebox. You can
register several functions that should be called.

I'm using it to poll a CAN controller within barebox, but you can add a
(hardware) watchdog, too.

cheers, Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enigF1BD38E13E257D87A0F41623
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAkyQdI4ACgkQjTAFq1RaXHOtCgCeMYU+jvulCgrWbvxMsMcPt2XC
G5cAn2ELQf8VZMozSyiQJgAbuJqisd+8
=DlB9
-----END PGP SIGNATURE-----

--------------enigF1BD38E13E257D87A0F41623--


--===============1342108233==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1342108233==--
