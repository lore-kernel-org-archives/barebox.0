Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YhazB-0002Dh-4K
 for barebox@lists.infradead.org; Mon, 13 Apr 2015 09:48:58 +0000
Message-ID: <552B90EA.40801@pengutronix.de>
Date: Mon, 13 Apr 2015 11:48:26 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <20150318095930.GT26127@ns203013.ovh.net>
In-Reply-To: <20150318095930.GT26127@ns203013.ovh.net>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5556297748698343741=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC] Keystore design
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>, barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============5556297748698343741==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="RNRBokptUnT4Lal8WhIKLK63TeGSAJ9xv"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--RNRBokptUnT4Lal8WhIKLK63TeGSAJ9xv
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 03/18/2015 10:59 AM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> 	I'm curently looking the implementation for the PKI keystore
>=20
> 	I was thinking to simply do a FS
>=20
> 	The idea is this one
>=20
> 	we will use envfs as storing format.
>=20
> 	Contraint:
>=20
> 	 - Multiple RO env
> 	 - one RW env
> 	 - as less as possible API to add a key
>=20
> 	1) Builtin
>=20
> 	 We will allow to have multiple keystore for boards
> 	 we need to be hanble to drop a keystore if not valid for this board
> 	 we need to be able to have global keystore
>=20
> 	2) SoC Keytore
> 	 - RO
>=20
> 	3) RW
>=20
> 	 a key will be store in the keystore on if valid (signed by a master
> 	 key or CA)
>=20
> 	We will use the fs api
>=20
> 	to put a key a simple cp will be enough

Jan and me were discussing you approach to implement a keystore with the
filesystem API. For us it was hard to imagine the benefits of accessing
the keystore by fs API, but our usecases are rather minimal compared to
"full" x509 PKI support.

We don't see the advantage of having a FS, does it makes a huge
difference to add a cert by "cp /path/to/cert /barebox/pki" or by
"keystore --add /path/to/cert". This can be done via a simple lined
list, too. With x509 you can have nested certs, do you want to map this
to directories?

We see the following usecases:

- add certificate and mark that cert as trusted (i.e. add a new CA)
- add certificate (only succeeds of store trusts that cert)
- lockdown store, so that only trusted certs can be added
- add cert/public key from DT (DT compiled into barebox)
- add cert/public key compiled into barebox (e.g. via section magic)
- add cert/public key from file and/or directory
- you probably want x509
- possibility to go without x509
- add/get/use cert/public key by name
- validate file, mem region against a public key in store

Our big picture use case is:
- validate fit image against RSA public key in DT

We think a keystore can be implemented by a linked list of certs/public
keys, some iterator functions to find key by name, for x509 probably CN,
etc...

regards,
Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |



--RNRBokptUnT4Lal8WhIKLK63TeGSAJ9xv
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJVK5DrAAoJECte4hHFiupUrK8P/iKH7GvcYcs0BAtxAUtrjtwA
H8MEPUdLfdFUL7cSTx5VOCT9rgVgyMsj+vMWno1q6fCbGOCxTWRmQTZvoXkUuzYU
6ZuEmuDIOGgdSHjxcsfQlP9xzbfaGclPImDC6OixPDwGAaLun9Ykx+K0W+bja1wH
iQLL5qTBFLi97teSfs2CYzVvpp87mKHUrp0A2HkdXEu6aopsAhrhwmfV/Zgq2+JS
U0TEa3veRKCfYBxfFhlI/fsmSYAdhSjhkf+Htc3Eq84B+BC4+nsosXdrWgksIOsg
qNrdwbE1G4OKD9XYO543pUuBeNBOk2TpCJGO6LQB1bKHX9roRaC+QNZFczV9xw3b
8127NxM9XTiMEYdhdIVQvXLTVpVnccUa4f8b6J7EHhN0ScK8cl7d6++kHz71Zyp5
oASa5VuYQxoCA2j8U/X2Gnij8Kh+CjSTsS/y2UTqdhrS48Vj0xr/kPckV59zVqVj
mFhYQlL6C6Kelxwabh4ncguyLZLiq5eltl00xrZJmRwNRKx8VGsjajDwNGWEsQMm
6rTlYBkAUJEqr8OX3LKyVHRvbIAMPStPrII0Q1jjN0JvwazZFyAnyrTlrDrzMU4R
eNHQKhRA7J7Tyt7PoUjR32SQ17nrWS+nVMXfsidwNtVhuTsn00V89WDtrxvjKVdh
rxgi2xnga7TsIXzXPQe5
=+NsG
-----END PGP SIGNATURE-----

--RNRBokptUnT4Lal8WhIKLK63TeGSAJ9xv--


--===============5556297748698343741==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5556297748698343741==--
