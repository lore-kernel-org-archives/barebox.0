Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YS1PB-0000t7-4l
 for barebox@lists.infradead.org; Sun, 01 Mar 2015 10:47:25 +0000
Message-ID: <54F2EE0E.8050207@pengutronix.de>
Date: Sun, 01 Mar 2015 11:46:38 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1425159621-22805-1-git-send-email-mkl@pengutronix.de>
 <1425159621-22805-8-git-send-email-mkl@pengutronix.de>
 <20150301073352.GD11010@pengutronix.de>
In-Reply-To: <20150301073352.GD11010@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5051145771509393922=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 07/16] sandbox: add support to pass dtb to barebox
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============5051145771509393922==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="6K9TQSjsvO14oGfqvMTnEObI7U0nM31mO"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--6K9TQSjsvO14oGfqvMTnEObI7U0nM31mO
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 03/01/2015 08:33 AM, Sascha Hauer wrote:
[...]
>> +	root =3D of_unflatten_dtb(dtb);
>=20
> of_unflatten_dtb is only defined when CONFIG_OFTREE is enabled. I see
> nothing in this patch selectin this option or depending on this option.=

> Does this compile with device tree support disabled?

Doh! - Now it does.

I'm left with:

> undefined reference to `of_find_node_by_alias'
> undefined reference to `of_register_fixup'

because they have no NOOPs in case if !CONFIG_OFTREE. I'll add them in a
separate patch, to avoid having ifdefs in the C code.

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--6K9TQSjsvO14oGfqvMTnEObI7U0nM31mO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJU8u4SAAoJECte4hHFiupUnHwP/25wccOdpTMPnDbu5ulfyh8Q
Sgpo2hqUuWQBi0dztcNIZYIyPUP+DAS9ItwHQC7GE1ksE6GZ3c65HEqG2v6EbmOC
s5eGO2D4kwZMLdHj/wzZ+M92gATU87S4wUkzTAmC1idBYD/Z7QgmRX5v36fUKtlE
ebZDpNV98QVdPtwNiHK9IqAF7qhb7AUQmlamSyywUd57HgHDsuRub3ZymwEH030m
Xmp31EWFLya7jdyReuTiHZ9KQp7AYUo6EHf9uvaiV+SOlUQVqDXB1XSXJXYKLVO0
L/71jxmh64ZL/vNFuXzAalTN0+7HjxMIafdxUKjj6QDyDL/bi3VO3XyYs9u8mSzB
HdD8pfb1z40DUHU411cBqxD6m2qsEA8gVOPlI7bOYTY0fq0TzMoNgLPjxKk1Plnm
b7FXxVudBAq2Fc8pVC4tJ23dPjNNSmztkUk2u0Kp5KKx2Aqx2WNYslZ/kXtWzQ+0
U2z7D1OldcyXdJieVKl4mAt5nq6d25Yb4lnXK/N/6F/BcUgOi950NtamUkdLFweZ
DtnlIQaG/DB1Qbzkm7l6P+wR+0P3R2uZXPeNMoVSj+e0x15Q9p7mbmK+soFiSI3i
BH2cn1Nhr1ibd7pd2qUm+147qqmpb0/QLK2I6zARuA+c50so+jjSMaP6GrdOkCFD
/8V+NCHMBJPyZaRy0XwW
=NKEe
-----END PGP SIGNATURE-----

--6K9TQSjsvO14oGfqvMTnEObI7U0nM31mO--


--===============5051145771509393922==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5051145771509393922==--
