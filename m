Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1ZAxbN-0005CD-Gh
 for barebox@lists.infradead.org; Fri, 03 Jul 2015 09:49:46 +0000
References: <1435909794-17349-1-git-send-email-mkl@pengutronix.de>
 <55963F13.9080106@pengutronix.de> <20150703094442.GK18700@pengutronix.de>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <55965A9E.5090100@pengutronix.de>
Date: Fri, 3 Jul 2015 11:49:18 +0200
MIME-Version: 1.0
In-Reply-To: <20150703094442.GK18700@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2160928420531836992=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2] mtd: mark devname argument of add_mtd_device as const
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2160928420531836992==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="3dhBrbdHlc23MpIEIWlVBADk09saFRH85"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--3dhBrbdHlc23MpIEIWlVBADk09saFRH85
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 07/03/2015 11:44 AM, Sascha Hauer wrote:
> On Fri, Jul 03, 2015 at 09:51:47AM +0200, Marc Kleine-Budde wrote:
>> On 07/03/2015 09:49 AM, Marc Kleine-Budde wrote:
>>> This patch fixes the following warning:
>>>
>>> | drivers/mtd/devices/m25p80.c: In function 'm25p_probe':
>>> | drivers/mtd/devices/m25p80.c:271:14: warning: assignment discards '=
const' qualifier from pointer target type
>>> |   flash_name =3D dev->id_entry->name;
>>> |                 ^
>>>
>>> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
>>
>> This patch applies to master. I can rebase it to -next if needed.
>=20
> Not necessary. It's already included as:

Okay. sorry for the noise. :)

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--3dhBrbdHlc23MpIEIWlVBADk09saFRH85
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJVllqfAAoJEP5prqPJtc/HakIH/iVnvJiOYN80an+lyfzIsgcR
SgAR/V6clTGYsP3lWRmss+N++8b3Imk7BMOHiZkNSg1zeqEYuREfWhUDOHRMu8hL
KLan6HTkzPfZQoY0ecI9WRNHqIZNWPvdml8Aworj37g+w/1CezwIymL3IvnyR7YT
9wXW5ihVYcZN0tm1Lt78Jd+SdLSi3dL3p/Fes1Kk1uHgDoYu8UtpkmUUGTzJgq20
q2SjrEhEbYQF4kDdv+rOIe5FiMq4pCrqbvbaXFM22HEKPAUAGKHmZ4NbPFBL6ZtE
Nyzce0Bh1p5uei464otwsY6phQ0M1h0tZhtoKUYvOvlvy7cGbZAxftoQTYL3Y9Q=
=7RAo
-----END PGP SIGNATURE-----

--3dhBrbdHlc23MpIEIWlVBADk09saFRH85--


--===============2160928420531836992==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2160928420531836992==--
