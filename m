Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YwY7P-0002sA-7B
 for barebox@lists.infradead.org; Sun, 24 May 2015 15:47:19 +0000
references: <20150318095930.GT26127@ns203013.ovh.net>
 <552B90EA.40801@pengutronix.de>
From: Marc Kleine-Budde <mkl@pengutronix.de>
message-id: <5561F25F.2020201@pengutronix.de>
Date: Sun, 24 May 2015 17:46:39 +0200
mime-version: 1.0
in-reply-to: <552B90EA.40801@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4537235399085030687=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC] Keystore design
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>, barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4537235399085030687==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="r4JmcUkGCelFKTVeLJ5iWGsH5hcR9b25q"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--r4JmcUkGCelFKTVeLJ5iWGsH5hcR9b25q
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 04/13/2015 11:48 AM, Marc Kleine-Budde wrote:
> On 03/18/2015 10:59 AM, Jean-Christophe PLAGNIOL-VILLARD wrote:
>> 	I'm curently looking the implementation for the PKI keystore

Any news from the keystore front? I've patches here to secure the
contents of the state partition by a hmac, so I need an API to request
the shared secret.

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--r4JmcUkGCelFKTVeLJ5iWGsH5hcR9b25q
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJVYfJfAAoJEP5prqPJtc/HLzgH/A+6Hsjyo/tKoez6vuvpcFn+
19zSZfeb/MwBzWkuVdmv6vpXZck1qpKl2y0RleXXdcAN/qZROyIzkv5/G+/p3YK1
0k+Io5dQqwvCZGUxVLGNp3tRGDUoCZfcfCXnEHGFsiDZqVIgWJXbDwwEfRNAGODM
PZPZKl8tuCV0IKHBRewhL3O+764vwKEubJqEmhHzLT+pCQNxIHl5pA77Ht36v2VK
/My2+VEAz7msU5kU4ti/U46fhhnRE7MAomajzENOoe5aCAREC2w9rJQNY7Ap176a
X5U/0AqkslVdLS2M+ZbPVhBtLDDGvr+AyJQY/ZgfHwxFE+jSH7LRRfzEPi4SDd0=
=cPFr
-----END PGP SIGNATURE-----

--r4JmcUkGCelFKTVeLJ5iWGsH5hcR9b25q--


--===============4537235399085030687==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4537235399085030687==--
