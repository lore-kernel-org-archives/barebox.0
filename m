Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RW7ie-0001s3-NW
 for barebox@lists.infradead.org; Thu, 01 Dec 2011 14:34:37 +0000
Message-ID: <4ED79071.4000502@pengutronix.de>
Date: Thu, 01 Dec 2011 15:34:25 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <87ipm9yd88.fsf@free.fr> <20111124120400.GC27267@pengutronix.de>
 <87d3chxoxp.fsf@free.fr> <20111125000145.GE27267@pengutronix.de>
 <87lir18ag7.fsf@free.fr> <20111128074319.GO27267@pengutronix.de>
 <87d3cc87o5.fsf@free.fr> <20111129081501.GF27267@pengutronix.de>
 <87y5ux6zai.fsf@free.fr> <20111201142636.GP27267@pengutronix.de>
In-Reply-To: <20111201142636.GP27267@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8602374370763969493=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: ARM, MMU and IO space mapping
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============8602374370763969493==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig1B5042B18304CE280D605523"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig1B5042B18304CE280D605523
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 12/01/2011 03:26 PM, Sascha Hauer wrote:
>> ? As in map_io_section(u32 phys_addr, void *virt) ?
                          ^^^

make this an unsigned long

Marc
--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enig1B5042B18304CE280D605523
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk7XkHQACgkQjTAFq1RaXHOBAQCeKYRKzcESySG/myV8d6bL+o3l
zH0Ani0PrziKOpgII5cVlqIrXkzWAEa6
=7B5Z
-----END PGP SIGNATURE-----

--------------enig1B5042B18304CE280D605523--


--===============8602374370763969493==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8602374370763969493==--
