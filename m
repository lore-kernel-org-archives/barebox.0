Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fgSAe-00068m-SJ
 for barebox@lists.infradead.org; Fri, 20 Jul 2018 09:57:59 +0000
References: <CAEp+FuA3HtmHQm5GsZ6DAJAYbOKJDUdVHBV4pevrHoswQ4Ktcw@mail.gmail.com>
 <20180720091145.kz2ksyeeumeqf73p@pengutronix.de>
 <CAEp+FuD5CrxiMmEQ1yV2_ugFayrs5ih-etpJfb=jw8771xdDTw@mail.gmail.com>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <278d07f4-decf-fabc-62cb-7661b1c73a54@rempel-privat.de>
Date: Fri, 20 Jul 2018 11:57:34 +0200
MIME-Version: 1.0
In-Reply-To: <CAEp+FuD5CrxiMmEQ1yV2_ugFayrs5ih-etpJfb=jw8771xdDTw@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2280282059215604023=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: MFGTools support in barebox
To: Mihaita Ivascu <mihaita_ivascu@trimble.com>, u.kleine-koenig@pengutronix.de
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2280282059215604023==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="bA7JWgrMXB5rVSfI7CUobNjrZo63NzOgn"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--bA7JWgrMXB5rVSfI7CUobNjrZo63NzOgn
Content-Type: multipart/mixed; boundary="I19k0YC3iPSB3D0bhFYMKqyiCMcuMqFHV";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: Mihaita Ivascu <mihaita_ivascu@trimble.com>,
 u.kleine-koenig@pengutronix.de
Cc: barebox@lists.infradead.org
Message-ID: <278d07f4-decf-fabc-62cb-7661b1c73a54@rempel-privat.de>
Subject: Re: MFGTools support in barebox
References: <CAEp+FuA3HtmHQm5GsZ6DAJAYbOKJDUdVHBV4pevrHoswQ4Ktcw@mail.gmail.com>
 <20180720091145.kz2ksyeeumeqf73p@pengutronix.de>
 <CAEp+FuD5CrxiMmEQ1yV2_ugFayrs5ih-etpJfb=jw8771xdDTw@mail.gmail.com>
In-Reply-To: <CAEp+FuD5CrxiMmEQ1yV2_ugFayrs5ih-etpJfb=jw8771xdDTw@mail.gmail.com>

--I19k0YC3iPSB3D0bhFYMKqyiCMcuMqFHV
Content-Type: text/plain; charset=utf-8
Content-Language: ru
Content-Transfer-Encoding: quoted-printable

Am 20.07.2018 um 11:32 schrieb Mihaita Ivascu:
> Hi,
>=20
>    I have both  Android Fastboot support and Fastboot sparse image
> support enabled in barebox config(is by default) but I see not device
> node created when connecting USB device  nor do I see any fastboot
> commands in barebox shell.
>    My question is: how do I use fastboot? What is the complete
> configuration needed to enable fastboot in barebox?

Googling "barebox fastboot"
First result which i get is this page:
https://www.barebox.org/doc/latest/user/usb.html#android-fastboot-support=


> Best regards,
>          Mihaita Ivascu
>=20
>=20
> On Fri, Jul 20, 2018 at 11:11 AM Uwe Kleine-K=C3=B6nig
> <u.kleine-koenig@pengutronix.de> wrote:
>>
>> On Wed, Jul 18, 2018 at 09:39:23AM +0200, Mihaita Ivascu wrote:
>>> Hello,
>>>
>>>      I would like to flash a barebox image on NAND for a Phytec imx6u=
l
>>> evk board using MFGTools.
>>>      I have added support for UTP protocol in kernel image so command=
s
>>> could be "pushed" using MFGtools app from Windows.
>>>      But obviously I cannot push barebox_update command to Linux.
>>>      So I think I have two options:
>>>
>>> 1) porting barebox_update command to Linux which I do not find it so
>>> easy. I am already working on it
>>> 2) adding UTP support in barebox so I could just load the barebox
>>> image in RAM using MFGtools, there a utp device node would be created=

>>> and then I could push barebox specific commands directly from
>>> MFGtools.
>>>       I have added UTP support in linux USB gadget code but I see
>>> barebox USB gadget code is quite different and not all functionality
>>> are in place so I also struggle a bit of porint gUTP patches from
>>> Linux to barebox.
>>>      Does anybody have any experience with this topic or coud advise
>>> me on how to procee?
>>
>> Why are you sticked to MFGTools? barebox can do fastboot which should
>> work from Windows just fine.
>>
>> Best regards
>> Uwe
>>
>> --
>> Pengutronix e.K.                           | Uwe Kleine-K=C3=B6nig    =
        |
>> Industrial Linux Solutions                 | http://www.pengutronix.de=
/  |
>=20
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>=20


--=20
Regards,
Oleksij


--I19k0YC3iPSB3D0bhFYMKqyiCMcuMqFHV--

--bA7JWgrMXB5rVSfI7CUobNjrZo63NzOgn
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEpENFL0P3hvQ7p0DDdQOiSHVI77QFAltRsg8ACgkQdQOiSHVI
77TBvAf/W0+FvYeWNAXu8nK72SqQQ2DqF1bTEPAK7Fm+Xmq4iwJ/ny7GJ0dgjEfH
VXW7ikVZ4aQxNi0vvojJAljbunDlp+jD1tr+kLGLjVaTMQvK6/qHLVEnYuBgVkCb
U/cJh7P8Xo4ezKDNjNFTPMFGCilibpGFPKUf1GiK4fSgAGMBFUR+w4FYt3CLF0IG
jyhXZjBg3MhsJiAzWP5mayy0/7fGIeZUG7Let9UyZz5lH4/JgEsfV1MfnKWxqTvH
Jf0RmDgD+/sL/y5gjRV2hI/ok/f9AJH6e/2fdf5h1OVuKpTcypcI6pAL28/ZcY8N
kmq3Qtg+91cl5+Em+NEOD9sC+qm0+Q==
=Pf52
-----END PGP SIGNATURE-----

--bA7JWgrMXB5rVSfI7CUobNjrZo63NzOgn--


--===============2280282059215604023==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2280282059215604023==--
