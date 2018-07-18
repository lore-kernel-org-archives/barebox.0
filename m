Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ffpQk-0003iu-GG
 for barebox@lists.infradead.org; Wed, 18 Jul 2018 16:36:02 +0000
References: <CAEp+FuAeZykr4wa-BK-zdTKUPH=kikkeZWLHHpycQ9uRJFkPug@mail.gmail.com>
 <16d74981-28c9-d637-c7de-f1902529ab30@rempel-privat.de>
 <35db1bb9-cb13-26b3-09b7-30f583585155@pengutronix.de>
 <1531925793.3511.128.camel@pengutronix.de>
 <CAEp+FuAsDL9msTeiC=2+bbKHkrEObdKKdctN_G3RdVX8uP=ZsQ@mail.gmail.com>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <c1c3be93-c29e-7e65-c09b-86edbd0adb1e@rempel-privat.de>
Date: Wed, 18 Jul 2018 18:35:42 +0200
MIME-Version: 1.0
In-Reply-To: <CAEp+FuAsDL9msTeiC=2+bbKHkrEObdKKdctN_G3RdVX8uP=ZsQ@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3298195990158389839=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: MFGtools support in barebox
To: Mihaita Ivascu <mihaita_ivascu@trimble.com>, jlu@pengutronix.de
Cc: barebox@lists.infradead.org, bst@pengutronix.de

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============3298195990158389839==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="WqfbpOukypNnbk7OxFdXmlDVbLHelRfeI"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--WqfbpOukypNnbk7OxFdXmlDVbLHelRfeI
Content-Type: multipart/mixed; boundary="sxg6D3d4ZvlPjl1dcIvLnr4V6x6zPTuEI";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: Mihaita Ivascu <mihaita_ivascu@trimble.com>, jlu@pengutronix.de
Cc: bst@pengutronix.de, barebox@lists.infradead.org
Message-ID: <c1c3be93-c29e-7e65-c09b-86edbd0adb1e@rempel-privat.de>
Subject: Re: MFGtools support in barebox
References: <CAEp+FuAeZykr4wa-BK-zdTKUPH=kikkeZWLHHpycQ9uRJFkPug@mail.gmail.com>
 <16d74981-28c9-d637-c7de-f1902529ab30@rempel-privat.de>
 <35db1bb9-cb13-26b3-09b7-30f583585155@pengutronix.de>
 <1531925793.3511.128.camel@pengutronix.de>
 <CAEp+FuAsDL9msTeiC=2+bbKHkrEObdKKdctN_G3RdVX8uP=ZsQ@mail.gmail.com>
In-Reply-To: <CAEp+FuAsDL9msTeiC=2+bbKHkrEObdKKdctN_G3RdVX8uP=ZsQ@mail.gmail.com>

--sxg6D3d4ZvlPjl1dcIvLnr4V6x6zPTuEI
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable

Am 18.07.2018 um 17:11 schrieb Mihaita Ivascu:
> Hi,
>=20
>     Thanks for answer.
>      I think I need it to do it from Windows as we have some boards
> that need to be updated in the factory by people that do not necessary
> have Linux skills or Linux workstation.
>      That is why we thought we could use MFGtools app.
>      My problem is that the board we have have only NAND and USB as
> boot options. And I need to flash the NAND the first time.
>       I have already looked at imx-usb-loader solution but it required
> a Linux OS which is not possible in my case
>      I have already used barebox_update successfully but only after I
> had a working barebox already.
>      I was successful into loading barebox image from MFGtools into
> RAM and there execute barebox_update to flash on the NAND itself.
>      But the barebox won't load afterwards the kernel image with
> mfgtools support.
>=20
>     So I have two options I think:
>=20
>     i) porting barebox_update to Linux. Is there a way to flash the
> barebox on NAND from Linux itself(after the board has booted
> successfully) ?
>    ii) adding support for MFGtools in barebox. I do not have toom uch
> knowledge about it. I know I should add UTP protocol support in usb
> gadget code in barebox but was not successful so far.
>=20
>         How do you guys see a solution to this scenario?

If you can load barebox in to RAM with MFGtools, you can use fastboot
tool flash all needed parts. fastboot is available for windows and
supported by barebox.
--=20
Regards,
Oleksij


--sxg6D3d4ZvlPjl1dcIvLnr4V6x6zPTuEI--

--WqfbpOukypNnbk7OxFdXmlDVbLHelRfeI
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEAREIAB0WIQRXepfNdOKCSzfa+2sfAia5GSZtaQUCW09sXgAKCRAfAia5GSZt
aQDwAP9Ly1jtmaDw0jTnRVdyNTNlhOclC0kat7NzPDdwHs2f5wD/bvwy9bHXJtD8
th8U+FuKjXmpeHFHQhbwfWJzYUxsVl4=
=N9h9
-----END PGP SIGNATURE-----

--WqfbpOukypNnbk7OxFdXmlDVbLHelRfeI--


--===============3298195990158389839==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3298195990158389839==--
