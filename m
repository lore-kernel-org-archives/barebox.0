Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1flVbJ-0003tI-80
 for barebox@lists.infradead.org; Fri, 03 Aug 2018 08:38:23 +0000
References: <CAEp+FuA3HtmHQm5GsZ6DAJAYbOKJDUdVHBV4pevrHoswQ4Ktcw@mail.gmail.com>
 <20180720091145.kz2ksyeeumeqf73p@pengutronix.de>
 <CAEp+FuD5CrxiMmEQ1yV2_ugFayrs5ih-etpJfb=jw8771xdDTw@mail.gmail.com>
 <278d07f4-decf-fabc-62cb-7661b1c73a54@rempel-privat.de>
 <CAEp+FuBaOxzoc0aiXpPwm24RQw9hDB-5HiWmTCqMAPf+RYpjjg@mail.gmail.com>
 <CAEp+FuCv-C4Px35VvOW+4ONTq9RU_MELG4kzDdRggvexiXBGtA@mail.gmail.com>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <6d5fafcb-af99-ec0f-469b-63e4e4f97c51@rempel-privat.de>
Date: Fri, 3 Aug 2018 10:37:59 +0200
MIME-Version: 1.0
In-Reply-To: <CAEp+FuCv-C4Px35VvOW+4ONTq9RU_MELG4kzDdRggvexiXBGtA@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7165532353506822310=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: MFGTools support in barebox
To: Mihaita Ivascu <mihaita_ivascu@trimble.com>
Cc: barebox@lists.infradead.org, u.kleine-koenig@pengutronix.de

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============7165532353506822310==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="V8tG2Z2rY8IOO2fAx465SdiMGObzgJVVK"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--V8tG2Z2rY8IOO2fAx465SdiMGObzgJVVK
Content-Type: multipart/mixed; boundary="G2hzNlry9nsO8BQFqGvUb4NTMiE0hJ1wO";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: Mihaita Ivascu <mihaita_ivascu@trimble.com>
Cc: barebox@lists.infradead.org, u.kleine-koenig@pengutronix.de
Message-ID: <6d5fafcb-af99-ec0f-469b-63e4e4f97c51@rempel-privat.de>
Subject: Re: MFGTools support in barebox
References: <CAEp+FuA3HtmHQm5GsZ6DAJAYbOKJDUdVHBV4pevrHoswQ4Ktcw@mail.gmail.com>
 <20180720091145.kz2ksyeeumeqf73p@pengutronix.de>
 <CAEp+FuD5CrxiMmEQ1yV2_ugFayrs5ih-etpJfb=jw8771xdDTw@mail.gmail.com>
 <278d07f4-decf-fabc-62cb-7661b1c73a54@rempel-privat.de>
 <CAEp+FuBaOxzoc0aiXpPwm24RQw9hDB-5HiWmTCqMAPf+RYpjjg@mail.gmail.com>
 <CAEp+FuCv-C4Px35VvOW+4ONTq9RU_MELG4kzDdRggvexiXBGtA@mail.gmail.com>
In-Reply-To: <CAEp+FuCv-C4Px35VvOW+4ONTq9RU_MELG4kzDdRggvexiXBGtA@mail.gmail.com>

--G2hzNlry9nsO8BQFqGvUb4NTMiE0hJ1wO
Content-Type: text/plain; charset=utf-8
Content-Language: ru
Content-Transfer-Encoding: quoted-printable

Hi

Am 03.08.2018 um 10:21 schrieb Mihaita Ivascu:
> Hello,
>=20
>      On the topic of enabling fastboot in barebox 2018.04, I have
> enabled USB gadget support:
>   USB_GADGET_DRIVER_ARC=3Dy
>   USB_GADGET_AUTOSTART=3Dy
>   USB_GADGET=3Dy
>   USB_GADGET_FASTBOOT=3Dy
>   USB_GADGET_FASTBOOT_SPARSE=3Dy
>=20
>      I am using board and BSP from Phytec for imx6ul evk. I have
> reviews usb code and first option USB_GADGET_DRIVER_ARC should enable
> UDC functionality.
>     However when tring to start fastboot according to
> https://www.barebox.org/doc/latest/user/usb.html#android-fastboot-suppo=
rt
>     I get message about UDC not found, so udc driver probe method does
> not find any udc device.
>=20
> barebox@Phytec phyCORE-i.MX6 Ultra Lite SOM:/ usbgadget -A
> /kernel(kernel)c,/initrd(initrd)c,/devicetree(devicetree)c
> couldn't find an available UDC
> usbgadget: No such device
>=20
>     Does anybody has experience with this topic, what am I missing in
> the configuration steps or where could find complete steps on enabling
> fastboot in barebox?

You are missing actual USB Controler which should be configured to work
in gadget/otg mode.

--=20
Regards,
Oleksij


--G2hzNlry9nsO8BQFqGvUb4NTMiE0hJ1wO--

--V8tG2Z2rY8IOO2fAx465SdiMGObzgJVVK
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEpENFL0P3hvQ7p0DDdQOiSHVI77QFAltkFGoACgkQdQOiSHVI
77Sywwf/VQUzNrPeKKFBuawuxS4Arr6vmk2Ft9KIdyXdE6JBOdVPh67N6K0nkuBp
gUbkgneTKq5VG3EVSe8cBAqC4yIatXT9c2jDzjpnaMv9iyGFH/QCDJwYpj6OB2rf
IA8630pFLhb727j0ZiHqmxBIVCOKE2L1kGy4Aqp5bY+rb9p3gIxHFktGRjsMGTTr
2Yg2hlxmakwSbLpDflt2KiA3iTLL49VXku0qr4D+Y5KR2MGDgURrQvoWKxp9MtIX
iQZ2t1akrlMo6nXOI/2IVT722ecH7imWCZrc8KOhdMJPjXy7PjQSvB/y+JyxhZ1G
t1vXyHPOgBD9GaT0eZdv/cjwMRh0Pg==
=zY+M
-----END PGP SIGNATURE-----

--V8tG2Z2rY8IOO2fAx465SdiMGObzgJVVK--


--===============7165532353506822310==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7165532353506822310==--
