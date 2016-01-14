Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aJo7V-0005Sy-6x
 for barebox@lists.infradead.org; Thu, 14 Jan 2016 20:03:46 +0000
References: <CAPnjgZ187+14Fn-aeBkzV9Yv7MXOYPbTJjzCrHByuO04=OoAww@mail.gmail.com>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <5697FF03.1060702@pengutronix.de>
Date: Thu, 14 Jan 2016 21:03:15 +0100
MIME-Version: 1.0
In-Reply-To: <CAPnjgZ187+14Fn-aeBkzV9Yv7MXOYPbTJjzCrHByuO04=OoAww@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3409999096928274213=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Verified boot support with FIT
To: Simon Glass <sjg@chromium.org>, barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============3409999096928274213==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="f2G61aDuS7cTv0ELo9Q3oqMI9I8BOLXU2"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--f2G61aDuS7cTv0ELo9Q3oqMI9I8BOLXU2
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 01/14/2016 08:30 PM, Simon Glass wrote:
> Someone pointed me to this support that is being added in Barebox. I se=
e
> that it still has the copyright but does not attribute U-Boot. I'm just=

> checking if that is that an oversight?

I've Cc'ed Jan, who has written the code. Quoting from his first patch
to the barebox mailinglist:

> this is the current work-in-progress state of my FIT support patches.
> The FIT loading code has basically been rewritten from scratch, as the
> original U-Boot code uses libfdt and barebox's DT support works on an
> in-memory tree.

regards,
Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--f2G61aDuS7cTv0ELo9Q3oqMI9I8BOLXU2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJWl/8EAAoJEP5prqPJtc/HjgYH/2rHRFFSPemO5wi3Wz+TFu1D
G7uvxnuNawaRgZAqqJPXhjp3hbBJSR0ApFvHZ0kBIB4gwVa3pSYPKZIvTEQvRf1H
iygBosOMVv/Ok5Gx2RqSHDIFfkwuISLxoUtYj+vxmFeKe6AkpaIF5Mv1YqpoyCiR
4wziHc4kG3Q2N/u+Pwyuxt+3//hdnbpBa/guywTLRMu1L/0Ip3EAd7nv5d009hvC
Wg9Jet+dmVtV7uPkHVBt0TAFIdMVdjUkS2vlHPUguv13z9bYijQ4kk5//BRusHNM
NIIoSO6NtBN5CtNVjnF1gQUaPynELWY79xzl5ciI3JnRPA3BwfxXy87tYQxbW1Y=
=awU2
-----END PGP SIGNATURE-----

--f2G61aDuS7cTv0ELo9Q3oqMI9I8BOLXU2--


--===============3409999096928274213==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3409999096928274213==--
