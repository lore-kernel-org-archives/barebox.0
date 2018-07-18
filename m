Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ffm57-0006PU-75
 for barebox@lists.infradead.org; Wed, 18 Jul 2018 13:01:34 +0000
References: <CAEp+FuAeZykr4wa-BK-zdTKUPH=kikkeZWLHHpycQ9uRJFkPug@mail.gmail.com>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <16d74981-28c9-d637-c7de-f1902529ab30@rempel-privat.de>
Date: Wed, 18 Jul 2018 15:01:11 +0200
MIME-Version: 1.0
In-Reply-To: <CAEp+FuAeZykr4wa-BK-zdTKUPH=kikkeZWLHHpycQ9uRJFkPug@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2361640433000706810=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: MFGtools support in barebox
To: Mihaita Ivascu <mihaita_ivascu@trimble.com>, barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2361640433000706810==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="boSfgfchETyAGL209dzNAz6J2LAWEFnLO"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--boSfgfchETyAGL209dzNAz6J2LAWEFnLO
Content-Type: multipart/mixed; boundary="qsKYf5nMxP0T9V9I6Nro6eogIMHnZJU6v";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: Mihaita Ivascu <mihaita_ivascu@trimble.com>, barebox@lists.infradead.org
Message-ID: <16d74981-28c9-d637-c7de-f1902529ab30@rempel-privat.de>
Subject: Re: MFGtools support in barebox
References: <CAEp+FuAeZykr4wa-BK-zdTKUPH=kikkeZWLHHpycQ9uRJFkPug@mail.gmail.com>
In-Reply-To: <CAEp+FuAeZykr4wa-BK-zdTKUPH=kikkeZWLHHpycQ9uRJFkPug@mail.gmail.com>

--qsKYf5nMxP0T9V9I6Nro6eogIMHnZJU6v
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable

Hi,

you email is in the list. (well, different version of it are already in
the list).
Please wait if some one can respond here.

I'm not an expert, but probably what you need is https://github.com/rauc

Am 18.07.2018 um 14:05 schrieb Mihaita Ivascu:
> Hi ,
>=20
>=20
>=20
>  I would like to flash a barebox image on NAND for a Phytec imx6ul
> evk board using MFGTools.
>      I have added support for UTP protocol in kernel image so commands
> could be "pushed" using MFGtools app from Windows.
>      But obviously I cannot push barebox_update command to Linux.
>      So I think I have two options:
>=20
> 1) porting barebox_update command to Linux which I do not find it so
> easy. I am already working on it
> 2) adding UTP support in barebox so I could just load the barebox
> image in RAM using MFGtools, there a utp device node would be created
> and then I could push barebox specific commands directly from
> MFGtools.
>       I have added UTP support in linux USB gadget code but I see
> barebox USB gadget code is quite different and not all functionality
> are in place so I also struggle a bit of porint gUTP patches from
> Linux to barebox.
>      Does anybody have any experience with this topic or coud advise
> me on how to proceed?
>=20
> Thanks,
>       Mihaita
>=20
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>=20


--=20
Regards,
Oleksij


--qsKYf5nMxP0T9V9I6Nro6eogIMHnZJU6v--

--boSfgfchETyAGL209dzNAz6J2LAWEFnLO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEAREIAB0WIQRXepfNdOKCSzfa+2sfAia5GSZtaQUCW086FwAKCRAfAia5GSZt
aTLlAP4sscNhf+mI/yRgGHbm+huTXzwkUQ6/ulxRYF+V6Vyr/wD/bv5Dh0TzTToI
3et0Ezink+DbL0cLulNlr2rc3Fo93Ck=
=GSqC
-----END PGP SIGNATURE-----

--boSfgfchETyAGL209dzNAz6J2LAWEFnLO--


--===============2361640433000706810==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2361640433000706810==--
