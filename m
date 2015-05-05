Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YpbjQ-0001JA-Rv
 for barebox@lists.infradead.org; Tue, 05 May 2015 12:13:49 +0000
references: <20150505151635.dcf30490fbe737e024aa83f6@gmail.com>
From: Marc Kleine-Budde <mkl@pengutronix.de>
message-id: <5548B3DC.7040101@pengutronix.de>
Date: Tue, 5 May 2015 14:13:16 +0200
mime-version: 1.0
in-reply-to: <20150505151635.dcf30490fbe737e024aa83f6@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1464237772782485357=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: #define dma_alloc dma_alloc
To: Antony Pavlov <antonynpavlov@gmail.com>, Lucas Stach <dev@lynxeye.de>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============1464237772782485357==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="9oGbgH6h14jiS4brIgXteNlpc2vfx31qV"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--9oGbgH6h14jiS4brIgXteNlpc2vfx31qV
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 05/05/2015 02:16 PM, Antony Pavlov wrote:
> Just out of curiosity, why we need "#define dma_alloc dma_alloc" in dma=
-related header files?
>=20
> E.g.
>  =20
>   barebox$ git grep "#define dma_alloc dma_alloc"
>   arch/arm/include/asm/dma.h:#define dma_alloc dma_alloc
>   arch/nios2/include/asm/dma-mapping.h:#define dma_alloc dma_alloc

Look if there's a matching "#ifdef dma_alloc".

Marc
--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--9oGbgH6h14jiS4brIgXteNlpc2vfx31qV
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJVSLPcAAoJECte4hHFiupUp10QAJeScbFtHkqPoRQcoSdP2cjS
gWunKliiVioG4h5/4IIm4nXqILIY746/PfIaNw0lvihgcVD3sd/nKUpuRw5sqWbB
/Ll1rIYv042KE4KwNIA318Cg+rimfbponS/yB62eGiqorcEQOT0BTZSEVgezDpVe
5hqLQ8toQzKDg5HfJfmLZUeui7z4/YMoyMXtrnDo+cV00bUREwob8SuHZ4bKBhX5
5SxkeJaFpvjXf8c46ZmziKghdj6EQI09NI4GXRlx3HJXfDrxtwNQbOLNjky0gZs6
DA5o1BGo0cZqSPiS83MSMiUfw2g00s9MGpuDOnivPctCj6ixZaIS5SCu/R+/fVay
K5q16ASttDUk9EUoY+MH7LFhFo6TB9K51LeLN1d7lm/sGxv2twXbHkVDhglm0LWs
I5H+rImomZmyim9/eUdhDLI4/lzRlvQ9sl8hCG/WkE+bTF/TfrWPrghTp9ZZrVUu
HTKGZIC/KlqPkE1piLCQ63i9ZmEBJn9mRO7P8WMzncL19DKk8e/ZUiuKbv+HeZlz
JPUyXQE5gRIF3lOsxtzZLK3+DMaDoNfhZg1CqFnkvl8RMXzk0/vqzYewt4yIf/vv
EZR3yL0tpl79euTsM2Iu0oCINVSrjTsiIO6aTbC3gxSArqRpqMqTK1bDQ4xwg5rU
umBG6MX9iry5dEw7B5jz
=5Xmc
-----END PGP SIGNATURE-----

--9oGbgH6h14jiS4brIgXteNlpc2vfx31qV--


--===============1464237772782485357==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1464237772782485357==--
